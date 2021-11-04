<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class AddTransaksi extends Migration
{
	public function up()
	{
		$this->forge->addField([
			'id' => [
				'type' => 'INT',
				'unsigned' => true,
				'auto_increment' => true,
			],
			'konter_id' => [
				'type' => 'INT',
				'unsigned' => true,
				'constraint' => '1',
			],
			'total_pulsa' => [
				'type' => 'INT',
				'null'		=> true,
				'constraint' => '8',
			],
			'total_saldo' => [
				'type' => 'INT',
				'null'		=> true,
				'constraint' => '8',
			],
			'total_acc' => [
				'type' => 'INT',
				'null'		=> true,
				'constraint' => '8',
			],
			'total_kartu' => [
				'type' => 'INT',
				'null'		=> true,
				'constraint' => '8',
			],
			'total_partai' => [
				'type' => 'INT',
				'null'		=> true,
				'constraint' => '8',
			],
			'total_tunai' => [
				'type' => 'INT',
				'null'		=> true,
				'constraint' => '8',
			],
			'total_modal' => [
				'type' => 'INT',
				'null'		=> true,
				'constraint' => '8',
			],
			'total_keluar' => [
				'type' => 'INT',
				'null'		=> true,
				'constraint' => '8',
			],
			'total_trx' => [
				'type' => 'INT',
				'null'		=> true,
				'constraint' => '8',
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
		$this->forge->addForeignKey('konter_id', 'konter', 'id', 'CASCADE', 'CASCADE');
		$this->forge->createTable('transaksi');
	}

	//--------------------------------------------------------------------

	public function down()
	{
		$this->forge->dropTable('transaksi');
	}
}
