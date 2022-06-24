import { render, screen } from '@testing-library/react';

import Home from '../pages/Home';

describe('Home Page', () => {
  test('should heading tag on display', () => {
    render(<Home />);
    const heading = screen.getByRole('heading');
    expect(heading).toBeInTheDocument();
  });
});
