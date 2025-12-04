using System;
using Microsoft.EntityFrameworkCore.Migrations;
using Npgsql.EntityFrameworkCore.PostgreSQL.Metadata;

#nullable disable

namespace appUPN.Migrations
{
    /// <inheritdoc />
    public partial class InitialCreate : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "carritos",
                columns: table => new
                {
                    carritoid = table.Column<int>(type: "integer", nullable: false)
                        .Annotation("Npgsql:ValueGenerationStrategy", NpgsqlValueGenerationStrategy.IdentityByDefaultColumn),
                    userid = table.Column<int>(type: "integer", nullable: false),
                    fechacreacion = table.Column<DateTime>(type: "timestamp with time zone", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_carritos", x => x.carritoid);
                });

            migrationBuilder.CreateTable(
                name: "categorias",
                columns: table => new
                {
                    categoriaid = table.Column<int>(type: "integer", nullable: false)
                        .Annotation("Npgsql:ValueGenerationStrategy", NpgsqlValueGenerationStrategy.IdentityByDefaultColumn),
                    nombre = table.Column<string>(type: "character varying(100)", maxLength: 100, nullable: false),
                    descripcion = table.Column<string>(type: "character varying(500)", maxLength: 500, nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_categorias", x => x.categoriaid);
                });

            migrationBuilder.CreateTable(
                name: "chatmessages",
                columns: table => new
                {
                    chatmessageid = table.Column<int>(type: "integer", nullable: false)
                        .Annotation("Npgsql:ValueGenerationStrategy", NpgsqlValueGenerationStrategy.IdentityByDefaultColumn),
                    userid = table.Column<int>(type: "integer", nullable: true),
                    sessionid = table.Column<string>(type: "character varying(200)", maxLength: 200, nullable: false),
                    role = table.Column<string>(type: "character varying(20)", maxLength: 20, nullable: false),
                    message = table.Column<string>(type: "text", nullable: false),
                    createdat = table.Column<DateTime>(type: "timestamp with time zone", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_chatmessages", x => x.chatmessageid);
                });

            migrationBuilder.CreateTable(
                name: "users",
                columns: table => new
                {
                    userid = table.Column<int>(type: "integer", nullable: false)
                        .Annotation("Npgsql:ValueGenerationStrategy", NpgsqlValueGenerationStrategy.IdentityByDefaultColumn),
                    nombre = table.Column<string>(type: "character varying(120)", maxLength: 120, nullable: false),
                    email = table.Column<string>(type: "character varying(120)", maxLength: 120, nullable: false),
                    passwordhash = table.Column<string>(type: "character varying(500)", maxLength: 500, nullable: false),
                    telefono = table.Column<string>(type: "character varying(20)", maxLength: 20, nullable: true),
                    direccion = table.Column<string>(type: "character varying(200)", maxLength: 200, nullable: true),
                    rol = table.Column<string>(type: "character varying(20)", maxLength: 20, nullable: false),
                    fecharegistro = table.Column<DateTime>(type: "timestamp with time zone", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_users", x => x.userid);
                });

            migrationBuilder.CreateTable(
                name: "productos",
                columns: table => new
                {
                    productoid = table.Column<int>(type: "integer", nullable: false)
                        .Annotation("Npgsql:ValueGenerationStrategy", NpgsqlValueGenerationStrategy.IdentityByDefaultColumn),
                    nombre = table.Column<string>(type: "character varying(200)", maxLength: 200, nullable: false),
                    descripcion = table.Column<string>(type: "text", nullable: true),
                    precio = table.Column<decimal>(type: "numeric", nullable: false),
                    precioanterior = table.Column<decimal>(type: "numeric", nullable: true),
                    stock = table.Column<int>(type: "integer", nullable: false),
                    imagenurl = table.Column<string>(type: "character varying(500)", maxLength: 500, nullable: true),
                    categoriaid = table.Column<int>(type: "integer", nullable: false),
                    estaactivo = table.Column<bool>(type: "boolean", nullable: false),
                    esoferta = table.Column<bool>(type: "boolean", nullable: false),
                    fechacreacion = table.Column<DateTime>(type: "timestamp with time zone", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_productos", x => x.productoid);
                    table.ForeignKey(
                        name: "FK_productos_categorias_categoriaid",
                        column: x => x.categoriaid,
                        principalTable: "categorias",
                        principalColumn: "categoriaid",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "carritoitems",
                columns: table => new
                {
                    carritoitemid = table.Column<int>(type: "integer", nullable: false)
                        .Annotation("Npgsql:ValueGenerationStrategy", NpgsqlValueGenerationStrategy.IdentityByDefaultColumn),
                    carritoid = table.Column<int>(type: "integer", nullable: false),
                    productoid = table.Column<int>(type: "integer", nullable: false),
                    cantidad = table.Column<int>(type: "integer", nullable: false),
                    precio = table.Column<decimal>(type: "numeric", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_carritoitems", x => x.carritoitemid);
                    table.ForeignKey(
                        name: "FK_carritoitems_carritos_carritoid",
                        column: x => x.carritoid,
                        principalTable: "carritos",
                        principalColumn: "carritoid",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_carritoitems_productos_productoid",
                        column: x => x.productoid,
                        principalTable: "productos",
                        principalColumn: "productoid",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "IX_carritoitems_carritoid",
                table: "carritoitems",
                column: "carritoid");

            migrationBuilder.CreateIndex(
                name: "IX_carritoitems_productoid",
                table: "carritoitems",
                column: "productoid");

            migrationBuilder.CreateIndex(
                name: "IX_productos_categoriaid",
                table: "productos",
                column: "categoriaid");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "carritoitems");

            migrationBuilder.DropTable(
                name: "chatmessages");

            migrationBuilder.DropTable(
                name: "users");

            migrationBuilder.DropTable(
                name: "carritos");

            migrationBuilder.DropTable(
                name: "productos");

            migrationBuilder.DropTable(
                name: "categorias");
        }
    }
}
