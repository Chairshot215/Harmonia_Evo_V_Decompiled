.class public Lcom/htc/widget/TabSwitchHost;
.super Landroid/widget/FrameLayout;
.source "TabSwitchHost.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/TabSwitchHost$IntentContentStrategy;,
        Lcom/htc/widget/TabSwitchHost$FactoryContentStrategy;,
        Lcom/htc/widget/TabSwitchHost$ViewIdContentStrategy;,
        Lcom/htc/widget/TabSwitchHost$LabelAndIconIndicatorStategy;,
        Lcom/htc/widget/TabSwitchHost$ContentStrategy;,
        Lcom/htc/widget/TabSwitchHost$IndicatorStrategy;,
        Lcom/htc/widget/TabSwitchHost$TabSpec;,
        Lcom/htc/widget/TabSwitchHost$TabContentFactory;,
        Lcom/htc/widget/TabSwitchHost$OnTabChangeSpecialListener;,
        Lcom/htc/widget/TabSwitchHost$OnTabChangeListener;,
        Lcom/htc/widget/TabSwitchHost$OnSwitchHostListener;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final ENABLE_DRAWINGCATCH:Z = false

.field public static final MODE_CENTERVIEW:I = 0x1

.field public static final MODE_WIDGET:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TabSwitchHost"


# instance fields
.field private mAddNewViewflag:Z

.field private mContext:Landroid/content/Context;

.field protected mCurrentTab:I

.field private mCurrentView:Landroid/view/View;

.field private mFocusMode:I

.field private mIsChangeTabAnim:Z

.field private mIsJumpTab:Z

.field private mIsShowWidget:Z

.field private mIsTouchMove:Z

.field protected mLocalActivityManager:Landroid/app/LocalActivityManager;

.field private mOnTabChangeListener:Lcom/htc/widget/TabSwitchHost$OnTabChangeListener;

.field private mPanelSwitchWidget:Lcom/htc/widget/TabSwitchWidget;

.field private mSwitchWidgetTouchEvent:Lcom/htc/widget/TabSwitchHost$OnSwitchHostListener;

.field private mTabContent:Landroid/widget/FrameLayout;

.field private mTabKeyListener:Landroid/view/View$OnKeyListener;

.field private mTabLayoutKeyListener:Landroid/view/View$OnKeyListener;

.field private mTabSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/widget/TabSwitchHost$TabSpec;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x18

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x3b

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x39

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/htc/widget/TabSwitchHost;->ENABLE_DRAWINGCATCH:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/htc/widget/TabSwitchHost;->mTabSpecs:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentTab:I

    iput-object v3, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentView:Landroid/view/View;

    iput-object v3, p0, Lcom/htc/widget/TabSwitchHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    iput-object v3, p0, Lcom/htc/widget/TabSwitchHost;->mContext:Landroid/content/Context;

    iput-boolean v2, p0, Lcom/htc/widget/TabSwitchHost;->mAddNewViewflag:Z

    iput-object v3, p0, Lcom/htc/widget/TabSwitchHost;->mSwitchWidgetTouchEvent:Lcom/htc/widget/TabSwitchHost$OnSwitchHostListener;

    iput v2, p0, Lcom/htc/widget/TabSwitchHost;->mFocusMode:I

    iput-boolean v2, p0, Lcom/htc/widget/TabSwitchHost;->mIsChangeTabAnim:Z

    iput-boolean v2, p0, Lcom/htc/widget/TabSwitchHost;->mIsTouchMove:Z

    iput-boolean v2, p0, Lcom/htc/widget/TabSwitchHost;->mIsJumpTab:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/TabSwitchHost;->mIsShowWidget:Z

    invoke-direct {p0}, Lcom/htc/widget/TabSwitchHost;->initTabHost()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/htc/widget/TabSwitchHost;->mTabSpecs:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentTab:I

    iput-object v3, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentView:Landroid/view/View;

    iput-object v3, p0, Lcom/htc/widget/TabSwitchHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    iput-object v3, p0, Lcom/htc/widget/TabSwitchHost;->mContext:Landroid/content/Context;

    iput-boolean v2, p0, Lcom/htc/widget/TabSwitchHost;->mAddNewViewflag:Z

    iput-object v3, p0, Lcom/htc/widget/TabSwitchHost;->mSwitchWidgetTouchEvent:Lcom/htc/widget/TabSwitchHost$OnSwitchHostListener;

    iput v2, p0, Lcom/htc/widget/TabSwitchHost;->mFocusMode:I

    iput-boolean v2, p0, Lcom/htc/widget/TabSwitchHost;->mIsChangeTabAnim:Z

    iput-boolean v2, p0, Lcom/htc/widget/TabSwitchHost;->mIsTouchMove:Z

    iput-boolean v2, p0, Lcom/htc/widget/TabSwitchHost;->mIsJumpTab:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/TabSwitchHost;->mIsShowWidget:Z

    iput-object p1, p0, Lcom/htc/widget/TabSwitchHost;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/htc/widget/TabSwitchHost;->initTabHost()V

    return-void
