/*==============================================================*/
/* DBMS name:      PostgreSQL 9.x                               */
/* Created on:     05/11/2016 19:36:50                          */
/*==============================================================*/


drop index UTA_FK;

drop index ACESSOUSUARIO_PK;

drop table ACESSOUSUARIO;

drop index AGENDAMENTOS_PK;

drop table AGENDAMENTOS;

drop index ATENDIMENTOS_PK;

drop table ATENDIMENTOS;

drop index UTF_FK;

drop index UTE_FK;

drop index CADASTROUSUARIO_PK;

drop table CADASTROUSUARIO;

drop index DIAGNOSTICOPACIENTE_PK;

drop table DIAGNOSTICOPACIENTE;

drop index UDA_FK;

drop index DISPONIBILIZAATENDIMENTO_PK;

drop table DISPONIBILIZAATENDIMENTO;

drop index ESCOLARIDADE_PK;

drop table ESCOLARIDADE;

drop index FUNCOESPROFISSIONAIS_PK;

drop table FUNCOESPROFISSIONAIS;

drop index PFD_FK;

drop index AGD_FK;

drop index GERADIAGNOSTICO_PK;

drop table GERADIAGNOSTICO;

drop index PGR_FK;

drop index RDG_FK;

drop index GERARECEITA_PK;

drop table GERARECEITA;

drop index UPSP_FK;

drop index PACIENTE_PK;

drop table PACIENTE;

drop index PTC_FK;

drop index PTC_II_FK;

drop index POSSUICADASTRO_PK;

drop table POSSUICADASTRO;

drop index GP_FK;

drop index POSSUIPRONTUARIO_PK;

drop table POSSUIPRONTUARIO;

drop index UPS_FK;

drop index PROFISSIONALSAUDE_PK;

drop table PROFISSIONALSAUDE;

drop index PRONTUARIO_PK;

drop table PRONTUARIO;

drop index PFA_FK;

drop index REALIZAAGENDAMENTO_PK;

drop table REALIZAAGENDAMENTO;

drop index AR_II_FK;

drop index REALIZAATENDIMENTOS_PK;

drop table REALIZAATENDIMENTOS;

drop index AR_III_FK;

drop index RECEBEATENDIMENTO_PK;

drop table RECEBEATENDIMENTO;

drop index RECEITAPACIENTE_PK;

drop table RECEITAPACIENTE;

drop index UNIDBASICASAUDE_PK;

drop table UNIDBASICASAUDE;

drop index PVPP_FK;

drop index VERIFICAPRONTUARIO_PK;

drop table VERIFICAPRONTUARIO;

/*==============================================================*/
/* Table: ACESSOUSUARIO                                         */
/*==============================================================*/
create table ACESSOUSUARIO (
   ID                   INT4                 not null,
   NOME_USUARIO         VARCHAR(20)          null,
   SENHA_USUARIO        VARCHAR(20)          null,
   TIPO_USUARIO         VARCHAR(10)          null,
   DATA_CADASTRO        DATE                 null,
   ID_CAD_USUARIO       INT4                 null,
   constraint PK_ACESSOUSUARIO primary key (ID)
);

/*==============================================================*/
/* Index: ACESSOUSUARIO_PK                                      */
/*==============================================================*/
create unique index ACESSOUSUARIO_PK on ACESSOUSUARIO (
ID
);

/*==============================================================*/
/* Index: UTA_FK                                                */
/*==============================================================*/
create  index UTA_FK on ACESSOUSUARIO (
ID_CAD_USUARIO
);

/*==============================================================*/
/* Table: AGENDAMENTOS                                          */
/*==============================================================*/
create table AGENDAMENTOS (
   ID                   INT4                 not null,
   DATA_CADASTRO        DATE                 not null,
   DATA_ATENDIMENTO     DATE                 not null,
   UF                   VARCHAR(2)           null,
   CIDADE               VARCHAR(100)         null,
   ORDENAMENTO_ATENDIMENTO INT4                 null,
   constraint PK_AGENDAMENTOS primary key (ID)
);

/*==============================================================*/
/* Index: AGENDAMENTOS_PK                                       */
/*==============================================================*/
create unique index AGENDAMENTOS_PK on AGENDAMENTOS (
ID
);

