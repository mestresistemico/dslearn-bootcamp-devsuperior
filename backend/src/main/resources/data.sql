INSERT INTO tb_user (name, email, password) VALUES ('Alex Brown', 'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Bob Brown', 'bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Maria Green', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);

INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);

INSERT INTO tb_course (name, img_uri, img_gray_uri) VALUES ('Bootcamp HTML', 'https://c.pxhere.com/images/22/ac/1d5d2173b4dc18c4dc20d3796e4e-1585491.jpg!d', 'https://static.thenounproject.com/png/2036003-200.png');

INSERT INTO tb_offer (edition, start_moment, end_moment, course_id) VALUES ('1.0', TIMESTAMP WITH TIME ZONE '2020-11-20T03:00:00Z', TIMESTAMP WITH TIME ZONE '2021-11-20T03:00:00Z', 1);
INSERT INTO tb_offer (edition, start_moment, end_moment, course_id) VALUES ('2.0', TIMESTAMP WITH TIME ZONE '2020-12-20T03:00:00Z', TIMESTAMP WITH TIME ZONE '2021-12-20T03:00:00Z', 1);

INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Text notification 1', TIMESTAMP WITH TIME ZONE '2020-12-30T03:00:00Z', true, 'Route 1', 1);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Text notification 2', TIMESTAMP WITH TIME ZONE '2020-12-30T03:00:00Z', false, 'Route 2', 1);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Text notification 3', TIMESTAMP WITH TIME ZONE '2020-12-30T03:00:00Z', true, 'Route 3', 2);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Text notification 4', TIMESTAMP WITH TIME ZONE '2020-12-30T03:00:00Z', false, 'Route 4', 3);

INSERT INTO tb_resource (title, description, position, img_uri, type, offer_id) VALUES ('Trilha HTML', 'Trilha principal do curso', 1, 'https://c.pxhere.com/images/22/ac/1d5d2173b4dc18c4dc20d3796e4e-1585491.jpg!d', 1, 1);
INSERT INTO tb_resource (title, description, position, img_uri, type, offer_id) VALUES ('Forum', 'Tire suas dúvidas', 2, 'https://c.pxhere.com/images/22/ac/1d5d2173b4dc18c4dc20d3796e4e-1585491.jpg!d', 2, 1);
INSERT INTO tb_resource (title, description, position, img_uri, type, offer_id) VALUES ('Lives', 'Lives exclusivas para turma', 3, 'https://c.pxhere.com/images/22/ac/1d5d2173b4dc18c4dc20d3796e4e-1585491.jpg!d', 0, 1);

INSERT INTO tb_section (title, description, position, img_uri, resource_id, prerequisite_id) VALUES ('Capítulo 1', 'Neste capítulo vamos começar', 1, 'https://c.pxhere.com/images/22/ac/1d5d2173b4dc18c4dc20d3796e4e-1585491.jpg!d', 1, null);
INSERT INTO tb_section (title, description, position, img_uri, resource_id, prerequisite_id) VALUES ('Capítulo 2', 'Neste capítulo vamos continuar', 2, 'https://c.pxhere.com/images/22/ac/1d5d2173b4dc18c4dc20d3796e4e-1585491.jpg!d', 1, 1);
INSERT INTO tb_section (title, description, position, img_uri, resource_id, prerequisite_id) VALUES ('Capítulo 3', 'Neste capítulo vamos finalizar', 3, 'https://c.pxhere.com/images/22/ac/1d5d2173b4dc18c4dc20d3796e4e-1585491.jpg!d', 1, 2);

INSERT INTO tb_enrollment (user_id, offer_id, enroll_moment, refund_moment, available, only_update) VALUES (1, 1, TIMESTAMP WITH TIME ZONE '2020-11-20T13:00:00Z', null, true, false);  
INSERT INTO tb_enrollment (user_id, offer_id, enroll_moment, refund_moment, available, only_update) VALUES (2, 1, TIMESTAMP WITH TIME ZONE '2020-11-20T13:00:00Z', null, true, false);  

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 1 do capítulo 1', 1, 1);  
INSERT INTO tb_content (id, text_content, video_uri) VALUES (1, 'Material de apoio: abc', 'https://www.youtube.com/watch?v=vNS-54QlcEg');  

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 2 do capítulo 1', 2, 1);  
INSERT INTO tb_content (id, text_content, video_uri) VALUES (2, '', 'https://www.youtube.com/watch?v=vNS-54QlcEg');  

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 3 do capítulo 1', 3, 1);  
INSERT INTO tb_content (id, text_content, video_uri) VALUES (3, '', 'https://www.youtube.com/watch?v=vNS-54QlcEg');  

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Tarefa do capítulo 1', 4, 1);  
INSERT INTO tb_task (id, description, question_count, approval_count, weight, due_date) VALUES (4, 'Fazer trabalho legal', 5, 4, 1.0, TIMESTAMP WITH TIME ZONE '2020-11-25T13:00:00Z');  

INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (1, 1, 1);  
INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (2, 1, 1);  
