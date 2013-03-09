.class Lcom/htc/weatheridlescreen/data/WeatherDataLoader$1;
.super Landroid/os/Handler;
.source "WeatherDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/weatheridlescreen/data/WeatherDataLoader;


# direct methods
.method constructor <init>(Lcom/htc/weatheridlescreen/data/WeatherDataLoader;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader$1;->this$0:Lcom/htc/weatheridlescreen/data/WeatherDataLoader;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private _decodeWeatherData(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    .line 115
    if-nez p1, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 123
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    .line 124
    .local v0, categories:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 126
    const-string v3, "WIS"

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 130
    :try_start_0
    const-string v3, "data"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/htc/util/weather/WSPPData;

    .line 132
    .local v1, data:Lcom/htc/util/weather/WSPPData;
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/htc/weatheridlescreen/data/WeatherDataLoader$1;->_handleWeatherData(Lcom/htc/util/weather/WSPPData;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 134
    .end local v1           #data:Lcom/htc/util/weather/WSPPData;
    :catch_0
    move-exception v2

    .line 135
    .local v2, e:Ljava/lang/Exception;
    const-string v3, "WIS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[WeatherDaraLoader] _decodeWeatherData() - Exception = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private _handleWeatherData(Lcom/htc/util/weather/WSPPData;Z)V
    .locals 7
    .parameter "data"
    .parameter "isForceUpdate"

    .prologue
    .line 145
    const/4 v1, 0x0

    .line 146
    .local v1, mHasWeatherData:Z
    const/4 v0, 0x0

    .line 147
    .local v0, mConditionText:Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 148
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getLastUpdate()J

    move-result-wide v2

    .line 149
    .local v2, mLastUpdate:J
    if-nez p2, :cond_0

    .line 154
    :cond_0
    iget-object v5, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader$1;->this$0:Lcom/htc/weatheridlescreen/data/WeatherDataLoader;

    #setter for: Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mServerUpdatetDate:J
    invoke-static {v5, v2, v3}, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->access$302(Lcom/htc/weatheridlescreen/data/WeatherDataLoader;J)J

    .line 165
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->hasWeatherData()Z

    move-result v1

    .line 184
    .end local v2           #mLastUpdate:J
    :cond_1
    if-eqz v1, :cond_3

    .line 185
    new-instance v4, Lcom/htc/weatheridlescreen/data/WeatherData;

    iget-object v5, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader$1;->this$0:Lcom/htc/weatheridlescreen/data/WeatherDataLoader;

    #getter for: Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->access$200(Lcom/htc/weatheridlescreen/data/WeatherDataLoader;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader$1;->this$0:Lcom/htc/weatheridlescreen/data/WeatherDataLoader;

    #getter for: Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mIsCurrentCityMode:Z
    invoke-static {v6}, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->access$400(Lcom/htc/weatheridlescreen/data/WeatherDataLoader;)Z

    move-result v6

    invoke-direct {v4, v5, p1, v6}, Lcom/htc/weatheridlescreen/data/WeatherData;-><init>(Landroid/content/Context;Lcom/htc/util/weather/WSPPData;Z)V

    .line 186
    .local v4, mWeatherData:Lcom/htc/weatheridlescreen/data/WeatherData;
    iget-object v5, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader$1;->this$0:Lcom/htc/weatheridlescreen/data/WeatherDataLoader;

    #getter for: Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mDataUpdateCallback:Lcom/htc/weatheridlescreen/data/WeatherDataLoader$DataUpdateCallback;
    invoke-static {v5}, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->access$500(Lcom/htc/weatheridlescreen/data/WeatherDataLoader;)Lcom/htc/weatheridlescreen/data/WeatherDataLoader$DataUpdateCallback;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 187
    iget-object v5, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader$1;->this$0:Lcom/htc/weatheridlescreen/data/WeatherDataLoader;

    #getter for: Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mDataUpdateCallback:Lcom/htc/weatheridlescreen/data/WeatherDataLoader$DataUpdateCallback;
    invoke-static {v5}, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->access$500(Lcom/htc/weatheridlescreen/data/WeatherDataLoader;)Lcom/htc/weatheridlescreen/data/WeatherDataLoader$DataUpdateCallback;

    move-result-object v5

    invoke-interface {v5, v1, v4}, Lcom/htc/weatheridlescreen/data/WeatherDataLoader$DataUpdateCallback;->onDataUpdate(ZLcom/htc/weatheridlescreen/data/WeatherData;)V

    .line 193
    .end local v4           #mWeatherData:Lcom/htc/weatheridlescreen/data/WeatherData;
    :cond_2
    :goto_0
    return-void

    .line 190
    :cond_3
    iget-object v5, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader$1;->this$0:Lcom/htc/weatheridlescreen/data/WeatherDataLoader;

    #getter for: Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mDataUpdateCallback:Lcom/htc/weatheridlescreen/data/WeatherDataLoader$DataUpdateCallback;
    invoke-static {v5}, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->access$500(Lcom/htc/weatheridlescreen/data/WeatherDataLoader;)Lcom/htc/weatheridlescreen/data/WeatherDataLoader$DataUpdateCallback;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 191
    iget-object v5, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader$1;->this$0:Lcom/htc/weatheridlescreen/data/WeatherDataLoader;

    #getter for: Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mDataUpdateCallback:Lcom/htc/weatheridlescreen/data/WeatherDataLoader$DataUpdateCallback;
    invoke-static {v5}, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->access$500(Lcom/htc/weatheridlescreen/data/WeatherDataLoader;)Lcom/htc/weatheridlescreen/data/WeatherDataLoader$DataUpdateCallback;

    move-result-object v5

    invoke-interface {v5}, Lcom/htc/weatheridlescreen/data/WeatherDataLoader$DataUpdateCallback;->onNoData()V

    goto :goto_0
.end method

.method private _requestWeatherData(Z)V
    .locals 7
    .parameter "isForceUpdate"

    .prologue
    const/4 v6, 0x0

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 97
    .local v1, mSystemTime:J
    iget-object v4, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader$1;->this$0:Lcom/htc/weatheridlescreen/data/WeatherDataLoader;

    #setter for: Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mRequestTime:J
    invoke-static {v4, v1, v2}, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->access$002(Lcom/htc/weatheridlescreen/data/WeatherDataLoader;J)J

    .line 100
    const/4 v4, 0x1

    new-array v3, v4, [Lcom/htc/util/weather/WSPRequest;

    .line 101
    .local v3, req:[Lcom/htc/util/weather/WSPRequest;
    iget-object v4, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader$1;->this$0:Lcom/htc/weatheridlescreen/data/WeatherDataLoader;

    #getter for: Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mWeatherCity:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->access$100(Lcom/htc/weatheridlescreen/data/WeatherDataLoader;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader$1;->this$0:Lcom/htc/weatheridlescreen/data/WeatherDataLoader;

    #getter for: Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mWeatherCity:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->access$100(Lcom/htc/weatheridlescreen/data/WeatherDataLoader;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader$1;->this$0:Lcom/htc/weatheridlescreen/data/WeatherDataLoader;

    #getter for: Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mWeatherCity:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->access$100(Lcom/htc/weatheridlescreen/data/WeatherDataLoader;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "CurrentCity"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader$1;->this$0:Lcom/htc/weatheridlescreen/data/WeatherDataLoader;

    #getter for: Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mWeatherCity:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->access$100(Lcom/htc/weatheridlescreen/data/WeatherDataLoader;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 103
    :cond_0
    invoke-static {}, Lcom/htc/util/weather/WSPPUtility;->generateWSPReqestForCurrentLocation()Lcom/htc/util/weather/WSPRequest;

    move-result-object v4

    aput-object v4, v3, v6

    .line 108
    :goto_0
    iget-object v4, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader$1;->this$0:Lcom/htc/weatheridlescreen/data/WeatherDataLoader;

    #getter for: Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->access$200(Lcom/htc/weatheridlescreen/data/WeatherDataLoader;)Landroid/content/Context;

    move-result-object v4

    aget-object v5, v3, v6

    invoke-static {v4, v5}, Lcom/htc/util/weather/WSPPUtility;->request(Landroid/content/Context;Lcom/htc/util/weather/WSPRequest;)Lcom/htc/util/weather/WSPPData;

    move-result-object v0

    .line 109
    .local v0, data:Lcom/htc/util/weather/WSPPData;
    invoke-direct {p0, v0, p1}, Lcom/htc/weatheridlescreen/data/WeatherDataLoader$1;->_handleWeatherData(Lcom/htc/util/weather/WSPPData;Z)V

    .line 110
    return-void

    .line 105
    .end local v0           #data:Lcom/htc/util/weather/WSPPData;
    :cond_1
    iget-object v4, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader$1;->this$0:Lcom/htc/weatheridlescreen/data/WeatherDataLoader;

    #getter for: Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mWeatherCity:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->access$100(Lcom/htc/weatheridlescreen/data/WeatherDataLoader;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/util/weather/WSPPUtility;->generateWSPRequestForLocCode(Ljava/lang/String;)Lcom/htc/util/weather/WSPRequest;

    move-result-object v4

    aput-object v4, v3, v6

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 197
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 198
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 215
    :goto_0
    return-void

    .line 202
    :pswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/weatheridlescreen/data/WeatherDataLoader$1;->_requestWeatherData(Z)V

    goto :goto_0

    .line 207
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    check-cast v0, Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/htc/weatheridlescreen/data/WeatherDataLoader$1;->_decodeWeatherData(Landroid/content/Intent;)V

    goto :goto_0

    .line 212
    :pswitch_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/weatheridlescreen/data/WeatherDataLoader$1;->_requestWeatherData(Z)V

    goto :goto_0

    .line 198
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
