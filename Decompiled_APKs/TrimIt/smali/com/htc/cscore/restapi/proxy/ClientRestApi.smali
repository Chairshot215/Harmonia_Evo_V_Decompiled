.class public abstract Lcom/htc/cscore/restapi/proxy/ClientRestApi;
.super Ljava/lang/Object;
.source "ClientRestApi.java"


# instance fields
.field protected ServerUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public AddAggregatePerson(Lcom/htc/cscore/restapi/proxy/WebClasses$WAggregatePerson;)Lcom/htc/cscore/restapi/proxy/WebClasses$WAggregatePerson;
    .locals 12
    .parameter "person"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 571
    const-string v7, "%s/Services/People.svc/People/"

    new-array v8, v10, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 574
    .local v6, url:Ljava/lang/String;
    :try_start_0
    const-string v4, ""

    .line 577
    .local v4, paramObj:Ljava/lang/String;
    invoke-static {p1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 578
    .local v4, paramObj:Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 580
    .local v3, jsonSend:Ljava/lang/String;
    sget-object v7, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->POST:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v6, v7, v3}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 582
    .local v2, jsonRec:Ljava/lang/String;
    new-instance v5, Lcom/htc/cscore/restapi/proxy/WebClasses$WAggregatePerson;

    invoke-direct {v5}, Lcom/htc/cscore/restapi/proxy/WebClasses$WAggregatePerson;-><init>()V

    .line 583
    .local v5, retObj:Lcom/htc/cscore/restapi/proxy/WebClasses$WAggregatePerson;
    new-instance v7, Lcom/htc/cscore/restapi/proxy/ClientRestApi$11;

    invoke-direct {v7, p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$11;-><init>(Lcom/htc/cscore/restapi/proxy/ClientRestApi;)V

    invoke-virtual {v7}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$11;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 584
    .local v1, genericType:Ljava/lang/reflect/Type;
    const-class v7, Lcom/htc/cscore/restapi/proxy/WebClasses$WAggregatePerson;

    invoke-static {v5, v2, v7, v1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #retObj:Lcom/htc/cscore/restapi/proxy/WebClasses$WAggregatePerson;
    check-cast v5, Lcom/htc/cscore/restapi/proxy/WebClasses$WAggregatePerson;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 585
    .restart local v5       #retObj:Lcom/htc/cscore/restapi/proxy/WebClasses$WAggregatePerson;
    if-nez v5, :cond_0

    .line 586
    const/4 v5, 0x0

    .line 588
    .end local v5           #retObj:Lcom/htc/cscore/restapi/proxy/WebClasses$WAggregatePerson;
    :cond_0
    return-object v5

    .line 590
    .end local v1           #genericType:Ljava/lang/reflect/Type;
    .end local v2           #jsonRec:Ljava/lang/String;
    .end local v3           #jsonSend:Ljava/lang/String;
    .end local v4           #paramObj:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 591
    .local v0, e:Ljava/lang/Exception;
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
    .parameter "FriendRequestId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 432
    const-string v4, "%s/Services/FriendRequests.svc/Friends/%s/"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v6, v5, v8

    aput-object p1, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 435
    .local v3, url:Ljava/lang/String;
    :try_start_0
    const-string v2, ""

    .line 437
    .local v2, paramObj:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 439
    .local v1, jsonSend:Ljava/lang/String;
    sget-object v4, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->POST:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v3, v4, v1}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    return-void

    .line 441
    .end local v1           #jsonSend:Ljava/lang/String;
    .end local v2           #paramObj:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 442
    .local v0, e:Ljava/lang/Exception;
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
    .parameter "appType"
    .parameter "appId"
    .parameter "appComment"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 686
    const-string v8, "%s/Services/RecommendCommentLike.svc/RecommendCommentLike/AppComment/"

    new-array v9, v11, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 689
    .local v7, url:Ljava/lang/String;
    :try_start_0
    const-string v5, ""

    .line 692
    .local v5, paramObj:Ljava/lang/String;
    new-instance v5, Lorg/json/JSONObject;

    .end local v5           #paramObj:Ljava/lang/String;
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 693
    .local v5, paramObj:Lorg/json/JSONObject;
    move-object v0, v5

    check-cast v0, Lorg/json/JSONObject;

    move-object v8, v0

    const-string v9, "appType"

    invoke-static {p1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 694
    move-object v0, v5

    check-cast v0, Lorg/json/JSONObject;

    move-object v8, v0

    const-string v9, "appId"

    invoke-static {p2}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 695
    move-object v0, v5

    check-cast v0, Lorg/json/JSONObject;

    move-object v8, v0

    const-string v9, "appComment"

    invoke-static/range {p3 .. p3}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 696
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 698
    .local v4, jsonSend:Ljava/lang/String;
    sget-object v8, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->POST:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v7, v8, v4}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 700
    .local v3, jsonRec:Ljava/lang/String;
    new-instance v6, Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendCommentLike;

    invoke-direct {v6}, Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendCommentLike;-><init>()V

    .line 701
    .local v6, retObj:Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendCommentLike;
    new-instance v8, Lcom/htc/cscore/restapi/proxy/ClientRestApi$14;

    invoke-direct {v8, p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$14;-><init>(Lcom/htc/cscore/restapi/proxy/ClientRestApi;)V

    invoke-virtual {v8}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$14;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 702
    .local v2, genericType:Ljava/lang/reflect/Type;
    const-class v8, Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendCommentLike;

    invoke-static {v6, v3, v8, v2}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #retObj:Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendCommentLike;
    check-cast v6, Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendCommentLike;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 703
    .restart local v6       #retObj:Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendCommentLike;
    if-nez v6, :cond_0

    .line 704
    const/4 v6, 0x0

    .line 706
    .end local v6           #retObj:Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendCommentLike;
    :cond_0
    return-object v6

    .line 708
    .end local v2           #genericType:Ljava/lang/reflect/Type;
    .end local v3           #jsonRec:Ljava/lang/String;
    .end local v4           #jsonSend:Ljava/lang/String;
    .end local v5           #paramObj:Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 709
    .local v1, e:Ljava/lang/Exception;
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
    .parameter "appType"
    .parameter "appId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 629
    const-string v8, "%s/Services/RecommendCommentLike.svc/RecommendCommentLike/AppLikes/"

    new-array v9, v11, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 632
    .local v7, url:Ljava/lang/String;
    :try_start_0
    const-string v5, ""

    .line 635
    .local v5, paramObj:Ljava/lang/String;
    new-instance v5, Lorg/json/JSONObject;

    .end local v5           #paramObj:Ljava/lang/String;
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 636
    .local v5, paramObj:Lorg/json/JSONObject;
    move-object v0, v5

    check-cast v0, Lorg/json/JSONObject;

    move-object v8, v0

    const-string v9, "appType"

    invoke-static {p1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 637
    move-object v0, v5

    check-cast v0, Lorg/json/JSONObject;

    move-object v8, v0

    const-string v9, "appId"

    invoke-static {p2}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 638
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 640
    .local v4, jsonSend:Ljava/lang/String;
    sget-object v8, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->POST:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v7, v8, v4}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 642
    .local v3, jsonRec:Ljava/lang/String;
    new-instance v6, Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendCommentLike;

    invoke-direct {v6}, Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendCommentLike;-><init>()V

    .line 643
    .local v6, retObj:Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendCommentLike;
    new-instance v8, Lcom/htc/cscore/restapi/proxy/ClientRestApi$13;

    invoke-direct {v8, p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$13;-><init>(Lcom/htc/cscore/restapi/proxy/ClientRestApi;)V

    invoke-virtual {v8}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$13;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 644
    .local v2, genericType:Ljava/lang/reflect/Type;
    const-class v8, Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendCommentLike;

    invoke-static {v6, v3, v8, v2}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #retObj:Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendCommentLike;
    check-cast v6, Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendCommentLike;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 645
    .restart local v6       #retObj:Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendCommentLike;
    if-nez v6, :cond_0

    .line 646
    const/4 v6, 0x0

    .line 648
    .end local v6           #retObj:Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendCommentLike;
    :cond_0
    return-object v6

    .line 650
    .end local v2           #genericType:Ljava/lang/reflect/Type;
    .end local v3           #jsonRec:Ljava/lang/String;
    .end local v4           #jsonSend:Ljava/lang/String;
    .end local v5           #paramObj:Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 651
    .local v1, e:Ljava/lang/Exception;
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
    .parameter "bindRequest"
    .parameter "AuthTicket"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 98
    const-string v5, "%s/Services/Accounts.svc/Accounts/BindHandsetToAccount/"

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 101
    .local v4, url:Ljava/lang/String;
    :try_start_0
    const-string v3, ""

    .line 104
    .local v3, paramObj:Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    .end local v3           #paramObj:Ljava/lang/String;
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 105
    .local v3, paramObj:Lorg/json/JSONObject;
    move-object v0, v3

    check-cast v0, Lorg/json/JSONObject;

    move-object v5, v0

    const-string v6, "bindRequest"

    invoke-static {p1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 106
    move-object v0, v3

    check-cast v0, Lorg/json/JSONObject;

    move-object v5, v0

    const-string v6, "AuthTicket"

    invoke-static {p2}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 109
    .local v2, jsonSend:Ljava/lang/String;
    sget-object v5, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->POST:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v4, v5, v2}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    return-void

    .line 111
    .end local v2           #jsonSend:Ljava/lang/String;
    .end local v3           #paramObj:Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 112
    .local v1, e:Ljava/lang/Exception;
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
    .parameter "FriendRequestId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 382
    const-string v4, "%s/Services/FriendRequests.svc/Blocked/%s/"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v6, v5, v8

    aput-object p1, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 385
    .local v3, url:Ljava/lang/String;
    :try_start_0
    const-string v2, ""

    .line 387
    .local v2, paramObj:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 389
    .local v1, jsonSend:Ljava/lang/String;
    sget-object v4, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->POST:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v3, v4, v1}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    return-void

    .line 391
    .end local v1           #jsonSend:Ljava/lang/String;
    .end local v2           #paramObj:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 392
    .local v0, e:Ljava/lang/Exception;
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
    .parameter "queueName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1124
    const-string v4, "%s/Services/VirtualDevices.svc/Devices/CancelFullMerge/%s/"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v6, v5, v8

    aput-object p1, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1127
    .local v3, url:Ljava/lang/String;
    :try_start_0
    const-string v2, ""

    .line 1129
    .local v2, paramObj:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1131
    .local v1, jsonSend:Ljava/lang/String;
    sget-object v4, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->GET:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v3, v4, v1}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1136
    return-void

    .line 1133
    .end local v1           #jsonSend:Ljava/lang/String;
    .end local v2           #paramObj:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1134
    .local v0, e:Ljava/lang/Exception;
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
    .parameter "authTicket"
    .parameter "newPassword"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 179
    const-string v5, "%s/Services/Accounts.svc/Accounts/ChangePassword/"

    new-array v6, v8, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 182
    .local v4, url:Ljava/lang/String;
    :try_start_0
    const-string v3, ""

    .line 185
    .local v3, paramObj:Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    .end local v3           #paramObj:Ljava/lang/String;
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 186
    .local v3, paramObj:Lorg/json/JSONObject;
    move-object v0, v3

    check-cast v0, Lorg/json/JSONObject;

    move-object v5, v0

    const-string v6, "authTicket"

    invoke-static {p1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 187
    move-object v0, v3

    check-cast v0, Lorg/json/JSONObject;

    move-object v5, v0

    const-string v6, "newPassword"

    invoke-static {p2}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 188
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 190
    .local v2, jsonSend:Ljava/lang/String;
    sget-object v5, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->POST:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v4, v5, v2}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    return-void

    .line 192
    .end local v2           #jsonSend:Ljava/lang/String;
    .end local v3           #paramObj:Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 193
    .local v1, e:Ljava/lang/Exception;
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
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 38
    const-string v7, "%s/Services/Accounts.svc/Accounts/CreateAccountFromHandset/"

    new-array v8, v11, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 41
    .local v6, url:Ljava/lang/String;
    :try_start_0
    const-string v4, ""

    .line 44
    .local v4, paramObj:Ljava/lang/String;
    invoke-static {p1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 45
    .local v4, paramObj:Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 47
    .local v3, jsonSend:Ljava/lang/String;
    sget-object v7, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->POST:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v6, v7, v3}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 49
    .local v2, jsonRec:Ljava/lang/String;
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5}, Ljava/lang/String;-><init>()V

    .line 50
    .local v5, retObj:Ljava/lang/String;
    new-instance v7, Lcom/htc/cscore/restapi/proxy/ClientRestApi$1;

    invoke-direct {v7, p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$1;-><init>(Lcom/htc/cscore/restapi/proxy/ClientRestApi;)V

    invoke-virtual {v7}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 51
    .local v1, genericType:Ljava/lang/reflect/Type;
    const-class v7, Ljava/lang/String;

    invoke-static {v5, v2, v7, v1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #retObj:Ljava/lang/String;
    check-cast v5, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .restart local v5       #retObj:Ljava/lang/String;
    if-nez v5, :cond_0

    .line 53
    const/4 v5, 0x0

    .line 55
    .end local v5           #retObj:Ljava/lang/String;
    :cond_0
    return-object v5

    .line 57
    .end local v1           #genericType:Ljava/lang/reflect/Type;
    .end local v2           #jsonRec:Ljava/lang/String;
    .end local v3           #jsonSend:Ljava/lang/String;
    .end local v4           #paramObj:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 58
    .local v0, e:Ljava/lang/Exception;
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
    .parameter "FriendRequestId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 455
    const-string v4, "%s/Services/FriendRequests.svc/Friends/%s/"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v6, v5, v8

    aput-object p1, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 458
    .local v3, url:Ljava/lang/String;
    :try_start_0
    const-string v2, ""

    .line 460
    .local v2, paramObj:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 462
    .local v1, jsonSend:Ljava/lang/String;
    sget-object v4, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->DELETE:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v3, v4, v1}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 467
    return-void

    .line 464
    .end local v1           #jsonSend:Ljava/lang/String;
    .end local v2           #paramObj:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 465
    .local v0, e:Ljava/lang/Exception;
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
    .parameter "FriendRequestId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 358
    const-string v4, "%s/Services/FriendRequests.svc/Requests/%s/"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v6, v5, v8

    aput-object p1, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 361
    .local v3, url:Ljava/lang/String;
    :try_start_0
    const-string v2, ""

    .line 363
    .local v2, paramObj:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 365
    .local v1, jsonSend:Ljava/lang/String;
    sget-object v4, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->DELETE:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v3, v4, v1}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    return-void

    .line 367
    .end local v1           #jsonSend:Ljava/lang/String;
    .end local v2           #paramObj:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 368
    .local v0, e:Ljava/lang/Exception;
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
    .parameter "appType"
    .parameter "appId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 722
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

    .line 725
    .local v3, url:Ljava/lang/String;
    :try_start_0
    const-string v2, ""

    .line 727
    .local v2, paramObj:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 729
    .local v1, jsonSend:Ljava/lang/String;
    sget-object v4, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->DELETE:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v3, v4, v1}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 734
    return-void

    .line 731
    .end local v1           #jsonSend:Ljava/lang/String;
    .end local v2           #paramObj:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 732
    .local v0, e:Ljava/lang/Exception;
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
    .parameter "appType"
    .parameter "appId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 664
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

    .line 667
    .local v3, url:Ljava/lang/String;
    :try_start_0
    const-string v2, ""

    .line 669
    .local v2, paramObj:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 671
    .local v1, jsonSend:Ljava/lang/String;
    sget-object v4, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->DELETE:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v3, v4, v1}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 676
    return-void

    .line 673
    .end local v1           #jsonSend:Ljava/lang/String;
    .end local v2           #paramObj:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 674
    .local v0, e:Ljava/lang/Exception;
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
    .parameter "passwordRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 230
    const-string v4, "%s/Services/Accounts.svc/Accounts/ForgotPassword/"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 233
    .local v3, url:Ljava/lang/String;
    :try_start_0
    const-string v2, ""

    .line 236
    .local v2, paramObj:Ljava/lang/String;
    invoke-static {p1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 237
    .local v2, paramObj:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 239
    .local v1, jsonSend:Ljava/lang/String;
    sget-object v4, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->POST:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v3, v4, v1}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    return-void

    .line 241
    .end local v1           #jsonSend:Ljava/lang/String;
    .end local v2           #paramObj:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 242
    .local v0, e:Ljava/lang/Exception;
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
    .parameter
    .parameter "appType"
    .parameter "sortBy"
    .parameter "sortDescending"
    .parameter "start"
    .parameter "count"
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

    .prologue
    .line 945
    .local p1, appIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v8, "%s/Services/RecommendCommentLike.svc/RecommendCommentLike/GetAllApplicationInformation/"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 948
    .local v7, url:Ljava/lang/String;
    :try_start_0
    const-string v5, ""

    .line 951
    .local v5, paramObj:Ljava/lang/String;
    new-instance v5, Lorg/json/JSONObject;

    .end local v5           #paramObj:Ljava/lang/String;
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 952
    .local v5, paramObj:Lorg/json/JSONObject;
    move-object v0, v5

    check-cast v0, Lorg/json/JSONObject;

    move-object v8, v0

    const-string v9, "appIds"

    invoke-static {p1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 953
    move-object v0, v5

    check-cast v0, Lorg/json/JSONObject;

    move-object v8, v0

    const-string v9, "appType"

    invoke-static {p2}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 954
    move-object v0, v5

    check-cast v0, Lorg/json/JSONObject;

    move-object v8, v0

    const-string v9, "sortBy"

    invoke-static {p3}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 955
    move-object v0, v5

    check-cast v0, Lorg/json/JSONObject;

    move-object v8, v0

    const-string v9, "sortDescending"

    invoke-static/range {p4 .. p4}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 956
    move-object v0, v5

    check-cast v0, Lorg/json/JSONObject;

    move-object v8, v0

    const-string v9, "start"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v10}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 957
    move-object v0, v5

    check-cast v0, Lorg/json/JSONObject;

    move-object v8, v0

    const-string v9, "count"

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v10}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 958
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 960
    .local v4, jsonSend:Ljava/lang/String;
    sget-object v8, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->POST:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v7, v8, v4}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 962
    .local v3, jsonRec:Ljava/lang/String;
    new-instance v6, Lcom/htc/cscore/restapi/json/SearchResults;

    invoke-direct {v6}, Lcom/htc/cscore/restapi/json/SearchResults;-><init>()V

    .line 963
    .local v6, retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationInformation;>;"
    new-instance v8, Lcom/htc/cscore/restapi/proxy/ClientRestApi$22;

    invoke-direct {v8, p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$22;-><init>(Lcom/htc/cscore/restapi/proxy/ClientRestApi;)V

    invoke-virtual {v8}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$22;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 964
    .local v2, genericType:Ljava/lang/reflect/Type;
    const-class v8, Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationInformation;

    invoke-static {v6, v3, v8, v2}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationInformation;>;"
    check-cast v6, Lcom/htc/cscore/restapi/json/SearchResults;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 965
    .restart local v6       #retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationInformation;>;"
    if-nez v6, :cond_0

    .line 966
    const/4 v6, 0x0

    .line 968
    .end local v6           #retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationInformation;>;"
    :cond_0
    return-object v6

    .line 970
    .end local v2           #genericType:Ljava/lang/reflect/Type;
    .end local v3           #jsonRec:Ljava/lang/String;
    .end local v4           #jsonSend:Ljava/lang/String;
    .end local v5           #paramObj:Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 971
    .local v1, e:Ljava/lang/Exception;
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
    .parameter "keywords"
    .parameter "friendRequestId"
    .parameter "swLat"
    .parameter "swLong"
    .parameter "neLat"
    .parameter "neLong"
    .parameter "searchType"
    .parameter "categoryId"
    .parameter "favorites"
    .parameter "uncategorized"
    .parameter "sortBy"
    .parameter "sortDescending"
    .parameter "start"
    .parameter "count"
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

    .prologue
    .line 296
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

    .line 299
    .local v6, url:Ljava/lang/String;
    :try_start_0
    const-string v4, ""

    .line 301
    .local v4, paramObj:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 303
    .local v3, jsonSend:Ljava/lang/String;
    sget-object v7, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->GET:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v6, v7, v3}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 305
    .local v2, jsonRec:Ljava/lang/String;
    new-instance v5, Lcom/htc/cscore/restapi/json/SearchResults;

    invoke-direct {v5}, Lcom/htc/cscore/restapi/json/SearchResults;-><init>()V

    .line 306
    .local v5, retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WFootprint;>;"
    new-instance v7, Lcom/htc/cscore/restapi/proxy/ClientRestApi$7;

    invoke-direct {v7, p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$7;-><init>(Lcom/htc/cscore/restapi/proxy/ClientRestApi;)V

    invoke-virtual {v7}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$7;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 307
    .local v1, genericType:Ljava/lang/reflect/Type;
    const-class v7, Lcom/htc/cscore/restapi/proxy/WebClasses$WFootprint;

    invoke-static {v5, v2, v7, v1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WFootprint;>;"
    check-cast v5, Lcom/htc/cscore/restapi/json/SearchResults;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    .restart local v5       #retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WFootprint;>;"
    if-nez v5, :cond_0

    .line 309
    const/4 v5, 0x0

    .line 311
    .end local v5           #retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WFootprint;>;"
    :cond_0
    return-object v5

    .line 313
    .end local v1           #genericType:Ljava/lang/reflect/Type;
    .end local v2           #jsonRec:Ljava/lang/String;
    .end local v3           #jsonSend:Ljava/lang/String;
    .end local v4           #paramObj:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 314
    .local v0, e:Ljava/lang/Exception;
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
    .parameter "appId"
    .parameter "appType"
    .parameter "sortBy"
    .parameter "sortDescending"
    .parameter "start"
    .parameter "count"
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

    .prologue
    .line 864
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

    .line 867
    .local v6, url:Ljava/lang/String;
    :try_start_0
    const-string v4, ""

    .line 869
    .local v4, paramObj:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 871
    .local v3, jsonSend:Ljava/lang/String;
    sget-object v7, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->GET:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v6, v7, v3}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 873
    .local v2, jsonRec:Ljava/lang/String;
    new-instance v5, Lcom/htc/cscore/restapi/json/SearchResults;

    invoke-direct {v5}, Lcom/htc/cscore/restapi/json/SearchResults;-><init>()V

    .line 874
    .local v5, retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WFriendFeedback;>;"
    new-instance v7, Lcom/htc/cscore/restapi/proxy/ClientRestApi$19;

    invoke-direct {v7, p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$19;-><init>(Lcom/htc/cscore/restapi/proxy/ClientRestApi;)V

    invoke-virtual {v7}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$19;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 875
    .local v1, genericType:Ljava/lang/reflect/Type;
    const-class v7, Lcom/htc/cscore/restapi/proxy/WebClasses$WFriendFeedback;

    invoke-static {v5, v2, v7, v1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WFriendFeedback;>;"
    check-cast v5, Lcom/htc/cscore/restapi/json/SearchResults;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 876
    .restart local v5       #retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WFriendFeedback;>;"
    if-nez v5, :cond_0

    .line 877
    const/4 v5, 0x0

    .line 879
    .end local v5           #retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WFriendFeedback;>;"
    :cond_0
    return-object v5

    .line 881
    .end local v1           #genericType:Ljava/lang/reflect/Type;
    .end local v2           #jsonRec:Ljava/lang/String;
    .end local v3           #jsonSend:Ljava/lang/String;
    .end local v4           #paramObj:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 882
    .local v0, e:Ljava/lang/Exception;
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
    .parameter "friendRequestId"
    .parameter "appType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/4 v7, -0x1

    const/4 v11, 0x1

    .line 818
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

    .line 821
    .local v6, url:Ljava/lang/String;
    :try_start_0
    const-string v4, ""

    .line 823
    .local v4, paramObj:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 825
    .local v3, jsonSend:Ljava/lang/String;
    sget-object v8, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->GET:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v6, v8, v3}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 827
    .local v2, jsonRec:Ljava/lang/String;
    const/4 v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 828
    .local v5, retObj:Ljava/lang/Integer;
    new-instance v8, Lcom/htc/cscore/restapi/proxy/ClientRestApi$18;

    invoke-direct {v8, p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$18;-><init>(Lcom/htc/cscore/restapi/proxy/ClientRestApi;)V

    invoke-virtual {v8}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$18;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 829
    .local v1, genericType:Ljava/lang/reflect/Type;
    const-class v8, Ljava/lang/Integer;

    invoke-static {v5, v2, v8, v1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #retObj:Ljava/lang/Integer;
    check-cast v5, Ljava/lang/Integer;

    .line 830
    .restart local v5       #retObj:Ljava/lang/Integer;
    if-nez v5, :cond_0

    .line 833
    :goto_0
    return v7

    :cond_0
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    goto :goto_0

    .line 835
    .end local v1           #genericType:Ljava/lang/reflect/Type;
    .end local v2           #jsonRec:Ljava/lang/String;
    .end local v3           #jsonSend:Ljava/lang/String;
    .end local v4           #paramObj:Ljava/lang/String;
    .end local v5           #retObj:Ljava/lang/Integer;
    :catch_0
    move-exception v0

    .line 836
    .local v0, e:Ljava/lang/Exception;
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
    .parameter "friendRequestId"
    .parameter "appType"
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

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 740
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

    .line 743
    .local v6, url:Ljava/lang/String;
    :try_start_0
    const-string v4, ""

    .line 745
    .local v4, paramObj:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 747
    .local v3, jsonSend:Ljava/lang/String;
    sget-object v7, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->GET:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v6, v7, v3}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 749
    .local v2, jsonRec:Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 750
    .local v5, retObj:Ljava/util/List;,"Ljava/util/List<Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationStatus;>;"
    new-instance v7, Lcom/htc/cscore/restapi/proxy/ClientRestApi$15;

    invoke-direct {v7, p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$15;-><init>(Lcom/htc/cscore/restapi/proxy/ClientRestApi;)V

    invoke-virtual {v7}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$15;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 751
    .local v1, genericType:Ljava/lang/reflect/Type;
    const-class v7, Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationStatus;

    invoke-static {v5, v2, v7, v1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #retObj:Ljava/util/List;,"Ljava/util/List<Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationStatus;>;"
    check-cast v5, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 752
    .restart local v5       #retObj:Ljava/util/List;,"Ljava/util/List<Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationStatus;>;"
    if-nez v5, :cond_0

    .line 753
    const/4 v5, 0x0

    .line 755
    .end local v5           #retObj:Ljava/util/List;,"Ljava/util/List<Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationStatus;>;"
    :cond_0
    return-object v5

    .line 757
    .end local v1           #genericType:Ljava/lang/reflect/Type;
    .end local v2           #jsonRec:Ljava/lang/String;
    .end local v3           #jsonSend:Ljava/lang/String;
    .end local v4           #paramObj:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 758
    .local v0, e:Ljava/lang/Exception;
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
    .parameter "friendRequestId"
    .parameter "appType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/4 v7, -0x1

    const/4 v11, 0x1

    .line 792
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

    .line 795
    .local v6, url:Ljava/lang/String;
    :try_start_0
    const-string v4, ""

    .line 797
    .local v4, paramObj:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 799
    .local v3, jsonSend:Ljava/lang/String;
    sget-object v8, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->GET:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v6, v8, v3}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 801
    .local v2, jsonRec:Ljava/lang/String;
    const/4 v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 802
    .local v5, retObj:Ljava/lang/Integer;
    new-instance v8, Lcom/htc/cscore/restapi/proxy/ClientRestApi$17;

    invoke-direct {v8, p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$17;-><init>(Lcom/htc/cscore/restapi/proxy/ClientRestApi;)V

    invoke-virtual {v8}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$17;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 803
    .local v1, genericType:Ljava/lang/reflect/Type;
    const-class v8, Ljava/lang/Integer;

    invoke-static {v5, v2, v8, v1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #retObj:Ljava/lang/Integer;
    check-cast v5, Ljava/lang/Integer;

    .line 804
    .restart local v5       #retObj:Ljava/lang/Integer;
    if-nez v5, :cond_0

    .line 807
    :goto_0
    return v7

    :cond_0
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    goto :goto_0

    .line 809
    .end local v1           #genericType:Ljava/lang/reflect/Type;
    .end local v2           #jsonRec:Ljava/lang/String;
    .end local v3           #jsonSend:Ljava/lang/String;
    .end local v4           #paramObj:Ljava/lang/String;
    .end local v5           #retObj:Ljava/lang/Integer;
    :catch_0
    move-exception v0

    .line 810
    .local v0, e:Ljava/lang/Exception;
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
    .parameter "sortBy"
    .parameter "sortDescending"
    .parameter "start"
    .parameter "count"
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

    .prologue
    .line 474
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

    .line 477
    .local v6, url:Ljava/lang/String;
    :try_start_0
    const-string v4, ""

    .line 479
    .local v4, paramObj:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 481
    .local v3, jsonSend:Ljava/lang/String;
    sget-object v7, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->GET:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v6, v7, v3}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 483
    .local v2, jsonRec:Ljava/lang/String;
    new-instance v5, Lcom/htc/cscore/restapi/json/SearchResults;

    invoke-direct {v5}, Lcom/htc/cscore/restapi/json/SearchResults;-><init>()V

    .line 484
    .local v5, retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WFriend;>;"
    new-instance v7, Lcom/htc/cscore/restapi/proxy/ClientRestApi$8;

    invoke-direct {v7, p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$8;-><init>(Lcom/htc/cscore/restapi/proxy/ClientRestApi;)V

    invoke-virtual {v7}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$8;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 485
    .local v1, genericType:Ljava/lang/reflect/Type;
    const-class v7, Lcom/htc/cscore/restapi/proxy/WebClasses$WFriend;

    invoke-static {v5, v2, v7, v1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WFriend;>;"
    check-cast v5, Lcom/htc/cscore/restapi/json/SearchResults;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    .restart local v5       #retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WFriend;>;"
    if-nez v5, :cond_0

    .line 487
    const/4 v5, 0x0

    .line 489
    .end local v5           #retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WFriend;>;"
    :cond_0
    return-object v5

    .line 491
    .end local v1           #genericType:Ljava/lang/reflect/Type;
    .end local v2           #jsonRec:Ljava/lang/String;
    .end local v3           #jsonSend:Ljava/lang/String;
    .end local v4           #paramObj:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 492
    .local v0, e:Ljava/lang/Exception;
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
    .parameter "appType"
    .parameter "sortBy"
    .parameter "sortDescending"
    .parameter "start"
    .parameter "count"
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

    .prologue
    .line 766
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

    .line 769
    .local v6, url:Ljava/lang/String;
    :try_start_0
    const-string v4, ""

    .line 771
    .local v4, paramObj:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 773
    .local v3, jsonSend:Ljava/lang/String;
    sget-object v7, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->GET:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v6, v7, v3}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 775
    .local v2, jsonRec:Ljava/lang/String;
    new-instance v5, Lcom/htc/cscore/restapi/json/SearchResults;

    invoke-direct {v5}, Lcom/htc/cscore/restapi/json/SearchResults;-><init>()V

    .line 776
    .local v5, retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationStatus;>;"
    new-instance v7, Lcom/htc/cscore/restapi/proxy/ClientRestApi$16;

    invoke-direct {v7, p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$16;-><init>(Lcom/htc/cscore/restapi/proxy/ClientRestApi;)V

    invoke-virtual {v7}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$16;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 777
    .local v1, genericType:Ljava/lang/reflect/Type;
    const-class v7, Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationStatus;

    invoke-static {v5, v2, v7, v1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationStatus;>;"
    check-cast v5, Lcom/htc/cscore/restapi/json/SearchResults;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 778
    .restart local v5       #retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationStatus;>;"
    if-nez v5, :cond_0

    .line 779
    const/4 v5, 0x0

    .line 781
    .end local v5           #retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationStatus;>;"
    :cond_0
    return-object v5

    .line 783
    .end local v1           #genericType:Ljava/lang/reflect/Type;
    .end local v2           #jsonRec:Ljava/lang/String;
    .end local v3           #jsonSend:Ljava/lang/String;
    .end local v4           #paramObj:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 784
    .local v0, e:Ljava/lang/Exception;
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
    .parameter "sortBy"
    .parameter "sortDescending"
    .parameter "start"
    .parameter "count"
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

    .prologue
    .line 544
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

    .line 547
    .local v6, url:Ljava/lang/String;
    :try_start_0
    const-string v4, ""

    .line 549
    .local v4, paramObj:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 551
    .local v3, jsonSend:Ljava/lang/String;
    sget-object v7, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->GET:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v6, v7, v3}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 553
    .local v2, jsonRec:Ljava/lang/String;
    new-instance v5, Lcom/htc/cscore/restapi/json/SearchResults;

    invoke-direct {v5}, Lcom/htc/cscore/restapi/json/SearchResults;-><init>()V

    .line 554
    .local v5, retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WFriend;>;"
    new-instance v7, Lcom/htc/cscore/restapi/proxy/ClientRestApi$10;

    invoke-direct {v7, p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$10;-><init>(Lcom/htc/cscore/restapi/proxy/ClientRestApi;)V

    invoke-virtual {v7}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$10;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 555
    .local v1, genericType:Ljava/lang/reflect/Type;
    const-class v7, Lcom/htc/cscore/restapi/proxy/WebClasses$WFriend;

    invoke-static {v5, v2, v7, v1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WFriend;>;"
    check-cast v5, Lcom/htc/cscore/restapi/json/SearchResults;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 556
    .restart local v5       #retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WFriend;>;"
    if-nez v5, :cond_0

    .line 557
    const/4 v5, 0x0

    .line 559
    .end local v5           #retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WFriend;>;"
    :cond_0
    return-object v5

    .line 561
    .end local v1           #genericType:Ljava/lang/reflect/Type;
    .end local v2           #jsonRec:Ljava/lang/String;
    .end local v3           #jsonSend:Ljava/lang/String;
    .end local v4           #paramObj:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 562
    .local v0, e:Ljava/lang/Exception;
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
    .parameter "sortBy"
    .parameter "sortDescending"
    .parameter "start"
    .parameter "count"
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

    .prologue
    .line 513
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

    .line 516
    .local v6, url:Ljava/lang/String;
    :try_start_0
    const-string v4, ""

    .line 518
    .local v4, paramObj:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 520
    .local v3, jsonSend:Ljava/lang/String;
    sget-object v7, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->GET:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v6, v7, v3}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 522
    .local v2, jsonRec:Ljava/lang/String;
    new-instance v5, Lcom/htc/cscore/restapi/json/SearchResults;

    invoke-direct {v5}, Lcom/htc/cscore/restapi/json/SearchResults;-><init>()V

    .line 523
    .local v5, retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WFriend;>;"
    new-instance v7, Lcom/htc/cscore/restapi/proxy/ClientRestApi$9;

    invoke-direct {v7, p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$9;-><init>(Lcom/htc/cscore/restapi/proxy/ClientRestApi;)V

    invoke-virtual {v7}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$9;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 524
    .local v1, genericType:Ljava/lang/reflect/Type;
    const-class v7, Lcom/htc/cscore/restapi/proxy/WebClasses$WFriend;

    invoke-static {v5, v2, v7, v1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WFriend;>;"
    check-cast v5, Lcom/htc/cscore/restapi/json/SearchResults;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 525
    .restart local v5       #retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WFriend;>;"
    if-nez v5, :cond_0

    .line 526
    const/4 v5, 0x0

    .line 528
    .end local v5           #retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WFriend;>;"
    :cond_0
    return-object v5

    .line 530
    .end local v1           #genericType:Ljava/lang/reflect/Type;
    .end local v2           #jsonRec:Ljava/lang/String;
    .end local v3           #jsonSend:Ljava/lang/String;
    .end local v4           #paramObj:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 531
    .local v0, e:Ljava/lang/Exception;
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
    .parameter "sortBy"
    .parameter "sortDescending"
    .parameter "start"
    .parameter "count"
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

    .prologue
    .line 599
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

    .line 602
    .local v6, url:Ljava/lang/String;
    :try_start_0
    const-string v4, ""

    .line 604
    .local v4, paramObj:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 606
    .local v3, jsonSend:Ljava/lang/String;
    sget-object v7, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->GET:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v6, v7, v3}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 608
    .local v2, jsonRec:Ljava/lang/String;
    new-instance v5, Lcom/htc/cscore/restapi/json/SearchResults;

    invoke-direct {v5}, Lcom/htc/cscore/restapi/json/SearchResults;-><init>()V

    .line 609
    .local v5, retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WPhysicalDeviceModel;>;"
    new-instance v7, Lcom/htc/cscore/restapi/proxy/ClientRestApi$12;

    invoke-direct {v7, p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$12;-><init>(Lcom/htc/cscore/restapi/proxy/ClientRestApi;)V

    invoke-virtual {v7}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$12;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 610
    .local v1, genericType:Ljava/lang/reflect/Type;
    const-class v7, Lcom/htc/cscore/restapi/proxy/WebClasses$WPhysicalDeviceModel;

    invoke-static {v5, v2, v7, v1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WPhysicalDeviceModel;>;"
    check-cast v5, Lcom/htc/cscore/restapi/json/SearchResults;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 611
    .restart local v5       #retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WPhysicalDeviceModel;>;"
    if-nez v5, :cond_0

    .line 612
    const/4 v5, 0x0

    .line 614
    .end local v5           #retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WPhysicalDeviceModel;>;"
    :cond_0
    return-object v5

    .line 616
    .end local v1           #genericType:Ljava/lang/reflect/Type;
    .end local v2           #jsonRec:Ljava/lang/String;
    .end local v3           #jsonSend:Ljava/lang/String;
    .end local v4           #paramObj:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 617
    .local v0, e:Ljava/lang/Exception;
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
    .parameter
    .parameter "appType"
    .parameter "sortBy"
    .parameter "sortDescending"
    .parameter "start"
    .parameter "count"
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

    .prologue
    .line 916
    .local p1, appIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
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

    .line 919
    .local v7, url:Ljava/lang/String;
    :try_start_0
    const-string v5, ""

    .line 922
    .local v5, paramObj:Ljava/lang/String;
    new-instance v5, Lorg/json/JSONObject;

    .end local v5           #paramObj:Ljava/lang/String;
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 923
    .local v5, paramObj:Lorg/json/JSONObject;
    move-object v0, v5

    check-cast v0, Lorg/json/JSONObject;

    move-object v8, v0

    const-string v9, "appIds"

    invoke-static {p1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 924
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 926
    .local v4, jsonSend:Ljava/lang/String;
    sget-object v8, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->POST:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v7, v8, v4}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 928
    .local v3, jsonRec:Ljava/lang/String;
    new-instance v6, Lcom/htc/cscore/restapi/json/SearchResults;

    invoke-direct {v6}, Lcom/htc/cscore/restapi/json/SearchResults;-><init>()V

    .line 929
    .local v6, retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendAppsPopularityCount;>;"
    new-instance v8, Lcom/htc/cscore/restapi/proxy/ClientRestApi$21;

    invoke-direct {v8, p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$21;-><init>(Lcom/htc/cscore/restapi/proxy/ClientRestApi;)V

    invoke-virtual {v8}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$21;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 930
    .local v2, genericType:Ljava/lang/reflect/Type;
    const-class v8, Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendAppsPopularityCount;

    invoke-static {v6, v3, v8, v2}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendAppsPopularityCount;>;"
    check-cast v6, Lcom/htc/cscore/restapi/json/SearchResults;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 931
    .restart local v6       #retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendAppsPopularityCount;>;"
    if-nez v6, :cond_0

    .line 932
    const/4 v6, 0x0

    .line 934
    .end local v6           #retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendAppsPopularityCount;>;"
    :cond_0
    return-object v6

    .line 936
    .end local v2           #genericType:Ljava/lang/reflect/Type;
    .end local v3           #jsonRec:Ljava/lang/String;
    .end local v4           #jsonSend:Ljava/lang/String;
    .end local v5           #paramObj:Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 937
    .local v1, e:Ljava/lang/Exception;
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
    .parameter "sortBy"
    .parameter "sortDescending"
    .parameter "start"
    .parameter "count"
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

    .prologue
    .line 890
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

    .line 893
    .local v6, url:Ljava/lang/String;
    :try_start_0
    const-string v4, ""

    .line 895
    .local v4, paramObj:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 897
    .local v3, jsonSend:Ljava/lang/String;
    sget-object v7, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->GET:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v6, v7, v3}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 899
    .local v2, jsonRec:Ljava/lang/String;
    new-instance v5, Lcom/htc/cscore/restapi/json/SearchResults;

    invoke-direct {v5}, Lcom/htc/cscore/restapi/json/SearchResults;-><init>()V

    .line 900
    .local v5, retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendWishlist;>;"
    new-instance v7, Lcom/htc/cscore/restapi/proxy/ClientRestApi$20;

    invoke-direct {v7, p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$20;-><init>(Lcom/htc/cscore/restapi/proxy/ClientRestApi;)V

    invoke-virtual {v7}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$20;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 901
    .local v1, genericType:Ljava/lang/reflect/Type;
    const-class v7, Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendWishlist;

    invoke-static {v5, v2, v7, v1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendWishlist;>;"
    check-cast v5, Lcom/htc/cscore/restapi/json/SearchResults;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 902
    .restart local v5       #retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendWishlist;>;"
    if-nez v5, :cond_0

    .line 903
    const/4 v5, 0x0

    .line 905
    .end local v5           #retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendWishlist;>;"
    :cond_0
    return-object v5

    .line 907
    .end local v1           #genericType:Ljava/lang/reflect/Type;
    .end local v2           #jsonRec:Ljava/lang/String;
    .end local v3           #jsonSend:Ljava/lang/String;
    .end local v4           #paramObj:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 908
    .local v0, e:Ljava/lang/Exception;
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
    .parameter "emailAddress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1030
    const-string v7, "%s/Services/Regions.svc/Regions/GetRegionForAccount/"

    new-array v8, v11, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1033
    .local v6, url:Ljava/lang/String;
    :try_start_0
    const-string v4, ""

    .line 1036
    .local v4, paramObj:Ljava/lang/String;
    new-instance v4, Ljava/lang/String;

    .end local v4           #paramObj:Ljava/lang/String;
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

    .line 1037
    .restart local v4       #paramObj:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1039
    .local v3, jsonSend:Ljava/lang/String;
    sget-object v7, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->POST:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v6, v7, v3}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1041
    .local v2, jsonRec:Ljava/lang/String;
    new-instance v5, Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;

    invoke-direct {v5}, Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;-><init>()V

    .line 1042
    .local v5, retObj:Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;
    new-instance v7, Lcom/htc/cscore/restapi/proxy/ClientRestApi$25;

    invoke-direct {v7, p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$25;-><init>(Lcom/htc/cscore/restapi/proxy/ClientRestApi;)V

    invoke-virtual {v7}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$25;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 1043
    .local v1, genericType:Ljava/lang/reflect/Type;
    const-class v7, Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;

    invoke-static {v5, v2, v7, v1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #retObj:Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;
    check-cast v5, Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1044
    .restart local v5       #retObj:Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;
    if-nez v5, :cond_0

    .line 1045
    const/4 v5, 0x0

    .line 1047
    .end local v5           #retObj:Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;
    :cond_0
    return-object v5

    .line 1049
    .end local v1           #genericType:Ljava/lang/reflect/Type;
    .end local v2           #jsonRec:Ljava/lang/String;
    .end local v3           #jsonSend:Ljava/lang/String;
    .end local v4           #paramObj:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1050
    .local v0, e:Ljava/lang/Exception;
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

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1005
    const-string v7, "%s/Services/Regions.svc/Regions/"

    new-array v8, v11, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1006
    .local v6, url:Ljava/lang/String;
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

    .line 1008
    :try_start_0
    const-string v4, ""

    .line 1010
    .local v4, paramObj:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1012
    .local v3, jsonSend:Ljava/lang/String;
    sget-object v7, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->GET:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v6, v7, v3}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1014
    .local v2, jsonRec:Ljava/lang/String;
    new-instance v5, Lcom/htc/cscore/restapi/json/SearchResults;

    invoke-direct {v5}, Lcom/htc/cscore/restapi/json/SearchResults;-><init>()V

    .line 1015
    .local v5, retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;>;"
    new-instance v7, Lcom/htc/cscore/restapi/proxy/ClientRestApi$24;

    invoke-direct {v7, p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$24;-><init>(Lcom/htc/cscore/restapi/proxy/ClientRestApi;)V

    invoke-virtual {v7}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$24;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 1016
    .local v1, genericType:Ljava/lang/reflect/Type;
    const-class v7, Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;

    invoke-static {v5, v2, v7, v1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;>;"
    check-cast v5, Lcom/htc/cscore/restapi/json/SearchResults;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1017
    .restart local v5       #retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;>;"
    if-nez v5, :cond_0

    .line 1018
    const/4 v5, 0x0

    .line 1020
    .end local v5           #retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;>;"
    :cond_0
    return-object v5

    .line 1022
    .end local v1           #genericType:Ljava/lang/reflect/Type;
    .end local v2           #jsonRec:Ljava/lang/String;
    .end local v3           #jsonSend:Ljava/lang/String;
    .end local v4           #paramObj:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1023
    .local v0, e:Ljava/lang/Exception;
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
    .parameter "sortBy"
    .parameter "sortDescending"
    .parameter "start"
    .parameter "count"
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

    .prologue
    .line 979
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

    .line 982
    .local v6, url:Ljava/lang/String;
    :try_start_0
    const-string v4, ""

    .line 984
    .local v4, paramObj:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 986
    .local v3, jsonSend:Ljava/lang/String;
    sget-object v7, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->GET:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v6, v7, v3}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 988
    .local v2, jsonRec:Ljava/lang/String;
    new-instance v5, Lcom/htc/cscore/restapi/json/SearchResults;

    invoke-direct {v5}, Lcom/htc/cscore/restapi/json/SearchResults;-><init>()V

    .line 989
    .local v5, retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;>;"
    new-instance v7, Lcom/htc/cscore/restapi/proxy/ClientRestApi$23;

    invoke-direct {v7, p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$23;-><init>(Lcom/htc/cscore/restapi/proxy/ClientRestApi;)V

    invoke-virtual {v7}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$23;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 990
    .local v1, genericType:Ljava/lang/reflect/Type;
    const-class v7, Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;

    invoke-static {v5, v2, v7, v1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;>;"
    check-cast v5, Lcom/htc/cscore/restapi/json/SearchResults;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 991
    .restart local v5       #retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;>;"
    if-nez v5, :cond_0

    .line 992
    const/4 v5, 0x0

    .line 994
    .end local v5           #retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;>;"
    :cond_0
    return-object v5

    .line 996
    .end local v1           #genericType:Ljava/lang/reflect/Type;
    .end local v2           #jsonRec:Ljava/lang/String;
    .end local v3           #jsonSend:Ljava/lang/String;
    .end local v4           #paramObj:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 997
    .local v0, e:Ljava/lang/Exception;
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
    .parameter "emailAddress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 201
    const-string v8, "%s/Services/Accounts.svc/Accounts/SecurityQuestion/"

    new-array v9, v12, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 204
    .local v7, url:Ljava/lang/String;
    :try_start_0
    const-string v5, ""

    .line 207
    .local v5, paramObj:Ljava/lang/String;
    new-instance v5, Lorg/json/JSONObject;

    .end local v5           #paramObj:Ljava/lang/String;
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 208
    .local v5, paramObj:Lorg/json/JSONObject;
    move-object v0, v5

    check-cast v0, Lorg/json/JSONObject;

    move-object v8, v0

    const-string v9, "emailAddress"

    invoke-static {p1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 209
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 211
    .local v4, jsonSend:Ljava/lang/String;
    sget-object v8, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->POST:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v7, v8, v4}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 213
    .local v3, jsonRec:Ljava/lang/String;
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6}, Ljava/lang/String;-><init>()V

    .line 214
    .local v6, retObj:Ljava/lang/String;
    new-instance v8, Lcom/htc/cscore/restapi/proxy/ClientRestApi$5;

    invoke-direct {v8, p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$5;-><init>(Lcom/htc/cscore/restapi/proxy/ClientRestApi;)V

    invoke-virtual {v8}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$5;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 215
    .local v2, genericType:Ljava/lang/reflect/Type;
    const-class v8, Ljava/lang/String;

    invoke-static {v6, v3, v8, v2}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #retObj:Ljava/lang/String;
    check-cast v6, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    .restart local v6       #retObj:Ljava/lang/String;
    if-nez v6, :cond_0

    .line 217
    const/4 v6, 0x0

    .line 219
    .end local v6           #retObj:Ljava/lang/String;
    :cond_0
    return-object v6

    .line 221
    .end local v2           #genericType:Ljava/lang/reflect/Type;
    .end local v3           #jsonRec:Ljava/lang/String;
    .end local v4           #jsonSend:Ljava/lang/String;
    .end local v5           #paramObj:Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 222
    .local v1, e:Ljava/lang/Exception;
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

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1056
    const-string v7, "%s/Services/Server.svc/Time"

    new-array v8, v11, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1059
    .local v6, url:Ljava/lang/String;
    :try_start_0
    const-string v4, ""

    .line 1061
    .local v4, paramObj:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1063
    .local v3, jsonSend:Ljava/lang/String;
    sget-object v7, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->GET:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v6, v7, v3}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1065
    .local v2, jsonRec:Ljava/lang/String;
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 1066
    .local v5, retObj:Ljava/util/Date;
    new-instance v7, Lcom/htc/cscore/restapi/proxy/ClientRestApi$26;

    invoke-direct {v7, p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$26;-><init>(Lcom/htc/cscore/restapi/proxy/ClientRestApi;)V

    invoke-virtual {v7}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$26;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 1067
    .local v1, genericType:Ljava/lang/reflect/Type;
    const-class v7, Ljava/util/Date;

    invoke-static {v5, v2, v7, v1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #retObj:Ljava/util/Date;
    check-cast v5, Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1068
    .restart local v5       #retObj:Ljava/util/Date;
    if-nez v5, :cond_0

    .line 1069
    const/4 v5, 0x0

    .line 1071
    .end local v5           #retObj:Ljava/util/Date;
    :cond_0
    return-object v5

    .line 1073
    .end local v1           #genericType:Ljava/lang/reflect/Type;
    .end local v2           #jsonRec:Ljava/lang/String;
    .end local v3           #jsonSend:Ljava/lang/String;
    .end local v4           #paramObj:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1074
    .local v0, e:Ljava/lang/Exception;
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

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1080
    const-string v7, "%s/Services/Server.svc/Version"

    new-array v8, v11, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1083
    .local v6, url:Ljava/lang/String;
    :try_start_0
    const-string v4, ""

    .line 1085
    .local v4, paramObj:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1087
    .local v3, jsonSend:Ljava/lang/String;
    sget-object v7, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->GET:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v6, v7, v3}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1089
    .local v2, jsonRec:Ljava/lang/String;
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5}, Ljava/lang/String;-><init>()V

    .line 1090
    .local v5, retObj:Ljava/lang/String;
    new-instance v7, Lcom/htc/cscore/restapi/proxy/ClientRestApi$27;

    invoke-direct {v7, p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$27;-><init>(Lcom/htc/cscore/restapi/proxy/ClientRestApi;)V

    invoke-virtual {v7}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$27;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 1091
    .local v1, genericType:Ljava/lang/reflect/Type;
    const-class v7, Ljava/lang/String;

    invoke-static {v5, v2, v7, v1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #retObj:Ljava/lang/String;
    check-cast v5, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1092
    .restart local v5       #retObj:Ljava/lang/String;
    if-nez v5, :cond_0

    .line 1093
    const/4 v5, 0x0

    .line 1095
    .end local v5           #retObj:Ljava/lang/String;
    :cond_0
    return-object v5

    .line 1097
    .end local v1           #genericType:Ljava/lang/reflect/Type;
    .end local v2           #jsonRec:Ljava/lang/String;
    .end local v3           #jsonSend:Ljava/lang/String;
    .end local v4           #paramObj:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1098
    .local v0, e:Ljava/lang/Exception;
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
    .parameter "emailAddress"
    .parameter "handsetDeviceId"
    .parameter "AuthTicket"
    .parameter "versionNumber"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    .line 120
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

    .line 123
    .local v7, url:Ljava/lang/String;
    :try_start_0
    const-string v5, ""

    .line 126
    .local v5, paramObj:Ljava/lang/String;
    new-instance v5, Lorg/json/JSONObject;

    .end local v5           #paramObj:Ljava/lang/String;
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 127
    .local v5, paramObj:Lorg/json/JSONObject;
    move-object v0, v5

    check-cast v0, Lorg/json/JSONObject;

    move-object v8, v0

    const-string v9, "emailAddress"

    invoke-static {p1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    move-object v0, v5

    check-cast v0, Lorg/json/JSONObject;

    move-object v8, v0

    const-string v9, "AuthTicket"

    invoke-static {p3}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    move-object v0, v5

    check-cast v0, Lorg/json/JSONObject;

    move-object v8, v0

    const-string v9, "versionNumber"

    invoke-static/range {p4 .. p4}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 130
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 132
    .local v4, jsonSend:Ljava/lang/String;
    sget-object v8, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->POST:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v7, v8, v4}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 134
    .local v3, jsonRec:Ljava/lang/String;
    new-instance v6, Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;

    invoke-direct {v6}, Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;-><init>()V

    .line 135
    .local v6, retObj:Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;
    new-instance v8, Lcom/htc/cscore/restapi/proxy/ClientRestApi$3;

    invoke-direct {v8, p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$3;-><init>(Lcom/htc/cscore/restapi/proxy/ClientRestApi;)V

    invoke-virtual {v8}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 136
    .local v2, genericType:Ljava/lang/reflect/Type;
    const-class v8, Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;

    invoke-static {v6, v3, v8, v2}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #retObj:Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;
    check-cast v6, Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .restart local v6       #retObj:Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;
    if-nez v6, :cond_0

    .line 138
    const/4 v6, 0x0

    .line 140
    .end local v6           #retObj:Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;
    :cond_0
    return-object v6

    .line 142
    .end local v2           #genericType:Ljava/lang/reflect/Type;
    .end local v3           #jsonRec:Ljava/lang/String;
    .end local v4           #jsonSend:Ljava/lang/String;
    .end local v5           #paramObj:Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 143
    .local v1, e:Ljava/lang/Exception;
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
    .parameter "requestBind"
    .parameter "AuthTicket"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 67
    const-string v8, "%s/Services/Accounts.svc/Accounts/RequestBinding/"

    new-array v9, v13, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 70
    .local v7, url:Ljava/lang/String;
    :try_start_0
    const-string v5, ""

    .line 73
    .local v5, paramObj:Ljava/lang/String;
    new-instance v5, Lorg/json/JSONObject;

    .end local v5           #paramObj:Ljava/lang/String;
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 74
    .local v5, paramObj:Lorg/json/JSONObject;
    move-object v0, v5

    check-cast v0, Lorg/json/JSONObject;

    move-object v8, v0

    const-string v9, "requestBind"

    invoke-static {p1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    move-object v0, v5

    check-cast v0, Lorg/json/JSONObject;

    move-object v8, v0

    const-string v9, "AuthTicket"

    invoke-static/range {p2 .. p2}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 78
    .local v4, jsonSend:Ljava/lang/String;
    sget-object v8, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->POST:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v7, v8, v4}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 80
    .local v3, jsonRec:Ljava/lang/String;
    new-instance v6, Ljava/util/UUID;

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    invoke-direct {v6, v8, v9, v10, v11}, Ljava/util/UUID;-><init>(JJ)V

    .line 81
    .local v6, retObj:Ljava/util/UUID;
    new-instance v8, Lcom/htc/cscore/restapi/proxy/ClientRestApi$2;

    invoke-direct {v8, p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$2;-><init>(Lcom/htc/cscore/restapi/proxy/ClientRestApi;)V

    invoke-virtual {v8}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 82
    .local v2, genericType:Ljava/lang/reflect/Type;
    const-class v8, Ljava/util/UUID;

    invoke-static {v6, v3, v8, v2}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #retObj:Ljava/util/UUID;
    check-cast v6, Ljava/util/UUID;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .restart local v6       #retObj:Ljava/util/UUID;
    if-nez v6, :cond_0

    .line 84
    const/4 v6, 0x0

    .line 86
    .end local v6           #retObj:Ljava/util/UUID;
    :cond_0
    return-object v6

    .line 88
    .end local v2           #genericType:Ljava/lang/reflect/Type;
    .end local v3           #jsonRec:Ljava/lang/String;
    .end local v4           #jsonSend:Ljava/lang/String;
    .end local v5           #paramObj:Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 89
    .local v1, e:Ljava/lang/Exception;
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

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1106
    const-string v4, "%s/Services/VirtualDevices.svc/Devices/ScheduleFullMerge/"

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1109
    .local v3, url:Ljava/lang/String;
    :try_start_0
    const-string v2, ""

    .line 1111
    .local v2, paramObj:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1113
    .local v1, jsonSend:Ljava/lang/String;
    sget-object v4, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->GET:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v3, v4, v1}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1118
    return-void

    .line 1115
    .end local v1           #jsonSend:Ljava/lang/String;
    .end local v2           #paramObj:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1116
    .local v0, e:Ljava/lang/Exception;
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
    .parameter "FriendRequestId"
    .parameter "Message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 331
    const-string v5, "%s/Services/FriendRequests.svc/Requests/%s/"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v7, v6, v9

    aput-object p1, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 334
    .local v4, url:Ljava/lang/String;
    :try_start_0
    const-string v3, ""

    .line 337
    .local v3, paramObj:Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    .end local v3           #paramObj:Ljava/lang/String;
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 338
    .local v3, paramObj:Lorg/json/JSONObject;
    move-object v0, v3

    check-cast v0, Lorg/json/JSONObject;

    move-object v5, v0

    const-string v6, "Message"

    invoke-static {p2}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 339
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 341
    .local v2, jsonSend:Ljava/lang/String;
    sget-object v5, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->POST:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v4, v5, v2}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    return-void

    .line 343
    .end local v2           #jsonSend:Ljava/lang/String;
    .end local v3           #paramObj:Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 344
    .local v1, e:Ljava/lang/Exception;
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
    .parameter "FriendRequestId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 406
    const-string v4, "%s/Services/FriendRequests.svc/Unblocked/%s/"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v6, v5, v8

    aput-object p1, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 409
    .local v3, url:Ljava/lang/String;
    :try_start_0
    const-string v2, ""

    .line 411
    .local v2, paramObj:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 413
    .local v1, jsonSend:Ljava/lang/String;
    sget-object v4, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->DELETE:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v3, v4, v1}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    return-void

    .line 415
    .end local v1           #jsonSend:Ljava/lang/String;
    .end local v2           #paramObj:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 416
    .local v0, e:Ljava/lang/Exception;
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
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 151
    const-string v7, "%s/Services/Accounts.svc/Accounts/"

    new-array v8, v10, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 154
    .local v6, url:Ljava/lang/String;
    :try_start_0
    const-string v4, ""

    .line 157
    .local v4, paramObj:Ljava/lang/String;
    invoke-static {p1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 158
    .local v4, paramObj:Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 160
    .local v3, jsonSend:Ljava/lang/String;
    sget-object v7, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->POST:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v6, v7, v3}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 162
    .local v2, jsonRec:Ljava/lang/String;
    new-instance v5, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;

    invoke-direct {v5}, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;-><init>()V

    .line 163
    .local v5, retObj:Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;
    new-instance v7, Lcom/htc/cscore/restapi/proxy/ClientRestApi$4;

    invoke-direct {v7, p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$4;-><init>(Lcom/htc/cscore/restapi/proxy/ClientRestApi;)V

    invoke-virtual {v7}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$4;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 164
    .local v1, genericType:Ljava/lang/reflect/Type;
    const-class v7, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;

    invoke-static {v5, v2, v7, v1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #retObj:Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;
    check-cast v5, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .restart local v5       #retObj:Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;
    if-nez v5, :cond_0

    .line 166
    const/4 v5, 0x0

    .line 168
    .end local v5           #retObj:Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;
    :cond_0
    return-object v5

    .line 170
    .end local v1           #genericType:Ljava/lang/reflect/Type;
    .end local v2           #jsonRec:Ljava/lang/String;
    .end local v3           #jsonSend:Ljava/lang/String;
    .end local v4           #paramObj:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 171
    .local v0, e:Ljava/lang/Exception;
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
    .parameter "VerificationId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 251
    const-string v8, "%s/Services/Accounts.svc/Accounts/VerifyEmailAddress/"

    new-array v9, v13, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 254
    .local v7, url:Ljava/lang/String;
    :try_start_0
    const-string v5, ""

    .line 257
    .local v5, paramObj:Ljava/lang/String;
    new-instance v5, Lorg/json/JSONObject;

    .end local v5           #paramObj:Ljava/lang/String;
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 258
    .local v5, paramObj:Lorg/json/JSONObject;
    move-object v0, v5

    check-cast v0, Lorg/json/JSONObject;

    move-object v8, v0

    const-string v9, "VerificationId"

    invoke-static {p1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 259
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 261
    .local v4, jsonSend:Ljava/lang/String;
    sget-object v8, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->POST:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v7, v8, v4}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 263
    .local v3, jsonRec:Ljava/lang/String;
    new-instance v6, Ljava/util/UUID;

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    invoke-direct {v6, v8, v9, v10, v11}, Ljava/util/UUID;-><init>(JJ)V

    .line 264
    .local v6, retObj:Ljava/util/UUID;
    new-instance v8, Lcom/htc/cscore/restapi/proxy/ClientRestApi$6;

    invoke-direct {v8, p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$6;-><init>(Lcom/htc/cscore/restapi/proxy/ClientRestApi;)V

    invoke-virtual {v8}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$6;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 265
    .local v2, genericType:Ljava/lang/reflect/Type;
    const-class v8, Ljava/util/UUID;

    invoke-static {v6, v3, v8, v2}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #retObj:Ljava/util/UUID;
    check-cast v6, Ljava/util/UUID;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    .restart local v6       #retObj:Ljava/util/UUID;
    if-nez v6, :cond_0

    .line 267
    const/4 v6, 0x0

    .line 269
    .end local v6           #retObj:Ljava/util/UUID;
    :cond_0
    return-object v6

    .line 271
    .end local v2           #genericType:Ljava/lang/reflect/Type;
    .end local v3           #jsonRec:Ljava/lang/String;
    .end local v4           #jsonSend:Ljava/lang/String;
    .end local v5           #paramObj:Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 272
    .local v1, e:Ljava/lang/Exception;
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
    .parameter "country"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1248
    iget-object v5, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    .line 1249
    .local v5, svrURL:Ljava/lang/String;
    const-string v7, "$"

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1250
    .local v1, i:I
    if-lez v1, :cond_0

    .line 1251
    add-int/lit8 v7, v1, -0x1

    invoke-virtual {v5, v10, v7}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1254
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

    .line 1257
    .local v6, url:Ljava/lang/String;
    :try_start_0
    const-string v4, ""

    .line 1259
    .local v4, paramObj:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1260
    .local v3, jsonSend:Ljava/lang/String;
    sget-object v7, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->GET:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v6, v7, v3}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1262
    .local v2, jsonRec:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 1263
    const/4 v2, 0x0

    .line 1265
    .end local v2           #jsonRec:Ljava/lang/String;
    :cond_1
    return-object v2

    .line 1268
    .end local v3           #jsonSend:Ljava/lang/String;
    .end local v4           #paramObj:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1269
    .local v0, e:Ljava/lang/Exception;
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
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 1145
    const-string v7, "%s/Services/VirtualDevices.svc/Devices/Attribute/%s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v9, v8, v11

    aput-object p1, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1147
    .local v6, url:Ljava/lang/String;
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

    .line 1149
    :try_start_0
    const-string v4, ""

    .line 1151
    .local v4, paramObj:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1153
    .local v3, jsonSend:Ljava/lang/String;
    sget-object v7, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->GET:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v6, v7, v3}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1155
    .local v2, jsonRec:Ljava/lang/String;
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5}, Ljava/lang/String;-><init>()V

    .line 1156
    .local v5, retObj:Ljava/lang/String;
    new-instance v7, Lcom/htc/cscore/restapi/proxy/ClientRestApi$28;

    invoke-direct {v7, p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$28;-><init>(Lcom/htc/cscore/restapi/proxy/ClientRestApi;)V

    invoke-virtual {v7}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$28;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 1157
    .local v1, genericType:Ljava/lang/reflect/Type;
    const-class v7, Ljava/lang/String;

    invoke-static {v5, v2, v7, v1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #retObj:Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 1158
    .restart local v5       #retObj:Ljava/lang/String;
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

    .line 1160
    if-nez v5, :cond_0

    .line 1161
    const/4 v5, 0x0

    .line 1163
    .end local v5           #retObj:Ljava/lang/String;
    :cond_0
    return-object v5

    .line 1166
    .end local v1           #genericType:Ljava/lang/reflect/Type;
    .end local v2           #jsonRec:Ljava/lang/String;
    .end local v3           #jsonSend:Ljava/lang/String;
    .end local v4           #paramObj:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1167
    .local v0, e:Ljava/lang/Exception;
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
    .parameter "country"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1210
    iget-object v7, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    .line 1211
    .local v7, svrURL:Ljava/lang/String;
    const-string v9, "$"

    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1212
    .local v2, i:I
    if-lez v2, :cond_0

    .line 1213
    add-int/lit8 v9, v2, -0x1

    invoke-virtual {v7, v11, v9}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1216
    :cond_0
    const-string v9, "%s/%s/handsetLocationEnabled.html"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v7, v10, v11

    aput-object p1, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 1219
    .local v8, url:Ljava/lang/String;
    :try_start_0
    const-string v5, ""

    .line 1221
    .local v5, paramObj:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1223
    .local v4, jsonSend:Ljava/lang/String;
    sget-object v9, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->GET:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v8, v9, v4}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1225
    .local v3, jsonRec:Ljava/lang/String;
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6}, Ljava/lang/String;-><init>()V

    .line 1226
    .local v6, retObj:Ljava/lang/String;
    new-instance v9, Lcom/htc/cscore/restapi/proxy/ClientRestApi$30;

    invoke-direct {v9, p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$30;-><init>(Lcom/htc/cscore/restapi/proxy/ClientRestApi;)V

    invoke-virtual {v9}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$30;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 1227
    .local v1, genericType:Ljava/lang/reflect/Type;
    const-class v9, Ljava/lang/String;

    invoke-static {v6, v3, v9, v1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #retObj:Ljava/lang/String;
    check-cast v6, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1229
    .restart local v6       #retObj:Ljava/lang/String;
    if-nez v6, :cond_1

    .line 1230
    const/4 v6, 0x0

    .line 1232
    .end local v6           #retObj:Ljava/lang/String;
    :cond_1
    return-object v6

    .line 1235
    .end local v1           #genericType:Ljava/lang/reflect/Type;
    .end local v3           #jsonRec:Ljava/lang/String;
    .end local v4           #jsonSend:Ljava/lang/String;
    .end local v5           #paramObj:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1236
    .local v0, e:Ljava/lang/Exception;
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
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 1178
    const-string v8, "%s/Services/VirtualDevices.svc/Devices/Attribute/%s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v10, v9, v12

    aput-object p1, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1180
    .local v7, url:Ljava/lang/String;
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

    .line 1182
    :try_start_0
    const-string v5, ""

    .line 1185
    .local v5, paramObj:Ljava/lang/String;
    new-instance v5, Lorg/json/JSONObject;

    .end local v5           #paramObj:Ljava/lang/String;
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 1186
    .local v5, paramObj:Lorg/json/JSONObject;
    move-object v0, v5

    check-cast v0, Lorg/json/JSONObject;

    move-object v8, v0

    const-string v9, "value"

    invoke-static {p2}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1188
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1190
    .local v4, jsonSend:Ljava/lang/String;
    sget-object v8, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->POST:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v7, v8, v4}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1192
    .local v3, jsonRec:Ljava/lang/String;
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6}, Ljava/lang/String;-><init>()V

    .line 1193
    .local v6, retObj:Ljava/lang/String;
    new-instance v8, Lcom/htc/cscore/restapi/proxy/ClientRestApi$29;

    invoke-direct {v8, p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$29;-><init>(Lcom/htc/cscore/restapi/proxy/ClientRestApi;)V

    invoke-virtual {v8}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$29;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 1194
    .local v2, genericType:Ljava/lang/reflect/Type;
    const-class v8, Ljava/lang/String;

    invoke-static {v6, v3, v8, v2}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #retObj:Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 1195
    .restart local v6       #retObj:Ljava/lang/String;
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

    .line 1200
    return-void

    .line 1197
    .end local v2           #genericType:Ljava/lang/reflect/Type;
    .end local v3           #jsonRec:Ljava/lang/String;
    .end local v4           #jsonSend:Ljava/lang/String;
    .end local v5           #paramObj:Lorg/json/JSONObject;
    .end local v6           #retObj:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1198
    .local v1, e:Ljava/lang/Exception;
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
