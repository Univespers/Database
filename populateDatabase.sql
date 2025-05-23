USE univespers;

-- Autorizacao
INSERT INTO Autorizacao (tipo, validade) VALUES ("ESTUDANTE", 3600000);

-- Habilidade
INSERT INTO Habilidade (nome, sugerido) VALUES
	("Organização", 0),
	("Tomada de decisões", 0),
	("Comunicação", 0),
	("Lógica de programação", 0),
	("Atenção a detalhes", 0),
	("Paciência", 0),
	("Gestão de pessoas", 0),
	("Gestão de projetos", 0),
	("Liderança", 0),
	("Foco em resultados", 0),
	("Flexibilidade", 0),
	("Proatividade", 0),
	("Comprometimento", 0),
	("Escrita", 0),
	("UML", 0),
	("Angular", 0),
	("C#", 0),
	("SQL", 0),
	("MySQL", 0),
	("TypeScript", 0),
	("JavaScript", 0),
	("Java", 0),
	("Vue.js", 0),
	("React", 0),
	("Node.js", 0),
	("Python", 0),
	("PHP", 0),
	("C++", 0),
	("Ruby", 0),
	("Express", 0),
	("Git", 0),
	("Shell", 0),
	("Lua", 0),
	("Go", 0),
	("Kotlin", 0),
	("C", 0),
	("Rust", 0),
	("Scala", 0),
	("Swift", 0),
	("HTML", 0),
	("CSS", 0),
	("SASS", 0),
	("Perl", 0),
	("Assembly", 0),
	("Haskell", 0),
	("COBOL", 0),
	("Lisp", 0),
	("VHDL", 0);

-- Área de Interesse
INSERT INTO AreaDeInteresse (nome, sugerido) VALUES
	("Programação", 0),
	("Frontend", 0),
	("Database", 0),
	("Banco de dados", 0),
	("Backend", 0),
	("Gerenciamento", 0),
	("Redação", 0),
	("Colega de dados", 0),
	("Escrita de documentos", 0),
	("Design de sistema", 0),
	("Design de interface", 0),
	("Liderança", 0),
	("Design de diagramas", 0),
	("Gestão de equipe", 0),
	("Suporte", 0),
	("Apresentação", 0);

-- Curso
INSERT INTO Curso (nome, sugerido) VALUES
    ("Bacharelado em Administração", 0),
    ("Bacharelado em Ciência de Dados", 0),
    ("Bacharelado em Tecnologia da Informação", 0),
    ("Curso Superior de Tecnologia em Gestão Pública", 0),
    ("Engenharia de Computação", 0),
    ("Engenharia de Produção", 0),
    ("Letras - Habilitação em Língua Portuguesa", 0),
    ("Licenciatura em Matemática", 0),
    ("Pedagogia", 0),
    ("Tecnologia em Processos Gerenciais", 0);

