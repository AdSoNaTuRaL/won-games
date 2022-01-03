module.exports = ({ env }) => ({
  auth: {
    secret: env('ADMIN_JWT_SECRET', '89ee028027db3301ad4e3773abd2ff4c'),
  },
});
