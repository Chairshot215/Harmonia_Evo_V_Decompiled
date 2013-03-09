.class public abstract Lcom/htc/cscore/restapi/proxy/ClientRestApi;
.super Ljava/lang/Object;
.source "ClientRestApi.java"


# instance fields
.field protected ServerUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public AddAggregatePerson(Lcom/htc/cscore/restapi/proxy/WebClasses$WAggregatePerson;)Lcom/htc/cscore/restapi/proxy/WebClasses$WAggregatePerson;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    const/4 v11, 0x0

    const/4 v10, 0x1

    const-string v7, "%s/Services/People.svc/People/"

    new-array v8, v10, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :try_start_0
    const-string v4, ""

    invoke-static {p1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v7, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->POST:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v6, v7, v3}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/htc/cscore/restapi/proxy/WebClasses$WAggregatePerson;

    invoke-direct {v5}, Lcom/htc/cscore/restapi/proxy/WebClasses$WAggregatePerson;-><init>()V

    new-instance v7, Lcom/htc/cscore/restapi/proxy/ClientRestApi$11;

    invoke-direct {v7, p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$11;-><init>(Lcom/htc/cscore/restapi/proxy/ClientRestApi;)V

    invoke-virtual {v7}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$11;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    const-class v7, Lcom/htc/cscore/restapi/proxy/WebClasses$WAggregatePerson;

    invoke-static {v5, v2, v7, v1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/cscore/restapi/proxy/WebClasses$WAggregatePerson;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v5, :cond_0

    const/4 v5, 0x0

    :cond_0
    return-object v5

    :catch_0
    move-exception v0

    const-string v7, "AddAggregatePerson (%s)"

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v6, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p0, v7, v0, v8}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v7

    throw v7
.end method

.method public AddFriend(Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v4, "%s/Services/FriendRequests.svc/Friends/%s/"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v6, v5, v8

    aput-object p1, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :try_start_0
    const-string v2, ""

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->POST:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v3, v4, v1}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v4, "AddFriend (%s)"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v3, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v4, v0, v5}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v4

    throw v4
.end method

.method public AddRecommendAppComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendCommentLike;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    const/4 v12, 0x0

    const/4 v11, 0x1

    const-string v8, "%s/Services/RecommendCommentLike.svc/RecommendCommentLike/AppComment/"

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

    const-string v9, "appType"

    invoke-static {p1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object v0, v5

    check-cast v0, Lorg/json/JSONObject;

    move-object v8, v0

    const-string v9, "appId"

    invoke-static {p2}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object v0, v5

    check-cast v0, Lorg/json/JSONObject;

    move-object v8, v0

    const-string v9, "appComment"

    invoke-static/range {p3 .. p3}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v8, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->POST:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v7, v8, v4}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendCommentLike;

    invoke-direct {v6}, Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendCommentLike;-><init>()V

    new-instance v8, Lcom/htc/cscore/restapi/proxy/ClientRestApi$14;

    invoke-direct {v8, p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$14;-><init>(Lcom/htc/cscore/restapi/proxy/ClientRestApi;)V

    invoke-virtual {v8}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$14;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    const-class v8, Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendCommentLike;

    invoke-static {v6, v3, v8, v2}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendCommentLike;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v6, :cond_0

    const/4 v6, 0x0

    :cond_0
    return-object v6

    :catch_0
    move-exception v1

    const-string v8, "AddRecommendAppComment (%s)"

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v7, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {p0, v8, v1, v9}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v8

    throw v8
.end method

.method public AddRecommendAppLike(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendCommentLike;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    const/4 v12, 0x0

    const/4 v11, 0x1

    const-string v8, "%s/Services/RecommendCommentLike.svc/RecommendCommentLike/AppLikes/"

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

    const-string v9, "appType"

    invoke-static {p1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object v0, v5

    check-cast v0, Lorg/json/JSONObject;

    move-object v8, v0

    const-string v9, "appId"

    invoke-static {p2}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v8, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->POST:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v7, v8, v4}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendCommentLike;

    invoke-direct {v6}, Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendCommentLike;-><init>()V

    new-instance v8, Lcom/htc/cscore/restapi/proxy/ClientRestApi$13;

    invoke-direct {v8, p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$13;-><init>(Lcom/htc/cscore/restapi/proxy/ClientRestApi;)V

    invoke-virtual {v8}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$13;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    const-class v8, Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendCommentLike;

    invoke-static {v6, v3, v8, v2}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendCommentLike;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v6, :cond_0

    const/4 v6, 0x0

    :cond_0
    return-object v6

    :catch_0
    move-exception v1

    const-string v8, "AddRecommendAppLike (%s)"

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v7, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {p0, v8, v1, v9}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v8

    throw v8
.end method

.method public BindHandsetToAccount(Lcom/htc/cscore/restapi/proxy/WebClasses$WBindRequest;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v5, "%s/Services/Accounts.svc/Accounts/BindHandsetToAccount/"

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :try_start_0
    const-string v3, ""

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    move-object v0, v3

    check-cast v0, Lorg/json/JSONObject;

    move-object v5, v0

    const-string v6, "bindRequest"

    invoke-static {p1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object v0, v3

    check-cast v0, Lorg/json/JSONObject;

    move-object v5, v0

    const-string v6, "AuthTicket"

    invoke-static {p2}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->POST:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v4, v5, v2}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    const-string v5, "BindHandsetToAccount (%s)"

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v4, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v5, v1, v6}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v5

    throw v5
.end method

.method public BlockFriendRequest(Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v4, "%s/Services/FriendRequests.svc/Blocked/%s/"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v6, v5, v8

    aput-object p1, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :try_start_0
    const-string v2, ""

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->POST:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v3, v4, v1}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v4, "BlockFriendRequest (%s)"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v3, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v4, v0, v5}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v4

    throw v4
.end method

.method public CancelFullMerge(Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v4, "%s/Services/VirtualDevices.svc/Devices/CancelFullMerge/%s/"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v6, v5, v8

    aput-object p1, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :try_start_0
    const-string v2, ""

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->GET:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v3, v4, v1}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v4, "CancelFullMerge (%s)"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v3, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v4, v0, v5}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v4

    throw v4
.end method

.method public ChangePassword(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v8, 0x1

    const-string v5, "%s/Services/Accounts.svc/Accounts/ChangePassword/"

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

    const-string v6, "authTicket"

    invoke-static {p1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object v0, v3

    check-cast v0, Lorg/json/JSONObject;

    move-object v5, v0

    const-string v6, "newPassword"

    invoke-static {p2}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->POST:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v4, v5, v2}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    const-string v5, "ChangePassword (%s)"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v4, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v5, v1, v6}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v5

    throw v5
.end method

.method public CreateAccountFromHandset(Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;)Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-string v7, "%s/Services/Accounts.svc/Accounts/CreateAccountFromHandset/"

    new-array v8, v11, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :try_start_0
    const-string v4, ""

    invoke-static {p1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v7, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->POST:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v6, v7, v3}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5}, Ljava/lang/String;-><init>()V

    new-instance v7, Lcom/htc/cscore/restapi/proxy/ClientRestApi$1;

    invoke-direct {v7, p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$1;-><init>(Lcom/htc/cscore/restapi/proxy/ClientRestApi;)V

    invoke-virtual {v7}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    const-class v7, Ljava/lang/String;

    invoke-static {v5, v2, v7, v1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v5, :cond_0

    const/4 v5, 0x0

    :cond_0
    return-object v5

    :catch_0
    move-exception v0

    const-string v7, "CreateAccountFromHandset (%s)"

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v6, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p0, v7, v0, v8}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v7

    throw v7
.end method

.method public DeleteFriend(Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v4, "%s/Services/FriendRequests.svc/Friends/%s/"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v6, v5, v8

    aput-object p1, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :try_start_0
    const-string v2, ""

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->DELETE:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v3, v4, v1}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v4, "DeleteFriend (%s)"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v3, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v4, v0, v5}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v4

    throw v4
