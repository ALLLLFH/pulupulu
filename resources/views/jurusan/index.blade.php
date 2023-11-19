@extends('layouts.master')

@section('addCss')
<link rel="stylesheet" href="{{ asset('css/dataTables.bootstrap4.min.css') }}">
@endsection

@section('addJavascript')
<script src="{{ asset('js/sweetalert.min.js') }}"></script>
<script>
	confirmDelete = function(button) {
		var url = $(button).data('url');
		swal({
			"title": 'Konfirmasi Hapus',
			"text": 'Apakah Kamu Yakin Ingin Menghapus Data Ini?',
			'dangermode': true,
			'buttons': true
		}).then(function(value) {
			if (value) {
				window.location = url;
			}
		})
	}
</script>
<script src="{{ asset('js/jquery.dataTables.min.js') }}"></script>
<script src="{{ asset('js/dataTables.bootstrap4.min.js') }}"></script>
<script>
	$(function() {
		$("#data-table").DataTable();
	})
</script>
@endsection

@section('content')
<!-- Content Header (Page header) -->
<div class="content-header">
	<div class="container-fluid">
		<div class="row mb-0">
			<div class="col-sm-6">
				<h1 class="m-0 text-dark">Daftar Jurusan</h1>
			</div><!-- /.col -->
			<div class="col-sm-6">
				<ol class="breadcrumb float-sm-right">
					<li class="breadcrumb-item"><a href="{{route('dashboard')}}">Dashboard</a></li>
					<li class="breadcrumb-item active">Jurusan</li>
				</ol>
			</div><!-- /.col -->
		</div><!-- /.row -->
	</div><!-- /.container-fluid -->
</div>

<!-- Main content -->
<div class="content">
	<div class="container-fluid">
		<div class="" card>
			<div class="card-header text-right">
				<a href="{{ route('createJurusan') }}" class="btn btn-primary" role="button">Tambah jurusan</a>
			</div>
			<div class="card-body">
				<table class="table table-bordered table-striped table-hover" id="data-table">
					<thead class="table-primary">
						<tr>
							<th>No.</th>
							<th>Nama Jurusan</th>
							<th>Deskripsi</th>
							<th class="text-center">Aksi</th>
						</tr>
					</thead>
					<tbody>
						@foreach ($jurusans as $jurusan)
						<tr class='table-info'>
							<th scope="row" class="scope">{{ $loop->index + 1 }}</th>
							<td>{{ $jurusan->nama }}</td>
							<td>{{ $jurusan->deskripsi }}</td>
							<td>
								<div class="text-center" style="display: flex; flex-wrap: nowrap;">
									<a href="{{ route('editJurusan', ['edit' => $jurusan->id]) }}" class="btn btn-warning btn-sm" style="margin-right: 7px;" role="button">Edit</a>
									<a onclick="confirmDelete(this)" data-url="{{ route('deleteJurusan', ['id' => $jurusan->id]) }}" class="btn btn-danger btn-sm" role="button">Hapus</a>
								</div>
							</td>
						</tr>
						@endforeach
					</tbody>
				</table>
			</div>
		</div>
	</div><!-- /.container-fluid -->
</div>
<!-- /.content -->
@endsection

