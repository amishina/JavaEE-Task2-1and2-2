<form action="/add-item" method="post">

    <div class="row">
        <div class="col-12">
            <label>NAME: </label>
        </div>
    </div>
    <div class="row mt-2">
        <div class="col-12">
            <input type="text" class="form-control" name="item-name" placeholder="Insert name">
        </div>
    </div>
    <div class="row mt-3">
        <div class="col-12">
            <label>PRICE: </label>
        </div>
    </div>
    <div class="row mt-2">
        <div class="col-12">
            <input type="number" class="form-control" name="item-price" placeholder="Insert price">
        </div>
    </div>
    <div class="row mt-3">
        <div class="col-12">
            <label>AMOUNT: </label>
        </div>
    </div>
    <div class="row mt-2">
        <div class="col-12">
            <input type="number" class="form-control" name="item-amount" placeholder="Insert amount">
        </div>
    </div>
    <div class="row mt-3">
        <div class="col-12">
            <label>DESCRIPTION: </label>
        </div>
    </div>
    <div class="row mt-2">
        <div class="col-12">
            <textarea name="item_description" class="form-control" rows="5" placeholder="Insert description"></textarea>
        </div>
    </div>
    <div class="row mt-3">
        <div class="col-12">
            <button class="btn btn-success">ADD ITEM</button>
        </div>
    </div>
</form>