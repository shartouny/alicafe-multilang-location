                            <link rel="stylesheet" href="{{ asset('admin/css/custom-voyager.css') }}">

@php
    $edit = !is_null($dataTypeContent->getKey());
    $add  = is_null($dataTypeContent->getKey());
@endphp

@extends('voyager::master')

@section('css')
    <meta name="csrf-token" content="{{ csrf_token() }}">
@stop

@section('page_title', __('voyager::generic.'.($edit ? 'edit' : 'add')).' '.$dataType->getTranslatedAttribute('display_name_singular'))

@section('page_header')
    <h1 class="page-title">
        <i class="{{ $dataType->icon }}"></i>
        {{ __('voyager::generic.'.($edit ? 'edit' : 'add')).' '.$dataType->getTranslatedAttribute('display_name_singular') }}
    </h1>
    @include('voyager::multilingual.language-selector')
@stop

@section('content')

    <div class="page-content edit-add container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-bordered">
                    <!-- form start -->
                    <form role="form"
                            class="form-edit-add"
                            action="{{ $edit ? route('voyager.'.$dataType->slug.'.update', $dataTypeContent->getKey()) : route('voyager.'.$dataType->slug.'.store') }}"
                            method="POST" enctype="multipart/form-data">
                        <!-- PUT Method if we are editing -->
                        @if($edit)
                            {{ method_field("PUT") }}
                        @endif
                        <!-- CSRF TOKEN -->
                        {{ csrf_field() }}
                        <div class="panel-body">

                            @if (count($errors) > 0)
                                <div class="alert alert-danger">
                                    <ul>
                                        @foreach ($errors->all() as $error)
                                            <li>{{ $error }}</li>
                                        @endforeach
                                    </ul>
                                </div>
                            @endif

                            <!-- Adding / Editing -->
                            @php
                                $dataTypeRows = $dataType->{($edit ? 'editRows' : 'addRows' )};
                            @endphp

                            @foreach($dataTypeRows as $row)

                            
                            
                            <!-- GET THE DISPLAY OPTIONS -->
                            @php
                                    $display_options = $row->details->display ?? NULL;
                                    if ($dataTypeContent->{$row->field.'_'.($edit ? 'edit' : 'add')}) {
                                        $dataTypeContent->{$row->field} = $dataTypeContent->{$row->field.'_'.($edit ? 'edit' : 'add')};
                                    }
                                @endphp
                                @if (isset($row->details->legend) && isset($row->details->legend->text))
                                    <legend class="text-{{ $row->details->legend->align ?? 'center' }}" style="background-color: {{ $row->details->legend->bgcolor ?? '#f0f0f0' }};padding: 5px;">{{ $row->details->legend->text }}</legend>
                                @endif

                                <div class="form-group @if($row->type == 'hidden') hidden @endif col-md-{{ $display_options->width ?? 12 }} {{ $errors->has($row->field) ? 'has-error' : '' }}" @if(isset($display_options->id)){{ "id=$display_options->id" }}@endif>
                                    {{ $row->slugify }}
                                    <label class="control-label" for="name">{{ $row->getTranslatedAttribute('display_name') }}</label>
                                    @include('voyager::multilingual.input-hidden-bread-edit-add')
                                    @if (isset($row->details->view))
                                        @include($row->details->view, ['row' => $row, 'dataType' => $dataType, 'dataTypeContent' => $dataTypeContent, 'content' => $dataTypeContent->{$row->field}, 'action' => ($edit ? 'edit' : 'add'), 'view' => ($edit ? 'edit' : 'add'), 'options' => $row->details])
                                    @elseif ($row->type == 'relationship')
                                        @include('voyager::formfields.relationship', ['options' => $row->details])
                                    @else
                                        {!! app('voyager')->formField($row, $dataType, $dataTypeContent) !!}
                                    @endif

                                    @foreach (app('voyager')->afterFormFields($row, $dataType, $dataTypeContent) as $after)
                                        {!! $after->handle($row, $dataType, $dataTypeContent) !!}
                                    @endforeach
                                    @if ($errors->has($row->field))
                                        @foreach ($errors->get($row->field) as $error)
                                            <span class="help-block">{{ $error }}</span>
                                        @endforeach
                                    @endif
                                </div>
                            @endforeach
                            <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" ></script>
                            <div class="form-group col-md-12" >
                                <label class="control-label" for="name">Choices</label>
                                <div class="container-fluid">
                                    <div id="choices_row" >
                                        @if (!empty($answers))
                                        @php  $i=0 @endphp
                                            @foreach ($answers as $answer)
                                            <input id="choice--{{$answer->id}}" type="hidden" name="deleted_answers[]" value="">
                                                <div class="fade-toggle-menu">
                                                    <input type="hidden" name="incoming_answers[]" value={{$answer->id??''}}>

                                                    <div class="row"> 
                                                        <div class=""> 
                                                            <h3>choice # <span class="choice-index"></span></h3> 
                                                        </div> 
                                                    </div> 
                                                    <div class="content"> 
                                                        <div class="row py-4"> 
                                                            <label for="choice  i  _name" class="col-xs-12 col-form-label">Choice</label> 
                                                            <div class="col-xs-4"> 
                                                                <input name="answer[]" type="text" class="form-control" id="choice{{$i}}_name" placeholder="Name" required value="{{$answer->answer}}"> 
                                                            </div> 
                                                            
                                                        </div> 
                                                        <div class="row">
                                                            <label class="col-xs-12 col-form-label">Thumbnail</label> 
                                                            <div class="col-xs-10">
                                                                <div class="row">
                                                                    <div class="col-xs-3">
                                                                        <label for="choice{{$i}}img">
                                                                            <input name="answerImg[]" type="file" class="d-none" id="choice{{$i}}img" value="" style="display: none;"> 
                                                                            <img src="{{!empty($answer->img) ? asset('storage/'. $answer->img) : asset('assets/img/empty-img.jpg')}}" id="choice{{$i}}Img" alt="Not Found" class="img-thumbnail choice-img">   
                                                                        </label> 
                                                                    </div>    
                                                                </div> 
                                                            </div> 
                                                        </div>
                                                        <div class="row py-4"> 
                                                            <div class="row py-2 justify-content-center"> 
                                                                <button type="button" class="text-center btn btn-danger remove" data-remove="fade-toggle-menu">remove</button> 
                                                            </div> 
                                                        </div> 
                                                    </div>
                                                </div>
                                                @php  $i++ @endphp
                                            @endforeach
                                        @endif
                                    </div>
                                    <div class="form-group row justify-content-center ">
                                        <div class="col-12 text-center p-0">
                                            <div class="bg-light-gray p-1">
                                                <button id="add_choice" class="btn btn-success rounded-circle btn-sm">
                                                    <i class="fa fa-plus"></i>
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div><!-- panel-body -->
                        
                        <div class="panel-footer">
                            @section('submit-buttons')
                                <button type="submit" class="btn btn-primary save">{{ __('voyager::generic.save') }}</button>
                            @stop
                            @yield('submit-buttons')
                        </div>
                    </form>

                    <iframe id="form_target" name="form_target" style="display:none"></iframe>
                    <form id="my_form" action="{{ route('voyager.upload') }}" target="form_target" method="post"
                            enctype="multipart/form-data" style="width:0;height:0;overflow:hidden">
                        <input name="image" id="upload_file" type="file"
                                 onchange="$('#my_form').submit();this.value='';">
                        <input type="hidden" name="type_slug" id="type_slug" value="{{ $dataType->slug }}">
                        {{ csrf_field() }}
                    </form>

                </div>
            </div>
        </div>
    </div>

    <div class="modal fade modal-danger" id="confirm_delete_modal">
        <div class="modal-dialog">
            <div class="modal-content">

                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"
                            aria-hidden="true">&times;</button>
                    <h4 class="modal-title"><i class="voyager-warning"></i> {{ __('voyager::generic.are_you_sure') }}</h4>
                </div>

                <div class="modal-body">
                    <h4>{{ __('voyager::generic.are_you_sure_delete') }} '<span class="confirm_delete_name"></span>'</h4>
                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">{{ __('voyager::generic.cancel') }}</button>
                    <button type="button" class="btn btn-danger" id="confirm_delete">{{ __('voyager::generic.delete_confirm') }}</button>
                </div>
            </div>
        </div>
    </div>
    <!-- End Delete File Modal -->
