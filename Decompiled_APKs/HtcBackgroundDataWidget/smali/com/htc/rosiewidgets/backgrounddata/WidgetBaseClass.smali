.class public Lcom/htc/rosiewidgets/backgrounddata/WidgetBaseClass;
.super Ljava/lang/Object;
.source "WidgetBaseClass.java"

# interfaces
.implements Lcom/htc/rosiewidgets/backgrounddata/Constants;


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

.field public mHandler:Landroid/os/Handler;

.field public mIntParam:[I

.field public mResContext:Landroid/content/Context;

.field public mStrParam:[Ljava/lang/String;

.field public m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

.field public m_fxScene:Lcom/htc/fusion/fx/FxScene;

.field public m_fxTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

.field public m_fxTxtlabel:Lcom/htc/fusion/fx/controls/FxTextLabel;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v1, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetBaseClass;->mResContext:Landroid/content/Context;

    .line 18
    const/16 v0, 0xe

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetBaseClass;->mIntParam:[I

    .line 19
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetBaseClass;->mStrParam:[Ljava/lang/String;

    .line 20
    iput-object v1, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetBaseClass;->m_fxScene:Lcom/htc/fusion/fx/FxScene;

    .line 21
    iput-object v1, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetBaseClass;->m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

    .line 22
    iput-object v1, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetBaseClass;->m_fxTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 23
    iput-object v1, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetBaseClass;->m_fxTxtlabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 24
    iput-object v1, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetBaseClass;->mHandler:Landroid/os/Handler;

    .line 26
    new-instance v0, Lcom/htc/rosiewidgets/backgrounddata/WidgetBaseClass$1;

    invoke-direct {v0, p0}, Lcom/htc/rosiewidgets/backgrounddata/WidgetBaseClass$1;-><init>(Lcom/htc/rosiewidgets/backgrounddata/WidgetBaseClass;)V

    iput-object v0, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetBaseClass;->listener:Lcom/htc/fusion/fx/MessageListener;

    return-void
.end method

.method private initFusionScr()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 57
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetBaseClass;->mStrParam:[Ljava/lang/String;

    aget-object v2, v2, v5

    aput-object v2, v0, v6

    iget-object v2, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetBaseClass;->mStrParam:[Ljava/lang/String;

    aget-object v2, v2, v6

    aput-object v2, v0, v5

    .line 59
    .local v0, controlNames:[Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetBaseClass;->m_fxScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v2, v0}, Lcom/htc/fusion/fx/FxScene;->getDescendants([Ljava/lang/String;)[Lcom/htc/fusion/fx/FxObject;

    move-result-object v1

    .line 61
    .local v1, descendants:[Lcom/htc/fusion/fx/FxObject;
    aget-object v2, v1, v6

    check-cast v2, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v2, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetBaseClass;->m_fxTxtlabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 62
    iget-object v2, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetBaseClass;->m_fxTxtlabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-static {v2}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 64
    iget-object v2, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetBaseClass;->m_fxTxtlabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v3, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetBaseClass;->mResContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f040006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 66
    aget-object v2, v1, v5

    check-cast v2, Lcom/htc/fusion/fx/controls/FxSettingButton;

    iput-object v2, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetBaseClass;->m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

    .line 67
    iget-object v2, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetBaseClass;->m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-static {v2}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 69
    invoke-virtual {p0}, Lcom/htc/rosiewidgets/backgrounddata/WidgetBaseClass;->getCurrentSetting()I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 71
    iget-object v2, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetBaseClass;->m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-virtual {v2, v5}, Lcom/htc/fusion/fx/controls/FxSettingButton;->initialize(I)V

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v2, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetBaseClass;->m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-virtual {v2, v6}, Lcom/htc/fusion/fx/controls/FxSettingButton;->initialize(I)V

    goto :goto_0
.end method


# virtual methods
.method public deinit()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetBaseClass;->m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetBaseClass;->m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

    iget-object v1, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetBaseClass;->listener:Lcom/htc/fusion/fx/MessageListener;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxSettingButton;->unbindClick(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 112
    :cond_0
    return-void
.end method

.method public getCurrentSetting()I
    .locals 1

    .prologue
    .line 81
    const/4 v0, -0x1

    return v0
.end method

.method public init(Lcom/htc/fusion/fx/FxScene;Landroid/content/Context;Landroid/os/Handler;[I[Ljava/lang/String;)V
    .locals 2
    .parameter "fxScene"
    .parameter "rContext"
    .parameter "UiHandler"
    .parameter "IntParam"
    .parameter "StrParam"

    .prologue
    const/16 v1, 0x1f42

    .line 36
    iput-object p1, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetBaseClass;->m_fxScene:Lcom/htc/fusion/fx/FxScene;

    .line 37
    iput-object p2, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetBaseClass;->mResContext:Landroid/content/Context;

    .line 38
    iput-object p3, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetBaseClass;->mHandler:Landroid/os/Handler;

    .line 39
    invoke-virtual {p4}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetBaseClass;->mIntParam:[I

    .line 40
    invoke-virtual {p5}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetBaseClass;->mStrParam:[Ljava/lang/String;

    .line 42
    invoke-direct {p0}, Lcom/htc/rosiewidgets/backgrounddata/WidgetBaseClass;->initFusionScr()V

    .line 44
    iget-object v0, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetBaseClass;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetBaseClass;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetBaseClass;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 51
    iget-object v0, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetBaseClass;->m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxSettingButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetBaseClass;->listener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 52
    return-void
.end method

.method public pressIcon()V
    .locals 0

    .prologue
    .line 84
    return-void
.end method

.method public setButtonState()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetBaseClass;->m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxSettingButton;->currentState()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/rosiewidgets/backgrounddata/WidgetBaseClass;->getCurrentSetting()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 90
    iget-object v0, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetBaseClass;->m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-virtual {p0}, Lcom/htc/rosiewidgets/backgrounddata/WidgetBaseClass;->getCurrentSetting()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxSettingButton;->setState(I)V

    .line 92
    :cond_0
    return-void
.end method

.method public updateIcon()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetBaseClass;->m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxSettingButton;->currentState()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/rosiewidgets/backgrounddata/WidgetBaseClass;->getCurrentSetting()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 98
    iget-object v0, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetBaseClass;->m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxSettingButton;->changeToNextState(Z)V

    .line 104
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetBaseClass;->m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

    iget-object v1, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetBaseClass;->m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxSettingButton;->currentState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxSettingButton;->setState(I)V

    goto :goto_0
.end method
