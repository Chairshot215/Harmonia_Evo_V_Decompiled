.class Lcom/htc/android/worldclock/TimeZonePicker$2;
.super Landroid/os/Handler;
.source "TimeZonePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/TimeZonePicker;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/TimeZonePicker;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/TimeZonePicker;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 175
    iput-object p1, p0, Lcom/htc/android/worldclock/TimeZonePicker$2;->this$0:Lcom/htc/android/worldclock/TimeZonePicker;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 178
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 179
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 190
    :goto_0
    return-void

    .line 181
    :pswitch_0
    iget-object v0, p0, Lcom/htc/android/worldclock/TimeZonePicker$2;->this$0:Lcom/htc/android/worldclock/TimeZonePicker;

    #calls: Lcom/htc/android/worldclock/TimeZonePicker;->onInitParent()V
    invoke-static {v0}, Lcom/htc/android/worldclock/TimeZonePicker;->access$200(Lcom/htc/android/worldclock/TimeZonePicker;)V

    goto :goto_0

    .line 184
    :pswitch_1
    iget-object v1, p0, Lcom/htc/android/worldclock/TimeZonePicker$2;->this$0:Lcom/htc/android/worldclock/TimeZonePicker;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Lcom/htc/util/weather/WeatherLocation;

    check-cast v0, [Lcom/htc/util/weather/WeatherLocation;

    #calls: Lcom/htc/android/worldclock/TimeZonePicker;->addCityToDB([Lcom/htc/util/weather/WeatherLocation;)V
    invoke-static {v1, v0}, Lcom/htc/android/worldclock/TimeZonePicker;->access$300(Lcom/htc/android/worldclock/TimeZonePicker;[Lcom/htc/util/weather/WeatherLocation;)V

    goto :goto_0

    .line 187
    :pswitch_2
    iget-object v1, p0, Lcom/htc/android/worldclock/TimeZonePicker$2;->this$0:Lcom/htc/android/worldclock/TimeZonePicker;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Lcom/htc/util/weather/WeatherLocation;

    check-cast v0, [Lcom/htc/util/weather/WeatherLocation;

    #calls: Lcom/htc/android/worldclock/TimeZonePicker;->setHomeToDB([Lcom/htc/util/weather/WeatherLocation;)V
    invoke-static {v1, v0}, Lcom/htc/android/worldclock/TimeZonePicker;->access$400(Lcom/htc/android/worldclock/TimeZonePicker;[Lcom/htc/util/weather/WeatherLocation;)V

    goto :goto_0

    .line 179
    nop

    :pswitch_data_0
    .packed-switch 0x2bc
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
