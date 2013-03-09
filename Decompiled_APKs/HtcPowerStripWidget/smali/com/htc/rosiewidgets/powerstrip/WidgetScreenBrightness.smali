.class public Lcom/htc/rosiewidgets/powerstrip/WidgetScreenBrightness;
.super Lcom/htc/rosiewidgets/powerstrip/WidgetBaseClass;
.source "WidgetScreenBrightness.java"


# instance fields
.field listener:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

.field public m_fxTxtlabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field public mbPlayAnim:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/htc/rosiewidgets/powerstrip/WidgetBaseClass;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenBrightness;->mbPlayAnim:Z

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenBrightness;->m_fxTxtlabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 45
    new-instance v0, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenBrightness$1;

    invoke-direct {v0, p0}, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenBrightness$1;-><init>(Lcom/htc/rosiewidgets/powerstrip/WidgetScreenBrightness;)V

    iput-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenBrightness;->listener:Lcom/htc/fusion/fx/MessageListener;

    return-void
.end method

.method private initFusionScr()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 56
    new-array v0, v7, [Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenBrightness;->mStrParam:[Ljava/lang/String;

    aget-object v2, v2, v5

    aput-object v2, v0, v6

    iget-object v2, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenBrightness;->mStrParam:[Ljava/lang/String;

    aget-object v2, v2, v6

    aput-object v2, v0, v5

    .line 57
    .local v0, controlNames:[Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenBrightness;->m_fxScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v2, v0}, Lcom/htc/fusion/fx/FxScene;->getDescendants([Ljava/lang/String;)[Lcom/htc/fusion/fx/FxObject;

    move-result-object v1

    .line 59
    .local v1, descendants:[Lcom/htc/fusion/fx/FxObject;
    aget-object v2, v1, v6

    check-cast v2, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v2, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenBrightness;->m_fxTxtlabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 60
    iget-object v2, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenBrightness;->m_fxTxtlabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-static {v2}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 62
    iget-object v2, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenBrightness;->m_fxTxtlabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v3, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenBrightness;->mResContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f040006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 64
    aget-object v2, v1, v5

    check-cast v2, Lcom/htc/fusion/fx/controls/FxSettingButton;

    iput-object v2, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenBrightness;->m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

    .line 65
    iget-object v2, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenBrightness;->m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-static {v2}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 67
    invoke-virtual {p0}, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenBrightness;->getCurrentSetting()I

    move-result v2

    if-nez v2, :cond_0

    .line 69
    iget-object v2, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenBrightness;->m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-virtual {v2, v6}, Lcom/htc/fusion/fx/controls/FxSettingButton;->initialize(I)V

    .line 80
    :goto_0
    iget-object v2, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenBrightness;->m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-virtual {v2}, Lcom/htc/fusion/fx/controls/FxSettingButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenBrightness;->listener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v2, v3}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 81
    return-void

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenBrightness;->getCurrentSetting()I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 73
    iget-object v2, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenBrightness;->m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-virtual {v2, v5}, Lcom/htc/fusion/fx/controls/FxSettingButton;->initialize(I)V

    goto :goto_0

    .line 77
    :cond_1
    iget-object v2, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenBrightness;->m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-virtual {v2, v7}, Lcom/htc/fusion/fx/controls/FxSettingButton;->initialize(I)V

    goto :goto_0
.end method

.method private startPaintActivity(I)V
    .locals 3
    .parameter "nSetting"

    .prologue
    .line 165
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 166
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 167
    const/high16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 168
    const-string v1, "com.htc.rosiewidgets.powerstrip"

    const-string v2, "com.htc.rosiewidgets.powerstrip.BrightnessActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    const-string v1, "BrightnessSetting"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 170
    iget-object v1, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenBrightness;->mResContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 171
    return-void
.end method


# virtual methods
.method public deinit()V
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenBrightness;->m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenBrightness;->m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

    iget-object v1, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenBrightness;->listener:Lcom/htc/fusion/fx/MessageListener;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxSettingButton;->unbindClick(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 43
    :cond_0
    return-void
.end method

.method public getCurrentSetting()I
    .locals 8

    .prologue
    const/4 v6, 0x1

    .line 85
    const/4 v4, -0x1

    .line 86
    .local v4, nRet:I
    iget-object v5, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenBrightness;->mResContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 88
    .local v0, contentResolver:Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    .line 91
    :try_start_0
    const-string v5, "screen_brightness_mode"

    invoke-static {v0, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 94
    .local v2, nAuto:I
    if-ne v6, v2, :cond_1

    .line 96
    const/4 v4, 0x2

    .line 120
    .end local v2           #nAuto:I
    :cond_0
    :goto_0
    const-string v5, "HtcPowerStripWidget"

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

    .line 121
    return v4

    .line 100
    .restart local v2       #nAuto:I
    :cond_1
    :try_start_1
    const-string v5, "screen_brightness"

    invoke-static {v0, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    .line 101
    .local v3, nBrightness:I
    sget-object v5, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenBrightness;->C_nBrightness:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    if-gt v3, v5, :cond_2

    .line 103
    const/4 v4, 0x0

    goto :goto_0

    .line 105
    :cond_2
    sget-object v5, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenBrightness;->C_nBrightness:[I

    const/4 v6, 0x1

    aget v5, v5, v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-gt v3, v5, :cond_3

    .line 107
    const/4 v4, 0x1

    goto :goto_0

    .line 111
    :cond_3
    const/4 v4, 0x2

    goto :goto_0

    .line 115
    .end local v2           #nAuto:I
    .end local v3           #nBrightness:I
    :catch_0
    move-exception v1

    .line 117
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
    const/16 v1, 0x1f48

    .line 26
    invoke-super/range {p0 .. p5}, Lcom/htc/rosiewidgets/powerstrip/WidgetBaseClass;->init(Lcom/htc/fusion/fx/FxScene;Landroid/content/Context;Landroid/os/Handler;[I[Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenBrightness;->initFusionScr()V

    .line 29
    invoke-virtual {p3, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p3, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 34
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 35
    return-void
.end method

.method public pressIcon()V
    .locals 3

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenBrightness;->getCurrentSetting()I

    move-result v1

    .line 127
    .local v1, n_Setting:I
    iget-object v2, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenBrightness;->mResContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 128
    .local v0, contentResolver:Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    .line 130
    const/4 v2, -0x1

    if-ne v2, v1, :cond_1

    .line 132
    const/4 v1, 0x2

    .line 138
    :goto_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenBrightness;->mbPlayAnim:Z

    .line 139
    invoke-direct {p0, v1}, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenBrightness;->startPaintActivity(I)V

    .line 141
    :cond_0
    return-void

    .line 136
    :cond_1
    add-int/lit8 v2, v1, 0x1

    rem-int/lit8 v1, v2, 0x3

    goto :goto_0
.end method

.method public setButtonState()V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenBrightness;->m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxSettingButton;->currentState()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenBrightness;->getCurrentSetting()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 159
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenBrightness;->m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-virtual {p0}, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenBrightness;->getCurrentSetting()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxSettingButton;->setState(I)V

    .line 161
    :cond_0
    return-void
.end method

.method public updateIcon()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenBrightness;->m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxSettingButton;->currentState()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenBrightness;->getCurrentSetting()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 147
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenBrightness;->m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxSettingButton;->changeToNextState(Z)V

    .line 153
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenBrightness;->m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

    iget-object v1, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenBrightness;->m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxSettingButton;->currentState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxSettingButton;->setState(I)V

    goto :goto_0
.end method
