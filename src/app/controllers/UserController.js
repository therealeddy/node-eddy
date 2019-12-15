class UserController {
  async index(req, res) {
    return res.json({ ok: true });
  }

  async show(req, res) {
    return res.json({ ok: true });
  }

  async store(req, res) {
    return res.json({ ok: true });
  }

  async update(req, res) {
    return res.json({ ok: true });
  }

  async delete(req, res) {
    return res.json({ ok: true });
  }
}

export default new UserController();
