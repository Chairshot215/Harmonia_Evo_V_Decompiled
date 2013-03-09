.class public Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;
.super Lcom/htc/android/rosie/widget/Widget$Base;
.source "AnalogClockWidgetView.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final localLOGV:Z


# instance fields
.field private mAnalogClockWidget:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

.field private mApContext:Landroid/content/Context;

.field private mClockConfig:Lcom/htc/clock3dwidget/analogclock/ClockConfig;

.field protected mClockRes:Lcom/htc/clock3dwidget/ClockRes;

.field protected mClockType:Lcom/htc/clock3dwidget/ClockUtils$ClockType;

.field private mInitCreate:Z

.field private mInitLock:Ljava/lang/Object;

.field private mInitPause:Z

.field private mInitResume:Z

.field private mInstanceCallback:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$InstanceCallback;

.field private mLoadConfig:Z

.field private mOrientation:I

.field private mSceneLand:Lcom/htc/fusion/fx/FxScene;

.field private mScenePort:Lcom/htc/fusion/fx/FxScene;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-direct {p0}, Lcom/htc/android/rosie/widget/Widget$Base;-><init>()V

    .line 34
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;->mOrientation:I

    .line 37
    iput-boolean v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;->mLoadConfig:Z

    .line 39
    iput-boolean v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;->mInitCreate:Z

    .line 40
    iput-boolean v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;->mInitResume:Z

    .line 41
    iput-boolean v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;->mInitPause:Z

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;->mInitLock:Ljava/lang/Object;

    .line 248
    new-instance v0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView$1;

    invoke-direct {v0, p0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView$1;-><init>(Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;)V

    iput-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;->mInstanceCallback:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$InstanceCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;->mLoadConfig:Z

    return v0
.end method

.method static synthetic access$002(Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;->mLoadConfig:Z

    return p1
.end method

.method static synthetic access$100(Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;->loadConfig()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;)Lcom/htc/clock3dwidget/analogclock/ClockConfig;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;->mClockConfig:Lcom/htc/clock3dwidget/analogclock/ClockConfig;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;->saveClockConfig(Landroid/content/Intent;)V

    return-void
.end method

.method private doPause()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;->mAnalogClockWidget:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;->mAnalogClockWidget:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    invoke-virtual {v0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->doPause()V

    .line 102
    :cond_0
    return-void
.end method

.method private doResume()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;->mAnalogClockWidget:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;->mAnalogClockWidget:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    invoke-virtual {v0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->doResume()V

    .line 96
    :cond_0
    return-void
.end method

.method private loadConfig(Ljava/util/Properties;Ljava/lang/String;)Lcom/htc/clock3dwidget/analogclock/ClockConfig;
    .locals 6
    .parameter "props"
    .parameter "selectCity"

    .prologue
    .line 196
    invoke-virtual {p1, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 198
    .local v2, citnameCode:Ljava/lang/String;
    new-instance v3, Lcom/htc/clock3dwidget/analogclock/ClockConfig;

    invoke-direct {v3}, Lcom/htc/clock3dwidget/analogclock/ClockConfig;-><init>()V

    .line 199
    .local v3, config:Lcom/htc/clock3dwidget/analogclock/ClockConfig;
    const-string v4, "show_"

    invoke-virtual {p1, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 201
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

    .line 203
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 205
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 206
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

    .line 213
    :goto_0
    iput-object v2, v3, Lcom/htc/clock3dwidget/analogclock/ClockConfig;->citnameCode:Ljava/lang/String;

    .line 214
    iput-boolean v1, v3, Lcom/htc/clock3dwidget/analogclock/ClockConfig;->bShowCityLabel:Z

    .line 215
    return-object v3

    .line 209
    .end local v1           #bShowCityLabel:Z
    :cond_0
    const/4 v1, 0x1

    .line 210
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
    .line 188
    invoke-virtual {p0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;->loadInstanceData()Ljava/util/Properties;

    move-result-object v0

    .line 189
    .local v0, props:Ljava/util/Properties;
    if-nez v0, :cond_0

    .line 190
    invoke-virtual {p0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;->saveClockConfig(Landroid/content/Intent;)V

    .line 194
    :goto_0
    return-void

    .line 192
    :cond_0
    const-string v1, "code_"

    invoke-direct {p0, v0, v1}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;->loadConfig(Ljava/util/Properties;Ljava/lang/String;)Lcom/htc/clock3dwidget/analogclock/ClockConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;->mClockConfig:Lcom/htc/clock3dwidget/analogclock/ClockConfig;

    goto :goto_0
.end method

.method private saveClockConfig(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    .line 220
    if-nez p1, :cond_0

    .line 245
    :goto_0
    return-void

    .line 226
    :cond_0
    const-string v4, "code_"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 227
    .local v1, citnameCode:Ljava/lang/String;
    const-string v4, "show_"

    const/4 v5, 0x1

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 229
    .local v0, bShowCityLabel:Z
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 231
    .local v3, props:Ljava/util/Properties;
    if-eqz v1, :cond_1

    .line 232
    :try_start_0
    const-string v4, "code_"

    invoke-virtual {v3, v4, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 235
    :cond_1
    const-string v4, "show_"

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 236
    invoke-virtual {p0, v3}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;->storeInstanceData(Ljava/util/Properties;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :goto_1
    new-instance v2, Lcom/htc/clock3dwidget/analogclock/ClockConfig;

    invoke-direct {v2}, Lcom/htc/clock3dwidget/analogclock/ClockConfig;-><init>()V

    .line 242
    .local v2, config:Lcom/htc/clock3dwidget/analogclock/ClockConfig;
    iput-object v1, v2, Lcom/htc/clock3dwidget/analogclock/ClockConfig;->citnameCode:Ljava/lang/String;

    .line 243
    iput-boolean v0, v2, Lcom/htc/clock3dwidget/analogclock/ClockConfig;->bShowCityLabel:Z

    .line 244
    iput-object v2, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;->mClockConfig:Lcom/htc/clock3dwidget/analogclock/ClockConfig;

    goto :goto_0

    .line 237
    .end local v2           #config:Lcom/htc/clock3dwidget/analogclock/ClockConfig;
    :catch_0
    move-exception v4

    goto :goto_1
.end method


# virtual methods
.method protected getScene()Lcom/htc/fusion/fx/FxScene;
    .locals 2

    .prologue
    .line 147
    iget v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 148
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;->mScenePort:Lcom/htc/fusion/fx/FxScene;

    .line 150
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;->mSceneLand:Lcom/htc/fusion/fx/FxScene;

    goto :goto_0
.end method

.method protected getScene(I)Lcom/htc/fusion/fx/FxScene;
    .locals 1
    .parameter "orientation"

    .prologue
    .line 138
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;->mScenePort:Lcom/htc/fusion/fx/FxScene;

    .line 141
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;->mSceneLand:Lcom/htc/fusion/fx/FxScene;

    goto :goto_0
.end method

.method public getSettingIntent()Ljava/lang/String;
    .locals 3

    .prologue
    .line 179
    new-instance v0, Landroid/content/Intent;

    const-string v1, "OpenSettings"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 180
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.clock3dwidget"

    const-string v2, "com.htc.clock3dwidget.setting.HtcClockSetting"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    const-string v1, "index"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 182
    const-string v1, "show_"

    iget-object v2, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;->mClockConfig:Lcom/htc/clock3dwidget/analogclock/ClockConfig;

    iget-boolean v2, v2, Lcom/htc/clock3dwidget/analogclock/ClockConfig;->bShowCityLabel:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 183
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isEditable()Z
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 130
    invoke-super {p0, p1, p2, p3}, Lcom/htc/android/rosie/widget/Widget$Base;->onActivityResult(IILandroid/content/Intent;)V

    .line 131
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;->mAnalogClockWidget:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;->mAnalogClockWidget:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->doActivityResult(IILandroid/content/Intent;)V

    .line 134
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfiguration"

    .prologue
    .line 156
    invoke-super {p0, p1}, Lcom/htc/android/rosie/widget/Widget$Base;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 157
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;->mOrientation:I

    .line 158
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;->mAnalogClockWidget:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;->mAnalogClockWidget:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    iget v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->onConfigurationChanged(I)V

    .line 161
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "saved"

    .prologue
    const/4 v3, 0x1

    .line 45
    invoke-super {p0, p1}, Lcom/htc/android/rosie/widget/Widget$Base;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/android/rosie/widget/Widget$Host;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;->mApContext:Landroid/content/Context;

    .line 47
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;->mClockType:Lcom/htc/clock3dwidget/ClockUtils$ClockType;

    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;->mApContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/htc/clock3dwidget/ClockUtils;->getClockRes(Lcom/htc/clock3dwidget/ClockUtils$ClockType;Landroid/content/Context;)Lcom/htc/clock3dwidget/ClockRes;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;->mClockRes:Lcom/htc/clock3dwidget/ClockRes;

    .line 48
    invoke-virtual {p0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;->mClockType:Lcom/htc/clock3dwidget/ClockUtils$ClockType;

    invoke-static {v1, v3}, Lcom/htc/clock3dwidget/ClockUtils;->getClockPath(Lcom/htc/clock3dwidget/ClockUtils$ClockType;Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Lcom/htc/android/rosie/widget/Widget$Host;->createScene(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;->mScenePort:Lcom/htc/fusion/fx/FxScene;

    .line 49
    sget-boolean v0, Lcom/htc/clock3dwidget/ClockUtils;->SUPPORT_LAND:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;->mScenePort:Lcom/htc/fusion/fx/FxScene;

    :goto_0
    iput-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;->mSceneLand:Lcom/htc/fusion/fx/FxScene;

    .line 50
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;->mApContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;->mOrientation:I

    .line 51
    return-void

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;->mClockType:Lcom/htc/clock3dwidget/ClockUtils$ClockType;

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
    .line 106
    invoke-super {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->onDestroy()V

    .line 107
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;->mAnalogClockWidget:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;->mAnalogClockWidget:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    invoke-virtual {v0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->doDestroy()V

    .line 110
    :cond_0
    return-void
.end method

.method public onEdit()V
    .locals 4

    .prologue
    .line 171
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;->getSettingIntent()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 172
    .local v1, intent:Landroid/content/Intent;
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, e:Ljava/net/URISyntaxException;
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onHostMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 122
    invoke-super {p0, p1}, Lcom/htc/android/rosie/widget/Widget$Base;->onHostMessage(Landroid/os/Message;)V

    .line 123
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;->mAnalogClockWidget:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;->mAnalogClockWidget:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    invoke-virtual {v0, p1}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->doHostMessage(Landroid/os/Message;)V

    .line 126
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 83
    invoke-super {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->onPause()V

    .line 84
    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;->mInitLock:Ljava/lang/Object;

    monitor-enter v1

    .line 85
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;->mInitCreate:Z

    if-eqz v0, :cond_0

    .line 86
    invoke-direct {p0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;->doPause()V

    .line 88
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;->mInitPause:Z

    .line 89
    monitor-exit v1

    .line 90
    return-void

    .line 89
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
    .line 55
    invoke-super {p0, p1}, Lcom/htc/android/rosie/widget/Widget$Base;->onPostCreate(Landroid/os/Bundle;)V

    .line 56
    new-instance v0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    invoke-virtual {p0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/android/rosie/widget/Widget$Host;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;->mScenePort:Lcom/htc/fusion/fx/FxScene;

    iget-object v5, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;->mSceneLand:Lcom/htc/fusion/fx/FxScene;

    iget v6, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;->mOrientation:I

    iget-object v7, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;->mInstanceCallback:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$InstanceCallback;

    iget-object v8, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;->mClockRes:Lcom/htc/clock3dwidget/ClockRes;

    invoke-direct/range {v0 .. v8}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;-><init>(Landroid/content/Context;Landroid/content/Context;Lcom/htc/android/rosie/widget/Widget$Host;Lcom/htc/fusion/fx/FxScene;Lcom/htc/fusion/fx/FxScene;ILcom/htc/clock3dwidget/analogclock/AnalogClockWidget$InstanceCallback;Lcom/htc/clock3dwidget/ClockRes;)V

    iput-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;->mAnalogClockWidget:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    .line 59
    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;->mInitLock:Ljava/lang/Object;

    monitor-enter v1

    .line 60
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;->mInitResume:Z

    if-eqz v0, :cond_0

    .line 61
    invoke-direct {p0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;->doResume()V

    .line 63
    :cond_0
    iget-boolean v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;->mInitPause:Z

    if-eqz v0, :cond_1

    .line 64
    invoke-direct {p0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;->doPause()V

    .line 66
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;->mInitCreate:Z

    .line 67
    monitor-exit v1

    .line 68
    return-void

    .line 67
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
    .line 72
    invoke-super {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->onResume()V

    .line 73
    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;->mInitLock:Ljava/lang/Object;

    monitor-enter v1

    .line 74
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;->mInitCreate:Z

    if-eqz v0, :cond_0

    .line 75
    invoke-direct {p0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;->doResume()V

    .line 77
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;->mInitResume:Z

    .line 78
    monitor-exit v1

    .line 79
    return-void

    .line 78
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
    .line 114
    invoke-super {p0, p1}, Lcom/htc/android/rosie/widget/Widget$Base;->onTiltChanged(F)V

    .line 115
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;->mAnalogClockWidget:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;->mAnalogClockWidget:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    invoke-virtual {v0, p1}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->doTiltChanged(F)V

    .line 118
    :cond_0
    return-void
.end method
