import Mail from '../../lib/Mail';

class TemplateMail {
  get key() {
    return 'TemplateMail';
  }

  async handle({ data }) {
    const { content } = data;

    await Mail.sendMail({
      to: `${content.name} <${content.email}>`,
      subject: 'Email',
      text: 'Voce tem um novo email',
      template: 'email',
      context: {
        name: content.name,
      },
    });
  }
}

export default new TemplateMail();