-- Polo
INSERT INTO Polo (nome, localidade, distribuicaoRegional) VALUES
    ("ARUJÁ", "", "DRP01"),
    ("BARUERI", "", "DRP01"),
    ("CAIEIRAS", "", "DRP01"),
    ("CAJAMAR", "", "DRP01"),
    ("CARAPICUÍBA", "", "DRP01"),
    ("DIADEMA", "", "DRP01"),
    ("EMBU DAS ARTES", "", "DRP01"),
    ("FERRAZ DE VASCONCELOS", "", "DRP01"),
    ("FRANCISCO MORATO", "", "DRP01"),
    ("FRANCO DA ROCHA", "", "DRP01"),
    ("GUARAREMA", "", "DRP01"),
    ("ITAPECERICA DA SERRA", "", "DRP01"),
    ("ITAPEVI", "", "DRP01"),
    ("ITAQUAQUECETUBA", "", "DRP01"),
    ("JANDIRA", "", "DRP01"),
    ("JUQUITIBA", "", "DRP01"),
    ("MAIRIPORÃ", "", "DRP01"),
    ("MAUÁ", "", "DRP01"),
    ("MOGI DAS CRUZES", "", "DRP01"),
    ("OSASCO - UAB", "", "DRP01"),
    ("POÁ", "", "DRP01"),
    ("RIBEIRÃO PIRES", "", "DRP01"),
    ("SALESÓPOLIS", "", "DRP01"),
    ("SANTA ISABEL", "", "DRP01"),
    ("SANTANA DE PARNAÍBA", "", "DRP01"),
    ("SANTO ANDRÉ - PREFEITURA", "", "DRP01"),
    ("SÃO CAETANO DO SUL - PREFEITURA", "", "DRP01"),
    ("SÃO LOURENÇO DA SERRA", "", "DRP01"),
    ("SUZANO", "", "DRP01"),
    ("VARGEM GRANDE PAULISTA", "", "DRP01"),
    ("GUARULHOS", "", "DRP01"),
    ("SÃO BERNARDO DO CAMPO", "", "DRP01"),
    ("BERTIOGA", "", "DRP02"),
    ("CUBATÃO", "", "DRP02"),
    ("GUARUJÁ", "", "DRP02"),
    ("ILHA COMPRIDA", "", "DRP02"),
    ("ITANHAÉM", "", "DRP02"),
    ("ITARIRI", "", "DRP02"),
    ("JACUPIRANGA", "", "DRP02"),
    ("JUQUIÁ", "", "DRP02"),
    ("MONGAGUÁ", "", "DRP02"),
    ("PARIQUERA-AÇU", "", "DRP02"),
    ("PEDRO DE TOLEDO", "", "DRP02"),
    ("PRAIA GRANDE", "", "DRP02"),
    ("REGISTRO", "", "DRP02"),
    ("SANTOS", "", "DRP02"),
    ("SÃO VICENTE", "", "DRP02"),
    ("SÃO VICENTE", "", "DRP02"),
    ("SETE BARRAS", "", "DRP02"),
    ("CAJATI", "", "DRP02"),
    ("ELDORADO", "", "DRP02"),
    ("IGUAPE", "", "DRP02"),
    ("MIRACATU", "", "DRP02"),
    ("PERUÍBE", "", "DRP02"),
    ("APARECIDA", "", "DRP03"),
    ("AREIAS", "", "DRP03"),
    ("BANANAL", "", "DRP03"),
    ("CAMPOS DO JORDÃO", "", "DRP03"),
    ("CARAGUATATUBA", "", "DRP03"),
    ("CRUZEIRO - PREFEITURA", "", "DRP03"),
    ("CUNHA", "", "DRP03"),
    ("GUARATINGUETÁ", "", "DRP03"),
    ("IGARATÁ", "", "DRP03"),
    ("ILHABELA", "", "DRP03"),
    ("JACAREÍ", "", "DRP03"),
    ("JAMBEIRO", "", "DRP03"),
    ("LAGOINHA", "", "DRP03"),
    ("LORENA", "", "DRP03"),
    ("NATIVIDADE DA SERRA", "", "DRP03"),
    ("PARAIBUNA", "", "DRP03"),
    ("PINDAMONHANGABA", "", "DRP03"),
    ("PIQUETE", "", "DRP03"),
    ("QUELUZ", "", "DRP03"),
    ("SANTA BRANCA", "", "DRP03"),
    ("SÃO JOSÉ DO BARREIRO", "", "DRP03"),
    ("SÃO JOSÉ DOS CAMPOS", "", "DRP03"),
    ("SÃO JOSÉ DOS CAMPOS - PARQUE TECNOLÓGICO", "", "DRP03"),
    ("SÃO JOSÉ DOS CAMPOS - SÃO FRANCISCO XAVIER", "", "DRP03"),
    ("TAUBATÉ", "", "DRP03"),
    ("UBATUBA", "", "DRP03"),
    ("CAÇAPAVA", "", "DRP03"),
    ("CACHOEIRA PAULISTA", "", "DRP03"),
    ("POTIM", "", "DRP03"),
    ("REDENÇÃO DA SERRA", "", "DRP03"),
    ("SÃO LUIZ DO PARAITINGA", "", "DRP03"),
    ("SÃO SEBASTIÃO", "", "DRP03"),
    ("TREMEMBÉ", "", "DRP03"),
    ("AGUAÍ", "", "DRP04"),
    ("AMPARO", "", "DRP04"),
    ("ARARAS", "", "DRP04"),
    ("ARTUR NOGUEIRA", "", "DRP04"),
    ("ATIBAIA", "", "DRP04"),
    ("POLO FATEC - BRAGANÇA PAULISTA", "", "DRP04"),
    ("BRAGANÇA PAULISTA", "", "DRP04"),
    ("CACONDE", "", "DRP04"),
    ("CAMPINAS", "", "DRP04"),
    ("CAMPO LIMPO PAULISTA", "", "DRP04"),
    ("CAPIVARI", "", "DRP04"),
    ("CASA BRANCA", "", "DRP04"),
    ("CHARQUEADA", "", "DRP04"),
    ("CORDEIRÓPOLIS", "", "DRP04"),
    ("ELIAS FAUSTO", "", "DRP04"),
    ("ESPÍRITO SANTO DO PINHAL", "", "DRP04"),
    ("ESTIVA GERBI", "", "DRP04"),
    ("HOLAMBRA", "", "DRP04"),
    ("HORTOLÂNDIA", "", "DRP04"),
    ("POLO FATEC - INDAIATUBA", "", "DRP04"),
    ("INDAIATUBA", "", "DRP04"),
    ("IPEÚNA", "", "DRP04"),
    ("ITAPIRA", "", "DRP04"),
    ("ITATIBA", "", "DRP04"),
    ("JAGUARIÚNA", "", "DRP04"),
    ("LEME", "", "DRP04"),
    ("LIMEIRA", "", "DRP04"),
    ("LOUVEIRA", "", "DRP04"),
    ("POLO FATEC - MOCOCA", "", "DRP04"),
    ("MOCOCA", "", "DRP04"),
    ("MOGI MIRIM", "", "DRP04"),
    ("MORUNGABA", "", "DRP04"),
    ("PEDREIRA", "", "DRP04"),
    ("PIRACICABA", "", "DRP04"),
    ("PIRASSUNUNGA", "", "DRP04"),
    ("RIO CLARO", "", "DRP04"),
    ("SALTINHO", "", "DRP04"),
    ("SANTA BÁRBARA D'OESTE", "", "DRP04"),
    ("SANTA CRUZ DA CONCEIÇÃO", "", "DRP04"),
    ("SANTA CRUZ DAS PALMEIRAS", "", "DRP04"),
    ("SANTA GERTRUDES", "", "DRP04"),
    ("SÃO JOÃO DA BOA VISTA", "", "DRP04"),
    ("SÃO JOSÉ DO RIO PARDO", "", "DRP04"),
    ("SÃO PEDRO", "", "DRP04"),
    ("SERRA NEGRA", "", "DRP04"),
    ("SOCORRO", "", "DRP04"),
    ("SUMARÉ", "", "DRP04"),
    ("TAMBAÚ", "", "DRP04"),
    ("TAPIRATIBA", "", "DRP04"),
    ("TORRINHA", "", "DRP04"),
    ("VALINHOS", "", "DRP04"),
    ("VARGEM GRANDE DO SUL", "", "DRP04"),
    ("AMERICANA", "", "DRP04"),
    ("BOM JESUS DOS PERDÕES", "", "DRP04"),
    ("CONCHAL", "", "DRP04"),
    ("COSMÓPOLIS", "", "DRP04"),
    ("ENGENHEIRO COELHO", "", "DRP04"),
    ("ITUPEVA", "", "DRP04"),
    ("MONTE MOR", "", "DRP04"),
    ("PIRACAIA", "", "DRP04"),
    ("RIO DAS PEDRAS", "", "DRP04"),
    ("VÁRZEA PAULISTA", "", "DRP04"),
    ("VINHEDO", "", "DRP04"),
    ("ANALÂNDIA", "", "DRP04"),
    ("SANTA MARIA DA SERRA", "", "DRP04"),
    ("ALUMÍNIO", "", "DRP05"),
    ("ANHEMBI", "", "DRP05"),
    ("ARAÇARIGUAMA", "", "DRP05"),
    ("ARAÇOIABA DA SERRA", "", "DRP05"),
    ("AREIÓPOLIS", "", "DRP05"),
    ("BOFETE", "", "DRP05"),
    ("BOTUCATU", "", "DRP05"),
    ("CABREÚVA", "", "DRP05"),
    ("CAPELA DO ALTO", "", "DRP05"),
    ("CERQUILHO", "", "DRP05"),
    ("CESÁRIO LANGE", "", "DRP05"),
    ("CONCHAS", "", "DRP05"),
    ("IBIÚNA", "", "DRP05"),
    ("IPERÓ", "", "DRP05"),
    ("ITAPETININGA - UAB", "", "DRP05"),
    ("ITATINGA", "", "DRP05"),
    ("ITU", "", "DRP05"),
    ("POLO FATEC - ITU", "", "DRP05"),
    ("LARANJAL PAULISTA", "", "DRP05"),
    ("MAIRINQUE", "", "DRP05"),
    ("PARDINHO", "", "DRP05"),
    ("PORANGABA", "", "DRP05"),
    ("SALTO", "", "DRP05"),
    ("SALTO DE PIRAPORA", "", "DRP05"),
    ("SÃO MIGUEL ARCANJO", "", "DRP05"),
    ("SÃO ROQUE", "", "DRP05"),
    ("TATUÍ", "", "DRP05"),
    ("TIETÊ", "", "DRP05"),
    ("BOITUVA", "", "DRP05"),
    ("GUAREÍ", "", "DRP05"),
    ("LENÇÓIS PAULISTA", "", "DRP05"),
    ("PEREIRAS", "", "DRP05"),
    ("PILAR DO SUL", "", "DRP05"),
    ("PORTO FELIZ", "", "DRP05"),
    ("PRATÂNIA", "", "DRP05"),
    ("SARAPUÍ", "", "DRP05"),
    ("SOROCABA", "", "DRP05"),
    ("VOTORANTIM", "", "DRP05"),
    ("ALAMBARI", "", "DRP05"),
    ("APIAÍ", "", "DRP06"),
    ("ARANDU", "", "DRP06"),
    ("AVARÉ", "", "DRP06"),
    ("BARÃO DE ANTONINA", "", "DRP06"),
    ("BURI", "", "DRP06"),
    ("CAPÃO BONITO - PREFEITURA", "", "DRP06"),
    ("CERQUEIRA CÉSAR", "", "DRP06"),
    ("FARTURA", "", "DRP06"),
    ("IPORANGA", "", "DRP06"),
    ("ITABERÁ", "", "DRP06"),
    ("ITAÍ", "", "DRP06"),
    ("ITAOCA", "", "DRP06"),
    ("ITAPORANGA", "", "DRP06"),
    ("ITARARÉ", "", "DRP06"),
    ("MANDURI", "", "DRP06"),
    ("PARANAPANEMA", "", "DRP06"),
    ("TAQUARITUBA", "", "DRP06"),
    ("ITAPEVA", "", "DRP06"),
    ("RIBEIRA", "", "DRP06"),
    ("TAQUARIVAÍ", "", "DRP06"),
    ("ASSIS", "", "DRP07"),
    ("BERNARDINO DE CAMPOS", "", "DRP07"),
    ("CHAVANTES", "", "DRP07"),
    ("GARÇA", "", "DRP07"),
    ("HERCULÂNDIA", "", "DRP07"),
    ("IPAUSSU", "", "DRP07"),
    ("MARÍLIA", "", "DRP07"),
    ("OURINHOS", "", "DRP07"),
    ("POLO FATEC - OURINHOS", "", "DRP07"),
    ("PALMITAL", "", "DRP07"),
    ("PARAGUAÇU PAULISTA", "", "DRP07"),
    ("PARAPUÃ", "", "DRP07"),
    ("QUATÁ", "", "DRP07"),
    ("SANTA CRUZ DO RIO PARDO", "", "DRP07"),
    ("SÃO PEDRO DO TURVO", "", "DRP07"),
    ("TARUMÃ", "", "DRP07"),
    ("TUPÃ", "", "DRP07"),
    ("VERA CRUZ", "", "DRP07"),
    ("ALVINLANDIA", "", "DRP07"),
    ("BASTOS", "", "DRP07"),
    ("MARACAÍ", "", "DRP07"),
    ("POMPÉIA", "", "DRP07"),
    ("QUINTANA", "", "DRP07"),
    ("RINOPOLIS", "", "DRP07"),
    ("AREALVA", "", "DRP08"),
    ("BAURU", "", "DRP08"),
    ("BOCAINA", "", "DRP08"),
    ("CAFELÂNDIA", "", "DRP08"),
    ("DOIS CÓRREGOS", "", "DRP08"),
    ("JAÚ", "", "DRP08"),
    ("MACATUBA", "", "DRP08"),
    ("MINEIROS DO TIETÊ", "", "DRP08"),
    ("PEDERNEIRAS", "", "DRP08"),
    ("PIRAJUÍ", "", "DRP08"),
    ("REGINÓPOLIS", "", "DRP08"),
    ("AGUDOS", "", "DRP08"),
    ("BARIRI", "", "DRP08"),
    ("BARRA BONITA", "", "DRP08"),
    ("IACANGA", "", "DRP08"),
    ("IGARAÇU DO TIETÊ", "", "DRP08"),
    ("ITAJU", "", "DRP08"),
    ("ITAPUÍ", "", "DRP08"),
    ("LINS", "", "DRP08"),
    ("PAULISTÂNIA", "", "DRP08"),
    ("AMÉRICO BRASILIENSE", "", "DRP09"),
    ("ARARAQUARA", "", "DRP09"),
    ("BOA ESPERANÇA DO SUL", "", "DRP09"),
    ("BORBOREMA", "", "DRP09"),
    ("CÂNDIDO RODRIGUES", "", "DRP09"),
    ("DOURADO", "", "DRP09"),
    ("IBITINGA", "", "DRP09"),
    ("ITÁPOLIS", "", "DRP09"),
    ("MATÃO", "", "DRP09"),
    ("MOTUCA", "", "DRP09"),
    ("RIBEIRÃO BONITO", "", "DRP09"),
    ("RINCÃO", "", "DRP09"),
    ("SÃO CARLOS", "", "DRP09"),
    ("BROTAS", "", "DRP09"),
    ("GAVIÃO PEIXOTO", "", "DRP09"),
    ("GUATAPARÁ", "", "DRP09"),
    ("PORTO FERREIRA", "", "DRP09"),
    ("TABATINGA", "", "DRP09"),
    ("FERNANDO PRESTES", "", "DRP09"),
    ("ALTINÓPOLIS", "", "DRP10"),
    ("BARRETOS", "", "DRP10"),
    ("BARRINHA", "", "DRP10"),
    ("BRODOWSKI", "", "DRP10"),
    ("CAJOBI", "", "DRP10"),
    ("COLINA", "", "DRP10"),
    ("CRAVINHOS", "", "DRP10"),
    ("FRANCA", "", "DRP10"),
    ("GUAÍRA", "", "DRP10"),
    ("GUARACI", "", "DRP10"),
    ("GUARIBA", "", "DRP10"),
    ("IGARAPAVA", "", "DRP10"),
    ("JABORANDI", "", "DRP10"),
    ("LUIZ ANTÔNIO", "", "DRP10"),
    ("MIGUELÓPOLIS", "", "DRP10"),
    ("MORRO AGUDO", "", "DRP10"),
    ("OLÍMPIA", "", "DRP10"),
    ("PITANGUEIRAS", "", "DRP10"),
    ("PONTAL", "", "DRP10"),
    ("RESTINGA", "", "DRP10"),
    ("RIBEIRÃO CORRENTE", "", "DRP10"),
    ("SANTA ROSA DE VITERBO", "", "DRP10"),
    ("SANTO ANTÔNIO DA ALEGRIA", "", "DRP10"),
    ("SÃO SIMÃO", "", "DRP10"),
    ("SERRANA", "", "DRP10"),
    ("SERTÃOZINHO", "", "DRP10"),
    ("SEVERÍNIA", "", "DRP10"),
    ("TAQUARAL", "", "DRP10"),
    ("TAQUARITINGA", "", "DRP10"),
    ("VIRADOURO", "", "DRP10"),
    ("CAJURU", "", "DRP10"),
    ("CRISTAIS PAULISTA", "", "DRP10"),
    ("DUMONT", "", "DRP10"),
    ("GUARA", "", "DRP10"),
    ("ITUVERAVA", "", "DRP10"),
    ("JABOTICABAL", "", "DRP10"),
    ("MONTE ALTO", "", "DRP10"),
    ("MONTE AZUL PAULISTA", "", "DRP10"),
    ("ORLÂNDIA", "", "DRP10"),
    ("PRADOPOLIS", "", "DRP10"),
    ("RIBEIRÃO PRETO", "", "DRP10"),
    ("SANTA CRUZ DA ESPERANCA", "", "DRP10"),
    ("BADY BASSITT", "", "DRP11"),
    ("BÁLSAMO", "", "DRP11"),
    ("CATANDUVA", "", "DRP11"),
    ("ESTRELA D'OESTE", "", "DRP11"),
    ("FERNANDÓPOLIS", "", "DRP11"),
    ("GUAPIAÇU", "", "DRP11"),
    ("ICÉM", "", "DRP11"),
    ("JOSÉ BONIFÁCIO", "", "DRP11"),
    ("MIRASSOL", "", "DRP11"),
    ("NOVA GRANADA", "", "DRP11"),
    ("NOVO HORIZONTE", "", "DRP11"),
    ("ORINDIÚVA", "", "DRP11"),
    ("OUROESTE", "", "DRP11"),
    ("PLANALTO", "", "DRP11"),
    ("RIOLÂNDIA", "", "DRP11"),
    ("SALES", "", "DRP11"),
    ("SEBASTIANÓPOLIS DO SUL", "", "DRP11"),
    ("VOTUPORANGA", "", "DRP11"),
    ("IBIRÁ", "", "DRP11"),
    ("ITAJOBI", "", "DRP11"),
    ("JALES - UAB", "", "DRP11"),
    ("NOVAIS", "", "DRP11"),
    ("PALMARES PAULISTA", "", "DRP11"),
    ("PAULO DE FARIA", "", "DRP11"),
    ("SANTA ADÉLIA", "", "DRP11"),
    ("SÃO JOSÉ DO RIO PRETO", "", "DRP11"),
    ("URUPÊS", "", "DRP11"),
    ("ANDRADINA", "", "DRP12"),
    ("ARAÇATUBA - PREFEITURA", "", "DRP12"),
    ("BARBOSA", "", "DRP12"),
    ("BRAÚNA", "", "DRP12"),
    ("CLEMENTINA", "", "DRP12"),
    ("GUARARAPES", "", "DRP12"),
    ("ILHA SOLTEIRA", "", "DRP12"),
    ("MURUTINGA DO SUL", "", "DRP12"),
    ("PENÁPOLIS", "", "DRP12"),
    ("PEREIRA BARRETO", "", "DRP12"),
    ("PIACATU", "", "DRP12"),
    ("SUD MENNUCCI", "", "DRP12"),
    ("VALPARAÍSO", "", "DRP12"),
    ("SANTÓPOLIS DO AGUAPEÍ", "", "DRP12"),
    ("SUZANÁPOLIS", "", "DRP12"),
    ("DRACENA", "", "DRP13"),
    ("ESTRELA DO NORTE", "", "DRP13"),
    ("FLORA RICA", "", "DRP13"),
    ("FLÓRIDA PAULISTA", "", "DRP13"),
    ("IRAPURU", "", "DRP13"),
    ("LUCÉLIA", "", "DRP13"),
    ("MARTINÓPOLIS", "", "DRP13"),
    ("NANTES", "", "DRP13"),
    ("NARANDIBA", "", "DRP13"),
    ("OURO VERDE", "", "DRP13"),
    ("PACAEMBU", "", "DRP13"),
    ("PRESIDENTE BERNARDES", "", "DRP13"),
    ("PRESIDENTE EPITÁCIO", "", "DRP13"),
    ("PRESIDENTE VENCESLAU", "", "DRP13"),
    ("RANCHARIA", "", "DRP13"),
    ("SANDOVALINA", "", "DRP13"),
    ("SANTO ANASTÁCIO", "", "DRP13"),
    ("TACIBA", "", "DRP13"),
    ("TARABAI", "", "DRP13"),
    ("TEODORO SAMPAIO", "", "DRP13"),
    ("ADAMANTINA - UAB", "", "DRP13"),
    ("ÁLVARES MACHADO", "", "DRP13"),
    ("MIRANTE DO PARANAPANEMA", "", "DRP13"),
    ("PIRAPOZINHO", "", "DRP13"),
    ("PRESIDENTE PRUDENTE", "", "DRP13"),
    ("ROSANA", "", "DRP13"),
    ("SÃO PAULO - CARRÃO", "", "DRP14"),
    ("SÃO PAULO - PARQUE DO CARMO", "", "DRP14"),
    ("SÃO PAULO - PARQUE NOVO MUNDO", "", "DRP14"),
    ("SÃO PAULO - PINHEIRINHO", "", "DRP14"),
    ("SÃO PAULO - SÃO PEDRO", "", "DRP14"),
    ("SÃO PAULO - INÁCIO MONTEIRO", "", "DRP14"),
    ("SÃO PAULO - ÁGUA AZUL", "", "DRP14"),
    ("SÃO PAULO - ALTO ALEGRE", "", "DRP14"),
    ("SÃO PAULO - ALVARENGA", "", "DRP14"),
    ("SÃO PAULO - ARICANDUVA", "", "DRP14"),
    ("SÃO PAULO - AZUL DA COR DO MAR", "", "DRP14"),
    ("SÃO PAULO - BUTANTÃ", "", "DRP14"),
    ("SÃO PAULO - CAMINHO DO MAR", "", "DRP14"),
    ("SÃO PAULO - CAMPO LIMPO", "", "DRP14"),
    ("SÃO PAULO - CANTOS DO AMANHECER", "", "DRP14"),
    ("SÃO PAULO - CAPÃO REDONDO", "", "DRP14"),
    ("SÃO PAULO - CASA BLANCA", "", "DRP14"),
    ("SÃO PAULO - CIDADE DUTRA", "", "DRP14"),
    ("SÃO PAULO - FEITIÇO DA VILA", "", "DRP14"),
    ("SÃO PAULO - FORMOSA", "", "DRP14"),
    ("SÃO PAULO - FREGUESIA DO Ó", "", "DRP14"),
    ("SÃO PAULO - GUARAPIRANGA", "", "DRP14"),
    ("SÃO PAULO - HELIÓPOLIS", "", "DRP14"),
    ("SÃO PAULO - JAÇANÃ", "", "DRP14"),
    ("SÃO PAULO - JAGUARÉ", "", "DRP14"),
    ("SÃO PAULO - JAMBEIRO", "", "DRP14"),
    ("SÃO PAULO - JARDIM PAULISTANO", "", "DRP14"),
    ("SÃO PAULO - LAJEADO", "", "DRP14"),
    ("SÃO PAULO - MENINOS", "", "DRP14"),
    ("SÃO PAULO - NAVEGANTES", "", "DRP14"),
    ("SÃO PAULO - PARAISÓPOLIS", "", "DRP14"),
    ("SÃO PAULO - PARELHEIROS", "", "DRP14"),
    ("SÃO PAULO - PARQUE ANHANGUERA", "", "DRP14"),
    ("SÃO PAULO - PARQUE BRISTOL", "", "DRP14"),
    ("SÃO PAULO - PARQUE SÃO CARLOS", "", "DRP14"),
    ("SÃO PAULO - PARQUE VEREDAS", "", "DRP14"),
    ("SÃO PAULO - PAZ", "", "DRP14"),
    ("SÃO PAULO - PERA MARMELO", "", "DRP14"),
    ("SÃO PAULO - PERUS", "", "DRP14"),
    ("SÃO PAULO - QUINTA DO SOL", "", "DRP14"),
    ("SÃO PAULO - ROSA DA CHINA", "", "DRP14"),
    ("SÃO PAULO - SÃO MATEUS", "", "DRP14"),
    ("SÃO PAULO - SÃO RAFAEL", "", "DRP14"),
    ("SÃO PAULO - SAPOPEMBA", "", "DRP14"),
    ("SÃO PAULO - TIQUATIRA", "", "DRP14"),
    ("SÃO PAULO - TRÊS LAGOS", "", "DRP14"),
    ("SÃO PAULO - TRÊS PONTES", "", "DRP14"),
    ("SÃO PAULO - UIRAPURU", "", "DRP14"),
    ("SÃO PAULO - VILA ATLÂNTICA", "", "DRP14"),
    ("SÃO PAULO - VILA CURUÇÁ", "", "DRP14"),
    ("SÃO PAULO - VILA DO SOL", "", "DRP14"),
    ("SÃO PAULO - VILA RUBI", "", "DRP14");



