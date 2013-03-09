.class Lcom/htc/dockmode/weather/WeatherControl$3;
.super Ljava/lang/Object;
.source "WeatherControl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 246
    iput-object p1, p0, Lcom/htc/dockmode/weather/WeatherControl$3;->this$0:Lcom/htc/dockmode/weather/WeatherControl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 249
    iget-object v0, p0, Lcom/htc/dockmode/weather/WeatherControl$3;->this$0:Lcom/htc/dockmode/weather/WeatherControl;

    #getter for: Lcom/htc/dockmode/weather/WeatherControl;->mTemperatureString:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/dockmode/weather/WeatherControl;->access$500(Lcom/htc/dockmode/weather/WeatherControl;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/dockmode/weather/WeatherControl$3;->this$0:Lcom/htc/dockmode/weather/WeatherControl;

    #getter for: Lcom/htc/dockmode/weather/WeatherControl;->mTemperatureString:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/dockmode/weather/WeatherControl;->access$500(Lcom/htc/dockmode/weather/WeatherControl;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/htc/dockmode/weather/WeatherControl$3;->this$0:Lcom/htc/dockmode/weather/WeatherControl;

    #calls: Lcom/htc/dockmode/weather/WeatherControl;->goToWeather()V
    invoke-static {v0}, Lcom/htc/dockmode/weather/WeatherControl;->access$600(Lcom/htc/dockmode/weather/WeatherControl;)V

    goto :goto_0
.end method
