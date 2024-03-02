# Northern Horizon CVLE

The website of Northern Horizon CVLE, showcasing the offers and opportunities at the comapny, such as open career positions, benefits of working at the company, while also describing the company's goals and ambitions. 


## Acknowledgements

 - [Awesome Readme Templates](https://awesomeopensource.com/project/elangosundar/awesome-README-templates)
 - [Awesome README](https://github.com/matiassingers/awesome-readme)
 - [How to write a Good readme](https://bulldogjob.com/news/449-how-to-write-a-good-readme-for-your-github-project)


## API Reference

#### Send job application to user

```http
  POST https://cvle.northernhorizon.org/email.php
```

| Parameter | Type     | Description                          |
|:----------| :------- |:-------------------------------------|
| `email`   | `string` | **Required**. Applicant's email      |
 | `job`    | `string` | **Required**. Applicant's chosen job |

#### Send newsletter

```http
  POST https://cvle.northernhorizon.org/newsletter.php
```

| Parameter | Type     | Description                                            |
|:----------| :------- |:-------------------------------------------------------|
| `email`   | `string` | **Required**. Email to send newsletter subscription to |

## Authors

- [@cannedBearrr](https://github.com/cannedBearrr)
- [@brcjk2](https://github.com/brcjk2)

## Demo

Insert gif or link to demo

"link here"
## Deployment

To deploy this project run

```bash
  flutter build web
```


## Documentation

[Documentation](https://docs.google.com/document/d/1OxBElLyvzMfaspCuPWi3Stdw2suMHGqGUGikf0WbT-I/edit#heading=h.rbep76rfagj0)

## Features

- Dynamic UI
- Newsletter
- Donation
- Job application


## Feedback

If you have any feedback, please reach out to us at henry.li@g.northernacademy.org


## 🔗 Links
[![portfolio](https://img.shields.io/badge/my_portfolio-000?style=for-the-badge&logo=ko-fi&logoColor=white)](https://katherineoelsner.com/)
[![linkedin](https://img.shields.io/badge/linkedin-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/)
[![twitter](https://img.shields.io/badge/twitter-1DA1F2?style=for-the-badge&logo=twitter&logoColor=white)](https://twitter.com/)

## Run Locally

Clone the project

```bash
  git clone https://github.com/cannedBearrr/Project.git
```

Go to the project directory

```bash
  cd Project
```

Install dependencies

```bash
  flutter pub get
```

Start the server

```bash
  flutter run
```


## Support

For support, email jiaxi.zhang@g.northernacademy.org or henry.li@g.northernacademy.org


## Screenshots

![App Screenshot](assets/images/ParentP.png)
![App Screenshot](assets/images/BusinessP.png)
![App Screenshot](assets/images/BenefitP.png)
![App Screenshot](assets/images/HowtoAchieveP.png)


## Tech Stack

**Client:** Flutter

**Server:** Php, SCP

## Used By

This project is used by the following companies:

- Northern Horizon CVLE
