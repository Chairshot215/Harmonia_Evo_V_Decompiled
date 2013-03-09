.class public Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;
.super Lcom/htc/android/rosie/widget/Widget$Base;
.source "DualClockWidgetView.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final localLOGV:Z


# instance fields
.field private mAnalogClockCurrent:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

.field private mAnalogClockHome:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

.field protected mClockResCurrent:Lcom/htc/clock3dwidget/ClockRes;

.field protected mClockResHome:Lcom/htc/clock3dwidget/ClockRes;

.field private mConfigCurrent:Lcom/htc/clock3dwidget/analogclock/ClockConfig;

.field private mConfigHome:Lcom/htc/clock3dwidget/analogclock/ClockConfig;

.field private mCurrentCallback:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$InstanceCallback;

.field private mHomeCallback:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$InstanceCallback;

.field private mInitCreate:Z

.field private mInitLock:Ljava/lang/Object;

.field private mInitPause:Z

.field private mInitResume:Z

.field private mLoadConfig:Z

.field private mOrientation:I

.field private mSceneLand:Lcom/htc/fusion/fx/FxScene;

.field private mScenePort:Lcom/htc/fusion/fx/FxScene;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Lcom/htc/android/rosie/widget/Widget$Base;-><init>()V

    .line 34
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->mOrientation:I

    .line 37
    iput-boolean v1, p0, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->mLoadConfig:Z

    .line 39
    iput-boolean v1, p0, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->mInitCreate:Z

    .line 40
    iput-boolean v1, p0, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->mInitResume:Z

    .line 41
    iput-boolean v1, p0, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->mInitPause:Z

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->mInitLock:Ljava/lang/Object;

    .line 290
    new-instance v0, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView$1;

    invoke-direct {v0, p0}, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView$1;-><init>(Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;)V

    iput-object v0, p0, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->mHomeCallback:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$InstanceCallback;

    .line 304
    new-instance v0, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView$2;

    invoke-direct {v0, p0}, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView$2;-><init>(Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;)V

    iput-object v0, p0, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->mCurrentCallback:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$InstanceCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->mLoadConfig:Z

    return v0
.end method

