ALTER TABLE costumer
    ADD CONSTRAINT fk_user_id FOREIGN KEY (user_id) REFERENCES users (id);

ALTER TABLE videos
    ADD CONSTRAINT fk_costumer_id_video FOREIGN KEY (costumer_id) REFERENCES costumer (id);

ALTER TABLE texts
    ADD CONSTRAINT fk_costumer_id_texts FOREIGN KEY (costumer_id) REFERENCES costumer (id);

ALTER TABLE images
    ADD costumer_id VARCHAR NOT NULL;

ALTER TABLE images
    ADD CONSTRAINT fk_costumer_id_texts FOREIGN KEY (costumer_id) REFERENCES costumer (id);

ALTER TABLE blog
    ADD CONSTRAINT fk_costumer_id_images FOREIGN KEY (costumer_id) REFERENCES costumer (id);

ALTER TABLE post
    ADD CONSTRAINT fk_blog_id FOREIGN KEY (blog_id) REFERENCES blog (id);

ALTER TABLE post
    ADD CONSTRAINT fk_images_id FOREIGN KEY (img_id) REFERENCES images (id);

ALTER TABLE post
    ADD CONSTRAINT fk_videos_id FOREIGN KEY (video_id) REFERENCES videos (id);