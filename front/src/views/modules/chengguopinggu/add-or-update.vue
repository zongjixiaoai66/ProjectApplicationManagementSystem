<template>
    <div class="addEdit-block">
        <el-form
                class="detail-form-content"
                ref="ruleForm"
                :model="ruleForm"
                :rules="rules"
                label-width="auto"
                :style="{backgroundColor:addEditForm.addEditBoxColor}">
            <el-row>
                <el-col :span="12"  v-if="sessionTable !='xiangmu' &&sessionTable!='pingshenzhuanjia'">
                    <el-form-item class="select" v-if="type!='info'"  label="项目" prop="xiangmuId">
                        <el-select v-model="ruleForm.xiangmuId" :disabled="ro.xiangmuId" filterable placeholder="请选择项目" @change="xiangmuChange">
                            <el-option
                                    v-for="(item,index) in xiangmuOptions"
                                    v-bind:key="item.id"
                                    :label="item.xiangmuName"
                                    :value="item.id">
                            </el-option>
                        </el-select>
                    </el-form-item>
                </el-col>

                <el-col :span="12"  v-if="sessionTable !='xiangmu' ">
                    <el-form-item class="input" v-if="type!='info'"  label="项目编号" prop="xiangmuUuidNumber">
                        <el-input v-model="xiangmuForm.xiangmuUuidNumber"
                                  placeholder="项目编号" clearable readonly></el-input>
                    </el-form-item>
                    <div v-else-if="type=='info'">
                        <el-form-item class="input" label="项目编号" prop="xiangmuUuidNumber">
                            <el-input v-model="ruleForm.xiangmuUuidNumber"
                                      placeholder="项目编号" readonly></el-input>
                        </el-form-item>
                    </div>
                </el-col>
                <el-col :span="12"  v-if="sessionTable !='xiangmu' ">
                    <el-form-item class="input" v-if="type!='info'"  label="项目名称" prop="xiangmuName">
                        <el-input v-model="xiangmuForm.xiangmuName"
                                  placeholder="项目名称" clearable readonly></el-input>
                    </el-form-item>
                    <div v-else-if="type=='info'">
                        <el-form-item class="input" label="项目名称" prop="xiangmuName">
                            <el-input v-model="ruleForm.xiangmuName"
                                      placeholder="项目名称" readonly></el-input>
                        </el-form-item>
                    </div>
                </el-col>
                <el-col :span="12"  v-if="sessionTable !='xiangmu' ">
                    <el-form-item class="input" v-if="type!='info'"  label="课题来源" prop="laiyuanValue">
                        <el-input v-model="xiangmuForm.laiyuanValue"
                                  placeholder="课题来源" clearable readonly></el-input>
                    </el-form-item>
                    <div v-else-if="type=='info'">
                        <el-form-item class="input" label="课题来源" prop="laiyuanValue">
                            <el-input v-model="ruleForm.laiyuanValue"
                                      placeholder="课题来源" readonly></el-input>
                        </el-form-item>
                    </div>
                </el-col>
                <el-col :span="12"  v-if="sessionTable !='xiangmu' ">
                    <el-form-item class="input" v-if="type!='info'"  label="项目类型" prop="xiangmuValue">
                        <el-input v-model="xiangmuForm.xiangmuValue"
                                  placeholder="项目类型" clearable readonly></el-input>
                    </el-form-item>
                    <div v-else-if="type=='info'">
                        <el-form-item class="input" label="项目类型" prop="xiangmuValue">
                            <el-input v-model="ruleForm.xiangmuValue"
                                      placeholder="项目类型" readonly></el-input>
                        </el-form-item>
                    </div>
                </el-col>
                <el-col :span="12"  v-if="sessionTable !='xiangmu' ">
                    <el-form-item class="input" v-if="type!='info'"  label="项目开始时间" prop="kaishiTime">
                        <el-input v-model="xiangmuForm.kaishiTime"
                                  placeholder="项目开始时间" clearable readonly></el-input>
                    </el-form-item>
                    <div v-else-if="type=='info'">
                        <el-form-item class="input" label="项目开始时间" prop="kaishiTime">
                            <el-input v-model="ruleForm.kaishiTime"
                                      placeholder="项目开始时间" readonly></el-input>
                        </el-form-item>
                    </div>
                </el-col>
                <el-col :span="12"  v-if="sessionTable !='xiangmu' ">
                    <el-form-item class="input" v-if="type!='info'"  label="项目结束时间" prop="jieshuTime">
                        <el-input v-model="xiangmuForm.jieshuTime"
                                  placeholder="项目结束时间" clearable readonly></el-input>
                    </el-form-item>
                    <div v-else-if="type=='info'">
                        <el-form-item class="input" label="项目结束时间" prop="jieshuTime">
                            <el-input v-model="ruleForm.jieshuTime"
                                      placeholder="项目结束时间" readonly></el-input>
                        </el-form-item>
                    </div>
                </el-col>
                <el-col :span="12"  v-if="sessionTable !='xiangmu' ">
                    <el-form-item class="input" v-if="type!='info'"  label="项目花费" prop="huafeiJine">
                        <el-input v-model="xiangmuForm.huafeiJine"
                                  placeholder="项目花费" clearable readonly></el-input>
                    </el-form-item>
                    <div v-else-if="type=='info'">
                        <el-form-item class="input" label="项目花费" prop="huafeiJine">
                            <el-input v-model="ruleForm.huafeiJine"
                                      placeholder="项目花费" readonly></el-input>
                        </el-form-item>
                    </div>
                </el-col>
                <el-col :span="12"  v-if="sessionTable !='xiangmu' ">
                    <el-form-item class="input" v-if="type!='info'"  label="所属方向" prop="yanjiufangxiangValue">
                        <el-input v-model="xiangmuForm.yanjiufangxiangValue"
                                  placeholder="所属方向" clearable readonly></el-input>
                    </el-form-item>
                    <div v-else-if="type=='info'">
                        <el-form-item class="input" label="所属方向" prop="yanjiufangxiangValue">
                            <el-input v-model="ruleForm.yanjiufangxiangValue"
                                      placeholder="所属方向" readonly></el-input>
                        </el-form-item>
                    </div>
                </el-col>

              <el-col :span="12" v-if="type=='info'">
                <div>
                  <el-form-item v-if="ruleForm.yanjiufangxiangFile" label="项目附件" prop="yanjiufangxiangFile">
                    <a type="text" style="text-decoration:none" class="el-button" :href="$base.url+ruleForm.yanjiufangxiangFile"  >项目附件下载</a>
                  </el-form-item>
                </div>
              </el-col>
              <el-col :span="24" v-if="type=='info'">
                <div>
                  <el-form-item v-if="ruleForm.xiangmuContent" label="项目内容" prop="xiangmuContent">
                    <span v-html="ruleForm.xiangmuContent"></span>
                  </el-form-item>
                </div>
              </el-col>
              <el-col :span="24" v-if="type=='info'">
                <div>
                  <el-form-item v-if="ruleForm.xiangmuChengguoContent" label="项目成果" prop="xiangmuChengguoContent">
                    <span v-html="ruleForm.xiangmuChengguoContent"></span>
                  </el-form-item>
                </div>
              </el-col>


              <el-col :span="12"  v-if="sessionTable !='pingshenzhuanjia'">
                <el-form-item class="select" v-if="type!='info'"  label="评审专家" prop="pingshenzhuanjiaId">
                  <el-select v-model="ruleForm.pingshenzhuanjiaId" :disabled="ro.pingshenzhuanjiaId" filterable placeholder="请选择评审专家" @change="pingshenzhuanjiaChange">
                    <el-option
                        v-for="(item,index) in pingshenzhuanjiaOptions"
                        v-bind:key="item.id"
                        :label="item.pingshenzhuanjiaName"
                        :value="item.id">
                    </el-option>
                  </el-select>
                </el-form-item>
              </el-col>

              <el-col :span="12"  v-if="sessionTable !='pingshenzhuanjia' ">
                <el-form-item class="input" v-if="type!='info'"  label="评审专家姓名" prop="pingshenzhuanjiaName">
                  <el-input v-model="pingshenzhuanjiaForm.pingshenzhuanjiaName"
                            placeholder="评审专家姓名" clearable readonly></el-input>
                </el-form-item>
                <div v-else-if="type=='info'">
                  <el-form-item class="input" label="评审专家姓名" prop="pingshenzhuanjiaName">
                    <el-input v-model="ruleForm.pingshenzhuanjiaName"
                              placeholder="评审专家姓名" readonly></el-input>
                  </el-form-item>
                </div>
              </el-col>
              <el-col :span="12"  v-if="sessionTable !='pingshenzhuanjia' ">
                <el-form-item class="input" v-if="type!='info'"  label="评审专家手机号" prop="pingshenzhuanjiaPhone">
                  <el-input v-model="pingshenzhuanjiaForm.pingshenzhuanjiaPhone"
                            placeholder="评审专家手机号" clearable readonly></el-input>
                </el-form-item>
                <div v-else-if="type=='info'">
                  <el-form-item class="input" label="评审专家手机号" prop="pingshenzhuanjiaPhone">
                    <el-input v-model="ruleForm.pingshenzhuanjiaPhone"
                              placeholder="评审专家手机号" readonly></el-input>
                  </el-form-item>
                </div>
              </el-col>
                <input id="updateId" name="id" type="hidden">
            <input id="xiangmuId" name="xiangmuId" type="hidden">
            <input id="pingshenzhuanjiaId" name="pingshenzhuanjiaId" type="hidden">
                <el-col :span="24">
                    <el-form-item v-if="type!='info' &&sessionTable!='users'"  label="评估意见" prop="chengguopingguContent">
                        <editor style="min-width: 200px; max-width: 600px;"
                                v-model="ruleForm.chengguopingguContent"
                                class="editor"
                                action="file/upload">
                        </editor>
                    </el-form-item>
                    <div v-else-if="type=='info'">
                        <el-form-item v-if="ruleForm.chengguopingguContent" label="评估意见" prop="chengguopingguContent">
                            <span v-html="ruleForm.chengguopingguContent"></span>
                        </el-form-item>
                    </div>
                </el-col>
               <el-col :span="12">
                   <el-form-item class="input" v-if="type!='info' &&sessionTable!='users'"  label="评估得分" prop="pingguDefen">
                       <el-input v-model="ruleForm.pingguDefen"
                                 placeholder="评估得分" clearable  :readonly="ro.pingguDefen"></el-input>
                   </el-form-item>
                   <div v-else-if="type=='info'">
                       <el-form-item class="input" label="评估得分" prop="pingguDefen">
                           <el-input v-model="ruleForm.pingguDefen"
                                     placeholder="评估得分" readonly></el-input>
                       </el-form-item>
                   </div>
               </el-col>
                <el-col :span="12">
                    <el-form-item class="select" v-if="type!='info' &&sessionTable!='users' && sessionTable !='pingshenzhuanjia'"  label="评估结果" prop="chengguopingguTypes">
                        <el-select v-model="ruleForm.chengguopingguTypes" :disabled="ro.chengguopingguTypes" placeholder="请选择评估结果">
                            <el-option
                                v-for="(item,index) in chengguopingguTypesOptions"
                                v-bind:key="item.codeIndex"
                                :label="item.indexName"
                                :value="item.codeIndex">
                            </el-option>
                        </el-select>
                    </el-form-item>
                    <div v-else-if="type=='info'">
                        <el-form-item class="input" label="评估结果" prop="chengguopingguValue">
                        <el-input v-model="ruleForm.chengguopingguValue"
                            placeholder="评估结果" readonly></el-input>
                        </el-form-item>
                    </div>
                </el-col>
            </el-row>
            <el-form-item class="btn">
                <el-button v-if="type!='info'" type="primary" class="btn-success" @click="onSubmit">提交</el-button>
                <el-button v-if="type!='info'" class="btn-close" @click="back()">取消</el-button>
                <el-button v-if="type=='info'" class="btn-close" @click="back()">返回</el-button>
            </el-form-item>
        </el-form>
    </div>
