// app/javascript/transitions/my_transition.js
export function MyTransition(Splide, Components) {
  // Optional
  function mount() {
    // Your optional mount logic goes here
  }

  // Required
  function start(index, done) {
    // Converts the index to the position
    const destination = Move.toPosition(index, true);

    // Applies the CSS transition
    list.style.transition = 'transform 800ms cubic-bezier(.44,.65,.07,1.01)';

    // Moves the carousel to the destination.
    Move.translate(destination);

    // Keeps the callback to invoke later.
    endCallback = done;
  }

  function cancel() {
    list.style.transition = '';
  }
  return {
    mount,
    start,
    cancel,
    destroy,
  };
}
