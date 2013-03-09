.class public Lcom/htc/store/module/rest/RestHelper;
.super Ljava/lang/Object;
.source "RestHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/store/module/rest/RestHelper$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private MAX_LIMIT_GETAPP_INFO:I

.field private MAX_RETRY_COUNT:I

.field private PAGE_SIZE:I

.field private mAccessHelper:Lcom/htc/store/provider/AccessHelper;

.field private mCSRestProxy:Lcom/htc/cslib/restHelper/CSRestProxy;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mRestServicesProxy:Lcom/htc/cscore/restapi/proxy/RestServicesProxy;

.field private types:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-class v0, Lcom/htc/store/module/rest/RestHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/16 v9, 0x32

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 76
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "alarm-android"

    aput-object v3, v2, v5

    const-string v3, "application-android"

    aput-object v3, v2, v6

    const-string v3, "notification-android"

    aput-object v3, v2, v7

    const-string v3, "scene-android"

    aput-object v3, v2, v8

    const/4 v3, 0x4

    const-string v4, "skin-android"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "soundset-android"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "wallpaper-android"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "widget-android"

    aput-object v4, v2, v3

    iput-object v2, p0, Lcom/htc/store/module/rest/RestHelper;->types:[Ljava/lang/String;

    .line 72
    iput v9, p0, Lcom/htc/store/module/rest/RestHelper;->MAX_LIMIT_GETAPP_INFO:I

    .line 73
    iput v9, p0, Lcom/htc/store/module/rest/RestHelper;->PAGE_SIZE:I

    .line 74
    iput v8, p0, Lcom/htc/store/module/rest/RestHelper;->MAX_RETRY_COUNT:I

    .line 77
    iput-object p1, p0, Lcom/htc/store/module/rest/RestHelper;->mContext:Landroid/content/Context;

    .line 78
    new-instance v2, Lcom/htc/store/provider/AccessHelper;

    invoke-direct {v2, p1}, Lcom/htc/store/provider/AccessHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/htc/store/module/rest/RestHelper;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    .line 80
    :try_start_0
    new-instance v1, Landroid/os/HandlerThread;

    const-class v2, Lcom/htc/store/module/rest/RestHelper;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 81
    .local v1, thread:Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 82
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/htc/store/module/rest/RestHelper;->mHandler:Landroid/os/Handler;

    .line 83
    new-instance v2, Lcom/htc/cslib/restHelper/CSRestProxy;

    iget-object v3, p0, Lcom/htc/store/module/rest/RestHelper;->mHandler:Landroid/os/Handler;

    const-string v4, "stores"

    invoke-direct {v2, p1, v3, v4}, Lcom/htc/cslib/restHelper/CSRestProxy;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/htc/store/module/rest/RestHelper;->mCSRestProxy:Lcom/htc/cslib/restHelper/CSRestProxy;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .end local v1           #thread:Landroid/os/HandlerThread;
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;)V
    .locals 10
    .parameter "csContext"
    .parameter "storeContext"

    .prologue
    const/16 v9, 0x32

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 91
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "alarm-android"

    aput-object v3, v2, v5

    const-string v3, "application-android"

    aput-object v3, v2, v6

    const-string v3, "notification-android"

    aput-object v3, v2, v7

    const-string v3, "scene-android"

    aput-object v3, v2, v8

    const/4 v3, 0x4

    const-string v4, "skin-android"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "soundset-android"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "wallpaper-android"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "widget-android"

    aput-object v4, v2, v3

    iput-object v2, p0, Lcom/htc/store/module/rest/RestHelper;->types:[Ljava/lang/String;

    .line 72
    iput v9, p0, Lcom/htc/store/module/rest/RestHelper;->MAX_LIMIT_GETAPP_INFO:I

    .line 73
    iput v9, p0, Lcom/htc/store/module/rest/RestHelper;->PAGE_SIZE:I

    .line 74
    iput v8, p0, Lcom/htc/store/module/rest/RestHelper;->MAX_RETRY_COUNT:I

    .line 92
    iput-object p2, p0, Lcom/htc/store/module/rest/RestHelper;->mContext:Landroid/content/Context;

    .line 93
    new-instance v2, Lcom/htc/store/provider/AccessHelper;

    invoke-direct {v2, p2}, Lcom/htc/store/provider/AccessHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/htc/store/module/rest/RestHelper;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    .line 95
    :try_start_0
    new-instance v1, Landroid/os/HandlerThread;

    const-class v2, Lcom/htc/store/module/rest/RestHelper;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 96
    .local v1, thread:Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 97
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/htc/store/module/rest/RestHelper;->mHandler:Landroid/os/Handler;

    .line 98
    new-instance v2, Lcom/htc/cslib/restHelper/CSRestProxy;

    iget-object v3, p0, Lcom/htc/store/module/rest/RestHelper;->mHandler:Landroid/os/Handler;

    const-string v4, "stores"

    invoke-direct {v2, p1, v3, v4}, Lcom/htc/cslib/restHelper/CSRestProxy;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/htc/store/module/rest/RestHelper;->mCSRestProxy:Lcom/htc/cslib/restHelper/CSRestProxy;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .end local v1           #thread:Landroid/os/HandlerThread;
    :goto_0
    return-void

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private errorHandling(Ljava/lang/Exception;)I
    .locals 11
    .parameter "e"

    .prologue
    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 1134
    const/16 v5, 0x190

    .line 1135
    .local v5, result:I
    iget-object v6, p0, Lcom/htc/store/module/rest/RestHelper;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_0

    instance-of v6, p1, Lorg/json/JSONException;

    if-eqz v6, :cond_0

    .line 1136
    const/16 v5, 0x190

    .line 1137
    sget-object v6, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    new-array v7, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1200
    .end local p1
    :goto_0
    return v5

    .line 1138
    .restart local p1
    :cond_0
    iget-object v6, p0, Lcom/htc/store/module/rest/RestHelper;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_1

    instance-of v6, p1, Lcom/htc/cslib/exceptions/CommandAndControlException;

    if-eqz v6, :cond_1

    .line 1139
    invoke-direct {p0}, Lcom/htc/store/module/rest/RestHelper;->reLaunchClient()I

    goto :goto_0

    .line 1140
    :cond_1
    iget-object v6, p0, Lcom/htc/store/module/rest/RestHelper;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_2

    instance-of v6, p1, Lcom/htc/cslib/exceptions/MyCSException;

    if-eqz v6, :cond_2

    .line 1142
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/htc/cslib/exceptions/MyCSException;

    move-object v1, v0

    .line 1143
    .local v1, ee:Lcom/htc/cslib/exceptions/MyCSException;
    invoke-virtual {v1}, Lcom/htc/cslib/exceptions/MyCSException;->getCustomErrorCode()Lcom/htc/cslib/exceptions/ErrorCode;

    move-result-object v3

    .line 1144
    .local v3, errCode:Lcom/htc/cslib/exceptions/ErrorCode;
    sget-object v6, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "errorCode: "

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v3, v7, v8

    const/4 v8, 0x2

    const-string v9, "  errorMessage:"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-virtual {v1}, Lcom/htc/cslib/exceptions/MyCSException;->getErrorStream()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1145
    sget-object v6, Lcom/htc/store/module/rest/RestHelper$1;->$SwitchMap$com$htc$cslib$exceptions$ErrorCode:[I

    invoke-virtual {v3}, Lcom/htc/cslib/exceptions/ErrorCode;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    .line 1147
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/store/module/rest/RestHelper;->requestResignin()I

    move-result v5

    .line 1148
    goto :goto_0

    .line 1150
    :pswitch_1
    invoke-direct {p0}, Lcom/htc/store/module/rest/RestHelper;->requestNewPassword()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    goto :goto_0

    .line 1153
    .end local v1           #ee:Lcom/htc/cslib/exceptions/MyCSException;
    .end local v3           #errCode:Lcom/htc/cslib/exceptions/ErrorCode;
    :catch_0
    move-exception v2

    .line 1155
    .local v2, eee:Ljava/lang/Exception;
    sget-object v6, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    const-string v7, "null pointer exception"

    invoke-static {v6, v7}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1157
    .end local v2           #eee:Ljava/lang/Exception;
    :cond_2
    iget-object v6, p0, Lcom/htc/store/module/rest/RestHelper;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_4

    instance-of v6, p1, Lcom/htc/cscore/restapi/exceptions/CSException;

    if-eqz v6, :cond_4

    .line 1160
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Lcom/htc/cscore/restapi/exceptions/ClientNotAuthorizedException;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1162
    sget-object v6, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    const-string v7, "token expired, renew token"

    invoke-static {v6, v7}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1163
    sget-object v6, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, p1}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1165
    :try_start_1
    invoke-direct {p0}, Lcom/htc/store/module/rest/RestHelper;->requestRenewToken()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1170
    :goto_1
    const/16 v5, 0x1f4

    .line 1171
    sget-object v6, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CS-ER : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->GetDeepMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1166
    :catch_1
    move-exception v1

    .line 1167
    .local v1, ee:Ljava/lang/Exception;
    sget-object v6, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "request renew token : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1168
    invoke-direct {p0, v1}, Lcom/htc/store/module/rest/RestHelper;->errorHandling(Ljava/lang/Exception;)I

    goto :goto_1

    .line 1173
    .end local v1           #ee:Ljava/lang/Exception;
    :cond_3
    check-cast p1, Lcom/htc/cscore/restapi/exceptions/CSException;

    .end local p1
    invoke-static {p1}, Lcom/htc/cscore/util/CSUtil;->getExceptionErrorCode(Lcom/htc/cscore/restapi/exceptions/CSException;)Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    move-result-object v4

    .line 1174
    .local v4, errorCode:Lcom/htc/cscore/restapi/exceptions/ErrorCode;
    sget-object v6, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    new-array v7, v8, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "error code="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1175
    sget-object v6, Lcom/htc/store/module/rest/RestHelper$1;->$SwitchMap$com$htc$cscore$restapi$exceptions$ErrorCode:[I

    invoke-virtual {v4}, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_1

    goto/16 :goto_0

    .line 1180
    :pswitch_2
    :try_start_2
    invoke-direct {p0}, Lcom/htc/store/module/rest/RestHelper;->requestRenewToken()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1184
    :goto_2
    const/16 v5, 0x1f4

    .line 1185
    sget-object v6, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    const-string v7, "catch the token expired with webexception"

    invoke-static {v6, v7}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1181
    :catch_2
    move-exception v1

    .line 1182
    .restart local v1       #ee:Ljava/lang/Exception;
    sget-object v6, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2

    .line 1189
    .end local v1           #ee:Ljava/lang/Exception;
    :pswitch_3
    invoke-direct {p0}, Lcom/htc/store/module/rest/RestHelper;->requestResignin()I

    move-result v5

    .line 1190
    goto/16 :goto_0

    .line 1193
    :pswitch_4
    invoke-direct {p0}, Lcom/htc/store/module/rest/RestHelper;->requestNewPassword()I

    move-result v5

    goto/16 :goto_0

    .line 1198
    .end local v4           #errorCode:Lcom/htc/cscore/restapi/exceptions/ErrorCode;
    .restart local p1
    :cond_4
    sget-object v6, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    new-array v7, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1145
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1175
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private reLaunchClient()I
    .locals 4

    .prologue
    .line 1204
    sget-object v2, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    const-string v3, "device relaunch"

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/htc/store/module/rest/RestHelper;->mContext:Landroid/content/Context;

    const-class v3, Lcom/htc/store/activity/DispatchActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1206
    .local v0, intent:Landroid/content/Intent;
    const/16 v1, 0x1c2

    .line 1207
    .local v1, result:I
    new-instance v2, Lcom/htc/store/module/PreferenceManager;

    iget-object v3, p0, Lcom/htc/store/module/rest/RestHelper;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/htc/store/module/PreferenceManager;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/store/module/PreferenceManager;->setRelaunchNextTime(Z)V

    .line 1208
    const-string v2, "cs_exception"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1209
    iget-object v2, p0, Lcom/htc/store/module/rest/RestHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1210
    return v1
.end method

.method private requestNewPassword()I
    .locals 4

    .prologue
    .line 1223
    sget-object v2, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    const-string v3, "password invalid"

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/htc/store/module/rest/RestHelper;->mContext:Landroid/content/Context;

    const-class v3, Lcom/htc/store/activity/DispatchActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1225
    .local v0, intent:Landroid/content/Intent;
    const/16 v1, 0x1b8

    .line 1226
    .local v1, result:I
    const-string v2, "cs_exception"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1227
    iget-object v2, p0, Lcom/htc/store/module/rest/RestHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1228
    return v1
.end method

.method private requestRenewToken()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1111
    iget-object v0, p0, Lcom/htc/store/module/rest/RestHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/cscore/util/CSUtil;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 1112
    .local v8, deviceId:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/store/module/rest/RestHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/cscore/util/CSUtil;->getAccountID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 1113
    .local v7, accountId:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1115
    :try_start_0
    new-instance v0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;

    iget-object v1, p0, Lcom/htc/store/module/rest/RestHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/cscore/util/CSUtil;->getServerName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/htc/store/module/rest/RestHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/cscore/util/CSUtil;->getCMSURI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v8}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/store/module/rest/RestHelper;->mContext:Landroid/content/Context;

    invoke-direct/range {v0 .. v5}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/util/UUID;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/store/module/rest/RestHelper;->mRestServicesProxy:Lcom/htc/cscore/restapi/proxy/RestServicesProxy;

    .line 1120
    iget-object v0, p0, Lcom/htc/store/module/rest/RestHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/cscore/util/CSUtil;->getAuthTicket(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1121
    .local v2, authTicket:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/store/module/rest/RestHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/htc/store/module/rest/RestHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/store/module/rest/RestHelper;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/htc/store/module/rest/RestHelper;->mRestServicesProxy:Lcom/htc/cscore/restapi/proxy/RestServicesProxy;

    move-object v0, v7

    move-object v1, v8

    invoke-static/range {v0 .. v6}, Lcom/htc/cscore/util/CSUtil;->renewToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;Landroid/content/Context;Lcom/htc/cscore/restapi/proxy/RestServicesProxy;)Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;

    move-result-object v10

    .line 1123
    .local v10, token:Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;
    iget-object v0, p0, Lcom/htc/store/module/rest/RestHelper;->mRestServicesProxy:Lcom/htc/cscore/restapi/proxy/RestServicesProxy;

    invoke-virtual {v0, v10}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->setDeviceToken(Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;)V

    .line 1124
    sget-object v0, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "renew token = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v10, Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;->AuthKey:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->critical(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/htc/cscore/restapi/exceptions/CSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1131
    return-void

    .line 1125
    .end local v2           #authTicket:Ljava/lang/String;
    .end local v10           #token:Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;
    :catch_0
    move-exception v9

    .line 1126
    .local v9, e:Lcom/htc/cscore/restapi/exceptions/CSException;
    throw v9

    .line 1129
    .end local v9           #e:Lcom/htc/cscore/restapi/exceptions/CSException;
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "No device ID or account ID."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private requestResignin()I
    .locals 4

    .prologue
    .line 1214
    sget-object v2, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    const-string v3, "device disconnected"

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1215
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/htc/store/module/rest/RestHelper;->mContext:Landroid/content/Context;

    const-class v3, Lcom/htc/store/activity/DispatchActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1216
    .local v0, intent:Landroid/content/Intent;
    const/16 v1, 0x1ae

    .line 1217
    .local v1, result:I
    const-string v2, "cs_exception"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1218
    iget-object v2, p0, Lcom/htc/store/module/rest/RestHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1219
    return v1
.end method

.method private requestRestServiceProxy()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1088
    iget-object v0, p0, Lcom/htc/store/module/rest/RestHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/cscore/util/CSUtil;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 1089
    .local v8, deviceId:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/store/module/rest/RestHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/cscore/util/CSUtil;->getAccountID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 1090
    .local v7, accountId:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1092
    :try_start_0
    new-instance v0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;

    iget-object v1, p0, Lcom/htc/store/module/rest/RestHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/cscore/util/CSUtil;->getServerName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/htc/store/module/rest/RestHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/cscore/util/CSUtil;->getCMSURI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v8}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/store/module/rest/RestHelper;->mContext:Landroid/content/Context;

    invoke-direct/range {v0 .. v5}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/util/UUID;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/store/module/rest/RestHelper;->mRestServicesProxy:Lcom/htc/cscore/restapi/proxy/RestServicesProxy;

    .line 1097
    iget-object v0, p0, Lcom/htc/store/module/rest/RestHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/cscore/util/CSUtil;->getAuthTicket(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1098
    .local v2, authTicket:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/store/module/rest/RestHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/htc/store/module/rest/RestHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/store/module/rest/RestHelper;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/htc/store/module/rest/RestHelper;->mRestServicesProxy:Lcom/htc/cscore/restapi/proxy/RestServicesProxy;

    move-object v0, v7

    move-object v1, v8

    invoke-static/range {v0 .. v6}, Lcom/htc/cscore/util/CSUtil;->handsetLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;Landroid/content/Context;Lcom/htc/cscore/restapi/proxy/RestServicesProxy;)Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;

    move-result-object v10

    .line 1100
    .local v10, token:Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;
    sget-object v0, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "token = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v10, Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;->AuthKey:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->critical(Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    iget-object v0, p0, Lcom/htc/store/module/rest/RestHelper;->mRestServicesProxy:Lcom/htc/cscore/restapi/proxy/RestServicesProxy;

    invoke-virtual {v0, v10}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->setDeviceToken(Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;)V
    :try_end_0
    .catch Lcom/htc/cscore/restapi/exceptions/CSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1108
    return-void

    .line 1102
    .end local v2           #authTicket:Ljava/lang/String;
    .end local v10           #token:Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;
    :catch_0
    move-exception v9

    .line 1103
    .local v9, e:Lcom/htc/cscore/restapi/exceptions/CSException;
    throw v9

    .line 1106
    .end local v9           #e:Lcom/htc/cscore/restapi/exceptions/CSException;
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "No device ID or account ID."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeToFile(ILjava/lang/String;)V
    .locals 12
    .parameter "rest_api_type"
    .parameter "s"

    .prologue
    .line 1232
    sget-boolean v10, Lcom/htc/store/util/LogUtils;->sLogFlagCritical:Z

    if-eqz v10, :cond_1

    .line 1233
    const-string v5, "none"

    .line 1234
    .local v5, file_prefix:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 1243
    :goto_0
    :pswitch_0
    :try_start_0
    invoke-static {}, Lcom/htc/store/util/StorageUtils;->getExternalStorageDirectory()Ljava/lang/String;

    move-result-object v9

    .line 1244
    .local v9, root:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/.tempForHtcStore/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1245
    .local v8, folder_path:Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1246
    .local v0, c:Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 1247
    .local v1, d:J
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".txt"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1248
    .local v4, file_path:Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1249
    .local v7, folder:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_0

    .line 1250
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 1252
    :cond_0
    new-instance v6, Ljava/io/FileWriter;

    invoke-direct {v6, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 1253
    .local v6, fo:Ljava/io/FileWriter;
    invoke-virtual {v6, p2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 1254
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1259
    .end local v0           #c:Ljava/util/Calendar;
    .end local v1           #d:J
    .end local v4           #file_path:Ljava/lang/String;
    .end local v5           #file_prefix:Ljava/lang/String;
    .end local v6           #fo:Ljava/io/FileWriter;
    .end local v7           #folder:Ljava/io/File;
    .end local v8           #folder_path:Ljava/lang/String;
    .end local v9           #root:Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 1236
    .restart local v5       #file_prefix:Ljava/lang/String;
    :pswitch_1
    const-string v5, "detail"

    .line 1237
    goto :goto_0

    .line 1239
    :pswitch_2
    const-string v5, "item_list"

    goto :goto_0

    .line 1255
    :catch_0
    move-exception v3

    .line 1256
    .local v3, e:Ljava/lang/Exception;
    sget-object v10, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1234
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public addComment(Ljava/lang/String;ILjava/lang/String;)I
    .locals 7
    .parameter "appId"
    .parameter "appType"
    .parameter "commentContent"

    .prologue
    .line 746
    const/16 v2, 0x190

    .line 748
    .local v2, result:I
    :try_start_0
    invoke-direct {p0}, Lcom/htc/store/module/rest/RestHelper;->requestRestServiceProxy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 752
    :goto_0
    sget-object v3, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "restHelper call addComment"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 754
    const/4 v0, 0x0

    .local v0, count:I
    :goto_1
    iget v3, p0, Lcom/htc/store/module/rest/RestHelper;->MAX_RETRY_COUNT:I

    if-ge v0, v3, :cond_0

    .line 756
    :try_start_1
    iget-object v3, p0, Lcom/htc/store/module/rest/RestHelper;->mRestServicesProxy:Lcom/htc/cscore/restapi/proxy/RestServicesProxy;

    if-eqz v3, :cond_1

    .line 758
    iget-object v3, p0, Lcom/htc/store/module/rest/RestHelper;->mRestServicesProxy:Lcom/htc/cscore/restapi/proxy/RestServicesProxy;

    invoke-static {p2}, Lcom/htc/store/module/json/JSONUtils;->getV1AppType(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p1, p3}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->AddRecommendAppComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendCommentLike;
    :try_end_1
    .catch Lcom/htc/cscore/restapi/exceptions/CSException; {:try_start_1 .. :try_end_1} :catch_1

    .line 759
    const/16 v2, 0xc8

    .line 766
    :goto_2
    const/16 v3, 0x1f4

    if-eq v2, v3, :cond_2

    .line 770
    :cond_0
    return v2

    .line 749
    .end local v0           #count:I
    :catch_0
    move-exception v1

    .line 750
    .local v1, e:Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/htc/store/module/rest/RestHelper;->errorHandling(Ljava/lang/Exception;)I

    move-result v2

    goto :goto_0

    .line 761
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #count:I
    :cond_1
    const/16 v2, 0xc8

    goto :goto_2

    .line 763
    :catch_1
    move-exception v1

    .line 764
    .local v1, e:Lcom/htc/cscore/restapi/exceptions/CSException;
    invoke-direct {p0, v1}, Lcom/htc/store/module/rest/RestHelper;->errorHandling(Ljava/lang/Exception;)I

    move-result v2

    goto :goto_2

    .line 754
    .end local v1           #e:Lcom/htc/cscore/restapi/exceptions/CSException;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public addLike(Ljava/lang/String;I)I
    .locals 7
    .parameter "appId"
    .parameter "appType"

    .prologue
    .line 675
    const/16 v2, 0x190

    .line 677
    .local v2, result:I
    :try_start_0
    invoke-direct {p0}, Lcom/htc/store/module/rest/RestHelper;->requestRestServiceProxy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 681
    :goto_0
    sget-object v3, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "restHelper call addLike"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 683
    const/4 v0, 0x0

    .local v0, count:I
    :goto_1
    iget v3, p0, Lcom/htc/store/module/rest/RestHelper;->MAX_RETRY_COUNT:I

    if-ge v0, v3, :cond_0

    .line 686
    :try_start_1
    iget-object v3, p0, Lcom/htc/store/module/rest/RestHelper;->mRestServicesProxy:Lcom/htc/cscore/restapi/proxy/RestServicesProxy;

    if-eqz v3, :cond_1

    .line 687
    iget-object v3, p0, Lcom/htc/store/module/rest/RestHelper;->mRestServicesProxy:Lcom/htc/cscore/restapi/proxy/RestServicesProxy;

    invoke-static {p2}, Lcom/htc/store/module/json/JSONUtils;->getV1AppType(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->AddRecommendAppLike(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendCommentLike;
    :try_end_1
    .catch Lcom/htc/cscore/restapi/exceptions/CSException; {:try_start_1 .. :try_end_1} :catch_1

    .line 688
    const/16 v2, 0xc8

    .line 695
    :goto_2
    const/16 v3, 0x1f4

    if-eq v2, v3, :cond_2

    .line 699
    :cond_0
    return v2

    .line 678
    .end local v0           #count:I
    :catch_0
    move-exception v1

    .line 679
    .local v1, e:Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/htc/store/module/rest/RestHelper;->errorHandling(Ljava/lang/Exception;)I

    move-result v2

    goto :goto_0

    .line 690
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #count:I
    :cond_1
    const/16 v2, 0x190

    goto :goto_2

    .line 692
    :catch_1
    move-exception v1

    .line 693
    .local v1, e:Lcom/htc/cscore/restapi/exceptions/CSException;
    invoke-direct {p0, v1}, Lcom/htc/store/module/rest/RestHelper;->errorHandling(Ljava/lang/Exception;)I

    move-result v2

    goto :goto_2

    .line 683
    .end local v1           #e:Lcom/htc/cscore/restapi/exceptions/CSException;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public deleteComment(Ljava/lang/String;I)I
    .locals 7
    .parameter "appId"
    .parameter "appType"

    .prologue
    .line 781
    const/16 v2, 0x190

    .line 783
    .local v2, result:I
    :try_start_0
    invoke-direct {p0}, Lcom/htc/store/module/rest/RestHelper;->requestRestServiceProxy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 787
    :goto_0
    sget-object v3, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "restHelper call deleteComment"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 789
    const/4 v0, 0x0

    .local v0, count:I
    :goto_1
    iget v3, p0, Lcom/htc/store/module/rest/RestHelper;->MAX_RETRY_COUNT:I

    if-ge v0, v3, :cond_0

    .line 791
    :try_start_1
    iget-object v3, p0, Lcom/htc/store/module/rest/RestHelper;->mRestServicesProxy:Lcom/htc/cscore/restapi/proxy/RestServicesProxy;

    if-eqz v3, :cond_1

    .line 793
    iget-object v3, p0, Lcom/htc/store/module/rest/RestHelper;->mRestServicesProxy:Lcom/htc/cscore/restapi/proxy/RestServicesProxy;

    invoke-static {p2}, Lcom/htc/store/module/json/JSONUtils;->getV1AppType(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->DeleteRecommendAppComment(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/htc/cscore/restapi/exceptions/CSException; {:try_start_1 .. :try_end_1} :catch_1

    .line 794
    const/16 v2, 0xc8

    .line 801
    :goto_2
    const/16 v3, 0x1f4

    if-eq v2, v3, :cond_2

    .line 805
    :cond_0
    return v2

    .line 784
    .end local v0           #count:I
    :catch_0
    move-exception v1

    .line 785
    .local v1, e:Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/htc/store/module/rest/RestHelper;->errorHandling(Ljava/lang/Exception;)I

    move-result v2

    goto :goto_0

    .line 796
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #count:I
    :cond_1
    const/16 v2, 0xc8

    goto :goto_2

    .line 798
    :catch_1
    move-exception v1

    .line 799
    .local v1, e:Lcom/htc/cscore/restapi/exceptions/CSException;
    invoke-direct {p0, v1}, Lcom/htc/store/module/rest/RestHelper;->errorHandling(Ljava/lang/Exception;)I

    move-result v2

    goto :goto_2

    .line 789
    .end local v1           #e:Lcom/htc/cscore/restapi/exceptions/CSException;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public deleteLike(Ljava/lang/String;I)I
    .locals 7
    .parameter "appId"
    .parameter "appType"

    .prologue
    .line 710
    const/16 v2, 0x190

    .line 712
    .local v2, result:I
    :try_start_0
    invoke-direct {p0}, Lcom/htc/store/module/rest/RestHelper;->requestRestServiceProxy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 716
    :goto_0
    sget-object v3, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "restHelper call deleteLike"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 718
    const/4 v0, 0x0

    .local v0, count:I
    :goto_1
    iget v3, p0, Lcom/htc/store/module/rest/RestHelper;->MAX_RETRY_COUNT:I

    if-ge v0, v3, :cond_0

    .line 720
    :try_start_1
    iget-object v3, p0, Lcom/htc/store/module/rest/RestHelper;->mRestServicesProxy:Lcom/htc/cscore/restapi/proxy/RestServicesProxy;

    if-eqz v3, :cond_1

    .line 722
    iget-object v3, p0, Lcom/htc/store/module/rest/RestHelper;->mRestServicesProxy:Lcom/htc/cscore/restapi/proxy/RestServicesProxy;

    invoke-static {p2}, Lcom/htc/store/module/json/JSONUtils;->getV1AppType(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->DeleteRecommendAppLike(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/htc/cscore/restapi/exceptions/CSException; {:try_start_1 .. :try_end_1} :catch_1

    .line 723
    const/16 v2, 0xc8

    .line 730
    :goto_2
    const/16 v3, 0x1f4

    if-eq v2, v3, :cond_2

    .line 734
    :cond_0
    return v2

    .line 713
    .end local v0           #count:I
    :catch_0
    move-exception v1

    .line 714
    .local v1, e:Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/htc/store/module/rest/RestHelper;->errorHandling(Ljava/lang/Exception;)I

    move-result v2

    goto :goto_0

    .line 725
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #count:I
    :cond_1
    const/16 v2, 0xc8

    goto :goto_2

    .line 727
    :catch_1
    move-exception v1

    .line 728
    .local v1, e:Lcom/htc/cscore/restapi/exceptions/CSException;
    invoke-direct {p0, v1}, Lcom/htc/store/module/rest/RestHelper;->errorHandling(Ljava/lang/Exception;)I

    move-result v2

    goto :goto_2

    .line 718
    .end local v1           #e:Lcom/htc/cscore/restapi/exceptions/CSException;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public deleteMarkedItemsList(Ljava/util/ArrayList;)Lcom/htc/store/module/rest/RestResult;
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/htc/store/module/rest/RestResult;"
        }
    .end annotation

    .prologue
    .local p1, onlineIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 374
    new-instance v4, Lcom/htc/store/module/rest/RestResult;

    invoke-direct {v4}, Lcom/htc/store/module/rest/RestResult;-><init>()V

    .line 375
    .local v4, result:Lcom/htc/store/module/rest/RestResult;
    sget-object v6, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    new-array v7, v10, [Ljava/lang/Object;

    const-string v8, "restHelper call deleteMarkedItemsList"

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 376
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 378
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 379
    .local v0, curmill:J
    new-instance v2, Lcom/htc/store/module/json/DeleteMarkedItemsFeed;

    iget-object v6, p0, Lcom/htc/store/module/rest/RestHelper;->mContext:Landroid/content/Context;

    invoke-direct {v2, v6, p1}, Lcom/htc/store/module/json/DeleteMarkedItemsFeed;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 380
    .local v2, deleteMarkedItem:Lcom/htc/store/module/json/DeleteMarkedItemsFeed;
    iget-object v6, p0, Lcom/htc/store/module/rest/RestHelper;->mCSRestProxy:Lcom/htc/cslib/restHelper/CSRestProxy;

    const-string v7, ""

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Lcom/htc/store/module/json/DeleteMarkedItemsFeed;->getUrl(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Lcom/htc/cslib/restHelper/CSRestProxy;->httpDelete(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 381
    .local v5, returnedString:Ljava/lang/String;
    sget-object v6, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deleteMarkedItemsList returned output : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/store/util/LogUtils;->critical(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    sget-object v6, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DeleteMarkedItemList Call : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v0

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ms"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 383
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Lcom/htc/store/module/json/DeleteMarkedItemsFeed;->parse(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, v4, Lcom/htc/store/module/rest/RestResult;->mResultList:Ljava/util/ArrayList;

    .line 384
    const/16 v6, 0xc8

    iput v6, v4, Lcom/htc/store/module/rest/RestResult;->mResultCode:I

    .line 385
    sget-object v6, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "restHelper deleteMarkedItemsList success"

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    .end local v0           #curmill:J
    .end local v2           #deleteMarkedItem:Lcom/htc/store/module/json/DeleteMarkedItemsFeed;
    .end local v5           #returnedString:Ljava/lang/String;
    :goto_0
    return-object v4

    .line 386
    :catch_0
    move-exception v3

    .line 387
    .local v3, e:Ljava/lang/Exception;
    invoke-direct {p0, v3}, Lcom/htc/store/module/rest/RestHelper;->errorHandling(Ljava/lang/Exception;)I

    move-result v6

    iput v6, v4, Lcom/htc/store/module/rest/RestResult;->mResultCode:I

    goto :goto_0

    .line 390
    .end local v3           #e:Ljava/lang/Exception;
    :cond_0
    sget-object v6, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    new-array v7, v10, [Ljava/lang/Object;

    const-string v8, "There is no marked id to delete marked item"

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/store/module/rest/RestHelper;->mContext:Landroid/content/Context;

    .line 111
    return-void
.end method

.method public feedbackIdForTracking(Ljava/lang/String;)I
    .locals 6
    .parameter "id"

    .prologue
    .line 518
    const/16 v1, 0x190

    .line 519
    .local v1, result:I
    sget-object v2, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "restHelper call feedbackIdForTracking call"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 522
    :try_start_0
    iget-object v2, p0, Lcom/htc/store/module/rest/RestHelper;->mCSRestProxy:Lcom/htc/cslib/restHelper/CSRestProxy;

    new-instance v3, Lcom/htc/store/module/PreferenceManager;

    iget-object v4, p0, Lcom/htc/store/module/rest/RestHelper;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/htc/store/module/PreferenceManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/htc/store/module/PreferenceManager;->getTrackingCampaignParameter()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/htc/cslib/restHelper/CSRestProxy;->httpPost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    const/16 v1, 0xc8

    .line 527
    :goto_0
    return v1

    .line 524
    :catch_0
    move-exception v0

    .line 525
    .local v0, e:Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/htc/store/module/rest/RestHelper;->errorHandling(Ljava/lang/Exception;)I

    move-result v1

    goto :goto_0
.end method

.method public getAppListFriendCommented(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;II)I
    .locals 16
    .parameter
    .parameter
    .parameter
    .parameter "start"
    .parameter "amount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/provider/table/Comment;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/provider/table/Comment;",
            ">;II)I"
        }
    .end annotation

    .prologue
    .line 937
    .local p1, appIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, appComments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/provider/table/Comment;>;"
    .local p3, widgetComments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/provider/table/Comment;>;"
    const/16 v14, 0x190

    .line 939
    .local v14, resultCode:I
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/htc/store/module/rest/RestHelper;->requestRestServiceProxy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 944
    :goto_0
    const/4 v9, 0x0

    .local v9, count:I
    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/store/module/rest/RestHelper;->MAX_RETRY_COUNT:I

    if-ge v9, v1, :cond_1

    .line 946
    :try_start_1
    new-instance v7, Lcom/htc/cscore/restapi/json/SearchResults;

    invoke-direct {v7}, Lcom/htc/cscore/restapi/json/SearchResults;-><init>()V

    .line 948
    .local v7, appStatus:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationStatus;>;"
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/store/module/rest/RestHelper;->types:[Ljava/lang/String;

    .local v8, arr$:[Ljava/lang/String;
    array-length v13, v8

    .local v13, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    move v12, v11

    .end local v11           #i$:I
    .local v12, i$:I
    :goto_2
    if-ge v12, v13, :cond_4

    aget-object v2, v8, v12

    .line 949
    .local v2, type:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/store/module/rest/RestHelper;->mRestServicesProxy:Lcom/htc/cscore/restapi/proxy/RestServicesProxy;

    const-string v3, "TimeStamp"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->GetFriendsRecommendedCommentsLikes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;II)Lcom/htc/cscore/restapi/json/SearchResults;

    move-result-object v7

    .line 951
    sget-object v1, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "request GetFriendsRecommendedCommentsLikes()"

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 952
    if-eqz v7, :cond_3

    .line 953
    iget-object v1, v7, Lcom/htc/cscore/restapi/json/SearchResults;->Results:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .end local v12           #i$:I
    .local v11, i$:Ljava/util/Iterator;
    :cond_0
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationStatus;

    .line 954
    .local v15, status:Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationStatus;
    iget-object v1, v15, Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationStatus;->AppId:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 980
    sget-boolean v1, Lcom/htc/store/util/LogUtils;->sLogFlagNormal:Z

    if-eqz v1, :cond_0

    .line 981
    sget-object v1, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "package="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v15, Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationStatus;->AppId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 982
    sget-object v1, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "comment="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v15, Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationStatus;->Comment:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 983
    sget-object v1, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "commentDate="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v15, Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationStatus;->CommentDate:Ljava/util/Date;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 984
    sget-object v3, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "liked="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, v15, Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationStatus;->Liked:Ljava/lang/Boolean;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "true"

    :goto_4
    aput-object v1, v4, v5

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 985
    sget-object v1, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "likedDate="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v15, Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationStatus;->LikedDate:Ljava/util/Date;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 986
    sget-object v1, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "friend ID="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v15, Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationStatus;->FriendRequestId:Ljava/util/UUID;

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 987
    sget-object v1, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "---------------------------------------------"

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/htc/cscore/restapi/exceptions/CSException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 993
    .end local v2           #type:Ljava/lang/String;
    .end local v7           #appStatus:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationStatus;>;"
    .end local v8           #arr$:[Ljava/lang/String;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v13           #len$:I
    .end local v15           #status:Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationStatus;
    :catch_0
    move-exception v10

    .line 994
    .local v10, e:Lcom/htc/cscore/restapi/exceptions/CSException;
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/htc/store/module/rest/RestHelper;->errorHandling(Ljava/lang/Exception;)I

    move-result v14

    .line 996
    .end local v10           #e:Lcom/htc/cscore/restapi/exceptions/CSException;
    :goto_5
    const/16 v1, 0x1f4

    if-eq v14, v1, :cond_5

    .line 1000
    :cond_1
    return v14

    .line 940
    .end local v9           #count:I
    :catch_1
    move-exception v10

    .line 941
    .local v10, e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/htc/store/module/rest/RestHelper;->errorHandling(Ljava/lang/Exception;)I

    move-result v14

    goto/16 :goto_0

    .line 984
    .end local v10           #e:Ljava/lang/Exception;
    .restart local v2       #type:Ljava/lang/String;
    .restart local v7       #appStatus:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationStatus;>;"
    .restart local v8       #arr$:[Ljava/lang/String;
    .restart local v9       #count:I
    .restart local v11       #i$:Ljava/util/Iterator;
    .restart local v13       #len$:I
    .restart local v15       #status:Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationStatus;
    :cond_2
    :try_start_2
    const-string v1, "false"
    :try_end_2
    .catch Lcom/htc/cscore/restapi/exceptions/CSException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    .line 948
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v15           #status:Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationStatus;
    :cond_3
    add-int/lit8 v11, v12, 0x1

    .local v11, i$:I
    move v12, v11

    .end local v11           #i$:I
    .restart local v12       #i$:I
    goto/16 :goto_2

    .line 992
    .end local v2           #type:Ljava/lang/String;
    :cond_4
    const/16 v14, 0xc8

    goto :goto_5

    .line 944
    .end local v7           #appStatus:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationStatus;>;"
    .end local v8           #arr$:[Ljava/lang/String;
    .end local v12           #i$:I
    .end local v13           #len$:I
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1
.end method

.method public getCommentLikeInfo(Ljava/util/ArrayList;)Lcom/htc/store/module/rest/RestResult;
    .locals 24
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/module/vo/ItemItem;",
            ">;)",
            "Lcom/htc/store/module/rest/RestResult;"
        }
    .end annotation

    .prologue
    .line 561
    .local p1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/ItemItem;>;"
    new-instance v20, Lcom/htc/store/module/rest/RestResult;

    invoke-direct/range {v20 .. v20}, Lcom/htc/store/module/rest/RestResult;-><init>()V

    .line 563
    .local v20, result:Lcom/htc/store/module/rest/RestResult;
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/htc/store/module/rest/RestHelper;->requestRestServiceProxy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 567
    :goto_0
    sget-object v2, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "restHelper call getCommentLikeCount"

    aput-object v7, v5, v6

    invoke-static {v2, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 569
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 570
    .local v11, commentLikeInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/ItemItem;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/store/module/rest/RestHelper;->mRestServicesProxy:Lcom/htc/cscore/restapi/proxy/RestServicesProxy;

    if-eqz v2, :cond_f

    .line 571
    const/4 v12, 0x0

    .local v12, count:I
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/store/module/rest/RestHelper;->MAX_RETRY_COUNT:I

    if-ge v12, v2, :cond_3

    .line 572
    if-eqz p1, :cond_2

    .line 574
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v22

    .line 575
    .local v22, size:I
    const/16 v23, 0x0

    .line 576
    .local v23, start:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/store/module/rest/RestHelper;->MAX_LIMIT_GETAPP_INFO:I

    move/from16 v0, v22

    if-le v0, v2, :cond_4

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/store/module/rest/RestHelper;->MAX_LIMIT_GETAPP_INFO:I

    .line 577
    .local v15, end:I
    :goto_2
    move/from16 v19, v22

    .line 579
    .local v19, left:I
    :cond_0
    :goto_3
    if-lez v19, :cond_d

    .line 580
    sub-int v2, v15, v23

    sub-int v19, v19, v2

    .line 581
    sget-object v2, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "start="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",end="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",left="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 582
    new-instance v13, Ljava/util/ArrayList;

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1, v15}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-direct {v13, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 583
    .local v13, curItemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/ItemItem;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 585
    .local v3, curAppIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, ""

    .line 586
    .local v4, appType:Ljava/lang/String;
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_1

    .line 587
    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/store/module/vo/ItemItem;

    invoke-virtual {v2}, Lcom/htc/store/module/vo/ItemItem;->getContentType()I

    move-result v2

    invoke-static {v2}, Lcom/htc/store/module/json/JSONUtils;->getV1AppType(I)Ljava/lang/String;

    move-result-object v4

    .line 588
    sget-object v5, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/Object;

    const/4 v7, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "request GetAllApplicationInformation at DeatilPage appId = "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/store/module/vo/ItemItem;

    invoke-virtual {v2}, Lcom/htc/store/module/vo/ItemItem;->getOnlineV1Id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, ", appType = "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v7

    invoke-static {v5, v6}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 591
    :cond_1
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/htc/store/module/vo/ItemItem;

    .line 592
    .local v16, i:Lcom/htc/store/module/vo/ItemItem;
    invoke-virtual/range {v16 .. v16}, Lcom/htc/store/module/vo/ItemItem;->getOnlineV1Id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/htc/cscore/restapi/exceptions/CSException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 652
    .end local v3           #curAppIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #appType:Ljava/lang/String;
    .end local v13           #curItemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/ItemItem;>;"
    .end local v15           #end:I
    .end local v16           #i:Lcom/htc/store/module/vo/ItemItem;
    .end local v17           #i$:Ljava/util/Iterator;
    .end local v19           #left:I
    .end local v22           #size:I
    .end local v23           #start:I
    :catch_0
    move-exception v14

    .line 653
    .local v14, e:Lcom/htc/cscore/restapi/exceptions/CSException;
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/htc/store/module/rest/RestHelper;->errorHandling(Ljava/lang/Exception;)I

    move-result v2

    move-object/from16 v0, v20

    iput v2, v0, Lcom/htc/store/module/rest/RestResult;->mResultCode:I

    .line 656
    .end local v14           #e:Lcom/htc/cscore/restapi/exceptions/CSException;
    :cond_2
    :goto_5
    move-object/from16 v0, v20

    iget v2, v0, Lcom/htc/store/module/rest/RestResult;->mResultCode:I

    const/16 v5, 0x1f4

    if-eq v2, v5, :cond_e

    .line 664
    .end local v12           #count:I
    :cond_3
    :goto_6
    return-object v20

    .line 564
    .end local v11           #commentLikeInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/ItemItem;>;"
    :catch_1
    move-exception v14

    .line 565
    .local v14, e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/htc/store/module/rest/RestHelper;->errorHandling(Ljava/lang/Exception;)I

    move-result v2

    move-object/from16 v0, v20

    iput v2, v0, Lcom/htc/store/module/rest/RestResult;->mResultCode:I

    goto/16 :goto_0

    .end local v14           #e:Ljava/lang/Exception;
    .restart local v11       #commentLikeInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/ItemItem;>;"
    .restart local v12       #count:I
    .restart local v22       #size:I
    .restart local v23       #start:I
    :cond_4
    move/from16 v15, v22

    .line 576
    goto/16 :goto_2

    .line 596
    .restart local v3       #curAppIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4       #appType:Ljava/lang/String;
    .restart local v13       #curItemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/ItemItem;>;"
    .restart local v15       #end:I
    .restart local v17       #i$:Ljava/util/Iterator;
    .restart local v19       #left:I
    :cond_5
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/store/module/rest/RestHelper;->mRestServicesProxy:Lcom/htc/cscore/restapi/proxy/RestServicesProxy;

    const-string v5, ""

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual/range {v2 .. v8}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->GetAllApplicationInformation(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;II)Lcom/htc/cscore/restapi/json/SearchResults;

    move-result-object v10

    .line 599
    .local v10, appInfo:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationInformation;>;"
    sget-object v2, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "request GetAllApplicationInformation() : curPackageList.size= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 600
    if-eqz v10, :cond_b

    .line 601
    sget-object v2, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GetAllApplicationInformation() returned object size is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v10, Lcom/htc/cscore/restapi/json/SearchResults;->Results:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 603
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .end local v17           #i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/htc/store/module/vo/ItemItem;

    .line 604
    .restart local v16       #i:Lcom/htc/store/module/vo/ItemItem;
    const/16 v21, 0x1

    .line 605
    .local v21, setDefault:Z
    iget-object v2, v10, Lcom/htc/cscore/restapi/json/SearchResults;->Results:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationInformation;

    .line 607
    .local v9, apInfo:Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationInformation;
    iget-object v2, v9, Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationInformation;->AppId:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, v9, Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationInformation;->AppId:Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Lcom/htc/store/module/vo/ItemItem;->getOnlineV1Id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 608
    iget v2, v9, Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationInformation;->CommentCount:I

    int-to-long v5, v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v6}, Lcom/htc/store/module/vo/ItemItem;->setOnlineCommentCount(J)V

    .line 609
    iget v2, v9, Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationInformation;->LikeCount:I

    int-to-long v5, v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v6}, Lcom/htc/store/module/vo/ItemItem;->setOnlineLikeCount(J)V

    .line 611
    iget v2, v9, Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationInformation;->FriendsCommentCount:I

    int-to-long v5, v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v6}, Lcom/htc/store/module/vo/ItemItem;->setOnlineUserFriendsCommentCount(J)V

    .line 612
    iget v2, v9, Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationInformation;->FriendsLikeCount:I

    int-to-long v5, v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v6}, Lcom/htc/store/module/vo/ItemItem;->setOnlineUserFriendsLikeCount(J)V

    .line 613
    iget-object v2, v9, Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationInformation;->Comment:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/htc/store/module/vo/ItemItem;->setOnlineUserComment(Ljava/lang/String;)V

    .line 614
    iget-boolean v2, v9, Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationInformation;->Liked:Z

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    :goto_8
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/htc/store/module/vo/ItemItem;->setOnlineUserLike(I)V

    .line 617
    sget-boolean v2, Lcom/htc/store/util/LogUtils;->sLogFlagNormal:Z

    if-eqz v2, :cond_7

    .line 618
    sget-object v2, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "package="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v9, Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationInformation;->AppId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ,commentCount="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v9, Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationInformation;->CommentCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 619
    sget-object v2, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "likeCount="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v9, Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationInformation;->LikeCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ,commentContent="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v9, Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationInformation;->Comment:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 620
    sget-object v2, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "liked="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, v9, Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationInformation;->Liked:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ,friCommentCount="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v9, Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationInformation;->FriendsCommentCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 621
    sget-object v2, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "friLikeCount="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v9, Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationInformation;->FriendsLikeCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ,DowloadCount="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v9, Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationInformation;->PopularCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 622
    sget-object v2, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "---------------------------------------------"

    aput-object v7, v5, v6

    invoke-static {v2, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 624
    :cond_7
    const/16 v21, 0x0

    .line 628
    .end local v9           #apInfo:Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationInformation;
    :cond_8
    if-eqz v21, :cond_9

    .line 629
    const-wide/16 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v6}, Lcom/htc/store/module/vo/ItemItem;->setOnlineCommentCount(J)V

    .line 630
    const-wide/16 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v6}, Lcom/htc/store/module/vo/ItemItem;->setOnlineLikeCount(J)V

    .line 632
    const-wide/16 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v6}, Lcom/htc/store/module/vo/ItemItem;->setOnlineUserFriendsCommentCount(J)V

    .line 633
    const-wide/16 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v6}, Lcom/htc/store/module/vo/ItemItem;->setOnlineUserFriendsLikeCount(J)V

    .line 634
    const-string v2, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/htc/store/module/vo/ItemItem;->setOnlineUserComment(Ljava/lang/String;)V

    .line 635
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/htc/store/module/vo/ItemItem;->setOnlineUserLike(I)V

    .line 637
    :cond_9
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 614
    .restart local v9       #apInfo:Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationInformation;
    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_8

    .line 641
    .end local v9           #apInfo:Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationInformation;
    .end local v16           #i:Lcom/htc/store/module/vo/ItemItem;
    .end local v18           #i$:Ljava/util/Iterator;
    .end local v21           #setDefault:Z
    :cond_b
    if-lez v19, :cond_0

    .line 642
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/store/module/rest/RestHelper;->MAX_LIMIT_GETAPP_INFO:I

    add-int v23, v23, v2

    .line 643
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/store/module/rest/RestHelper;->MAX_LIMIT_GETAPP_INFO:I

    move/from16 v0, v19

    if-le v0, v2, :cond_c

    .line 644
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/store/module/rest/RestHelper;->MAX_LIMIT_GETAPP_INFO:I

    add-int/2addr v15, v2

    goto/16 :goto_3

    .line 646
    :cond_c
    add-int v15, v15, v19

    goto/16 :goto_3

    .line 650
    .end local v3           #curAppIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #appType:Ljava/lang/String;
    .end local v10           #appInfo:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationInformation;>;"
    .end local v13           #curItemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/ItemItem;>;"
    :cond_d
    move-object/from16 v0, v20

    iput-object v11, v0, Lcom/htc/store/module/rest/RestResult;->mResultList:Ljava/util/ArrayList;

    .line 651
    const/16 v2, 0xc8

    move-object/from16 v0, v20

    iput v2, v0, Lcom/htc/store/module/rest/RestResult;->mResultCode:I
    :try_end_2
    .catch Lcom/htc/cscore/restapi/exceptions/CSException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_5

    .line 571
    .end local v15           #end:I
    .end local v19           #left:I
    .end local v22           #size:I
    .end local v23           #start:I
    :cond_e
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 661
    .end local v12           #count:I
    :cond_f
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/htc/store/module/rest/RestResult;->mResultList:Ljava/util/ArrayList;

    .line 662
    const/16 v2, 0x190

    move-object/from16 v0, v20

    iput v2, v0, Lcom/htc/store/module/rest/RestResult;->mResultCode:I

    goto/16 :goto_6
.end method

.method public getDetailItem(Ljava/lang/String;)Lcom/htc/store/module/rest/RestResult;
    .locals 1
    .parameter "productId"

    .prologue
    .line 343
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/store/module/rest/RestHelper;->getDetailItem(Ljava/lang/String;Z)Lcom/htc/store/module/rest/RestResult;

    move-result-object v0

    return-object v0
.end method

.method public getDetailItem(Ljava/lang/String;Z)Lcom/htc/store/module/rest/RestResult;
    .locals 13
    .parameter "productId"
    .parameter "isOperator"

    .prologue
    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 319
    new-instance v4, Lcom/htc/store/module/rest/RestResult;

    invoke-direct {v4}, Lcom/htc/store/module/rest/RestResult;-><init>()V

    .line 320
    .local v4, result:Lcom/htc/store/module/rest/RestResult;
    sget-object v7, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    new-array v8, v8, [Ljava/lang/Object;

    const-string v9, "resultHeleper call detailItemCall"

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 322
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 323
    .local v0, curmill:J
    new-instance v2, Lcom/htc/store/module/json/DetailItemFeed;

    iget-object v7, p0, Lcom/htc/store/module/rest/RestHelper;->mContext:Landroid/content/Context;

    invoke-direct {v2, v7}, Lcom/htc/store/module/json/DetailItemFeed;-><init>(Landroid/content/Context;)V

    .line 324
    .local v2, detail:Lcom/htc/store/module/json/DetailItemFeed;
    iget-object v7, p0, Lcom/htc/store/module/rest/RestHelper;->mCSRestProxy:Lcom/htc/cslib/restHelper/CSRestProxy;

    invoke-virtual {v2, p1, p2}, Lcom/htc/store/module/json/DetailItemFeed;->getUrl(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Lcom/htc/cslib/restHelper/CSRestProxy;->httpGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 325
    .local v5, returnedString:Ljava/lang/String;
    sget-object v7, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "detail returned output : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/store/util/LogUtils;->critical(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    sget-object v7, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ItemDetail Call : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v0

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ms"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 327
    const/4 v7, 0x6

    invoke-direct {p0, v7, v5}, Lcom/htc/store/module/rest/RestHelper;->writeToFile(ILjava/lang/String;)V

    .line 328
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Lcom/htc/store/module/json/DetailItemFeed;->parse(Lorg/json/JSONObject;)Lcom/htc/store/module/vo/ItemItem;

    move-result-object v6

    .line 329
    .local v6, temp:Lcom/htc/store/module/vo/ItemItem;
    if-eqz v6, :cond_0

    .line 330
    iput-object v6, v4, Lcom/htc/store/module/rest/RestResult;->mResultData:Ljava/lang/Object;

    .line 334
    :goto_0
    const/16 v7, 0xc8

    iput v7, v4, Lcom/htc/store/module/rest/RestResult;->mResultCode:I

    .line 335
    sget-object v7, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "restHelper call detailCall success"

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 339
    .end local v0           #curmill:J
    .end local v2           #detail:Lcom/htc/store/module/json/DetailItemFeed;
    .end local v5           #returnedString:Ljava/lang/String;
    .end local v6           #temp:Lcom/htc/store/module/vo/ItemItem;
    :goto_1
    return-object v4

    .line 332
    .restart local v0       #curmill:J
    .restart local v2       #detail:Lcom/htc/store/module/json/DetailItemFeed;
    .restart local v5       #returnedString:Ljava/lang/String;
    .restart local v6       #temp:Lcom/htc/store/module/vo/ItemItem;
    :cond_0
    invoke-virtual {v2}, Lcom/htc/store/module/json/DetailItemFeed;->getSoundsetItem()Lcom/htc/store/module/vo/SoundsetItem;

    move-result-object v7

    iput-object v7, v4, Lcom/htc/store/module/rest/RestResult;->mResultData:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 336
    .end local v0           #curmill:J
    .end local v2           #detail:Lcom/htc/store/module/json/DetailItemFeed;
    .end local v5           #returnedString:Ljava/lang/String;
    .end local v6           #temp:Lcom/htc/store/module/vo/ItemItem;
    :catch_0
    move-exception v3

    .line 337
    .local v3, e:Ljava/lang/Exception;
    invoke-direct {p0, v3}, Lcom/htc/store/module/rest/RestHelper;->errorHandling(Ljava/lang/Exception;)I

    move-result v7

    iput v7, v4, Lcom/htc/store/module/rest/RestResult;->mResultCode:I

    goto :goto_1
.end method

.method public getFeaturedContents(JLjava/lang/String;)Lcom/htc/store/module/rest/RestResult;
    .locals 1
    .parameter "categoryId"
    .parameter "contentPath"

    .prologue
    .line 214
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/htc/store/module/rest/RestHelper;->getFeaturedContents(JLjava/lang/String;Z)Lcom/htc/store/module/rest/RestResult;

    move-result-object v0

    return-object v0
.end method

.method public getFeaturedContents(JLjava/lang/String;Z)Lcom/htc/store/module/rest/RestResult;
    .locals 14
    .parameter "categoryId"
    .parameter "contentPath"
    .parameter "isOperator"

    .prologue
    .line 196
    new-instance v6, Lcom/htc/store/module/rest/RestResult;

    invoke-direct {v6}, Lcom/htc/store/module/rest/RestResult;-><init>()V

    .line 197
    .local v6, result:Lcom/htc/store/module/rest/RestResult;
    sget-object v8, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "restHelper call featuredCall"

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 200
    .local v2, curmill:J
    new-instance v5, Lcom/htc/store/module/json/FeaturedFeed;

    iget-object v8, p0, Lcom/htc/store/module/rest/RestHelper;->mContext:Landroid/content/Context;

    move-wide v0, p1

    invoke-direct {v5, v8, v0, v1}, Lcom/htc/store/module/json/FeaturedFeed;-><init>(Landroid/content/Context;J)V

    .line 201
    .local v5, featured:Lcom/htc/store/module/json/FeaturedFeed;
    iget-object v8, p0, Lcom/htc/store/module/rest/RestHelper;->mCSRestProxy:Lcom/htc/cslib/restHelper/CSRestProxy;

    move-object/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v5, v0, v1}, Lcom/htc/store/module/json/FeaturedFeed;->getUrl(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Lcom/htc/cslib/restHelper/CSRestProxy;->httpGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 202
    .local v7, returnedString:Ljava/lang/String;
    sget-object v8, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "feature returned output : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/store/util/LogUtils;->critical(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    sget-object v8, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Feature Call : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v2

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ms"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Lcom/htc/store/module/json/FeaturedFeed;->parse(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v8

    iput-object v8, v6, Lcom/htc/store/module/rest/RestResult;->mResultList:Ljava/util/ArrayList;

    .line 205
    const/16 v8, 0xc8

    iput v8, v6, Lcom/htc/store/module/rest/RestResult;->mResultCode:I

    .line 206
    sget-object v8, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "restHelper call featuredCall success"

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    .end local v2           #curmill:J
    .end local v5           #featured:Lcom/htc/store/module/json/FeaturedFeed;
    .end local v7           #returnedString:Ljava/lang/String;
    :goto_0
    return-object v6

    .line 207
    :catch_0
    move-exception v4

    .line 208
    .local v4, e:Ljava/lang/Exception;
    invoke-direct {p0, v4}, Lcom/htc/store/module/rest/RestHelper;->errorHandling(Ljava/lang/Exception;)I

    move-result v8

    iput v8, v6, Lcom/htc/store/module/rest/RestResult;->mResultCode:I

    goto :goto_0
.end method

.method public getFriendComment(Ljava/lang/String;ILjava/util/ArrayList;II)I
    .locals 15
    .parameter "appId"
    .parameter "type"
    .parameter
    .parameter "startIndex"
    .parameter "pageSize"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/provider/table/Comment;",
            ">;II)I"
        }
    .end annotation

    .prologue
    .line 819
    .local p3, comments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/provider/table/Comment;>;"
    const/16 v14, 0x190

    .line 821
    .local v14, resultCode:I
    :try_start_0
    invoke-direct {p0}, Lcom/htc/store/module/rest/RestHelper;->requestRestServiceProxy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 826
    :goto_0
    const/4 v9, 0x0

    .local v9, count:I
    :goto_1
    iget v1, p0, Lcom/htc/store/module/rest/RestHelper;->MAX_RETRY_COUNT:I

    if-ge v9, v1, :cond_1

    .line 828
    :try_start_1
    new-instance v12, Lcom/htc/cscore/restapi/json/SearchResults;

    invoke-direct {v12}, Lcom/htc/cscore/restapi/json/SearchResults;-><init>()V

    .line 831
    .local v12, friendFeedback:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WFriendFeedback;>;"
    iget-object v1, p0, Lcom/htc/store/module/rest/RestHelper;->mRestServicesProxy:Lcom/htc/cscore/restapi/proxy/RestServicesProxy;

    invoke-static/range {p2 .. p2}, Lcom/htc/store/module/json/JSONUtils;->getV1AppType(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "CommentLikeDate"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v2, p1

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->GetFriendFeedback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;II)Lcom/htc/cscore/restapi/json/SearchResults;

    move-result-object v12

    .line 833
    sget-object v1, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "request GetFriendFeedback()"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 834
    if-eqz v12, :cond_2

    .line 835
    iget-object v1, v12, Lcom/htc/cscore/restapi/json/SearchResults;->Results:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :cond_0
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/cscore/restapi/proxy/WebClasses$WFriendFeedback;

    .line 838
    .local v11, friendComment:Lcom/htc/cscore/restapi/proxy/WebClasses$WFriendFeedback;
    new-instance v8, Lcom/htc/store/provider/table/Comment;

    invoke-direct {v8}, Lcom/htc/store/provider/table/Comment;-><init>()V

    .line 846
    .local v8, comment:Lcom/htc/store/provider/table/Comment;
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 850
    sget-boolean v1, Lcom/htc/store/util/LogUtils;->sLogFlagNormal:Z

    if-eqz v1, :cond_0

    .line 851
    sget-object v1, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "package="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v11, Lcom/htc/cscore/restapi/proxy/WebClasses$WFriendFeedback;->AppId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,commentCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v11, Lcom/htc/cscore/restapi/proxy/WebClasses$WFriendFeedback;->CommentCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 852
    sget-object v1, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "likeCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v11, Lcom/htc/cscore/restapi/proxy/WebClasses$WFriendFeedback;->LikeCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,commentContent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v11, Lcom/htc/cscore/restapi/proxy/WebClasses$WFriendFeedback;->Comment:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 853
    sget-object v1, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "liked="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v11, Lcom/htc/cscore/restapi/proxy/WebClasses$WFriendFeedback;->Liked:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,fName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v11, Lcom/htc/cscore/restapi/proxy/WebClasses$WFriendFeedback;->FirstName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,lName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v11, Lcom/htc/cscore/restapi/proxy/WebClasses$WFriendFeedback;->LastName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 854
    sget-object v1, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "friendUUID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v11, Lcom/htc/cscore/restapi/proxy/WebClasses$WFriendFeedback;->FriendRequestId:Ljava/util/UUID;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,timestamp="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v11, Lcom/htc/cscore/restapi/proxy/WebClasses$WFriendFeedback;->CommentLikeDate:Ljava/util/Date;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 855
    sget-object v1, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "---------------------------------------------"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/htc/cscore/restapi/exceptions/CSException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 860
    .end local v8           #comment:Lcom/htc/store/provider/table/Comment;
    .end local v11           #friendComment:Lcom/htc/cscore/restapi/proxy/WebClasses$WFriendFeedback;
    .end local v12           #friendFeedback:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WFriendFeedback;>;"
    .end local v13           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v10

    .line 861
    .local v10, e:Lcom/htc/cscore/restapi/exceptions/CSException;
    invoke-direct {p0, v10}, Lcom/htc/store/module/rest/RestHelper;->errorHandling(Ljava/lang/Exception;)I

    move-result v14

    .line 863
    .end local v10           #e:Lcom/htc/cscore/restapi/exceptions/CSException;
    :goto_3
    const/16 v1, 0x1f4

    if-eq v14, v1, :cond_3

    .line 867
    :cond_1
    return v14

    .line 822
    .end local v9           #count:I
    :catch_1
    move-exception v10

    .line 823
    .local v10, e:Ljava/lang/Exception;
    invoke-direct {p0, v10}, Lcom/htc/store/module/rest/RestHelper;->errorHandling(Ljava/lang/Exception;)I

    move-result v14

    goto/16 :goto_0

    .line 859
    .end local v10           #e:Ljava/lang/Exception;
    .restart local v9       #count:I
    .restart local v12       #friendFeedback:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WFriendFeedback;>;"
    :cond_2
    const/16 v14, 0xc8

    goto :goto_3

    .line 826
    .end local v12           #friendFeedback:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WFriendFeedback;>;"
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1
.end method

.method public getFriendInformation(Ljava/lang/String;)[I
    .locals 14
    .parameter "friendUUID"

    .prologue
    .line 881
    const/16 v8, 0x190

    .line 882
    .local v8, resultCode:I
    const/4 v1, 0x0

    .line 883
    .local v1, commentCount:I
    const/4 v7, 0x0

    .line 886
    .local v7, likeCount:I
    :try_start_0
    invoke-direct {p0}, Lcom/htc/store/module/rest/RestHelper;->requestRestServiceProxy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 891
    :goto_0
    const/4 v2, 0x0

    .local v2, count:I
    :goto_1
    iget v12, p0, Lcom/htc/store/module/rest/RestHelper;->MAX_RETRY_COUNT:I

    if-ge v2, v12, :cond_2

    .line 895
    :try_start_1
    sget-object v12, Lcom/htc/store/module/rest/RestConstant;->MY_UUID:Ljava/util/UUID;

    invoke-virtual {v12}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 897
    iget-object v12, p0, Lcom/htc/store/module/rest/RestHelper;->mRestServicesProxy:Lcom/htc/cscore/restapi/proxy/RestServicesProxy;

    const-string v13, ""

    invoke-virtual {v12, v13}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->GetMyCommentAndLikeCounts(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    .line 899
    .local v4, group_count:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/cscore/restapi/proxy/WebClasses$WCommentAndLikeCounts;>;"
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v12

    if-lez v12, :cond_1

    .line 900
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 901
    .local v9, s:Ljava/lang/String;
    invoke-virtual {v4, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/cscore/restapi/proxy/WebClasses$WCommentAndLikeCounts;

    .line 902
    .local v11, wCount:Lcom/htc/cscore/restapi/proxy/WebClasses$WCommentAndLikeCounts;
    iget v12, v11, Lcom/htc/cscore/restapi/proxy/WebClasses$WCommentAndLikeCounts;->CommentCount:I

    add-int/2addr v1, v12

    .line 903
    iget v12, v11, Lcom/htc/cscore/restapi/proxy/WebClasses$WCommentAndLikeCounts;->LikeCount:I
    :try_end_1
    .catch Lcom/htc/cscore/restapi/exceptions/CSException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/2addr v7, v12

    .line 904
    goto :goto_2

    .line 887
    .end local v2           #count:I
    .end local v4           #group_count:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/cscore/restapi/proxy/WebClasses$WCommentAndLikeCounts;>;"
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v9           #s:Ljava/lang/String;
    .end local v11           #wCount:Lcom/htc/cscore/restapi/proxy/WebClasses$WCommentAndLikeCounts;
    :catch_0
    move-exception v3

    .line 888
    .local v3, e:Ljava/lang/Exception;
    invoke-direct {p0, v3}, Lcom/htc/store/module/rest/RestHelper;->errorHandling(Ljava/lang/Exception;)I

    move-result v8

    goto :goto_0

    .line 908
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v2       #count:I
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/htc/store/module/rest/RestHelper;->types:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_3
    if-ge v5, v6, :cond_1

    aget-object v10, v0, v5

    .line 909
    .local v10, type:Ljava/lang/String;
    iget-object v12, p0, Lcom/htc/store/module/rest/RestHelper;->mRestServicesProxy:Lcom/htc/cscore/restapi/proxy/RestServicesProxy;

    invoke-virtual {v12, p1, v10}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->GetFriendRecommendedCommentsCount(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    add-int/2addr v1, v12

    .line 910
    iget-object v12, p0, Lcom/htc/store/module/rest/RestHelper;->mRestServicesProxy:Lcom/htc/cscore/restapi/proxy/RestServicesProxy;

    invoke-virtual {v12, p1, v10}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->GetFriendRecommendedLikesCount(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lcom/htc/cscore/restapi/exceptions/CSException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v12

    add-int/2addr v7, v12

    .line 908
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 913
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v5           #i$:I
    .end local v6           #len$:I
    .end local v10           #type:Ljava/lang/String;
    :cond_1
    const/16 v8, 0xc8

    .line 917
    :goto_4
    const/16 v12, 0x1f4

    if-eq v8, v12, :cond_3

    .line 921
    :cond_2
    const/4 v12, 0x3

    new-array v12, v12, [I

    const/4 v13, 0x0

    aput v8, v12, v13

    const/4 v13, 0x1

    aput v1, v12, v13

    const/4 v13, 0x2

    aput v7, v12, v13

    return-object v12

    .line 914
    :catch_1
    move-exception v3

    .line 915
    .local v3, e:Lcom/htc/cscore/restapi/exceptions/CSException;
    invoke-direct {p0, v3}, Lcom/htc/store/module/rest/RestHelper;->errorHandling(Ljava/lang/Exception;)I

    move-result v8

    goto :goto_4

    .line 891
    .end local v3           #e:Lcom/htc/cscore/restapi/exceptions/CSException;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public getItemList(JLjava/lang/String;II)Lcom/htc/store/module/rest/RestResult;
    .locals 7
    .parameter "categoryId"
    .parameter "contentPath"
    .parameter "startIndex"
    .parameter "pageSize"

    .prologue
    .line 309
    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/htc/store/module/rest/RestHelper;->getItemList(JLjava/lang/String;IIZ)Lcom/htc/store/module/rest/RestResult;

    move-result-object v0

    return-object v0
.end method

.method public getItemList(JLjava/lang/String;IIZ)Lcom/htc/store/module/rest/RestResult;
    .locals 15
    .parameter "categoryId"
    .parameter "contentPath"
    .parameter "startIndex"
    .parameter "pageSize"
    .parameter "isOperator"

    .prologue
    .line 290
    new-instance v11, Lcom/htc/store/module/rest/RestResult;

    invoke-direct {v11}, Lcom/htc/store/module/rest/RestResult;-><init>()V

    .line 291
    .local v11, result:Lcom/htc/store/module/rest/RestResult;
    sget-object v3, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "restHelper call itemListCall"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 293
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 294
    .local v8, curmill:J
    new-instance v2, Lcom/htc/store/module/json/ItemListFeed;

    iget-object v3, p0, Lcom/htc/store/module/rest/RestHelper;->mContext:Landroid/content/Context;

    move-wide/from16 v4, p1

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/htc/store/module/json/ItemListFeed;-><init>(Landroid/content/Context;JII)V

    .line 295
    .local v2, itemList:Lcom/htc/store/module/json/ItemListFeed;
    iget-object v3, p0, Lcom/htc/store/module/rest/RestHelper;->mCSRestProxy:Lcom/htc/cslib/restHelper/CSRestProxy;

    move-object/from16 v0, p3

    move/from16 v1, p6

    invoke-virtual {v2, v0, v1}, Lcom/htc/store/module/json/ItemListFeed;->getUrl(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lcom/htc/cslib/restHelper/CSRestProxy;->httpGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 296
    .local v12, returnedString:Ljava/lang/String;
    sget-object v3, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "itemlist returned output : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->critical(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    sget-object v3, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ItemList Call : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long/2addr v13, v8

    invoke-virtual {v6, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 298
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/htc/store/module/json/ItemListFeed;->parse(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v11, Lcom/htc/store/module/rest/RestResult;->mResultList:Ljava/util/ArrayList;

    .line 299
    invoke-virtual {v2}, Lcom/htc/store/module/json/ItemListFeed;->getTotalCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v11, Lcom/htc/store/module/rest/RestResult;->mAdditional1:Ljava/lang/Object;

    .line 300
    const/16 v3, 0xc8

    iput v3, v11, Lcom/htc/store/module/rest/RestResult;->mResultCode:I

    .line 301
    sget-object v3, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "restHelper call itemListCall success"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    .end local v2           #itemList:Lcom/htc/store/module/json/ItemListFeed;
    .end local v8           #curmill:J
    .end local v12           #returnedString:Ljava/lang/String;
    :goto_0
    return-object v11

    .line 302
    :catch_0
    move-exception v10

    .line 303
    .local v10, e:Ljava/lang/Exception;
    invoke-direct {p0, v10}, Lcom/htc/store/module/rest/RestHelper;->errorHandling(Ljava/lang/Exception;)I

    move-result v3

    iput v3, v11, Lcom/htc/store/module/rest/RestResult;->mResultCode:I

    goto :goto_0
.end method

.method public getMarkedItemsList()Lcom/htc/store/module/rest/RestResult;
    .locals 12

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 351
    new-instance v4, Lcom/htc/store/module/rest/RestResult;

    invoke-direct {v4}, Lcom/htc/store/module/rest/RestResult;-><init>()V

    .line 352
    .local v4, result:Lcom/htc/store/module/rest/RestResult;
    sget-object v6, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "restHelper call markedItemsListCall"

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 354
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 355
    .local v0, curmill:J
    new-instance v3, Lcom/htc/store/module/json/MarkedItemListFeed;

    iget-object v6, p0, Lcom/htc/store/module/rest/RestHelper;->mContext:Landroid/content/Context;

    invoke-direct {v3, v6}, Lcom/htc/store/module/json/MarkedItemListFeed;-><init>(Landroid/content/Context;)V

    .line 356
    .local v3, markedItem:Lcom/htc/store/module/json/MarkedItemListFeed;
    iget-object v6, p0, Lcom/htc/store/module/rest/RestHelper;->mCSRestProxy:Lcom/htc/cslib/restHelper/CSRestProxy;

    const-string v7, ""

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Lcom/htc/store/module/json/MarkedItemListFeed;->getUrl(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Lcom/htc/cslib/restHelper/CSRestProxy;->httpGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 357
    .local v5, returnedString:Ljava/lang/String;
    sget-object v6, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "marked item returned output : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/store/util/LogUtils;->critical(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    sget-object v6, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MarkedItemList Call : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v0

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ms"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 359
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Lcom/htc/store/module/json/MarkedItemListFeed;->parse(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, v4, Lcom/htc/store/module/rest/RestResult;->mResultList:Ljava/util/ArrayList;

    .line 360
    const/16 v6, 0xc8

    iput v6, v4, Lcom/htc/store/module/rest/RestResult;->mResultCode:I

    .line 361
    sget-object v6, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "restHelper call markedItemsListCall success"

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    .end local v0           #curmill:J
    .end local v3           #markedItem:Lcom/htc/store/module/json/MarkedItemListFeed;
    .end local v5           #returnedString:Ljava/lang/String;
    :goto_0
    return-object v4

    .line 362
    :catch_0
    move-exception v2

    .line 363
    .local v2, e:Ljava/lang/Exception;
    invoke-direct {p0, v2}, Lcom/htc/store/module/rest/RestHelper;->errorHandling(Ljava/lang/Exception;)I

    move-result v6

    iput v6, v4, Lcom/htc/store/module/rest/RestResult;->mResultCode:I

    goto :goto_0
.end method

.method public getMore(Ljava/lang/String;)Lcom/htc/store/module/rest/RestResult;
    .locals 12
    .parameter "key"

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 489
    new-instance v4, Lcom/htc/store/module/rest/RestResult;

    invoke-direct {v4}, Lcom/htc/store/module/rest/RestResult;-><init>()V

    .line 490
    .local v4, result:Lcom/htc/store/module/rest/RestResult;
    sget-object v6, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "restHelper call getMore call"

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 492
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 493
    .local v0, curmill:J
    new-instance v3, Lcom/htc/store/module/json/GetMoreFeed;

    iget-object v6, p0, Lcom/htc/store/module/rest/RestHelper;->mContext:Landroid/content/Context;

    invoke-direct {v3, v6, p1}, Lcom/htc/store/module/json/GetMoreFeed;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 494
    .local v3, getMore:Lcom/htc/store/module/json/GetMoreFeed;
    iget-object v6, p0, Lcom/htc/store/module/rest/RestHelper;->mCSRestProxy:Lcom/htc/cslib/restHelper/CSRestProxy;

    const-string v7, ""

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Lcom/htc/store/module/json/GetMoreFeed;->getUrl(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Lcom/htc/cslib/restHelper/CSRestProxy;->httpGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 495
    .local v5, returnedString:Ljava/lang/String;
    sget-object v6, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getMore returned output : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/store/util/LogUtils;->critical(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    sget-object v6, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "GetMore Call : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v0

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ms"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 498
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Lcom/htc/store/module/json/GetMoreFeed;->parse(Lorg/json/JSONObject;)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v4, Lcom/htc/store/module/rest/RestResult;->mResultData:Ljava/lang/Object;

    .line 500
    invoke-virtual {v3}, Lcom/htc/store/module/json/GetMoreFeed;->getId()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/htc/store/module/rest/RestResult;->mAdditional1:Ljava/lang/Object;

    .line 502
    invoke-virtual {v3}, Lcom/htc/store/module/json/GetMoreFeed;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/htc/store/module/rest/RestResult;->mAdditional2:Ljava/lang/Object;

    .line 504
    invoke-virtual {v3}, Lcom/htc/store/module/json/GetMoreFeed;->getPageType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v4, Lcom/htc/store/module/rest/RestResult;->mAdditional3:Ljava/lang/Object;

    .line 505
    const/16 v6, 0xc8

    iput v6, v4, Lcom/htc/store/module/rest/RestResult;->mResultCode:I

    .line 506
    sget-object v6, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "restHelper call getMore success"

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 510
    .end local v0           #curmill:J
    .end local v3           #getMore:Lcom/htc/store/module/json/GetMoreFeed;
    .end local v5           #returnedString:Ljava/lang/String;
    :goto_0
    return-object v4

    .line 507
    :catch_0
    move-exception v2

    .line 508
    .local v2, e:Ljava/lang/Exception;
    invoke-direct {p0, v2}, Lcom/htc/store/module/rest/RestHelper;->errorHandling(Ljava/lang/Exception;)I

    move-result v6

    iput v6, v4, Lcom/htc/store/module/rest/RestResult;->mResultCode:I

    goto :goto_0
.end method

.method public getNavList(JLjava/lang/String;)Lcom/htc/store/module/rest/RestResult;
    .locals 1
    .parameter "frameID"
    .parameter "contentPath"

    .prologue
    .line 245
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/htc/store/module/rest/RestHelper;->getNavList(JLjava/lang/String;Z)Lcom/htc/store/module/rest/RestResult;

    move-result-object v0

    return-object v0
.end method

.method public getNavList(JLjava/lang/String;Z)Lcom/htc/store/module/rest/RestResult;
    .locals 14
    .parameter "frameID"
    .parameter "contentPath"
    .parameter "isOperator"

    .prologue
    .line 227
    new-instance v6, Lcom/htc/store/module/rest/RestResult;

    invoke-direct {v6}, Lcom/htc/store/module/rest/RestResult;-><init>()V

    .line 228
    .local v6, result:Lcom/htc/store/module/rest/RestResult;
    sget-object v8, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "restHelper call navListCall"

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 230
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 231
    .local v2, curmill:J
    new-instance v5, Lcom/htc/store/module/json/NavlistFeed;

    iget-object v8, p0, Lcom/htc/store/module/rest/RestHelper;->mContext:Landroid/content/Context;

    move-wide v0, p1

    invoke-direct {v5, v8, v0, v1}, Lcom/htc/store/module/json/NavlistFeed;-><init>(Landroid/content/Context;J)V

    .line 232
    .local v5, navlist:Lcom/htc/store/module/json/NavlistFeed;
    iget-object v8, p0, Lcom/htc/store/module/rest/RestHelper;->mCSRestProxy:Lcom/htc/cslib/restHelper/CSRestProxy;

    move-object/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v5, v0, v1}, Lcom/htc/store/module/json/NavlistFeed;->getUrl(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Lcom/htc/cslib/restHelper/CSRestProxy;->httpGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 233
    .local v7, returnedString:Ljava/lang/String;
    sget-object v8, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "navlist returned output : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/store/util/LogUtils;->critical(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    sget-object v8, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Navi Call : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v2

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ms"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 235
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Lcom/htc/store/module/json/NavlistFeed;->parse(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v8

    iput-object v8, v6, Lcom/htc/store/module/rest/RestResult;->mResultList:Ljava/util/ArrayList;

    .line 236
    const/16 v8, 0xc8

    iput v8, v6, Lcom/htc/store/module/rest/RestResult;->mResultCode:I

    .line 237
    sget-object v8, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "restHelper call navListCall success"

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    .end local v2           #curmill:J
    .end local v5           #navlist:Lcom/htc/store/module/json/NavlistFeed;
    .end local v7           #returnedString:Ljava/lang/String;
    :goto_0
    return-object v6

    .line 238
    :catch_0
    move-exception v4

    .line 239
    .local v4, e:Ljava/lang/Exception;
    invoke-direct {p0, v4}, Lcom/htc/store/module/rest/RestHelper;->errorHandling(Ljava/lang/Exception;)I

    move-result v8

    iput v8, v6, Lcom/htc/store/module/rest/RestResult;->mResultCode:I

    goto :goto_0
.end method

.method public getOrderedHistoryList(II)Lcom/htc/store/module/rest/RestResult;
    .locals 12
    .parameter "startIndex"
    .parameter "pageSize"

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 401
    new-instance v4, Lcom/htc/store/module/rest/RestResult;

    invoke-direct {v4}, Lcom/htc/store/module/rest/RestResult;-><init>()V

    .line 402
    .local v4, result:Lcom/htc/store/module/rest/RestResult;
    sget-object v6, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "restHelper call orderedHistoryCall"

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 404
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 405
    .local v0, curmill:J
    new-instance v3, Lcom/htc/store/module/json/OrderHistoryFeed;

    iget-object v6, p0, Lcom/htc/store/module/rest/RestHelper;->mContext:Landroid/content/Context;

    invoke-direct {v3, v6, p1, p2}, Lcom/htc/store/module/json/OrderHistoryFeed;-><init>(Landroid/content/Context;II)V

    .line 406
    .local v3, orderedHistory:Lcom/htc/store/module/json/OrderHistoryFeed;
    iget-object v6, p0, Lcom/htc/store/module/rest/RestHelper;->mCSRestProxy:Lcom/htc/cslib/restHelper/CSRestProxy;

    const-string v7, ""

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Lcom/htc/store/module/json/OrderHistoryFeed;->getUrl(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Lcom/htc/cslib/restHelper/CSRestProxy;->httpGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 407
    .local v5, returnedString:Ljava/lang/String;
    sget-object v6, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "orderhistory returned output : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/store/util/LogUtils;->critical(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    sget-object v6, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "OrderedHistory Call : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v0

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ms"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 409
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Lcom/htc/store/module/json/OrderHistoryFeed;->parse(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, v4, Lcom/htc/store/module/rest/RestResult;->mResultList:Ljava/util/ArrayList;

    .line 410
    invoke-virtual {v3}, Lcom/htc/store/module/json/OrderHistoryFeed;->getTotalCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v4, Lcom/htc/store/module/rest/RestResult;->mAdditional1:Ljava/lang/Object;

    .line 411
    invoke-virtual {v3}, Lcom/htc/store/module/json/OrderHistoryFeed;->getOldestTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v4, Lcom/htc/store/module/rest/RestResult;->mAdditional2:Ljava/lang/Object;

    .line 412
    invoke-virtual {v3}, Lcom/htc/store/module/json/OrderHistoryFeed;->getLatestTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v4, Lcom/htc/store/module/rest/RestResult;->mAdditional3:Ljava/lang/Object;

    .line 413
    const/16 v6, 0xc8

    iput v6, v4, Lcom/htc/store/module/rest/RestResult;->mResultCode:I

    .line 414
    sget-object v6, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "restHelper call orderedHistoryCall success"

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    .end local v0           #curmill:J
    .end local v3           #orderedHistory:Lcom/htc/store/module/json/OrderHistoryFeed;
    .end local v5           #returnedString:Ljava/lang/String;
    :goto_0
    return-object v4

    .line 415
    :catch_0
    move-exception v2

    .line 416
    .local v2, e:Ljava/lang/Exception;
    invoke-direct {p0, v2}, Lcom/htc/store/module/rest/RestHelper;->errorHandling(Ljava/lang/Exception;)I

    move-result v6

    iput v6, v4, Lcom/htc/store/module/rest/RestResult;->mResultCode:I

    goto :goto_0
.end method

.method public getPromoContents(JLjava/lang/String;)Lcom/htc/store/module/rest/RestResult;
    .locals 1
    .parameter "categoryId"
    .parameter "contentPath"

    .prologue
    .line 183
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/htc/store/module/rest/RestHelper;->getPromoContents(JLjava/lang/String;Z)Lcom/htc/store/module/rest/RestResult;

    move-result-object v0

    return-object v0
.end method

.method public getPromoContents(JLjava/lang/String;Z)Lcom/htc/store/module/rest/RestResult;
    .locals 14
    .parameter "categoryId"
    .parameter "contentPath"
    .parameter "isOperator"

    .prologue
    .line 165
    new-instance v6, Lcom/htc/store/module/rest/RestResult;

    invoke-direct {v6}, Lcom/htc/store/module/rest/RestResult;-><init>()V

    .line 166
    .local v6, result:Lcom/htc/store/module/rest/RestResult;
    sget-object v8, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "restHelper call promoCall"

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 169
    .local v2, curmill:J
    new-instance v5, Lcom/htc/store/module/json/PromoFeed;

    iget-object v8, p0, Lcom/htc/store/module/rest/RestHelper;->mContext:Landroid/content/Context;

    move-wide v0, p1

    invoke-direct {v5, v8, v0, v1}, Lcom/htc/store/module/json/PromoFeed;-><init>(Landroid/content/Context;J)V

    .line 170
    .local v5, promo:Lcom/htc/store/module/json/PromoFeed;
    iget-object v8, p0, Lcom/htc/store/module/rest/RestHelper;->mCSRestProxy:Lcom/htc/cslib/restHelper/CSRestProxy;

    move-object/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v5, v0, v1}, Lcom/htc/store/module/json/PromoFeed;->getUrl(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Lcom/htc/cslib/restHelper/CSRestProxy;->httpGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 171
    .local v7, returnedString:Ljava/lang/String;
    sget-object v8, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "promo returned output : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/store/util/LogUtils;->critical(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    sget-object v8, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Promo Call : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v2

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ms"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Lcom/htc/store/module/json/PromoFeed;->parse(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v8

    iput-object v8, v6, Lcom/htc/store/module/rest/RestResult;->mResultList:Ljava/util/ArrayList;

    .line 174
    const/16 v8, 0xc8

    iput v8, v6, Lcom/htc/store/module/rest/RestResult;->mResultCode:I

    .line 175
    sget-object v8, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "restHelper call promoCall success"

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    .end local v2           #curmill:J
    .end local v5           #promo:Lcom/htc/store/module/json/PromoFeed;
    .end local v7           #returnedString:Ljava/lang/String;
    :goto_0
    return-object v6

    .line 176
    :catch_0
    move-exception v4

    .line 177
    .local v4, e:Ljava/lang/Exception;
    invoke-direct {p0, v4}, Lcom/htc/store/module/rest/RestHelper;->errorHandling(Ljava/lang/Exception;)I

    move-result v8

    iput v8, v6, Lcom/htc/store/module/rest/RestResult;->mResultCode:I

    goto :goto_0
.end method

.method public getSimilarItem(Ljava/lang/String;)Lcom/htc/store/module/rest/RestResult;
    .locals 1
    .parameter "onlienItemId"

    .prologue
    .line 480
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/store/module/rest/RestHelper;->getSimilarItem(Ljava/lang/String;Z)Lcom/htc/store/module/rest/RestResult;

    move-result-object v0

    return-object v0
.end method

.method public getSimilarItem(Ljava/lang/String;Z)Lcom/htc/store/module/rest/RestResult;
    .locals 12
    .parameter "onlienItemId"
    .parameter "isOperator"

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 461
    new-instance v3, Lcom/htc/store/module/rest/RestResult;

    invoke-direct {v3}, Lcom/htc/store/module/rest/RestResult;-><init>()V

    .line 462
    .local v3, result:Lcom/htc/store/module/rest/RestResult;
    sget-object v6, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "restHelper call similarItemListCall"

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 464
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 465
    .local v0, curmill:J
    new-instance v5, Lcom/htc/store/module/json/SimilarItemFeed;

    iget-object v6, p0, Lcom/htc/store/module/rest/RestHelper;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, p1}, Lcom/htc/store/module/json/SimilarItemFeed;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 466
    .local v5, similarList:Lcom/htc/store/module/json/SimilarItemFeed;
    iget-object v6, p0, Lcom/htc/store/module/rest/RestHelper;->mCSRestProxy:Lcom/htc/cslib/restHelper/CSRestProxy;

    invoke-virtual {v5, p1, p2}, Lcom/htc/store/module/json/SimilarItemFeed;->getUrl(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Lcom/htc/cslib/restHelper/CSRestProxy;->httpGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 467
    .local v4, returnedString:Ljava/lang/String;
    sget-object v6, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "similarItem returned output : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/store/util/LogUtils;->critical(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    sget-object v6, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SimilarItem Call : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v0

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ms"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 469
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/htc/store/module/json/SimilarItemFeed;->parse(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, v3, Lcom/htc/store/module/rest/RestResult;->mResultList:Ljava/util/ArrayList;

    .line 470
    invoke-virtual {v5}, Lcom/htc/store/module/json/SimilarItemFeed;->getTotalCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v3, Lcom/htc/store/module/rest/RestResult;->mAdditional1:Ljava/lang/Object;

    .line 471
    const/16 v6, 0xc8

    iput v6, v3, Lcom/htc/store/module/rest/RestResult;->mResultCode:I

    .line 472
    sget-object v6, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "restHelper call similarItemListCall success"

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 476
    .end local v0           #curmill:J
    .end local v4           #returnedString:Ljava/lang/String;
    .end local v5           #similarList:Lcom/htc/store/module/json/SimilarItemFeed;
    :goto_0
    return-object v3

    .line 473
    :catch_0
    move-exception v2

    .line 474
    .local v2, e:Ljava/lang/Exception;
    invoke-direct {p0, v2}, Lcom/htc/store/module/rest/RestHelper;->errorHandling(Ljava/lang/Exception;)I

    move-result v6

    iput v6, v3, Lcom/htc/store/module/rest/RestResult;->mResultCode:I

    goto :goto_0
.end method

.method public getSpecificFriendComment(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;)I
    .locals 19
    .parameter
    .parameter "friendUUID"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/provider/table/Comment;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1013
    .local p1, appIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p3, comments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/provider/table/Comment;>;"
    const/16 v15, 0x190

    .line 1015
    .local v15, resultCode:I
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/htc/store/module/rest/RestHelper;->requestRestServiceProxy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1020
    :goto_0
    const/4 v11, 0x0

    .local v11, count:I
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/store/module/rest/RestHelper;->MAX_RETRY_COUNT:I

    if-ge v11, v2, :cond_5

    .line 1021
    if-nez p3, :cond_0

    new-instance p3, Ljava/util/ArrayList;

    .end local p3           #comments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/provider/table/Comment;>;"
    invoke-direct/range {p3 .. p3}, Ljava/util/ArrayList;-><init>()V

    .line 1023
    .restart local p3       #comments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/provider/table/Comment;>;"
    :cond_0
    :try_start_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1024
    .local v8, appStatus:Ljava/util/List;,"Ljava/util/List<Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationStatus;>;"
    sget-object v2, Lcom/htc/store/module/rest/RestConstant;->MY_UUID:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1025
    new-instance v9, Lcom/htc/cscore/restapi/json/SearchResults;

    invoke-direct {v9}, Lcom/htc/cscore/restapi/json/SearchResults;-><init>()V

    .line 1027
    .local v9, appStatus_my:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationStatus;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/store/module/rest/RestHelper;->mRestServicesProxy:Lcom/htc/cscore/restapi/proxy/RestServicesProxy;

    const-string v3, ""

    const-string v4, "TimeStamp"

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/store/module/rest/RestHelper;->PAGE_SIZE:I

    invoke-virtual/range {v2 .. v7}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->GetMyCommentsAndLikes(Ljava/lang/String;Ljava/lang/String;ZII)Lcom/htc/cscore/restapi/json/SearchResults;

    move-result-object v9

    .line 1029
    iget-object v2, v9, Lcom/htc/cscore/restapi/json/SearchResults;->Results:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1043
    .end local v9           #appStatus_my:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationStatus;>;"
    :cond_1
    sget-object v2, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "request GetFriendRecommendedLikesComments()"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1044
    if-eqz v8, :cond_8

    .line 1045
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationStatus;

    .line 1046
    .local v16, status:Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationStatus;
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationStatus;->AppId:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1061
    sget-boolean v2, Lcom/htc/store/util/LogUtils;->sLogFlagNormal:Z

    if-eqz v2, :cond_2

    .line 1062
    sget-object v2, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "package="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationStatus;->AppId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1063
    sget-object v2, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "comment="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationStatus;->Comment:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1064
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationStatus;->CommentDate:Ljava/util/Date;

    if-eqz v2, :cond_3

    .line 1065
    sget-object v2, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "commentDate="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationStatus;->CommentDate:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1067
    :cond_3
    sget-object v3, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "liked="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationStatus;->Liked:Ljava/lang/Boolean;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    const-string v2, "true"

    :goto_3
    aput-object v2, v4, v5

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1068
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationStatus;->LikedDate:Ljava/util/Date;

    if-eqz v2, :cond_4

    .line 1069
    sget-object v2, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "likedDate="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationStatus;->LikedDate:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1071
    :cond_4
    sget-object v2, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "friendID="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationStatus;->FriendRequestId:Ljava/util/UUID;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1072
    sget-object v2, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "---------------------------------------------"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/htc/cscore/restapi/exceptions/CSException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 1077
    .end local v8           #appStatus:Ljava/util/List;,"Ljava/util/List<Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationStatus;>;"
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v16           #status:Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationStatus;
    :catch_0
    move-exception v12

    .line 1078
    .local v12, e:Lcom/htc/cscore/restapi/exceptions/CSException;
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/htc/store/module/rest/RestHelper;->errorHandling(Ljava/lang/Exception;)I

    move-result v15

    .line 1080
    .end local v12           #e:Lcom/htc/cscore/restapi/exceptions/CSException;
    :goto_4
    const/16 v2, 0x1f4

    if-eq v15, v2, :cond_9

    .line 1084
    :cond_5
    return v15

    .line 1016
    .end local v11           #count:I
    :catch_1
    move-exception v12

    .line 1017
    .local v12, e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/htc/store/module/rest/RestHelper;->errorHandling(Ljava/lang/Exception;)I

    move-result v15

    goto/16 :goto_0

    .line 1031
    .end local v12           #e:Ljava/lang/Exception;
    .restart local v8       #appStatus:Ljava/util/List;,"Ljava/util/List<Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationStatus;>;"
    .restart local v11       #count:I
    :cond_6
    :try_start_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/store/module/rest/RestHelper;->types:[Ljava/lang/String;

    .local v10, arr$:[Ljava/lang/String;
    array-length v14, v10

    .local v14, len$:I
    const/4 v13, 0x0

    .local v13, i$:I
    :goto_5
    if-ge v13, v14, :cond_1

    aget-object v18, v10, v13

    .line 1034
    .local v18, type:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/store/module/rest/RestHelper;->mRestServicesProxy:Lcom/htc/cscore/restapi/proxy/RestServicesProxy;

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->GetFriendRecommendedLikesComments(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v17

    .line 1035
    .local v17, tempStatus:Ljava/util/List;,"Ljava/util/List<Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationStatus;>;"
    move-object/from16 v0, v17

    invoke-interface {v8, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1031
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 1067
    .end local v10           #arr$:[Ljava/lang/String;
    .end local v14           #len$:I
    .end local v17           #tempStatus:Ljava/util/List;,"Ljava/util/List<Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationStatus;>;"
    .end local v18           #type:Ljava/lang/String;
    .local v13, i$:Ljava/util/Iterator;
    .restart local v16       #status:Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationStatus;
    :cond_7
    const-string v2, "false"
    :try_end_2
    .catch Lcom/htc/cscore/restapi/exceptions/CSException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    .line 1076
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v16           #status:Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationStatus;
    :cond_8
    const/16 v15, 0xc8

    goto :goto_4

    .line 1020
    .end local v8           #appStatus:Ljava/util/List;,"Ljava/util/List<Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationStatus;>;"
    :cond_9
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1
.end method

.method public getSubcategoryList(JLjava/lang/String;)Lcom/htc/store/module/rest/RestResult;
    .locals 1
    .parameter "categoryId"
    .parameter "contentPath"

    .prologue
    .line 275
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/htc/store/module/rest/RestHelper;->getSubcategoryList(JLjava/lang/String;Z)Lcom/htc/store/module/rest/RestResult;

    move-result-object v0

    return-object v0
.end method

.method public getSubcategoryList(JLjava/lang/String;Z)Lcom/htc/store/module/rest/RestResult;
    .locals 14
    .parameter "categoryId"
    .parameter "contentPath"
    .parameter "isOperator"

    .prologue
    .line 257
    new-instance v6, Lcom/htc/store/module/rest/RestResult;

    invoke-direct {v6}, Lcom/htc/store/module/rest/RestResult;-><init>()V

    .line 258
    .local v6, result:Lcom/htc/store/module/rest/RestResult;
    sget-object v8, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "restHelper call categoryListCall"

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 260
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 261
    .local v3, curmill:J
    new-instance v2, Lcom/htc/store/module/json/CategoryListFeed;

    iget-object v8, p0, Lcom/htc/store/module/rest/RestHelper;->mContext:Landroid/content/Context;

    move-wide v0, p1

    invoke-direct {v2, v8, v0, v1}, Lcom/htc/store/module/json/CategoryListFeed;-><init>(Landroid/content/Context;J)V

    .line 262
    .local v2, category:Lcom/htc/store/module/json/CategoryListFeed;
    iget-object v8, p0, Lcom/htc/store/module/rest/RestHelper;->mCSRestProxy:Lcom/htc/cslib/restHelper/CSRestProxy;

    move-object/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v2, v0, v1}, Lcom/htc/store/module/json/CategoryListFeed;->getUrl(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Lcom/htc/cslib/restHelper/CSRestProxy;->httpGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 263
    .local v7, returnedString:Ljava/lang/String;
    sget-object v8, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "category returned output : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/store/util/LogUtils;->critical(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    sget-object v8, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SubCategory Call : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v3

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ms"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 265
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Lcom/htc/store/module/json/CategoryListFeed;->parse(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v8

    iput-object v8, v6, Lcom/htc/store/module/rest/RestResult;->mResultList:Ljava/util/ArrayList;

    .line 266
    const/16 v8, 0xc8

    iput v8, v6, Lcom/htc/store/module/rest/RestResult;->mResultCode:I

    .line 267
    sget-object v8, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "restHelper call categoryListCall success"

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    .end local v2           #category:Lcom/htc/store/module/json/CategoryListFeed;
    .end local v3           #curmill:J
    .end local v7           #returnedString:Ljava/lang/String;
    :goto_0
    return-object v6

    .line 268
    :catch_0
    move-exception v5

    .line 269
    .local v5, e:Ljava/lang/Exception;
    invoke-direct {p0, v5}, Lcom/htc/store/module/rest/RestHelper;->errorHandling(Ljava/lang/Exception;)I

    move-result v8

    iput v8, v6, Lcom/htc/store/module/rest/RestResult;->mResultCode:I

    goto :goto_0
.end method

.method public markAnItem(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/store/module/rest/RestResult;
    .locals 12
    .parameter "productId"
    .parameter "skuId"

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 537
    new-instance v4, Lcom/htc/store/module/rest/RestResult;

    invoke-direct {v4}, Lcom/htc/store/module/rest/RestResult;-><init>()V

    .line 538
    .local v4, result:Lcom/htc/store/module/rest/RestResult;
    sget-object v6, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "restHelper call markAnItem call"

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 540
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 541
    .local v0, curmill:J
    new-instance v3, Lcom/htc/store/module/json/MarkAnItemFeed;

    iget-object v6, p0, Lcom/htc/store/module/rest/RestHelper;->mContext:Landroid/content/Context;

    invoke-direct {v3, v6}, Lcom/htc/store/module/json/MarkAnItemFeed;-><init>(Landroid/content/Context;)V

    .line 542
    .local v3, markAnItem:Lcom/htc/store/module/json/MarkAnItemFeed;
    iget-object v6, p0, Lcom/htc/store/module/rest/RestHelper;->mCSRestProxy:Lcom/htc/cslib/restHelper/CSRestProxy;

    const-string v7, ""

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Lcom/htc/store/module/json/MarkAnItemFeed;->getUrl(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, p1, p2}, Lcom/htc/store/module/json/MarkAnItemFeed;->getPayLoad(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/htc/cslib/restHelper/CSRestProxy;->httpPost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 543
    .local v5, returnedString:Ljava/lang/String;
    sget-object v6, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3, p1, p2}, Lcom/htc/store/module/json/MarkAnItemFeed;->getPayLoad(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 544
    sget-object v6, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getMore returned output : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/store/util/LogUtils;->critical(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    sget-object v6, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MarkAnItem Call : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v0

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ms"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 546
    const/16 v6, 0xc8

    iput v6, v4, Lcom/htc/store/module/rest/RestResult;->mResultCode:I

    .line 547
    sget-object v6, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "restHelper call markAnItem success"

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 551
    .end local v0           #curmill:J
    .end local v3           #markAnItem:Lcom/htc/store/module/json/MarkAnItemFeed;
    .end local v5           #returnedString:Ljava/lang/String;
    :goto_0
    return-object v4

    .line 548
    :catch_0
    move-exception v2

    .line 549
    .local v2, e:Ljava/lang/Exception;
    invoke-direct {p0, v2}, Lcom/htc/store/module/rest/RestHelper;->errorHandling(Ljava/lang/Exception;)I

    move-result v6

    iput v6, v4, Lcom/htc/store/module/rest/RestResult;->mResultCode:I

    goto :goto_0
.end method

.method public purchaseItem(Ljava/lang/String;Ljava/lang/String;I)Lcom/htc/store/module/rest/RestResult;
    .locals 12
    .parameter "productId"
    .parameter "skuId"
    .parameter "itemType"

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 428
    new-instance v4, Lcom/htc/store/module/rest/RestResult;

    invoke-direct {v4}, Lcom/htc/store/module/rest/RestResult;-><init>()V

    .line 429
    .local v4, result:Lcom/htc/store/module/rest/RestResult;
    sget-object v6, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "restHelper call purchaseItemCall"

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 431
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 432
    .local v0, curmill:J
    new-instance v3, Lcom/htc/store/module/json/PurchaseFeed;

    iget-object v6, p0, Lcom/htc/store/module/rest/RestHelper;->mContext:Landroid/content/Context;

    invoke-direct {v3, v6, p3}, Lcom/htc/store/module/json/PurchaseFeed;-><init>(Landroid/content/Context;I)V

    .line 433
    .local v3, purchase:Lcom/htc/store/module/json/PurchaseFeed;
    const-string v5, ""

    .line 434
    .local v5, returnedString:Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 435
    iget-object v6, p0, Lcom/htc/store/module/rest/RestHelper;->mCSRestProxy:Lcom/htc/cslib/restHelper/CSRestProxy;

    const-string v7, ""

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Lcom/htc/store/module/json/PurchaseFeed;->getUrl(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, p1, p2}, Lcom/htc/store/module/json/PurchaseFeed;->getPayload(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/htc/cslib/restHelper/CSRestProxy;->httpPost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 439
    :goto_0
    sget-object v6, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "purchase returned output : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/store/util/LogUtils;->critical(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    sget-object v6, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Purchase Call : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v0

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ms"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 442
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Lcom/htc/store/module/json/PurchaseFeed;->parse(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v6

    iput-object v6, v4, Lcom/htc/store/module/rest/RestResult;->mResultData:Ljava/lang/Object;

    .line 443
    invoke-virtual {v3}, Lcom/htc/store/module/json/PurchaseFeed;->getOrderId()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/htc/store/module/rest/RestResult;->mAdditional1:Ljava/lang/Object;

    .line 445
    invoke-virtual {v3}, Lcom/htc/store/module/json/PurchaseFeed;->getDownloadURL()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/htc/store/module/rest/RestResult;->mAdditional2:Ljava/lang/Object;

    .line 446
    const/16 v6, 0xc8

    iput v6, v4, Lcom/htc/store/module/rest/RestResult;->mResultCode:I

    .line 447
    sget-object v6, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "restHelper call purchaseItemCall success"

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 451
    .end local v0           #curmill:J
    .end local v3           #purchase:Lcom/htc/store/module/json/PurchaseFeed;
    .end local v5           #returnedString:Ljava/lang/String;
    :goto_1
    return-object v4

    .line 437
    .restart local v0       #curmill:J
    .restart local v3       #purchase:Lcom/htc/store/module/json/PurchaseFeed;
    .restart local v5       #returnedString:Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lcom/htc/store/module/rest/RestHelper;->mCSRestProxy:Lcom/htc/cslib/restHelper/CSRestProxy;

    const/4 v7, 0x0

    invoke-virtual {v3, p1, v7}, Lcom/htc/store/module/json/PurchaseFeed;->getUrl(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Lcom/htc/cslib/restHelper/CSRestProxy;->httpGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 448
    .end local v0           #curmill:J
    .end local v3           #purchase:Lcom/htc/store/module/json/PurchaseFeed;
    .end local v5           #returnedString:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 449
    .local v2, e:Ljava/lang/Exception;
    invoke-direct {p0, v2}, Lcom/htc/store/module/rest/RestHelper;->errorHandling(Ljava/lang/Exception;)I

    move-result v6

    iput v6, v4, Lcom/htc/store/module/rest/RestResult;->mResultCode:I

    goto :goto_1
.end method

.method public setupCall(Landroid/content/Context;)I
    .locals 12
    .parameter "context"

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 119
    const/4 v3, -0x1

    .line 120
    .local v3, result:I
    sget-object v6, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "restHelper call setupCall"

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 123
    .local v0, curmill:J
    new-instance v5, Lcom/htc/store/module/json/SetupFeed;

    iget-object v6, p0, Lcom/htc/store/module/rest/RestHelper;->mHandler:Landroid/os/Handler;

    invoke-direct {v5, p1, v6}, Lcom/htc/store/module/json/SetupFeed;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 124
    .local v5, setup:Lcom/htc/store/module/json/SetupFeed;
    iget-object v6, p0, Lcom/htc/store/module/rest/RestHelper;->mCSRestProxy:Lcom/htc/cslib/restHelper/CSRestProxy;

    const-string v7, ""

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Lcom/htc/store/module/json/SetupFeed;->getUrl(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Lcom/htc/cslib/restHelper/CSRestProxy;->httpGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 125
    .local v4, returnedString:Ljava/lang/String;
    sget-object v6, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setup returned output : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/store/util/LogUtils;->critical(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    sget-object v6, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Setup Call : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v0

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ms"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    iget-object v6, p0, Lcom/htc/store/module/rest/RestHelper;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Lcom/htc/store/module/json/SetupFeed;->parse(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/store/provider/AccessHelper;->addCarouselItems(Ljava/util/ArrayList;)I

    .line 128
    const/16 v3, 0xc8

    .line 129
    sget-object v6, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "restHelper call setupCall success"

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .end local v0           #curmill:J
    .end local v4           #returnedString:Ljava/lang/String;
    .end local v5           #setup:Lcom/htc/store/module/json/SetupFeed;
    :goto_0
    return v3

    .line 130
    :catch_0
    move-exception v2

    .line 131
    .local v2, e:Ljava/lang/Exception;
    invoke-direct {p0, v2}, Lcom/htc/store/module/rest/RestHelper;->errorHandling(Ljava/lang/Exception;)I

    move-result v3

    goto :goto_0
.end method

.method public setupCall(Landroid/content/Context;Landroid/content/Context;)I
    .locals 12
    .parameter "csContext"
    .parameter "storeContext"

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 137
    const/4 v3, -0x1

    .line 138
    .local v3, result:I
    sget-object v6, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "restHelper call setupCall"

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 141
    .local v0, curmill:J
    new-instance v5, Lcom/htc/store/module/json/SetupFeed;

    iget-object v6, p0, Lcom/htc/store/module/rest/RestHelper;->mHandler:Landroid/os/Handler;

    invoke-direct {v5, p1, p2, v6}, Lcom/htc/store/module/json/SetupFeed;-><init>(Landroid/content/Context;Landroid/content/Context;Landroid/os/Handler;)V

    .line 142
    .local v5, setup:Lcom/htc/store/module/json/SetupFeed;
    iget-object v6, p0, Lcom/htc/store/module/rest/RestHelper;->mCSRestProxy:Lcom/htc/cslib/restHelper/CSRestProxy;

    const-string v7, ""

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Lcom/htc/store/module/json/SetupFeed;->getUrl(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Lcom/htc/cslib/restHelper/CSRestProxy;->httpGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 143
    .local v4, returnedString:Ljava/lang/String;
    sget-object v6, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setup returned output : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/store/util/LogUtils;->critical(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    sget-object v6, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Setup Call : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v0

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ms"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    iget-object v6, p0, Lcom/htc/store/module/rest/RestHelper;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Lcom/htc/store/module/json/SetupFeed;->parse(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/store/provider/AccessHelper;->addCarouselItems(Ljava/util/ArrayList;)I

    .line 146
    const/16 v3, 0xc8

    .line 147
    sget-object v6, Lcom/htc/store/module/rest/RestHelper;->TAG:Ljava/lang/String;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "restHelper call setupCall success"

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .end local v0           #curmill:J
    .end local v4           #returnedString:Ljava/lang/String;
    .end local v5           #setup:Lcom/htc/store/module/json/SetupFeed;
    :goto_0
    return v3

    .line 148
    :catch_0
    move-exception v2

    .line 149
    .local v2, e:Ljava/lang/Exception;
    invoke-direct {p0, v2}, Lcom/htc/store/module/rest/RestHelper;->errorHandling(Ljava/lang/Exception;)I

    move-result v3

    goto :goto_0
.end method
