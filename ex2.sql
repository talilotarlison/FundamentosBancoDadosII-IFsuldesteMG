-- Para criar um campo do tipo DATE em uma tabela:

CREATE TABLE tabela_datas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    data_evento DATE
);
-- Para inserir dados em um campo DATE:
INSERT INTO tabela_datas (data_evento) VALUES ('2025-12-31');

-- Você pode formatar as datas exibidas usando a função DATE_FORMAT(campo_data, format) na sua consulta. Por exemplo, para exibir a data no formato DD/MM/AAAA: 
SELECT DATE_FORMAT(data_evento, '%d/%m/%Y') AS data_formatada FROM tabela_datas;
