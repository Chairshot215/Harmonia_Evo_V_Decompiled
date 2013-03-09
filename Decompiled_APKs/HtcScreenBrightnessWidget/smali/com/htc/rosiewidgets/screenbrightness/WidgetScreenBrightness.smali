.class public Lcom/htc/rosiewidgets/screenbrightness/WidgetScreenBrightness;
.super Lcom/htc/rosiewidgets/screenbrightness/WidgetBaseClass;
.source "WidgetScreenBrightness.java"


# instance fields
.field public mbPlayAnim:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/htc/rosiewidgets/screenbrightness/WidgetBaseClass;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/rosiewidgets/screenbrightness/WidgetScreenBrightness;->mbPlayAnim:Z

    return-void
.end method

.method private startPaintActivity(I)V
    .locals 3
    .parameter "nSetting"

    .prologue
    .line 99
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 100
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 102
    const-string v1, "com.htc.rosiewidgets.screenbrightness"

    const-string v2, "com.htc.rosiewidgets.screenbrightness.BrightnessActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    const-string v1, "BrightnessSetting"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 105
    iget-object v1, p0, Lcom/htc/rosiewidgets/screenbrightness/WidgetBaseClass;->mResContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 106
    return-void
.end method


# virtual methods
.method public getCurrentSetting()I
    .locals 8

    .prologue
    const/4 v6, 0x1

    .line 37
    const/4 v4, -0x1

    .line 38
    .local v4, nRet:I
    iget-object v5, p0, Lcom/htc/rosiewidgets/screenbrightness/WidgetBaseClass;->mResContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 40
    .local v0, contentResolver:Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    .line 44
    :try_start_0
    const-string v5, "screen_brightness_mode"

    invoke-static {v0, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 47
    .local v2, nAuto:I
    if-ne v6, v2, :cond_1

    .line 49
    const/4 v4, 0x2

    .line 74
    .end local v2           #nAuto:I
    :cond_0
    :goto_0
    const-string v5, "HtcScreenBrightnessWidget"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GetCurrentSetting: nRet = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return v4

    .line 53
    .restart local v2       #nAuto:I
    :cond_1
    :try_start_1
    const-string v5, "screen_brightness"

    invoke-static {v0, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    .line 54
    .local v3, nBrightness:I
    sget-object v5, Lcom/htc/rosiewidgets/screenbrightness/WidgetScreenBrightness;->C_nBrightness:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    if-gt v3, v5, :cond_2

    .line 56
    const/4 v4, 0x0

    goto :goto_0

    .line 58
    :cond_2
    sget-object v5, Lcom/htc/rosiewidgets/screenbrightness/WidgetScreenBrightness;->C_nBrightness:[I

    const/4 v6, 0x1

    aget v5, v5, v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-gt v3, v5, :cond_3

    .line 60
    const/4 v4, 0x1

    goto :goto_0

    .line 64
    :cond_3
    const/4 v4, 0x2

    goto :goto_0

    .line 68
    .end local v2           #nAuto:I
    .end local v3           #nBrightness:I
    :catch_0
    move-exception v1

    .line 70
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public init(Lcom/htc/fusion/fx/FxScene;Landroid/content/Context;Landroid/os/Handler;[I[Ljava/lang/String;)V
    .locals 2
    .parameter "fxScene"
    .parameter "rContext"
    .parameter "UiHandler"
    .parameter "IntParam"
    .parameter "StrParam"

    .prologue
    .line 25
    invoke-super/range {p0 .. p5}, Lcom/htc/rosiewidgets/screenbrightness/WidgetBaseClass;->init(Lcom/htc/fusion/fx/FxScene;Landroid/content/Context;Landroid/os/Handler;[I[Ljava/lang/String;)V

    .line 31
    const-string v0, "WidgetScreenBrightness"

    const-string v1, "playmarker"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    return-void
.end method

.method public pressIcon()V
    .locals 3

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/htc/rosiewidgets/screenbrightness/WidgetScreenBrightness;->getCurrentSetting()I

    move-result v1

    .line 82
    .local v1, n_Setting:I
    iget-object v2, p0, Lcom/htc/rosiewidgets/screenbrightness/WidgetBaseClass;->mResContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 83
    .local v0, contentResolver:Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    .line 85
    const/4 v2, -0x1

    if-ne v2, v1, :cond_1

    .line 87
    const/4 v1, 0x2

    .line 93
    :goto_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/rosiewidgets/screenbrightness/WidgetScreenBrightness;->mbPlayAnim:Z

    .line 94
    invoke-direct {p0, v1}, Lcom/htc/rosiewidgets/screenbrightness/WidgetScreenBrightness;->startPaintActivity(I)V

    .line 96
    :cond_0
    return-void

    .line 91
    :cond_1
    add-int/lit8 v2, v1, 0x1

    rem-int/lit8 v1, v2, 0x3

    goto :goto_0
.end method
