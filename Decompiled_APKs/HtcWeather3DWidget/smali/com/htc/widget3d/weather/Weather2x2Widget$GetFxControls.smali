.class Lcom/htc/widget3d/weather/Weather2x2Widget$GetFxControls;
.super Ljava/lang/Object;
.source "Weather2x2Widget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget3d/weather/Weather2x2Widget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetFxControls"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget3d/weather/Weather2x2Widget;


# direct methods
.method constructor <init>(Lcom/htc/widget3d/weather/Weather2x2Widget;)V
    .locals 0
    .parameter

    .prologue
    .line 312
    iput-object p1, p0, Lcom/htc/widget3d/weather/Weather2x2Widget$GetFxControls;->this$0:Lcom/htc/widget3d/weather/Weather2x2Widget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const v3, 0x7f06005b

    .line 314
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather2x2Widget$GetFxControls;->this$0:Lcom/htc/widget3d/weather/Weather2x2Widget;

    #calls: Lcom/htc/widget3d/weather/Weather2x2Widget;->initWeatherControl()V
    invoke-static {v0}, Lcom/htc/widget3d/weather/Weather2x2Widget;->access$200(Lcom/htc/widget3d/weather/Weather2x2Widget;)V

    .line 315
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather2x2Widget$GetFxControls;->this$0:Lcom/htc/widget3d/weather/Weather2x2Widget;

    #getter for: Lcom/htc/widget3d/weather/Weather2x2Widget;->isWeatherDataAvalible:Z
    invoke-static {v0}, Lcom/htc/widget3d/weather/Weather2x2Widget;->access$300(Lcom/htc/widget3d/weather/Weather2x2Widget;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather2x2Widget$GetFxControls;->this$0:Lcom/htc/widget3d/weather/Weather2x2Widget;

    #calls: Lcom/htc/widget3d/weather/Weather2x2Widget;->initWeatherState()V
    invoke-static {v0}, Lcom/htc/widget3d/weather/Weather2x2Widget;->access$400(Lcom/htc/widget3d/weather/Weather2x2Widget;)V

    .line 325
    :goto_0
    return-void

    .line 319
    :cond_0
    const-string v0, "WeatherWidget2x2"

    const-string v1, "No weather data"

    invoke-static {v0, v1}, Lcom/htc/widget3d/weather/util/LOG;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather2x2Widget$GetFxControls;->this$0:Lcom/htc/widget3d/weather/Weather2x2Widget;

    iget-object v0, v0, Lcom/htc/widget3d/weather/Weather2x2Widget;->mCityInfo:Lcom/htc/widget3d/weather/data/CityInfo;

    invoke-virtual {v0}, Lcom/htc/widget3d/weather/data/CityInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 321
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather2x2Widget$GetFxControls;->this$0:Lcom/htc/widget3d/weather/Weather2x2Widget;

    iget-object v1, p0, Lcom/htc/widget3d/weather/Weather2x2Widget$GetFxControls;->this$0:Lcom/htc/widget3d/weather/Weather2x2Widget;

    iget-object v1, v1, Lcom/htc/widget3d/weather/Weather2x2Widget;->mCityInfo:Lcom/htc/widget3d/weather/data/CityInfo;

    invoke-virtual {v1}, Lcom/htc/widget3d/weather/data/CityInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/widget3d/weather/Weather2x2Widget$GetFxControls;->this$0:Lcom/htc/widget3d/weather/Weather2x2Widget;

    #calls: Lcom/htc/widget3d/weather/Weather2x2Widget;->getContext()Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/widget3d/weather/Weather2x2Widget;->access$500(Lcom/htc/widget3d/weather/Weather2x2Widget;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget3d/weather/Weather2x2Widget;->playEmptyPage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 323
    :cond_1
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather2x2Widget$GetFxControls;->this$0:Lcom/htc/widget3d/weather/Weather2x2Widget;

    const-string v1, ""

    iget-object v2, p0, Lcom/htc/widget3d/weather/Weather2x2Widget$GetFxControls;->this$0:Lcom/htc/widget3d/weather/Weather2x2Widget;

    #calls: Lcom/htc/widget3d/weather/Weather2x2Widget;->getContext()Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/widget3d/weather/Weather2x2Widget;->access$600(Lcom/htc/widget3d/weather/Weather2x2Widget;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget3d/weather/Weather2x2Widget;->playEmptyPage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
