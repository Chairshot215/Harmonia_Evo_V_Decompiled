.class public Lcom/htc/rosiewidgets/powerstrip/WidgetScreenTimeout;
.super Lcom/htc/rosiewidgets/powerstrip/WidgetBaseClass;
.source "WidgetScreenTimeout.java"


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

.field private final mnTimeOutSetting:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/htc/rosiewidgets/powerstrip/WidgetBaseClass;-><init>()V

    .line 19
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenTimeout;->mnTimeOutSetting:[I

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenTimeout;->m_fxTxtlabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 72
    new-instance v0, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenTimeout$1;

    invoke-direct {v0, p0}, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenTimeout$1;-><init>(Lcom/htc/rosiewidgets/powerstrip/WidgetScreenTimeout;)V

    iput-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenTimeout;->listener:Lcom/htc/fusion/fx/MessageListener;

    return-void

    .line 19
    :array_0
    .array-data 0x4
        0x98t 0x3at 0x0t 0x0t
        0x30t 0x75t 0x0t 0x0t
        0x60t 0xeat 0x0t 0x0t
    .end array-data
.end method

.method private initFusionScr()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 83
    new-array v0, v7, [Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenTimeout;->mStrParam:[Ljava/lang/String;

    aget-object v2, v2, v5

    aput-object v2, v0, v6

    iget-object v2, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenTimeout;->mStrParam:[Ljava/lang/String;

    aget-object v2, v2, v6

    aput-object v2, v0, v5

    .line 84
    .local v0, controlNames:[Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenTimeout;->m_fxScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v2, v0}, Lcom/htc/fusion/fx/FxScene;->getDescendants([Ljava/lang/String;)[Lcom/htc/fusion/fx/FxObject;

    move-result-object v1

    .line 86
    .local v1, descendants:[Lcom/htc/fusion/fx/FxObject;
    aget-object v2, v1, v6

    check-cast v2, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v2, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenTimeout;->m_fxTxtlabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 87
    iget-object v2, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenTimeout;->m_fxTxtlabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-static {v2}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 89
    iget-object v2, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenTimeout;->m_fxTxtlabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v3, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenTimeout;->mResContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f040007

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 91
    aget-object v2, v1, v5

    check-cast v2, Lcom/htc/fusion/fx/controls/FxSettingButton;

    iput-object v2, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenTimeout;->m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

    .line 92
    iget-object v2, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenTimeout;->m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-static {v2}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 94
    invoke-virtual {p0}, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenTimeout;->getCurrentSetting()I

    move-result v2

    if-nez v2, :cond_0

    .line 96
    iget-object v2, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenTimeout;->m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-virtual {v2, v6}, Lcom/htc/fusion/fx/controls/FxSettingButton;->initialize(I)V

    .line 106
    :goto_0
    iget-object v2, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenTimeout;->m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-virtual {v2}, Lcom/htc/fusion/fx/controls/FxSettingButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenTimeout;->listener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v2, v3}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 107
    return-void

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenTimeout;->getCurrentSetting()I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 100
    iget-object v2, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenTimeout;->m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-virtual {v2, v5}, Lcom/htc/fusion/fx/controls/FxSettingButton;->initialize(I)V

    goto :goto_0

    .line 104
    :cond_1
    iget-object v2, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenTimeout;->m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-virtual {v2, v7}, Lcom/htc/fusion/fx/controls/FxSettingButton;->initialize(I)V

    goto :goto_0
.end method


# virtual methods
.method public deinit()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenTimeout;->m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenTimeout;->m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

    iget-object v1, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenTimeout;->listener:Lcom/htc/fusion/fx/MessageListener;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxSettingButton;->unbindClick(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 70
    :cond_0
    return-void
.end method

.method public getCurrentSetting()I
    .locals 8

    .prologue
    .line 39
    const/4 v3, 0x2

    .line 40
    .local v3, nRet:I
    iget-object v5, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenTimeout;->mResContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 42
    .local v0, contentResolver:Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    .line 45
    :try_start_0
    const-string v5, "screen_off_timeout"

    invoke-static {v0, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    .line 46
    .local v4, nSetting:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v5, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenTimeout;->mnTimeOutSetting:[I

    array-length v5, v5

    if-ge v2, v5, :cond_0

    .line 48
    iget-object v5, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenTimeout;->mnTimeOutSetting:[I

    aget v5, v5, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v4, v5, :cond_1

    .line 50
    move v3, v2

    .line 60
    .end local v2           #i:I
    .end local v4           #nSetting:I
    :cond_0
    :goto_1
    const-string v5, "HtcPowerStripWidget"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GetCurrentSetting: nRet = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenTimeout;->mnTimeOutSetting:[I

    array-length v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return v3

    .line 46
    .restart local v2       #i:I
    .restart local v4       #nSetting:I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 55
    .end local v2           #i:I
    .end local v4           #nSetting:I
    :catch_0
    move-exception v1

    .line 57
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public init(Lcom/htc/fusion/fx/FxScene;Landroid/content/Context;Landroid/os/Handler;[I[Ljava/lang/String;)V
    .locals 2
    .parameter "fxScene"
    .parameter "rContext"
    .parameter "UiHandler"
    .parameter "IntParam"
    .parameter "StrParam"

    .prologue
    const/16 v1, 0x1f47

    .line 25
    invoke-super/range {p0 .. p5}, Lcom/htc/rosiewidgets/powerstrip/WidgetBaseClass;->init(Lcom/htc/fusion/fx/FxScene;Landroid/content/Context;Landroid/os/Handler;[I[Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenTimeout;->initFusionScr()V

    .line 28
    invoke-virtual {p3, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {p3, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 33
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 34
    return-void
.end method

.method public pressIcon()V
    .locals 4

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenTimeout;->getCurrentSetting()I

    move-result v1

    .line 112
    .local v1, n_Setting:I
    iget-object v2, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenTimeout;->mResContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 113
    .local v0, contentResolver:Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    .line 115
    add-int/lit8 v2, v1, 0x1

    rem-int/lit8 v1, v2, 0x3

    .line 116
    const-string v2, "screen_off_timeout"

    iget-object v3, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenTimeout;->mnTimeOutSetting:[I

    aget v3, v3, v1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 118
    :cond_0
    return-void
.end method

.method public setButtonState()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenTimeout;->m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxSettingButton;->currentState()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenTimeout;->getCurrentSetting()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 124
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenTimeout;->m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-virtual {p0}, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenTimeout;->getCurrentSetting()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxSettingButton;->setState(I)V

    .line 126
    :cond_0
    return-void
.end method

.method public updateIcon()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenTimeout;->m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxSettingButton;->currentState()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenTimeout;->getCurrentSetting()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 132
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenTimeout;->m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxSettingButton;->changeToNextState(Z)V

    .line 138
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenTimeout;->m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

    iget-object v1, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenTimeout;->m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxSettingButton;->currentState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxSettingButton;->setState(I)V

    goto :goto_0
.end method
