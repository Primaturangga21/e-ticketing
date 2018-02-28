<body style="padding: 20px; border-bottom: 1px solid black; width: 90%;margin: auto; margin-bottom: 20px;">
    <div>
        <div style="width: 100%;margin: auto;display: block;">
            <div style="float: left;width: 50%;">
                <h1 style="font-weight: 700;color: inherit;margin: 0.67em 0;">Order Ticket</h1>
                <h2 style="font-weight: 400;color: inherit;margin: 0.67em 0;">Customer Report</h2>
            </div>
            <div style="float: right;width: 50%;">
                <div style="width: 50%; float: right;">
                    <span style="display:block;margin-top: 0.67em;margin-bottom: 0.67em;"><b>Contact Us :</b></span>
                    <span style="display:block;margin-top: 0.67em;margin-bottom: 0.67em;">Primaturangga21@gmail.com</span>
                    <span style="display:block;margin-top: 0.67em;margin-bottom: 0.67em;">081246866917</span>
                </div>
            </div>
            <div style="clear: both;"></div>
        </div>
        <hr style="margin:auto;width: 100%;display: block;margin-top: 130px;" />
        <div style="margin:auto;width: 95%;display: block;margin-top: 130px;">
            <table border="1" style="width: 100%">
                <tr>
                    <th>Name</th>
                    <th>Address</th>
                    <th>Phone</th>
                    <th>Create At</th>
                    <th>Gender</th>
                </tr>
                @foreach ($products as $product)
                <tr>
                    <td>{{ $product->name }}</td>
                    <td>{{ $product->address }}</td>
                    <td>{{ $product->phone }}</td>
                    <td>{{ $product->created_at }}</td>
                    <td>{{ $product->gender }}</td>
                </tr>
                @endforeach
            </table>
        </div>
    </div>
</body>