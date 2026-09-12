import { test, expect } from '@playwright/test';

const BASE_URL = 'http://localhost:8080';

// "/" serves the landing page directly, one <section> per module (s02 skipped:
// this variant is plain JTE, with no View-Components/JSX concept).
const SECTION_HEADINGS = ['Simple Pages', 'Page Patterns', 'UI Patterns', 'HTMX Patterns'];

// Every demo route the landing page links to.
const DEMO_ROUTES = [
  '/s01/d01', '/s01/d02', '/s01/d03', '/s01/d04', '/s01/d05',
  '/s03/d01',
  '/s03/d02?greeting=Hey%20You!',
  '/s03/d03?greeting=Hey%20You!',
  '/s03/d04p1',
  '/s03/d04p2',
  '/s04/d01',
  '/s04/d02',
  '/s05/d01',
];

test('landing page lists every module section', async ({ page }) => {
  await page.goto(BASE_URL + '/');
  await expect(page).toHaveTitle(/Hypermedia Patterns/);
  for (const heading of SECTION_HEADINGS) {
    await expect(page.locator('section.section', { hasText: heading })).toBeVisible();
  }
});

test('every demo route loads', async ({ page }) => {
  for (const route of DEMO_ROUTES) {
    const response = await page.goto(BASE_URL + route);
    expect(response?.status(), `GET ${route}`).toBe(200);
    await expect(page.locator('body')).toBeVisible();
    const text = (await page.locator('body').innerText()).trim();
    expect(text.length, `content of ${route}`).toBeGreaterThan(10);
  }
});

test('s05 url-component demo swaps the fetched fragment in', async ({ page }) => {
  await page.goto(BASE_URL + '/s05/d01');
  const target = page.locator('#my-message');
  await expect(target).toBeEmpty();
  await page.getByRole('button', { name: 'Include Component' }).click();
  await expect(target.locator('h3')).toHaveText('hello!');
});