.end method

.method static synthetic access$102(Lcom/htc/widget/TabSwitchHost;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/widget/TabSwitchHost;->mIsTouchMove:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/htc/widget/TabSwitchHost;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/widget/TabSwitchHost;->onChangeTab()V

    return-void
.end method

.method static synthetic access$1200(Lcom/htc/widget/TabSwitchHost;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/widget/TabSwitchHost;->invokeOnTabChangeListener()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/widget/TabSwitchHost;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/TabSwitchHost;->mIsJumpTab:Z

    return v0
.end method

.method static synthetic access$202(Lcom/htc/widget/TabSwitchHost;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/widget/TabSwitchHost;->mIsJumpTab:Z

    return p1
.end method

.method static synthetic access$300(Lcom/htc/widget/TabSwitchHost;)Lcom/htc/widget/TabSwitchWidget;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost;->mPanelSwitchWidget:Lcom/htc/widget/TabSwitchWidget;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/widget/TabSwitchHost;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/TabSwitchHost;->mIsChangeTabAnim:Z

    return v0
.end method

.method static synthetic access$500()Z
    .locals 1

    sget-boolean v0, Lcom/htc/widget/TabSwitchHost;->ENABLE_DRAWINGCATCH:Z

    return v0
.end method

.method static synthetic access$600(Lcom/htc/widget/TabSwitchHost;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/widget/TabSwitchHost;)Lcom/htc/widget/TabSwitchHost$OnSwitchHostListener;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost;->mSwitchWidgetTouchEvent:Lcom/htc/widget/TabSwitchHost$OnSwitchHostListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/widget/TabSwitchHost;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost;->mTabContent:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private final initTabHost()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/widget/TabSwitchHost;->setFocusableInTouchMode(Z)V

    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/htc/widget/TabSwitchHost;->setDescendantFocusability(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentTab:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentView:Landroid/view/View;

    return-void
.end method

.method private invokeOnTabBeforeChangeListener(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost;->mOnTabChangeListener:Lcom/htc/widget/TabSwitchHost$OnTabChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost;->mOnTabChangeListener:Lcom/htc/widget/TabSwitchHost$OnTabChangeListener;

    instance-of v0, v0, Lcom/htc/widget/TabSwitchHost$OnTabChangeSpecialListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost;->mOnTabChangeListener:Lcom/htc/widget/TabSwitchHost$OnTabChangeListener;

    check-cast v0, Lcom/htc/widget/TabSwitchHost$OnTabChangeSpecialListener;

    invoke-interface {v0, p1}, Lcom/htc/widget/TabSwitchHost$OnTabChangeSpecialListener;->onTabBeforeChange(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private invokeOnTabChangeListener()V
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost;->mOnTabChangeListener:Lcom/htc/widget/TabSwitchHost$OnTabChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost;->mOnTabChangeListener:Lcom/htc/widget/TabSwitchHost$OnTabChangeListener;

    invoke-virtual {p0}, Lcom/htc/widget/TabSwitchHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/htc/widget/TabSwitchHost$OnTabChangeListener;->onTabChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private onChangeTab()V
    .locals 7

    const/4 v6, -0x1

    const-string v3, "TabSwitchHost"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onChangeTab------------- , mCurrentTab = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentTab:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/htc/widget/TabSwitchHost;->mTabSpecs:Ljava/util/List;

    iget v4, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentTab:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/TabSwitchHost$TabSpec;

    invoke-virtual {v3}, Lcom/htc/widget/TabSwitchHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/htc/widget/TabSwitchHost;->invokeOnTabBeforeChangeListener(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/htc/widget/TabSwitchHost;->mTabSpecs:Ljava/util/List;

    iget v4, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentTab:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/TabSwitchHost$TabSpec;

    iget-object v3, p0, Lcom/htc/widget/TabSwitchHost;->mPanelSwitchWidget:Lcom/htc/widget/TabSwitchWidget;

    iget v4, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentTab:I

    invoke-virtual {v3, v4}, Lcom/htc/widget/TabSwitchWidget;->setCurrentTab(I)V

    #getter for: Lcom/htc/widget/TabSwitchHost$TabSpec;->mContentStrategy:Lcom/htc/widget/TabSwitchHost$ContentStrategy;
    invoke-static {v2}, Lcom/htc/widget/TabSwitchHost$TabSpec;->access$1000(Lcom/htc/widget/TabSwitchHost$TabSpec;)Lcom/htc/widget/TabSwitchHost$ContentStrategy;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/widget/TabSwitchHost$ContentStrategy;->getContentView()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentView:Landroid/view/View;

    iget-object v3, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/htc/widget/TabSwitchHost;->mTabContent:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentView:Landroid/view/View;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v3, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    iget-object v3, p0, Lcom/htc/widget/TabSwitchHost;->mContext:Landroid/content/Context;

    const v4, 0x2040002

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    new-instance v3, Lcom/htc/widget/TabSwitchHost$6;

    invoke-direct {v3, p0}, Lcom/htc/widget/TabSwitchHost$6;-><init>(Lcom/htc/widget/TabSwitchHost;)V

    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v3, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public SetResumeCurrentView(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/widget/TabSwitchHost;->mAddNewViewflag:Z

    return-void
.end method

.method public addTab(Lcom/htc/widget/TabSwitchHost$TabSpec;)V
    .locals 3

    #getter for: Lcom/htc/widget/TabSwitchHost$TabSpec;->mIndicatorStrategy:Lcom/htc/widget/TabSwitchHost$IndicatorStrategy;
    invoke-static {p1}, Lcom/htc/widget/TabSwitchHost$TabSpec;->access$900(Lcom/htc/widget/TabSwitchHost$TabSpec;)Lcom/htc/widget/TabSwitchHost$IndicatorStrategy;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "you must specify a way to create the tab indicator."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    #getter for: Lcom/htc/widget/TabSwitchHost$TabSpec;->mContentStrategy:Lcom/htc/widget/TabSwitchHost$ContentStrategy;
    invoke-static {p1}, Lcom/htc/widget/TabSwitchHost$TabSpec;->access$1000(Lcom/htc/widget/TabSwitchHost$TabSpec;)Lcom/htc/widget/TabSwitchHost$ContentStrategy;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "you must specify a way to create the tab content"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/widget/TabSwitchHost;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/htc/widget/TabSwitchHost$TabSpec;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/htc/widget/TabSwitchHost;->mTabKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v1, p0, Lcom/htc/widget/TabSwitchHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/htc/widget/TabSwitchHost;->mPanelSwitchWidget:Lcom/htc/widget/TabSwitchWidget;

    invoke-virtual {v1, v0}, Lcom/htc/widget/TabSwitchWidget;->addView(Landroid/view/View;)V

    iget v1, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentTab:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/widget/TabSwitchHost;->setCurrentTab(I)V

    :cond_2
    return-void
.end method

.method public clearAllTabs()V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost;->mPanelSwitchWidget:Lcom/htc/widget/TabSwitchWidget;

    invoke-virtual {v0}, Lcom/htc/widget/TabSwitchWidget;->removeAllViews()V

    invoke-direct {p0}, Lcom/htc/widget/TabSwitchHost;->initTabHost()V

    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost;->mTabContent:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/htc/widget/TabSwitchHost;->requestLayout()V

    invoke-virtual {p0}, Lcom/htc/widget/TabSwitchHost;->invalidate()V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 8

    const/16 v7, 0x16

    const/16 v6, 0x15

    const/16 v5, 0x14

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/widget/TabSwitchHost;->mPanelSwitchWidget:Lcom/htc/widget/TabSwitchWidget;

    invoke-virtual {v3}, Lcom/htc/widget/TabSwitchWidget;->checkFocusMode()I

    move-result v3

    iput v3, p0, Lcom/htc/widget/TabSwitchHost;->mFocusMode:I

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    if-eq v3, v7, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    if-ne v3, v6, :cond_2

    :cond_0
    iput v2, p0, Lcom/htc/widget/TabSwitchHost;->mFocusMode:I

    iget-object v1, p0, Lcom/htc/widget/TabSwitchHost;->mPanelSwitchWidget:Lcom/htc/widget/TabSwitchWidget;

    invoke-virtual {v1}, Lcom/htc/widget/TabSwitchWidget;->requestFocus()Z

    iget-object v1, p0, Lcom/htc/widget/TabSwitchHost;->mPanelSwitchWidget:Lcom/htc/widget/TabSwitchWidget;

    iget v2, p0, Lcom/htc/widget/TabSwitchHost;->mFocusMode:I

    invoke-virtual {v1, v2}, Lcom/htc/widget/TabSwitchWidget;->setFocusMode(I)V

    iget-object v1, p0, Lcom/htc/widget/TabSwitchHost;->mPanelSwitchWidget:Lcom/htc/widget/TabSwitchWidget;

    invoke-virtual {v1, p1}, Lcom/htc/widget/TabSwitchWidget;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :cond_1
    :goto_0
    return v0

    :cond_2
    if-nez v0, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x13

    if-eq v3, v4, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    if-ne v3, v5, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/htc/widget/TabSwitchHost;->mPanelSwitchWidget:Lcom/htc/widget/TabSwitchWidget;

    invoke-virtual {v3}, Lcom/htc/widget/TabSwitchWidget;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/htc/widget/TabSwitchHost;->mPanelSwitchWidget:Lcom/htc/widget/TabSwitchWidget;

    invoke-virtual {v3}, Lcom/htc/widget/TabSwitchWidget;->isSelectTab()Z

    move-result v3

    if-nez v3, :cond_4

    iput v1, p0, Lcom/htc/widget/TabSwitchHost;->mFocusMode:I

    iget-object v1, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    iget-object v1, p0, Lcom/htc/widget/TabSwitchHost;->mPanelSwitchWidget:Lcom/htc/widget/TabSwitchWidget;

    iget v2, p0, Lcom/htc/widget/TabSwitchHost;->mFocusMode:I

    invoke-virtual {v1, v2}, Lcom/htc/widget/TabSwitchWidget;->setFocusMode(I)V

    iget-object v1, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :cond_4
    if-nez v0, :cond_5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    if-ne v3, v5, :cond_5

    iget-object v3, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x82

    invoke-virtual {v3, v4}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_5

    iput v2, p0, Lcom/htc/widget/TabSwitchHost;->mFocusMode:I

    iget-object v2, p0, Lcom/htc/widget/TabSwitchHost;->mPanelSwitchWidget:Lcom/htc/widget/TabSwitchWidget;

    invoke-virtual {v2}, Lcom/htc/widget/TabSwitchWidget;->requestFocus()Z

    iget-object v2, p0, Lcom/htc/widget/TabSwitchHost;->mPanelSwitchWidget:Lcom/htc/widget/TabSwitchWidget;

    iget v3, p0, Lcom/htc/widget/TabSwitchHost;->mFocusMode:I

    invoke-virtual {v2, v3}, Lcom/htc/widget/TabSwitchWidget;->setFocusMode(I)V

    move v0, v1

    goto :goto_0

    :cond_5
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    if-eq v1, v7, :cond_6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    if-ne v1, v6, :cond_1

    :cond_6
    move v0, v2

    goto/16 :goto_0
.end method

.method public dispatchWindowFocusChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    :cond_0
    return-void
.end method

.method public getCurrentTab()I
    .locals 1

    iget v0, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentTab:I

    return v0
.end method

.method public getCurrentTabTag()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentTab:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentTab:I

    iget-object v1, p0, Lcom/htc/widget/TabSwitchHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost;->mTabSpecs:Ljava/util/List;

    iget v1, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentTab:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/TabSwitchHost$TabSpec;

    invoke-virtual {v0}, Lcom/htc/widget/TabSwitchHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentTabView()Landroid/view/View;
    .locals 2

    iget v0, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentTab:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentTab:I

    iget-object v1, p0, Lcom/htc/widget/TabSwitchHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost;->mPanelSwitchWidget:Lcom/htc/widget/TabSwitchWidget;

    iget v1, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentTab:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/TabSwitchWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentView:Landroid/view/View;

    return-object v0
.end method

.method public getTabContentView()Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost;->mTabContent:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getTabSpecs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/widget/TabSwitchHost$TabSpec;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost;->mTabSpecs:Ljava/util/List;

    return-object v0
.end method

.method public getTabWidget()Lcom/htc/widget/TabSwitchWidget;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost;->mPanelSwitchWidget:Lcom/htc/widget/TabSwitchWidget;

    return-object v0
.end method

.method public getWidgetVisiable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/TabSwitchHost;->mIsShowWidget:Z

    return v0
.end method

.method public newTabSpec(Ljava/lang/String;)Lcom/htc/widget/TabSwitchHost$TabSpec;
    .locals 2

    new-instance v0, Lcom/htc/widget/TabSwitchHost$TabSpec;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/htc/widget/TabSwitchHost$TabSpec;-><init>(Lcom/htc/widget/TabSwitchHost;Ljava/lang/String;Lcom/htc/widget/TabSwitchHost$1;)V

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/htc/widget/TabSwitchHost;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/htc/widget/TabSwitchHost;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    invoke-super {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    invoke-super {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    iget-object v4, p0, Lcom/htc/widget/TabSwitchHost;->mPanelSwitchWidget:Lcom/htc/widget/TabSwitchWidget;

    invoke-virtual {v4}, Lcom/htc/widget/TabSwitchWidget;->getWidgetHeight()I

    move-result v3

    iget-boolean v4, p0, Lcom/htc/widget/TabSwitchHost;->mIsShowWidget:Z

    if-nez v4, :cond_0

    const/4 v3, 0x0

    :cond_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    sub-int v4, v1, v3

    invoke-direct {v0, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v4, p0, Lcom/htc/widget/TabSwitchHost;->mTabContent:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/htc/widget/TabSwitchHost;->mTabContent:Landroid/widget/FrameLayout;

    sub-int v5, v1, v3

    invoke-virtual {p0, v4, v2, v5}, Lcom/htc/widget/TabSwitchHost;->measureChild(Landroid/view/View;II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    return-void
.end method

.method public onTouchModeChanged(Z)V
    .locals 1

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost;->mPanelSwitchWidget:Lcom/htc/widget/TabSwitchWidget;

    invoke-virtual {v0}, Lcom/htc/widget/TabSwitchWidget;->requestFocus()Z

    :cond_1
    return-void
.end method

.method public removeTab(I)V
    .locals 4

    const/4 v2, 0x1

    if-lt p1, v2, :cond_0

    iget-object v1, p0, Lcom/htc/widget/TabSwitchHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le p1, v1, :cond_1

    :cond_0
    const-string v1, "TabSwitchHost"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Table number"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "is wrong. Cannot delete"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/htc/widget/TabSwitchHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, v2, :cond_2

    const-string v1, "TabSwitchHost"

    const-string v2, "Only one tab remains. Cannot delete"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    add-int/lit8 v0, p1, -0x1

    iget v1, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentTab:I

    if-ne v1, v0, :cond_3

    iget-object v1, p0, Lcom/htc/widget/TabSwitchHost;->mTabSpecs:Ljava/util/List;

    iget v2, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentTab:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/TabSwitchHost$TabSpec;

    #getter for: Lcom/htc/widget/TabSwitchHost$TabSpec;->mContentStrategy:Lcom/htc/widget/TabSwitchHost$ContentStrategy;
    invoke-static {v1}, Lcom/htc/widget/TabSwitchHost$TabSpec;->access$1000(Lcom/htc/widget/TabSwitchHost$TabSpec;)Lcom/htc/widget/TabSwitchHost$ContentStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/widget/TabSwitchHost$ContentStrategy;->tabClosed()V

    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentTab:I

    :cond_3
    iget v1, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentTab:I

    if-lt v1, v0, :cond_4

    iget v1, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentTab:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentTab:I

    :cond_4
    iget-object v1, p0, Lcom/htc/widget/TabSwitchHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/TabSwitchHost$TabSpec;

    #getter for: Lcom/htc/widget/TabSwitchHost$TabSpec;->mContentStrategy:Lcom/htc/widget/TabSwitchHost$ContentStrategy;
    invoke-static {v1}, Lcom/htc/widget/TabSwitchHost$TabSpec;->access$1000(Lcom/htc/widget/TabSwitchHost$TabSpec;)Lcom/htc/widget/TabSwitchHost$ContentStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/widget/TabSwitchHost$ContentStrategy;->tabRemoved()V

    iget-object v1, p0, Lcom/htc/widget/TabSwitchHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/TabSwitchHost$TabSpec;

    invoke-virtual {v1}, Lcom/htc/widget/TabSwitchHost$TabSpec;->doDelete()V

    iget-object v1, p0, Lcom/htc/widget/TabSwitchHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/htc/widget/TabSwitchHost;->mPanelSwitchWidget:Lcom/htc/widget/TabSwitchWidget;

    iget v2, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentTab:I

    invoke-virtual {v1, v0, v2}, Lcom/htc/widget/TabSwitchWidget;->removeViewIndex(II)V

    goto :goto_0
.end method

.method public removeTab(Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    const-string v2, "TabSwitchHost"

    const-string v3, "Invalid tag. Can not delete"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/htc/widget/TabSwitchHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_3

    const-string v2, "TabSwitchHost"

    const-string v3, "Table number is one. Can not delete"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/htc/widget/TabSwitchHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/htc/widget/TabSwitchHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/TabSwitchHost$TabSpec;

    invoke-virtual {v1}, Lcom/htc/widget/TabSwitchHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Lcom/htc/widget/TabSwitchHost;->removeTab(I)V

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public setChangeTabAnimationState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/widget/TabSwitchHost;->mIsChangeTabAnim:Z

    return-void
.end method

.method public setCountText(ILjava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost;->mPanelSwitchWidget:Lcom/htc/widget/TabSwitchWidget;

    invoke-virtual {v0, p1, p2}, Lcom/htc/widget/TabSwitchWidget;->setCountText(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public setCountVisibility(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost;->mPanelSwitchWidget:Lcom/htc/widget/TabSwitchWidget;

    invoke-virtual {v0, p1, p2}, Lcom/htc/widget/TabSwitchWidget;->setCountVisibility(IZ)V

    return-void
.end method

.method public setCurrentTab(I)V
    .locals 7

    const/4 v6, -0x1

    if-ltz p1, :cond_0

    iget-object v3, p0, Lcom/htc/widget/TabSwitchHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt p1, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v3, p0, Lcom/htc/widget/TabSwitchHost;->mAddNewViewflag:Z

    if-nez v3, :cond_2

    iget v3, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentTab:I

    if-eq p1, v3, :cond_0

    :cond_2
    iget v3, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentTab:I

    if-eq v3, v6, :cond_3

    iget-object v3, p0, Lcom/htc/widget/TabSwitchHost;->mTabSpecs:Ljava/util/List;

    iget v4, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentTab:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/TabSwitchHost$TabSpec;

    #getter for: Lcom/htc/widget/TabSwitchHost$TabSpec;->mContentStrategy:Lcom/htc/widget/TabSwitchHost$ContentStrategy;
    invoke-static {v3}, Lcom/htc/widget/TabSwitchHost$TabSpec;->access$1000(Lcom/htc/widget/TabSwitchHost$TabSpec;)Lcom/htc/widget/TabSwitchHost$ContentStrategy;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/widget/TabSwitchHost$ContentStrategy;->tabClosed()V

    :cond_3
    iput p1, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentTab:I

    iget-boolean v3, p0, Lcom/htc/widget/TabSwitchHost;->mIsChangeTabAnim:Z

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/htc/widget/TabSwitchHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/TabSwitchHost$TabSpec;

    invoke-virtual {v3}, Lcom/htc/widget/TabSwitchHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/htc/widget/TabSwitchHost;->invokeOnTabBeforeChangeListener(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/htc/widget/TabSwitchHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/TabSwitchHost$TabSpec;

    iget-object v3, p0, Lcom/htc/widget/TabSwitchHost;->mPanelSwitchWidget:Lcom/htc/widget/TabSwitchWidget;

    iget v4, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentTab:I

    invoke-virtual {v3, v4}, Lcom/htc/widget/TabSwitchWidget;->setCurrentTab(I)V

    #getter for: Lcom/htc/widget/TabSwitchHost$TabSpec;->mContentStrategy:Lcom/htc/widget/TabSwitchHost$ContentStrategy;
    invoke-static {v2}, Lcom/htc/widget/TabSwitchHost$TabSpec;->access$1000(Lcom/htc/widget/TabSwitchHost$TabSpec;)Lcom/htc/widget/TabSwitchHost$ContentStrategy;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/widget/TabSwitchHost$ContentStrategy;->getContentView()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentView:Landroid/view/View;

    iget-object v3, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/htc/widget/TabSwitchHost;->mTabContent:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentView:Landroid/view/View;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    iget-object v3, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    invoke-direct {p0}, Lcom/htc/widget/TabSwitchHost;->invokeOnTabChangeListener()V

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentView:Landroid/view/View;

    if-eqz v3, :cond_7

    iget-boolean v3, p0, Lcom/htc/widget/TabSwitchHost;->mIsTouchMove:Z

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/htc/widget/TabSwitchHost;->mContext:Landroid/content/Context;

    const v4, 0x2040003

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    :goto_1
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v3, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    iget-object v3, p0, Lcom/htc/widget/TabSwitchHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v3, Lcom/htc/widget/TabSwitchHost$5;

    invoke-direct {v3, p0}, Lcom/htc/widget/TabSwitchHost$5;-><init>(Lcom/htc/widget/TabSwitchHost;)V

    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto/16 :goto_0

    :cond_6
    iget-object v3, p0, Lcom/htc/widget/TabSwitchHost;->mContext:Landroid/content/Context;

    const v4, 0x2040004

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    goto :goto_1

    :cond_7
    invoke-direct {p0}, Lcom/htc/widget/TabSwitchHost;->onChangeTab()V

    goto/16 :goto_0
.end method

.method public setCurrentTabByTag(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/htc/widget/TabSwitchHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/TabSwitchHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/TabSwitchHost$TabSpec;

    invoke-virtual {v1}, Lcom/htc/widget/TabSwitchHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/htc/widget/TabSwitchHost;->setCurrentTab(I)V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setInfoMessageEnable(II)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost;->mPanelSwitchWidget:Lcom/htc/widget/TabSwitchWidget;

    invoke-virtual {v0, p1, p2}, Lcom/htc/widget/TabSwitchWidget;->setInfoMessageEnable(II)V

    return-void
.end method

.method public setOnTabChangedListener(Lcom/htc/widget/TabSwitchHost$OnTabChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/TabSwitchHost;->mOnTabChangeListener:Lcom/htc/widget/TabSwitchHost$OnTabChangeListener;

    return-void
.end method

.method public setTabHintEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost;->mPanelSwitchWidget:Lcom/htc/widget/TabSwitchWidget;

    invoke-virtual {v0, p1}, Lcom/htc/widget/TabSwitchWidget;->setTabHintEnabled(Z)V

    return-void
.end method

.method public setWidgetTouchListener(Lcom/htc/widget/TabSwitchHost$OnSwitchHostListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/TabSwitchHost;->mSwitchWidgetTouchEvent:Lcom/htc/widget/TabSwitchHost$OnSwitchHostListener;

    return-void
.end method

.method public setWidgetVisiable(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost;->mPanelSwitchWidget:Lcom/htc/widget/TabSwitchWidget;

    invoke-virtual {v0, p1}, Lcom/htc/widget/TabSwitchWidget;->setVisibility(I)V

    sparse-switch p1, :sswitch_data_0

    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/TabSwitchHost;->requestLayout()V

    return-void

    :sswitch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/TabSwitchHost;->mIsShowWidget:Z

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/TabSwitchHost;->mIsShowWidget:Z

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x4 -> :sswitch_0
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public setup()V
    .locals 2

    const v0, 0x1020013

    invoke-virtual {p0, v0}, Lcom/htc/widget/TabSwitchHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/TabSwitchWidget;

    iput-object v0, p0, Lcom/htc/widget/TabSwitchHost;->mPanelSwitchWidget:Lcom/htc/widget/TabSwitchWidget;

    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost;->mPanelSwitchWidget:Lcom/htc/widget/TabSwitchWidget;

    invoke-virtual {v0, p0}, Lcom/htc/widget/TabSwitchWidget;->setTabSwitchHost(Lcom/htc/widget/TabSwitchHost;)V

    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost;->mPanelSwitchWidget:Lcom/htc/widget/TabSwitchWidget;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your TabHost must have a TabWidget whose id attribute is \'android.R.id.tabs\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost;->mPanelSwitchWidget:Lcom/htc/widget/TabSwitchWidget;

    new-instance v1, Lcom/htc/widget/TabSwitchHost$1;

    invoke-direct {v1, p0}, Lcom/htc/widget/TabSwitchHost$1;-><init>(Lcom/htc/widget/TabSwitchHost;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/TabSwitchWidget;->setWidgetTouchListener(Lcom/htc/widget/TabSwitchWidget$OnSwitchWidgetListener;)V

    new-instance v0, Lcom/htc/widget/TabSwitchHost$2;

    invoke-direct {v0, p0}, Lcom/htc/widget/TabSwitchHost$2;-><init>(Lcom/htc/widget/TabSwitchHost;)V

    iput-object v0, p0, Lcom/htc/widget/TabSwitchHost;->mTabKeyListener:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcom/htc/widget/TabSwitchHost$3;

    invoke-direct {v0, p0}, Lcom/htc/widget/TabSwitchHost$3;-><init>(Lcom/htc/widget/TabSwitchHost;)V

    iput-object v0, p0, Lcom/htc/widget/TabSwitchHost;->mTabLayoutKeyListener:Landroid/view/View$OnKeyListener;

    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost;->mPanelSwitchWidget:Lcom/htc/widget/TabSwitchWidget;

    iget-object v1, p0, Lcom/htc/widget/TabSwitchHost;->mTabLayoutKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/TabSwitchWidget;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost;->mPanelSwitchWidget:Lcom/htc/widget/TabSwitchWidget;

    new-instance v1, Lcom/htc/widget/TabSwitchHost$4;

    invoke-direct {v1, p0}, Lcom/htc/widget/TabSwitchHost$4;-><init>(Lcom/htc/widget/TabSwitchHost;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/TabSwitchWidget;->setTabSelectionListener(Lcom/htc/widget/TabSwitchWidget$OnTabSelectionChanged;)V

    const v0, 0x1020011

    invoke-virtual {p0, v0}, Lcom/htc/widget/TabSwitchHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/htc/widget/TabSwitchHost;->mTabContent:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost;->mTabContent:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your TabHost must have a FrameLayout whose id attribute is \'android.R.id.tabcontent\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public setup(Landroid/app/LocalActivityManager;)V
    .locals 0

    invoke-virtual {p0}, Lcom/htc/widget/TabSwitchHost;->setup()V

    iput-object p1, p0, Lcom/htc/widget/TabSwitchHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    return-void
.end method

.method public updateTabLabelText(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    if-nez p2, :cond_2

    :cond_0
    const-string v2, "TabSwitchHost"

    const-string v3, "Invalid tag or text info. Can not update"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/htc/widget/TabSwitchHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/htc/widget/TabSwitchHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/TabSwitchHost$TabSpec;

    invoke-virtual {v1}, Lcom/htc/widget/TabSwitchHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/widget/TabSwitchHost;->mPanelSwitchWidget:Lcom/htc/widget/TabSwitchWidget;

    invoke-virtual {v2, v0, p2}, Lcom/htc/widget/TabSwitchWidget;->setInfoTextToWidget(ILjava/lang/CharSequence;)V

    invoke-virtual {v1, p2}, Lcom/htc/widget/TabSwitchHost$TabSpec;->setInfoText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
