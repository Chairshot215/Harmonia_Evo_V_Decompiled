.class public Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;
.super Ljava/lang/Object;
.source "LoggingData.java"


# instance fields
.field private mClickPosition:I

.field private mClickType:I

.field private final mConnectionType:I

.field private final mEventId:Lorg/json/JSONArray;

.field private final mNetworkRoundtripLatency:I

.field private mQuery:Ljava/lang/String;

.field private mSearchAction:I

.field private mTrafficTagFlags:I

.field private final mUserVisibleLatency:I


# direct methods
.method private constructor <init>(Lorg/json/JSONArray;III)V
    .locals 1
    .parameter "eventId"
    .parameter "userVisibleLatency"
    .parameter "networkRoundtripLatency"
    .parameter "connectionType"

    .prologue
    const/4 v0, -0x1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput v0, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mClickType:I

    .line 69
    iput v0, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mClickPosition:I

    .line 70
    iput v0, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mSearchAction:I

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mQuery:Ljava/lang/String;

    .line 76
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mEventId:Lorg/json/JSONArray;

    .line 77
    iput p2, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mUserVisibleLatency:I

    .line 78
    iput p3, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mNetworkRoundtripLatency:I

    .line 79
    iput p4, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mConnectionType:I

    .line 80
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONArray;Lcom/google/android/googlequicksearchbox/google/LatencyTracker;Landroid/net/NetworkInfo;)V
    .locals 3
    .parameter "eventId"
    .parameter "latency"
    .parameter "networkInfo"

    .prologue
    .line 92
    invoke-virtual {p2}, Lcom/google/android/googlequicksearchbox/google/LatencyTracker;->getUserVisibleLatency()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/android/googlequicksearchbox/google/LatencyTracker;->getNetworkRoundtripLatency()I

    move-result v1

    invoke-static {p3}, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->getConnectionType(Landroid/net/NetworkInfo;)I

    move-result v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;-><init>(Lorg/json/JSONArray;III)V

    .line 94
    return-void
.end method

