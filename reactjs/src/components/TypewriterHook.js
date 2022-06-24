import { useTypewriter, Cursor } from 'react-simple-typewriter';
import words from '../assets/words.json';

const TypewriterHook = () => {
  const { text } = useTypewriter({
    words,
    loop: 2,
  });

  return (
    <div>
      <span>{text}</span>
      <Cursor />
    </div>
  );
};

export default TypewriterHook;