.method static synthetic access$002(Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->mLoadConfig:Z

    return p1
.end method

.method static synthetic access$100(Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->loadConfig()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;)Lcom/htc/clock3dwidget/analogclock/ClockConfig;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->mConfigHome:Lcom/htc/clock3dwidget/analogclock/ClockConfig;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->saveDualClockConfig(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;)Lcom/htc/clock3dwidget/analogclock/ClockConfig;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->mConfigCurrent:Lcom/htc/clock3dwidget/analogclock/ClockConfig;

    return-object v0
.end method

.method private doPause()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->mAnalogClockHome:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->mAnalogClockHome:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    invoke-virtual {v0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->doPause()V

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->mAnalogClockCurrent:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->mAnalogClockCurrent:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    invoke-virtual {v0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->doPause()V

    .line 112
    :cond_1
    return-void
.end method

.method private doResume()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->mAnalogClockHome:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->mAnalogClockHome:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    invoke-virtual {v0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->doResume()V

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->mAnalogClockCurrent:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->mAnalogClockCurrent:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    invoke-virtual {v0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->doResume()V

    .line 103
    :cond_1
    return-void
.end method

.method private loadConfig(Ljava/util/Properties;Ljava/lang/String;)Lcom/htc/clock3dwidget/analogclock/ClockConfig;
    .locals 6
    .parameter "props"
    .parameter "selectCity"

    .prologue
    .line 223
    invoke-virtual {p1, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 225
    .local v2, citnameCode:Ljava/lang/String;
    new-instance v3, Lcom/htc/clock3dwidget/analogclock/ClockConfig;

    invoke-direct {v3}, Lcom/htc/clock3dwidget/analogclock/ClockConfig;-><init>()V

    .line 226
    .local v3, config:Lcom/htc/clock3dwidget/analogclock/ClockConfig;
    const-string v4, "show_"

    invoke-virtual {p1, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, StrIsDisplayCityName:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AnalogClock initData~ StrIsDisplayCityName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 230
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 232
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 233
    .local v1, bShowCityLabel:Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AnalogClock initData~ 1 bShowCityLabel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 240
    :goto_0
    iput-object v2, v3, Lcom/htc/clock3dwidget/analogclock/ClockConfig;->citnameCode:Ljava/lang/String;

    .line 241
    iput-boolean v1, v3, Lcom/htc/clock3dwidget/analogclock/ClockConfig;->bShowCityLabel:Z

    .line 242
    return-object v3

    .line 236
    .end local v1           #bShowCityLabel:Z
    :cond_0
    const/4 v1, 0x1

    .line 237
    .restart local v1       #bShowCityLabel:Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AnalogClock initData~ 2 bShowCityLabel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private loadConfig()V
    .locals 2

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->loadInstanceData()Ljava/util/Properties;

    move-result-object v0

    .line 214
    .local v0, props:Ljava/util/Properties;
    if-nez v0, :cond_0

    .line 215
    invoke-virtual {p0}, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->saveDualClockConfig(Landroid/content/Intent;)V

    .line 220
    :goto_0
    return-void

    .line 217
    :cond_0
    const-string v1, "code_"

    invoke-direct {p0, v0, v1}, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->loadConfig(Ljava/util/Properties;Ljava/lang/String;)Lcom/htc/clock3dwidget/analogclock/ClockConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->mConfigHome:Lcom/htc/clock3dwidget/analogclock/ClockConfig;

    .line 218
    const-string v1, "code2_"

    invoke-direct {p0, v0, v1}, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->loadConfig(Ljava/util/Properties;Ljava/lang/String;)Lcom/htc/clock3dwidget/analogclock/ClockConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->mConfigCurrent:Lcom/htc/clock3dwidget/analogclock/ClockConfig;

    goto :goto_0
.end method

.method private saveDualClockConfig(Landroid/content/Intent;)V
    .locals 8
    .parameter "intent"

    .prologue
    .line 246
    if-nez p1, :cond_0

    .line 288
    :goto_0
    return-void

    .line 253
    :cond_0
    const-string v6, "code_"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 254
    .local v1, citnameCode:Ljava/lang/String;
    const-string v6, "code2_"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 255
    .local v2, citnameCode2:Ljava/lang/String;
    const-string v6, "show_"

    const/4 v7, 0x1

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 258
    .local v0, bShowCityLabel:Z
    new-instance v5, Ljava/util/Properties;

    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    .line 260
    .local v5, props:Ljava/util/Properties;
    if-eqz v1, :cond_3

    .line 261
    :try_start_0
    const-string v6, "code_"

    invoke-virtual {v5, v6, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 267
    :goto_1
    if-eqz v2, :cond_1

    .line 268
    const-string v6, "code2_"

    invoke-virtual {v5, v6, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 271
    :cond_1
    const-string v6, "show_"

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 272
    invoke-virtual {p0, v5}, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->storeInstanceData(Ljava/util/Properties;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    :goto_2
    new-instance v4, Lcom/htc/clock3dwidget/analogclock/ClockConfig;

    invoke-direct {v4}, Lcom/htc/clock3dwidget/analogclock/ClockConfig;-><init>()V

    .line 279
    .local v4, home:Lcom/htc/clock3dwidget/analogclock/ClockConfig;
    if-nez v1, :cond_2

    const-string v1, "Home City"

    .end local v1           #citnameCode:Ljava/lang/String;
    :cond_2
    iput-object v1, v4, Lcom/htc/clock3dwidget/analogclock/ClockConfig;->citnameCode:Ljava/lang/String;

    .line 280
    iput-boolean v0, v4, Lcom/htc/clock3dwidget/analogclock/ClockConfig;->bShowCityLabel:Z

    .line 281
    iput-object v4, p0, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->mConfigHome:Lcom/htc/clock3dwidget/analogclock/ClockConfig;

    .line 284
    new-instance v3, Lcom/htc/clock3dwidget/analogclock/ClockConfig;

    invoke-direct {v3}, Lcom/htc/clock3dwidget/analogclock/ClockConfig;-><init>()V

    .line 285
    .local v3, current:Lcom/htc/clock3dwidget/analogclock/ClockConfig;
    iput-object v2, v3, Lcom/htc/clock3dwidget/analogclock/ClockConfig;->citnameCode:Ljava/lang/String;

    .line 286
    iput-boolean v0, v3, Lcom/htc/clock3dwidget/analogclock/ClockConfig;->bShowCityLabel:Z

    .line 287
    iput-object v3, p0, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->mConfigCurrent:Lcom/htc/clock3dwidget/analogclock/ClockConfig;

    goto :goto_0

    .line 264
    .end local v3           #current:Lcom/htc/clock3dwidget/analogclock/ClockConfig;
    .end local v4           #home:Lcom/htc/clock3dwidget/analogclock/ClockConfig;
    .restart local v1       #citnameCode:Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string v6, "code_"

    const-string v7, "Home City"

    invoke-virtual {v5, v6, v7}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 273
    :catch_0
    move-exception v6

    goto :goto_2
.end method


# virtual methods
.method protected getScene()Lcom/htc/fusion/fx/FxScene;
    .locals 2

    .prologue
    .line 169
    iget v0, p0, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 170
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->mScenePort:Lcom/htc/fusion/fx/FxScene;

    .line 172
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->mSceneLand:Lcom/htc/fusion/fx/FxScene;

    goto :goto_0
.end method

.method protected getScene(I)Lcom/htc/fusion/fx/FxScene;
    .locals 1
    .parameter "orientation"

    .prologue
    .line 160
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->mScenePort:Lcom/htc/fusion/fx/FxScene;

    .line 163
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->mSceneLand:Lcom/htc/fusion/fx/FxScene;

    goto :goto_0
.end method

.method public getSettingIntent()Ljava/lang/String;
    .locals 3

    .prologue
    .line 204
    new-instance v0, Landroid/content/Intent;

    const-string v1, "OpenSettings"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 205
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.clock3dwidget"

    const-string v2, "com.htc.clock3dwidget.setting.HtcClockSetting"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    const-string v1, "index"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 207
    const-string v1, "show_"

    iget-object v2, p0, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->mConfigHome:Lcom/htc/clock3dwidget/analogclock/ClockConfig;

    iget-boolean v2, v2, Lcom/htc/clock3dwidget/analogclock/ClockConfig;->bShowCityLabel:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 208
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isEditable()Z
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 149
    invoke-super {p0, p1, p2, p3}, Lcom/htc/android/rosie/widget/Widget$Base;->onActivityResult(IILandroid/content/Intent;)V

    .line 150
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->mAnalogClockHome:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->mAnalogClockHome:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->doActivityResult(IILandroid/content/Intent;)V

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->mAnalogClockCurrent:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->mAnalogClockCurrent:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->doActivityResult(IILandroid/content/Intent;)V

    .line 156
    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfiguration"

    .prologue
    .line 178
    invoke-super {p0, p1}, Lcom/htc/android/rosie/widget/Widget$Base;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 179
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->mOrientation:I

    .line 181
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->mAnalogClockCurrent:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->mAnalogClockHome:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    if-nez v0, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->mAnalogClockCurrent:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    iget v1, p0, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->onConfigurationChanged(I)V

    .line 185
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->mAnalogClockHome:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    iget v1, p0, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->onConfigurationChanged(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "saved"

    .prologue
    const/4 v3, 0x1

    .line 45
    invoke-super {p0, p1}, Lcom/htc/android/rosie/widget/Widget$Base;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v0

    sget-object v1, Lcom/htc/clock3dwidget/ClockUtils$ClockType;->CLOCK_DUAL_R:Lcom/htc/clock3dwidget/ClockUtils$ClockType;

    invoke-static {v1, v3}, Lcom/htc/clock3dwidget/ClockUtils;->getClockPath(Lcom/htc/clock3dwidget/ClockUtils$ClockType;Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Lcom/htc/android/rosie/widget/Widget$Host;->createScene(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->mScenePort:Lcom/htc/fusion/fx/FxScene;

    .line 47
    sget-boolean v0, Lcom/htc/clock3dwidget/ClockUtils;->SUPPORT_LAND:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->mScenePort:Lcom/htc/fusion/fx/FxScene;

    :goto_0
    iput-object v0, p0, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->mSceneLand:Lcom/htc/fusion/fx/FxScene;

    .line 48
    invoke-virtual {p0}, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/android/rosie/widget/Widget$Host;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->mOrientation:I

    .line 49
    return-void

    .line 47
    :cond_0
    invoke-virtual {p0}, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v0

    sget-object v1, Lcom/htc/clock3dwidget/ClockUtils$ClockType;->CLOCK_DUAL_R:Lcom/htc/clock3dwidget/ClockUtils$ClockType;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/htc/clock3dwidget/ClockUtils;->getClockPath(Lcom/htc/clock3dwidget/ClockUtils$ClockType;Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Lcom/htc/android/rosie/widget/Widget$Host;->createScene(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 116
    invoke-super {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->onDestroy()V

    .line 117
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->mAnalogClockHome:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->mAnalogClockHome:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    invoke-virtual {v0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->doDestroy()V

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->mAnalogClockCurrent:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->mAnalogClockCurrent:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    invoke-virtual {v0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->doDestroy()V

    .line 123
    :cond_1
    return-void
.end method

.method public onEdit()V
    .locals 4

    .prologue
    .line 196
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->getSettingIntent()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 197
    .local v1, intent:Landroid/content/Intent;
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, e:Ljava/net/URISyntaxException;
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onHostMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 138
    invoke-super {p0, p1}, Lcom/htc/android/rosie/widget/Widget$Base;->onHostMessage(Landroid/os/Message;)V

    .line 139
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->mAnalogClockHome:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->mAnalogClockHome:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    invoke-virtual {v0, p1}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->doHostMessage(Landroid/os/Message;)V

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->mAnalogClockCurrent:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->mAnalogClockCurrent:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    invoke-virtual {v0, p1}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->doHostMessage(Landroid/os/Message;)V

    .line 145
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 87
    invoke-super {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->onPause()V

    .line 88
    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->mInitLock:Ljava/lang/Object;

    monitor-enter v1

    .line 89
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->mInitCreate:Z

    if-eqz v0, :cond_0

    .line 90
    invoke-direct {p0}, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->doPause()V

    .line 92
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->mInitPause:Z

    .line 93
    monitor-exit v1

    .line 94
    return-void

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedState"

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/htc/android/rosie/widget/Widget$Base;->onPostCreate(Landroid/os/Bundle;)V

    .line 55
    new-instance v0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    invoke-virtual {p0}, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/android/rosie/widget/Widget$Host;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->mScenePort:Lcom/htc/fusion/fx/FxScene;

    iget-object v5, p0, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->mSceneLand:Lcom/htc/fusion/fx/FxScene;

    iget v6, p0, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->mOrientation:I

    iget-object v7, p0, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->mHomeCallback:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$InstanceCallback;

    iget-object v8, p0, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->mClockResHome:Lcom/htc/clock3dwidget/ClockRes;

    invoke-direct/range {v0 .. v8}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;-><init>(Landroid/content/Context;Landroid/content/Context;Lcom/htc/android/rosie/widget/Widget$Host;Lcom/htc/fusion/fx/FxScene;Lcom/htc/fusion/fx/FxScene;ILcom/htc/clock3dwidget/analogclock/AnalogClockWidget$InstanceCallback;Lcom/htc/clock3dwidget/ClockRes;)V

    iput-object v0, p0, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->mAnalogClockHome:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    .line 59
    new-instance v0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    invoke-virtual {p0}, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/android/rosie/widget/Widget$Host;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->mScenePort:Lcom/htc/fusion/fx/FxScene;

    iget-object v5, p0, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->mSceneLand:Lcom/htc/fusion/fx/FxScene;

    iget v6, p0, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->mOrientation:I

    iget-object v7, p0, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->mCurrentCallback:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$InstanceCallback;

    iget-object v8, p0, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->mClockResCurrent:Lcom/htc/clock3dwidget/ClockRes;

    invoke-direct/range {v0 .. v8}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;-><init>(Landroid/content/Context;Landroid/content/Context;Lcom/htc/android/rosie/widget/Widget$Host;Lcom/htc/fusion/fx/FxScene;Lcom/htc/fusion/fx/FxScene;ILcom/htc/clock3dwidget/analogclock/AnalogClockWidget$InstanceCallback;Lcom/htc/clock3dwidget/ClockRes;)V

    iput-object v0, p0, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->mAnalogClockCurrent:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    .line 63
    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->mInitLock:Ljava/lang/Object;

    monitor-enter v1

    .line 64
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->mInitResume:Z

    if-eqz v0, :cond_0

    .line 65
    invoke-direct {p0}, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->doResume()V

    .line 67
    :cond_0
    iget-boolean v0, p0, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->mInitPause:Z

    if-eqz v0, :cond_1

    .line 68
    invoke-direct {p0}, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->doPause()V

    .line 70
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->mInitCreate:Z

    .line 71
    monitor-exit v1

    .line 72
    return-void

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 76
    invoke-super {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->onResume()V

    .line 77
    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->mInitLock:Ljava/lang/Object;

    monitor-enter v1

    .line 78
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->mInitCreate:Z

    if-eqz v0, :cond_0

    .line 79
    invoke-direct {p0}, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->doResume()V

    .line 81
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->mInitResume:Z

    .line 82
    monitor-exit v1

    .line 83
    return-void

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onTiltChanged(F)V
    .locals 1
    .parameter "tilt"

    .prologue
    .line 127
    invoke-super {p0, p1}, Lcom/htc/android/rosie/widget/Widget$Base;->onTiltChanged(F)V

    .line 128
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->mAnalogClockHome:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->mAnalogClockHome:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    invoke-virtual {v0, p1}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->doTiltChanged(F)V

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->mAnalogClockCurrent:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->mAnalogClockCurrent:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    invoke-virtual {v0, p1}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->doTiltChanged(F)V

    .line 134
    :cond_1
    return-void
.end method
