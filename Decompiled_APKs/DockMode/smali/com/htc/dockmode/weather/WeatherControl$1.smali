.class Lcom/htc/dockmode/weather/WeatherControl$1;
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
    .line 127
    iput-object p1, p0, Lcom/htc/dockmode/weather/WeatherControl$1;->this$0:Lcom/htc/dockmode/weather/WeatherControl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 129
    iget-object v0, p0, Lcom/htc/dockmode/weather/WeatherControl$1;->this$0:Lcom/htc/dockmode/weather/WeatherControl;

    #getter for: Lcom/htc/dockmode/weather/WeatherControl;->mStopped:Z
    invoke-static {v0}, Lcom/htc/dockmode/weather/WeatherControl;->access$000(Lcom/htc/dockmode/weather/WeatherControl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/htc/dockmode/weather/WeatherControl$1;->this$0:Lcom/htc/dockmode/weather/WeatherControl;

    #calls: Lcom/htc/dockmode/weather/WeatherControl;->loadFormatAndScale()V
    invoke-static {v0}, Lcom/htc/dockmode/weather/WeatherControl;->access$100(Lcom/htc/dockmode/weather/WeatherControl;)V

    .line 132
    iget-object v0, p0, Lcom/htc/dockmode/weather/WeatherControl$1;->this$0:Lcom/htc/dockmode/weather/WeatherControl;

    const-wide/16 v1, 0x0

    #calls: Lcom/htc/dockmode/weather/WeatherControl;->scheduleWeatherFetchDelayed(J)V
    invoke-static {v0, v1, v2}, Lcom/htc/dockmode/weather/WeatherControl;->access$200(Lcom/htc/dockmode/weather/WeatherControl;J)V

    goto :goto_0
.end method
