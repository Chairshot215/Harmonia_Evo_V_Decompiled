.class public Lcom/google/appinventor/components/runtime/FusiontablesControl;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->EXPERIMENTAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>A non-visible component that communicates with Google Fusion Tables. Fusion Tables lets you store, share, query and visualize data tables; this component lets you query, create, and modify these tables, using the <a href=\"http://code.google.com/apis/fusiontables/docs/developers_reference.html\" target=\"_blank\">Fusion Tables SQL API</a>.</p><p>To use the component, define a query, call DoQuery to execute the query, and GotResult will hand you the result when it is ready.</p><p>Note that you do not need to worry about encoding the query, but you do have to make sure it follows the syntax described in the reference manual, which means that things like capitalization for names of columns matters, and that single quotes need to be used around column names if there are spaces in them.</p><p>The results of the query will generally be returned in CSV format, and can be converted to list format using the \"list from csv table\" or \"list from csv row\" blocks.</p>"
    iconName = "images/fusiontables.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET,android.permission.ACCOUNT_MANAGER,android.permission.MANAGE_ACCOUNTS,android.permission.GET_ACCOUNTS,android.permission.USE_CREDENTIALS"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/FusiontablesControl$1;,
        Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessor;
    }
.end annotation


# static fields
.field private static final DEFAULT_QUERY:Ljava/lang/String; = "show tables"

.field private static final DIALOG_TEXT:Ljava/lang/String; = "Choose an account to access FusionTables"

.field private static final FUSIONTABLES_SERVICE:Ljava/lang/String; = "fusiontables"

.field private static final FUSION_QUERY_URL:Ljava/lang/String; = "http://www.google.com/fusiontables/api/query"

.field private static final LOG_TAG:Ljava/lang/String; = "fusion"

.field private static final SERVER_TIMEOUT_MS:I = 0x7530


# instance fields
.field private final activity:Landroid/app/Activity;

.field private query:Ljava/lang/String;

.field private final requestHelper:Lcom/google/appinventor/components/runtime/util/IClientLoginHelper;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->activity:Landroid/app/Activity;

    const-string v0, "Choose an account to access FusionTables"

    const-string v1, "fusiontables"

    invoke-direct {p0, v0, v1}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->createClientLoginHelper(Ljava/lang/String;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/IClientLoginHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->requestHelper:Lcom/google/appinventor/components/runtime/util/IClientLoginHelper;

    const-string v0, "show tables"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->query:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->genFusiontablesQuery(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Lcom/google/appinventor/components/runtime/util/IClientLoginHelper;
    .locals 1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->requestHelper:Lcom/google/appinventor/components/runtime/util/IClientLoginHelper;

    return-object v0
.end method

.method private createClientLoginHelper(Ljava/lang/String;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/IClientLoginHelper;
    .locals 3

    const/16 v2, 0x7530

    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    new-instance v1, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2, p2, p1, v0}, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/client/HttpClient;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private genFusiontablesQuery(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    const-string v1, "http://www.google.com/fusiontables/api/query"

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sql"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    const-string v1, "application/x-www-form-urlencoded"

    invoke-virtual {v2, v1}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;->setContentType(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    return-object v0
.end method


# virtual methods
.method public DoQuery()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Send the query to the Fusion Tables server."
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->requestHelper:Lcom/google/appinventor/components/runtime/util/IClientLoginHelper;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessor;-><init>(Lcom/google/appinventor/components/runtime/FusiontablesControl;Lcom/google/appinventor/components/runtime/FusiontablesControl$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->query:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessor;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "DoQuery"

    const/4 v2, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public GotResult(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that the Fusion Tables query has finished processing, with a result.  The result of the query will generally be returned in CSV format, and can be converted to list format using the \"list from csv table\" or \"list from csv row\" blocks."
    .end annotation

    const-string v0, "GotResult"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Query()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The query to send to the Fusion Tables API. <p>For legal query formats and examples, see the Fusion Tables SQL API reference manual. <p>Note that you do not need to worry about encoding the query, but you do have to make sure it follows the syntax described in the reference manual, which means that things like capitalization for names of columns matters, and that single quotes need to be used around column names if there are spaces in them. "
    .end annotation

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->query:Ljava/lang/String;

    return-object v0
.end method

.method public Query(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "show tables"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->query:Ljava/lang/String;

    return-void
.end method
