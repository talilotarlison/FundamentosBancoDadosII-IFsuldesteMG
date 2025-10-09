

CREATE TABLE TabelaFilha (
  id INT PRIMARY KEY,
  FK_idTabelaMae INT,
  -- outras colunas
  FOREIGN KEY (FK_idTabelaMae) REFERENCES TabelaMae(id)
) ENGINE=InnoDB;


ALTER TABLE TabelaFilha
ADD CONSTRAINT fk_filha_mae
FOREIGN KEY (FK_idTabelaMae) REFERENCES TabelaMae(id);
