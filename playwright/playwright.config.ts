import { defineConfig, devices } from '@playwright/test';

/**
 * See https://playwright.dev/docs/test-configuration.
 */
export default defineConfig({
  testDir: './tests',
  fullyParallel: true,
  forbidOnly: !!process.env.CI,
  retries: process.env.CI ? 2 : 0,
  workers: process.env.CI ? 1 : undefined,
  reporter: 'html',
  use: {
    trace: 'on-first-retry',
  },

  projects: [
    {
      name: 'chromium',
      use: { ...devices['Desktop Chrome'] },
    },
  ],

  /* Start a fresh Spring Boot instance before every run. This variant has no
     jte-maven-plugin, so the fat jar has no pre-compiled templates; run it from
     the exploded classpath via spring-boot:run with the `dev` profile
     (gg.jte.developmentMode=true), which compiles templates on demand.
     reuseExistingServer: false kills any running instance first. */
  webServer: {
    command: 'cd .. && mvn -q spring-boot:run -Dspring-boot.run.profiles=dev',
    url: 'http://localhost:8080',
    reuseExistingServer: false,
    timeout: 120_000,
  },
});
