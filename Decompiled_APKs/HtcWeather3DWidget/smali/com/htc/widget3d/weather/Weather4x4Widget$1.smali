.class Lcom/htc/widget3d/weather/Weather4x4Widget$1;
.super Lcom/htc/fusion/fx/MessageListener;
.source "Weather4x4Widget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget3d/weather/Weather4x4Widget;->initWeatherControl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/fusion/fx/MessageListener",
        "<",
        "Lcom/htc/fusion/fx/FxPlaybackInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;


# direct methods
.method constructor <init>(Lcom/htc/widget3d/weather/Weather4x4Widget;)V
    .locals 0
    .parameter

    .prologue
    .line 620
    iput-object p1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$1;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/htc/fusion/fx/FxPlaybackInfo;)V
    .locals 4
    .parameter "message"

    .prologue
    const/4 v3, 0x0

    .line 624
    invoke-static {}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, " NextWeatherControl FxPlaybackInfo.onMessageReceived"

    invoke-static {v1, v2}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    iget-object v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$1;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    #getter for: Lcom/htc/widget3d/weather/Weather4x4Widget;->m_bSwipeCity:Z
    invoke-static {v1}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$200(Lcom/htc/widget3d/weather/Weather4x4Widget;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 628
    invoke-static {}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, " need to do next-current scene switch"

    invoke-static {v1, v2}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    iget-object v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$1;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    iget-object v2, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$1;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    #getter for: Lcom/htc/widget3d/weather/Weather4x4Widget;->mNextIndex:I
    invoke-static {v2}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$300(Lcom/htc/widget3d/weather/Weather4x4Widget;)I

    move-result v2

    iput v2, v1, Lcom/htc/widget3d/weather/Weather4x4Widget;->mCurrIndex:I

    .line 630
    iget-object v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$1;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    #getter for: Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxCurWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;
    invoke-static {v1}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$400(Lcom/htc/widget3d/weather/Weather4x4Widget;)Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    move-result-object v0

    .line 631
    .local v0, temp:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;
    iget-object v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$1;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    iget-object v2, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$1;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    #getter for: Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxNextWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;
    invoke-static {v2}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$500(Lcom/htc/widget3d/weather/Weather4x4Widget;)Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    move-result-object v2

    #setter for: Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxCurWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;
    invoke-static {v1, v2}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$402(Lcom/htc/widget3d/weather/Weather4x4Widget;Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;)Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    .line 632
    iget-object v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$1;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    #setter for: Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxNextWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;
    invoke-static {v1, v0}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$502(Lcom/htc/widget3d/weather/Weather4x4Widget;Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;)Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    .line 633
    iget-object v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$1;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    #getter for: Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxCurWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;
    invoke-static {v1}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$400(Lcom/htc/widget3d/weather/Weather4x4Widget;)Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->setVisilbe(Z)V

    .line 634
    iget-object v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$1;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    #getter for: Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxNextWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;
    invoke-static {v1}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$500(Lcom/htc/widget3d/weather/Weather4x4Widget;)Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->setVisilbe(Z)V

    .line 635
    iget-object v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$1;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    #getter for: Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxNextWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;
    invoke-static {v1}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$500(Lcom/htc/widget3d/weather/Weather4x4Widget;)Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->stop()V

    .line 636
    iget-object v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$1;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    #setter for: Lcom/htc/widget3d/weather/Weather4x4Widget;->m_bSwipeCity:Z
    invoke-static {v1, v3}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$202(Lcom/htc/widget3d/weather/Weather4x4Widget;Z)Z

    .line 639
    iget-object v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$1;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    iget-boolean v1, v1, Lcom/htc/widget3d/weather/Weather4x4Widget;->mDoLoading:Z

    if-eqz v1, :cond_0

    .line 640
    iget-object v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$1;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    iget-object v2, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$1;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    iget v2, v2, Lcom/htc/widget3d/weather/Weather4x4Widget;->mCurrIndex:I

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget3d/weather/Weather4x4Widget;->stopLoading(IZ)V

    .line 642
    .end local v0           #temp:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;
    :cond_0
    return-void
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 620
    check-cast p1, Lcom/htc/fusion/fx/FxPlaybackInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/widget3d/weather/Weather4x4Widget$1;->onMessageReceived(Lcom/htc/fusion/fx/FxPlaybackInfo;)V

    return-void
.end method