/*==============================================================*/
/* Table: ATENDIMENTOS                                          */
/*==============================================================*/
create table ATENDIMENTOS (
   ID                   INT4                 not null,
   DATA_CADASTRO        DATE                 not null,
   DATA_RETORNO         DATE                 not null,
   constraint PK_ATENDIMENTOS primary key (ID)
);

/*==============================================================*/
/* Index: ATENDIMENTOS_PK                                       */
/*==============================================================*/
create unique index ATENDIMENTOS_PK on ATENDIMENTOS (
ID
);

/*==============================================================*/
/* Table: CADASTROUSUARIO                                       */
/*==============================================================*/
create table CADASTROUSUARIO (
   ID                   INT4                 not null,
   FUN_ID               INT4                 null,
   ESC_ID               INT4                 not null,
   NOME_COMPLETO        VARCHAR(200)         null,
   DATA_NASCIMENTO      DATE                 null,
   DATA_CADASTRO        DATE                 null,
   SEXO                 CHAR(2)              null,
   EMAIL                VARCHAR(200)         null,
   LOGRADOURO           VARCHAR(1000)        null,
   UF                   CHAR(2)              null,
   CIDADE               CHAR(100)            null,
   TIPO_USUARIO         CHAR(2)              null,
   RACA                 VARCHAR(50)          null,
   RG                   VARCHAR(50)          null,
   CPF                  VARCHAR(11)          null,
   TIPO_SANGUINEO       VARCHAR(10)          null,
   constraint PK_CADASTROUSUARIO primary key (ID)
);

/*==============================================================*/
/* Index: CADASTROUSUARIO_PK                                    */
/*==============================================================*/
create unique index CADASTROUSUARIO_PK on CADASTROUSUARIO (
ID
);

/*==============================================================*/
/* Index: UTE_FK                                                */
/*==============================================================*/
create  index UTE_FK on CADASTROUSUARIO (
ESC_ID
);

/*==============================================================*/
/* Index: UTF_FK                                                */
/*==============================================================*/
create  index UTF_FK on CADASTROUSUARIO (
FUN_ID
);

/*==============================================================*/
/* Table: DIAGNOSTICOPACIENTE                                   */
/*==============================================================*/
create table DIAGNOSTICOPACIENTE (
   ID                   INT4                 not null,
   DATA_DIAGNOSTICO     DATE                 not null,
   CID                  INT4                 not null,
   CIAPS                INT4                 null,
   DESCRICAO_PROFISSIONAL VARCHAR(1)           not null,
   OBS_PROFISSIONAL     VARCHAR(1)           null,
   constraint PK_DIAGNOSTICOPACIENTE primary key (ID)
);

/*==============================================================*/
/* Index: DIAGNOSTICOPACIENTE_PK                                */
/*==============================================================*/
create unique index DIAGNOSTICOPACIENTE_PK on DIAGNOSTICOPACIENTE (
ID
);

/*==============================================================*/
/* Table: DISPONIBILIZAATENDIMENTO                              */
/*==============================================================*/
create table DISPONIBILIZAATENDIMENTO (
   ID                   INT4                 not null,
   ID_ATENDIMENTO       INT4                 null,
   ID_UBS               INT4                 null,
   constraint PK_DISPONIBILIZAATENDIMENTO primary key (ID)
);

/*==============================================================*/
/* Index: DISPONIBILIZAATENDIMENTO_PK                           */
/*==============================================================*/
create unique index DISPONIBILIZAATENDIMENTO_PK on DISPONIBILIZAATENDIMENTO (
ID
);

/*==============================================================*/
/* Index: UDA_FK                                                */
/*==============================================================*/
create  index UDA_FK on DISPONIBILIZAATENDIMENTO (
ID_UBS
);

/*==============================================================*/
/* Table: ESCOLARIDADE                                          */
/*==============================================================*/
create table ESCOLARIDADE (
   ID                   INT4                 not null,
   TITULO_ESCOLARIDADE  VARCHAR(100)         null,
   NIVEL_ESCOLARIDADE   INT4                 null,
   constraint PK_ESCOLARIDADE primary key (ID)
);

/*==============================================================*/
/* Index: ESCOLARIDADE_PK                                       */
/*==============================================================*/
create unique index ESCOLARIDADE_PK on ESCOLARIDADE (
ID
);