@stop

@section('javascript')
    <script>
        var params = {};
        var $file;

        function deleteHandler(tag, isMulti) {
          return function() {
            $file = $(this).siblings(tag);

            params = {
                slug:   '{{ $dataType->slug }}',
                filename:  $file.data('file-name'),
                id:     $file.data('id'),
                field:  $file.parent().data('field-name'),
                multi: isMulti,
                _token: '{{ csrf_token() }}'
            }

            $('.confirm_delete_name').text(params.filename);
            $('#confirm_delete_modal').modal('show');
          };
        }

        $('document').ready(function () {
            $('.toggleswitch').bootstrapToggle();

            //Init datepicker for date fields if data-datepicker attribute defined
            //or if browser does not handle date inputs
            $('.form-group input[type=date]').each(function (idx, elt) {
                if (elt.hasAttribute('data-datepicker')) {
                    elt.type = 'text';
                    $(elt).datetimepicker($(elt).data('datepicker'));
                } else if (elt.type != 'date') {
                    elt.type = 'text';
                    $(elt).datetimepicker({
                        format: 'L',
                        extraFormats: [ 'YYYY-MM-DD' ]
                    }).datetimepicker($(elt).data('datepicker'));
                }
            });

            @if ($isModelTranslatable)
                $('.side-body').multilingual({"editing": true});
            @endif

            $('.side-body input[data-slug-origin]').each(function(i, el) {
                $(el).slugify();
            });

            $('.form-group').on('click', '.remove-multi-image', deleteHandler('img', true));
            $('.form-group').on('click', '.remove-single-image', deleteHandler('img', false));
            $('.form-group').on('click', '.remove-multi-file', deleteHandler('a', true));
            $('.form-group').on('click', '.remove-single-file', deleteHandler('a', false));

            $('#confirm_delete').on('click', function(){
                $.post('{{ route('voyager.'.$dataType->slug.'.media.remove') }}', params, function (response) {
                    if ( response
                        && response.data
                        && response.data.status
                        && response.data.status == 200 ) {

                        toastr.success(response.data.message);
                        $file.parent().fadeOut(300, function() { $(this).remove(); })
                    } else {
                        toastr.error("Error removing file.");
                    }
                });

                $('#confirm_delete_modal').modal('hide');
            });
            $('[data-toggle="tooltip"]').tooltip();
        });


        $(function(){
            myLoad()
            let i = 0;
            $('#add_choice').on('click', function(e) {
                i++;
                e.preventDefault();
                add_choice_row(i);
                choice_index();
                setTimeout(function(){
                    myLoad();
                }, 1)
                
            });
            choice_index();
            $(document).on('click', '.fade-toggle-menu>.row', function() {
                $(this).parent().toggleClass('active')
                if ($(this).parent().hasClass('active')) {
                    $(this).find('.toggle-icon').children('i').removeClass('fa-chevron-down').addClass('fa-chevron-up')
                } else {
                    $(this).find('.toggle-icon').children('i').removeClass('fa-chevron-up').addClass('fa-chevron-down')
                }
                $(this).next('.content').slideToggle().closest('.fade-toggle-menu').siblings().find('.content').slideUp();
            });
            $(document).on('click', '.remove', function(e) {
                e.preventDefault();
                $(this).closest('.' + $(this).data('remove')).remove();
                i--;
                choice_index();

            });

        });

        function choice_index() {
            let i = 0;
            $('.choice-index,.indexed').each(function() {
                $(this).html(++i);
            })
        }
        function add_choice_row(i, name = '', address = '', phone = '', email = '') {
            $('#choices_row').append('<div class="fade-toggle-menu">'+
                                        '<div class="row"> '+
                                        '    <div class=""> '+
                                        '        <h3>choice # <span class="choice-index"></span></h3> '+
                                        '    </div> '+
                                        '</div> '+
                                        '<div class="content"> '+
                                        '    <div class="row py-4"> '+
                                        '        <label for="choice'+i+'_name" class="col-xs-12 col-form-label">Choice</label> '+
                                        '        <div class="col-xs-4"> '+
                                        '            <input name="answer[]" type="text" class="form-control" id="choice'+i+'_name" placeholder="Name" required value=""> '+
                                        '        </div> '+
                                        '        '+
                                        '    </div> '+
                                        '    <div class="row">'+
                                        '        <label class="col-xs-12 col-form-label">Thumbnail</label> '+
                                        '        <div class="col-xs-10">'+
                                        '            <div class="row">'+
                                        '                <div class="col-xs-3">'+
                                        '                    <label for="choice'+i+'img">'+
                                        '                        <input name="answerImg[]" type="file" class="d-none" id="choice'+i+'img" value="" style="display: none;"> '+
                                        '                        <img src="{{asset('assets/img/empty-img.jpg')}}" id="choice'+i+'img" alt="Not Found" class="img-thumbnail choice-img">   '+
                                        '                    </label> '+
                                        '                </div>    '+
                                        '            </div> '+
                                        '        </div> '+
                                        '    </div>'+
                                        '    <div class="row py-4"> '+
                                        '        <div class="row py-2 justify-content-center"> '+
                                        '            <button class="text-center btn btn-danger remove" data-remove="fade-toggle-menu">remove</button> '+
                                        '        </div> '+
                                        '    </div> '+
                                        '</div>'+
                                    '</div>'
                                    );
        }

        function myLoad(){
            let upload = $('input[name="answerImg[]"]')
            upload.each(function(){
                $(this).on('change',function(){
                    let img = $(this).next('.choice-img')
                    let choosedFile = this.files[0];
                    if(choosedFile) {
                        let reader = new FileReader();
                        $(reader).on('load',function(){
                            console.log(img.attr('src'));
                            img.attr('src', reader.result);
                        });
                        reader.readAsDataURL(choosedFile);
                    }
                }); 
            })
        }
        $(document).on('click', '.remove', function(){
            let myDelete = $(this).closest('.fade-toggle-menu').find('input[name="incoming_answers[]"]').val();
            alert(myDelete);
            $('#choice--'+myDelete).val(myDelete);
        });

        


    </script>
@stop
