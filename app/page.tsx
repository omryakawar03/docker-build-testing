import Image from "next/image";
import Nav from "./components/Nav";

export default function Home() {
  return (
  <>
    <Nav />
    <main className="flex min-h-screen flex-col items-center justify-between p-24">
      <h1 className="text-4xl font-bold mb-8">Welcome to the Home Page</h1>
      <p className="text-lg text-center max-w-2xl">
        This is a sample Next.js application with a navigation bar component.
      </p>
    </main>
    <section className="p-8  min-w-screen text-center">
      <h2 className="text-2xl font-semibold mb-4">About This App</h2>
      <p className="text-base text-center max-w-2xl">
        This application demonstrates how to create a reusable navigation bar using Next.js and React components.
      </p>
    </section>
  <section>
      <h2 className="text-2xl font-semibold mb-4">This is for docker</h2>
    </section>
  </>
  );
}
