.class Lcom/htc/dockmode/weather/WeatherControl$2;
.super Ljava/lang/Object;
.source "WeatherControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dockmode/weather/WeatherControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dockmode/weather/WeatherControl;


# direct methods
.method constructor <init>(Lcom/htc/dockmode/weather/WeatherControl;)V
    .locals 0
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/htc/dockmode/weather/WeatherControl$2;->this$0:Lcom/htc/dockmode/weather/WeatherControl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 173
    iget-object v0, p0, Lcom/htc/dockmode/weather/WeatherControl$2;->this$0:Lcom/htc/dockmode/weather/WeatherControl;

    #getter for: Lcom/htc/dockmode/weather/WeatherControl;->mStopped:Z
    invoke-static {v0}, Lcom/htc/dockmode/weather/WeatherControl;->access$000(Lcom/htc/dockmode/weather/WeatherControl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/htc/dockmode/weather/WeatherControl$2;->this$0:Lcom/htc/dockmode/weather/WeatherControl;

    #getter for: Lcom/htc/dockmode/weather/WeatherControl;->mNonUIHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/dockmode/weather/WeatherControl;->access$400(Lcom/htc/dockmode/weather/WeatherControl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/dockmode/weather/WeatherControl$2;->this$0:Lcom/htc/dockmode/weather/WeatherControl;

    #getter for: Lcom/htc/dockmode/weather/WeatherControl;->mCityUpdate:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/htc/dockmode/weather/WeatherControl;->access$300(Lcom/htc/dockmode/weather/WeatherControl;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 176
    iget-object v0, p0, Lcom/htc/dockmode/weather/WeatherControl$2;->this$0:Lcom/htc/dockmode/weather/WeatherControl;

    const-wide/32 v1, 0x493e0

    #calls: Lcom/htc/dockmode/weather/WeatherControl;->scheduleWeatherFetchDelayed(J)V
    invoke-static {v0, v1, v2}, Lcom/htc/dockmode/weather/WeatherControl;->access$200(Lcom/htc/dockmode/weather/WeatherControl;J)V

    goto :goto_0
.end method
