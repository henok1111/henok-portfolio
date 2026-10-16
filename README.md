# Henok Basazn Arega — Portfolio

A responsive, single-page developer portfolio built with Angular and an ASP.NET Core API for Henok Basazn Arega, a full-stack web developer from Ethiopia. It highlights his software projects, technical skills, education, and completed full-stack web and mobile training.

## Featured projects

- [Service & Supply Management System](https://github.com/henok1111/ssms_project) — Angular and ASP.NET Core.
- [Training Management System](https://github.com/henok1111/TMS) — Angular, ASP.NET Core, .NET 10, and PostgreSQL.
- [Fix My Campus](https://github.com/henok1111/fix-my-campas-) — team project using Angular, ASP.NET Core, and PostgreSQL.
- [Court Information System](https://github.com/henok1111/fullproject/tree/master) — React, Node.js, Express, and MySQL.

The portfolio also includes relevant education and software-development experience from Henok's CV. Qiyas Project training is listed as completed and includes advanced full-stack web development and Flutter mobile app development.

## Run locally

In one terminal, start the API:

```powershell
dotnet run --project Portfolio.Api
```

The API listens at `http://localhost:5038`. In another terminal, start Angular:

```powershell
npm install
npm start
```

Open `http://localhost:4200`. The contact form posts to the API; the demo endpoint validates the message and returns an acknowledgement, but does not send email. Configure an email provider in `Portfolio.Api` before using it for real contact requests.

## Customize

- Edit the contact API URL in `src/app/app.ts`.
- Update the page copy and section structure in `src/app/app.html`.
- Adjust the colors, typography, and responsive layouts in `src/styles.scss`.
- Change the document title and description in `src/index.html`.
- Add real email delivery and any persistence you need in `Portfolio.Api/Controllers/ContactController.cs`.
