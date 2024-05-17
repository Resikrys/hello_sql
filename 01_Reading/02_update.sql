-- UPDATE: atualitzar --> es fan sempre a part amb una regla de filtrat!! (SET + WHERE)
UPDATE users SET age = 21 WHERE user_id = 11;

-- En aquest exemple la taula ha estat capaç de reconèixer que age i init_date eren números i no strings i els ha convertit
UPDATE users SET age = '20', init_date = '2020-10-12' WHERE user_id = 11;