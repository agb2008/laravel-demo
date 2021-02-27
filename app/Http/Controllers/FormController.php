<?php

namespace App\Http\Controllers;

use App\Models\Form;
use Illuminate\Http\Request;

class FormController extends Controller
{
    public function index()
    {
        $forms = Form::latest()->get();
        return view('forms.index', ['forms' => $forms]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('forms.create');
    }

    public function store()
    {
        $form = new Form();

        $form->username = request('username');
        $form->comment = request('comment');

        $form->save();

        return redirect('/'); // заменить на список комментариев
    }

    public function show(Form $form)
    {
        return view('forms.show', ['form' => $form]);
    }
}


