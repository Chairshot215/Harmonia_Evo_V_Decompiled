.class Lcom/htc/weatheridlescreen/data/WeatherDataLoader$3;
.super Landroid/content/BroadcastReceiver;
.source "WeatherDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->initTempUnitReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/weatheridlescreen/data/WeatherDataLoader;


# direct methods
.method constructor <init>(Lcom/htc/weatheridlescreen/data/WeatherDataLoader;)V
    .locals 0
    .parameter

    .prologue
    .line 331
    iput-object p1, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader$3;->this$0:Lcom/htc/weatheridlescreen/data/WeatherDataLoader;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x3

    .line 334
    if-nez p2, :cond_1

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 336
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 338
    .local v0, mAction:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "com.htc.sync.provider.weather.SETTINGS_UPDATED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 339
    const-string v2, "settingData"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 340
    .local v1, temperatureUnit:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 342
    iget-object v2, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader$3;->this$0:Lcom/htc/weatheridlescreen/data/WeatherDataLoader;

    #getter for: Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mNonUIHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->access$600(Lcom/htc/weatheridlescreen/data/WeatherDataLoader;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 343
    iget-object v2, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader$3;->this$0:Lcom/htc/weatheridlescreen/data/WeatherDataLoader;

    #getter for: Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mNonUIHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->access$600(Lcom/htc/weatheridlescreen/data/WeatherDataLoader;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 344
    iget-object v2, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader$3;->this$0:Lcom/htc/weatheridlescreen/data/WeatherDataLoader;

    #getter for: Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mNonUIHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->access$600(Lcom/htc/weatheridlescreen/data/WeatherDataLoader;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 345
    iget-object v2, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader$3;->this$0:Lcom/htc/weatheridlescreen/data/WeatherDataLoader;

    #getter for: Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mNonUIHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->access$600(Lcom/htc/weatheridlescreen/data/WeatherDataLoader;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
