import "@testing-library/jest-dom/extend-expect";
import { render, fireEvent } from "@testing-library/svelte";
import App from "../App";

test("'Clicked 0 times' is displayed", () => {
  const { getByText } = render(App);
  expect(getByText("Clicked 0 times")).toBeInTheDocument();
});

test("'Clicked 1 times' is displayed after click", async () => {
  const { getByText } = render(App);
  const button = getByText("Click Me!");

  await fireEvent.click(button);

  expect(getByText("Clicked 1 times")).toBeInTheDocument();
});

test("'Clicked 2 times' is displayed after 2 clicks", async () => {
  const { getByText } = render(App);
  const button = getByText("Click Me!");

  await fireEvent.click(button);
  await fireEvent.click(button);

  expect(getByText("Clicked 2 times")).toBeInTheDocument();
});
