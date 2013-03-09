.class Lcom/htc/dockmode/weather/WeatherControl$CityChangeObserver;
.super Landroid/database/ContentObserver;
.source "WeatherControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dockmode/weather/WeatherControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CityChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dockmode/weather/WeatherControl;


# direct methods
.method public constructor <init>(Lcom/htc/dockmode/weather/WeatherControl;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "h"

    .prologue
    .line 373
    iput-object p1, p0, Lcom/htc/dockmode/weather/WeatherControl$CityChangeObserver;->this$0:Lcom/htc/dockmode/weather/WeatherControl;

    .line 374
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 375
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 379
    iget-object v0, p0, Lcom/htc/dockmode/weather/WeatherControl$CityChangeObserver;->this$0:Lcom/htc/dockmode/weather/WeatherControl;

    #getter for: Lcom/htc/dockmode/weather/WeatherControl;->mStopped:Z
    invoke-static {v0}, Lcom/htc/dockmode/weather/WeatherControl;->access$000(Lcom/htc/dockmode/weather/WeatherControl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/htc/dockmode/weather/WeatherControl$CityChangeObserver;->this$0:Lcom/htc/dockmode/weather/WeatherControl;

    const/4 v1, 0x1

    #setter for: Lcom/htc/dockmode/weather/WeatherControl;->mCityChanged:Z
    invoke-static {v0, v1}, Lcom/htc/dockmode/weather/WeatherControl;->access$702(Lcom/htc/dockmode/weather/WeatherControl;Z)Z

    .line 384
    :goto_0
    return-void

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/htc/dockmode/weather/WeatherControl$CityChangeObserver;->this$0:Lcom/htc/dockmode/weather/WeatherControl;

    #getter for: Lcom/htc/dockmode/weather/WeatherControl;->mNonUIHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/dockmode/weather/WeatherControl;->access$400(Lcom/htc/dockmode/weather/WeatherControl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/dockmode/weather/WeatherControl$CityChangeObserver;->this$0:Lcom/htc/dockmode/weather/WeatherControl;

    #getter for: Lcom/htc/dockmode/weather/WeatherControl;->mCityUpdate:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/htc/dockmode/weather/WeatherControl;->access$300(Lcom/htc/dockmode/weather/WeatherControl;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
