.class Lcom/htc/Weather/data/DataProcesser$DataHandler;
.super Landroid/os/Handler;
.source "DataProcesser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/Weather/data/DataProcesser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DataHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/Weather/data/DataProcesser;


# direct methods
.method constructor <init>(Lcom/htc/Weather/data/DataProcesser;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/htc/Weather/data/DataProcesser$DataHandler;->this$0:Lcom/htc/Weather/data/DataProcesser;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 68
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 71
    :pswitch_0
    const-string v1, "DataProcesser"

    const-string v2, "DataHandler - WHAT_START_FATCH_DATA"

    invoke-static {v1, v2}, Lcom/htc/Weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcom/htc/Weather/data/DataProcesser$DataHandler;->this$0:Lcom/htc/Weather/data/DataProcesser;

    #getter for: Lcom/htc/Weather/data/DataProcesser;->mModel:Lcom/htc/Weather/WeatherModel;
    invoke-static {v1}, Lcom/htc/Weather/data/DataProcesser;->access$000(Lcom/htc/Weather/data/DataProcesser;)Lcom/htc/Weather/WeatherModel;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/Weather/data/DataProcesser$DataHandler;->this$0:Lcom/htc/Weather/data/DataProcesser;

    #getter for: Lcom/htc/Weather/data/DataProcesser;->mModel:Lcom/htc/Weather/WeatherModel;
    invoke-static {v1}, Lcom/htc/Weather/data/DataProcesser;->access$000(Lcom/htc/Weather/data/DataProcesser;)Lcom/htc/Weather/WeatherModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/Weather/WeatherModel;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 73
    iget-object v1, p0, Lcom/htc/Weather/data/DataProcesser$DataHandler;->this$0:Lcom/htc/Weather/data/DataProcesser;

    #calls: Lcom/htc/Weather/data/DataProcesser;->startFetchData(IZ)V
    invoke-static {v1, v3, v3}, Lcom/htc/Weather/data/DataProcesser;->access$100(Lcom/htc/Weather/data/DataProcesser;IZ)V

    goto :goto_0

    .line 75
    :cond_1
    iget-object v1, p0, Lcom/htc/Weather/data/DataProcesser$DataHandler;->this$0:Lcom/htc/Weather/data/DataProcesser;

    #getter for: Lcom/htc/Weather/data/DataProcesser;->mainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/Weather/data/DataProcesser;->access$200(Lcom/htc/Weather/data/DataProcesser;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 80
    :pswitch_1
    const-string v1, "DataProcesser"

    const-string v2, "DataHandler - WHAT_RE_FATCH_DATA"

    invoke-static {v1, v2}, Lcom/htc/Weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v1, p0, Lcom/htc/Weather/data/DataProcesser$DataHandler;->this$0:Lcom/htc/Weather/data/DataProcesser;

    #getter for: Lcom/htc/Weather/data/DataProcesser;->mModel:Lcom/htc/Weather/WeatherModel;
    invoke-static {v1}, Lcom/htc/Weather/data/DataProcesser;->access$000(Lcom/htc/Weather/data/DataProcesser;)Lcom/htc/Weather/WeatherModel;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/Weather/data/DataProcesser$DataHandler;->this$0:Lcom/htc/Weather/data/DataProcesser;

    #getter for: Lcom/htc/Weather/data/DataProcesser;->mModel:Lcom/htc/Weather/WeatherModel;
    invoke-static {v1}, Lcom/htc/Weather/data/DataProcesser;->access$000(Lcom/htc/Weather/data/DataProcesser;)Lcom/htc/Weather/WeatherModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/Weather/WeatherModel;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/htc/Weather/data/DataProcesser$DataHandler;->this$0:Lcom/htc/Weather/data/DataProcesser;

    const/4 v2, 0x2

    #calls: Lcom/htc/Weather/data/DataProcesser;->startFetchData(IZ)V
    invoke-static {v1, v2, v4}, Lcom/htc/Weather/data/DataProcesser;->access$100(Lcom/htc/Weather/data/DataProcesser;IZ)V

    goto :goto_0

    .line 86
    :pswitch_2
    const-string v1, "DataProcesser"

    const-string v2, "DataHandler - WHAT_ADD_CITY_FROM_RESULT"

    invoke-static {v1, v2}, Lcom/htc/Weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v2, p0, Lcom/htc/Weather/data/DataProcesser$DataHandler;->this$0:Lcom/htc/Weather/data/DataProcesser;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/htc/Weather/data/CityInfo;

    invoke-virtual {v2, v1}, Lcom/htc/Weather/data/DataProcesser;->addCityFromResult(Lcom/htc/Weather/data/CityInfo;)V

    goto :goto_0

    .line 91
    :pswitch_3
    const-string v1, "DataProcesser"

    const-string v2, "DataHandler - WHAT_PARSE_DATA_PACKET"

    invoke-static {v1, v2}, Lcom/htc/Weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v2, p0, Lcom/htc/Weather/data/DataProcesser$DataHandler;->this$0:Lcom/htc/Weather/data/DataProcesser;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    #calls: Lcom/htc/Weather/data/DataProcesser;->parseDataPacket(ILandroid/content/Intent;)V
    invoke-static {v2, v3, v1}, Lcom/htc/Weather/data/DataProcesser;->access$300(Lcom/htc/Weather/data/DataProcesser;ILandroid/content/Intent;)V

    goto :goto_0

    .line 96
    :pswitch_4
    iget-object v1, p0, Lcom/htc/Weather/data/DataProcesser$DataHandler;->this$0:Lcom/htc/Weather/data/DataProcesser;

    #getter for: Lcom/htc/Weather/data/DataProcesser;->mModel:Lcom/htc/Weather/WeatherModel;
    invoke-static {v1}, Lcom/htc/Weather/data/DataProcesser;->access$000(Lcom/htc/Weather/data/DataProcesser;)Lcom/htc/Weather/WeatherModel;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 97
    sput-boolean v3, Lcom/htc/Weather/WeatherActivity;->isFetchDataFinished:Z

    .line 98
    iget-object v1, p0, Lcom/htc/Weather/data/DataProcesser$DataHandler;->this$0:Lcom/htc/Weather/data/DataProcesser;

    #getter for: Lcom/htc/Weather/data/DataProcesser;->mModel:Lcom/htc/Weather/WeatherModel;
    invoke-static {v1}, Lcom/htc/Weather/data/DataProcesser;->access$000(Lcom/htc/Weather/data/DataProcesser;)Lcom/htc/Weather/WeatherModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/Weather/WeatherModel;->updateWeatherCityList()Z

    .line 99
    const-string v1, "DataProcesser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "city count after delete: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/Weather/data/DataProcesser$DataHandler;->this$0:Lcom/htc/Weather/data/DataProcesser;

    #getter for: Lcom/htc/Weather/data/DataProcesser;->mModel:Lcom/htc/Weather/WeatherModel;
    invoke-static {v3}, Lcom/htc/Weather/data/DataProcesser;->access$000(Lcom/htc/Weather/data/DataProcesser;)Lcom/htc/Weather/WeatherModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/Weather/WeatherModel;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 104
    :pswitch_5
    sget-boolean v1, Lcom/htc/Weather/WeatherActivity;->isPortrait:Z

    if-eqz v1, :cond_2

    .line 105
    iget-object v1, p0, Lcom/htc/Weather/data/DataProcesser$DataHandler;->this$0:Lcom/htc/Weather/data/DataProcesser;

    #getter for: Lcom/htc/Weather/data/DataProcesser;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/Weather/data/DataProcesser;->access$400(Lcom/htc/Weather/data/DataProcesser;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/htc/util/res/HtcResUtil;->getBlurWallpaper(Landroid/content/Context;Z)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 112
    .local v0, wallpaper:Landroid/graphics/drawable/Drawable;
    :goto_1
    if-eqz v0, :cond_0

    .line 113
    iget-object v1, p0, Lcom/htc/Weather/data/DataProcesser$DataHandler;->this$0:Lcom/htc/Weather/data/DataProcesser;

    #getter for: Lcom/htc/Weather/data/DataProcesser;->mainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/Weather/data/DataProcesser;->access$200(Lcom/htc/Weather/data/DataProcesser;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/Weather/data/DataProcesser$DataHandler;->this$0:Lcom/htc/Weather/data/DataProcesser;

    #getter for: Lcom/htc/Weather/data/DataProcesser;->mainHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/Weather/data/DataProcesser;->access$200(Lcom/htc/Weather/data/DataProcesser;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x17

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 108
    .end local v0           #wallpaper:Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v1, p0, Lcom/htc/Weather/data/DataProcesser$DataHandler;->this$0:Lcom/htc/Weather/data/DataProcesser;

    #getter for: Lcom/htc/Weather/data/DataProcesser;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/Weather/data/DataProcesser;->access$400(Lcom/htc/Weather/data/DataProcesser;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/htc/util/res/HtcResUtil;->getBlurWallpaper(Landroid/content/Context;Z)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .restart local v0       #wallpaper:Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 68
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
