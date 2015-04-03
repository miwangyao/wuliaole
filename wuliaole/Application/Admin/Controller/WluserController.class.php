<?php
// +----------------------------------------------------------------------
// | Copyright (c) 2015 http://www.silkcloud.com All rights reserved.
// +----------------------------------------------------------------------
// | Author: WJ <http://www.silkcloud.com>
// +----------------------------------------------------------------------

namespace Admin\Controller;

/**
 * 模型数据管理控制器
 * @author WJ
 */
class WluserController extends ThinkController {

    /**
     * 显示指定模型列表数据
     * @param  String $model 模型标识
     * @author WJ
     */
    public function index($cate_id, $p = 0){

        //获取左边菜单
        $this->getMenu();

        $users = M('Wluser')->order('`uId` DESC')->select();
        $this->assign('list', $users);
        $this->display();
    }

    public function del($model = null){
        parent::del($model);
    }

    public function edit($cate_id, $id = 0){
        parent::edit($cate_id,$id);
    }

    public function add(){
        parent::add();
    }
}