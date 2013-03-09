.class public Lcom/htc/cscore/restapi/proxy/RestServicesProxy;
.super Lcom/htc/cscore/restapi/proxy/ClientRestApi;
.source "RestServicesProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/restapi/proxy/RestServicesProxy$StreamablePbReliableMessages;
    }
.end annotation


# static fields
.field public static LANGUAGE_ID_ENGLISH:Ljava/lang/String;


# instance fields
.field protected DevServerMode:Z

.field public EmailAddress:Ljava/lang/String;

.field protected HandsetDeviceId:Ljava/util/UUID;

.field protected Password:Ljava/lang/String;

.field private _clientVersionString:Ljava/lang/String;

.field private _cmsUri:Ljava/lang/String;

.field protected deviceToken:Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "en"

    sput-object v0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->LANGUAGE_ID_ENGLISH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/util/UUID;)V
    .locals 1

    invoke-direct {p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->DevServerMode:Z

    iput-object p4, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->HandsetDeviceId:Ljava/util/UUID;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->deviceToken:Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->SetServerName(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/util/UUID;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->DevServerMode:Z

    iput-object p4, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->HandsetDeviceId:Ljava/util/UUID;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->deviceToken:Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;

    iput-object p5, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->SetServerName(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/util/UUID;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->DevServerMode:Z

    iput-object p4, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->HandsetDeviceId:Ljava/util/UUID;

    iput-object p5, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->EmailAddress:Ljava/lang/String;

    iput-object p6, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->Password:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->deviceToken:Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;

    iput-object p7, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->mContext:Landroid/content/Context;

    :try_start_0
    invoke-virtual {p7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->getClientVersionString(Ljava/lang/String;Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_clientVersionString:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->SetServerName(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "RestServicesProxy.ctor.getClientVersionString"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ""

    iput-object v1, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_clientVersionString:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/util/UUID;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;)V
    .locals 3

    invoke-direct {p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->DevServerMode:Z

    iput-object p4, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->HandsetDeviceId:Ljava/util/UUID;

    iput-object p5, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->EmailAddress:Ljava/lang/String;

    iput-object p6, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->Password:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->deviceToken:Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;

    :try_start_0
    invoke-static {p7, p8}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->getClientVersionString(Ljava/lang/String;Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_clientVersionString:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->SetServerName(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "RestServicesProxy.ctor.getClientVersionString"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ""

    iput-object v1, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_clientVersionString:Ljava/lang/String;

    goto :goto_0
.end method

.method private static _IsNullOrEmpty(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static _getAuthKey(Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;->AuthKey:Ljava/lang/String;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;->AuthKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;->AuthKey:Ljava/lang/String;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;->AuthKey:Ljava/lang/String;

    goto :goto_0
.end method

.method private _loginIfNeeded()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->deviceToken:Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->EmailAddress:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->HandsetDeviceId:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->Password:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/cscore/util/CSUtil;->getServerTime(Landroid/content/Context;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->getAuthTicket(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_clientVersionString:Ljava/lang/String;

    invoke-super {p0, v0, v1, v2, v3}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->HandsetLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->deviceToken:Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;

    :cond_0
    return-void
.end method

.method private _nullableToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private _sendRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v1, Lcom/htc/cscore/restapi/request/JSONCloudRequest$StreamableString;

    const-string v2, "\\\\"

    const-string v3, "\\"

    invoke-virtual {p3, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/cscore/restapi/request/JSONCloudRequest$StreamableString;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/htc/cscore/restapi/request/JSONCloudRequest$StreamableString;

    invoke-direct {v0}, Lcom/htc/cscore/restapi/request/JSONCloudRequest$StreamableString;-><init>()V

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->sendAuthenticatedRequestViaStreamables(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Lcom/htc/cscore/restapi/request/JSONCloudRequest$WriteStreamable;Lcom/htc/cscore/restapi/request/JSONCloudRequest$ReadStreamable;)V

    :goto_0
    iget-object v2, v0, Lcom/htc/cscore/restapi/request/JSONCloudRequest$StreamableString;->_s:Ljava/lang/String;

    return-object v2

    :cond_0
    const-string v2, ""

    invoke-static {p1, p2, v2, v1, v0}, Lcom/htc/cscore/restapi/request/JSONCloudRequest;->sendHttpRequestViaStreamables(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$WriteStreamable;Lcom/htc/cscore/restapi/request/JSONCloudRequest$ReadStreamable;)V

    goto :goto_0
.end method

.method public static getRegionForAccount(Ljava/lang/String;ZLjava/lang/String;)Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    new-instance v0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;

    const-string v1, ""

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/util/UUID;)V

    invoke-virtual {v0, p2}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->GetRegionForAccount(Ljava/lang/String;)Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;

    move-result-object v1

    return-object v1
.end method

.method public static getRegions(Ljava/lang/String;Z)Lcom/htc/cscore/restapi/json/SearchResults;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/htc/cscore/restapi/json/SearchResults",
            "<",
            "Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;

    const-string v1, ""

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/util/UUID;)V

    const-string v1, "Name"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->GetRegions(Ljava/lang/String;Ljava/lang/Boolean;II)Lcom/htc/cscore/restapi/json/SearchResults;

    move-result-object v1

    return-object v1
.end method

.method private sendAuthenticatedRequestViaStreamables(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Lcom/htc/cscore/restapi/request/JSONCloudRequest$WriteStreamable;Lcom/htc/cscore/restapi/request/JSONCloudRequest$ReadStreamable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    invoke-direct {p0}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_loginIfNeeded()V

    :try_start_0
    iget-object v2, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->deviceToken:Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;

    invoke-static {v2}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_getAuthKey(Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, p2, v2, p3, p4}, Lcom/htc/cscore/restapi/request/JSONCloudRequest;->sendHttpRequestViaStreamables(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$WriteStreamable;Lcom/htc/cscore/restapi/request/JSONCloudRequest$ReadStreamable;)V
    :try_end_0
    .catch Lcom/htc/cscore/restapi/exceptions/ClientNotAuthorizedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->EmailAddress:Ljava/lang/String;

    invoke-static {v2}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_IsNullOrEmpty(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->Password:Ljava/lang/String;

    invoke-static {v2}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_IsNullOrEmpty(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    throw v0

    :cond_2
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->deviceToken:Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private validateCorrectCredentials(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/ClientInvalidCredentialsException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Lcom/htc/cscore/restapi/exceptions/ClientInvalidCredentialsException;

    const-string v1, "Null email address"

    invoke-direct {v0, v1}, Lcom/htc/cscore/restapi/exceptions/ClientInvalidCredentialsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Lcom/htc/cscore/restapi/exceptions/ClientInvalidCredentialsException;

    const-string v1, "Null password"

    invoke-direct {v0, v1}, Lcom/htc/cscore/restapi/exceptions/ClientInvalidCredentialsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method


# virtual methods
.method public GetFriendRecommendedLikesComments(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationStatus;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    const/4 v11, 0x0

    const/4 v10, 0x1

    const-string v7, "%s/Services/RecommendCommentLike.svc/RecommendCommentLike/GetFriendRecommendedLikesComments/?friendRequestId=%s&appType=%s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v9, v8, v11

    aput-object p1, v8, v10

    const/4 v9, 0x2

    aput-object p2, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :try_start_0
    const-string v4, ""

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v7, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->GET:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v6, v7, v3}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Lcom/htc/cscore/restapi/proxy/RestServicesProxy$1;

    invoke-direct {v7, p0}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy$1;-><init>(Lcom/htc/cscore/restapi/proxy/RestServicesProxy;)V

    invoke-virtual {v7}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    const-class v7, Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationStatus;

    invoke-static {v5, v2, v7, v1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v5, :cond_0

    const/4 v5, 0x0

    :cond_0
    return-object v5

    :catch_0
    move-exception v0

    const-string v7, "GetFriendRecommendedLikesComments (%s)"

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v6, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p0, v7, v0, v8}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v7

    throw v7
.end method

.method public GetMyCommentAndLikeCounts(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/cscore/restapi/proxy/WebClasses$WCommentAndLikeCounts;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    const/4 v11, 0x0

    const/4 v10, 0x1

    const-string v7, "%s/Services/RecommendCommentLike.svc/RecommendCommentLike/GetMyCommentAndLikeCounts/?appTypes=%s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v9, v8, v11

    invoke-direct {p0, p1}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_nullableToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :try_start_0
    const-string v4, ""

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v7, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->GET:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v6, v7, v3}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    new-instance v7, Lcom/htc/cscore/restapi/proxy/RestServicesProxy$3;

    invoke-direct {v7, p0}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy$3;-><init>(Lcom/htc/cscore/restapi/proxy/RestServicesProxy;)V

    invoke-virtual {v7}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    const-class v7, Lcom/htc/cscore/restapi/proxy/WebClasses$WCommentAndLikeCounts;

    invoke-static {v5, v2, v7, v1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v5, :cond_0

    const/4 v5, 0x0

    :cond_0
    return-object v5

    :catch_0
    move-exception v0

    const-string v7, "GetMyCommentsAndLikes (%s)"

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v6, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p0, v7, v0, v8}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v7

    throw v7
.end method

.method public GetMyCommentsAndLikes(Ljava/lang/String;Ljava/lang/String;ZII)Lcom/htc/cscore/restapi/json/SearchResults;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZII)",
            "Lcom/htc/cscore/restapi/json/SearchResults",
            "<",
            "Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationStatus;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    const-string v8, "MyHTC"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "GetMyCommentsAndLikes: appTypes = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "sortBy = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "sortDescending = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "start = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p4

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "count"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p5

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "%s/Services/RecommendCommentLike.svc/RecommendCommentLike/GetMyCommentsAndLikes/?appTypes=%s&sortBy=%s&sortDescending=%s&start=%s&count=%s"

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-direct {p0, p1}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_nullableToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-direct {p0, p2}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_nullableToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_nullableToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x4

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_nullableToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x5

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_nullableToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    :try_start_0
    const-string v5, ""

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v8, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->GET:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v7, v8, v4}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/htc/cscore/restapi/json/SearchResults;

    invoke-direct {v6}, Lcom/htc/cscore/restapi/json/SearchResults;-><init>()V

    new-instance v8, Lcom/htc/cscore/restapi/proxy/RestServicesProxy$2;

    invoke-direct {v8, p0}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy$2;-><init>(Lcom/htc/cscore/restapi/proxy/RestServicesProxy;)V

    invoke-virtual {v8}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    const-class v8, Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationStatus;

    invoke-static {v6, v3, v8, v2}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/cscore/restapi/json/SearchResults;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v6, :cond_0

    const/4 v6, 0x0

    :cond_0
    return-object v6

    :catch_0
    move-exception v1

    const-string v8, "GetMyCommentsAndLikes (%s)"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v7, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {p0, v8, v1, v9}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v8

    throw v8
.end method

.method public HandsetLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    new-instance v0, Lcom/htc/cscore/restapi/exceptions/CSException;

    const-string v1, "RestServicesProxy.HandsetLogin - this function should not be called directly. Please use the HandsetLogin function which specifies the packageName and PackageManager"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/htc/cscore/restapi/exceptions/CSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public HandsetLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;)Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    :try_start_0
    invoke-static {p4, p5}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->getClientVersionString(Ljava/lang/String;Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v2

    invoke-super {p0, p1, p2, p3, v2}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->HandsetLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;
    :try_end_0
    .catch Lcom/htc/cscore/restapi/exceptions/CSException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v1

    new-instance v2, Lcom/htc/cscore/restapi/exceptions/CSException;

    const-string v3, "HandsetLogin"

    const-string v4, "RestServicesUtilities._TranslateException"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v4, v1, v5}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->_TranslateException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Ljava/lang/Exception;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/htc/cscore/restapi/exceptions/CSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public SetServerName(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    iput-boolean p3, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->DevServerMode:Z

    const-string v1, "http"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    move v0, v2

    :goto_0
    if-eqz p3, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_3

    const-string v1, "http://"

    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ":8081"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    :cond_0
    :goto_2
    if-eqz p2, :cond_1

    const-string v1, "http"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    move v0, v2

    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_7

    const-string v1, "https://"

    :goto_4
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->removeTrailingSeparator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_cmsUri:Ljava/lang/String;

    :cond_1
    return-void

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    const-string v1, ""

    goto :goto_1

    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_5

    const-string v1, "https://"

    :goto_5
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->removeTrailingSeparator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    goto :goto_2

    :cond_5
    const-string v1, ""

    goto :goto_5

    :cond_6
    move v0, v3

    goto :goto_3

    :cond_7
    const-string v1, ""

    goto :goto_4
.end method

.method protected _authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_sendRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected _webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/htc/cscore/restapi/exceptions/CSException;

    if-ne v0, v1, :cond_0

    check-cast p2, Lcom/htc/cscore/restapi/exceptions/CSException;

    :goto_0
    return-object p2

    :cond_0
    new-instance v0, Lcom/htc/cscore/restapi/exceptions/CSException;

    const-string v1, "RestServicesUtilities._TranslateException"

    invoke-static {v1, p2, p3}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->_TranslateException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Ljava/lang/Exception;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/htc/cscore/restapi/exceptions/CSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p2, v0

    goto :goto_0
.end method

.method protected _webRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_sendRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bindHandset(Lcom/htc/cscore/restapi/proxy/WebClasses$WBindRequest;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    const/4 v6, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->EmailAddress:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->Password:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->validateCorrectCredentials(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->Password:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/cscore/util/CSUtil;->getServerTime(Landroid/content/Context;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->getAuthTicket(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->BindHandsetToAccount(Lcom/htc/cscore/restapi/proxy/WebClasses$WBindRequest;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/htc/cscore/restapi/exceptions/ClientInvalidCredentialsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    const-string v2, "bindHandset (%s,%s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->EmailAddress:Ljava/lang/String;

    aput-object v5, v3, v4

    iget-object v4, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->HandsetDeviceId:Ljava/util/UUID;

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v2, v1, v3}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v2

    throw v2
.end method

.method public createAccount(Ljava/lang/String;Ljava/lang/String;Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/UUID;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    new-instance v3, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice;

    invoke-direct {v3}, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice;->PhoneNumberString:Ljava/lang/String;

    invoke-static {p7}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v4

    iput-object v4, v3, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice;->HandsetDeviceId:Ljava/util/UUID;

    sget-object v4, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;->Unknown:Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;

    iput-object v4, v3, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice;->ForceRingState:Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;

    sget-object v4, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;->Unknown:Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;

    iput-object v4, v3, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice;->RemoteDataWipeState:Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;

    sget-object v4, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;->Unknown:Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;

    iput-object v4, v3, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice;->LockedHandsetState:Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;

    sget-object v4, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;->Unknown:Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;

    iput-object v4, v3, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice;->MessageForwardStateEmail:Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;

    sget-object v4, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;->Unknown:Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;

    iput-object v4, v3, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice;->MessageForwardStatePhone:Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;

    sget-object v4, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;->Unknown:Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;

    iput-object v4, v3, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice;->CallForwardingState:Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice;->BindRequestId:Ljava/util/UUID;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice;->AlternateNumber:Ljava/lang/String;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice;->MessageForwardEmailAddress:Ljava/lang/String;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice;->MessageForwardPhoneNumber:Ljava/lang/String;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice;->CallForwardPhoneNumber:Ljava/lang/String;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice;->LockHandsetPin:Ljava/lang/String;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice;->LockHandsetMessage:Ljava/lang/String;

    iput-object p5, v3, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice;->AreaCode:Ljava/lang/String;

    iput-object p8, v3, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice;->CountryCode:Ljava/lang/String;

    sget-object v4, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WResyncStateType;->ResyncStateInSync:Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WResyncStateType;

    iput-object v4, v3, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice;->ResyncState:Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WResyncStateType;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice;->ResyncStateDate:Ljava/util/Date;

    new-instance v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;

    invoke-direct {v0}, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;-><init>()V

    iget-object v4, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->EmailAddress:Ljava/lang/String;

    iput-object v4, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;->EmailAddress:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->Password:Ljava/lang/String;

    invoke-static {v4}, Lcom/htc/cscore/restapi/utility/Whirlpool;->WhirlPoolHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;->NewPassword:Ljava/lang/String;

    const/4 v4, 0x0

    iput-object v4, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;->AuthTicket:Ljava/lang/String;

    sget-object v4, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountStatusType;->Active:Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountStatusType;

    iput-object v4, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;->AccountStatus:Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountStatusType;

    iput-object p1, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;->FirstName:Ljava/lang/String;

    iput-object p2, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;->LastName:Ljava/lang/String;

    const/4 v4, 0x0

    iput-object v4, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;->Region:Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;

    iget-object v4, p3, Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;->Id:Ljava/util/UUID;

    iput-object v4, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;->RegionId:Ljava/util/UUID;

    iput-object p4, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;->LanguageCode:Ljava/lang/String;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;->VirtualDevices:Ljava/util/List;

    iget-object v4, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;->VirtualDevices:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    iput-object v4, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;->DateOfBirth:Ljava/util/Date;

    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;->SendEmailAboutProducts:Z

    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;->CanShareUsageInfo:Z

    const/4 v4, 0x0

    iput-object v4, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;->TellHTCId:Ljava/lang/String;

    const-string v4, "What is your favorite sport?"

    iput-object v4, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;->SecurityQuestion:Ljava/lang/String;

    const-string v4, "Football"

    iput-object v4, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;->SecurityAnswer:Ljava/lang/String;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    iput-object v4, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;->CreateTime:Ljava/util/Date;

    const/4 v4, 0x0

    iput-object v4, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;->VerifyEmailId:Ljava/util/UUID;

    const/4 v4, 0x0

    iput-object v4, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;->IpAddress:Ljava/lang/String;

    const/4 v4, 0x0

    iput-object v4, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;->CaptchaChallengeField:Ljava/lang/String;

    const/4 v4, 0x0

    iput-object v4, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;->CaptchaResponseField:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->CreateAccountFromHandset(Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public deleteCSAccount(Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v8, 0x1

    const-string v5, "%s/Services/AccountsExtn.svc/Accounts/Delete/"

    new-array v6, v8, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :try_start_0
    const-string v3, ""

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    move-object v0, v3

    check-cast v0, Lorg/json/JSONObject;

    move-object v5, v0

    const-string v6, "AuthTicket"

    invoke-static {p1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->POST:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v4, v5, v2}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    const-string v5, "deleteCSAccount (%s)"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v4, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v5, v1, v6}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v5

    throw v5
.end method

.method public getAllHtcHubContent(Ljava/lang/String;)Lcom/htc/cscore/restapi/json/HtcHubContent;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    move-object v8, v2

    move-object v9, v2

    move-object v10, v2

    move-object v11, v2

    move-object v12, v2

    invoke-virtual/range {v0 .. v12}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->getFilteredHtcHubContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/htc/cscore/restapi/json/HtcHubContent;

    move-result-object v0

    return-object v0
.end method

.method public getAllSettingForProductOption()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/restapi/proxy/WebClasses$WSetting;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    const/4 v11, 0x0

    const/4 v10, 0x1

    const-string v7, "%s/Services/SimpleSettings.svc/SimpleSettings/GetSettings/"

    new-array v8, v10, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :try_start_0
    const-string v4, ""

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v7, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->POST:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v6, v7, v3}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Lcom/htc/cscore/restapi/proxy/RestServicesProxy$6;

    invoke-direct {v7, p0}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy$6;-><init>(Lcom/htc/cscore/restapi/proxy/RestServicesProxy;)V

    invoke-virtual {v7}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy$6;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    const-class v7, Lcom/htc/cscore/restapi/proxy/WebClasses$WSetting;

    invoke-static {v5, v2, v7, v1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v5, :cond_0

    const/4 v5, 0x0

    :cond_0
    return-object v5

    :catch_0
    move-exception v0

    const-string v7, "getAllSettingForProductOption (%s)"

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v6, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p0, v7, v0, v8}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v7

    throw v7
.end method

.method public getCmsServerUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_cmsUri:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentLegalDocsID(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    const/4 v11, 0x0

    const/4 v10, 0x1

    const-string v7, "%s/Services/LegalDocs.svc/LegalDocs/Current/%s/%s/Id/"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v9, v8, v11

    aput-object p1, v8, v10

    const/4 v9, 0x2

    aput-object p2, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    :try_start_0
    const-string v4, ""

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v7, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->GET:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v5, v7, v3}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_webRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/util/ArrayList;

    const/4 v7, 0x4

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v7, Lcom/htc/cscore/restapi/proxy/RestServicesProxy$8;

    invoke-direct {v7, p0}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy$8;-><init>(Lcom/htc/cscore/restapi/proxy/RestServicesProxy;)V

    invoke-virtual {v7}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy$8;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    const-class v7, Ljava/util/List;

    invoke-static {v6, v2, v7, v1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v6, :cond_0

    const/4 v6, 0x0

    :cond_0
    return-object v6

    :catch_0
    move-exception v0

    const-string v7, "getCurrentLegalDocsID (%s)"

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v5, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p0, v7, v0, v8}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v7

    throw v7
.end method

.method public getEmailForProductOption()Ljava/lang/Boolean;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    const/4 v11, 0x0

    const/4 v10, 0x1

    const-string v7, "%s/Services/Accounts.svc/Accounts/SendEmailAboutProducts/"

    new-array v8, v10, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :try_start_0
    const-string v4, ""

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v7, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->GET:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v6, v7, v3}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5}, Ljava/lang/String;-><init>()V

    new-instance v7, Lcom/htc/cscore/restapi/proxy/RestServicesProxy$4;

    invoke-direct {v7, p0}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy$4;-><init>(Lcom/htc/cscore/restapi/proxy/RestServicesProxy;)V

    invoke-virtual {v7}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy$4;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    const-class v7, Ljava/lang/Boolean;

    invoke-static {v5, v2, v7, v1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_0

    const/4 v7, 0x0

    :goto_0
    return-object v7

    :cond_0
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v7, "getEmailForProductOption (%s)"

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v6, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p0, v7, v0, v8}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v7

    throw v7
.end method

.method public getFileAsset(Lcom/htc/cscore/restapi/request/JSONCloudRequest$ReadStreamable;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v2, "%s%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_cmsUri:Ljava/lang/String;

    aput-object v4, v3, v6

    aput-object p2, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    sget-object v2, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->GET:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3, p1}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->sendAuthenticatedRequestViaStreamables(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Lcom/htc/cscore/restapi/request/JSONCloudRequest$WriteStreamable;Lcom/htc/cscore/restapi/request/JSONCloudRequest$ReadStreamable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v2, "RestServicesProxy.getBinaryAsset failed (%s)"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v1, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v2, v0, v3}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v2

    throw v2
.end method

.method public getFilteredHtcHubContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/htc/cscore/restapi/json/HtcHubContent;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    new-instance v6, Lcom/htc/cscore/restapi/exceptions/CSException;

    const-string v7, "getFilteredHtcHubContent - language parameter cannot be empty"

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/htc/cscore/restapi/exceptions/CSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :cond_1
    const-string v6, "zh"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    const-string v7, "cn"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string p1, "cn"

    :cond_2
    :goto_0
    const-string v6, "%s/%s/services/json/htc-hub-content.js?apptype=%s&region=%s&model=%s&appid=%s&operator=%s&vendor=%s&htc=%s&featured=%s&sortby=%s&page=%s&size=%s"

    const/16 v7, 0xd

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_cmsUri:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object p1, v7, v8

    const/4 v8, 0x2

    invoke-direct {p0, p2}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_nullableToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-direct {p0, p3}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_nullableToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    invoke-direct {p0, p4}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_nullableToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x5

    invoke-direct {p0, p5}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_nullableToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x6

    move-object/from16 v0, p6

    invoke-direct {p0, v0}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_nullableToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x7

    move-object/from16 v0, p7

    invoke-direct {p0, v0}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_nullableToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x8

    move-object/from16 v0, p8

    invoke-direct {p0, v0}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_nullableToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x9

    move-object/from16 v0, p9

    invoke-direct {p0, v0}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_nullableToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0xa

    move-object/from16 v0, p10

    invoke-direct {p0, v0}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_nullableToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0xb

    move-object/from16 v0, p11

    invoke-direct {p0, v0}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_nullableToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0xc

    move-object/from16 v0, p12

    invoke-direct {p0, v0}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_nullableToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    :try_start_0
    sget-object v6, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->GET:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    const-string v7, ""

    invoke-virtual {p0, v5, v6, v7}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_webRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v3, Lcom/htc/cscore/restapi/json/HtcHubContent;

    invoke-direct {v3}, Lcom/htc/cscore/restapi/json/HtcHubContent;-><init>()V

    const-class v6, Lcom/htc/cscore/restapi/json/HtcHubContent;

    invoke-static {v3, v4, v6}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/cscore/restapi/json/HtcHubContent;

    if-nez v3, :cond_4

    new-instance v6, Ljava/lang/Exception;

    const-string v7, "getHtcHubContent failed to deserialize return value: %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    const-string v6, "getHtcHubContent (%s,%s)"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    const/4 v8, 0x1

    aput-object p1, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {p0, v6, v1, v7}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v6

    throw v6

    :cond_3
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    const-string v7, "tw"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string p1, "tw"

    goto/16 :goto_0

    :cond_4
    if-eqz p11, :cond_5

    if-eqz p12, :cond_5

    :try_start_1
    iget-object v6, v3, Lcom/htc/cscore/restapi/json/HtcHubContent;->apps:Lcom/htc/cscore/restapi/json/SearchResults;

    if-eqz v6, :cond_5

    invoke-virtual/range {p11 .. p11}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, v3, Lcom/htc/cscore/restapi/json/HtcHubContent;->apps:Lcom/htc/cscore/restapi/json/SearchResults;

    iget v7, v7, Lcom/htc/cscore/restapi/json/SearchResults;->Count:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual/range {p12 .. p12}, Ljava/lang/Integer;->intValue()I

    move-result v8

    div-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    if-le v6, v7, :cond_5

    new-instance v6, Lcom/htc/cscore/restapi/json/SearchResults;

    invoke-direct {v6}, Lcom/htc/cscore/restapi/json/SearchResults;-><init>()V

    iput-object v6, v3, Lcom/htc/cscore/restapi/json/HtcHubContent;->apps:Lcom/htc/cscore/restapi/json/SearchResults;

    :cond_5
    if-eqz p11, :cond_6

    if-eqz p12, :cond_6

    iget-object v6, v3, Lcom/htc/cscore/restapi/json/HtcHubContent;->music:Lcom/htc/cscore/restapi/json/SearchResults;

    if-eqz v6, :cond_6

    invoke-virtual/range {p11 .. p11}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, v3, Lcom/htc/cscore/restapi/json/HtcHubContent;->music:Lcom/htc/cscore/restapi/json/SearchResults;

    iget v7, v7, Lcom/htc/cscore/restapi/json/SearchResults;->Count:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual/range {p12 .. p12}, Ljava/lang/Integer;->intValue()I

    move-result v8

    div-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    if-le v6, v7, :cond_6

    new-instance v6, Lcom/htc/cscore/restapi/json/SearchResults;

    invoke-direct {v6}, Lcom/htc/cscore/restapi/json/SearchResults;-><init>()V

    iput-object v6, v3, Lcom/htc/cscore/restapi/json/HtcHubContent;->music:Lcom/htc/cscore/restapi/json/SearchResults;

    :cond_6
    if-eqz p11, :cond_7

    if-eqz p12, :cond_7

    iget-object v6, v3, Lcom/htc/cscore/restapi/json/HtcHubContent;->scenes:Lcom/htc/cscore/restapi/json/SearchResults;

    if-eqz v6, :cond_7

    invoke-virtual/range {p11 .. p11}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, v3, Lcom/htc/cscore/restapi/json/HtcHubContent;->scenes:Lcom/htc/cscore/restapi/json/SearchResults;

    iget v7, v7, Lcom/htc/cscore/restapi/json/SearchResults;->Count:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual/range {p12 .. p12}, Ljava/lang/Integer;->intValue()I

    move-result v8

    div-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    if-le v6, v7, :cond_7

    new-instance v6, Lcom/htc/cscore/restapi/json/SearchResults;

    invoke-direct {v6}, Lcom/htc/cscore/restapi/json/SearchResults;-><init>()V

    iput-object v6, v3, Lcom/htc/cscore/restapi/json/HtcHubContent;->scenes:Lcom/htc/cscore/restapi/json/SearchResults;

    :cond_7
    if-eqz p11, :cond_8

    if-eqz p12, :cond_8

    iget-object v6, v3, Lcom/htc/cscore/restapi/json/HtcHubContent;->skins:Lcom/htc/cscore/restapi/json/SearchResults;

    if-eqz v6, :cond_8

    invoke-virtual/range {p11 .. p11}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, v3, Lcom/htc/cscore/restapi/json/HtcHubContent;->skins:Lcom/htc/cscore/restapi/json/SearchResults;

    iget v7, v7, Lcom/htc/cscore/restapi/json/SearchResults;->Count:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual/range {p12 .. p12}, Ljava/lang/Integer;->intValue()I

    move-result v8

    div-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    if-le v6, v7, :cond_8

    new-instance v6, Lcom/htc/cscore/restapi/json/SearchResults;

    invoke-direct {v6}, Lcom/htc/cscore/restapi/json/SearchResults;-><init>()V

    iput-object v6, v3, Lcom/htc/cscore/restapi/json/HtcHubContent;->skins:Lcom/htc/cscore/restapi/json/SearchResults;

    :cond_8
    if-eqz p11, :cond_9

    if-eqz p12, :cond_9

    iget-object v6, v3, Lcom/htc/cscore/restapi/json/HtcHubContent;->widgets:Lcom/htc/cscore/restapi/json/SearchResults;

    if-eqz v6, :cond_9

    invoke-virtual/range {p11 .. p11}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, v3, Lcom/htc/cscore/restapi/json/HtcHubContent;->widgets:Lcom/htc/cscore/restapi/json/SearchResults;

    iget v7, v7, Lcom/htc/cscore/restapi/json/SearchResults;->Count:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual/range {p12 .. p12}, Ljava/lang/Integer;->intValue()I

    move-result v8

    div-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    if-le v6, v7, :cond_9

    new-instance v6, Lcom/htc/cscore/restapi/json/SearchResults;

    invoke-direct {v6}, Lcom/htc/cscore/restapi/json/SearchResults;-><init>()V

    iput-object v6, v3, Lcom/htc/cscore/restapi/json/HtcHubContent;->widgets:Lcom/htc/cscore/restapi/json/SearchResults;

    :cond_9
    if-eqz p11, :cond_a

    if-eqz p12, :cond_a

    iget-object v6, v3, Lcom/htc/cscore/restapi/json/HtcHubContent;->wallpapers:Lcom/htc/cscore/restapi/json/SearchResults;

    if-eqz v6, :cond_a

    invoke-virtual/range {p11 .. p11}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, v3, Lcom/htc/cscore/restapi/json/HtcHubContent;->wallpapers:Lcom/htc/cscore/restapi/json/SearchResults;

    iget v7, v7, Lcom/htc/cscore/restapi/json/SearchResults;->Count:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual/range {p12 .. p12}, Ljava/lang/Integer;->intValue()I

    move-result v8

    div-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    if-le v6, v7, :cond_a

    new-instance v6, Lcom/htc/cscore/restapi/json/SearchResults;

    invoke-direct {v6}, Lcom/htc/cscore/restapi/json/SearchResults;-><init>()V

    iput-object v6, v3, Lcom/htc/cscore/restapi/json/HtcHubContent;->wallpapers:Lcom/htc/cscore/restapi/json/SearchResults;

    :cond_a
    if-eqz p11, :cond_b

    if-eqz p12, :cond_b

    iget-object v6, v3, Lcom/htc/cscore/restapi/json/HtcHubContent;->soundsets:Lcom/htc/cscore/restapi/json/SearchResults;

    if-eqz v6, :cond_b

    invoke-virtual/range {p11 .. p11}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, v3, Lcom/htc/cscore/restapi/json/HtcHubContent;->soundsets:Lcom/htc/cscore/restapi/json/SearchResults;

    iget v7, v7, Lcom/htc/cscore/restapi/json/SearchResults;->Count:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual/range {p12 .. p12}, Ljava/lang/Integer;->intValue()I

    move-result v8

    div-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    if-le v6, v7, :cond_b

    new-instance v6, Lcom/htc/cscore/restapi/json/SearchResults;

    invoke-direct {v6}, Lcom/htc/cscore/restapi/json/SearchResults;-><init>()V

    iput-object v6, v3, Lcom/htc/cscore/restapi/json/HtcHubContent;->soundsets:Lcom/htc/cscore/restapi/json/SearchResults;

    :cond_b
    if-eqz p11, :cond_c

    if-eqz p12, :cond_c

    iget-object v6, v3, Lcom/htc/cscore/restapi/json/HtcHubContent;->ringtones:Lcom/htc/cscore/restapi/json/SearchResults;

    if-eqz v6, :cond_c

    invoke-virtual/range {p11 .. p11}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, v3, Lcom/htc/cscore/restapi/json/HtcHubContent;->ringtones:Lcom/htc/cscore/restapi/json/SearchResults;

    iget v7, v7, Lcom/htc/cscore/restapi/json/SearchResults;->Count:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual/range {p12 .. p12}, Ljava/lang/Integer;->intValue()I

    move-result v8

    div-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    if-le v6, v7, :cond_c

    new-instance v6, Lcom/htc/cscore/restapi/json/SearchResults;

    invoke-direct {v6}, Lcom/htc/cscore/restapi/json/SearchResults;-><init>()V

    iput-object v6, v3, Lcom/htc/cscore/restapi/json/HtcHubContent;->ringtones:Lcom/htc/cscore/restapi/json/SearchResults;

    :cond_c
    if-eqz p11, :cond_d

    if-eqz p12, :cond_d

    iget-object v6, v3, Lcom/htc/cscore/restapi/json/HtcHubContent;->alarms:Lcom/htc/cscore/restapi/json/SearchResults;

    if-eqz v6, :cond_d

    invoke-virtual/range {p11 .. p11}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, v3, Lcom/htc/cscore/restapi/json/HtcHubContent;->alarms:Lcom/htc/cscore/restapi/json/SearchResults;

    iget v7, v7, Lcom/htc/cscore/restapi/json/SearchResults;->Count:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual/range {p12 .. p12}, Ljava/lang/Integer;->intValue()I

    move-result v8

    div-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    if-le v6, v7, :cond_d

    new-instance v6, Lcom/htc/cscore/restapi/json/SearchResults;

    invoke-direct {v6}, Lcom/htc/cscore/restapi/json/SearchResults;-><init>()V

    iput-object v6, v3, Lcom/htc/cscore/restapi/json/HtcHubContent;->alarms:Lcom/htc/cscore/restapi/json/SearchResults;

    :cond_d
    if-eqz p11, :cond_e

    if-eqz p12, :cond_e

    iget-object v6, v3, Lcom/htc/cscore/restapi/json/HtcHubContent;->notifications:Lcom/htc/cscore/restapi/json/SearchResults;

    if-eqz v6, :cond_e

    invoke-virtual/range {p11 .. p11}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, v3, Lcom/htc/cscore/restapi/json/HtcHubContent;->notifications:Lcom/htc/cscore/restapi/json/SearchResults;

    iget v7, v7, Lcom/htc/cscore/restapi/json/SearchResults;->Count:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual/range {p12 .. p12}, Ljava/lang/Integer;->intValue()I

    move-result v8

    div-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    if-le v6, v7, :cond_e

    new-instance v6, Lcom/htc/cscore/restapi/json/SearchResults;

    invoke-direct {v6}, Lcom/htc/cscore/restapi/json/SearchResults;-><init>()V

    iput-object v6, v3, Lcom/htc/cscore/restapi/json/HtcHubContent;->notifications:Lcom/htc/cscore/restapi/json/SearchResults;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_e
    return-object v3
.end method

.method public getFullMergeStopFlag()Lcom/htc/cscore/restapi/proxy/WebClasses$WServerFMStatus;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    const/4 v10, 0x0

    const/4 v9, 0x1

    const-string v6, "%s/Services/VirtualDevices.svc/Devices/FullMergeSync/"

    new-array v7, v9, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    :try_start_0
    const-string v4, ""

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->GET:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v5, v6, v3}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WServerFMStatus;

    invoke-direct {v1}, Lcom/htc/cscore/restapi/proxy/WebClasses$WServerFMStatus;-><init>()V

    const-class v6, Lcom/htc/cscore/restapi/proxy/WebClasses$WServerFMStatus;

    invoke-static {v1, v2, v6}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WServerFMStatus;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :cond_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v6, "getFullMergeStopFlag (%s)"

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v5, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {p0, v6, v0, v7}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v6

    throw v6
.end method

.method public getPendingLegalDoc(Ljava/lang/String;)Lcom/htc/cscore/restapi/proxy/WebClasses$WPendingLegalDoc;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    const/4 v10, 0x0

    const/4 v9, 0x1

    const-string v6, "%s/Services/LegalDocs.svc/LegalDocs/Pending/%s/"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v8, v7, v10

    aput-object p1, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    :try_start_0
    const-string v3, ""

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->GET:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v5, v6, v2}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lcom/htc/cscore/restapi/proxy/WebClasses$WPendingLegalDoc;

    invoke-direct {v4}, Lcom/htc/cscore/restapi/proxy/WebClasses$WPendingLegalDoc;-><init>()V

    const-class v6, Lcom/htc/cscore/restapi/proxy/WebClasses$WPendingLegalDoc;

    invoke-static {v4, v1, v6}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/cscore/restapi/proxy/WebClasses$WPendingLegalDoc;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_0

    const/4 v4, 0x0

    :cond_0
    return-object v4

    :catch_0
    move-exception v0

    const-string v6, "getPendingLegalDoc (%s)"

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v5, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {p0, v6, v0, v7}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v6

    throw v6
.end method

.method public getPendingLegalDocsID(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    const/4 v11, 0x0

    const/4 v10, 0x1

    const-string v7, "%s/Services/LegalDocs.svc/LegalDocs/Pending/%s/%s/Id/"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v9, v8, v11

    aput-object p1, v8, v10

    const/4 v9, 0x2

    aput-object p2, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    :try_start_0
    const-string v4, ""

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v7, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->GET:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v5, v7, v3}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_webRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/util/ArrayList;

    const/4 v7, 0x4

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v7, Lcom/htc/cscore/restapi/proxy/RestServicesProxy$9;

    invoke-direct {v7, p0}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy$9;-><init>(Lcom/htc/cscore/restapi/proxy/RestServicesProxy;)V

    invoke-virtual {v7}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy$9;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    const-class v7, Ljava/util/List;

    invoke-static {v6, v2, v7, v1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v6, :cond_0

    const/4 v6, 0x0

    :cond_0
    return-object v6

    :catch_0
    move-exception v0

    const-string v7, "getPendingLegalDocsID (%s)"

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v5, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p0, v7, v0, v8}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v7

    throw v7
.end method

.method public getSettingForProductOption(Ljava/lang/String;)Lcom/htc/cscore/restapi/proxy/WebClasses$WSetting;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    const/4 v12, 0x0

    const/4 v11, 0x1

    const-string v8, "%s/Services/SimpleSettings.svc/SimpleSettings/GetSetting/"

    new-array v9, v11, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    :try_start_0
    const-string v5, ""

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    move-object v0, v5

    check-cast v0, Lorg/json/JSONObject;

    move-object v8, v0

    const-string v9, "key"

    invoke-static {p1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v8, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->POST:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v7, v8, v4}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/htc/cscore/restapi/proxy/WebClasses$WSetting;

    invoke-direct {v6}, Lcom/htc/cscore/restapi/proxy/WebClasses$WSetting;-><init>()V

    new-instance v8, Lcom/htc/cscore/restapi/proxy/RestServicesProxy$7;

    invoke-direct {v8, p0}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy$7;-><init>(Lcom/htc/cscore/restapi/proxy/RestServicesProxy;)V

    invoke-virtual {v8}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy$7;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    const-class v8, Lcom/htc/cscore/restapi/proxy/WebClasses$WSetting;

    invoke-static {v6, v3, v8, v2}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/cscore/restapi/proxy/WebClasses$WSetting;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v6, :cond_0

    const/4 v6, 0x0

    :cond_0
    return-object v6

    :catch_0
    move-exception v1

    const-string v8, "getSettingForProductOption (%s)"

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v7, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {p0, v8, v1, v9}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v8

    throw v8
.end method

.method public requestBinding(Ljava/lang/String;)Ljava/util/UUID;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    iget-object v3, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->Password:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/htc/cscore/util/CSUtil;->getServerTime(Landroid/content/Context;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->getAuthTicket(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WRequestBind;

    invoke-direct {v1}, Lcom/htc/cscore/restapi/proxy/WebClasses$WRequestBind;-><init>()V

    iget-object v3, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->EmailAddress:Ljava/lang/String;

    iput-object v3, v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WRequestBind;->EmailAddress:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->HandsetDeviceId:Ljava/util/UUID;

    iput-object v3, v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WRequestBind;->HandsetDeviceId:Ljava/util/UUID;

    iput-object p1, v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WRequestBind;->PhoneNumber:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->RequestBinding(Lcom/htc/cscore/restapi/proxy/WebClasses$WRequestBind;Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :cond_0
    return-object v2
.end method

.method public setCredentials(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->EmailAddress:Ljava/lang/String;

    iput-object p2, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->Password:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->deviceToken:Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;

    return-void
.end method

.method public setDeviceToken(Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->deviceToken:Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;

    return-void
.end method

.method public setEmailForProductOption(Ljava/lang/Boolean;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    const/4 v12, 0x0

    const/4 v11, 0x1

    const-string v8, "%s/Services/Accounts.svc/Accounts/SendEmailAboutProducts/"

    new-array v9, v11, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    :try_start_0
    const-string v5, ""

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    move-object v0, v5

    check-cast v0, Lorg/json/JSONObject;

    move-object v8, v0

    const-string v9, "SendEmailAboutProducts"

    invoke-static {p1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v8, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->POST:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v7, v8, v4}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6}, Ljava/lang/String;-><init>()V

    new-instance v8, Lcom/htc/cscore/restapi/proxy/RestServicesProxy$5;

    invoke-direct {v8, p0}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy$5;-><init>(Lcom/htc/cscore/restapi/proxy/RestServicesProxy;)V

    invoke-virtual {v8}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy$5;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    const-class v8, Ljava/lang/String;

    invoke-static {v6, v3, v8, v2}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    const-string v8, "setEmailForProductOption (%s)"

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v7, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {p0, v8, v1, v9}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v8

    throw v8
.end method

.method public setLegalDocResponses(Ljava/util/List;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v8, 0x1

    const-string v5, "%s/Services/LegalDocs.svc/LegalDocs/Responses/"

    new-array v6, v8, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v2, Lcom/htc/cscore/restapi/proxy/WebClasses$WLegalDocsAcceptance;

    invoke-direct {v2}, Lcom/htc/cscore/restapi/proxy/WebClasses$WLegalDocsAcceptance;-><init>()V

    iput-object p1, v2, Lcom/htc/cscore/restapi/proxy/WebClasses$WLegalDocsAcceptance;->docIds:Ljava/util/List;

    iput-object p2, v2, Lcom/htc/cscore/restapi/proxy/WebClasses$WLegalDocsAcceptance;->response:Ljava/lang/String;

    :try_start_0
    const-string v3, ""

    invoke-static {v2}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->POST:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v4, v5, v1}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v5, "setLegalDocResponses (%s)"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v4, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v5, v0, v6}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v5

    throw v5
.end method

.method public setSerialNumber(Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v8, 0x1

    const-string v5, "%s/Services/VirtualDevices.svc/Devices/PhysicalDeviceModel/"

    new-array v6, v8, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :try_start_0
    const-string v3, ""

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    move-object v0, v3

    check-cast v0, Lorg/json/JSONObject;

    move-object v5, v0

    const-string v6, "serialNumber"

    invoke-static {p1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->POST:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v4, v5, v2}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    const-string v5, "setSerialNumber (%s)"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v4, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v5, v1, v6}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v5

    throw v5
.end method

.method public setTellHTCId(Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v8, 0x1

    const-string v5, "%s/Services/Accounts.svc/Accounts/SetTellHTCId/"

    new-array v6, v8, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :try_start_0
    const-string v3, ""

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    move-object v0, v3

    check-cast v0, Lorg/json/JSONObject;

    move-object v5, v0

    const-string v6, "TellHTCId"

    invoke-static {p1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->POST:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v4, v5, v2}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    const-string v5, "setTellHTCId (%s)"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v4, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v5, v1, v6}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v5

    throw v5
.end method

.method public syncMessages(Ljava/lang/String;Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v4, "%s/Handset/MessageQueues.svc/MessageQueues/Sync/%s/"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v6, v5, v8

    aput-object p1, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :try_start_0
    new-instance v2, Lcom/htc/cscore/restapi/proxy/RestServicesProxy$StreamablePbReliableMessages;

    invoke-direct {v2, p0, p2}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy$StreamablePbReliableMessages;-><init>(Lcom/htc/cscore/restapi/proxy/RestServicesProxy;Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;)V

    new-instance v1, Lcom/htc/cscore/restapi/proxy/RestServicesProxy$StreamablePbReliableMessages;

    invoke-direct {v1, p0}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy$StreamablePbReliableMessages;-><init>(Lcom/htc/cscore/restapi/proxy/RestServicesProxy;)V

    sget-object v4, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->POST:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-direct {p0, v3, v4, v2, v1}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->sendAuthenticatedRequestViaStreamables(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Lcom/htc/cscore/restapi/request/JSONCloudRequest$WriteStreamable;Lcom/htc/cscore/restapi/request/JSONCloudRequest$ReadStreamable;)V

    iget-object v4, v1, Lcom/htc/cscore/restapi/proxy/RestServicesProxy$StreamablePbReliableMessages;->_m:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception v0

    const-string v4, "RestServicesProxy.syncMessages failed (%s)"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v3, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v4, v0, v5}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v4

    throw v4
.end method

.method public updateSettingsForProductOption(Lcom/htc/cscore/restapi/proxy/WebClasses$WSettingList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v4, "%s/Services/SimpleSettings.svc/SimpleSettings/UpdateSettingsFromHandset/"

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :try_start_0
    const-string v2, ""

    invoke-static {p1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->POST:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v3, v4, v1}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v4, "updateSettingsForProductOption (%s)"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v3, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v4, v0, v5}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v4

    throw v4
.end method
