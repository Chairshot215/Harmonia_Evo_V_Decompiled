.class public Lcom/htc/home/personalize/storedatamanager/CSHelper;
.super Ljava/lang/Object;
.source "CSHelper.java"


# static fields
.field private static final AND:Ljava/lang/String; = "&"

.field private static final GETMORE_SCENE:Ljava/lang/String; = "/Scene"

.field private static final GETMORE_SKIN:Ljava/lang/String; = "/Skin"

.field private static final GETMORE_WALLPAPER:Ljava/lang/String; = "/Wallpaper"

.field private static final LOGV:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "HomePersonalize CSHelper"

.field private static final NA:Ljava/lang/String; = ""

.field private static final PARAM_IDX:Ljava/lang/String; = "startIndex="

.field private static final PARAM_SIZE:Ljava/lang/String; = "pageSize="

.field private static final QUESTION_MARK:Ljava/lang/String; = "?"

.field private static csrest:Lcom/htc/cslib/restHelper/CSRestProxy;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/home/personalize/storedatamanager/CSHelper;->csrest:Lcom/htc/cslib/restHelper/CSRestProxy;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3
    .parameter "context"
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/home/personalize/storedatamanager/CSHelper;->mContext:Landroid/content/Context;

    .line 30
    iput-object p1, p0, Lcom/htc/home/personalize/storedatamanager/CSHelper;->mContext:Landroid/content/Context;

    .line 32
    new-instance v0, Lcom/htc/cslib/restHelper/CSRestProxy;

    iget-object v1, p0, Lcom/htc/home/personalize/storedatamanager/CSHelper;->mContext:Landroid/content/Context;

    const-string v2, "stores"

    invoke-direct {v0, v1, p2, v2}, Lcom/htc/cslib/restHelper/CSRestProxy;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    sput-object v0, Lcom/htc/home/personalize/storedatamanager/CSHelper;->csrest:Lcom/htc/cslib/restHelper/CSRestProxy;

    .line 33
    return-void
.end method

.method private logResultDataOnlyInDebugMode(Ljava/lang/StringBuffer;)V
    .locals 0
    .parameter "strResult"

    .prologue
    .line 303
    return-void
.end method


