import { test, expect } from '@playwright/test';

const BASE_URL = 'http://localhost:8080';

// This variant is the minimal one: two pages wired with plain-JTE template
// injection / inclusion, a shared nav, no module sections and no htmx demo.
const PAGE_1 = '/ui/pages/page1';
const PAGE_2 = '/ui/pages/page2';

test('root redirects to page 1', async ({ page }) => {
  await page.goto(BASE_URL + '/');
  await expect(page).toHaveURL(BASE_URL + PAGE_1);
  await expect(page.locator('h1')).toHaveText('Page 1');
});

test('nav links to both pages', async ({ page }) => {
  await page.goto(BASE_URL + PAGE_1);
  const nav = page.locator('nav');
  await expect(nav.getByRole('link', { name: 'Page 1' })).toHaveAttribute('href', PAGE_1);
  await expect(nav.getByRole('link', { name: 'Page 2' })).toHaveAttribute('href', PAGE_2);
});

test('page 2 loads via template inclusion', async ({ page }) => {
  const response = await page.goto(BASE_URL + PAGE_2);
  expect(response?.status()).toBe(200);
  await expect(page.locator('h1')).toHaveText('Page 2');
  await expect(page.locator('nav')).toBeVisible();
  await expect(page.locator('footer')).toHaveText('Footer');
});
