.class Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl$1;
.super Lcom/htc/fusion/fx/MessageListener;
.source "Weather4x4Widget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;
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
.field final synthetic this$1:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;


# direct methods
.method constructor <init>(Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;)V
    .locals 0
    .parameter

    .prologue
    .line 1074
    iput-object p1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl$1;->this$1:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/htc/fusion/fx/FxPlaybackInfo;)V
    .locals 6
    .parameter "message"

    .prologue
    const v5, 0x7f060044

    const/high16 v4, 0x3f80

    const/4 v3, 0x1

    .line 1078
    invoke-static {}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainScene PlaybackComplete"

    invoke-static {v0, v1}, Lcom/htc/widget3d/weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl$1;->this$1:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    iget-object v0, v0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->mMainScene:Lcom/htc/fusion/fx/FxScene;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/htc/fusion/fx/FxPlaybackInfo;->name:Ljava/lang/String;

    const-string v1, "Build"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1080
    sget-boolean v0, Lcom/htc/widget3d/weather/WeatherWidgetBase;->isWidgetOnScreen:Z

    if-eqz v0, :cond_0

    .line 1082
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl$1;->this$1:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    iget-object v0, v0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->mMainScene:Lcom/htc/fusion/fx/FxScene;

    iget-object v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl$1;->this$1:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    iget-object v1, v1, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    #calls: Lcom/htc/widget3d/weather/Weather4x4Widget;->getResString(I)Ljava/lang/String;
    invoke-static {v1, v5}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$1000(Lcom/htc/widget3d/weather/Weather4x4Widget;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/htc/fusion/fx/FxScene;->playMarker(Ljava/lang/String;IFZ)V

    .line 1083
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl$1;->this$1:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    iget-object v0, v0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->m_TimelineRain:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_0

    .line 1085
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl$1;->this$1:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    iget-object v0, v0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->m_TimelineRain:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->setAsync(Z)V

    .line 1086
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl$1;->this$1:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    iget-object v0, v0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->m_TimelineRain:Lcom/htc/fusion/fx/FxTimelineControl;

    iget-object v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl$1;->this$1:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    iget-object v1, v1, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    #calls: Lcom/htc/widget3d/weather/Weather4x4Widget;->getResString(I)Ljava/lang/String;
    invoke-static {v1, v5}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$1000(Lcom/htc/widget3d/weather/Weather4x4Widget;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v4, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;IFZ)V

    .line 1091
    :cond_0
    return-void
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1074
    check-cast p1, Lcom/htc/fusion/fx/FxPlaybackInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl$1;->onMessageReceived(Lcom/htc/fusion/fx/FxPlaybackInfo;)V

    return-void
.end method
