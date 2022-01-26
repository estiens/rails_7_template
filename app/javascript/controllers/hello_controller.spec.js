import { Application } from '@hotwired/stimulus';
import HelloController from './hello_controller';
import { cleanupDOM, mountDOM } from '../utils/test';

const startStimulus = () => {
  const application = Application.start();
  application.register('hello', HelloController);
};

let container = null;

describe('HelloController', () => {
  beforeEach(() => {
    startStimulus();

    container = mountDOM(`
      <div data-controller="hello">
        <h1 data-hello-target="output"></h1>
      </div>
    `);
  });

  afterEach(() => {
    cleanupDOM();
  });

  it('renders a greeting text', () => {
    const result = document.querySelector('h1').innerHTML;
    expect(result).toEqual('Itadakimasu! 🍱');
  });
});
