.class Lcom/htc/Weather/WeatherModel$prepareWeatherProvider_thread;
.super Ljava/lang/Thread;
.source "WeatherModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/Weather/WeatherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "prepareWeatherProvider_thread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/Weather/WeatherModel;


# direct methods
.method public constructor <init>(Lcom/htc/Weather/WeatherModel;)V
    .locals 0
    .parameter

    .prologue
    .line 353
    iput-object p1, p0, Lcom/htc/Weather/WeatherModel$prepareWeatherProvider_thread;->this$0:Lcom/htc/Weather/WeatherModel;

    .line 354
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 355
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/htc/Weather/WeatherModel$prepareWeatherProvider_thread;->this$0:Lcom/htc/Weather/WeatherModel;

    #getter for: Lcom/htc/Weather/WeatherModel;->mTerminated:Z
    invoke-static {v0}, Lcom/htc/Weather/WeatherModel;->access$100(Lcom/htc/Weather/WeatherModel;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/htc/Weather/WeatherModel$prepareWeatherProvider_thread;->this$0:Lcom/htc/Weather/WeatherModel;

    #calls: Lcom/htc/Weather/WeatherModel;->prepareWeatherProvider()Z
    invoke-static {v0}, Lcom/htc/Weather/WeatherModel;->access$200(Lcom/htc/Weather/WeatherModel;)Z

    .line 360
    :cond_0
    return-void
.end method
