##########################################################################
# O IMPACTO DA CIÊNCIA POLÍTICA BRASILEIRA:                             ##
# USP, UFMG, UERJ, UNB, UFPE e UFPR em perspectiva comparada            ##
# Autores: Dalson Figueiredo, Antônio Fernandes e Adriano Codato        ##
# data inicio do projeto: 25/10/2019                                    ##
##########################################################################


# instalação do pacote

install.packages("scholar")
install.packages("dplyr") 
library(scholar)

# criação das bases de dados
# cada Programa será criado como um objeto independente
# Em um segundo momento os objetos podem ser agrupados em uma mesma base de dados
# Para cada Programa regisramos apenas os professores com perfis públicos no Google Scholar
# Contabilizamos também uma lista nominal de professores que estão cadastrados em seus 
# respectivos Programas, mas que NÃO foram encontrados no Google Scholar

# Link de consulta do Google Scholar: <https://scholar.google.com.br>


# USP

dcp_usp<-c("7Kvw5toAAAAJ", "bJryLWkAAAAJ" , "6iSYJswAAAAJ", "tlwiziEAAAAJ", "hsaEpQUAAAAJ" , 
           "2dcI0kMAAAAJ" , "l-hSy10AAAAJ" , "DcQmbWsAAAAJ" , "I7GVLa8AAAAJ" , "Iqx1XNAAAAAJ" , 
           "KFsU6c8AAAAJ" , "k3SVIVgAAAAJ" , "W_FPOScAAAAJ" , "uIi_4L4AAAAJ", 
           "X3_PFbkAAAAJ" , "lt6I4XgAAAAJ" , "rxl8vgIAAAAJ" , "4zPk1MgAAAAJ" , 
           "3HjhZjgAAAAJ")

# Link de consulta: <http://dcp.fflch.usp.br/index.php/docentes/galeria-de-docentes>
# USP não encontrados: (Alváro de Vita,Fernando Haddad, Jonathan Phillips, Rurion Melo )

# UFMG

dcp_ufmg<- c("sbPS62wAAAAJ", "HrJ-Au0AAAAJ" , "iHe7zkIAAAAJ" , "KVNSqB0AAAAJ" , 
             "OPvlwkQAAAAJ" , "8XjwWyYAAAAJ" , "_yOa7dgAAAAJ" , "rj-m9ZQAAAAJ" , 
             "XOcGsOsAAAAJ" , "hWe1ZD0AAAAJ" , "wiORAQoAAAAJ" , "Uf5kUSgAAAAJ&hl" , 
             "_KkKGO4AAAAJ" , "b4LEwQ4AAAAJ" , "jTSctugAAAAJ" , "fsFEA0UAAAAJ" , 
             "_WPBoYcAAAAJ" , "qnUN3V8AAAAJ" , "c--RHNQAAAAJ")

# Link de consulta: ()
# UFMG não encontrados: ()


# UERJ (IESP)

dcp_iesp<- c("QTP2GYkAAAAJ" , "rLDWjXEAAAAJ" , "uzzWXcgAAAAJ" , "KpwJwkoAAAAJ", 
             "hXzvfn8AAAAJ" , "sYCxhi0AAAAJ" , "7GcVKv4AAAAJ" , "6wIwVIkAAAAJ" , 
             "YjERh-4AAAAJ")

# não encontrados: (CARLOS ROBERTO SANCHEZ MILANI, CRISTINA BUARQUE DE HOLLANDA, 
# FABIANO GUILHERME MENDES SANTOS, LETICIA PINHEIRO,MARIA REGINA SOARES DE LIMA, 
# SAN ROMANELLI ASSUMPÇÃO, THIAGO MOREIRA DA SILVA)

# link de consulta: <http://www.iesp.uerj.br/docentes-pol/>


# UNB_CP

dcp_unb_cp<- c("KZhWCqgAAAAJ&hl" , "jmwzGEEAAAAJ" , "HdaNB5cAAAAJ", "w50umI4AAAAJ" , 
               "ALGnEsMAAAAJ" , "7nxTikEAAAAJ" , "MHFmEnQAAAAJ" , "s6oXgzYAAAAJ" , 
               "ofieiCEAAAAJ" , "lQvqaxEAAAAJ" , "vKZl6xgAAAAJ")

