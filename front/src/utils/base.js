const base = {
    get() {
        return {
            url : "http://localhost:8080/xiangmushenbao/",
            name: "xiangmushenbao",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/xiangmushenbao/front/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "项目申报管理系统"
        } 
    }
}
export default base
