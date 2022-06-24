import { renderHook } from '@testing-library/react-hooks/native';
import { useTypewriter } from 'react-simple-typewriter';
import words from '../assets/words.json';

describe('TypewriterHook', () => {
  test('should render correctly', async () => {
    const { result, waitForNextUpdate } = renderHook(() =>
      useTypewriter({
        words,
        loop: 2,
      })
    );
    await waitForNextUpdate();
    await waitForNextUpdate();
    await waitForNextUpdate();
    await waitForNextUpdate();

    expect(result.current.text).toBe('Ceza');
  });
});
