<?php
/**
 * Created by PhpStorm.
 * User: yao
 * Date: 2/28/15
 * Time: 2:57 PM
 */

namespace Home\Controller;


class AboutController extends HomeController{

    public function index(){

        $lists = M('about')->order('`id` DESC')->select();
        $this->assign('lists',$lists);//列表

        $this->display();
    }

}