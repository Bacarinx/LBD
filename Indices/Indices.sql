-- =============================================
-- ÍNDICES - USUARIO
-- =============================================
-- Busca de usuário por e-mail (login)
CREATE UNIQUE INDEX IDX_USUARIO_EMAIL 
    ON USUARIO(EMAIL_USUARIO);

-- Busca por nome
CREATE INDEX IDX_USUARIO_NM 
    ON USUARIO(NM_USUARIO);


-- =============================================
-- ÍNDICES - RESPONSAVEL
-- =============================================
-- Busca por documento (CPF/CNPJ)
CREATE INDEX IDX_RESPONSAVEL_DOCUMENTO 
    ON RESPONSAVEL(DOCUMENTO);

-- Busca por nome (relatórios)
CREATE INDEX IDX_RESPONSAVEL_NM 
    ON RESPONSAVEL(NM_RESPONSAVEL);

-- Busca por e-mail
CREATE INDEX IDX_RESPONSAVEL_EMAIL 
    ON RESPONSAVEL(EMAIL_RESPONSAVEL);


-- =============================================
-- ÍNDICES - CATEGORIA
-- =============================================
-- Busca por descrição da categoria
CREATE INDEX IDX_CATEGORIA_DESCRICAO 
    ON CATEGORIA(DESCRICAO);

-- FK: subcategorias por categoria mestre
CREATE INDEX IDX_CATEGORIA_ID_MESTRE 
    ON CATEGORIA(ID_MESTRE);


-- =============================================
-- ÍNDICES - EQUIPAMENTO
-- =============================================
-- FK: equipamentos por categoria (filtro e JOIN mais comum)
CREATE INDEX IDX_EQUIPAMENTO_ID_CATEGORIA 
    ON EQUIPAMENTO(ID_CATEGORIA);
    
-- Busca por descrição do equipamento
CREATE INDEX IDX_EQUIPAMENTO_DESCRICAO
    ON EQUIPAMENTO(DESCRICAO); 

-- Busca por marca e modelo (relatórios, filtros de tela)
CREATE INDEX IDX_EQUIPAMENTO_DS_MARCA 
    ON EQUIPAMENTO(DS_MARCA);
 
CREATE INDEX IDX_EQUIPAMENTO_DS_MODELO
    ON EQUIPAMENTO(DS_MODELO);   

-- =============================================
-- ÍNDICES - ENTRADA
-- =============================================
-- FK: entrada do equipamento
CREATE INDEX IDX_ENTRADA_ID_EQUIPAMENTO 
    ON ENTRADA(ID_EQUIPAMENTO);

-- FK: entradas registradas por usuário
CREATE INDEX IDX_ENTRADA_ID_USUARIO 
    ON ENTRADA(ID_USUARIO);

-- FK: entradas por responsável (Doador)
CREATE INDEX IDX_ENTRADA_ID_RESPONSAVEL 
    ON ENTRADA(ID_RESPONSAVEL);

-- Filtro por data de entrada (relatórios por período)
CREATE INDEX IDX_ENTRADA_DT_ENTRADA 
    ON ENTRADA(DT_ENTRADA);


-- =============================================
-- ÍNDICES - SAIDA
-- =============================================
-- FK: saída do equipamento
CREATE INDEX IDX_SAIDA_ID_EQUIPAMENTO 
    ON SAIDA(ID_EQUIPAMENTO);

-- FK: saídas por responsável
CREATE INDEX IDX_SAIDA_ID_RESPONSAVEL 
    ON SAIDA(ID_RESPONSAVEL);

-- FK: saídas registradas por usuário
CREATE INDEX IDX_SAIDA_ID_USUARIO 
    ON SAIDA(ID_USUARIO);

-- Filtro por data de saída (relatórios por período)
CREATE INDEX IDX_SAIDA_DT_SAIDA 
    ON SAIDA(DT_SAIDA);
