.class public Lgnu/kawa/servlet/HTTP;
.super Lgnu/expr/ModuleBody;
.source "HTTP.scm"


# static fields
.field public static final $instance:Lgnu/kawa/servlet/HTTP;

.field static final Lit0:Lgnu/mapping/SimpleSymbol;

.field static final Lit1:Lgnu/mapping/SimpleSymbol;

.field static final Lit10:Lgnu/mapping/SimpleSymbol;

.field static final Lit11:Lgnu/mapping/SimpleSymbol;

.field static final Lit12:Lgnu/mapping/SimpleSymbol;

.field static final Lit13:Lgnu/mapping/SimpleSymbol;

.field static final Lit14:Lgnu/mapping/SimpleSymbol;

.field static final Lit15:Lgnu/mapping/SimpleSymbol;

.field static final Lit16:Lgnu/mapping/SimpleSymbol;

.field static final Lit17:Lgnu/mapping/SimpleSymbol;

.field static final Lit18:Lgnu/mapping/SimpleSymbol;

.field static final Lit19:Lgnu/mapping/SimpleSymbol;

.field static final Lit2:Lgnu/mapping/SimpleSymbol;

.field static final Lit20:Lgnu/mapping/SimpleSymbol;

.field static final Lit21:Lgnu/mapping/SimpleSymbol;

.field static final Lit22:Lgnu/mapping/SimpleSymbol;

.field static final Lit23:Lgnu/mapping/SimpleSymbol;

.field static final Lit24:Lgnu/mapping/SimpleSymbol;

.field static final Lit25:Lgnu/mapping/SimpleSymbol;

.field static final Lit26:Lgnu/mapping/SimpleSymbol;

.field static final Lit27:Lgnu/mapping/SimpleSymbol;

.field static final Lit28:Lgnu/mapping/SimpleSymbol;

.field static final Lit29:Lgnu/mapping/SimpleSymbol;

.field static final Lit3:Lgnu/mapping/SimpleSymbol;

.field static final Lit30:Lgnu/mapping/SimpleSymbol;

.field static final Lit31:Lgnu/mapping/SimpleSymbol;

.field static final Lit32:Lgnu/mapping/SimpleSymbol;

.field static final Lit4:Lgnu/mapping/SimpleSymbol;

.field static final Lit5:Lgnu/mapping/SimpleSymbol;

.field static final Lit6:Lgnu/mapping/SimpleSymbol;

.field static final Lit7:Lgnu/mapping/SimpleSymbol;

.field static final Lit8:Lgnu/mapping/SimpleSymbol;

.field static final Lit9:Lgnu/mapping/SimpleSymbol;

.field public static final error$Mnresponse:Lgnu/expr/ModuleMethod;

.field public static final request$MnURI:Lgnu/expr/ModuleMethod;

.field public static final request$Mnbody$Mnstring:Lgnu/expr/ModuleMethod;

.field public static final request$Mncontext$Mnpath:Lgnu/expr/ModuleMethod;

.field public static final request$Mnheader:Lgnu/expr/ModuleMethod;

.field public static final request$Mnheader$Mnmap:Lgnu/expr/ModuleMethod;

.field public static final request$Mninput$Mnport:Lgnu/expr/ModuleMethod;

.field public static final request$Mninput$Mnstream:Lgnu/expr/ModuleMethod;

.field public static final request$Mnlocal$MnIP$Mnaddress:Lgnu/expr/ModuleMethod;

.field public static final request$Mnlocal$Mnhost:Lgnu/expr/ModuleMethod;

.field public static final request$Mnlocal$Mnpath:Lgnu/expr/ModuleMethod;

.field public static final request$Mnlocal$Mnport:Lgnu/expr/ModuleMethod;

.field public static final request$Mnlocal$Mnsocket$Mnaddress:Lgnu/expr/ModuleMethod;

.field public static final request$Mnmethod:Lgnu/expr/ModuleMethod;

.field public static final request$Mnparameter:Lgnu/expr/ModuleMethod;

.field public static final request$Mnparameter$Mnmap:Lgnu/expr/ModuleMethod;

.field public static final request$Mnparameters:Lgnu/expr/ModuleMethod;

.field public static final request$Mnpath:Lgnu/expr/ModuleMethod;

.field public static final request$Mnpath$Mntranslated:Lgnu/expr/ModuleMethod;