.method public static fromJson(Lorg/json/JSONArray;)Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;
    .locals 13
    .parameter "json"

    .prologue
    const/4 v9, 0x0

    .line 267
    if-nez p0, :cond_0

    move-object v5, v9

    .line 284
    :goto_0
    return-object v5

    .line 269
    :cond_0
    const/4 v10, 0x0

    :try_start_0
    invoke-virtual {p0, v10}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v3

    .line 270
    .local v3, eventId:Lorg/json/JSONArray;
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lorg/json/JSONArray;->getInt(I)I

    move-result v8

    .line 271
    .local v8, userVisibleLatency:I
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Lorg/json/JSONArray;->getInt(I)I

    move-result v6

    .line 272
    .local v6, networkRoundtripLatency:I
    const/4 v10, 0x3

    invoke-virtual {p0, v10}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    .line 273
    .local v2, connectionType:I
    const/4 v10, 0x4

    invoke-virtual {p0, v10}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    .line 274
    .local v1, clickType:I
    const/4 v10, 0x5

    invoke-virtual {p0, v10}, Lorg/json/JSONArray;->getInt(I)I

    move-result v0

    .line 275
    .local v0, clickPosition:I
    const/4 v10, 0x6

    invoke-virtual {p0, v10}, Lorg/json/JSONArray;->getInt(I)I

    move-result v7

    .line 276
    .local v7, searchAction:I
    new-instance v5, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;

    invoke-direct {v5, v3, v8, v6, v2}, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;-><init>(Lorg/json/JSONArray;III)V

    .line 278
    .local v5, logData:Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;
    invoke-virtual {v5, v1}, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->putClickType(I)V

    .line 279
    invoke-virtual {v5, v0}, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->putClickPosition(I)V

    .line 280
    invoke-virtual {v5, v7}, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->putSearchAction(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 282
    .end local v0           #clickPosition:I
    .end local v1           #clickType:I
    .end local v2           #connectionType:I
    .end local v3           #eventId:Lorg/json/JSONArray;
    .end local v5           #logData:Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;
    .end local v6           #networkRoundtripLatency:I
    .end local v7           #searchAction:I
    .end local v8           #userVisibleLatency:I
    :catch_0
    move-exception v4

    .line 283
    .local v4, ex:Lorg/json/JSONException;
    const-string v10, "QSB.LoggingData"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error parsing log data: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v9

    .line 284
    goto :goto_0
.end method

.method public static getApp(Lcom/google/android/googlequicksearchbox/QsbContext;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 150
    const-string v0, "iss"

    return-object v0
.end method

.method public static getAppv(Lcom/google/android/googlequicksearchbox/QsbContext;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbContext;->getApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getVersionCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getConnectionType(Landroid/net/NetworkInfo;)I
    .locals 2
    .parameter "networkInfo"

    .prologue
    const/16 v0, 0xa

    .line 292
    if-nez p0, :cond_0

    .line 320
    :goto_0
    :pswitch_0
    return v0

    .line 295
    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 299
    :pswitch_1
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 303
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 297
    :pswitch_3
    const/16 v0, 0x9

    goto :goto_0

    .line 305
    :pswitch_4
    const/4 v0, 0x3

    goto :goto_0

    .line 307
    :pswitch_5
    const/4 v0, 0x4

    goto :goto_0

    .line 309
    :pswitch_6
    const/4 v0, 0x5

    goto :goto_0

    .line 311
    :pswitch_7
    const/4 v0, 0x6

    goto :goto_0

    .line 313
    :pswitch_8
    const/4 v0, 0x7

    goto :goto_0

    .line 315
    :pswitch_9
    const/16 v0, 0x8

    goto :goto_0

    .line 295
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 299
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public static getDist(Lcom/google/android/googlequicksearchbox/QsbContext;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 162
    const-string v0, "Web"

    return-object v0
.end method

.method public static getPlatform(Lcom/google/android/googlequicksearchbox/QsbContext;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 158
    const-string v0, "android"

    return-object v0
.end method


# virtual methods
.method public getTrafficTagFlags()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mTrafficTagFlags:I

    return v0
.end method

.method public putClickPosition(I)V
    .locals 0
    .parameter "clickPosition"

    .prologue
    .line 119
    iput p1, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mClickPosition:I

    .line 120
    return-void
.end method

.method public putClickType(I)V
    .locals 0
    .parameter "clickType"

    .prologue
    .line 101
    iput p1, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mClickType:I

    .line 102
    return-void
.end method

.method public putClickTypeIfNotSet(I)V
    .locals 2
    .parameter "clickType"

    .prologue
    .line 109
    iget v0, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mClickType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 110
    iput p1, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mClickType:I

    .line 112
    :cond_0
    return-void
.end method

.method public putQuery(Ljava/lang/String;)V
    .locals 0
    .parameter "query"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mQuery:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public putSearchAction(I)V
    .locals 0
    .parameter "searchAction"

    .prologue
    .line 126
    iput p1, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mSearchAction:I

    .line 127
    return-void
.end method

.method public putTrafficTagFlags(I)V
    .locals 0
    .parameter "bits"

    .prologue
    .line 142
    iput p1, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mTrafficTagFlags:I

    .line 143
    return-void
.end method

.method public toJson()Lorg/json/JSONArray;
    .locals 2

    .prologue
    .line 250
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 251
    .local v0, json:Lorg/json/JSONArray;
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mEventId:Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 252
    iget v1, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mUserVisibleLatency:I

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 253
    iget v1, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mNetworkRoundtripLatency:I

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 254
    iget v1, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mConnectionType:I

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 255
    iget v1, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mClickType:I

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 256
    iget v1, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mClickPosition:I

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 257
    iget v1, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mSearchAction:I

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 258
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 234
    .local v0, sb:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mEventId:Lorg/json/JSONArray;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "relatedEventId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mEventId:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", userVisibleLatency="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mUserVisibleLatency:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", networkRoundtripLatency="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mNetworkRoundtripLatency:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", connectionType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mConnectionType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", clickType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mClickType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", clickPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mClickPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", searchAction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mSearchAction:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", q="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mQuery:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toUrl(Lcom/google/android/googlequicksearchbox/QsbContext;Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;)Ljava/lang/String;
    .locals 12
    .parameter "context"
    .parameter "source"

    .prologue
    .line 173
    new-instance v2, Ljava/util/Formatter;

    invoke-direct {v2}, Ljava/util/Formatter;-><init>()V

    .line 174
    .local v2, f:Ljava/util/Formatter;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;->getGenieLoggingServer()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "?q=%s&app=%s&appv=%s&platform=%s&dist=%s"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 177
    .local v7, urlPattern:Ljava/lang/String;
    :try_start_0
    iget-object v8, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mQuery:Ljava/lang/String;

    if-nez v8, :cond_7

    const-string v1, ""

    .line 178
    .local v1, encodedQuery:Ljava/lang/String;
    :goto_0
    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    const/4 v9, 0x1

    invoke-static {p1}, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->getApp(Lcom/google/android/googlequicksearchbox/QsbContext;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static {p1}, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->getAppv(Lcom/google/android/googlequicksearchbox/QsbContext;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-static {p1}, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->getPlatform(Lcom/google/android/googlequicksearchbox/QsbContext;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    invoke-static {p1}, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->getDist(Lcom/google/android/googlequicksearchbox/QsbContext;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v2, v7, v8}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 184
    iget-object v8, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mEventId:Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v8, :cond_0

    .line 186
    :try_start_1
    iget-object v8, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mEventId:Lorg/json/JSONArray;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 187
    .local v4, serverIp:Ljava/lang/String;
    iget-object v8, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mEventId:Lorg/json/JSONArray;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 188
    .local v3, processId:Ljava/lang/String;
    iget-object v8, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mEventId:Lorg/json/JSONArray;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 189
    .local v6, timestamp:Ljava/lang/String;
    iget-object v8, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mEventId:Lorg/json/JSONArray;

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 190
    .local v5, sig:Ljava/lang/String;
    const-string v8, "&serverip=%s&processid=%s&timestamp=%s&sig=%s"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v4, v9, v10

    const/4 v10, 0x1

    aput-object v3, v9, v10

    const/4 v10, 0x2

    aput-object v6, v9, v10

    const/4 v10, 0x3

    aput-object v5, v9, v10

    invoke-virtual {v2, v8, v9}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 201
    .end local v3           #processId:Ljava/lang/String;
    .end local v4           #serverIp:Ljava/lang/String;
    .end local v5           #sig:Ljava/lang/String;
    .end local v6           #timestamp:Ljava/lang/String;
    :cond_0
    iget v8, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mClickPosition:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1

    .line 202
    const-string v8, "&pos=%d"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mClickPosition:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v2, v8, v9}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 205
    :cond_1
    iget v8, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mClickType:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    .line 206
    const-string v8, "&type=%d"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mClickType:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v2, v8, v9}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 209
    :cond_2
    iget v8, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mSearchAction:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_3

    .line 210
    const-string v8, "&action=%d"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mSearchAction:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v2, v8, v9}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 213
    :cond_3
    iget v8, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mUserVisibleLatency:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_4

    .line 214
    const-string v8, "&uvlat=%d"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mUserVisibleLatency:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v2, v8, v9}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 217
    :cond_4
    iget v8, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mNetworkRoundtripLatency:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_5

    .line 218
    const-string v8, "&nlat=%d"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mNetworkRoundtripLatency:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v2, v8, v9}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 221
    :cond_5
    iget v8, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mConnectionType:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_6

    .line 222
    const-string v8, "&connection=%d"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mConnectionType:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v2, v8, v9}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 225
    :cond_6
    invoke-virtual {v2}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v8

    .end local v1           #encodedQuery:Ljava/lang/String;
    :goto_1
    return-object v8

    .line 177
    :cond_7
    :try_start_2
    iget-object v8, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mQuery:Ljava/lang/String;

    const-string v9, "UTF-8"

    invoke-static {v8, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 191
    .restart local v1       #encodedQuery:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 192
    .local v0, e:Lorg/json/JSONException;
    const-string v8, "QSB.LoggingData"

    const-string v9, "Malformed EventId in log message."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    .line 193
    const/4 v8, 0x0

    goto :goto_1

    .line 196
    .end local v0           #e:Lorg/json/JSONException;
    .end local v1           #encodedQuery:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 197
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string v8, "QSB.LoggingData"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to UTF-8 encode query:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const/4 v8, 0x0

    goto :goto_1
.end method
