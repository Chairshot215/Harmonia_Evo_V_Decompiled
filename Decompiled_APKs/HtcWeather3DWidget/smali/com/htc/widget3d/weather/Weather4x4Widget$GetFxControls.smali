.class Lcom/htc/widget3d/weather/Weather4x4Widget$GetFxControls;
.super Ljava/lang/Object;
.source "Weather4x4Widget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget3d/weather/Weather4x4Widget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetFxControls"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;


# direct methods
.method constructor <init>(Lcom/htc/widget3d/weather/Weather4x4Widget;)V
    .locals 0
    .parameter

    .prologue
    .line 1672
    iput-object p1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$GetFxControls;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1675
    invoke-static {}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Runnable : GetFxControls start"

    invoke-static {v0, v1}, Lcom/htc/widget3d/weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1676
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$GetFxControls;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    #calls: Lcom/htc/widget3d/weather/Weather4x4Widget;->initWeatherControl()V
    invoke-static {v0}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$1700(Lcom/htc/widget3d/weather/Weather4x4Widget;)V

    .line 1678
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$GetFxControls;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    #calls: Lcom/htc/widget3d/weather/Weather4x4Widget;->playCurrUI()V
    invoke-static {v0}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$1600(Lcom/htc/widget3d/weather/Weather4x4Widget;)V

    .line 1679
    invoke-static {}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Runnable : GetFxControls finished"

    invoke-static {v0, v1}, Lcom/htc/widget3d/weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1680
    return-void
.end method