# não encontrados: (Aninho Mucundramo Irachande, Antônio José Escobar Brussi, 
# Arnaldo Mauerberg Junior, Carlos Marcos Batista , Carlos Henrique Cardim, 
# Daniella Naves de Castro Rocha , Danusa Marques,Flávia Millena Biroli Tokarski,
# Graziela Dias Teixeira , José Alves Donizeth , Juarez de Souza , Marilde Loiola de Menezes
# Marisa Von Bülow , Pablo Holmes Chaves , Paola Novaes Ramos , Paulo Afonso Francisco de Carvalho, 
# Paulo César Nascimento , Rebecca Neaera Abers , Ricardo Wahrendorff Caldas , Terrie Ralph Groth)

# link de consulta: <http://www.ipol.unb.br/index.php?option=com_content&view=article&id=20&Itemid=694>


# UFPE

dcp_ufpe<-c("9r___MkAAAAJ" , "5XThm1wAAAAJ" , "Ux9W94sAAAAJ" , "w2z9rJAAAAAJ" , 
            "zPlw6UUAAAAJ" , "u2P5r8IAAAAJ" , "sBh35jUAAAAJ" , "ZZq5VaMAAAAJ" , 
            "w43z2UsAAAAJ" , "G0kb3UUAAAAJ" ,  "BRcwzMgAAAAJ" , "xsm4Z0QAAAAJ" , 
            "g2VumKkAAAAJ" , "iL-Bj88AAAAJ"  , "0SOJ1FcAAAAJ" , "dS9bbdMAAAAJ" , 
            "hyNbwn8AAAAJ", "zkKnrnMAAAAJ")


# Link de consulta: <http://dcp.fflch.usp.br/index.php/docentes/galeria-de-docentes>
# UFPE não encontrados:(Todos os professores têm cadastro no Google Scholar)

# UFPR

dcp_ufpr<- c("juuOLsYAAAAJ" , "bSEX7HgAAAAJ" , "iax0obgAAAAJ" , "5ZPZaboAAAAJ&hl", 
             "8fF1UVwAAAAJ" , "qT1WGu8AAAAJ" , "-VEH3XEAAAAJ" , "j62_dREAAAAJ" , 
             "PaQVrdcAAAAJ" , "3NLUREMAAAAJ" , "VYYKp68AAAAJ" , "22c2NPAAAAAJ" , 
             "nWUfpSEAAAAJ" , "D3FxbJYAAAAJ", "c8upp80AAAAJ" , "WVprGS8AAAAJ")

# Não encontrados: ()
# Link de consulta: <>

#################################################################################
# Depois de criar os objetos de cada programa, o próximo passo é
# extrair os dados de cada observação
# ps. o Google scholar não permite a extração de todos os casos ao mesmo tempo!
# Dessa forma, temos que extrair programa por programa
#################################################################################

# Extração dos dados

# USP

usp<-compare_scholars(dcp_usp)
View(usp)

usp_agg_a<-aggregate(cites~name, usp, sum)
View(usp_agg_a)

install.packages("xlsx")
library(xlsx)
write.xlsx(usp_agg_a, "C:/Users/Dalson/Desktop/Scholar/usp_agg_a.xlsx")

usp2<-compare_scholar_careers(dcp_usp)
View (usp2)

usp_agg_year<-aggregate(cites~year, usp2, sum)
View(usp_agg_year)

write.xlsx(usp_agg_year, "C:/Users/Dalson/Desktop/Scholar/usp_agg_year.xlsx")


# UFMG

ufmg<-compare_scholars(dcp_ufmg)
View(ufmg)

ufmg_agg_a<-aggregate(cites~name, ufmg, sum)
View(ufmg_agg_a)

write.xlsx(ufmg_agg_a, "C:/Users/Dalson/Desktop/Scholar/ufmg_agg_a.xlsx")

ufmg2<-compare_scholar_careers(dcp_ufmg)
View (ufmg2)

ufmg_agg_year<-aggregate(cites~year, ufmg2, sum)
View(ufmg_agg_year)

write.xlsx(ufmg_agg_year, "C:/Users/Dalson/Desktop/Scholar/ufmg_agg_year.xlsx")

# UERJ (IESP)

iesp<-compare_scholars(dcp_iesp)
View(iesp)

iesp_agg_a<-aggregate(cites~name, iesp, sum)
View(iesp_agg_a)

write.xlsx(iesp_agg_a, "C:/Users/Dalson/Desktop/Scholar/iesp_agg_a.xlsx")

iesp2<-compare_scholar_careers(dcp_iesp)
View (iesp2)

iesp_agg_year<-aggregate(cites~year, iesp2, sum)
View(iesp_agg_year)

