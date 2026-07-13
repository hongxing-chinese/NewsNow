export function Footer() {
  return (
    <>
      <a href={Homepage} target="_blank">基于 NewsNow 构建</a>
      <span>
        <span>
          Copyright ©
          {new Date().getFullYear()}
          {" "}
          By
          {" "}
        </span>
        <a href="https://www.1949101.xyz" target="_blank" rel="noreferrer noopener">
          茶山山人
        </a>
      </span>
    </>
  )
}