/*==============================================================*/
/* Table: FUNCOESPROFISSIONAIS                                  */
/*==============================================================*/
create table FUNCOESPROFISSIONAIS (
   ID                   INT4                 not null,
   FUNCAO               VARCHAR(100)         null,
   DESCRICAO            VARCHAR(1000)        null,
   constraint PK_FUNCOESPROFISSIONAIS primary key (ID)
);

/*==============================================================*/
/* Index: FUNCOESPROFISSIONAIS_PK                               */
/*==============================================================*/
create unique index FUNCOESPROFISSIONAIS_PK on FUNCOESPROFISSIONAIS (
ID
);

/*==============================================================*/
/* Table: GERADIAGNOSTICO                                       */
/*==============================================================*/
create table GERADIAGNOSTICO (
   ID                   INT4                 not null,
   ID_PROFISSIONAL_SAUDE INT4                 null,
   ID_DIAGNOSTICO_PACIENTE INT4                 null,
   ID_ATENDIMENTO       INT4                 null,
   constraint PK_GERADIAGNOSTICO primary key (ID)
);

/*==============================================================*/
/* Index: GERADIAGNOSTICO_PK                                    */
/*==============================================================*/
create unique index GERADIAGNOSTICO_PK on GERADIAGNOSTICO (
ID
);

/*==============================================================*/
/* Index: AGD_FK                                                */
/*==============================================================*/
create  index AGD_FK on GERADIAGNOSTICO (
ID_ATENDIMENTO
);

/*==============================================================*/
/* Index: PFD_FK                                                */
/*==============================================================*/
create  index PFD_FK on GERADIAGNOSTICO (
ID_PROFISSIONAL_SAUDE
);

/*==============================================================*/
/* Table: GERARECEITA                                           */
/*==============================================================*/
create table GERARECEITA (
   ID                   INT4                 not null,
   ID_RECEITA           INT4                 null,
   ID_PROFISSIONAL_SAUDE INT4                 null,
   ID_DIAGNOSTICO       INT4                 null,
   constraint PK_GERARECEITA primary key (ID)
);

/*==============================================================*/
/* Index: GERARECEITA_PK                                        */
/*==============================================================*/
create unique index GERARECEITA_PK on GERARECEITA (
ID
);

/*==============================================================*/
/* Index: RDG_FK                                                */
/*==============================================================*/
create  index RDG_FK on GERARECEITA (
ID_DIAGNOSTICO
);

/*==============================================================*/
/* Index: PGR_FK                                                */
/*==============================================================*/
create  index PGR_FK on GERARECEITA (
ID_PROFISSIONAL_SAUDE
);

/*==============================================================*/
/* Table: PACIENTE                                              */
/*==============================================================*/
create table PACIENTE (
   ID                   INT4                 not null,
   NUM_CARTAO_SUS       INT4                 not null,
   ID_USUARIO           INT4                 null,
   constraint PK_PACIENTE primary key (ID)
);

/*==============================================================*/
/* Index: PACIENTE_PK                                           */
/*==============================================================*/
create unique index PACIENTE_PK on PACIENTE (
ID
);

/*==============================================================*/
/* Index: UPSP_FK                                               */
/*==============================================================*/
create  index UPSP_FK on PACIENTE (
ID_USUARIO
);

/*==============================================================*/
/* Table: POSSUICADASTRO                                        */
/*==============================================================*/
create table POSSUICADASTRO (
   ID                   INT4                 not null,
   ID_PACIENTE          INT4                 null,
   ID_PROFISSIONAL_SAUDE INT4                 null,
   constraint PK_POSSUICADASTRO primary key (ID)
);

/*==============================================================*/
/* Index: POSSUICADASTRO_PK                                     */
/*==============================================================*/
create unique index POSSUICADASTRO_PK on POSSUICADASTRO (
ID
);

/*==============================================================*/
/* Index: PTC_II_FK                                             */
/*==============================================================*/
create  index PTC_II_FK on POSSUICADASTRO (
ID_PROFISSIONAL_SAUDE
);

/*==============================================================*/
/* Index: PTC_FK                                                */
/*==============================================================*/
create  index PTC_FK on POSSUICADASTRO (
ID_PACIENTE
);

