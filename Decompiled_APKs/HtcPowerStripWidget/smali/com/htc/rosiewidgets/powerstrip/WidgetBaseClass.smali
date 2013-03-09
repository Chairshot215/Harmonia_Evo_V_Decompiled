.class public Lcom/htc/rosiewidgets/powerstrip/WidgetBaseClass;
.super Ljava/lang/Object;
.source "WidgetBaseClass.java"

# interfaces
.implements Lcom/htc/rosiewidgets/powerstrip/Constants;


# instance fields
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

.field public m_fxScene:Lcom/htc/fusion/fx/FxScene;

.field public nSetting:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBaseClass;->mIcon:Landroid/widget/ImageView;

    .line 16
    iput-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBaseClass;->mLableText:Landroid/widget/TextView;

    .line 17
    iput-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBaseClass;->mLayout:Landroid/widget/RelativeLayout;

    .line 18
    iput-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBaseClass;->mBgImg:Landroid/widget/ImageView;

    .line 19
    iput-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBaseClass;->mHighLightImg:Landroid/widget/ImageView;

    .line 20
    iput-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBaseClass;->mHostView:Landroid/view/View;

    .line 21
    iput-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBaseClass;->mAnimDraw:Landroid/graphics/drawable/AnimationDrawable;

    .line 23
    iput-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBaseClass;->mResContext:Landroid/content/Context;

    .line 25
    const/16 v0, 0x11

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBaseClass;->mIntParam:[I

    .line 26
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBaseClass;->mStrParam:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCurrentSetting()I
    .locals 2

    .prologue
    .line 38
    const-string v0, "HtcPowerStripWidget"

    const-string v1, "WidgetBaseClass GetCurrentSetting: nRet = -1"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    const/4 v0, -0x1

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBaseClass;->nSetting:I

    return v0
.end method

.method public init(Lcom/htc/fusion/fx/FxScene;Landroid/content/Context;Landroid/os/Handler;[I[Ljava/lang/String;)V
    .locals 1
    .parameter "fxScene"
    .parameter "rContext"
    .parameter "UiHandler"
    .parameter "IntParam"
    .parameter "StrParam"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBaseClass;->m_fxScene:Lcom/htc/fusion/fx/FxScene;

    .line 31
    iput-object p2, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBaseClass;->mResContext:Landroid/content/Context;

    .line 32
    iput-object p3, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBaseClass;->mHandler:Landroid/os/Handler;

    .line 33
    invoke-virtual {p4}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBaseClass;->mIntParam:[I

    .line 34
    invoke-virtual {p5}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBaseClass;->mStrParam:[Ljava/lang/String;

    .line 35
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBaseClass;->m_fxScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxScene;->stop()V

    .line 36
    return-void
.end method
