.class Lcom/htc/widget3d/weather/WeatherWidgetBase$1;
.super Landroid/os/Handler;
.source "WeatherWidgetBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget3d/weather/WeatherWidgetBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget3d/weather/WeatherWidgetBase;


# direct methods
.method constructor <init>(Lcom/htc/widget3d/weather/WeatherWidgetBase;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase$1;->this$0:Lcom/htc/widget3d/weather/WeatherWidgetBase;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 62
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 80
    :goto_0
    return-void

    .line 65
    :pswitch_0
    const-string v0, "WeatherWidgetBase"

    const-string v1, "MainHandler - WHAT_PLAY_SOUND"

    invoke-static {v0, v1}, Lcom/htc/widget3d/weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase$1;->this$0:Lcom/htc/widget3d/weather/WeatherWidgetBase;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/htc/widget3d/weather/WeatherWidgetBase;->playSound(I)V
    invoke-static {v0, v1}, Lcom/htc/widget3d/weather/WeatherWidgetBase;->access$000(Lcom/htc/widget3d/weather/WeatherWidgetBase;I)V

    goto :goto_0

    .line 70
    :pswitch_1
    iget-object v0, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase$1;->this$0:Lcom/htc/widget3d/weather/WeatherWidgetBase;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/htc/widget3d/weather/WeatherWidgetBase;->updateCityData(I)V

    goto :goto_0

    .line 74
    :pswitch_2
    const-string v0, "WeatherWidgetBase"

    const-string v1, "MainHandler - DO_LOADING_ANIMATION"

    invoke-static {v0, v1}, Lcom/htc/widget3d/weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase$1;->this$0:Lcom/htc/widget3d/weather/WeatherWidgetBase;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/htc/widget3d/weather/WeatherWidgetBase;->doLoading(I)V
    invoke-static {v0, v1}, Lcom/htc/widget3d/weather/WeatherWidgetBase;->access$100(Lcom/htc/widget3d/weather/WeatherWidgetBase;I)V

    goto :goto_0

    .line 62
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
