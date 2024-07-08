@extends('layouts.admin.app')

@section('title', translate('Order List'))

@push('css_or_js')
<meta name="csrf-token" content="{{ csrf_token() }}">
@endpush

@section('content')
<svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
    <symbol id="check-circle-fill" fill="currentColor" viewBox="0 0 16 16">
        <path
            d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-3.97-3.03a.75.75 0 0 0-1.08.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-.01-1.05z" />
    </symbol>
    <symbol id="info-fill" fill="currentColor" viewBox="0 0 16 16">
        <path
            d="M8 16A8 8 0 1 0 8 0a8 8 0 0 0 0 16zm.93-9.412-1 4.705c-.07.34.029.533.304.533.194 0 .487-.07.686-.246l-.088.416c-.287.346-.92.598-1.465.598-.703 0-1.002-.422-.808-1.319l.738-3.468c.064-.293.006-.399-.287-.47l-.451-.081.082-.381 2.29-.287zM8 5.5a1 1 0 1 1 0-2 1 1 0 0 1 0 2z" />
    </symbol>
    <symbol id="exclamation-triangle-fill" fill="currentColor" viewBox="0 0 16 16">
        <path
            d="M8.982 1.566a1.13 1.13 0 0 0-1.96 0L.165 13.233c-.457.778.091 1.767.98 1.767h13.713c.889 0 1.438-.99.98-1.767L8.982 1.566zM8 5c.535 0 .954.462.9.995l-.35 3.507a.552.552 0 0 1-1.1 0L7.1 5.995A.905.905 0 0 1 8 5zm.002 6a1 1 0 1 1 0 2 1 1 0 0 1 0-2z" />
    </symbol>
</svg>




@if (session()->has('success'))



<div class="alert alert-success d-flex align-items-center mt-3" role="alert">
    <svg class="bi flex-shrink-0 me-2 m-2" width="24" height="24" role="img" aria-label="Success:">
        <use xlink:href="#check-circle-fill" />
    </svg>
    <div>
        {{ (session()->get('success')) }}</div>
</div>

@endif
<!-- Modal -->
<a href="#" class="btn btn-primary  m-5" data-toggle="modal" data-target="#addCountry">
    {{translate('Add New City')}}</a>
<div class="modal fade" id="addCountry" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title fs-5" id="addCountryLabel">{{translate('Assign_Delivery_Man')}}</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <ul class="list-group">
                    <li class="list-group-item d-flex flex-wrap align-items-center gap-3 justify-content-between">
                        <div class="form-group col-12 lang_form" id="ar-form">
                            <form action="{{ route('admin.zone-list') }}" method="post">
                                @csrf
                                <label class="input-label">Country Name</label>
                                <input type="text" name="country" class="form-control" placeholder="New Category"
                                    maxlength="255" required="" oninvalid="document.getElementById('ar-link').click()">
                                <button id="" class="btn btn-primary btn-sm mt-5">{{translate('Add')}}</button>
                            </form>

                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- End Modal -->
<!-- Table -->
<div class="py-4">
    <div class="table-responsive datatable-custom">
        <table
            class="table table-hover table-borderless table-thead-bordered table-nowrap table-align-middle card-table">
            <thead class="thead-light">
                <tr>
                    <th>{{translate('#')}}</th>
                    <th>{{translate('City')}}</th>
                    <th>{{translate('status')}}</th>
                    <th>{{translate('Actions')}}</th>

                </tr>
            </thead>

            <tbody id="set-rows">
                @foreach ($countries as $country )

                <td>

                    <h6 class="text-capitalize mb-1">
                        <a class="text-dark" href=""></a>
                    </h6>
                    <a class="text-dark fz-12" href=""></a>
                    <span class="text-capitalize text-muted">
                        {{translate($loop->iteration)}}
                    </span>

                </td>


                <td class="text-capitalize">
                    <span class="badge-soft-info px-2 py-1 rounded">{{translate($country->country)}}</span>
                </td>
                <td>
                    @if($country->status == '1')
                    <a href="{{ route('admin.status_country',['id'=>$country->id,'status'=>'0']) }}"
                        class="badge-soft-success px-2 py-1 rounded">Avillable </a>
                    @else
                    <a href="{{ route('admin.status_country', ['id' => $country->id , 'status' => '1']) }}"
                        class="badge-soft-danger px-2 py-1 rounded">UnAvillable </a>
                    @endif
                </td>
                <td>
                    <div class="d-flex justify-content-center gap-2">
                        <a class="btn btn-sm btn-outline-primary square-btn" href="">
                            <i class="tio-invisible"></i>
                        </a>
                        <a href="" class="btn btn-sm btn-outline-success square-btn" target="_blank">
                            <i class="tio-print"></i>
                        </a>
                    </div>
                </td>
                </tr>
                @endforeach
            </tbody>
        </table>

    </div>
</div>
<!-- End Table -->

<div class="table-responsive mt-4 px-3">
    <div class="d-flex justify-content-lg-end">
        <!-- Pagination -->

    </div>
</div>
</div>
<!-- End Card -->
</div>






@endsection

@push('script_2')
<script>
    function filter_branch_orders(id) {
            location.href = '{{url('/')}}/admin/orders/branch-filter/' + id;
        }
</script>

<script>
    $('#search-form').on('submit', function () {
            var formData = new FormData(this);
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });
            $.post({
                url: '{{route('admin.orders.search')}}',
                data: formData,
                cache: false,
                contentType: false,
                processData: false,
                beforeSend: function () {
                    $('#loading').show();
                },
                success: function (data) {
                    $('#set-rows').html(data.view);
                    $('.card-footer').hide();
                },
                complete: function () {
                    $('#loading').hide();
                },
            });
        });
</script>
@endpush