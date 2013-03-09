.class public Lcom/htc/rosiewidgets/screentimeout/WidgetBaseClass;
.super Ljava/lang/Object;
.source "WidgetBaseClass.java"

# interfaces
.implements Lcom/htc/rosiewidgets/screentimeout/Constants;


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

.field public mAnimDraw:Landroid/graphics/drawable/AnimationDrawable;

.field public mBgImg:Landroid/widget/ImageView;

.field public mHandler:Landroid/os/Handler;

.field public mHighLightImg:Landroid/widget/ImageView;

.field public mHostView:Landroid/view/View;

.field public mIcon:Landroid/widget/ImageView;

.field public mIntParam:[I

.field public mLableText:Landroid/widget/TextView;

.field public mLayout:Landroid/widget/RelativeLayout;

.field public mResContext:Landroid/content/Context;

.field public mStrParam:[Ljava/lang/String;

.field public m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

.field public m_fxScene:Lcom/htc/fusion/fx/FxScene;

.field public m_fxTxtlabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field public nSetting:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v1, p0, Lcom/htc/rosiewidgets/screentimeout/WidgetBaseClass;->mIcon:Landroid/widget/ImageView;

    .line 22
    iput-object v1, p0, Lcom/htc/rosiewidgets/screentimeout/WidgetBaseClass;->mLableText:Landroid/widget/TextView;

    .line 23
    iput-object v1, p0, Lcom/htc/rosiewidgets/screentimeout/WidgetBaseClass;->mLayout:Landroid/widget/RelativeLayout;

    .line 24
    iput-object v1, p0, Lcom/htc/rosiewidgets/screentimeout/WidgetBaseClass;->mBgImg:Landroid/widget/ImageView;

    .line 25
    iput-object v1, p0, Lcom/htc/rosiewidgets/screentimeout/WidgetBaseClass;->mHighLightImg:Landroid/widget/ImageView;

    .line 26
    iput-object v1, p0, Lcom/htc/rosiewidgets/screentimeout/WidgetBaseClass;->mHostView:Landroid/view/View;

    .line 27
    iput-object v1, p0, Lcom/htc/rosiewidgets/screentimeout/WidgetBaseClass;->mAnimDraw:Landroid/graphics/drawable/AnimationDrawable;

    .line 29
    iput-object v1, p0, Lcom/htc/rosiewidgets/screentimeout/WidgetBaseClass;->mResContext:Landroid/content/Context;

    .line 31
    const/16 v0, 0x11

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/htc/rosiewidgets/screentimeout/WidgetBaseClass;->mIntParam:[I

    .line 32
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/rosiewidgets/screentimeout/WidgetBaseClass;->mStrParam:[Ljava/lang/String;

    .line 34
    iput-object v1, p0, Lcom/htc/rosiewidgets/screentimeout/WidgetBaseClass;->m_fxTxtlabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 36
    new-instance v0, Lcom/htc/rosiewidgets/screentimeout/WidgetBaseClass$1;

    invoke-direct {v0, p0}, Lcom/htc/rosiewidgets/screentimeout/WidgetBaseClass$1;-><init>(Lcom/htc/rosiewidgets/screentimeout/WidgetBaseClass;)V

    iput-object v0, p0, Lcom/htc/rosiewidgets/screentimeout/WidgetBaseClass;->listener:Lcom/htc/fusion/fx/MessageListener;

    return-void
.end method

.method private initFusionScr()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 65
    new-array v0, v7, [Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/rosiewidgets/screentimeout/WidgetBaseClass;->mStrParam:[Ljava/lang/String;

    aget-object v2, v2, v5

    aput-object v2, v0, v6

    iget-object v2, p0, Lcom/htc/rosiewidgets/screentimeout/WidgetBaseClass;->mStrParam:[Ljava/lang/String;

    aget-object v2, v2, v6

    aput-object v2, v0, v5

    .line 67
    .local v0, controlNames:[Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/rosiewidgets/screentimeout/WidgetBaseClass;->m_fxScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v2, v0}, Lcom/htc/fusion/fx/FxScene;->getDescendants([Ljava/lang/String;)[Lcom/htc/fusion/fx/FxObject;

    move-result-object v1

    .line 69
    .local v1, descendants:[Lcom/htc/fusion/fx/FxObject;
    aget-object v2, v1, v6

    check-cast v2, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v2, p0, Lcom/htc/rosiewidgets/screentimeout/WidgetBaseClass;->m_fxTxtlabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 70
    iget-object v2, p0, Lcom/htc/rosiewidgets/screentimeout/WidgetBaseClass;->m_fxTxtlabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-static {v2}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 71
    iget-object v2, p0, Lcom/htc/rosiewidgets/screentimeout/WidgetBaseClass;->m_fxTxtlabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v3, p0, Lcom/htc/rosiewidgets/screentimeout/WidgetBaseClass;->mResContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f040007

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 72
    aget-object v2, v1, v5

    check-cast v2, Lcom/htc/fusion/fx/controls/FxSettingButton;

    iput-object v2, p0, Lcom/htc/rosiewidgets/screentimeout/WidgetBaseClass;->m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

    .line 73
    iget-object v2, p0, Lcom/htc/rosiewidgets/screentimeout/WidgetBaseClass;->m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-static {v2}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 74
    invoke-virtual {p0}, Lcom/htc/rosiewidgets/screentimeout/WidgetBaseClass;->getCurrentSetting()I

    move-result v2

    if-nez v2, :cond_0

    .line 76
    iget-object v2, p0, Lcom/htc/rosiewidgets/screentimeout/WidgetBaseClass;->m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-virtual {v2, v6}, Lcom/htc/fusion/fx/controls/FxSettingButton;->initialize(I)V

    .line 86
    :goto_0
    return-void

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/htc/rosiewidgets/screentimeout/WidgetBaseClass;->getCurrentSetting()I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 80
    iget-object v2, p0, Lcom/htc/rosiewidgets/screentimeout/WidgetBaseClass;->m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-virtual {v2, v5}, Lcom/htc/fusion/fx/controls/FxSettingButton;->initialize(I)V

    goto :goto_0

    .line 84
    :cond_1
    iget-object v2, p0, Lcom/htc/rosiewidgets/screentimeout/WidgetBaseClass;->m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-virtual {v2, v7}, Lcom/htc/fusion/fx/controls/FxSettingButton;->initialize(I)V

    goto :goto_0
.end method


# virtual methods
.method public deinit()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/htc/rosiewidgets/screentimeout/WidgetBaseClass;->m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/htc/rosiewidgets/screentimeout/WidgetBaseClass;->m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

    iget-object v1, p0, Lcom/htc/rosiewidgets/screentimeout/WidgetBaseClass;->listener:Lcom/htc/fusion/fx/MessageListener;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxSettingButton;->unbindClick(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 117
    :cond_0
    return-void
.end method

.method public getCurrentSetting()I
    .locals 2

    .prologue
    .line 89
    const-string v0, "HtcScreenTimeoutWidget"

    const-string v1, "WidgetBaseClass GetCurrentSetting: nRet = -1"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
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
    const/16 v1, 0x1f47

    .line 46
    iput-object p1, p0, Lcom/htc/rosiewidgets/screentimeout/WidgetBaseClass;->m_fxScene:Lcom/htc/fusion/fx/FxScene;

    .line 47
    iput-object p2, p0, Lcom/htc/rosiewidgets/screentimeout/WidgetBaseClass;->mResContext:Landroid/content/Context;

    .line 48
    iput-object p3, p0, Lcom/htc/rosiewidgets/screentimeout/WidgetBaseClass;->mHandler:Landroid/os/Handler;

    .line 49
    invoke-virtual {p4}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/htc/rosiewidgets/screentimeout/WidgetBaseClass;->mIntParam:[I

    .line 50
    invoke-virtual {p5}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/rosiewidgets/screentimeout/WidgetBaseClass;->mStrParam:[Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lcom/htc/rosiewidgets/screentimeout/WidgetBaseClass;->m_fxScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxScene;->stop()V

    .line 53
    invoke-direct {p0}, Lcom/htc/rosiewidgets/screentimeout/WidgetBaseClass;->initFusionScr()V

    .line 55
    iget-object v0, p0, Lcom/htc/rosiewidgets/screentimeout/WidgetBaseClass;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/htc/rosiewidgets/screentimeout/WidgetBaseClass;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/htc/rosiewidgets/screentimeout/WidgetBaseClass;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 61
    iget-object v0, p0, Lcom/htc/rosiewidgets/screentimeout/WidgetBaseClass;->m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxSettingButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/rosiewidgets/screentimeout/WidgetBaseClass;->listener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 62
    return-void
.end method

.method public pressIcon()V
    .locals 0

    .prologue
    .line 92
    return-void
.end method

.method public setButtonState()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/rosiewidgets/screentimeout/WidgetBaseClass;->m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxSettingButton;->currentState()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/rosiewidgets/screentimeout/WidgetBaseClass;->getCurrentSetting()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 97
    iget-object v0, p0, Lcom/htc/rosiewidgets/screentimeout/WidgetBaseClass;->m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-virtual {p0}, Lcom/htc/rosiewidgets/screentimeout/WidgetBaseClass;->getCurrentSetting()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxSettingButton;->setState(I)V

    .line 99
    :cond_0
    return-void
.end method

.method public updateIcon()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/htc/rosiewidgets/screentimeout/WidgetBaseClass;->m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxSettingButton;->currentState()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/rosiewidgets/screentimeout/WidgetBaseClass;->getCurrentSetting()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 104
    iget-object v0, p0, Lcom/htc/rosiewidgets/screentimeout/WidgetBaseClass;->m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxSettingButton;->changeToNextState(Z)V

    .line 110
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/htc/rosiewidgets/screentimeout/WidgetBaseClass;->m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

    iget-object v1, p0, Lcom/htc/rosiewidgets/screentimeout/WidgetBaseClass;->m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxSettingButton;->currentState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxSettingButton;->setState(I)V

    goto :goto_0
.end method
