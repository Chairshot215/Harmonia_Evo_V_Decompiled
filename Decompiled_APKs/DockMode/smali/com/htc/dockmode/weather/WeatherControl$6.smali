.class Lcom/htc/dockmode/weather/WeatherControl$6;
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
    .line 561
    iput-object p1, p0, Lcom/htc/dockmode/weather/WeatherControl$6;->this$0:Lcom/htc/dockmode/weather/WeatherControl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/htc/dockmode/weather/WeatherControl$6;->this$0:Lcom/htc/dockmode/weather/WeatherControl;

    invoke-virtual {v0}, Lcom/htc/dockmode/weather/WeatherControl;->updateWeatherDisplay()V

    .line 566
    return-void
.end method
