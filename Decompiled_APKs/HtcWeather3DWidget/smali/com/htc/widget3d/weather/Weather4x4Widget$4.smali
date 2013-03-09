.class Lcom/htc/widget3d/weather/Weather4x4Widget$4;
.super Landroid/content/BroadcastReceiver;
.source "Weather4x4Widget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget3d/weather/Weather4x4Widget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;


# direct methods
.method constructor <init>(Lcom/htc/widget3d/weather/Weather4x4Widget;)V
    .locals 0
    .parameter

    .prologue
    .line 1780
    iput-object p1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$4;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "arg0"
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    .line 1783
    invoke-static {}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mDatareceiver received action = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1785
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1787
    .local v0, action:Ljava/lang/String;
    const-string v4, "com.htc.sync.provider.weather.SETTINGS_UPDATED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1788
    invoke-static {}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v5, "received weather setting changed"

    invoke-static {v4, v5}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1790
    invoke-virtual {p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    .line 1792
    .local v1, categories:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v4, "com.htc.sync.provider.weather.setting.temperatureunit"

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1793
    const-string v4, "settingData"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1794
    .local v3, scale:Ljava/lang/String;
    const-string v4, "c"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lcom/htc/widget3d/weather/data/City$UNIT;->_C:Lcom/htc/widget3d/weather/data/City$UNIT;

    :goto_0
    sput-object v4, Lcom/htc/widget3d/weather/WeatherWidgetBase;->default_unit:Lcom/htc/widget3d/weather/data/City$UNIT;

    .line 1796
    iget-object v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$4;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    invoke-virtual {v4}, Lcom/htc/widget3d/weather/Weather4x4Widget;->startFetchData()V

    .line 1797
    invoke-static {}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Temperature cal = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1800
    .end local v3           #scale:Ljava/lang/String;
    :cond_0
    const-string v4, "com.htc.sync.provider.weather.setting.soundeffect"

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1801
    const-string v4, "settingData"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1802
    .local v2, isPlay:Ljava/lang/String;
    const-string v4, "true"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    sput-boolean v4, Lcom/htc/widget3d/weather/WeatherWidgetBase;->isSoundEffectEnabled:Z

    .line 1803
    iget-object v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$4;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    iget-object v4, v4, Lcom/htc/widget3d/weather/Weather4x4Widget;->mSoundEffect:Lcom/htc/Weather/SoundEffect;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$4;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    iget-object v4, v4, Lcom/htc/widget3d/weather/Weather4x4Widget;->mSoundEffect:Lcom/htc/Weather/SoundEffect;

    sget-boolean v5, Lcom/htc/widget3d/weather/WeatherWidgetBase;->isSoundEffectEnabled:Z

    invoke-virtual {v4, v5}, Lcom/htc/Weather/SoundEffect;->setSoundOn(Z)V

    .line 1804
    :cond_1
    invoke-static {}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isSoundEffectEnabled == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/htc/widget3d/weather/WeatherWidgetBase;->isSoundEffectEnabled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1823
    .end local v1           #categories:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2           #isPlay:Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 1794
    .restart local v1       #categories:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v3       #scale:Ljava/lang/String;
    :cond_3
    sget-object v4, Lcom/htc/widget3d/weather/data/City$UNIT;->_F:Lcom/htc/widget3d/weather/data/City$UNIT;

    goto :goto_0

    .line 1807
    .end local v1           #categories:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3           #scale:Ljava/lang/String;
    :cond_4
    const-string v4, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1808
    invoke-static {}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v5, "OnReceive -Time format Change"

    invoke-static {v4, v5}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1809
    iget-object v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$4;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    #calls: Lcom/htc/widget3d/weather/Weather4x4Widget;->resetUpdateTime()V
    invoke-static {v4}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$1800(Lcom/htc/widget3d/weather/Weather4x4Widget;)V

    goto :goto_1

    .line 1811
    :cond_5
    const-string v4, "android.intent.action.TIMEFORMAT_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1812
    invoke-static {}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v5, "OnReceive -TIMEFORMAT_CHANGED"

    invoke-static {v4, v5}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1813
    iget-object v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$4;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    #calls: Lcom/htc/widget3d/weather/Weather4x4Widget;->resetUpdateTime()V
    invoke-static {v4}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$1800(Lcom/htc/widget3d/weather/Weather4x4Widget;)V

    goto :goto_1

    .line 1816
    :cond_6
    invoke-static {}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v5, "set mIsCityChanged = true"

    invoke-static {v4, v5}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1817
    iget-object v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$4;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    #setter for: Lcom/htc/widget3d/weather/Weather4x4Widget;->mIsCityChanged:Z
    invoke-static {v4, v7}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$1902(Lcom/htc/widget3d/weather/Weather4x4Widget;Z)Z

    .line 1818
    const-string v4, "com.htc.Weather.add_location_changed"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1819
    iget-object v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$4;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    #setter for: Lcom/htc/widget3d/weather/Weather4x4Widget;->m_bAddCity:Z
    invoke-static {v4, v7}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$2002(Lcom/htc/widget3d/weather/Weather4x4Widget;Z)Z

    goto :goto_1

    .line 1821
    :cond_7
    iget-object v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$4;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    const/4 v5, 0x0

    #setter for: Lcom/htc/widget3d/weather/Weather4x4Widget;->m_bAddCity:Z
    invoke-static {v4, v5}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$2002(Lcom/htc/widget3d/weather/Weather4x4Widget;Z)Z

    goto :goto_1
.end method