write.xlsx(iesp_agg_year, "C:/Users/Dalson/Desktop/Scholar/iesp_agg_year.xlsx")

# UNB (CP)

unb_cp<-compare_scholars(dcp_unb_cp)
View(unb_cp)

unb_cp_agg_a<-aggregate(cites~name, unb_cp, sum)
View(unb_cp_agg_a)

write.xlsx(unb_cp_agg_a, "C:/Users/Dalson/Desktop/Scholar/unb_cp_agg_a.xlsx")

unb_cp2<-compare_scholar_careers(dcp_unb_cp)
View (unb_cp2)

unb_cp_agg_year<-aggregate(cites~year, unb_cp2, sum)
View(unb_cp_agg_year)

write.xlsx(unb_cp_agg_year, "C:/Users/Dalson/Desktop/Scholar/unb_cp_agg_year.xlsx")


# UFPE (CP)

ufpe<-compare_scholars(dcp_ufpe)
View(ufpe)

ufpe_agg_a<-aggregate(cites~name, ufpe, sum)
View(ufpe_agg_a)

write.xlsx(ufpe_agg_a, "C:/Users/Dalson/Desktop/Scholar/ufpe_agg_a.xlsx")

ufpe2<-compare_scholar_careers(dcp_ufpe)
View (ufpe2)

ufpe_agg_year<-aggregate(cites~year, ufpe2, sum)
View(ufpe_agg_year)

write.xlsx(ufpe_agg_year, "C:/Users/Dalson/Desktop/Scholar/ufpe_agg_year.xlsx")

# UFPR 

ufpr<-compare_scholars(dcp_ufpr)
View(ufpr)

ufpr_agg_a<-aggregate(cites~name, ufpr, sum)
View(ufpr_agg_a)

write.xlsx(ufpr_agg_a, "C:/Users/Dalson/Desktop/Scholar/ufpr_agg_a.xlsx")

ufpr2<-compare_scholar_careers(dcp_ufpr)
View (ufpr2)

ufpr_agg_year<-aggregate(cites~year, ufpr2, sum)
View(ufpr_agg_year)

write.xlsx(ufpr_agg_year, "C:/Users/Dalson/Desktop/Scholar/ufpr_agg_year.xlsx")

# Junção das bases de dados em um arquivo único


# Análise dos dados

mean(usp_agg_a$cites)
mean(ufmg_agg_a$cites)
mean(iesp_agg_a$cites)
mean(unb_cp_agg_a$cites)
mean(ufpe_agg_a$cites)
mean(ufpr_agg_a$cites)

todos<-rbind(usp_agg_a, ufmg_agg_a, iesp_agg_a, unb_cp_agg_a, ufpe_agg_a, ufpr_agg_a)
todos
write.xlsx(todos, "C:/Users/Dalson/Desktop/Scholar/todos.xlsx")


# Extração dos perfis completos de cada ID
# Para cada instituição iremos extrair as informaçãoes de cada professor
# depois disso, os dados serão consolidados em formato de data.frame
# Na matriz, além do número de citações, teremos também o índice H de cada ID


# USP

dcp_usp<-c("7Kvw5toAAAAJ", "bJryLWkAAAAJ" , "6iSYJswAAAAJ", "tlwiziEAAAAJ", "hsaEpQUAAAAJ" , 
           "2dcI0kMAAAAJ" , "l-hSy10AAAAJ" , "DcQmbWsAAAAJ" , "I7GVLa8AAAAJ" , "Iqx1XNAAAAAJ" , 
           "KFsU6c8AAAAJ" , "k3SVIVgAAAAJ" , "W_FPOScAAAAJ" , "uIi_4L4AAAAJ", 
           "X3_PFbkAAAAJ" , "lt6I4XgAAAAJ" , "rxl8vgIAAAAJ" , "4zPk1MgAAAAJ" , 
           "3HjhZjgAAAAJ")

dcp_usp2<-lapply(dcp_usp, get_profile)
dcp_usp_df<-data.frame(data.frame(sapply(dcp_usp2, c)))

x = data.frame(dcp_usp_df)

write.txt(dcp_usp_df, 'dcp_usp_df.csv', row.names = F)

write.table(x, 'dcp_usp_df.csv', append = FALSE, sep = ",", dec = ".",
            row.names = FALSE, col.names = TRUE)

View(dcp_usp_df)

teste<-get_profile("7Kvw5toAAAAJ")
teste

