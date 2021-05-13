<?php

namespace App\Http\Controllers;

use App\Models\Subscriber;
use Illuminate\Http\Request;

class SubscriberController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return Subscriber::all();
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $token = $request->captcha;
        $sub = $request->email;

        $hcaptcha = array(
            'secret' => "0x1b2E78d844DBE0217E97e14baF1C851DD3C310e6",
            'response' => $token
        );

        // Vérifie le captcha
        $verify = curl_init();
        curl_setopt($verify, CURLOPT_URL, "https://hcaptcha.com/siteverify");
        curl_setopt($verify, CURLOPT_POST, true);
        curl_setopt($verify, CURLOPT_POSTFIELDS, http_build_query($hcaptcha));
        curl_setopt($verify, CURLOPT_RETURNTRANSFER, true);
        $result = curl_exec($verify);
        $resultData = json_decode($result);

        // Vérifie si le nouveau subscriber n'est pas déjà abonné
        if($resultData->success) {
            $subs = Subscriber::all();
            $check = true;

            foreach($subs as $el) {
                if($el->email == $sub) {
                    $check = false;
                    break;
                }
            }

            if($check == true) {
                Subscriber::create($request->all());
                return true;
            } elseif($check == false) {
                return 2;
            }
        } 
        else {
            return false;
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Subscriber  $subscriber
     * @return \Illuminate\Http\Response
     */
    public function show(Subscriber $subscriber)
    {
        return $subscriber;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Subscriber  $subscriber
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Subscriber $subscriber)
    {
        $subscriber->update($request->all());
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Subscriber  $subscriber
     * @return \Illuminate\Http\Response
     */
    public function destroy(Subscriber $subscriber)
    {
        $subscriber->delete();
    }
}
