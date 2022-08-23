import App from "./App.svelte";

const app = new App({
  target: document.body,
  props: {
    singer: "İrem Aydın",
    songTitle: "Hayalet Sevgilim",
  },
});

export default app;
