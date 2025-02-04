CREATE TABLE [dbo].[area](
	[id_area] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[id_empresa] [int] NOT NULL,
	[id_area_padre] [bigint] NULL,
	[nivel] [int] NULL,
 CONSTRAINT [PK_area] PRIMARY KEY CLUSTERED 
(
	[id_area] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

CREATE TABLE [dbo].[codigo_ciiu](
	[id_codigo_ciiu] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](1000) NULL,
 CONSTRAINT [PK__codigo_c__D1F306F67956CA09] PRIMARY KEY CLUSTERED 
(
	[id_codigo_ciiu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

CREATE TABLE [dbo].[departamento](
	[id_departamento] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_departamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

CREATE TABLE [dbo].[division](
	[id_division] [int] IDENTITY(1,1) NOT NULL,
	[id_codigo_ciiu] [int] NULL,
	[nombre] [varchar](500) NULL,
 CONSTRAINT [PK_division] PRIMARY KEY CLUSTERED 
(
	[id_division] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

CREATE TABLE [dbo].[empresa](
	[id_empresa] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[id_codigo_ciiu] [int] NOT NULL,
	[id_division] [int] NULL,
	[id_item_division] [int] NULL,
	[codigo] [varchar](50) NULL,
	[nit] [varchar](50) NULL,
	[direccion] [varchar](200) NULL,
	[id_departamento] [int] NULL,
	[id_municipio] [int] NULL,
	[email] [varchar](100) NULL,
	[representante] [varchar](100) NULL,
	[movil] [varchar](50) NULL,
	[fijo] [varchar](50) NULL,
	[logo_url] [varchar](100) NULL,
 CONSTRAINT [PK_empresa] PRIMARY KEY CLUSTERED 
(
	[id_empresa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

CREATE TABLE [dbo].[Estatus](
	[id_estatus] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[descripcion] [varchar](100) NULL,
	[fecha_creacion] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_estatus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

CREATE TABLE [dbo].[Horario](
	[id_horario] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[fecha_inicio] [varchar](50) NULL,
	[fecha_fin] [varchar](50) NULL,
	[id_empresa] [int] NULL,
	[fecha_creacion] [datetime] NULL,
 CONSTRAINT [PK__Horario__C5836D693F439D7E] PRIMARY KEY CLUSTERED 
(
	[id_horario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

CREATE TABLE [dbo].[items_division](
	[id_items_division] [int] IDENTITY(1,1) NOT NULL,
	[id_division] [int] NULL,
	[nombre] [varchar](500) NULL,
 CONSTRAINT [PK_items_division] PRIMARY KEY CLUSTERED 
(
	[id_items_division] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

CREATE TABLE [dbo].[municipio](
	[id_municipio] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[id_departamento] [int] NOT NULL,
 CONSTRAINT [PK_municipio] PRIMARY KEY CLUSTERED 
(
	[id_municipio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

CREATE TABLE [dbo].[resultado](
	[id_resultado] [int] IDENTITY(1,1) NOT NULL,
	[id_usuario] [int] NOT NULL,
 CONSTRAINT [PK_resultado] PRIMARY KEY CLUSTERED 
(
	[id_resultado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

CREATE TABLE [dbo].[rol](
	[id_rol] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[id_rol_sistema] [int] NOT NULL,
 CONSTRAINT [PK_rol] PRIMARY KEY CLUSTERED 
(
	[id_rol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

CREATE TABLE [dbo].[rol_sistema](
	[id_rol_sistema] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_rol_sistema] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

CREATE TABLE [dbo].[trabajador](
	[id_trabajador] [int] IDENTITY(1,1) NOT NULL,
	[cedula] [varchar](15) NULL,
	[primer_nombre] [varchar](50) NULL,
	[segundo_nombre] [varchar](50) NULL,
	[primer_apellido] [varchar](50) NULL,
	[segundo_apellido] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[fecha_nacimiento] [date] NULL,
	[edo_civil] [varchar](20) NULL,
	[sexo] [varchar](10) NULL,
	[foto] [varchar](100) NULL,
	[telefono_casa] [varchar](15) NULL,
	[telefono_movil] [varchar](15) NULL,
	[activo] [int] NULL,
	[fecha_registro] [date] NULL,
	[eps] [varchar](50) NULL,
	[direccion] [varchar](100) NULL,
	[id_municipio] [int] NOT NULL,
	[id_empresa] [int] NULL,
	[id_puesto_trabajo] [int] NULL,
	[id_departamento] [int] NULL,
	[es_discapacitado] [varchar](4) NULL,
	[desc_discapacidad] [varchar](200) NULL,
	[id_horario] [int] NULL,
	[id_area] [int] NULL,
	[id_estatus_actual] [int] NULL,
 CONSTRAINT [PK_trabajador] PRIMARY KEY CLUSTERED 
(
	[id_trabajador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

CREATE TABLE [dbo].[Trabajador_Estatus](
	[id_trabajador_estatus] [int] IDENTITY(1,1) NOT NULL,
	[id_estatus] [int] NULL,
	[id_trabajador] [int] NULL,
	[fecha_registro] [datetime] NULL,
	[motivo] [varchar](300) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_trabajador_estatus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

CREATE TABLE [dbo].[Usuario](
	[id_usuario] [int] IDENTITY(1,1) NOT NULL,
	[login] [varchar](50) NULL,
	[clave] [varchar](50) NULL,
	[id_empresa] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

CREATE TABLE [dbo].[usuario_rol](
	[id_usuario_rol] [int] IDENTITY(1,1) NOT NULL,
	[id_usuario] [int] NOT NULL,
	[id_rol] [int] NOT NULL
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[area]  WITH CHECK ADD  CONSTRAINT [FK_area_empresa] FOREIGN KEY([id_empresa])
REFERENCES [dbo].[empresa] ([id_empresa])
GO
ALTER TABLE [dbo].[area] CHECK CONSTRAINT [FK_area_empresa]
GO
ALTER TABLE [dbo].[division]  WITH CHECK ADD  CONSTRAINT [FK_division_codigo_ciiu] FOREIGN KEY([id_codigo_ciiu])
REFERENCES [dbo].[codigo_ciiu] ([id_codigo_ciiu])
GO
ALTER TABLE [dbo].[division] CHECK CONSTRAINT [FK_division_codigo_ciiu]
GO
ALTER TABLE [dbo].[empresa]  WITH CHECK ADD  CONSTRAINT [FK__empresa__id_depa__29572725] FOREIGN KEY([id_departamento])
REFERENCES [dbo].[departamento] ([id_departamento])
GO
ALTER TABLE [dbo].[empresa] CHECK CONSTRAINT [FK__empresa__id_depa__29572725]
GO
ALTER TABLE [dbo].[empresa]  WITH CHECK ADD  CONSTRAINT [FK__empresa__id_depa__52593CB8] FOREIGN KEY([id_departamento])
REFERENCES [dbo].[departamento] ([id_departamento])
GO
ALTER TABLE [dbo].[empresa] CHECK CONSTRAINT [FK__empresa__id_depa__52593CB8]
GO
ALTER TABLE [dbo].[empresa]  WITH CHECK ADD  CONSTRAINT [FK__empresa__id_muni__2A4B4B5E] FOREIGN KEY([id_municipio])
REFERENCES [dbo].[municipio] ([id_municipio])
GO
ALTER TABLE [dbo].[empresa] CHECK CONSTRAINT [FK__empresa__id_muni__2A4B4B5E]
GO
ALTER TABLE [dbo].[empresa]  WITH CHECK ADD  CONSTRAINT [FK__empresa__id_muni__534D60F1] FOREIGN KEY([id_municipio])
REFERENCES [dbo].[municipio] ([id_municipio])
GO
ALTER TABLE [dbo].[empresa] CHECK CONSTRAINT [FK__empresa__id_muni__534D60F1]
GO
ALTER TABLE [dbo].[empresa]  WITH CHECK ADD  CONSTRAINT [FK_empresa_codigo_ciiu] FOREIGN KEY([id_codigo_ciiu])
REFERENCES [dbo].[codigo_ciiu] ([id_codigo_ciiu])
GO
ALTER TABLE [dbo].[empresa] CHECK CONSTRAINT [FK_empresa_codigo_ciiu]
GO
ALTER TABLE [dbo].[Horario]  WITH CHECK ADD  CONSTRAINT [FK__Horario__id_empr__2C3393D0] FOREIGN KEY([id_empresa])
REFERENCES [dbo].[empresa] ([id_empresa])
GO
ALTER TABLE [dbo].[Horario] CHECK CONSTRAINT [FK__Horario__id_empr__2C3393D0]
GO
ALTER TABLE [dbo].[Horario]  WITH CHECK ADD  CONSTRAINT [FK__Horario__id_empr__5441852A] FOREIGN KEY([id_empresa])
REFERENCES [dbo].[empresa] ([id_empresa])
GO
ALTER TABLE [dbo].[Horario] CHECK CONSTRAINT [FK__Horario__id_empr__5441852A]
GO
ALTER TABLE [dbo].[items_division]  WITH CHECK ADD  CONSTRAINT [FK_items_division_division] FOREIGN KEY([id_division])
REFERENCES [dbo].[division] ([id_division])
GO
ALTER TABLE [dbo].[items_division] CHECK CONSTRAINT [FK_items_division_division]
GO
ALTER TABLE [dbo].[municipio]  WITH CHECK ADD  CONSTRAINT [FK_municipio_departamento] FOREIGN KEY([id_departamento])
REFERENCES [dbo].[departamento] ([id_departamento])
GO
ALTER TABLE [dbo].[municipio] CHECK CONSTRAINT [FK_municipio_departamento]
GO
ALTER TABLE [dbo].[resultado]  WITH CHECK ADD  CONSTRAINT [FK_resultado_Usuario] FOREIGN KEY([id_usuario])
REFERENCES [dbo].[Usuario] ([id_usuario])
GO
ALTER TABLE [dbo].[resultado] CHECK CONSTRAINT [FK_resultado_Usuario]
GO
ALTER TABLE [dbo].[rol]  WITH CHECK ADD  CONSTRAINT [FK_rol_rol_sistema] FOREIGN KEY([id_rol_sistema])
REFERENCES [dbo].[rol_sistema] ([id_rol_sistema])
GO
ALTER TABLE [dbo].[rol] CHECK CONSTRAINT [FK_rol_rol_sistema]
GO
ALTER TABLE [dbo].[trabajador]  WITH CHECK ADD FOREIGN KEY([id_area])
REFERENCES [dbo].[area] ([id_area])
GO
ALTER TABLE [dbo].[trabajador]  WITH CHECK ADD FOREIGN KEY([id_area])
REFERENCES [dbo].[area] ([id_area])
GO
ALTER TABLE [dbo].[trabajador]  WITH CHECK ADD FOREIGN KEY([id_departamento])
REFERENCES [dbo].[departamento] ([id_departamento])
GO
ALTER TABLE [dbo].[trabajador]  WITH CHECK ADD FOREIGN KEY([id_departamento])
REFERENCES [dbo].[departamento] ([id_departamento])
GO
ALTER TABLE [dbo].[trabajador]  WITH CHECK ADD  CONSTRAINT [FK__trabajado__id_em__31EC6D26] FOREIGN KEY([id_empresa])
REFERENCES [dbo].[empresa] ([id_empresa])
GO
ALTER TABLE [dbo].[trabajador] CHECK CONSTRAINT [FK__trabajado__id_em__31EC6D26]
GO
ALTER TABLE [dbo].[trabajador]  WITH CHECK ADD  CONSTRAINT [FK__trabajado__id_em__571DF1D5] FOREIGN KEY([id_empresa])
REFERENCES [dbo].[empresa] ([id_empresa])
GO
ALTER TABLE [dbo].[trabajador] CHECK CONSTRAINT [FK__trabajado__id_em__571DF1D5]
GO
ALTER TABLE [dbo].[trabajador]  WITH CHECK ADD  CONSTRAINT [FK_trabajador_municipio] FOREIGN KEY([id_municipio])
REFERENCES [dbo].[municipio] ([id_municipio])
GO
ALTER TABLE [dbo].[trabajador] CHECK CONSTRAINT [FK_trabajador_municipio]
GO
ALTER TABLE [dbo].[Trabajador_Estatus]  WITH CHECK ADD FOREIGN KEY([id_estatus])
REFERENCES [dbo].[Estatus] ([id_estatus])
GO
ALTER TABLE [dbo].[Trabajador_Estatus]  WITH CHECK ADD FOREIGN KEY([id_estatus])
REFERENCES [dbo].[Estatus] ([id_estatus])
GO
ALTER TABLE [dbo].[usuario_rol]  WITH CHECK ADD  CONSTRAINT [FK_usuario_rol_rol] FOREIGN KEY([id_rol])
REFERENCES [dbo].[rol] ([id_rol])
GO
ALTER TABLE [dbo].[usuario_rol] CHECK CONSTRAINT [FK_usuario_rol_rol]
GO
ALTER TABLE [dbo].[usuario_rol]  WITH CHECK ADD  CONSTRAINT [FK_usuario_rol_Usuario] FOREIGN KEY([id_usuario])
REFERENCES [dbo].[Usuario] ([id_usuario])
GO
ALTER TABLE [dbo].[usuario_rol] CHECK CONSTRAINT [FK_usuario_rol_Usuario]
GO
/****** Object:  StoredProcedure [dbo].[CargarGrid]    Script Date: 22/08/2016 16:30:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CargarGrid]
	@tabla AS VARCHAR(50)

AS
BEGIN
	IF @tabla = 'Municipio'
		SELECT 
		MN.id_municipio as id_municipio,
		MN.nombre as nombre,
		MN.id_departamento as id_departamento,
        (SELECT nombre FROM departamento DP WHERE DP.id_departamento = MN.id_departamento) as departamento
		FROM municipio MN
		
	IF @tabla = 'Departamento'
		SELECT id_departamento, nombre FROM Departamento

	IF @tabla = 'Codigo'
		SELECT id_codigo_ciiu, nombre FROM codigo_ciiu 

	IF @tabla = 'Empresa'
		SELECT *,empresa.nombre as nombreemp 
		FROM codigo_ciiu INNER JOIN empresa ON codigo_ciiu.id_codigo_ciiu = empresa.id_codigo_ciiu
END

GO
/****** Object:  StoredProcedure [dbo].[CargarGrid_6]    Script Date: 22/08/2016 16:30:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CargarGrid_6]
    @tabla AS VARCHAR(50),
	@parametro1 AS VARCHAR(50),
	@parametro2 AS VARCHAR(50),
	@parametro3 AS VARCHAR(50),
	@parametro4 AS VARCHAR(50),
	@parametro5 AS VARCHAR(50),
	@parametro6 AS VARCHAR(50)
AS
BEGIN

	IF @tabla = 'Area_Rol1_General'
	BEGIN
		SELECT
			(SELECT COUNT (*)  FROM trabajador WHERE trabajador.id_area = area.id_area) as NumTrab ,
			area.id_area as id_area,
			area.id_area_padre,
			area.nombre AS Nombre_Area,
			empresa.nombre as empresa,
			empresa.id_empresa as id_empresa,
			CASE 
				WHEN area.id_area_padre = 0 
				THEN 'Ninguno' 
				ELSE(select a.nombre from area a where a.id_area = area.id_area_padre)  
			END Area_Padre,  
			CASE 
				WHEN area.nivel = 1 
				THEN area.nombre  
				ELSE '---'  
			END nivel1,  
			CASE 
				WHEN area.nivel = 2 
				THEN area.nombre  
				ELSE '---'
			END nivel2,  
			CASE 
				WHEN area.nivel = 3 
				THEN area.nombre  
				ELSE '---'
			END nivel3,  
			CASE 
				WHEN area.nivel = 4 
				THEN area.nombre  
				ELSE '---'
			END nivel4  
			FROM empresa INNER JOIN  area ON empresa.id_empresa = area.id_empresa 
	END

	IF @tabla = 'Area_Rol1_filtro'
	BEGIN
		IF @parametro2 = ''
		BEGIN
			SET @parametro2 = 'empresa.id_empresa';
		END

		SELECT
			(SELECT COUNT (*)  FROM trabajador WHERE trabajador.id_area = area.id_area) as NumTrab ,
			area.id_area as id_area,
			area.id_area_padre,
			area.nombre AS Nombre_Area,
			empresa.nombre as empresa,
			empresa.id_empresa as id_empresa,
			CASE 
				WHEN area.id_area_padre = 0 
				THEN 'Ninguno' 
				ELSE(select a.nombre from area a where a.id_area = area.id_area_padre)  
			END Area_Padre,  
			CASE 
				WHEN area.nivel = 1 
				THEN area.nombre  
				ELSE '---'  
			END nivel1,  
			CASE 
				WHEN area.nivel = 2 
				THEN area.nombre  
				ELSE '---'
			END nivel2,  
			CASE 
				WHEN area.nivel = 3 
				THEN area.nombre  
				ELSE '---'
			END nivel3,  
			CASE 
				WHEN area.nivel = 4 
				THEN area.nombre  
				ELSE '---'
			END nivel4  
			FROM empresa INNER JOIN  area ON empresa.id_empresa = area.id_empresa 
			WHERE area.id_empresa = @parametro2

	END



END

GO
/****** Object:  StoredProcedure [dbo].[CargarLista]    Script Date: 22/08/2016 16:30:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CargarLista]
	@tabla as  VARCHAR(50),
	@idtabla as  VARCHAR(50)
AS
BEGIN

	IF @tabla = 'trabajador'
	EXEC('SELECT '+@idtabla+' as VAL, (primer_nombre'+' '+'primer_apellido) as TXT FROM '+@tabla)

	IF @tabla = 'McpioDpto'
	SELECT id_municipio as VAL,nombre as TXT FROM municipio WHERE id_departamento = @idtabla

	IF @tabla = 'Nivel4'
	EXEC('SELECT '+@idtabla+' as VAL, nombre as TXT FROM '+@idtabla+' WHERE nivel < 4')	
		
	IF @tabla = 'AreaEmpresa'
	SELECT id_area as VAL, nombre as TXT FROM Area WHERE id_empresa = @idtabla

	ELSE 
	EXEC('SELECT '+@idtabla+' as VAL, nombre as TXT FROM '+@tabla)
	
	
END

GO
/****** Object:  StoredProcedure [dbo].[ConsultarTabla1]    Script Date: 22/08/2016 16:30:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ConsultarTabla1]
	@Tabla as VARCHAR(50),
	@Parametro as VARCHAR(50)

AS
BEGIN
	IF @Tabla = 'empresa'
		SELECT * FROM empresa WHERE id_empresa = @Parametro
END

GO
/****** Object:  StoredProcedure [dbo].[CRUD_Area]    Script Date: 22/08/2016 16:30:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CRUD_Area]
	@Operacion as VARCHAR(50),
	@id_area as VARCHAR(50),
	@nombre as VARCHAR(50),
	@id_empresa as VARCHAR(50),
	@id_area_padre as VARCHAR(50),
	@nivel as VARCHAR(50)
AS
BEGIN
	IF @Operacion = 'view_Nivel'
		SELECT nivel FROM area WHERE id_area = @id_area

	IF @Operacion = 'Add'
		INSERT INTO area (nombre, id_empresa, id_area_padre,nivel) 
		VALUES (@nombre, @id_empresa, @id_area_padre, @nivel)

	IF @Operacion = 'Edit'
		UPDATE area SET 
		nombre = @nombre,
		id_empresa = @id_empresa,
		id_area_padre = @id_area_padre,
		nivel = @nivel
		WHERE id_area = @id_area

	IF @Operacion = 'Delete'
		DELETE FROM area WHERE id_area = @id_area
END

GO
/****** Object:  StoredProcedure [dbo].[CRUD_Codigo_Ciiu]    Script Date: 22/08/2016 16:30:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CRUD_Codigo_Ciiu]
	@Operacion as VARCHAR(50),
	@nombre as VARCHAR(50),
	@id_codigo_ciiu as VARCHAR(50)
AS
BEGIN
	IF @Operacion = 'Add'
		INSERT INTO codigo_ciiu (nombre) 
		VALUES (@nombre)
	IF @Operacion = 'Edit'
		UPDATE codigo_ciiu SET 
		nombre = @nombre
		WHERE id_codigo_ciiu = @id_codigo_ciiu
	IF @Operacion = 'Delete'
		DELETE FROM codigo_ciiu WHERE id_codigo_ciiu = @id_codigo_ciiu

END

GO
/****** Object:  StoredProcedure [dbo].[CRUD_Departamento]    Script Date: 22/08/2016 16:30:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CRUD_Departamento]
	@Operacion as VARCHAR(50),
	@nombre as VARCHAR(50),
	@id_departamento as VARCHAR(50)
AS
BEGIN
	IF @Operacion = 'View'
		SELECT nombre FROM departamento WHERE id_departamento = @id_departamento
	IF @Operacion = 'Add'
		INSERT INTO departamento (nombre) 
		VALUES (@nombre)
	IF @Operacion = 'Edit'
		UPDATE departamento SET 
		nombre = @nombre
		WHERE id_departamento = @id_departamento
	IF @Operacion = 'Delete'
		DELETE FROM Departamento WHERE id_departamento = @id_departamento
END

GO
/****** Object:  StoredProcedure [dbo].[CRUD_Empresa]    Script Date: 22/08/2016 16:30:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CRUD_Empresa]
	@Operacion as VARCHAR(50),
	@nombre as VARCHAR(50),
	@id_empresa as VARCHAR(50),
	@id_codigo_ciiu as VARCHAR(50),
	@id_division as VARCHAR(50),
	@id_item_division as VARCHAR(50),
	@codigo as VARCHAR(50),
	@nit as VARCHAR(50),
	@direccion as VARCHAR(50),
	@id_departamento as VARCHAR(50),
	@id_municipio as VARCHAR(50),
	@email as VARCHAR(50),
	@representante as VARCHAR(50),
	@movil as VARCHAR(50),
	@fijo VARCHAR(50),
	@logo_url VARCHAR(50)

AS
BEGIN
	IF @Operacion = 'View'
		SELECT nombre FROM empresa WHERE id_empresa = @id_empresa
	IF @Operacion = 'Add'
		INSERT INTO empresa(nombre,id_codigo_ciiu,codigo,nit,direccion,id_departamento,id_municipio,email,representante,
		movil,fijo,logo_url) 
		VALUES (@nombre,@id_codigo_ciiu,@codigo,@nit,@direccion,@id_departamento,@id_municipio,@email,@representante,
		@movil,@fijo,@logo_url)
	IF @Operacion = 'Delete'
		DELETE FROM empresa WHERE id_empresa = @id_empresa
	IF @Operacion = 'Max'
		SELECT MAX(id_empresa) FROM empresa

END

GO
/****** Object:  StoredProcedure [dbo].[CRUD_Estatus]    Script Date: 22/08/2016 16:30:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CRUD_Estatus]
	@Operacion as VARCHAR(50),
	@id_estatus as VARCHAR(50),
	@nombre as VARCHAR(50),
	@descripcion as VARCHAR(50),
	@fecha_creacion as VARCHAR(50)
AS
BEGIN
	IF @Operacion = 'Add'
		INSERT INTO Estatus(nombre, descripcion,fecha_creacion)
		VALUES (@nombre,@descripcion,@fecha_creacion)

	IF @Operacion = 'Edit'
		UPDATE Estatus set
		nombre = @nombre,
		descripcion = @descripcion
		WHERE id_estatus = @id_estatus

	IF @Operacion = 'Delete'
		DELETE FROM Estatus WHERE id_estatus = @id_estatus
END

GO
/****** Object:  StoredProcedure [dbo].[CRUD_Horario]    Script Date: 22/08/2016 16:30:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CRUD_Horario]
	@Operacion as VARCHAR(50),
	@id_horario as VARCHAR(50),
	@nombre as VARCHAR(50),
	@fecha_inicio as VARCHAR(50),
	@fecha_fin as VARCHAR(50),
	@id_empresa as VARCHAR(50),
	@fecha_creacion as VARCHAR(50)
AS
BEGIN
	IF @Operacion = 'Add'
		INSERT INTO Horario(nombre, fecha_inicio, fecha_fin, id_empresa, fecha_creacion)
		VALUES (@nombre,@fecha_inicio,@fecha_fin,@id_empresa,@fecha_creacion)

	IF @Operacion = 'Edit'
		UPDATE Horario set 
		nombre = @nombre,
		fecha_inicio = @fecha_inicio,
		fecha_fin = @fecha_fin,
		id_empresa = @id_empresa
		WHERE id_horario = @id_horario
	
	IF @Operacion = 'Delete'
		DELETE FROM Horario WHERE id_horario = @id_horario
END

GO
/****** Object:  StoredProcedure [dbo].[CRUD_Municipio]    Script Date: 22/08/2016 16:30:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CRUD_Municipio]
	@Operacion as VARCHAR(50),
	@nombre as VARCHAR(50),
	@id_departamento as VARCHAR(50),
	@id_municipio as VARCHAR(50)
AS
BEGIN
	IF @Operacion = 'View'
		SELECT nombre FROM municipio WHERE id_municipio = @id_municipio
	IF @Operacion = 'Add'
		INSERT INTO municipio (nombre, id_departamento) 
		VALUES (@nombre, @id_departamento)
	IF @Operacion = 'Edit'
		UPDATE municipio SET 
		nombre = @nombre,
		id_departamento = @id_departamento
		WHERE id_municipio = @id_municipio
	IF @Operacion = 'Delete'
		DELETE FROM municipio WHERE id_municipio = @id_municipio
END

GO
/****** Object:  StoredProcedure [dbo].[CRUD_Rol]    Script Date: 22/08/2016 16:30:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CRUD_Rol]
	@Operacion as VARCHAR(50),
	@id_rol as VARCHAR(50),
	@nombre as VARCHAR(50),
	@id_rol_sistema as VARCHAR(50)
AS
BEGIN
	IF @Operacion = 'Add'
		INSERT INTO rol(nombre, id_rol_sistema)
		VALUES (@nombre,@id_rol_sistema)

	IF @Operacion = 'Edit'
		UPDATE rol set
		nombre = @nombre,
		id_rol_sistema = @id_rol_sistema
		WHERE id_rol = @id_rol

	IF @Operacion = 'Delete'
		DELETE FROM rol WHERE id_rol = @id_rol

END

GO
/****** Object:  StoredProcedure [dbo].[CRUD_Trabajador]    Script Date: 22/08/2016 16:30:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CRUD_Trabajador]
	@Operacion as VARCHAR(50),
	@id_trabajador as VARCHAR(50),
	@cedula as VARCHAR(50),
	@primer_nombre as VARCHAR(50),
	@segundo_nombre as VARCHAR(50),
	@primer_apellido as VARCHAR(50),
	@segundo_apellido as VARCHAR(50),
	@email as VARCHAR(50),
	@fecha_nacimiento as VARCHAR(50),
	@edo_civil as VARCHAR(50),
	@sexo as VARCHAR(50),
	@foto as VARCHAR(100),
	@telefono_casa as VARCHAR(50),
	@telefono_movil as VARCHAR(50),
	@activo as VARCHAR(50),
	@fecha_registro as VARCHAR(50),
	@eps as VARCHAR(50),
	@direccion as VARCHAR(100),
	@id_municipio as VARCHAR(50),
	@id_empresa as VARCHAR(50),
	@id_puesto_trabajo as VARCHAR(50),
	@id_departamento as VARCHAR(50),
	@es_discapacitado as VARCHAR(50),
	@desc_discapacidad as VARCHAR(200),
	@id_horario as VARCHAR(50),
	@id_area as VARCHAR(50),
	@id_estatus_actual as VARCHAR(50)	 
AS
BEGIN
	IF @Operacion = 'Add'
		INSERT INTO Trabajador 
		(cedula, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido,
		email, fecha_nacimiento, edo_civil, sexo, foto, telefono_casa, telefono_movil, 
		activo, fecha_registro,eps, direccion, id_municipio, id_empresa, id_puesto_trabajo,
		id_departamento,es_discapacitado,desc_discapacidad,id_horario, id_area,
		id_estatus_actual)
		VALUES(@cedula,@primer_nombre ,@segundo_nombre ,@primer_apellido ,@segundo_apellido
		,@email ,@fecha_nacimiento ,@edo_civil ,@sexo ,@foto ,@telefono_casa ,@telefono_movil,
		@activo ,@fecha_registro ,@eps ,@direccion ,@id_municipio ,@id_empresa ,@id_puesto_trabajo,
		@id_departamento ,@es_discapacitado ,@desc_discapacidad ,@id_horario ,@id_area,
		@id_estatus_actual)

	IF @Operacion = 'View_Ultimo_Trabajador'
		SELECT id_trabajador FROM Trabajador WHERE id_trabajador = (SELECT MAX(id_trabajador) from Trabajador)

END

GO
/****** Object:  StoredProcedure [dbo].[CRUD_Trabajador_Estatus]    Script Date: 22/08/2016 16:30:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CRUD_Trabajador_Estatus]
	@Operacion as VARCHAR(50),
	@id_trabajador_estatus as VARCHAR(50),
	@id_estatus as VARCHAR(50),
	@id_trabajador as VARCHAR(50),
	@fecha_registro as VARCHAR(50),
	@motivo as VARCHAR(50)
AS
BEGIN
	IF @Operacion = 'Add'
		INSERT INTO Trabajador_Estatus 
		( id_estatus,id_trabajador,fecha_registro,motivo)
		VALUES (@id_estatus,@id_trabajador,@fecha_registro,@motivo)
END

GO
USE [master]
GO
ALTER DATABASE [bd_central] SET  READ_WRITE 
GO
