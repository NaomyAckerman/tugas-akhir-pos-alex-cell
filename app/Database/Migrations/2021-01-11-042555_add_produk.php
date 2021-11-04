<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class AddProduk extends Migration
{
	public function up()
	{
		$this->forge->addField([
			'id' => [
				'type' => 'INT',
				'unsigned' => true,
				'auto_increment' => true,
				'constraint' => '3',
			],
			'kategori_id' => [
				'type' => 'INT',
				'unsigned' => true,
				'constraint' => '1',
			],
			'produk_gambar' => [
				'type' => 'VARCHAR',
				'constraint' => '128',
			],
			'produk_slug' => [
				'type' => 'VARCHAR',
				'constraint' => '128',
			],
			'produk_nama' => [
				'type' => 'VARCHAR',
				'constraint' => '128',
			],
			'produk_deskripsi' => [
				'type' => 'VARCHAR',
				'constraint' => '128',
			],
			'produk_qty' => [
				'type' => 'INT',
				'constraint' => '5',
			],
			'harga_supply' => [
				'type' => 'INT',
				'constraint' => '8',
			],
			'harga_user' => [
				'type' => 'INT',
				'constraint' => '6',
			],
			'harga_partai' => [
				'type' => 'INT',
				'constraint' => '6',
			],
			'created_by' => [
				'type' 			=> 'INT',
				'null'		=> true,
			],
			'updated_by' => [
				'type' 			=> 'INT',
				'null'		=> true,
			],
			'deleted_by' => [
				'type' 			=> 'INT',
				'null'		=> true,
			],
			'created_at' => [
				'type'				=> 'DATETIME',
			],
			'updated_at' => [
				'type'				=> 'DATETIME',
			],
			'deleted_at' => [
				'type'				=> 'DATETIME',
				'null'		=> true,
			],
		]);
		$this->forge->addPrimaryKey('id');
		$this->forge->addForeignKey('kategori_id', 'kategori', 'id', 'CASCADE', 'CASCADE');
		$this->forge->createTable('produk');
	}

	//--------------------------------------------------------------------

	public function down()
	{
		$this->forge->dropTable('produk');
	}
}
