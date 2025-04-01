<?php

namespace App\Http\Controllers;

use FPDF;
use App\Models\Dapil;
use App\Models\Ranking;
use Illuminate\Http\Request;

class LaporanController extends Controller
{
    protected $pdf;
    public function __construct()
    {
        $this->pdf = new FPDF;
    }
    public function header()
    {
        $this->pdf->Image(public_path('/assets/logo.png'), 10, 6, 40);
        $this->pdf->SetFont('Arial', 'B', 13);
        $this->pdf->Cell(45);
        $this->pdf->Cell(140, 6, 'DEWAN PIMPINAN CABANG', 0, 1, 'L');

        $this->pdf->SetFont('Arial', 'B', 13);
        $this->pdf->SetTextColor(0, 0, 0);
        $this->pdf->Cell(45);
        $this->pdf->Cell(140, 6, 'PARTAI DEMOKRAT', 0, 1, 'L');
        $this->pdf->SetFont('Arial', 'B', 13);
        $this->pdf->SetTextColor(0, 0, 0);
        $this->pdf->Cell(45);
        $this->pdf->Cell(140, 6, 'KOTA TASIKMALAYA', 0, 1, 'L');

        $this->pdf->SetFont('Arial', '', 10);
        $this->pdf->SetTextColor(0);
        $this->pdf->Cell(40);
        $this->pdf->Cell(140, 5, 'Jl. Ir.Juanda No. 21 Setiarasa Kel. Sukamulya Kec. Bungursari Kota Tasikmalaya', 0, 1, 'C');

        // Menambahkan garis header
        $this->pdf->SetLineWidth(1);
        $this->pdf->Line(10, 36, 200, 36);
        $this->pdf->SetLineWidth(0);
        $this->pdf->Line(10, 37, 200, 37);
        $this->pdf->Ln();
        $this->pdf->Ln();
    }
    public function laporan_ranking(Dapil $dapil)
    {
        $rankings = Ranking::where('dapil_uuid', $dapil->uuid)->orderBy('nilai', 'desc')->get();
        $this->pdf->AddPage('P', 'A4');
        $this->header();
        $this->pdf->SetFont('Arial', 'B', '16');
        $this->pdf->Cell(0, 6, 'Hasil Keputusan Nomor Urut Calon Legislatif', '0', 1, 'C');
        $this->pdf->Ln();
        $this->pdf->SetFont('Arial', 'B', '14');
        $this->pdf->Cell(40, 5, "Daerah Pilihan", '0', 0, 'L');
        $this->pdf->Cell(25, 5, ': ' . $dapil->kode, '0', 0, 'L');
        $this->pdf->Ln();
        $this->pdf->Ln();
        //Membuat kolom judul tabel
        $this->pdf->SetFont('Arial', '', '8');
        $this->pdf->SetFillColor(11, 48, 91);
        $this->pdf->SetTextColor(255);
        $this->pdf->SetDrawColor(255);
        $this->pdf->Cell(15, 7, "No Urut", 1, '0', 'C', true);
        $this->pdf->Cell(55 + 35, 7, "Nama", 1, '0', 'L', true);
        $this->pdf->Cell(29 + 12 + 27, 7, "Nilai", 1, '0', 'C', true);
        // $this->pdf->Cell(29, 7, "Harga", 1, '0', 'C', true);
        // $this->pdf->Cell(12, 7, "Diskon", 1, '0', 'C', true);
        // $this->pdf->Cell(27, 7, "Total", 1, '0', 'C', true);
        $this->pdf->Ln();
        //Membuat kolom isi tabel
        $this->pdf->SetFont('Arial', '', '8');
        $this->pdf->SetFillColor(255);
        $this->pdf->SetTextColor(0);
        $this->pdf->SetDrawColor(0);
        foreach ($rankings as $index => $ranking) {
            $this->pdf->Cell(15, 7, $index + 1, 1, '0', 'C', true);
            $this->pdf->Cell(55 + 35, 7, $ranking->nama, 1, '0', 'L', true);
            $this->pdf->Cell(29 + 12 + 27, 7, $ranking->nilai, 1, '0', 'C', true);
            // $this->pdf->Cell(29, 7,, 1, '0', 'R', true);
            // $this->pdf->Cell(12, 7,  '%', 1, '0', 'R', true);
            // $this->pdf->Cell(27, 7,, 1, '0', 'R', true);
            $this->pdf->Ln();
        }
        $this->pdf->Output("Laporan Nomor Urut Calon Legislatif Dapil " . $dapil->kode . ".pdf", 'I');
        exit;
    }
}