/*==============================================================*/
/* Table: POSSUIPRONTUARIO                                      */
/*==============================================================*/
create table POSSUIPRONTUARIO (
   ID                   INT4                 not null,
   ID_PRONTUARIO        INT4                 null,
   ID_PACIENTE          INT4                 null,
   constraint PK_POSSUIPRONTUARIO primary key (ID)
);

/*==============================================================*/
/* Index: POSSUIPRONTUARIO_PK                                   */
/*==============================================================*/
create unique index POSSUIPRONTUARIO_PK on POSSUIPRONTUARIO (
ID
);

/*==============================================================*/
/* Index: GP_FK                                                 */
/*==============================================================*/
create  index GP_FK on POSSUIPRONTUARIO (
ID_PRONTUARIO
);

/*==============================================================*/
/* Table: PROFISSIONALSAUDE                                     */
/*==============================================================*/
create table PROFISSIONALSAUDE (
   ID                   INT4                 not null,
   DATA_CADASTRO        DATE                 null,
   CAD_CONSELHO_PROFISSIONAL INT4                 not null,
   ID_CAD_USUARIO       INT4                 null,
   constraint PK_PROFISSIONALSAUDE primary key (ID)
);

/*==============================================================*/
/* Index: PROFISSIONALSAUDE_PK                                  */
/*==============================================================*/
create unique index PROFISSIONALSAUDE_PK on PROFISSIONALSAUDE (
ID
);

/*==============================================================*/
/* Index: UPS_FK                                                */
/*==============================================================*/
create  index UPS_FK on PROFISSIONALSAUDE (
ID_CAD_USUARIO
);

/*==============================================================*/
/* Table: PRONTUARIO                                            */
/*==============================================================*/
create table PRONTUARIO (
   ID                   INT4                 not null,
   DATA_GERADO          DATE                 null,
   INFO_PACIENTE_ANTECEDENTES INT4                 null,
   EXAMES_REALIZADOS_HISTORICO VARCHAR(1)           null,
   ALERGIAS_RELATADAS   VARCHAR(1)           null,
   LIMITACOES_REMEDIOS  VARCHAR(1)           null,
   constraint PK_PRONTUARIO primary key (ID)
);

/*==============================================================*/
/* Index: PRONTUARIO_PK                                         */
/*==============================================================*/
create unique index PRONTUARIO_PK on PRONTUARIO (
ID
);

/*==============================================================*/
/* Table: REALIZAAGENDAMENTO                                    */
/*==============================================================*/
create table REALIZAAGENDAMENTO (
   ID                   INT4                 not null,
   ID_PACIENTE          INT4                 null,
   ID_AGENDAMENTO       INT4                 null,
   constraint PK_REALIZAAGENDAMENTO primary key (ID)
);

/*==============================================================*/
/* Index: REALIZAAGENDAMENTO_PK                                 */
/*==============================================================*/
create unique index REALIZAAGENDAMENTO_PK on REALIZAAGENDAMENTO (
ID
);

/*==============================================================*/
/* Index: PFA_FK                                                */
/*==============================================================*/
create  index PFA_FK on REALIZAAGENDAMENTO (
ID_PACIENTE
);

/*==============================================================*/
/* Table: REALIZAATENDIMENTOS                                   */
/*==============================================================*/
create table REALIZAATENDIMENTOS (
   ID                   INT4                 not null,
   ID_PROFISSIONAL_SAUDE INT4                 null,
   ID_ATENDIMENTO       INT4                 null,
   constraint PK_REALIZAATENDIMENTOS primary key (ID)
);

/*==============================================================*/
/* Index: REALIZAATENDIMENTOS_PK                                */
/*==============================================================*/
create unique index REALIZAATENDIMENTOS_PK on REALIZAATENDIMENTOS (
ID
);

/*==============================================================*/
/* Index: AR_II_FK                                              */
/*==============================================================*/
create  index AR_II_FK on REALIZAATENDIMENTOS (
ID_ATENDIMENTO
);

/*==============================================================*/
/* Table: RECEBEATENDIMENTO                                     */
/*==============================================================*/
create table RECEBEATENDIMENTO (
   ID                   INT4                 not null,
   ID_PACIENTE          INT4                 null,
   ID_ATENDIMENTO       INT4                 null,
   constraint PK_RECEBEATENDIMENTO primary key (ID)
);

