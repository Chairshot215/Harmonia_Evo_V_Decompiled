.class Lcom/htc/widget3d/weather/Weather4x4Widget$3;
.super Lcom/htc/fusion/fx/MessageListener;
.source "Weather4x4Widget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget3d/weather/Weather4x4Widget;->setHitBox()V
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
.field final synthetic this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;


# direct methods
.method constructor <init>(Lcom/htc/widget3d/weather/Weather4x4Widget;)V
    .locals 0
    .parameter

    .prologue
    .line 701
    iput-object p1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$3;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;)V
    .locals 5
    .parameter "message"

    .prologue
    .line 704
    invoke-static {}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "hitBox on Tap"

    invoke-static {v3, v4}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.htc.Weather.intent.action.LOCATE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 707
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 709
    const-string v3, "com.htc.Weather"

    const-string v4, "com.htc.Weather.WeatherActivity"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 712
    const-string v3, "_city_index"

    iget-object v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$3;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    #getter for: Lcom/htc/widget3d/weather/Weather4x4Widget;->mNextIndex:I
    invoke-static {v4}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$300(Lcom/htc/widget3d/weather/Weather4x4Widget;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 714
    iget-object v3, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$3;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    iget-object v3, v3, Lcom/htc/widget3d/weather/Weather4x4Widget;->mModel:Lcom/htc/widget3d/weather/data/WeatherModel;

    iget-object v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$3;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    #getter for: Lcom/htc/widget3d/weather/Weather4x4Widget;->mNextIndex:I
    invoke-static {v4}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$300(Lcom/htc/widget3d/weather/Weather4x4Widget;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/htc/widget3d/weather/data/WeatherModel;->get(I)Lcom/htc/widget3d/weather/data/CityInfo;

    move-result-object v2

    .line 715
    .local v2, mCityInfo:Lcom/htc/widget3d/weather/data/CityInfo;
    if-eqz v2, :cond_0

    .line 716
    const-string v3, "name_"

    invoke-virtual {v2}, Lcom/htc/widget3d/weather/data/CityInfo;->getCityName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 717
    invoke-virtual {v2}, Lcom/htc/widget3d/weather/data/CityInfo;->getLocationInfo()Lcom/htc/util/weather/WeatherLocation;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 718
    const-string v3, "app_"

    invoke-virtual {v2}, Lcom/htc/widget3d/weather/data/CityInfo;->getLocationInfo()Lcom/htc/util/weather/WeatherLocation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/util/weather/WeatherLocation;->getApp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 720
    :cond_0
    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 721
    const/high16 v3, 0x400

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 723
    :try_start_0
    iget-object v3, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$3;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    #calls: Lcom/htc/widget3d/weather/Weather4x4Widget;->getContext()Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$800(Lcom/htc/widget3d/weather/Weather4x4Widget;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 729
    .end local v2           #mCityInfo:Lcom/htc/widget3d/weather/data/CityInfo;
    :cond_1
    :goto_0
    return-void

    .line 724
    .restart local v2       #mCityInfo:Lcom/htc/widget3d/weather/data/CityInfo;
    :catch_0
    move-exception v0

    .line 725
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-static {}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Weather Activity not found"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 701
    check-cast p1, Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/widget3d/weather/Weather4x4Widget$3;->onMessageReceived(Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;)V

    return-void
.end method
