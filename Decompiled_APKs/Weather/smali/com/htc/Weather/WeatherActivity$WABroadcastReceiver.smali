.class public Lcom/htc/Weather/WeatherActivity$WABroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WeatherActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/Weather/WeatherActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WABroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/Weather/WeatherActivity;


# direct methods
.method public constructor <init>(Lcom/htc/Weather/WeatherActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1215
    iput-object p1, p0, Lcom/htc/Weather/WeatherActivity$WABroadcastReceiver;->this$0:Lcom/htc/Weather/WeatherActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "arg0"
    .parameter "intent"

    .prologue
    .line 1219
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1221
    .local v0, action:Ljava/lang/String;
    const-string v6, "com.htc.sync.provider.weather.SETTINGS_UPDATED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1222
    const-string v6, "WeatherMaGroup"

    const-string v7, "WMMBroadcastReceiver onReceive - SETTING_INTENT_ACTION_NAME"

    invoke-static {v6, v7}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    invoke-virtual {p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    .line 1226
    .local v1, categories:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v6, "com.htc.sync.provider.weather.setting.temperatureunit"

    invoke-interface {v1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1227
    const-string v6, "settingData"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1228
    .local v3, scale:Ljava/lang/String;
    const-string v6, "c"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    sget-object v6, Lcom/htc/Weather/data/City$UNIT;->_C:Lcom/htc/Weather/data/City$UNIT;

    :goto_0
    sput-object v6, Lcom/htc/Weather/WeatherActivity;->default_unit:Lcom/htc/Weather/data/City$UNIT;

    .line 1229
    iget-object v6, p0, Lcom/htc/Weather/WeatherActivity$WABroadcastReceiver;->this$0:Lcom/htc/Weather/WeatherActivity;

    sget v7, Lcom/htc/Weather/WeatherActivity;->mCurrCityIndex:I

    #calls: Lcom/htc/Weather/WeatherActivity;->updateUIData(I)V
    invoke-static {v6, v7}, Lcom/htc/Weather/WeatherActivity;->access$200(Lcom/htc/Weather/WeatherActivity;I)V

    .line 1230
    const-string v6, "WeatherMaGroup"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Temperature cal = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1233
    .end local v3           #scale:Ljava/lang/String;
    :cond_0
    const-string v6, "com.htc.sync.provider.weather.setting.soundeffect"

    invoke-interface {v1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1234
    const-string v6, "settingData"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1235
    .local v2, isPlay:Ljava/lang/String;
    const-string v6, "true"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    sput-boolean v6, Lcom/htc/Weather/WeatherActivity;->isSoundEffectEnabled:Z

    .line 1236
    iget-object v6, p0, Lcom/htc/Weather/WeatherActivity$WABroadcastReceiver;->this$0:Lcom/htc/Weather/WeatherActivity;

    #getter for: Lcom/htc/Weather/WeatherActivity;->mSoundEffect:Lcom/htc/Weather/SoundEffect;
    invoke-static {v6}, Lcom/htc/Weather/WeatherActivity;->access$2800(Lcom/htc/Weather/WeatherActivity;)Lcom/htc/Weather/SoundEffect;

    move-result-object v6

    sget-boolean v7, Lcom/htc/Weather/WeatherActivity;->isSoundEffectEnabled:Z

    invoke-virtual {v6, v7}, Lcom/htc/Weather/SoundEffect;->setSoundOn(Z)V

    .line 1237
    const-string v6, "WeatherMaGroup"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isSoundEffectEnabled == "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/htc/Weather/WeatherActivity;->isSoundEffectEnabled:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1240
    .end local v1           #categories:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2           #isPlay:Ljava/lang/String;
    :cond_1
    const-string v6, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1241
    const-string v6, "WeatherMaGroup"

    const-string v7, "WMMBroadcastReceiver onReceive - ACTION_TIME_CHANGED"

    invoke-static {v6, v7}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1242
    iget-object v6, p0, Lcom/htc/Weather/WeatherActivity$WABroadcastReceiver;->this$0:Lcom/htc/Weather/WeatherActivity;

    invoke-virtual {v6}, Lcom/htc/Weather/WeatherActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "time_12_24"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1244
    .local v5, time:Ljava/lang/String;
    const-string v6, "WeatherMaGroup"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Settings.System.TIME_12_24 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1246
    if-eqz v5, :cond_6

    .line 1248
    const-string v6, "12"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1249
    sget-object v4, Lcom/htc/Weather/data/City$TIME;->_TIME_12:Lcom/htc/Weather/data/City$TIME;

    .line 1253
    .local v4, setting_time:Lcom/htc/Weather/data/City$TIME;
    :goto_1
    sget-object v6, Lcom/htc/Weather/WeatherActivity;->default_time_12_24:Lcom/htc/Weather/data/City$TIME;

    if-ne v6, v4, :cond_5

    .line 1267
    .end local v4           #setting_time:Lcom/htc/Weather/data/City$TIME;
    .end local v5           #time:Ljava/lang/String;
    :cond_2
    :goto_2
    return-void

    .line 1228
    .restart local v1       #categories:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v3       #scale:Ljava/lang/String;
    :cond_3
    sget-object v6, Lcom/htc/Weather/data/City$UNIT;->_F:Lcom/htc/Weather/data/City$UNIT;

    goto/16 :goto_0

    .line 1251
    .end local v1           #categories:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3           #scale:Ljava/lang/String;
    .restart local v5       #time:Ljava/lang/String;
    :cond_4
    sget-object v4, Lcom/htc/Weather/data/City$TIME;->_TIME_24:Lcom/htc/Weather/data/City$TIME;

    .restart local v4       #setting_time:Lcom/htc/Weather/data/City$TIME;
    goto :goto_1

    .line 1256
    :cond_5
    sput-object v4, Lcom/htc/Weather/WeatherActivity;->default_time_12_24:Lcom/htc/Weather/data/City$TIME;

    .line 1257
    iget-object v6, p0, Lcom/htc/Weather/WeatherActivity$WABroadcastReceiver;->this$0:Lcom/htc/Weather/WeatherActivity;

    sget v7, Lcom/htc/Weather/WeatherActivity;->mCurrCityIndex:I

    #calls: Lcom/htc/Weather/WeatherActivity;->updateUIData(I)V
    invoke-static {v6, v7}, Lcom/htc/Weather/WeatherActivity;->access$200(Lcom/htc/Weather/WeatherActivity;I)V

    .line 1263
    .end local v4           #setting_time:Lcom/htc/Weather/data/City$TIME;
    .end local v5           #time:Ljava/lang/String;
    :cond_6
    const-string v6, "com.htc.Weather.intent.action.ADD_LOCATION"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1264
    const-string v6, "WeatherMaGroup"

    const-string v7, "WMMBroadcastReceiver onReceive - ACTION_INTENT_ADD_LOCATION"

    invoke-static {v6, v7}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1265
    iget-object v6, p0, Lcom/htc/Weather/WeatherActivity$WABroadcastReceiver;->this$0:Lcom/htc/Weather/WeatherActivity;

    const/4 v7, 0x1

    const/4 v8, 0x4

    const/4 v9, 0x0

    #calls: Lcom/htc/Weather/WeatherActivity;->sendToDataHandler(ZILandroid/os/Message;)V
    invoke-static {v6, v7, v8, v9}, Lcom/htc/Weather/WeatherActivity;->access$300(Lcom/htc/Weather/WeatherActivity;ZILandroid/os/Message;)V

    goto :goto_2
.end method