</template>
<script>
    import styleJs from "../../../utils/style.js";
    // 数字，邮件，手机，url，身份证校验
    import { isNumber,isIntNumer,isEmail,isPhone, isMobile,isURL,checkIdCard } from "@/utils/validate";
    export default {
        data() {
            return {
                addEditForm:null,
                id: '',
                type: '',
                sessionTable : "",//登录账户所在表名
                role : "",//权限
                userId:"",//当前登录人的id
                pingshenzhuanjiaForm: {},
                xiangmuForm: {},
                ro:{
                    xiangmuId: false,
                    pingshenzhuanjiaId: false,
                    insertTime: false,
                    chengguopingguContent: false,
                    pingguDefen: false,
                    chengguopingguTypes: false,
                    updateTime: false,
                },
                ruleForm: {
                    xiangmuId: '',
                    pingshenzhuanjiaId: '',
                    insertTime: '',
                    chengguopingguContent: '',
                    pingguDefen: '',
                    chengguopingguTypes: '',
                    updateTime: '',
                },
                chengguopingguTypesOptions : [],
                pingshenzhuanjiaOptions : [],
                xiangmuOptions : [],
                rules: {
                   xiangmuId: [
                              { required: true, message: '项目不能为空', trigger: 'blur' },
                              {  pattern: /^[0-9]*$/,
                                  message: '只允许输入整数',
                                  trigger: 'blur'
                              }
                          ],
                   pingshenzhuanjiaId: [
                              { required: true, message: '评审专家不能为空', trigger: 'blur' },
                              {  pattern: /^[0-9]*$/,
                                  message: '只允许输入整数',
                                  trigger: 'blur'
                              }
                          ],
                   insertTime: [
                              { required: true, message: '录入时间不能为空', trigger: 'blur' },
                          ],
                   chengguopingguContent: [
                              { required: true, message: '评估意见不能为空', trigger: 'blur' },
                          ],
                   pingguDefen: [
                              { required: true, message: '评估得分不能为空', trigger: 'blur' },
                              {  pattern: /^[0-9]{0,6}(\.[0-9]{1,2})?$/,
                                  message: '只允许输入整数6位,小数2位的数字',
                                  trigger: 'blur'
                              }
                          ],
                   chengguopingguTypes: [
                              { required: true, message: '评估结果不能为空', trigger: 'blur' },
                              {  pattern: /^[0-9]*$/,
                                  message: '只允许输入整数',
                                  trigger: 'blur'
                              }
                          ],
                   updateTime: [
                              { required: true, message: '评估时间不能为空', trigger: 'blur' },
                          ],
                }
            };
        },
        props: ["parent"],
        computed: {
        },
        created() {
            //获取当前登录用户的信息
            this.sessionTable = this.$storage.get("sessionTable");
            this.role = this.$storage.get("role");
            this.userId = this.$storage.get("userId");


            if (this.role != "管理员"){
            }
            this.addEditForm = styleJs.addStyle();
            this.addEditStyleChange()
            this.addEditUploadStyleChange()
            //获取下拉框信息
                this.$http({
                    url:`dictionary/page?page=1&limit=100&sort=&order=&dicCode=chengguopinggu_types`,
                    method: "get"
                }).then(({ data }) => {
                    if (data && data.code === 0) {
                        this.chengguopingguTypesOptions = data.data.list;
                    }
                });

         this.$http({
             url: `xiangmu/page?page=1&limit=100&xiangmuYesnoTypes=2`,
             method: "get"
         }).then(({ data }) => {
             if (data && data.code === 0) {
                this.xiangmuOptions = data.data.list;
            }
         });

        },
        mounted() {
        },
        methods: {
            // 下载
            download(file){
                window.open(`${file}`)
            },
            // 初始化
            init(id,type) {
                if (id) {
                    this.id = id;
                    this.type = type;
                }
                if(this.type=='info'||this.type=='else'){
                    this.info(id);
                }
                // 获取用户信息
                this.$http({
                    url:`${this.$storage.get("sessionTable")}/session`,
                    method: "get"
                }).then(({ data }) => {
                    if (data && data.code === 0) {
                        var json = data.data;
                    } else {
                        this.$message.error(data.msg);
                    }
                });
            },
            pingshenzhuanjiaChange(id){
                this.$http({
                    url: `pingshenzhuanjia/info/`+id,
                    method: "get"
                }).then(({ data }) => {
                    if (data && data.code === 0) {
                        this.pingshenzhuanjiaForm = data.data;
                    }
                });
            },
            xiangmuChange(id){
              let _this= this;
              _this.$http({
                    url: `xiangmu/info/`+id,
                    method: "get"
                }).then(({ data }) => {
                    if (data && data.code === 0) {
                      _this.xiangmuForm = data.data;

                      _this.ruleForm.pingshenzhuanjiaId=null
                      _this.pingshenzhuanjiaForm=[]
                      _this.$http({
                        url: 'pingshenzhuanjia/page?page=1&limit=100&yanjiufangxiangTypes='+_this.xiangmuForm.yanjiufangxiangTypes,
                        method: "get"
                      }).then(({ data }) => {
                        if (data && data.code === 0) {
                          _this.pingshenzhuanjiaOptions = data.data.list;
                        }
                      });


                    }
                });
            },
            // 多级联动参数
            info(id) {
                let _this =this;
                _this.$http({
                    url: `chengguopinggu/info/${id}`,
                    method: 'get'
                }).then(({ data }) => {
                    if (data && data.code === 0) {
                        _this.ruleForm = data.data;
                        _this.pingshenzhuanjiaChange(data.data.pingshenzhuanjiaId)
                        _this.xiangmuChange(data.data.xiangmuId)
                        _this.ruleForm.chengguopingguContent = _this.ruleForm.chengguopingguContent.replaceAll("src=\"upload/","src=\""+this.$base.url+"upload/");
                    } else {
                        _this.$message.error(data.msg);
                    }
                });
            },
            // 提交
            onSubmit() {
                this.$refs["ruleForm"].validate(valid => {
                    if (valid) {
                        this.ruleForm.chengguopingguContent = this.ruleForm.chengguopingguContent.replaceAll(this.$base.url,"");
                        this.$http({
                            url:`chengguopinggu/${!this.ruleForm.id ? "save" : "update"}`,
                            method: "post",
                            data: this.ruleForm
                        }).then(({ data }) => {
                            if (data && data.code === 0) {
                                this.$message({
                                    message: "操作成功",
                                    type: "success",
                                    duration: 1500,
                                    onClose: () => {
                                        this.parent.showFlag = true;
                                        this.parent.addOrUpdateFlag = false;
                                        this.parent.chengguopingguCrossAddOrUpdateFlag = false;
                                        this.parent.search();
                                        this.parent.contentStyleChange();
                                    }
                                });
                            } else {
                                this.$message.error(data.msg);
                            }
                        });
                    }
                });
            },
            // 获取uuid
            getUUID () {
                return new Date().getTime();
            },
            // 返回
            back() {
                this.parent.showFlag = true;
                this.parent.addOrUpdateFlag = false;
                this.parent.chengguopingguCrossAddOrUpdateFlag = false;
                this.parent.contentStyleChange();
            },
            //图片

            addEditStyleChange() {
                this.$nextTick(()=>{
                    // input
                    document.querySelectorAll('.addEdit-block .input .el-input__inner').forEach(el=>{
                        el.style.height = this.addEditForm.inputHeight
                        el.style.color = this.addEditForm.inputFontColor
                        el.style.fontSize = this.addEditForm.inputFontSize
                        el.style.borderWidth = this.addEditForm.inputBorderWidth
                        el.style.borderStyle = this.addEditForm.inputBorderStyle
                        el.style.borderColor = this.addEditForm.inputBorderColor
                        el.style.borderRadius = this.addEditForm.inputBorderRadius
                        el.style.backgroundColor = this.addEditForm.inputBgColor
                    })
                    document.querySelectorAll('.addEdit-block .input .el-form-item__label').forEach(el=>{
                        el.style.lineHeight = this.addEditForm.inputHeight
                        el.style.color = this.addEditForm.inputLableColor
                        el.style.fontSize = this.addEditForm.inputLableFontSize
                    })
                    // select
                    document.querySelectorAll('.addEdit-block .select .el-input__inner').forEach(el=>{
                        el.style.height = this.addEditForm.selectHeight
                        el.style.color = this.addEditForm.selectFontColor
                        el.style.fontSize = this.addEditForm.selectFontSize
                        el.style.borderWidth = this.addEditForm.selectBorderWidth
                        el.style.borderStyle = this.addEditForm.selectBorderStyle
                        el.style.borderColor = this.addEditForm.selectBorderColor
                        el.style.borderRadius = this.addEditForm.selectBorderRadius
                        el.style.backgroundColor = this.addEditForm.selectBgColor
                    })
                    document.querySelectorAll('.addEdit-block .select .el-form-item__label').forEach(el=>{
                        el.style.lineHeight = this.addEditForm.selectHeight
                        el.style.color = this.addEditForm.selectLableColor
                        el.style.fontSize = this.addEditForm.selectLableFontSize
                    })
                    document.querySelectorAll('.addEdit-block .select .el-select__caret').forEach(el=>{
                        el.style.color = this.addEditForm.selectIconFontColor
                        el.style.fontSize = this.addEditForm.selectIconFontSize
                    })
                    // date
                    document.querySelectorAll('.addEdit-block .date .el-input__inner').forEach(el=>{
                        el.style.height = this.addEditForm.dateHeight
                        el.style.color = this.addEditForm.dateFontColor
                        el.style.fontSize = this.addEditForm.dateFontSize
                        el.style.borderWidth = this.addEditForm.dateBorderWidth
                        el.style.borderStyle = this.addEditForm.dateBorderStyle
                        el.style.borderColor = this.addEditForm.dateBorderColor
                        el.style.borderRadius = this.addEditForm.dateBorderRadius
                        el.style.backgroundColor = this.addEditForm.dateBgColor
                    })
                    document.querySelectorAll('.addEdit-block .date .el-form-item__label').forEach(el=>{
                        el.style.lineHeight = this.addEditForm.dateHeight
                        el.style.color = this.addEditForm.dateLableColor
                        el.style.fontSize = this.addEditForm.dateLableFontSize
                    })
                    document.querySelectorAll('.addEdit-block .date .el-input__icon').forEach(el=>{
                        el.style.color = this.addEditForm.dateIconFontColor
                        el.style.fontSize = this.addEditForm.dateIconFontSize
                        el.style.lineHeight = this.addEditForm.dateHeight
                    })
                    // upload
                    let iconLineHeight = parseInt(this.addEditForm.uploadHeight) - parseInt(this.addEditForm.uploadBorderWidth) * 2 + 'px'
                    document.querySelectorAll('.addEdit-block .upload .el-upload--picture-card').forEach(el=>{
                        el.style.width = this.addEditForm.uploadHeight
                        el.style.height = this.addEditForm.uploadHeight
                        el.style.borderWidth = this.addEditForm.uploadBorderWidth
                        el.style.borderStyle = this.addEditForm.uploadBorderStyle
                        el.style.borderColor = this.addEditForm.uploadBorderColor
                        el.style.borderRadius = this.addEditForm.uploadBorderRadius
                        el.style.backgroundColor = this.addEditForm.uploadBgColor
                    })
                    document.querySelectorAll('.addEdit-block .upload .el-form-item__label').forEach(el=>{
                        el.style.lineHeight = this.addEditForm.uploadHeight
                        el.style.color = this.addEditForm.uploadLableColor
                        el.style.fontSize = this.addEditForm.uploadLableFontSize
                    })
                    document.querySelectorAll('.addEdit-block .upload .el-icon-plus').forEach(el=>{
                        el.style.color = this.addEditForm.uploadIconFontColor
                        el.style.fontSize = this.addEditForm.uploadIconFontSize
                        el.style.lineHeight = iconLineHeight
                        el.style.display = 'block'
                    })
                    // 多文本输入框
                    document.querySelectorAll('.addEdit-block .textarea .el-textarea__inner').forEach(el=>{
                        el.style.height = this.addEditForm.textareaHeight
                        el.style.color = this.addEditForm.textareaFontColor
                        el.style.fontSize = this.addEditForm.textareaFontSize
                        el.style.borderWidth = this.addEditForm.textareaBorderWidth
                        el.style.borderStyle = this.addEditForm.textareaBorderStyle
                        el.style.borderColor = this.addEditForm.textareaBorderColor
                        el.style.borderRadius = this.addEditForm.textareaBorderRadius
                        el.style.backgroundColor = this.addEditForm.textareaBgColor
                    })
                    document.querySelectorAll('.addEdit-block .textarea .el-form-item__label').forEach(el=>{
                        // el.style.lineHeight = this.addEditForm.textareaHeight
                        el.style.color = this.addEditForm.textareaLableColor
                        el.style.fontSize = this.addEditForm.textareaLableFontSize
                    })
                    // 保存
                    document.querySelectorAll('.addEdit-block .btn .btn-success').forEach(el=>{
                        el.style.width = this.addEditForm.btnSaveWidth
                        el.style.height = this.addEditForm.btnSaveHeight
                        el.style.color = this.addEditForm.btnSaveFontColor
                        el.style.fontSize = this.addEditForm.btnSaveFontSize
                        el.style.borderWidth = this.addEditForm.btnSaveBorderWidth
                        el.style.borderStyle = this.addEditForm.btnSaveBorderStyle
                        el.style.borderColor = this.addEditForm.btnSaveBorderColor
                        el.style.borderRadius = this.addEditForm.btnSaveBorderRadius
                        el.style.backgroundColor = this.addEditForm.btnSaveBgColor
                    })
                    // 返回
                    document.querySelectorAll('.addEdit-block .btn .btn-close').forEach(el=>{
                        el.style.width = this.addEditForm.btnCancelWidth
                        el.style.height = this.addEditForm.btnCancelHeight
                        el.style.color = this.addEditForm.btnCancelFontColor
                        el.style.fontSize = this.addEditForm.btnCancelFontSize
                        el.style.borderWidth = this.addEditForm.btnCancelBorderWidth
                        el.style.borderStyle = this.addEditForm.btnCancelBorderStyle
                        el.style.borderColor = this.addEditForm.btnCancelBorderColor
                        el.style.borderRadius = this.addEditForm.btnCancelBorderRadius
                        el.style.backgroundColor = this.addEditForm.btnCancelBgColor
                    })
                })
            },
            addEditUploadStyleChange() {
                this.$nextTick(()=>{
                    document.querySelectorAll('.addEdit-block .upload .el-upload-list--picture-card .el-upload-list__item').forEach(el=>{
                        el.style.width = this.addEditForm.uploadHeight
                        el.style.height = this.addEditForm.uploadHeight
                        el.style.borderWidth = this.addEditForm.uploadBorderWidth
                        el.style.borderStyle = this.addEditForm.uploadBorderStyle
                        el.style.borderColor = this.addEditForm.uploadBorderColor
                        el.style.borderRadius = this.addEditForm.uploadBorderRadius
                        el.style.backgroundColor = this.addEditForm.uploadBgColor
                    })
                })
            },
        }
    };
</script>
<style lang="scss">
.editor{
  height: 500px;

  & /deep/ .ql-container {
	  height: 310px;
  }
}
.amap-wrapper {
  width: 100%;
  height: 500px;
}
.search-box {
  position: absolute;
}
.addEdit-block {
	margin: -10px;
}
.detail-form-content {
	padding: 12px;
	background-color: transparent;
}
.btn .el-button {
  padding: 0;
}</style>

