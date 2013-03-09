.class Lcom/htc/widget3d/weather/WeatherWidgetBaseMed$1;
.super Ljava/lang/Object;
.source "WeatherWidgetBaseMed.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;


# direct methods
.method constructor <init>(Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed$1;->this$0:Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .parameter "msg"

    .prologue
    const v4, 0x7f06005b

    .line 69
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 112
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 71
    :sswitch_0
    iget-object v1, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed$1;->this$0:Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;

    #calls: Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->createData()V
    invoke-static {v1}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->access$000(Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;)V

    goto :goto_0

    .line 74
    :sswitch_1
    iget-object v2, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed$1;->this$0:Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    #calls: Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->doActivityResult(Landroid/content/Intent;)V
    invoke-static {v2, v1}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->access$100(Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;Landroid/content/Intent;)V

    goto :goto_0

    .line 77
    :sswitch_2
    iget-object v1, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed$1;->this$0:Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;

    #calls: Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->initSetting()V
    invoke-static {v1}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->access$200(Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;)V

    goto :goto_0

    .line 80
    :sswitch_3
    const-string v1, "WeatherWidgetBaseMed"

    const-string v2, "MSG_INIT_DCS"

    invoke-static {v1, v2}, Lcom/htc/widget3d/weather/util/LOG;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v1, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed$1;->this$0:Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;

    invoke-virtual {v1}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->initWidget()V

    .line 82
    iget-object v1, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed$1;->this$0:Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;

    #calls: Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->initWSPReceiver()V
    invoke-static {v1}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->access$300(Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;)V

    goto :goto_0

    .line 85
    :sswitch_4
    const-string v1, "WeatherWidgetBaseMed"

    const-string v2, "WEATHER_UPDATE_DATA_BY_BUNDLE"

    invoke-static {v1, v2}, Lcom/htc/widget3d/weather/util/LOG;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v1, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed$1;->this$0:Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;

    iget-object v1, v1, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mCityInfo:Lcom/htc/widget3d/weather/data/CityInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed$1;->this$0:Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;

    iget-object v1, v1, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mCityInfo:Lcom/htc/widget3d/weather/data/CityInfo;

    invoke-virtual {v1}, Lcom/htc/widget3d/weather/data/CityInfo;->getState()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 88
    :cond_1
    const-string v1, "WeatherWidgetBaseMed"

    const-string v2, "CITYINFO_STATE_NO_DATA"

    invoke-static {v1, v2}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v1, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed$1;->this$0:Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;

    iget-object v1, v1, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mCityInfo:Lcom/htc/widget3d/weather/data/CityInfo;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed$1;->this$0:Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;

    iget-object v1, v1, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mCityInfo:Lcom/htc/widget3d/weather/data/CityInfo;

    invoke-virtual {v1}, Lcom/htc/widget3d/weather/data/CityInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 91
    iget-object v1, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed$1;->this$0:Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;

    iget-object v2, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed$1;->this$0:Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;

    iget-object v2, v2, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mCityInfo:Lcom/htc/widget3d/weather/data/CityInfo;

    invoke-virtual {v2}, Lcom/htc/widget3d/weather/data/CityInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed$1;->this$0:Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;

    #getter for: Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mResContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->access$400(Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->playEmptyPage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_2
    iget-object v1, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed$1;->this$0:Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;

    const-string v2, ""

    iget-object v3, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed$1;->this$0:Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;

    #getter for: Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mResContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->access$400(Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->playEmptyPage(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 97
    :cond_3
    iget-object v1, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed$1;->this$0:Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;

    iget-object v2, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed$1;->this$0:Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;

    iget-object v2, v2, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mCityInfo:Lcom/htc/widget3d/weather/data/CityInfo;

    invoke-virtual {v2}, Lcom/htc/widget3d/weather/data/CityInfo;->getBundle()Lcom/htc/util/weather/WSPPData;

    move-result-object v2

    #calls: Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->updateUIByServiceResult(Lcom/htc/util/weather/WSPPData;)V
    invoke-static {v1, v2}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->access$500(Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;Lcom/htc/util/weather/WSPPData;)V

    goto/16 :goto_0

    .line 102
    :sswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    move-object v0, v1

    check-cast v0, Landroid/content/Intent;

    .line 103
    .local v0, data:Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed$1;->this$0:Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;

    #calls: Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->decodeReciver(Landroid/content/Intent;)V
    invoke-static {v1, v0}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->access$600(Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;Landroid/content/Intent;)V

    .line 105
    .end local v0           #data:Landroid/content/Intent;
    :sswitch_6
    iget-object v1, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed$1;->this$0:Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;

    #getter for: Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mBoolRefreshUnit:Z
    invoke-static {v1}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->access$700(Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed$1;->this$0:Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;

    #calls: Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->updateData()V
    invoke-static {v1}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->access$800(Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;)V

    .line 107
    iget-object v1, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed$1;->this$0:Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;

    const/4 v2, 0x0

    #setter for: Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mBoolRefreshUnit:Z
    invoke-static {v1, v2}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->access$702(Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;Z)Z

    goto/16 :goto_0

    .line 69
    :sswitch_data_0
    .sparse-switch
        -0xfffff00 -> :sswitch_2
        -0xfffeffd -> :sswitch_6
        -0xfffeff3 -> :sswitch_3
        0x7 -> :sswitch_4
        0x8 -> :sswitch_5
        0x9001 -> :sswitch_0
        0x9002 -> :sswitch_1
    .end sparse-switch
.end method