.end method

.method public DeleteInvitation(Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v4, "%s/Services/FriendRequests.svc/Requests/%s/"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v6, v5, v8

    aput-object p1, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :try_start_0
    const-string v2, ""

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->DELETE:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v3, v4, v1}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v4, "DeleteInvitation (%s)"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v3, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v4, v0, v5}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v4

    throw v4
.end method

.method public DeleteRecommendAppComment(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v4, "%s/Services/RecommendCommentLike.svc/RecommendCommentLike/AppComments/%s/%s/"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v6, v5, v8

    aput-object p1, v5, v7

    const/4 v6, 0x2

    aput-object p2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :try_start_0
    const-string v2, ""

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->DELETE:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v3, v4, v1}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v4, "DeleteRecommendAppComment (%s)"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v3, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v4, v0, v5}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v4

    throw v4
.end method

.method public DeleteRecommendAppLike(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v4, "%s/Services/RecommendCommentLike.svc/RecommendCommentLike/AppLikes/%s/%s/"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v6, v5, v8

    aput-object p1, v5, v7

    const/4 v6, 0x2

    aput-object p2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :try_start_0
    const-string v2, ""

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->DELETE:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v3, v4, v1}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v4, "DeleteRecommendAppLike (%s)"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v3, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v4, v0, v5}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v4

    throw v4
.end method

.method public ForgotPassword(Lcom/htc/cscore/restapi/proxy/WebClasses$WPasswordRequest;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v4, "%s/Services/Accounts.svc/Accounts/ForgotPassword/"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :try_start_0
    const-string v2, ""

    invoke-static {p1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->POST:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v3, v4, v1}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v4, "ForgotPassword (%s)"

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v3, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v4, v0, v5}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v4

    throw v4
.end method