/*==============================================================*/
/* Index: RECEBEATENDIMENTO_PK                                  */
/*==============================================================*/
create unique index RECEBEATENDIMENTO_PK on RECEBEATENDIMENTO (
ID
);

/*==============================================================*/
/* Index: AR_III_FK                                             */
/*==============================================================*/
create  index AR_III_FK on RECEBEATENDIMENTO (
ID_ATENDIMENTO
);

/*==============================================================*/
/* Table: RECEITAPACIENTE                                       */
/*==============================================================*/
create table RECEITAPACIENTE (
   ID                   INT4                 not null,
   DATA_CADASTRO        DATE                 null,
   REMEDIO_PRESCRITO    VARCHAR(1)           null,
   FREQUENCIA_USO       VARCHAR(50)          null,
   TIPO_REMEDIO         VARCHAR(200)         null,
   constraint PK_RECEITAPACIENTE primary key (ID)
);

/*==============================================================*/
/* Index: RECEITAPACIENTE_PK                                    */
/*==============================================================*/
create unique index RECEITAPACIENTE_PK on RECEITAPACIENTE (
ID
);

/*==============================================================*/
/* Table: UNIDBASICASAUDE                                       */
/*==============================================================*/
create table UNIDBASICASAUDE (
   ID                   INT4                 not null,
   NOME_ESTABELECIMENTO VARCHAR(200)         null,
   UF                   VARCHAR(2)           null,
   CIDADE               VARCHAR(50)          null,
   CNES                 INT4                 null,
   TIPO_ESTABELECIMENTO INT4                 null,
   constraint PK_UNIDBASICASAUDE primary key (ID)
);

/*==============================================================*/
/* Index: UNIDBASICASAUDE_PK                                    */
/*==============================================================*/
create unique index UNIDBASICASAUDE_PK on UNIDBASICASAUDE (
ID
);

/*==============================================================*/
/* Table: VERIFICAPRONTUARIO                                    */
/*==============================================================*/
create table VERIFICAPRONTUARIO (
   ID                   INT4                 not null,
   ID_PROFISSIONAL_SAUDE INT4                 null,
   ID_PRONTUARIO        INT4                 null,
   constraint PK_VERIFICAPRONTUARIO primary key (ID)
);

/*==============================================================*/
/* Index: VERIFICAPRONTUARIO_PK                                 */
/*==============================================================*/
create unique index VERIFICAPRONTUARIO_PK on VERIFICAPRONTUARIO (
ID
);

/*==============================================================*/
/* Index: PVPP_FK                                               */
/*==============================================================*/
create  index PVPP_FK on VERIFICAPRONTUARIO (
ID_PRONTUARIO
);

alter table ACESSOUSUARIO
   add constraint FK_ACESSOUS_UTA_CADASTRO foreign key (ID_CAD_USUARIO)
      references CADASTROUSUARIO (ID)
      on delete restrict on update restrict;

alter table CADASTROUSUARIO
   add constraint FK_CADASTRO_UTE_ESCOLARI foreign key (ESC_ID)
      references ESCOLARIDADE (ID)
      on delete restrict on update restrict;

alter table CADASTROUSUARIO
   add constraint FK_CADASTRO_UTF_FUNCOESP foreign key (FUN_ID)
      references FUNCOESPROFISSIONAIS (ID)
      on delete restrict on update restrict;

alter table DISPONIBILIZAATENDIMENTO
   add constraint FK_DISPONIB_AL_ATENDIME foreign key (ID_ATENDIMENTO)
      references ATENDIMENTOS (ID)
      on delete restrict on update restrict;

alter table DISPONIBILIZAATENDIMENTO
   add constraint FK_DISPONIB_UDA_UNIDBASI foreign key (ID_UBS)
      references UNIDBASICASAUDE (ID)
      on delete restrict on update restrict;

alter table GERADIAGNOSTICO
   add constraint FK_GERADIAG_AGD_ATENDIME foreign key (ID_ATENDIMENTO)
      references ATENDIMENTOS (ID)
      on delete restrict on update restrict;

alter table GERADIAGNOSTICO
   add constraint FK_GERADIAG_DPG_DIAGNOST foreign key (ID_DIAGNOSTICO_PACIENTE)
      references DIAGNOSTICOPACIENTE (ID)
      on delete restrict on update restrict;

