.class Lcom/htc/widget3d/weather/Weather2x2Widget$1;
.super Lcom/htc/fusion/fx/MessageListener;
.source "Weather2x2Widget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget3d/weather/Weather2x2Widget;->setHitBox()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/fusion/fx/MessageListener",
        "<",
        "Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget3d/weather/Weather2x2Widget;


# direct methods
.method constructor <init>(Lcom/htc/widget3d/weather/Weather2x2Widget;)V
    .locals 0
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, Lcom/htc/widget3d/weather/Weather2x2Widget$1;->this$0:Lcom/htc/widget3d/weather/Weather2x2Widget;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;)V
    .locals 5
    .parameter "message"

    .prologue
    .line 226
    const-string v2, "WeatherWidget2x2"

    const-string v3, "hitBox on Tap"

    invoke-static {v2, v3}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.Weather.intent.action.LOCATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 229
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 230
    const-string v2, "com.htc.Weather"

    const-string v3, "com.htc.Weather.WeatherActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    iget-object v2, p0, Lcom/htc/widget3d/weather/Weather2x2Widget$1;->this$0:Lcom/htc/widget3d/weather/Weather2x2Widget;

    iget-object v2, v2, Lcom/htc/widget3d/weather/Weather2x2Widget;->mCityInfo:Lcom/htc/widget3d/weather/data/CityInfo;

    if-eqz v2, :cond_0

    .line 233
    const-string v2, "name_"

    iget-object v3, p0, Lcom/htc/widget3d/weather/Weather2x2Widget$1;->this$0:Lcom/htc/widget3d/weather/Weather2x2Widget;

    iget-object v3, v3, Lcom/htc/widget3d/weather/Weather2x2Widget;->mCityInfo:Lcom/htc/widget3d/weather/data/CityInfo;

    invoke-virtual {v3}, Lcom/htc/widget3d/weather/data/CityInfo;->getCityName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    iget-object v2, p0, Lcom/htc/widget3d/weather/Weather2x2Widget$1;->this$0:Lcom/htc/widget3d/weather/Weather2x2Widget;

    iget-object v2, v2, Lcom/htc/widget3d/weather/Weather2x2Widget;->mCityInfo:Lcom/htc/widget3d/weather/data/CityInfo;

    invoke-virtual {v2}, Lcom/htc/widget3d/weather/data/CityInfo;->getLocationInfo()Lcom/htc/util/weather/WeatherLocation;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 236
    const-string v2, "code_"

    iget-object v3, p0, Lcom/htc/widget3d/weather/Weather2x2Widget$1;->this$0:Lcom/htc/widget3d/weather/Weather2x2Widget;

    iget-object v3, v3, Lcom/htc/widget3d/weather/Weather2x2Widget;->mCityInfo:Lcom/htc/widget3d/weather/data/CityInfo;

    invoke-virtual {v3}, Lcom/htc/widget3d/weather/data/CityInfo;->getLocationInfo()Lcom/htc/util/weather/WeatherLocation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/util/weather/WeatherLocation;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    const-string v2, "app_"

    iget-object v3, p0, Lcom/htc/widget3d/weather/Weather2x2Widget$1;->this$0:Lcom/htc/widget3d/weather/Weather2x2Widget;

    iget-object v3, v3, Lcom/htc/widget3d/weather/Weather2x2Widget;->mCityInfo:Lcom/htc/widget3d/weather/data/CityInfo;

    invoke-virtual {v3}, Lcom/htc/widget3d/weather/data/CityInfo;->getLocationInfo()Lcom/htc/util/weather/WeatherLocation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/util/weather/WeatherLocation;->getApp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    :cond_0
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 241
    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 243
    :try_start_0
    iget-object v2, p0, Lcom/htc/widget3d/weather/Weather2x2Widget$1;->this$0:Lcom/htc/widget3d/weather/Weather2x2Widget;

    #calls: Lcom/htc/widget3d/weather/Weather2x2Widget;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;
    invoke-static {v2}, Lcom/htc/widget3d/weather/Weather2x2Widget;->access$000(Lcom/htc/widget3d/weather/Weather2x2Widget;)Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/android/rosie/widget/Widget$Host;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    :cond_1
    :goto_0
    return-void

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, e:Landroid/content/ActivityNotFoundException;
    iget-object v2, p0, Lcom/htc/widget3d/weather/Weather2x2Widget$1;->this$0:Lcom/htc/widget3d/weather/Weather2x2Widget;

    #calls: Lcom/htc/widget3d/weather/Weather2x2Widget;->getContext()Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/widget3d/weather/Weather2x2Widget;->access$100(Lcom/htc/widget3d/weather/Weather2x2Widget;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f060069

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 223
    check-cast p1, Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/widget3d/weather/Weather2x2Widget$1;->onMessageReceived(Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;)V

    return-void
.end method