-- NÃO USAR EM PRODUÇÃO
-- Usuário de Teste ("aluno", "1234")
CALL NovoUsuario('a21d6f3803f0491c32444ef91a0836be243cc4da5186357e805b7009a5b0669b', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', 'ESTUDANTE');
-- Colegas
CALL CreateEstudante('hash-D6kLGKh0LZO47rQh', 'hash-Rj0NDCixaRPunT28', "Aluno #8545", "aluno8545@email.com", "SANTANA DE PARNAÍBA", "Bacharelado em Administração", "Descrição", "(323) 472-7130", 0);
CALL NovoContato('hash-D6kLGKh0LZO47rQh', 'hash-Rj0NDCixaRPunT28', "Reddit", "8545@reddit.com");
CALL NovoContato('hash-D6kLGKh0LZO47rQh', 'hash-Rj0NDCixaRPunT28', "LinkedIn", "8545@linkedin.com");

CALL CreateEstudante('hash-oOrtx48b4vUxhfSV', 'hash-1K3ZZFzxNzkebycS', "Aluno #3708", "aluno3708@email.com", "SANTO ANDRÉ - PREFEITURA", "Bacharelado em Ciência de Dados", "Descrição", "(731) 281-8885", 0);
CALL NovoContato('hash-oOrtx48b4vUxhfSV', 'hash-1K3ZZFzxNzkebycS', "Discord", "3708@discord.com");

CALL CreateEstudante('hash-2g36R2zY3mJ9kb42', 'hash-xil6cCLgNIWhxQgq', "Aluno #6012", "aluno6012@email.com", "SÃO CAETANO DO SUL - PREFEITURA", "Bacharelado em Tecnologia da Informação", "Descrição", "(540) 853-7743", 1);
CALL NovoContato('hash-2g36R2zY3mJ9kb42', 'hash-xil6cCLgNIWhxQgq', "Reddit", "6012@reddit.com");

CALL CreateEstudante('hash-6UfLVc3i4MnhOyzW', 'hash-vufWXeVCxrhbArHy', "Aluno #6574", "aluno6574@email.com", "SÃO LOURENÇO DA SERRA", "Curso Superior de Tecnologia em Gestão Pública", "Descrição", "(730) 461-7049", 1);
CALL NovoContato('hash-6UfLVc3i4MnhOyzW', 'hash-vufWXeVCxrhbArHy', "Facebook", "6574@facebook.com");

CALL CreateEstudante('hash-2CqUh9HgpRyg6ovb', 'hash-jex4yX27nhz8d7KD', "Aluno #4145", "aluno4145@email.com", "SUZANO", "Engenharia de Computação", "Descrição", "(342) 703-4679", 0);
CALL NovoContato('hash-2CqUh9HgpRyg6ovb', 'hash-jex4yX27nhz8d7KD', "Facebook", "4145@facebook.com");
CALL NovoContato('hash-2CqUh9HgpRyg6ovb', 'hash-jex4yX27nhz8d7KD', "Instagram", "4145@instagram.com");

CALL CreateEstudante('hash-UJ6GxlqpvQtI17XH', 'hash-x833VY4tninIryKL', "Aluno #5712", "aluno5712@email.com", "VARGEM GRANDE PAULISTA", "Engenharia de Produção", "Descrição", "(530) 766-8466", 1);
CALL NovoContato('hash-UJ6GxlqpvQtI17XH', 'hash-x833VY4tninIryKL', "Reddit", "5712@reddit.com");
CALL NovoContato('hash-UJ6GxlqpvQtI17XH', 'hash-x833VY4tninIryKL', "GitHub", "5712@github.com");
CALL NovoContato('hash-UJ6GxlqpvQtI17XH', 'hash-x833VY4tninIryKL', "Email", "5712@email.com");
CALL NovoContato('hash-UJ6GxlqpvQtI17XH', 'hash-x833VY4tninIryKL', "Discord", "5712@discord.com");

CALL CreateEstudante('hash-rcrFtUn05KrJIvw5', 'hash-kTG0otRFWDywJamU', "Aluno #9034", "aluno9034@email.com", "GUARULHOS", "Letras - Habilitação em Língua Portuguesa", "Descrição", "(345) 354-8589", 0);
CALL NovoContato('hash-rcrFtUn05KrJIvw5', 'hash-kTG0otRFWDywJamU', "Email", "9034@email.com");

CALL CreateEstudante('hash-b5sZFMLvuXvQZ0GV', 'hash-B8W1ua8dyAS2BWES', "Aluno #8011", "aluno8011@email.com", "SÃO BERNARDO DO CAMPO", "Licenciatura em Matemática", "Descrição", "(281) 288-2348", 0);
CALL NovoContato('hash-b5sZFMLvuXvQZ0GV', 'hash-B8W1ua8dyAS2BWES', "Reddit", "8011@reddit.com");

CALL CreateEstudante('hash-lT8ijTSokT9f8Yqr', 'hash-65tAxfoW9iZmCCDH', "Aluno #4070", "aluno4070@email.com", "SANTANA DE PARNAÍBA", "Bacharelado em Administração", "Descrição", "(323) 472-7130", 0);
CALL NovoContato('hash-lT8ijTSokT9f8Yqr', 'hash-65tAxfoW9iZmCCDH', "Reddit", "4070@reddit.com");
CALL NovoContato('hash-lT8ijTSokT9f8Yqr', 'hash-65tAxfoW9iZmCCDH', "LinkedIn", "4070@linkedin.com");

CALL CreateEstudante('hash-xNfm4o0EnBqTDa7a', 'hash-HlUZ5ZPCwVK7LoWk', "Aluno #7584", "aluno7584@email.com", "SANTO ANDRÉ - PREFEITURA", "Bacharelado em Ciência de Dados", "Descrição", "(731) 281-8885", 0);
CALL NovoContato('hash-xNfm4o0EnBqTDa7a', 'hash-HlUZ5ZPCwVK7LoWk', "Discord", "7584@discord.com");
CALL NovoContato('hash-xNfm4o0EnBqTDa7a', 'hash-HlUZ5ZPCwVK7LoWk', "Reddit", "7584@reddit.com");
CALL NovoContato('hash-xNfm4o0EnBqTDa7a', 'hash-HlUZ5ZPCwVK7LoWk', "LinkedIn", "7584@linkedin.com");

CALL CreateEstudante('hash-m2EYjE5kpkNKwfUb', 'hash-WHamZB2tjoeK3E9X', "Aluno #9873", "aluno9873@email.com", "SÃO CAETANO DO SUL - PREFEITURA", "Bacharelado em Tecnologia da Informação", "Descrição", "(540) 853-7743", 1);
CALL NovoContato('hash-m2EYjE5kpkNKwfUb', 'hash-WHamZB2tjoeK3E9X', "Reddit", "9873@reddit.com");

CALL CreateEstudante('hash-wdrwoa6ALFddojya', 'hash-mfkmFoewoJ4Tl52s', "Aluno #8173", "aluno8173@email.com", "SÃO LOURENÇO DA SERRA", "Curso Superior de Tecnologia em Gestão Pública", "Descrição", "(730) 461-7049", 1);
CALL NovoContato('hash-wdrwoa6ALFddojya', 'hash-mfkmFoewoJ4Tl52s', "Facebook", "8173@facebook.com");
CALL NovoContato('hash-wdrwoa6ALFddojya', 'hash-mfkmFoewoJ4Tl52s', "GitHub", "8173@github.com");

CALL CreateEstudante('hash-1rXTiaL2Omfg6MsV', 'hash-pEgFvCJcbt0gI8Bk', "Aluno #3089", "aluno3089@email.com", "SUZANO", "Engenharia de Computação", "Descrição", "(342) 703-4679", 0);
CALL NovoContato('hash-1rXTiaL2Omfg6MsV', 'hash-pEgFvCJcbt0gI8Bk', "Facebook", "3089@facebook.com");
CALL NovoContato('hash-1rXTiaL2Omfg6MsV', 'hash-pEgFvCJcbt0gI8Bk', "Instagram", "3089@instagram.com");

CALL CreateEstudante('hash-yvWZPs6uFl9b6IBf', 'hash-TiCTBxYxYWHLKxAT', "Aluno #3410", "aluno3410@email.com", "VARGEM GRANDE PAULISTA", "Engenharia de Produção", "Descrição", "(530) 766-8466", 1);
CALL NovoContato('hash-yvWZPs6uFl9b6IBf', 'hash-TiCTBxYxYWHLKxAT', "Reddit", "3410@reddit.com");
CALL NovoContato('hash-yvWZPs6uFl9b6IBf', 'hash-TiCTBxYxYWHLKxAT', "GitHub", "3410@github.com");
CALL NovoContato('hash-yvWZPs6uFl9b6IBf', 'hash-TiCTBxYxYWHLKxAT', "Email", "3410@email.com");
CALL NovoContato('hash-yvWZPs6uFl9b6IBf', 'hash-TiCTBxYxYWHLKxAT', "Discord", "3410@discord.com");

CALL CreateEstudante('hash-5B3PzuznrmfH5HFB', 'hash-woFQjFBXM7IAXFyz', "Aluno #0797", "aluno0797@email.com", "GUARULHOS", "Letras - Habilitação em Língua Portuguesa", "Descrição", "(345) 354-8589", 0);
CALL NovoContato('hash-5B3PzuznrmfH5HFB', 'hash-woFQjFBXM7IAXFyz', "Email", "0797@email.com");

CALL CreateEstudante('hash-KbubR0loSrSHhd5x', 'hash-We6ChwhqRAENRmGE', "Aluno #4005", "aluno4005@email.com", "SÃO BERNARDO DO CAMPO", "Licenciatura em Matemática", "Descrição", "(281) 288-2348", 0);
CALL NovoContato('hash-KbubR0loSrSHhd5x', 'hash-We6ChwhqRAENRmGE', "Reddit", "4005@reddit.com");