.method public GetAllApplicationInformation(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;II)Lcom/htc/cscore/restapi/json/SearchResults;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "II)",
            "Lcom/htc/cscore/restapi/json/SearchResults",
            "<",
            "Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationInformation;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    const-string v8, "%s/Services/RecommendCommentLike.svc/RecommendCommentLike/GetAllApplicationInformation/"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    :try_start_0
    const-string v5, ""

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    move-object v0, v5

    check-cast v0, Lorg/json/JSONObject;

    move-object v8, v0

    const-string v9, "appIds"

    invoke-static {p1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object v0, v5

    check-cast v0, Lorg/json/JSONObject;

    move-object v8, v0

    const-string v9, "appType"

    invoke-static {p2}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object v0, v5

    check-cast v0, Lorg/json/JSONObject;

    move-object v8, v0

    const-string v9, "sortBy"

    invoke-static {p3}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object v0, v5

    check-cast v0, Lorg/json/JSONObject;

    move-object v8, v0

    const-string v9, "sortDescending"

    invoke-static/range {p4 .. p4}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object v0, v5

    check-cast v0, Lorg/json/JSONObject;

    move-object v8, v0

    const-string v9, "start"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v10}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object v0, v5

    check-cast v0, Lorg/json/JSONObject;

    move-object v8, v0

    const-string v9, "count"

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v10}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v8, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->POST:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v7, v8, v4}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/htc/cscore/restapi/json/SearchResults;

    invoke-direct {v6}, Lcom/htc/cscore/restapi/json/SearchResults;-><init>()V

    new-instance v8, Lcom/htc/cscore/restapi/proxy/ClientRestApi$22;

    invoke-direct {v8, p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$22;-><init>(Lcom/htc/cscore/restapi/proxy/ClientRestApi;)V

    invoke-virtual {v8}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$22;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    const-class v8, Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationInformation;

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

    const-string v8, "GetAllApplicationInformation (%s)"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v7, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {p0, v8, v1, v9}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v8

    throw v8
.end method

.method public GetFootprints(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/htc/cscore/restapi/json/SearchResults;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Lcom/htc/cscore/restapi/json/SearchResults",
            "<",
            "Lcom/htc/cscore/restapi/proxy/WebClasses$WFootprint;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    const-string v7, "%s/Services/Footprints.svc/GetFootprints/?keywords=%s&friendsdeviceid=%s&swLat=%s&swLong=%s&neLat=%s&neLong=%s&searchType=%s&categoryId=%s&favorites=%s&uncategorized=%s&sortBy=%s&sortDescending=%s&start=%s&count=%s"

    const/16 v8, 0xf

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p1, v8, v9

    const/4 v9, 0x2

    aput-object p2, v8, v9

    const/4 v9, 0x3

    aput-object p3, v8, v9

    const/4 v9, 0x4

    aput-object p4, v8, v9

    const/4 v9, 0x5

    aput-object p5, v8, v9

    const/4 v9, 0x6

    aput-object p6, v8, v9

    const/4 v9, 0x7

    aput-object p7, v8, v9

    const/16 v9, 0x8

    aput-object p8, v8, v9

    const/16 v9, 0x9

    aput-object p9, v8, v9

    const/16 v9, 0xa

    aput-object p10, v8, v9

    const/16 v9, 0xb

    aput-object p11, v8, v9

    const/16 v9, 0xc

    aput-object p12, v8, v9

    const/16 v9, 0xd

    invoke-static/range {p13 .. p13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/16 v9, 0xe

    invoke-static/range {p14 .. p14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :try_start_0
    const-string v4, ""

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v7, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->GET:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v6, v7, v3}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/htc/cscore/restapi/json/SearchResults;

    invoke-direct {v5}, Lcom/htc/cscore/restapi/json/SearchResults;-><init>()V

    new-instance v7, Lcom/htc/cscore/restapi/proxy/ClientRestApi$7;

    invoke-direct {v7, p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$7;-><init>(Lcom/htc/cscore/restapi/proxy/ClientRestApi;)V

    invoke-virtual {v7}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$7;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    const-class v7, Lcom/htc/cscore/restapi/proxy/WebClasses$WFootprint;

    invoke-static {v5, v2, v7, v1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/cscore/restapi/json/SearchResults;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v5, :cond_0

    const/4 v5, 0x0

    :cond_0
    return-object v5

    :catch_0
    move-exception v0

    const-string v7, "GetFootprints (%s)"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p0, v7, v0, v8}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v7

    throw v7
.end method

.method public GetFriendFeedback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;II)Lcom/htc/cscore/restapi/json/SearchResults;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "II)",
            "Lcom/htc/cscore/restapi/json/SearchResults",
            "<",
            "Lcom/htc/cscore/restapi/proxy/WebClasses$WFriendFeedback;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    const-string v7, "%s/Services/RecommendCommentLike.svc/RecommendCommentLike/GetFriendFeedback/?appId=%s&appType=%s&sortBy=%s&sortDescending=%s&start=%s&count=%s"

    const/4 v8, 0x7

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p1, v8, v9

    const/4 v9, 0x2

    aput-object p2, v8, v9

    const/4 v9, 0x3

    aput-object p3, v8, v9

    const/4 v9, 0x4

    aput-object p4, v8, v9

    const/4 v9, 0x5

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x6

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :try_start_0
    const-string v4, ""

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v7, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->GET:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v6, v7, v3}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/htc/cscore/restapi/json/SearchResults;

    invoke-direct {v5}, Lcom/htc/cscore/restapi/json/SearchResults;-><init>()V

    new-instance v7, Lcom/htc/cscore/restapi/proxy/ClientRestApi$19;

    invoke-direct {v7, p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$19;-><init>(Lcom/htc/cscore/restapi/proxy/ClientRestApi;)V

    invoke-virtual {v7}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$19;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    const-class v7, Lcom/htc/cscore/restapi/proxy/WebClasses$WFriendFeedback;

    invoke-static {v5, v2, v7, v1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/cscore/restapi/json/SearchResults;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v5, :cond_0

    const/4 v5, 0x0

    :cond_0
    return-object v5

    :catch_0
    move-exception v0

    const-string v7, "GetFriendFeedback (%s)"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p0, v7, v0, v8}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v7

    throw v7
.end method

.method public GetFriendRecommendedCommentsCount(Ljava/lang/String;Ljava/lang/String;)I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    const/4 v12, 0x0

    const/4 v7, -0x1

    const/4 v11, 0x1

    const-string v8, "%s/Services/RecommendCommentLike.svc/RecommendCommentLike/GetFriendRecommendedCommentsCount/?friendRequestId=%s&appType=%s"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v10, v9, v12

    aput-object p1, v9, v11

    const/4 v10, 0x2

    aput-object p2, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :try_start_0
    const-string v4, ""

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v8, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->GET:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v6, v8, v3}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v8, Lcom/htc/cscore/restapi/proxy/ClientRestApi$18;

    invoke-direct {v8, p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$18;-><init>(Lcom/htc/cscore/restapi/proxy/ClientRestApi;)V

    invoke-virtual {v8}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$18;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    const-class v8, Ljava/lang/Integer;

    invoke-static {v5, v2, v8, v1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-nez v5, :cond_0

    :goto_0
    return v7

    :cond_0
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v7, "GetFriendRecommendedCommentsCount (%s)"

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v6, v8, v12

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p0, v7, v0, v8}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v7

    throw v7
.end method

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

    invoke-virtual {p0, v6, v7, v3}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Lcom/htc/cscore/restapi/proxy/ClientRestApi$15;

    invoke-direct {v7, p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$15;-><init>(Lcom/htc/cscore/restapi/proxy/ClientRestApi;)V

    invoke-virtual {v7}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$15;->getType()Ljava/lang/reflect/Type;

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

    invoke-virtual {p0, v7, v0, v8}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v7

    throw v7
.end method

.method public GetFriendRecommendedLikesCount(Ljava/lang/String;Ljava/lang/String;)I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    const/4 v12, 0x0

    const/4 v7, -0x1

    const/4 v11, 0x1

    const-string v8, "%s/Services/RecommendCommentLike.svc/RecommendCommentLike/GetFriendRecommendedLikesCount/?friendRequestId=%s&appType=%s"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v10, v9, v12

    aput-object p1, v9, v11

    const/4 v10, 0x2

    aput-object p2, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :try_start_0
    const-string v4, ""

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v8, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->GET:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v6, v8, v3}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v8, Lcom/htc/cscore/restapi/proxy/ClientRestApi$17;

    invoke-direct {v8, p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$17;-><init>(Lcom/htc/cscore/restapi/proxy/ClientRestApi;)V

    invoke-virtual {v8}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$17;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    const-class v8, Ljava/lang/Integer;

    invoke-static {v5, v2, v8, v1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-nez v5, :cond_0

    :goto_0
    return v7

    :cond_0
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v7, "GetFriendRecommendedLikesCount (%s)"

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v6, v8, v12

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p0, v7, v0, v8}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v7

    throw v7
.end method

.method public GetFriends(Ljava/lang/String;Ljava/lang/Boolean;II)Lcom/htc/cscore/restapi/json/SearchResults;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "II)",
            "Lcom/htc/cscore/restapi/json/SearchResults",
            "<",
            "Lcom/htc/cscore/restapi/proxy/WebClasses$WFriend;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    const-string v7, "%s/Services/FriendRequests.svc/GetFriends/?sortBy=%s&sortDescending=%s&start=%s&count=%s"

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p1, v8, v9

    const/4 v9, 0x2

    aput-object p2, v8, v9

    const/4 v9, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :try_start_0
    const-string v4, ""

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v7, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->GET:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v6, v7, v3}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/htc/cscore/restapi/json/SearchResults;

    invoke-direct {v5}, Lcom/htc/cscore/restapi/json/SearchResults;-><init>()V

    new-instance v7, Lcom/htc/cscore/restapi/proxy/ClientRestApi$8;

    invoke-direct {v7, p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$8;-><init>(Lcom/htc/cscore/restapi/proxy/ClientRestApi;)V

    invoke-virtual {v7}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$8;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    const-class v7, Lcom/htc/cscore/restapi/proxy/WebClasses$WFriend;

    invoke-static {v5, v2, v7, v1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/cscore/restapi/json/SearchResults;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v5, :cond_0

    const/4 v5, 0x0

    :cond_0
    return-object v5

    :catch_0
    move-exception v0

    const-string v7, "GetFriends (%s)"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p0, v7, v0, v8}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v7

    throw v7
.end method

.method public GetFriendsRecommendedCommentsLikes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;II)Lcom/htc/cscore/restapi/json/SearchResults;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "II)",
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

    const-string v7, "%s/Services/RecommendCommentLike.svc/RecommendCommentLike/GetFriendsRecommendedCommentsLikes/?appType=%s&sortBy=%s&sortDescending=%s&start=%s&count=%s"

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p1, v8, v9

    const/4 v9, 0x2

    aput-object p2, v8, v9

    const/4 v9, 0x3

    aput-object p3, v8, v9

    const/4 v9, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x5

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :try_start_0
    const-string v4, ""

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v7, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->GET:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v6, v7, v3}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/htc/cscore/restapi/json/SearchResults;

    invoke-direct {v5}, Lcom/htc/cscore/restapi/json/SearchResults;-><init>()V

    new-instance v7, Lcom/htc/cscore/restapi/proxy/ClientRestApi$16;

    invoke-direct {v7, p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$16;-><init>(Lcom/htc/cscore/restapi/proxy/ClientRestApi;)V

    invoke-virtual {v7}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$16;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    const-class v7, Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationStatus;

    invoke-static {v5, v2, v7, v1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/cscore/restapi/json/SearchResults;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v5, :cond_0

    const/4 v5, 0x0

    :cond_0
    return-object v5

    :catch_0
    move-exception v0

    const-string v7, "GetFriendsRecommendedCommentsLikes (%s)"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p0, v7, v0, v8}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v7

    throw v7
.end method

.method public GetIncomingRequests(Ljava/lang/String;Ljava/lang/Boolean;II)Lcom/htc/cscore/restapi/json/SearchResults;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "II)",
            "Lcom/htc/cscore/restapi/json/SearchResults",
            "<",
            "Lcom/htc/cscore/restapi/proxy/WebClasses$WFriend;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    const-string v7, "%s/Services/FriendRequests.svc/GetIncomingRequests/?sortBy=%s&sortDescending=%s&start=%s&count=%s"

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p1, v8, v9

    const/4 v9, 0x2

    aput-object p2, v8, v9

    const/4 v9, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :try_start_0
    const-string v4, ""

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v7, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->GET:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v6, v7, v3}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/htc/cscore/restapi/json/SearchResults;

    invoke-direct {v5}, Lcom/htc/cscore/restapi/json/SearchResults;-><init>()V

    new-instance v7, Lcom/htc/cscore/restapi/proxy/ClientRestApi$10;

    invoke-direct {v7, p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$10;-><init>(Lcom/htc/cscore/restapi/proxy/ClientRestApi;)V

    invoke-virtual {v7}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$10;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    const-class v7, Lcom/htc/cscore/restapi/proxy/WebClasses$WFriend;

    invoke-static {v5, v2, v7, v1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/cscore/restapi/json/SearchResults;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v5, :cond_0

    const/4 v5, 0x0

    :cond_0
    return-object v5

    :catch_0
    move-exception v0

    const-string v7, "GetIncomingRequests (%s)"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p0, v7, v0, v8}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v7

    throw v7
.end method

.method public GetMatches(Ljava/lang/String;Ljava/lang/Boolean;II)Lcom/htc/cscore/restapi/json/SearchResults;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "II)",
            "Lcom/htc/cscore/restapi/json/SearchResults",
            "<",
            "Lcom/htc/cscore/restapi/proxy/WebClasses$WFriend;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    const-string v7, "%s/Services/FriendRequests.svc/GetMatches/?sortBy=%s&sortDescending=%s&start=%s&count=%s"

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p1, v8, v9

    const/4 v9, 0x2

    aput-object p2, v8, v9

    const/4 v9, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :try_start_0
    const-string v4, ""

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v7, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->GET:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v6, v7, v3}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/htc/cscore/restapi/json/SearchResults;

    invoke-direct {v5}, Lcom/htc/cscore/restapi/json/SearchResults;-><init>()V

    new-instance v7, Lcom/htc/cscore/restapi/proxy/ClientRestApi$9;

    invoke-direct {v7, p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$9;-><init>(Lcom/htc/cscore/restapi/proxy/ClientRestApi;)V

    invoke-virtual {v7}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$9;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    const-class v7, Lcom/htc/cscore/restapi/proxy/WebClasses$WFriend;

    invoke-static {v5, v2, v7, v1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/cscore/restapi/json/SearchResults;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v5, :cond_0

    const/4 v5, 0x0

    :cond_0
    return-object v5

    :catch_0
    move-exception v0

    const-string v7, "GetMatches (%s)"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p0, v7, v0, v8}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v7

    throw v7
.end method

.method public GetPhysicalDeviceModels(Ljava/lang/String;Ljava/lang/Boolean;II)Lcom/htc/cscore/restapi/json/SearchResults;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "II)",
            "Lcom/htc/cscore/restapi/json/SearchResults",
            "<",
            "Lcom/htc/cscore/restapi/proxy/WebClasses$WPhysicalDeviceModel;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    const-string v7, "%s/Services/PhysicalDeviceModels.svc/GetPhysicalDeviceModels/?sortBy=%s&sortDescending=%s&start=%s&count=%s"

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p1, v8, v9

    const/4 v9, 0x2

    aput-object p2, v8, v9

    const/4 v9, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :try_start_0
    const-string v4, ""

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v7, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->GET:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v6, v7, v3}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/htc/cscore/restapi/json/SearchResults;

    invoke-direct {v5}, Lcom/htc/cscore/restapi/json/SearchResults;-><init>()V

    new-instance v7, Lcom/htc/cscore/restapi/proxy/ClientRestApi$12;

    invoke-direct {v7, p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$12;-><init>(Lcom/htc/cscore/restapi/proxy/ClientRestApi;)V

    invoke-virtual {v7}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$12;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    const-class v7, Lcom/htc/cscore/restapi/proxy/WebClasses$WPhysicalDeviceModel;

    invoke-static {v5, v2, v7, v1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/cscore/restapi/json/SearchResults;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v5, :cond_0

    const/4 v5, 0x0

    :cond_0
    return-object v5

    :catch_0
    move-exception v0

    const-string v7, "GetPhysicalDeviceModels (%s)"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p0, v7, v0, v8}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v7

    throw v7
.end method

.method public GetRecommendAppsPopularityCounts(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;II)Lcom/htc/cscore/restapi/json/SearchResults;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "II)",
            "Lcom/htc/cscore/restapi/json/SearchResults",
            "<",
            "Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendAppsPopularityCount;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    const-string v8, "%s/Services/RecommendCommentLike.svc/RecommendCommentLike/GetAppsPopularityCounts/?appType=%s&sortBy=%s&sortDescending=%s&start=%s&count=%s"

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object p2, v9, v10

    const/4 v10, 0x2

    aput-object p3, v9, v10

    const/4 v10, 0x3

    aput-object p4, v9, v10

    const/4 v10, 0x4

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x5

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    :try_start_0
    const-string v5, ""

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    move-object v0, v5

    check-cast v0, Lorg/json/JSONObject;

    move-object v8, v0

    const-string v9, "appIds"

    invoke-static {p1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v8, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->POST:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v7, v8, v4}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/htc/cscore/restapi/json/SearchResults;

    invoke-direct {v6}, Lcom/htc/cscore/restapi/json/SearchResults;-><init>()V

    new-instance v8, Lcom/htc/cscore/restapi/proxy/ClientRestApi$21;

    invoke-direct {v8, p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$21;-><init>(Lcom/htc/cscore/restapi/proxy/ClientRestApi;)V

    invoke-virtual {v8}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$21;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    const-class v8, Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendAppsPopularityCount;

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

    const-string v8, "GetRecommendAppsPopularityCounts (%s)"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v7, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {p0, v8, v1, v9}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v8

    throw v8
.end method

.method public GetRecommendedWishlist(Ljava/lang/String;Ljava/lang/Boolean;II)Lcom/htc/cscore/restapi/json/SearchResults;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "II)",
            "Lcom/htc/cscore/restapi/json/SearchResults",
            "<",
            "Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendWishlist;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    const-string v7, "%s/Services/RecommendCommentLike.svc/RecommendCommentLike/GetRecommendedWishlist/?sortBy=%s&sortDescending=%s&start=%s&count=%s"

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p1, v8, v9

    const/4 v9, 0x2

    aput-object p2, v8, v9

    const/4 v9, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :try_start_0
    const-string v4, ""

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v7, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->GET:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v6, v7, v3}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/htc/cscore/restapi/json/SearchResults;

    invoke-direct {v5}, Lcom/htc/cscore/restapi/json/SearchResults;-><init>()V

    new-instance v7, Lcom/htc/cscore/restapi/proxy/ClientRestApi$20;

    invoke-direct {v7, p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$20;-><init>(Lcom/htc/cscore/restapi/proxy/ClientRestApi;)V

    invoke-virtual {v7}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$20;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    const-class v7, Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendWishlist;

    invoke-static {v5, v2, v7, v1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/cscore/restapi/json/SearchResults;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v5, :cond_0

    const/4 v5, 0x0

    :cond_0
    return-object v5

    :catch_0
    move-exception v0

    const-string v7, "GetRecommendedWishlist (%s)"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p0, v7, v0, v8}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v7

    throw v7
.end method

.method public GetRegionForAccount(Ljava/lang/String;)Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-string v7, "%s/Services/Regions.svc/Regions/GetRegionForAccount/"

    new-array v8, v11, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :try_start_0
    const-string v4, ""

    new-instance v4, Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v7, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->POST:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v6, v7, v3}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;

    invoke-direct {v5}, Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;-><init>()V

    new-instance v7, Lcom/htc/cscore/restapi/proxy/ClientRestApi$25;

    invoke-direct {v7, p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$25;-><init>(Lcom/htc/cscore/restapi/proxy/ClientRestApi;)V

    invoke-virtual {v7}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$25;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    const-class v7, Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;

    invoke-static {v5, v2, v7, v1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v5, :cond_0

    const/4 v5, 0x0

    :cond_0
    return-object v5

    :catch_0
    move-exception v0

    const-string v7, "GetRegionForAccount (%s)"

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v6, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p0, v7, v0, v8}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v7

    throw v7
.end method

.method public GetRegions()Lcom/htc/cscore/restapi/json/SearchResults;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
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

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-string v7, "%s/Services/Regions.svc/Regions/"

    new-array v8, v11, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "MyHTC"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "GetRegions URL: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v4, ""

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v7, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->GET:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v6, v7, v3}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/htc/cscore/restapi/json/SearchResults;

    invoke-direct {v5}, Lcom/htc/cscore/restapi/json/SearchResults;-><init>()V

    new-instance v7, Lcom/htc/cscore/restapi/proxy/ClientRestApi$24;

    invoke-direct {v7, p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$24;-><init>(Lcom/htc/cscore/restapi/proxy/ClientRestApi;)V

    invoke-virtual {v7}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$24;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    const-class v7, Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;

    invoke-static {v5, v2, v7, v1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/cscore/restapi/json/SearchResults;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v5, :cond_0

    const/4 v5, 0x0

    :cond_0
    return-object v5

    :catch_0
    move-exception v0

    const-string v7, "GetRegions (%s)"

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v6, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p0, v7, v0, v8}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v7

    throw v7
.end method

.method public GetRegions(Ljava/lang/String;Ljava/lang/Boolean;II)Lcom/htc/cscore/restapi/json/SearchResults;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "II)",
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

    const-string v7, "%s/Services/Regions.svc/Regions/?sortBy=%s&sortDescending=%s&start=%s&count=%s"

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p1, v8, v9

    const/4 v9, 0x2

    aput-object p2, v8, v9

    const/4 v9, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :try_start_0
    const-string v4, ""

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v7, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->GET:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v6, v7, v3}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/htc/cscore/restapi/json/SearchResults;

    invoke-direct {v5}, Lcom/htc/cscore/restapi/json/SearchResults;-><init>()V

    new-instance v7, Lcom/htc/cscore/restapi/proxy/ClientRestApi$23;

    invoke-direct {v7, p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$23;-><init>(Lcom/htc/cscore/restapi/proxy/ClientRestApi;)V

    invoke-virtual {v7}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$23;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    const-class v7, Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;

    invoke-static {v5, v2, v7, v1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/cscore/restapi/json/SearchResults;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v5, :cond_0

    const/4 v5, 0x0

    :cond_0
    return-object v5

    :catch_0
    move-exception v0

    const-string v7, "GetRegions (%s)"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p0, v7, v0, v8}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v7

    throw v7
.end method

.method public GetSecurityQuestion(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    const/4 v12, 0x1

    const/4 v11, 0x0

    const-string v8, "%s/Services/Accounts.svc/Accounts/SecurityQuestion/"

    new-array v9, v12, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    :try_start_0
    const-string v5, ""

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    move-object v0, v5

    check-cast v0, Lorg/json/JSONObject;

    move-object v8, v0

    const-string v9, "emailAddress"

    invoke-static {p1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v8, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->POST:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v7, v8, v4}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6}, Ljava/lang/String;-><init>()V

    new-instance v8, Lcom/htc/cscore/restapi/proxy/ClientRestApi$5;

    invoke-direct {v8, p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$5;-><init>(Lcom/htc/cscore/restapi/proxy/ClientRestApi;)V

    invoke-virtual {v8}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$5;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    const-class v8, Ljava/lang/String;

    invoke-static {v6, v3, v8, v2}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v6, :cond_0

    const/4 v6, 0x0

    :cond_0
    return-object v6

    :catch_0
    move-exception v1

    const-string v8, "GetSecurityQuestion (%s)"

    new-array v9, v12, [Ljava/lang/Object;

    aput-object v7, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {p0, v8, v1, v9}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v8

    throw v8
.end method

.method public GetServerTime()Ljava/util/Date;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-string v7, "%s/Services/Server.svc/Time"

    new-array v8, v11, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :try_start_0
    const-string v4, ""

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v7, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->GET:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v6, v7, v3}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    new-instance v7, Lcom/htc/cscore/restapi/proxy/ClientRestApi$26;

    invoke-direct {v7, p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$26;-><init>(Lcom/htc/cscore/restapi/proxy/ClientRestApi;)V

    invoke-virtual {v7}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$26;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    const-class v7, Ljava/util/Date;

    invoke-static {v5, v2, v7, v1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v5, :cond_0

    const/4 v5, 0x0

    :cond_0
    return-object v5

    :catch_0
    move-exception v0

    const-string v7, "GetServerTime (%s)"

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v6, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p0, v7, v0, v8}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v7

    throw v7
.end method

.method public GetVersion()Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-string v7, "%s/Services/Server.svc/Version"

    new-array v8, v11, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :try_start_0
    const-string v4, ""

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v7, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->GET:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v6, v7, v3}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5}, Ljava/lang/String;-><init>()V

    new-instance v7, Lcom/htc/cscore/restapi/proxy/ClientRestApi$27;

    invoke-direct {v7, p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$27;-><init>(Lcom/htc/cscore/restapi/proxy/ClientRestApi;)V

    invoke-virtual {v7}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$27;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    const-class v7, Ljava/lang/String;

    invoke-static {v5, v2, v7, v1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v5, :cond_0

    const/4 v5, 0x0

    :cond_0
    return-object v5

    :catch_0
    move-exception v0

    const-string v7, "GetVersion (%s)"

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v6, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p0, v7, v0, v8}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v7

    throw v7
.end method

.method public HandsetLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    const-string v8, "%s/Services/Accounts.svc/Accounts/HandsetLogin/%s/"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object p2, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    :try_start_0
    const-string v5, ""

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    move-object v0, v5

    check-cast v0, Lorg/json/JSONObject;

    move-object v8, v0

    const-string v9, "emailAddress"

    invoke-static {p1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object v0, v5

    check-cast v0, Lorg/json/JSONObject;

    move-object v8, v0

    const-string v9, "AuthTicket"

    invoke-static {p3}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object v0, v5

    check-cast v0, Lorg/json/JSONObject;

    move-object v8, v0

    const-string v9, "versionNumber"

    invoke-static/range {p4 .. p4}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v8, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->POST:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v7, v8, v4}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;

    invoke-direct {v6}, Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;-><init>()V

    new-instance v8, Lcom/htc/cscore/restapi/proxy/ClientRestApi$3;

    invoke-direct {v8, p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$3;-><init>(Lcom/htc/cscore/restapi/proxy/ClientRestApi;)V

    invoke-virtual {v8}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    const-class v8, Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;

    invoke-static {v6, v3, v8, v2}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v6, :cond_0

    const/4 v6, 0x0

    :cond_0
    return-object v6

    :catch_0
    move-exception v1

    const-string v8, "HandsetLogin (%s)"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v7, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {p0, v8, v1, v9}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v8

    throw v8
.end method

.method public RequestBinding(Lcom/htc/cscore/restapi/proxy/WebClasses$WRequestBind;Ljava/lang/String;)Ljava/util/UUID;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    const/4 v13, 0x1

    const/4 v12, 0x0

    const-string v8, "%s/Services/Accounts.svc/Accounts/RequestBinding/"

    new-array v9, v13, [Ljava/lang/Object;

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

    const-string v9, "requestBind"

    invoke-static {p1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object v0, v5

    check-cast v0, Lorg/json/JSONObject;

    move-object v8, v0

    const-string v9, "AuthTicket"

    invoke-static/range {p2 .. p2}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v8, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->POST:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v7, v8, v4}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/util/UUID;

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    invoke-direct {v6, v8, v9, v10, v11}, Ljava/util/UUID;-><init>(JJ)V

    new-instance v8, Lcom/htc/cscore/restapi/proxy/ClientRestApi$2;

    invoke-direct {v8, p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$2;-><init>(Lcom/htc/cscore/restapi/proxy/ClientRestApi;)V

    invoke-virtual {v8}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    const-class v8, Ljava/util/UUID;

    invoke-static {v6, v3, v8, v2}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/UUID;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v6, :cond_0

    const/4 v6, 0x0

    :cond_0
    return-object v6

    :catch_0
    move-exception v1

    const-string v8, "RequestBinding (%s)"

    new-array v9, v13, [Ljava/lang/Object;

    aput-object v7, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {p0, v8, v1, v9}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v8

    throw v8
.end method

.method public ScheduleFullMerge()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v4, "%s/Services/VirtualDevices.svc/Devices/ScheduleFullMerge/"

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :try_start_0
    const-string v2, ""

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->GET:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v3, v4, v1}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v4, "ScheduleFullMerge (%s)"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v3, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v4, v0, v5}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v4

    throw v4
.end method

.method public SendInvitation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v8, 0x1

    const-string v5, "%s/Services/FriendRequests.svc/Requests/%s/"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v7, v6, v9

    aput-object p1, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :try_start_0
    const-string v3, ""

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    move-object v0, v3

    check-cast v0, Lorg/json/JSONObject;

    move-object v5, v0

    const-string v6, "Message"

    invoke-static {p2}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->POST:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v4, v5, v2}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    const-string v5, "SendInvitation (%s)"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v4, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v5, v1, v6}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v5

    throw v5
.end method

.method public UnblockFriendRequest(Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v4, "%s/Services/FriendRequests.svc/Unblocked/%s/"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v6, v5, v8

    aput-object p1, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :try_start_0
    const-string v2, ""

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->DELETE:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v3, v4, v1}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v4, "UnblockFriendRequest (%s)"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v3, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v4, v0, v5}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v4

    throw v4
.end method

.method public UpdateAccount(Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;)Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    const/4 v11, 0x0

    const/4 v10, 0x1

    const-string v7, "%s/Services/Accounts.svc/Accounts/"

    new-array v8, v10, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :try_start_0
    const-string v4, ""

    invoke-static {p1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v7, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->POST:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v6, v7, v3}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;

    invoke-direct {v5}, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;-><init>()V

    new-instance v7, Lcom/htc/cscore/restapi/proxy/ClientRestApi$4;

    invoke-direct {v7, p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$4;-><init>(Lcom/htc/cscore/restapi/proxy/ClientRestApi;)V

    invoke-virtual {v7}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$4;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    const-class v7, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;

    invoke-static {v5, v2, v7, v1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v5, :cond_0

    const/4 v5, 0x0

    :cond_0
    return-object v5

    :catch_0
    move-exception v0

    const-string v7, "UpdateAccount (%s)"

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v6, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p0, v7, v0, v8}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v7

    throw v7
.end method

.method public VerifyEmailAddress(Ljava/lang/String;)Ljava/util/UUID;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    const/4 v13, 0x1

    const/4 v12, 0x0

    const-string v8, "%s/Services/Accounts.svc/Accounts/VerifyEmailAddress/"

    new-array v9, v13, [Ljava/lang/Object;

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

    const-string v9, "VerificationId"

    invoke-static {p1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v8, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->POST:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v7, v8, v4}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/util/UUID;

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    invoke-direct {v6, v8, v9, v10, v11}, Ljava/util/UUID;-><init>(JJ)V

    new-instance v8, Lcom/htc/cscore/restapi/proxy/ClientRestApi$6;

    invoke-direct {v8, p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$6;-><init>(Lcom/htc/cscore/restapi/proxy/ClientRestApi;)V

    invoke-virtual {v8}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$6;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    const-class v8, Ljava/util/UUID;

    invoke-static {v6, v3, v8, v2}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/UUID;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v6, :cond_0

    const/4 v6, 0x0

    :cond_0
    return-object v6

    :catch_0
    move-exception v1

    const-string v8, "VerifyEmailAddress (%s)"

    new-array v9, v13, [Ljava/lang/Object;

    aput-object v7, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {p0, v8, v1, v9}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v8

    throw v8
.end method

.method protected abstract _authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract _webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;
.end method

.method protected abstract _webRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public getMarketingOptInString(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v5, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    const-string v7, "$"

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    add-int/lit8 v7, v1, -0x1

    invoke-virtual {v5, v10, v7}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_0
    const-string v7, "%s/%s/static/marketing-opt-in.html"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v5, v8, v10

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :try_start_0
    const-string v4, ""

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v7, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->GET:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v6, v7, v3}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :cond_1
    return-object v2

    :catch_0
    move-exception v0

    const-string v7, "getMarketingOptInString (%s)"

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v6, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p0, v7, v0, v8}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v7

    throw v7
.end method

.method public getVirtualDeviceAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    const/4 v11, 0x0

    const/4 v10, 0x1

    const-string v7, "%s/Services/VirtualDevices.svc/Devices/Attribute/%s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v9, v8, v11

    aput-object p1, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "VirtualDeviceAttribute"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getVirtualDeviceAttribute URL: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v4, ""

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v7, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->GET:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v6, v7, v3}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5}, Ljava/lang/String;-><init>()V

    new-instance v7, Lcom/htc/cscore/restapi/proxy/ClientRestApi$28;

    invoke-direct {v7, p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$28;-><init>(Lcom/htc/cscore/restapi/proxy/ClientRestApi;)V

    invoke-virtual {v7}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$28;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    const-class v7, Ljava/lang/String;

    invoke-static {v5, v2, v7, v1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v7, "VirtualDeviceAttribute"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getVirtualDeviceAttribute retObj: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v5, :cond_0

    const/4 v5, 0x0

    :cond_0
    return-object v5

    :catch_0
    move-exception v0

    const-string v7, "getVirtualDeviceAttribute (%s)"

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v6, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p0, v7, v0, v8}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v7

    throw v7
.end method

.method public hasLocationService(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    const/4 v12, 0x1

    const/4 v11, 0x0

    iget-object v7, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    const-string v9, "$"

    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    add-int/lit8 v9, v2, -0x1

    invoke-virtual {v7, v11, v9}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_0
    const-string v9, "%s/%s/handsetLocationEnabled.html"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v7, v10, v11

    aput-object p1, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    :try_start_0
    const-string v5, ""

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v9, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->GET:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v8, v9, v4}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6}, Ljava/lang/String;-><init>()V

    new-instance v9, Lcom/htc/cscore/restapi/proxy/ClientRestApi$30;

    invoke-direct {v9, p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$30;-><init>(Lcom/htc/cscore/restapi/proxy/ClientRestApi;)V

    invoke-virtual {v9}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$30;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    const-class v9, Ljava/lang/String;

    invoke-static {v6, v3, v9, v1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v6, :cond_1

    const/4 v6, 0x0

    :cond_1
    return-object v6

    :catch_0
    move-exception v0

    const-string v9, "hasLocationService (%s)"

    new-array v10, v12, [Ljava/lang/Object;

    aput-object v8, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {p0, v9, v0, v10}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v9

    throw v9
.end method

.method public setVirtualDeviceAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    const/4 v12, 0x0

    const/4 v11, 0x1

    const-string v8, "%s/Services/VirtualDevices.svc/Devices/Attribute/%s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v10, v9, v12

    aput-object p1, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "VirtualDeviceAttribute"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getVirtualDeviceAttribute URL: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v5, ""

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    move-object v0, v5

    check-cast v0, Lorg/json/JSONObject;

    move-object v8, v0

    const-string v9, "value"

    invoke-static {p2}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v8, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->POST:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v7, v8, v4}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6}, Ljava/lang/String;-><init>()V

    new-instance v8, Lcom/htc/cscore/restapi/proxy/ClientRestApi$29;

    invoke-direct {v8, p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$29;-><init>(Lcom/htc/cscore/restapi/proxy/ClientRestApi;)V

    invoke-virtual {v8}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$29;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    const-class v8, Ljava/lang/String;

    invoke-static {v6, v3, v8, v2}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v8, "VirtualDeviceAttribute"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setVirtualDeviceAttribute retObj: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    const-string v8, "getVirtualDeviceAttribute (%s)"

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v7, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {p0, v8, v1, v9}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v8

    throw v8
.end method
