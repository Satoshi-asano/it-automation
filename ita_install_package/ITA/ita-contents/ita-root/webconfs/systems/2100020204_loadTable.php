<?php
//   Copyright 2019 NEC Corporation
//
//   Licensed under the Apache License, Version 2.0 (the "License");
//   you may not use this file except in compliance with the License.
//   You may obtain a copy of the License at
//
//       http://www.apache.org/licenses/LICENSE-2.0
//
//   Unless required by applicable law or agreed to in writing, software
//   distributed under the License is distributed on an "AS IS" BASIS,
//   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//   See the License for the specific language governing permissions and
//   limitations under the License.
//
//////////////////////////////////////////////////////////////////////
//
//  【処理概要】
//    ・WebDBCore機能を用いたWebページの中核設定を行う。
//
//////////////////////////////////////////////////////////////////////

$tmpFx = function (&$aryVariant=array(),&$arySetting=array()){
    global $g;

    $arrayWebSetting = array();
    $arrayWebSetting['page_info'] = $g['objMTS']->getSomeMessage("ITAANSIBLEH-MNU-306090");
/*
Ansible（Pioneer）対話種別リスト
*/

    $tmpAry = array(
        'TT_SYS_01_JNL_SEQ_ID'=>'JOURNAL_SEQ_NO',
        'TT_SYS_02_JNL_TIME_ID'=>'JOURNAL_REG_DATETIME',
        'TT_SYS_03_JNL_CLASS_ID'=>'JOURNAL_ACTION_CLASS',
        'TT_SYS_04_NOTE_ID'=>'NOTE',
        'TT_SYS_04_DISUSE_FLAG_ID'=>'DISUSE_FLAG',
        'TT_SYS_05_LUP_TIME_ID'=>'LAST_UPDATE_TIMESTAMP',
        'TT_SYS_06_LUP_USER_ID'=>'LAST_UPDATE_USER',
        'TT_SYS_NDB_ROW_EDIT_BY_FILE_ID'=>'ROW_EDIT_BY_FILE',
        'TT_SYS_NDB_UPDATE_ID'=>'WEB_BUTTON_UPDATE',
        'TT_SYS_NDB_LUP_TIME_ID'=>'UPD_UPDATE_TIMESTAMP'
    );

    $table = new TableControlAgent('B_ANSIBLE_PNS_DIALOG_TYPE','DIALOG_TYPE_ID', $g['objMTS']->getSomeMessage("ITAANSIBLEH-MNU-307010"), 'B_ANSIBLE_PNS_DIALOG_TYPE_JNL', $tmpAry);
    $tmpAryColumn = $table->getColumns();
    $tmpAryColumn['DIALOG_TYPE_ID']->setSequenceID('B_ANSIBLE_PNS_DIALOG_TYPE_RIC');
    $tmpAryColumn['JOURNAL_SEQ_NO']->setSequenceID('B_ANSIBLE_PNS_DIALOG_TYPE_JSQ');
    unset($tmpAryColumn);

    // QMファイル名プレフィックス
    $table->setDBMainTableLabel($g['objMTS']->getSomeMessage("ITAANSIBLEH-MNU-307020"));
    // エクセルのシート名
    $table->getFormatter('excel')->setGeneValue('sheetNameForEditByFile', $g['objMTS']->getSomeMessage("ITAANSIBLEH-MNU-307030"));

    $table->setAccessAuth(true);    // データごとのRBAC設定


    $objVldt = new SingleTextValidator(1,256,false);
    $c = new TextColumn('DIALOG_TYPE_NAME',$g['objMTS']->getSomeMessage("ITAANSIBLEH-MNU-307040"));
    $c->setDescription($g['objMTS']->getSomeMessage("ITAANSIBLEH-MNU-307050"));//エクセル・ヘッダでの説明
    $c->setValidator($objVldt);
    $c->setRequired(true);//登録/更新時には、入力必須
    $c->setUnique(true);
    $table->addColumn($c);

    // Movement詳細へのリンクボタン
    $strLabelText = $g['objMTS']->getSomeMessage("ITAANSIBLEH-MNU-1207315");
    $c = new LinkButtonColumn('ethWakeOrder',$strLabelText, $strLabelText, 'dummy');
    $c->setDBColumn(false);
    $c->setEvent("print_table", "onClick", "newOpenWindow", array(':DIALOG_TYPE_NAME'));
    $c->getOutputType('print_journal_table')->setVisible(false);
    $table->addColumn($c);

    // 対話ファイル素材集へのリンクボタン
    $strLabelText = $g['objMTS']->getSomeMessage("ITAANSIBLEH-MNU-1207316");
    $c = new LinkButtonColumn('ethWakeOrder2',$strLabelText, $strLabelText, 'dummy');
    $c->setDBColumn(false);
    $c->setEvent("print_table", "onClick", "newOpenWindow2", array(':DIALOG_TYPE_NAME'));
    $c->getOutputType('print_journal_table')->setVisible(false);
    $table->addColumn($c);

    $table->fixColumn();

    $table->setGeneObject('webSetting', $arrayWebSetting);
    return $table;
};
loadTableFunctionAdd($tmpFx,__FILE__);
unset($tmpFx);
?>
