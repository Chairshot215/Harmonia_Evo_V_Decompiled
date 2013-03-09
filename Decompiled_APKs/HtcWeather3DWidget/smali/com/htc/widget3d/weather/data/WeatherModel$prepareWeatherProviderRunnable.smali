.class Lcom/htc/widget3d/weather/data/WeatherModel$prepareWeatherProviderRunnable;
.super Ljava/lang/Object;
.source "WeatherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget3d/weather/data/WeatherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "prepareWeatherProviderRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget3d/weather/data/WeatherModel;


# direct methods
.method public constructor <init>(Lcom/htc/widget3d/weather/data/WeatherModel;)V
    .locals 0
    .parameter

    .prologue
    .line 388
    iput-object p1, p0, Lcom/htc/widget3d/weather/data/WeatherModel$prepareWeatherProviderRunnable;->this$0:Lcom/htc/widget3d/weather/data/WeatherModel;

    .line 389
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 390
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/WeatherModel$prepareWeatherProviderRunnable;->this$0:Lcom/htc/widget3d/weather/data/WeatherModel;

    #getter for: Lcom/htc/widget3d/weather/data/WeatherModel;->mTerminated:Z
    invoke-static {v0}, Lcom/htc/widget3d/weather/data/WeatherModel;->access$100(Lcom/htc/widget3d/weather/data/WeatherModel;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/WeatherModel$prepareWeatherProviderRunnable;->this$0:Lcom/htc/widget3d/weather/data/WeatherModel;

    #calls: Lcom/htc/widget3d/weather/data/WeatherModel;->prepareWeatherProvider()Z
    invoke-static {v0}, Lcom/htc/widget3d/weather/data/WeatherModel;->access$200(Lcom/htc/widget3d/weather/data/WeatherModel;)Z

    .line 395
    :cond_0
    return-void
.end method
