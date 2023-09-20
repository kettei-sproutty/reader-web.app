"use client";

const Page = () => {

  return (
    <form>
      <input onChange={event => import('parser').then(async parser => {
        const text = await parser.log(event.target.files.item(0).stream());
        parser.greet(text);
      })} type="file" name="file" />
      <button type="submit">Upload</button>
    </form>
  );
};

export default Page
