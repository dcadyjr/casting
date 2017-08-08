import { CastingPage } from './app.po';

describe('casting App', () => {
  let page: CastingPage;

  beforeEach(() => {
    page = new CastingPage();
  });

  it('should display welcome message', () => {
    page.navigateTo();
    expect(page.getParagraphText()).toEqual('Welcome to app!');
  });
});