alter table GERADIAGNOSTICO
   add constraint FK_GERADIAG_PFD_PROFISSI foreign key (ID_PROFISSIONAL_SAUDE)
      references PROFISSIONALSAUDE (ID)
      on delete restrict on update restrict;

alter table GERARECEITA
   add constraint FK_GERARECE_PGR_PROFISSI foreign key (ID_PROFISSIONAL_SAUDE)
      references PROFISSIONALSAUDE (ID)
      on delete restrict on update restrict;

alter table GERARECEITA
   add constraint FK_GERARECE_RDG_DIAGNOST foreign key (ID_DIAGNOSTICO)
      references DIAGNOSTICOPACIENTE (ID)
      on delete restrict on update restrict;

alter table GERARECEITA
   add constraint FK_GERARECE_RPG_RECEITAP foreign key (ID_RECEITA)
      references RECEITAPACIENTE (ID)
      on delete restrict on update restrict;

alter table PACIENTE
   add constraint FK_PACIENTE_UPSP_CADASTRO foreign key (ID_USUARIO)
      references CADASTROUSUARIO (ID)
      on delete restrict on update restrict;

alter table POSSUICADASTRO
   add constraint FK_POSSUICA_PTC_PACIENTE foreign key (ID_PACIENTE)
      references PACIENTE (ID)
      on delete restrict on update restrict;

alter table POSSUICADASTRO
   add constraint FK_POSSUICA_PTC_II_PROFISSI foreign key (ID_PROFISSIONAL_SAUDE)
      references PROFISSIONALSAUDE (ID)
      on delete restrict on update restrict;

alter table POSSUIPRONTUARIO
   add constraint FK_POSSUIPR_GP_PRONTUAR foreign key (ID_PRONTUARIO)
      references PRONTUARIO (ID)
      on delete restrict on update restrict;

alter table POSSUIPRONTUARIO
   add constraint FK_POSSUIPR_PPP_PACIENTE foreign key (ID_PACIENTE)
      references PACIENTE (ID)
      on delete restrict on update restrict;

alter table PROFISSIONALSAUDE
   add constraint FK_PROFISSI_UPS_CADASTRO foreign key (ID_CAD_USUARIO)
      references CADASTROUSUARIO (ID)
      on delete restrict on update restrict;

alter table REALIZAAGENDAMENTO
   add constraint FK_REALIZAA_AR_AGENDAME foreign key (ID_AGENDAMENTO)
      references AGENDAMENTOS (ID)
      on delete restrict on update restrict;

alter table REALIZAAGENDAMENTO
   add constraint FK_REALIZAA_PFA_PACIENTE foreign key (ID_PACIENTE)
      references PACIENTE (ID)
      on delete restrict on update restrict;

alter table REALIZAATENDIMENTOS
   add constraint FK_REALIZAA_AR_II_ATENDIME foreign key (ID_ATENDIMENTO)
      references ATENDIMENTOS (ID)
      on delete restrict on update restrict;

alter table REALIZAATENDIMENTOS
   add constraint FK_REALIZAA_PFA_II_PROFISSI foreign key (ID_PROFISSIONAL_SAUDE)
      references PROFISSIONALSAUDE (ID)
      on delete restrict on update restrict;

alter table RECEBEATENDIMENTO
   add constraint FK_RECEBEAT_AR_III_ATENDIME foreign key (ID_ATENDIMENTO)
      references ATENDIMENTOS (ID)
      on delete restrict on update restrict;

alter table RECEBEATENDIMENTO
   add constraint FK_RECEBEAT_PRA_PACIENTE foreign key (ID_PACIENTE)
      references PACIENTE (ID)
      on delete restrict on update restrict;

alter table VERIFICAPRONTUARIO
   add constraint FK_VERIFICA_PVP_PROFISSI foreign key (ID_PROFISSIONAL_SAUDE)
      references PROFISSIONALSAUDE (ID)
      on delete restrict on update restrict;

alter table VERIFICAPRONTUARIO
   add constraint FK_VERIFICA_PVPP_PRONTUAR foreign key (ID_PRONTUARIO)
      references PRONTUARIO (ID)
      on delete restrict on update restrict;

