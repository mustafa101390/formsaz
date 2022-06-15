  @component('admin.layouts.content', [
      'title' => 'ویرایش کتوگری فرم',
      'tabTitle' => ' ویرایش کتوگری فرم',
      'breadcrumb' => [['title' => 'لیست صفحات سایت', 'url' => route('admin.form_category.index')], ['title' => 'ویرایش کتوگری فرم  ',
      'class' => 'active']],
      ])




      <div class="row">
          <div class="col-12 col-xl-12 stretch-card">
              <div class="row flex-grow">


                  <div class="col-md-12 grid-margin stretch-card">
                      <div class="card">
                          <div class="card-body">

                              <div class="card-header card-header-border-bottom">
                                  <h4>ویرایش کتوگری فرم </h4>
                              </div>

                              <br>


                              @include('admin.layouts.errors')


                              <form class="forms-sample" method="POST" action="{{ route('admin.form_category.update', $form_category) }}"
                                  enctype="multipart/form-data" onsubmit="return Validate(this);">
                                  @csrf
                                  <div class="row">

                                      <div class="col-sm-12">


                                          <div class="form-group">
                                              <label for="name">نام کتوگری</label>
                                              <input type="text" class="form-control" id="name" autocomplete="off"
                                                     placeholder=" نام کتوگری  " name="name" value="{{$form_category->link}}">
                                          </div>

                                          <div class="form-group">
                                              <label for="link">لینک کتوگری</label>
                                              <input type="text" class="form-control" id="link" autocomplete="off"
                                                     placeholder=" لینک کتوگری  " name="link" value="{{$form_category->link}}">
                                          </div>




                                          @method('PUT')

                                          <div class="card-footer">
                                              <a href="{{ route('admin.form_category.index') }}" class="btn btn-danger">بازگشت</a>
                                              <button type="submit" class="btn btn-primary float-right">ویرایش</button>
                                          </div>


                                      </div>


                                  </div>

                              </form>



                          </div>
                      </div>
                  </div>




              </div>
          </div>
      </div>













      @slot('script')


    <script src="{{ asset('template/assets/vendors/core/core.js') }}"></script>
    <script src="{{ asset('template/assets/vendors/tinymce-rtl/tinymce.min.js') }}"></script>
      <script src="{{ asset('template/assets/vendors/simplemde/simplemde.min.js') }}"></script>
      <script src="{{ asset('template/assets/vendors/ace-builds/src-min/ace.js') }}"></script>
      <script src="{{ asset('template/assets/vendors/ace-builds/src-min/theme-chaos.js') }}"></script>

      <script src="{{ asset('template/assets/vendors/feather-icons/feather.min.js') }}"></script>
      <script src="{{ asset('template/assets/js/template.js') }}"></script>
      <script src="{{ asset('template/assets/js/tinymce.js') }}"></script>
      <script src="{{ asset('template/assets/js/tinymce.js') }}"></script>
      <script src="{{ asset('template/assets/js/ace.js') }}"></script>




      @endslot
  @endcomponent
