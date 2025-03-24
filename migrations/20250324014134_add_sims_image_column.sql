-- +goose Up
-- +goose StatementBegin
ALTER TABLE sims
  ADD COLUMN image_uri text;

-- +goose StatementEnd
-- +goose Down
-- +goose StatementBegin
ALTER TABLE sims
  DROP COLUMN image_url;

-- +goose StatementEnd