.field public static final request$Mnquery$Mnstring:Lgnu/expr/ModuleMethod;

.field public static final request$Mnremote$MnIP$Mnaddress:Lgnu/expr/ModuleMethod;

.field public static final request$Mnremote$Mnhost:Lgnu/expr/ModuleMethod;

.field public static final request$Mnremote$Mnport:Lgnu/expr/ModuleMethod;

.field public static final request$Mnremote$Mnsocket$Mnaddress:Lgnu/expr/ModuleMethod;

.field public static final request$Mnscheme:Lgnu/expr/ModuleMethod;

.field public static final request$Mnscript$Mnpath:Lgnu/expr/ModuleMethod;

.field public static final request$Mnuri:Lgnu/expr/ModuleMethod;

.field public static final request$Mnurl:Lgnu/expr/ModuleMethod;

.field public static final response$Mncontent$Mntype:Lgnu/expr/ModuleMethod;

.field public static final response$Mnheader:Lgnu/expr/ModuleMethod;

.field public static final response$Mnstatus:Lgnu/expr/ModuleMethod;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    const/16 v7, 0x2001

    const/16 v6, 0x1001

    const/4 v5, 0x0

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "request-input-port"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/servlet/HTTP;->Lit32:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "request-input-stream"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/servlet/HTTP;->Lit31:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "request-body-string"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/servlet/HTTP;->Lit30:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "request-parameter-map"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/servlet/HTTP;->Lit29:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "request-parameters"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/servlet/HTTP;->Lit28:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "request-parameter"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/servlet/HTTP;->Lit27:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "request-query-string"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/servlet/HTTP;->Lit26:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "request-path-translated"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/servlet/HTTP;->Lit25:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "request-url"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/servlet/HTTP;->Lit24:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "request-uri"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/servlet/HTTP;->Lit23:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "request-path"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/servlet/HTTP;->Lit22:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "request-local-path"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/servlet/HTTP;->Lit21:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "request-script-path"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/servlet/HTTP;->Lit20:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "request-context-path"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/servlet/HTTP;->Lit19:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "request-URI"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/servlet/HTTP;->Lit18:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "request-header-map"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/servlet/HTTP;->Lit17:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "request-header"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/servlet/HTTP;->Lit16:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "request-remote-host"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/servlet/HTTP;->Lit15:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "request-remote-port"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/servlet/HTTP;->Lit14:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "request-remote-IP-address"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/servlet/HTTP;->Lit13:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "request-remote-socket-address"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/servlet/HTTP;->Lit12:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "request-local-host"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/servlet/HTTP;->Lit11:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "request-local-port"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/servlet/HTTP;->Lit10:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "request-local-IP-address"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/servlet/HTTP;->Lit9:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "request-local-socket-address"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/servlet/HTTP;->Lit8:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "request-scheme"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/servlet/HTTP;->Lit7:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "request-method"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/servlet/HTTP;->Lit6:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "error-response"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/servlet/HTTP;->Lit5:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "response-status"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/servlet/HTTP;->Lit4:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "response-content-type"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/servlet/HTTP;->Lit3:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "response-header"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/servlet/HTTP;->Lit2:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "Status"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/servlet/HTTP;->Lit1:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "Content-Type"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/servlet/HTTP;->Lit0:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/kawa/servlet/HTTP;

    invoke-direct {v0}, Lgnu/kawa/servlet/HTTP;-><init>()V

    sput-object v0, Lgnu/kawa/servlet/HTTP;->$instance:Lgnu/kawa/servlet/HTTP;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v1, Lgnu/kawa/servlet/HTTP;->$instance:Lgnu/kawa/servlet/HTTP;

    const/4 v2, 0x1

    sget-object v3, Lgnu/kawa/servlet/HTTP;->Lit2:Lgnu/mapping/SimpleSymbol;

    const/16 v4, 0x2002

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/servlet/HTTP;->response$Mnheader:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x2

    sget-object v3, Lgnu/kawa/servlet/HTTP;->Lit3:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/servlet/HTTP;->response$Mncontent$Mntype:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x3

    sget-object v3, Lgnu/kawa/servlet/HTTP;->Lit4:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/servlet/HTTP;->response$Mnstatus:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x5

    sget-object v3, Lgnu/kawa/servlet/HTTP;->Lit5:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/servlet/HTTP;->error$Mnresponse:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x7

    sget-object v3, Lgnu/kawa/servlet/HTTP;->Lit6:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/servlet/HTTP;->request$Mnmethod:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x8

    sget-object v3, Lgnu/kawa/servlet/HTTP;->Lit7:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/servlet/HTTP;->request$Mnscheme:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x9

    sget-object v3, Lgnu/kawa/servlet/HTTP;->Lit8:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/servlet/HTTP;->request$Mnlocal$Mnsocket$Mnaddress:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xa

    sget-object v3, Lgnu/kawa/servlet/HTTP;->Lit9:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/servlet/HTTP;->request$Mnlocal$MnIP$Mnaddress:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xb

    sget-object v3, Lgnu/kawa/servlet/HTTP;->Lit10:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/servlet/HTTP;->request$Mnlocal$Mnport:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xc

    sget-object v3, Lgnu/kawa/servlet/HTTP;->Lit11:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/servlet/HTTP;->request$Mnlocal$Mnhost:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xd

    sget-object v3, Lgnu/kawa/servlet/HTTP;->Lit12:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/servlet/HTTP;->request$Mnremote$Mnsocket$Mnaddress:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xe

    sget-object v3, Lgnu/kawa/servlet/HTTP;->Lit13:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/servlet/HTTP;->request$Mnremote$MnIP$Mnaddress:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xf

    sget-object v3, Lgnu/kawa/servlet/HTTP;->Lit14:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/servlet/HTTP;->request$Mnremote$Mnport:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x10

    sget-object v3, Lgnu/kawa/servlet/HTTP;->Lit15:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/servlet/HTTP;->request$Mnremote$Mnhost:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x11

    sget-object v3, Lgnu/kawa/servlet/HTTP;->Lit16:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/servlet/HTTP;->request$Mnheader:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x12

    sget-object v3, Lgnu/kawa/servlet/HTTP;->Lit17:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/servlet/HTTP;->request$Mnheader$Mnmap:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x13

    sget-object v3, Lgnu/kawa/servlet/HTTP;->Lit18:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/servlet/HTTP;->request$MnURI:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x14

    sget-object v3, Lgnu/kawa/servlet/HTTP;->Lit19:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/servlet/HTTP;->request$Mncontext$Mnpath:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x15

    sget-object v3, Lgnu/kawa/servlet/HTTP;->Lit20:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/servlet/HTTP;->request$Mnscript$Mnpath:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x16

    sget-object v3, Lgnu/kawa/servlet/HTTP;->Lit21:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/servlet/HTTP;->request$Mnlocal$Mnpath:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x17

    sget-object v3, Lgnu/kawa/servlet/HTTP;->Lit22:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/servlet/HTTP;->request$Mnpath:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x18

    sget-object v3, Lgnu/kawa/servlet/HTTP;->Lit23:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/servlet/HTTP;->request$Mnuri:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x19

    sget-object v3, Lgnu/kawa/servlet/HTTP;->Lit24:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/servlet/HTTP;->request$Mnurl:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x1a

    sget-object v3, Lgnu/kawa/servlet/HTTP;->Lit25:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/servlet/HTTP;->request$Mnpath$Mntranslated:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x1b

    sget-object v3, Lgnu/kawa/servlet/HTTP;->Lit26:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/servlet/HTTP;->request$Mnquery$Mnstring:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x1c

    sget-object v3, Lgnu/kawa/servlet/HTTP;->Lit27:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/servlet/HTTP;->request$Mnparameter:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x1e

    sget-object v3, Lgnu/kawa/servlet/HTTP;->Lit28:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/servlet/HTTP;->request$Mnparameters:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x1f

    sget-object v3, Lgnu/kawa/servlet/HTTP;->Lit29:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/servlet/HTTP;->request$Mnparameter$Mnmap:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x20

    sget-object v3, Lgnu/kawa/servlet/HTTP;->Lit30:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/servlet/HTTP;->request$Mnbody$Mnstring:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x21

    sget-object v3, Lgnu/kawa/servlet/HTTP;->Lit31:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/servlet/HTTP;->request$Mninput$Mnstream:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x22

    sget-object v3, Lgnu/kawa/servlet/HTTP;->Lit32:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/servlet/HTTP;->request$Mninput$Mnport:Lgnu/expr/ModuleMethod;

    sget-object v0, Lgnu/kawa/servlet/HTTP;->$instance:Lgnu/kawa/servlet/HTTP;

    invoke-virtual {v0}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static errorResponse(I)Ljava/lang/Object;
    .locals 1

    const-string v0, "Error"

    invoke-static {p0, v0}, Lgnu/kawa/servlet/HTTP;->errorResponse(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static errorResponse(ILjava/lang/String;)Ljava/lang/Object;
    .locals 5
    .parameter "code"
    .parameter "message"

    .prologue
    const/4 v4, 0x0

    .line 27
    sget-object v0, Lgnu/kawa/servlet/HTTP;->Lit1:Lgnu/mapping/SimpleSymbol;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "~d ~a"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-static {v4, v1}, Lgnu/kawa/functions/Format;->formatToString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgnu/kawa/servlet/HTTP;->responseHeader(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static request$MnURI()Lgnu/text/URIPath;
    .locals 1

    .prologue
    .line 68
    const-string v0, "request-URI"

    invoke-static {v0}, Lgnu/kawa/servlet/HttpRequestContext;->getInstance(Ljava/lang/String;)Lgnu/kawa/servlet/HttpRequestContext;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/kawa/servlet/HttpRequestContext;->getRequestURI()Ljava/net/URI;

    move-result-object v0

    invoke-static {v0}, Lgnu/text/URIPath;->makeURI(Ljava/lang/Object;)Lgnu/text/URIPath;

    move-result-object v0

    return-object v0
.end method

.method public static requestBodyString()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 109
    const-string v0, "request-body-string"

    invoke-static {v0}, Lgnu/kawa/servlet/HttpRequestContext;->getInstance(Ljava/lang/String;)Lgnu/kawa/servlet/HttpRequestContext;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/kawa/servlet/HttpRequestContext;->getRequestBodyChars()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static requestContextPath()Lgnu/text/URIPath;
    .locals 1

    .prologue
    .line 71
    const-string v0, "request-context-path"

    invoke-static {v0}, Lgnu/kawa/servlet/HttpRequestContext;->getInstance(Ljava/lang/String;)Lgnu/kawa/servlet/HttpRequestContext;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/kawa/servlet/HttpRequestContext;->getContextPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgnu/text/URIPath;->makeURI(Ljava/lang/Object;)Lgnu/text/URIPath;

    move-result-object v0

    return-object v0
.end method

.method public static requestHeader(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter "name"

    .prologue
    .line 62
    const-string v0, "request-header"

    invoke-static {v0}, Lgnu/kawa/servlet/HttpRequestContext;->getInstance(Ljava/lang/String;)Lgnu/kawa/servlet/HttpRequestContext;

    move-result-object v0

    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lgnu/kawa/servlet/HttpRequestContext;->getRequestHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static requestHeaderMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 65
    const-string v0, "request-header-map"

    invoke-static {v0}, Lgnu/kawa/servlet/HttpRequestContext;->getInstance(Ljava/lang/String;)Lgnu/kawa/servlet/HttpRequestContext;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/kawa/servlet/HttpRequestContext;->getRequestHeaders()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static requestInputPort()Lgnu/mapping/InPort;
    .locals 1

    .prologue
    .line 118
    const-string v0, "request-input-port"

    invoke-static {v0}, Lgnu/kawa/servlet/HttpRequestContext;->getInstance(Ljava/lang/String;)Lgnu/kawa/servlet/HttpRequestContext;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/kawa/servlet/HttpRequestContext;->getRequestPort()Lgnu/mapping/InPort;

    move-result-object v0

    return-object v0
.end method

.method public static requestInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 115
    const-string v0, "request-input-stream"

    invoke-static {v0}, Lgnu/kawa/servlet/HttpRequestContext;->getInstance(Ljava/lang/String;)Lgnu/kawa/servlet/HttpRequestContext;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/kawa/servlet/HttpRequestContext;->getRequestStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static requestLocal$MnIPAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string v0, "request-local-IP-address"

    invoke-static {v0}, Lgnu/kawa/servlet/HttpRequestContext;->getInstance(Ljava/lang/String;)Lgnu/kawa/servlet/HttpRequestContext;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/kawa/servlet/HttpRequestContext;->getLocalIPAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static requestLocalHost()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 47
    const-string v0, "request-local-host"

    invoke-static {v0}, Lgnu/kawa/servlet/HttpRequestContext;->getInstance(Ljava/lang/String;)Lgnu/kawa/servlet/HttpRequestContext;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/kawa/servlet/HttpRequestContext;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public static requestLocalPath()Lgnu/text/URIPath;
    .locals 1

    .prologue
    .line 75
    const-string v0, "request-local-path"

    invoke-static {v0}, Lgnu/kawa/servlet/HttpRequestContext;->getInstance(Ljava/lang/String;)Lgnu/kawa/servlet/HttpRequestContext;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/kawa/servlet/HttpRequestContext;->getLocalPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgnu/text/URIPath;->makeURI(Ljava/lang/Object;)Lgnu/text/URIPath;

    move-result-object v0

    return-object v0
.end method

.method public static requestLocalPort()I
    .locals 1

    .prologue
    .line 44
    const-string v0, "request-local-port"

    invoke-static {v0}, Lgnu/kawa/servlet/HttpRequestContext;->getInstance(Ljava/lang/String;)Lgnu/kawa/servlet/HttpRequestContext;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/kawa/servlet/HttpRequestContext;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public static requestLocalSocketAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .prologue
    .line 38
    const-string v0, "request-local-socket-address"

    invoke-static {v0}, Lgnu/kawa/servlet/HttpRequestContext;->getInstance(Ljava/lang/String;)Lgnu/kawa/servlet/HttpRequestContext;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/kawa/servlet/HttpRequestContext;->getLocalSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public static requestMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    const-string v0, "request-method"

    invoke-static {v0}, Lgnu/kawa/servlet/HttpRequestContext;->getInstance(Ljava/lang/String;)Lgnu/kawa/servlet/HttpRequestContext;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/kawa/servlet/HttpRequestContext;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static requestParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lgnu/kawa/servlet/HTTP;->requestParameter(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static requestParameter(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter "name"
    .parameter "default"

    .prologue
    .line 95
    const-string v1, "request-parameter"

    invoke-static {v1}, Lgnu/kawa/servlet/HttpRequestContext;->getInstance(Ljava/lang/String;)Lgnu/kawa/servlet/HttpRequestContext;

    move-result-object v1

    invoke-virtual {v1, p0}, Lgnu/kawa/servlet/HttpRequestContext;->getRequestParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, value:Ljava/lang/String;
    if-nez v0, :cond_1

    if-nez p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method public static requestParameterMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 106
    const-string v0, "request-parameter-map"

    invoke-static {v0}, Lgnu/kawa/servlet/HttpRequestContext;->getInstance(Ljava/lang/String;)Lgnu/kawa/servlet/HttpRequestContext;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/kawa/servlet/HttpRequestContext;->getRequestParameters()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static requestParameters(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .parameter "name"

    .prologue
    .line 101
    const-string v2, "request-parameters"

    invoke-static {v2}, Lgnu/kawa/servlet/HttpRequestContext;->getInstance(Ljava/lang/String;)Lgnu/kawa/servlet/HttpRequestContext;

    move-result-object v0

    .line 103
    .local v0, instance:Lgnu/kawa/servlet/HttpRequestContext;
    invoke-virtual {v0}, Lgnu/kawa/servlet/HttpRequestContext;->getRequestParameters()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :try_start_0
    check-cast v1, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .local v1, plist:Ljava/util/List;
    invoke-static {v1}, Lgnu/mapping/Values;->make(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 103
    .end local v1           #plist:Ljava/util/List;
    :catch_0
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "plist"

    const/4 v5, -0x2

    invoke-direct {v3, v2, v4, v5, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3
.end method

.method public static requestPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    const-string v0, "request-path"

    invoke-static {v0}, Lgnu/kawa/servlet/HttpRequestContext;->getInstance(Ljava/lang/String;)Lgnu/kawa/servlet/HttpRequestContext;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/kawa/servlet/HttpRequestContext;->getRequestPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgnu/text/URIPath;->makeURI(Ljava/lang/Object;)Lgnu/text/URIPath;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static requestPathTranslated()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    const-string v0, "request-path-translated"

    invoke-static {v0}, Lgnu/kawa/servlet/HttpRequestContext;->getInstance(Ljava/lang/String;)Lgnu/kawa/servlet/HttpRequestContext;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/kawa/servlet/HttpRequestContext;->getPathTranslated()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static requestQueryString()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 91
    const-string v1, "request-query-string"

    invoke-static {v1}, Lgnu/kawa/servlet/HttpRequestContext;->getInstance(Ljava/lang/String;)Lgnu/kawa/servlet/HttpRequestContext;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/kawa/servlet/HttpRequestContext;->getQueryString()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, query:Ljava/lang/String;
    if-nez v0, :cond_0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object v1

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method public static requestRemote$MnIPAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    const-string v0, "request-remote-IP-address"

    invoke-static {v0}, Lgnu/kawa/servlet/HttpRequestContext;->getInstance(Ljava/lang/String;)Lgnu/kawa/servlet/HttpRequestContext;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/kawa/servlet/HttpRequestContext;->getRemoteIPAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static requestRemoteHost()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 59
    const-string v0, "request-remote-host"

    invoke-static {v0}, Lgnu/kawa/servlet/HttpRequestContext;->getInstance(Ljava/lang/String;)Lgnu/kawa/servlet/HttpRequestContext;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/kawa/servlet/HttpRequestContext;->getRemoteHost()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public static requestRemotePort()I
    .locals 1

    .prologue
    .line 56
    const-string v0, "request-remote-port"

    invoke-static {v0}, Lgnu/kawa/servlet/HttpRequestContext;->getInstance(Ljava/lang/String;)Lgnu/kawa/servlet/HttpRequestContext;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/kawa/servlet/HttpRequestContext;->getRemotePort()I

    move-result v0

    return v0
.end method

.method public static requestRemoteSocketAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .prologue
    .line 50
    const-string v0, "request-remote-socket-address"

    invoke-static {v0}, Lgnu/kawa/servlet/HttpRequestContext;->getInstance(Ljava/lang/String;)Lgnu/kawa/servlet/HttpRequestContext;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/kawa/servlet/HttpRequestContext;->getRemoteSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public static requestScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const-string v0, "request-scheme"

    invoke-static {v0}, Lgnu/kawa/servlet/HttpRequestContext;->getInstance(Ljava/lang/String;)Lgnu/kawa/servlet/HttpRequestContext;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/kawa/servlet/HttpRequestContext;->getRequestScheme()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static requestScriptPath()Lgnu/text/URIPath;
    .locals 1

    .prologue
    .line 73
    const-string v0, "request-script-path"

    invoke-static {v0}, Lgnu/kawa/servlet/HttpRequestContext;->getInstance(Ljava/lang/String;)Lgnu/kawa/servlet/HttpRequestContext;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/kawa/servlet/HttpRequestContext;->getScriptPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgnu/text/URIPath;->makeURI(Ljava/lang/Object;)Lgnu/text/URIPath;

    move-result-object v0

    return-object v0
.end method

.method public static requestUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    invoke-static {}, Lgnu/kawa/servlet/HTTP;->requestPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static requestUrl()Ljava/lang/StringBuffer;
    .locals 1

    .prologue
    .line 85
    const-string v0, "request-path"

    invoke-static {v0}, Lgnu/kawa/servlet/HttpRequestContext;->getInstance(Ljava/lang/String;)Lgnu/kawa/servlet/HttpRequestContext;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/kawa/servlet/HttpRequestContext;->getRequestURLBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static responseContentType(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "type"

    .prologue
    .line 18
    sget-object v0, Lgnu/kawa/servlet/HTTP;->Lit0:Lgnu/mapping/SimpleSymbol;

    invoke-static {v0, p0}, Lgnu/kawa/servlet/HTTP;->responseHeader(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static responseHeader(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 14
    sget-object v0, Lgnu/kawa/xml/MakeResponseHeader;->makeResponseHeader:Lgnu/kawa/xml/MakeResponseHeader;

    .line 16
    invoke-virtual {v0, p0, p1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static responseStatus(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lgnu/kawa/servlet/HTTP;->responseStatus(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static responseStatus(ILjava/lang/String;)Ljava/lang/Object;
    .locals 5
    .parameter "code"
    .parameter "message"

    .prologue
    const/4 v4, 0x0

    .line 21
    sget-object v0, Lgnu/kawa/servlet/HTTP;->Lit1:Lgnu/mapping/SimpleSymbol;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    if-nez p1, :cond_0

    .line 23
    const-string v2, "~d "

    :goto_0
    aput-object v2, v1, v4

    const/4 v2, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-static {v4, v1}, Lgnu/kawa/functions/Format;->formatToString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgnu/kawa/servlet/HTTP;->responseHeader(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v2, "~d ~a"

    goto :goto_0
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_0

    .line 118
    :pswitch_0
    invoke-super {p0, p1}, Lgnu/expr/ModuleBody;->apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    .line 32
    :pswitch_1
    invoke-static {}, Lgnu/kawa/servlet/HTTP;->requestMethod()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 35
    :pswitch_2
    invoke-static {}, Lgnu/kawa/servlet/HTTP;->requestScheme()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 38
    :pswitch_3
    invoke-static {}, Lgnu/kawa/servlet/HTTP;->requestLocalSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    goto :goto_0

    .line 41
    :pswitch_4
    invoke-static {}, Lgnu/kawa/servlet/HTTP;->requestLocal$MnIPAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 44
    :pswitch_5
    invoke-static {}, Lgnu/kawa/servlet/HTTP;->requestLocalPort()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 47
    :pswitch_6
    invoke-static {}, Lgnu/kawa/servlet/HTTP;->requestLocalHost()Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_0

    .line 50
    :pswitch_7
    invoke-static {}, Lgnu/kawa/servlet/HTTP;->requestRemoteSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    goto :goto_0

    .line 53
    :pswitch_8
    invoke-static {}, Lgnu/kawa/servlet/HTTP;->requestRemote$MnIPAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 56
    :pswitch_9
    invoke-static {}, Lgnu/kawa/servlet/HTTP;->requestRemotePort()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 59
    :pswitch_a
    invoke-static {}, Lgnu/kawa/servlet/HTTP;->requestRemoteHost()Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_0

    .line 65
    :pswitch_b
    invoke-static {}, Lgnu/kawa/servlet/HTTP;->requestHeaderMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 68
    :pswitch_c
    invoke-static {}, Lgnu/kawa/servlet/HTTP;->request$MnURI()Lgnu/text/URIPath;

    move-result-object v0

    goto :goto_0

    .line 71
    :pswitch_d
    invoke-static {}, Lgnu/kawa/servlet/HTTP;->requestContextPath()Lgnu/text/URIPath;

    move-result-object v0

    goto :goto_0

    .line 73
    :pswitch_e
    invoke-static {}, Lgnu/kawa/servlet/HTTP;->requestScriptPath()Lgnu/text/URIPath;

    move-result-object v0

    goto :goto_0

    .line 75
    :pswitch_f
    invoke-static {}, Lgnu/kawa/servlet/HTTP;->requestLocalPath()Lgnu/text/URIPath;

    move-result-object v0

    goto :goto_0

    .line 78
    :pswitch_10
    invoke-static {}, Lgnu/kawa/servlet/HTTP;->requestPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 82
    :pswitch_11
    invoke-static {}, Lgnu/kawa/servlet/HTTP;->requestUri()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 85
    :pswitch_12
    invoke-static {}, Lgnu/kawa/servlet/HTTP;->requestUrl()Ljava/lang/StringBuffer;

    move-result-object v0

    goto :goto_0

    .line 88
    :pswitch_13
    invoke-static {}, Lgnu/kawa/servlet/HTTP;->requestPathTranslated()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 91
    :pswitch_14
    invoke-static {}, Lgnu/kawa/servlet/HTTP;->requestQueryString()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 106
    :pswitch_15
    invoke-static {}, Lgnu/kawa/servlet/HTTP;->requestParameterMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 109
    :pswitch_16
    invoke-static {}, Lgnu/kawa/servlet/HTTP;->requestBodyString()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 115
    :pswitch_17
    invoke-static {}, Lgnu/kawa/servlet/HTTP;->requestInputStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    .line 118
    :pswitch_18
    invoke-static {}, Lgnu/kawa/servlet/HTTP;->requestInputPort()Lgnu/mapping/InPort;

    move-result-object v0

    goto :goto_0

    .line -1
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
    .end packed-switch
.end method

.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    iget v1, p1, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v1, :sswitch_data_0

    .line 101
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1

    .line 18
    :sswitch_0
    invoke-static {p2}, Lgnu/kawa/servlet/HTTP;->responseContentType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 21
    :sswitch_1
    :try_start_0
    move-object v0, p2

    check-cast v0, Ljava/lang/Number;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    invoke-static {v1}, Lgnu/kawa/servlet/HTTP;->responseStatus(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 27
    :sswitch_2
    :try_start_1
    move-object v0, p2

    check-cast v0, Ljava/lang/Number;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    invoke-static {v1}, Lgnu/kawa/servlet/HTTP;->errorResponse(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 62
    :sswitch_3
    invoke-static {p2}, Lgnu/kawa/servlet/HTTP;->requestHeader(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 95
    :sswitch_4
    if-nez p2, :cond_0

    move-object v1, v2

    :goto_1
    invoke-static {v1}, Lgnu/kawa/servlet/HTTP;->requestParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 101
    :sswitch_5
    if-nez p2, :cond_1

    move-object v1, v2

    :goto_2
    invoke-static {v1}, Lgnu/kawa/servlet/HTTP;->requestParameters(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 21
    :catch_0
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "response-status"

    invoke-direct {v2, v1, v3, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 27
    :catch_1
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "error-response"

    invoke-direct {v2, v1, v3, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line -1
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x5 -> :sswitch_2
        0x11 -> :sswitch_3
        0x1c -> :sswitch_4
        0x1e -> :sswitch_5
    .end sparse-switch
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    iget v1, p1, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v1, :sswitch_data_0

    .line 95
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1

    .line 14
    :sswitch_0
    invoke-static {p2, p3}, Lgnu/kawa/servlet/HTTP;->responseHeader(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 21
    :sswitch_1
    :try_start_0
    move-object v0, p2

    check-cast v0, Ljava/lang/Number;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez p3, :cond_0

    :goto_1
    invoke-static {v1, v2}, Lgnu/kawa/servlet/HTTP;->responseStatus(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 27
    :sswitch_2
    :try_start_1
    move-object v0, p2

    check-cast v0, Ljava/lang/Number;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    if-nez p3, :cond_1

    :goto_2
    invoke-static {v1, v2}, Lgnu/kawa/servlet/HTTP;->errorResponse(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 95
    :sswitch_3
    if-nez p2, :cond_2

    move-object v1, v2

    :goto_3
    invoke-static {v1, p3}, Lgnu/kawa/servlet/HTTP;->requestParameter(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 21
    :catch_0
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "response-status"

    invoke-direct {v2, v1, v3, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 27
    :catch_1
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "error-response"

    invoke-direct {v2, v1, v3, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line -1
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_1
        0x5 -> :sswitch_2
        0x1c -> :sswitch_3
    .end sparse-switch
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_0

    .line 32
    :pswitch_0
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 118
    :goto_0
    return v0

    :pswitch_1
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 115
    :pswitch_2
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 109
    :pswitch_3
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 106
    :pswitch_4
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 91
    :pswitch_5
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 88
    :pswitch_6
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 85
    :pswitch_7
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 82
    :pswitch_8
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 78
    :pswitch_9
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 75
    :pswitch_a
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 73
    :pswitch_b
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 71
    :pswitch_c
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 68
    :pswitch_d
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 65
    :pswitch_e
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 59
    :pswitch_f
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 56
    :pswitch_10
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 53
    :pswitch_11
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 50
    :pswitch_12
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 47
    :pswitch_13
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 44
    :pswitch_14
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 41
    :pswitch_15
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 38
    :pswitch_16
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto/16 :goto_0

    .line 35
    :pswitch_17
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto/16 :goto_0

    .line 32
    :pswitch_18
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto/16 :goto_0

    .line -1
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v0, :sswitch_data_0

    .line 18
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 101
    :goto_0
    return v0

    :sswitch_0
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 95
    :sswitch_1
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 62
    :sswitch_2
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 27
    :sswitch_3
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 21
    :sswitch_4
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 18
    :sswitch_5
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line -1
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_5
        0x3 -> :sswitch_4
        0x5 -> :sswitch_3
        0x11 -> :sswitch_2
        0x1c -> :sswitch_1
        0x1e -> :sswitch_0
    .end sparse-switch
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v0, :sswitch_data_0

    .line 14
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 95
    :goto_0
    return v0

    :sswitch_0
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p4, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 27
    :sswitch_1
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p4, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 21
    :sswitch_2
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p4, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 14
    :sswitch_3
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p4, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line -1
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x3 -> :sswitch_2
        0x5 -> :sswitch_1
        0x1c -> :sswitch_0
    .end sparse-switch
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .locals 1
    .parameter "$ctx"

    .prologue
    .line 1
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 14
    .local v0, $result:Lgnu/lists/Consumer;
    return-void
.end method