# virtual methods
.method public doGetItemList(Ljava/lang/String;Ljava/lang/String;IILjava/lang/StringBuffer;)I
    .locals 9
    .parameter "strItemListCallUri"
    .parameter "strID"
    .parameter "nBaseIdx"
    .parameter "nPageSize"
    .parameter "strResult"

    .prologue
    const/4 v5, -0x1

    .line 184
    const-string v6, "HomePersonalize CSHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doGetItemList+ strItemListCallUri = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", strID = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", nBaseIdx = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "nPageSize = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const/4 v2, -0x1

    .line 186
    .local v2, nRet:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 187
    .local v4, strUri:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 188
    .local v0, builder:Ljava/lang/StringBuilder;
    if-eq p3, v5, :cond_3

    .line 190
    const-string v6, "?"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "startIndex="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    if-eq p4, v5, :cond_0

    .line 196
    const-string v6, "&"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "pageSize="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 206
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 210
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 213
    :cond_1
    const/4 v3, 0x0

    .line 215
    .local v3, strOutput:Ljava/lang/String;
    :try_start_0
    sget-object v6, Lcom/htc/home/personalize/storedatamanager/CSHelper;->csrest:Lcom/htc/cslib/restHelper/CSRestProxy;

    const-string v7, ""

    invoke-virtual {v6, v4, v7}, Lcom/htc/cslib/restHelper/CSRestProxy;->httpGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/htc/cslib/exceptions/CommandAndControlException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/htc/cslib/exceptions/MyCSException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    .line 230
    if-eqz v3, :cond_2

    .line 232
    const/4 v2, 0x0

    .line 233
    invoke-virtual {p5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 236
    :cond_2
    invoke-direct {p0, p5}, Lcom/htc/home/personalize/storedatamanager/CSHelper;->logResultDataOnlyInDebugMode(Ljava/lang/StringBuffer;)V

    .line 238
    const-string v5, "HomePersonalize CSHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doGetItemList- ret ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const-string v5, "HomePersonalize CSHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doGetItemList- para = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v2

    .line 240
    :goto_1
    return v5

    .line 200
    .end local v3           #strOutput:Ljava/lang/String;
    :cond_3
    if-eq p4, v5, :cond_0

    .line 201
    const-string v6, "?"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "pageSize="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 217
    .restart local v3       #strOutput:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 218
    .local v1, e:Lcom/htc/cslib/exceptions/CommandAndControlException;
    const-string v5, "HomePersonalize CSHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CommandAndControlException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/htc/cslib/exceptions/CommandAndControlException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v5, p0, Lcom/htc/home/personalize/storedatamanager/CSHelper;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->getInstance(Landroid/content/Context;)Lcom/htc/home/personalize/storedatamanager/StoreDataDB;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->clearAllData()V

    .line 220
    const/4 v2, -0x2

    .line 221
    invoke-virtual {v1}, Lcom/htc/cslib/exceptions/CommandAndControlException;->printStackTrace()V

    move v5, v2

    .line 222
    goto :goto_1

    .line 223
    .end local v1           #e:Lcom/htc/cslib/exceptions/CommandAndControlException;
    :catch_1
    move-exception v1

    .line 224
    .local v1, e:Lcom/htc/cslib/exceptions/MyCSException;
    invoke-virtual {p0, v1}, Lcom/htc/home/personalize/storedatamanager/CSHelper;->handleAndReturnMyCSException(Lcom/htc/cslib/exceptions/MyCSException;)I

    move-result v5

    goto :goto_1

    .line 225
    .end local v1           #e:Lcom/htc/cslib/exceptions/MyCSException;
    :catch_2
    move-exception v1

    .line 227
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public doGetMore(ILjava/lang/StringBuffer;)I
    .locals 7
    .parameter "nType"
    .parameter "strResult"

    .prologue
    const/4 v3, -0x1

    .line 76
    const-string v4, "HomePersonalize CSHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doGetMore+ type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const/4 v1, 0x0

    .line 78
    .local v1, nRet:I
    iget-object v4, p0, Lcom/htc/home/personalize/storedatamanager/CSHelper;->mContext:Landroid/content/Context;

    const-string v5, "getmoreURI"

    invoke-static {v4, v5}, Lcom/htc/home/personalize/storedatamanager/StoreDataUtils;->getUriByFunction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, strFuncUri:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 81
    :cond_0
    const-string v3, "HomePersonalize CSHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doGetMore invalid func uri "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v1

    .line 146
    :goto_0
    return v3

    .line 84
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 138
    const-string v3, "HomePersonalize CSHelper"

    const-string v4, "should not input this type"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const/4 v1, -0x1

    .line 143
    :goto_1
    invoke-direct {p0, p2}, Lcom/htc/home/personalize/storedatamanager/CSHelper;->logResultDataOnlyInDebugMode(Ljava/lang/StringBuffer;)V

    .line 145
    const-string v3, "HomePersonalize CSHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doGetMore- type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ret ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v1

    .line 146
    goto :goto_0

    .line 88
    :pswitch_0
    :try_start_0
    sget-object v4, Lcom/htc/home/personalize/storedatamanager/CSHelper;->csrest:Lcom/htc/cslib/restHelper/CSRestProxy;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/Wallpaper"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Lcom/htc/cslib/restHelper/CSRestProxy;->httpGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Lcom/htc/cslib/exceptions/CommandAndControlException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/htc/cslib/exceptions/MyCSException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, e:Lcom/htc/cslib/exceptions/CommandAndControlException;
    const-string v3, "HomePersonalize CSHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CommandAndControlException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/htc/cslib/exceptions/CommandAndControlException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v3, p0, Lcom/htc/home/personalize/storedatamanager/CSHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->getInstance(Landroid/content/Context;)Lcom/htc/home/personalize/storedatamanager/StoreDataDB;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->clearAllData()V

    .line 92
    const/4 v1, -0x2

    .line 93
    invoke-virtual {v0}, Lcom/htc/cslib/exceptions/CommandAndControlException;->printStackTrace()V

    move v3, v1

    .line 94
    goto :goto_0

    .line 95
    .end local v0           #e:Lcom/htc/cslib/exceptions/CommandAndControlException;
    :catch_1
    move-exception v0

    .line 96
    .local v0, e:Lcom/htc/cslib/exceptions/MyCSException;
    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/storedatamanager/CSHelper;->handleAndReturnMyCSException(Lcom/htc/cslib/exceptions/MyCSException;)I

    move-result v3

    goto/16 :goto_0

    .line 97
    .end local v0           #e:Lcom/htc/cslib/exceptions/MyCSException;
    :catch_2
    move-exception v0

    .line 99
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 105
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    sget-object v4, Lcom/htc/home/personalize/storedatamanager/CSHelper;->csrest:Lcom/htc/cslib/restHelper/CSRestProxy;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/Scene"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Lcom/htc/cslib/restHelper/CSRestProxy;->httpGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Lcom/htc/cslib/exceptions/CommandAndControlException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/htc/cslib/exceptions/MyCSException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    goto/16 :goto_1

    .line 106
    :catch_3
    move-exception v0

    .line 107
    .local v0, e:Lcom/htc/cslib/exceptions/CommandAndControlException;
    const-string v3, "HomePersonalize CSHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CommandAndControlException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/htc/cslib/exceptions/CommandAndControlException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v3, p0, Lcom/htc/home/personalize/storedatamanager/CSHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->getInstance(Landroid/content/Context;)Lcom/htc/home/personalize/storedatamanager/StoreDataDB;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->clearAllData()V

    .line 109
    const/4 v1, -0x2

    .line 110
    invoke-virtual {v0}, Lcom/htc/cslib/exceptions/CommandAndControlException;->printStackTrace()V

    move v3, v1

    .line 111
    goto/16 :goto_0

    .line 112
    .end local v0           #e:Lcom/htc/cslib/exceptions/CommandAndControlException;
    :catch_4
    move-exception v0

    .line 113
    .local v0, e:Lcom/htc/cslib/exceptions/MyCSException;
    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/storedatamanager/CSHelper;->handleAndReturnMyCSException(Lcom/htc/cslib/exceptions/MyCSException;)I

    move-result v3

    goto/16 :goto_0

    .line 114
    .end local v0           #e:Lcom/htc/cslib/exceptions/MyCSException;
    :catch_5
    move-exception v0

    .line 116
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 122
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_2
    :try_start_2
    sget-object v4, Lcom/htc/home/personalize/storedatamanager/CSHelper;->csrest:Lcom/htc/cslib/restHelper/CSRestProxy;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/Skin"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Lcom/htc/cslib/restHelper/CSRestProxy;->httpGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Lcom/htc/cslib/exceptions/CommandAndControlException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lcom/htc/cslib/exceptions/MyCSException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8

    goto/16 :goto_1

    .line 123
    :catch_6
    move-exception v0

    .line 124
    .local v0, e:Lcom/htc/cslib/exceptions/CommandAndControlException;
    const-string v3, "HomePersonalize CSHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CommandAndControlException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/htc/cslib/exceptions/CommandAndControlException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v3, p0, Lcom/htc/home/personalize/storedatamanager/CSHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->getInstance(Landroid/content/Context;)Lcom/htc/home/personalize/storedatamanager/StoreDataDB;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->clearAllData()V

    .line 126
    const/4 v1, -0x2

    .line 127
    invoke-virtual {v0}, Lcom/htc/cslib/exceptions/CommandAndControlException;->printStackTrace()V

    move v3, v1

    .line 128
    goto/16 :goto_0

    .line 129
    .end local v0           #e:Lcom/htc/cslib/exceptions/CommandAndControlException;
    :catch_7
    move-exception v0

    .line 130
    .local v0, e:Lcom/htc/cslib/exceptions/MyCSException;
    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/storedatamanager/CSHelper;->handleAndReturnMyCSException(Lcom/htc/cslib/exceptions/MyCSException;)I

    move-result v3

    goto/16 :goto_0

    .line 131
    .end local v0           #e:Lcom/htc/cslib/exceptions/MyCSException;
    :catch_8
    move-exception v0

    .line 133
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 84
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public doGetSubcategoryList(Ljava/lang/String;Ljava/lang/String;IILjava/lang/StringBuffer;)I
    .locals 7
    .parameter "strCateCallUri"
    .parameter "strID"
    .parameter "nBaseIdx"
    .parameter "nPageSize"
    .parameter "strResult"

    .prologue
    .line 151
    const-string v4, "HomePersonalize CSHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doGetSubcategoryList+ strID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", nBaseIdx = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "nPageSize = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const/4 v1, -0x1

    .line 153
    .local v1, nRet:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 154
    .local v3, strUri:Ljava/lang/String;
    const/4 v2, 0x0

    .line 156
    .local v2, strOutput:Ljava/lang/String;
    :try_start_0
    sget-object v4, Lcom/htc/home/personalize/storedatamanager/CSHelper;->csrest:Lcom/htc/cslib/restHelper/CSRestProxy;

    const-string v5, ""

    invoke-virtual {v4, v3, v5}, Lcom/htc/cslib/restHelper/CSRestProxy;->httpGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/htc/cslib/exceptions/CommandAndControlException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/htc/cslib/exceptions/MyCSException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 170
    if-eqz v2, :cond_0

    .line 172
    const/4 v1, 0x0

    .line 173
    invoke-virtual {p5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 176
    :cond_0
    invoke-direct {p0, p5}, Lcom/htc/home/personalize/storedatamanager/CSHelper;->logResultDataOnlyInDebugMode(Ljava/lang/StringBuffer;)V

    .line 178
    const-string v4, "HomePersonalize CSHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doGetSubcategoryList- strID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ret ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", nBaseIdx = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v1

    .line 179
    :goto_0
    return v4

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, e:Lcom/htc/cslib/exceptions/CommandAndControlException;
    const-string v4, "HomePersonalize CSHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CommandAndControlException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/htc/cslib/exceptions/CommandAndControlException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v4, p0, Lcom/htc/home/personalize/storedatamanager/CSHelper;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->getInstance(Landroid/content/Context;)Lcom/htc/home/personalize/storedatamanager/StoreDataDB;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->clearAllData()V

    .line 160
    const/4 v1, -0x2

    .line 161
    invoke-virtual {v0}, Lcom/htc/cslib/exceptions/CommandAndControlException;->printStackTrace()V

    move v4, v1

    .line 162
    goto :goto_0

    .line 163
    .end local v0           #e:Lcom/htc/cslib/exceptions/CommandAndControlException;
    :catch_1
    move-exception v0

    .line 164
    .local v0, e:Lcom/htc/cslib/exceptions/MyCSException;
    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/storedatamanager/CSHelper;->handleAndReturnMyCSException(Lcom/htc/cslib/exceptions/MyCSException;)I

    move-result v4

    goto :goto_0

    .line 165
    .end local v0           #e:Lcom/htc/cslib/exceptions/MyCSException;
    :catch_2
    move-exception v0

    .line 167
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 168
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public doPurchaseCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)I
    .locals 6
    .parameter "strPurchaseCallUri"
    .parameter "strProductID"
    .parameter "strResult"

    .prologue
    .line 246
    const-string v3, "HomePersonalize CSHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doPurchaseCall+ strProductID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const/4 v1, -0x1

    .line 248
    .local v1, nRet:I
    const/4 v2, 0x0

    .line 250
    .local v2, strOutput:Ljava/lang/String;
    :try_start_0
    sget-object v3, Lcom/htc/home/personalize/storedatamanager/CSHelper;->csrest:Lcom/htc/cslib/restHelper/CSRestProxy;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lcom/htc/cslib/restHelper/CSRestProxy;->httpGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/htc/cslib/exceptions/CommandAndControlException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/htc/cslib/exceptions/MyCSException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 264
    if-eqz v2, :cond_0

    .line 266
    const/4 v1, 0x0

    .line 267
    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 270
    :cond_0
    invoke-direct {p0, p3}, Lcom/htc/home/personalize/storedatamanager/CSHelper;->logResultDataOnlyInDebugMode(Ljava/lang/StringBuffer;)V

    .line 272
    const-string v3, "HomePersonalize CSHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doPurchaseCall- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v1

    .line 273
    :goto_0
    return v3

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, e:Lcom/htc/cslib/exceptions/CommandAndControlException;
    const-string v3, "HomePersonalize CSHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CommandAndControlException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/htc/cslib/exceptions/CommandAndControlException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v3, p0, Lcom/htc/home/personalize/storedatamanager/CSHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->getInstance(Landroid/content/Context;)Lcom/htc/home/personalize/storedatamanager/StoreDataDB;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->clearAllData()V

    .line 254
    const/4 v1, -0x2

    .line 255
    invoke-virtual {v0}, Lcom/htc/cslib/exceptions/CommandAndControlException;->printStackTrace()V

    move v3, v1

    .line 256
    goto :goto_0

    .line 257
    .end local v0           #e:Lcom/htc/cslib/exceptions/CommandAndControlException;
    :catch_1
    move-exception v0

    .line 258
    .local v0, e:Lcom/htc/cslib/exceptions/MyCSException;
    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/storedatamanager/CSHelper;->handleAndReturnMyCSException(Lcom/htc/cslib/exceptions/MyCSException;)I

    move-result v3

    goto :goto_0

    .line 259
    .end local v0           #e:Lcom/htc/cslib/exceptions/MyCSException;
    :catch_2
    move-exception v0

    .line 261
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 262
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public doSetup(Ljava/lang/StringBuffer;)I
    .locals 8
    .parameter "strResult"

    .prologue
    .line 37
    const-string v5, "HomePersonalize CSHelper"

    const-string v6, "doSetup+ "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const/4 v2, -0x1

    .line 39
    .local v2, nRet:I
    const/4 v3, 0x0

    .line 40
    .local v3, strOutput:Ljava/lang/String;
    const/4 v4, 0x0

    .line 42
    .local v4, strSetupUri:Ljava/lang/String;
    :try_start_0
    sget-object v5, Lcom/htc/home/personalize/storedatamanager/CSHelper;->csrest:Lcom/htc/cslib/restHelper/CSRestProxy;

    invoke-virtual {v5}, Lcom/htc/cslib/restHelper/CSRestProxy;->setupURI()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 47
    :goto_0
    :try_start_1
    sget-object v5, Lcom/htc/home/personalize/storedatamanager/CSHelper;->csrest:Lcom/htc/cslib/restHelper/CSRestProxy;

    const-string v6, ""

    invoke-virtual {v5, v4, v6}, Lcom/htc/cslib/restHelper/CSRestProxy;->httpGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lcom/htc/cslib/exceptions/CommandAndControlException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/htc/cslib/exceptions/MyCSException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v3

    .line 62
    if-eqz v3, :cond_0

    .line 64
    const/4 v2, 0x0

    .line 65
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/storedatamanager/CSHelper;->logResultDataOnlyInDebugMode(Ljava/lang/StringBuffer;)V

    .line 70
    const-string v5, "HomePersonalize CSHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doSetup-, ret ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v2

    .line 71
    :goto_1
    return v5

    .line 43
    :catch_0
    move-exception v1

    .line 44
    .local v1, e1:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 48
    .end local v1           #e1:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 49
    .local v0, e:Lcom/htc/cslib/exceptions/CommandAndControlException;
    const-string v5, "HomePersonalize CSHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CommandAndControlException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/htc/cslib/exceptions/CommandAndControlException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v5, p0, Lcom/htc/home/personalize/storedatamanager/CSHelper;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->getInstance(Landroid/content/Context;)Lcom/htc/home/personalize/storedatamanager/StoreDataDB;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->clearAllData()V

    .line 51
    const/4 v2, -0x2

    .line 52
    invoke-virtual {v0}, Lcom/htc/cslib/exceptions/CommandAndControlException;->printStackTrace()V

    move v5, v2

    .line 53
    goto :goto_1

    .line 54
    .end local v0           #e:Lcom/htc/cslib/exceptions/CommandAndControlException;
    :catch_2
    move-exception v0

    .line 55
    .local v0, e:Lcom/htc/cslib/exceptions/MyCSException;
    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/storedatamanager/CSHelper;->handleAndReturnMyCSException(Lcom/htc/cslib/exceptions/MyCSException;)I

    move-result v5

    goto :goto_1

    .line 56
    .end local v0           #e:Lcom/htc/cslib/exceptions/MyCSException;
    :catch_3
    move-exception v0

    .line 58
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "HomePersonalize CSHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doSetup-: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 60
    const/4 v5, -0x1

    goto :goto_1
.end method

.method public handleAndReturnMyCSException(Lcom/htc/cslib/exceptions/MyCSException;)I
    .locals 6
    .parameter "e"

    .prologue
    const/4 v2, -0x1

    .line 277
    invoke-virtual {p1}, Lcom/htc/cslib/exceptions/MyCSException;->getCustomErrorMessage()Lcom/htc/cslib/exceptions/CustomErrorMessage;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 278
    invoke-virtual {p1}, Lcom/htc/cslib/exceptions/MyCSException;->getCustomErrorString()Ljava/lang/String;

    move-result-object v1

    .line 279
    .local v1, errorString:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/htc/cslib/exceptions/MyCSException;->getCustomErrorCode()Lcom/htc/cslib/exceptions/ErrorCode;

    move-result-object v0

    .line 280
    .local v0, errorCode:Lcom/htc/cslib/exceptions/ErrorCode;
    const-string v3, "HomePersonalize CSHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MyCSException errorString: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", errorCode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    sget-object v3, Lcom/htc/cslib/exceptions/ErrorCode;->MissingDevice:Lcom/htc/cslib/exceptions/ErrorCode;

    if-ne v0, v3, :cond_0

    .line 282
    const/4 v2, -0x3

    .line 292
    .end local v0           #errorCode:Lcom/htc/cslib/exceptions/ErrorCode;
    .end local v1           #errorString:Ljava/lang/String;
    :goto_0
    return v2

    .line 284
    .restart local v0       #errorCode:Lcom/htc/cslib/exceptions/ErrorCode;
    .restart local v1       #errorString:Ljava/lang/String;
    :cond_0
    sget-object v3, Lcom/htc/cslib/exceptions/ErrorCode;->InvalidCredentials:Lcom/htc/cslib/exceptions/ErrorCode;

    if-ne v0, v3, :cond_1

    .line 285
    const/4 v2, -0x4

    goto :goto_0

    .line 287
    :cond_1
    const-string v3, "HomePersonalize CSHelper"

    const-string v4, "Unknow ErrorMessge"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 291
    .end local v0           #errorCode:Lcom/htc/cslib/exceptions/ErrorCode;
    .end local v1           #errorString:Ljava/lang/String;
    :cond_2
    const-string v3, "HomePersonalize CSHelper"

    const-string v4, "ErrorMessge = null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
