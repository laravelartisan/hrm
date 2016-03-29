
<div>

    @if(count($holydays)>0)
    <table id="example1" class="table table-bordered table-striped">
        <thead>
        <tr>
            <th>SL</th>
            <th>Date</th>
            <th>Occasion</th>
            <th>Holiday Type</th>
            <th>Status</th>
            <th>Action</th>

        </tr>
        </thead>
        <tbody>

        @set('sl',1)
        @foreach($holydays as $holyday)

            <tr>
                <td>{{$sl++}}</td>
                <td>{{ $holyday->date or 'Null'}}</td>
                <td>{{ $holyday->occasion or 'Null'}}</td>
                <td>{{ $holyday->holydayType->type or 'Null' }}</td>
                <td>{{ $holyday->status->name or 'Null' }}</td>
                <td>
                    <a class="btn btn-primary btn-xs mrg" data-original-title="View" data-toggle="tooltip" href="{{ url('holyday/view',[$holyday->id]) }}">
                        <i class="fa fa-check-square-o"></i></a>
                    <a class="btn btn-warning btn-xs mrg" data-original-title="Edit" data-toggle="tooltip" href="{{ url('holyday/edit',[$holyday->id]) }}"><i class="fa fa-edit"></i></a>

                    <a  class="btn btn-danger btn-xs mrg" data-original-title="Delete" data-toggle="tooltip" href="{{ url('holyday/delete',[$holyday->id]) }}"><i class="fa fa-trash-o"></i></a>
                </td>

            </tr>
        @endforeach

        </tbody>
        <tfoot>
        <tr>
            <th>SL</th>
            <th>Date</th>
            <th>Occasion</th>
            <th>Holiday Type</th>
            <th>Status</th>
            <th>Action</th>
        </tr>
        </tfoot>
    </table>
    @else
        No Holydays ..........
  @endif
</div>

