.class public Lcom/htc/widget/HtcTabHost;
.super Landroid/widget/FrameLayout;
.source "HtcTabHost.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/HtcTabHost$IntentContentStrategy;,
        Lcom/htc/widget/HtcTabHost$FactoryContentStrategy;,
        Lcom/htc/widget/HtcTabHost$ViewIdContentStrategy;,
        Lcom/htc/widget/HtcTabHost$ViewIndicatorStrategy;,
        Lcom/htc/widget/HtcTabHost$LabelAndIconIndicatorStrategy;,
        Lcom/htc/widget/HtcTabHost$LabelIndicatorStrategy;,
        Lcom/htc/widget/HtcTabHost$ContentStrategy;,
        Lcom/htc/widget/HtcTabHost$IndicatorStrategy;,
        Lcom/htc/widget/HtcTabHost$TabSpec;,
        Lcom/htc/widget/HtcTabHost$TabContentFactory;,
        Lcom/htc/widget/HtcTabHost$OnTabChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HtcTabHost"


# instance fields
.field private mAddedtab:I

.field protected mCurrentTab:I

.field private mCurrentView:Landroid/view/View;

.field protected mLocalActivityManager:Landroid/app/LocalActivityManager;

.field private mOnTabChangeListener:Lcom/htc/widget/HtcTabHost$OnTabChangeListener;

.field private mTabContent:Landroid/widget/FrameLayout;

.field private mTabKeyListener:Landroid/view/View$OnKeyListener;

.field private mTabSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/widget/HtcTabHost$TabSpec;",
            ">;"
        }
    .end annotation
.end field

.field private mTabWidget:Lcom/htc/widget/HtcTabWidget;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/htc/widget/HtcTabHost;->mTabSpecs:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/HtcTabHost;->mCurrentTab:I

    iput-object v2, p0, Lcom/htc/widget/HtcTabHost;->mCurrentView:Landroid/view/View;

    iput-object v2, p0, Lcom/htc/widget/HtcTabHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcTabHost;->mAddedtab:I

    invoke-direct {p0}, Lcom/htc/widget/HtcTabHost;->initTabHost()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/htc/widget/HtcTabHost;->mTabSpecs:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/HtcTabHost;->mCurrentTab:I

    iput-object v2, p0, Lcom/htc/widget/HtcTabHost;->mCurrentView:Landroid/view/View;

    iput-object v2, p0, Lcom/htc/widget/HtcTabHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcTabHost;->mAddedtab:I

    invoke-direct {p0}, Lcom/htc/widget/HtcTabHost;->initTabHost()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/widget/HtcTabHost;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcTabHost;->mTabContent:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/widget/HtcTabHost;)Lcom/htc/widget/HtcTabWidget;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcTabHost;->mTabWidget:Lcom/htc/widget/HtcTabWidget;

    return-object v0
.end method

.method private initTabHost()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcTabHost;->setFocusableInTouchMode(Z)V

    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcTabHost;->setDescendantFocusability(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/HtcTabHost;->mCurrentTab:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcTabHost;->mCurrentView:Landroid/view/View;

    return-void
.end method

.method private invokeOnTabChangeListener()V
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/HtcTabHost;->mOnTabChangeListener:Lcom/htc/widget/HtcTabHost$OnTabChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcTabHost;->mOnTabChangeListener:Lcom/htc/widget/HtcTabHost$OnTabChangeListener;

    invoke-virtual {p0}, Lcom/htc/widget/HtcTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/htc/widget/HtcTabHost$OnTabChangeListener;->onTabChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addTab(Lcom/htc/widget/HtcTabHost$TabSpec;)V
    .locals 3

    #getter for: Lcom/htc/widget/HtcTabHost$TabSpec;->mIndicatorStrategy:Lcom/htc/widget/HtcTabHost$IndicatorStrategy;
    invoke-static {p1}, Lcom/htc/widget/HtcTabHost$TabSpec;->access$200(Lcom/htc/widget/HtcTabHost$TabSpec;)Lcom/htc/widget/HtcTabHost$IndicatorStrategy;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "you must specify a way to create the tab indicator."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    #getter for: Lcom/htc/widget/HtcTabHost$TabSpec;->mContentStrategy:Lcom/htc/widget/HtcTabHost$ContentStrategy;
    invoke-static {p1}, Lcom/htc/widget/HtcTabHost$TabSpec;->access$300(Lcom/htc/widget/HtcTabHost$TabSpec;)Lcom/htc/widget/HtcTabHost$ContentStrategy;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "you must specify a way to create the tab content"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    #getter for: Lcom/htc/widget/HtcTabHost$TabSpec;->mIndicatorStrategy:Lcom/htc/widget/HtcTabHost$IndicatorStrategy;
    invoke-static {p1}, Lcom/htc/widget/HtcTabHost$TabSpec;->access$200(Lcom/htc/widget/HtcTabHost$TabSpec;)Lcom/htc/widget/HtcTabHost$IndicatorStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/widget/HtcTabHost$IndicatorStrategy;->createIndicatorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/HtcTabHost;->mTabKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    #getter for: Lcom/htc/widget/HtcTabHost$TabSpec;->mIndicatorStrategy:Lcom/htc/widget/HtcTabHost$IndicatorStrategy;
    invoke-static {p1}, Lcom/htc/widget/HtcTabHost$TabSpec;->access$200(Lcom/htc/widget/HtcTabHost$TabSpec;)Lcom/htc/widget/HtcTabHost$IndicatorStrategy;

    move-result-object v1

    instance-of v1, v1, Lcom/htc/widget/HtcTabHost$ViewIndicatorStrategy;

    if-eqz v1, :cond_2

    :cond_2
    iget-object v1, p0, Lcom/htc/widget/HtcTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/htc/widget/HtcTabHost;->mCurrentTab:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcTabHost;->setCurrentTab(I)V

    :cond_3
    return-void
.end method

.method public addTabWithViewTag(Landroid/view/View;)V
    .locals 7

    move-object v3, p1

    check-cast v3, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_2

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    instance-of v4, v0, Landroid/view/View;

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    if-eqz v2, :cond_1

    const-string v4, "HtcTabHost"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",Action: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",Categories: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",Component: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/htc/widget/HtcTabHost;->mTabWidget:Lcom/htc/widget/HtcTabWidget;

    iget v5, p0, Lcom/htc/widget/HtcTabHost;->mAddedtab:I

    invoke-virtual {v4, v0, v5}, Lcom/htc/widget/HtcTabWidget;->setTabView(Landroid/view/View;I)Z

    iget-object v4, p0, Lcom/htc/widget/HtcTabHost;->mTabWidget:Lcom/htc/widget/HtcTabWidget;

    invoke-virtual {v4, v0}, Lcom/htc/widget/HtcTabWidget;->addView(Landroid/view/View;)V

    iget-object v4, p0, Lcom/htc/widget/HtcTabHost;->mTabSpecs:Ljava/util/List;

    iget v5, p0, Lcom/htc/widget/HtcTabHost;->mAddedtab:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcTabHost;->newTabSpec(Ljava/lang/String;)Lcom/htc/widget/HtcTabHost$TabSpec;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/htc/widget/HtcTabHost$TabSpec;->setContent(Landroid/content/Intent;)Lcom/htc/widget/HtcTabHost$TabSpec;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/htc/widget/HtcTabHost;->mTabKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget v4, p0, Lcom/htc/widget/HtcTabHost;->mAddedtab:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/htc/widget/HtcTabHost;->mAddedtab:I

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_1
    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcTabHost;->addTabWithViewTag(Landroid/view/View;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public clearAllTabs()V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcTabHost;->mTabWidget:Lcom/htc/widget/HtcTabWidget;

    invoke-virtual {v0}, Lcom/htc/widget/HtcTabWidget;->removeAllViews()V

    invoke-direct {p0}, Lcom/htc/widget/HtcTabHost;->initTabHost()V

    iget-object v0, p0, Lcom/htc/widget/HtcTabHost;->mTabContent:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/htc/widget/HtcTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/htc/widget/HtcTabHost;->requestLayout()V

    invoke-virtual {p0}, Lcom/htc/widget/HtcTabHost;->invalidate()V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x13

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcTabHost;->mCurrentView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isRootNamespace()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x21

    invoke-virtual {v1, v2}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcTabHost;->mTabWidget:Lcom/htc/widget/HtcTabWidget;

    iget v2, p0, Lcom/htc/widget/HtcTabHost;->mCurrentTab:I

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcTabHost;->playSoundEffect(I)V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public dispatchWindowFocusChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcTabHost;->mCurrentView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    :cond_0
    return-void
.end method

.method public getCurrentTab()I
    .locals 1

    iget v0, p0, Lcom/htc/widget/HtcTabHost;->mCurrentTab:I

    return v0
.end method

.method public getCurrentTabTag()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/htc/widget/HtcTabHost;->mCurrentTab:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcTabHost;->mCurrentTab:I

    iget-object v1, p0, Lcom/htc/widget/HtcTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcTabHost;->mTabSpecs:Ljava/util/List;

    iget v1, p0, Lcom/htc/widget/HtcTabHost;->mCurrentTab:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcTabHost$TabSpec;

    invoke-virtual {v0}, Lcom/htc/widget/HtcTabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentTabView()Landroid/view/View;
    .locals 2

    iget v0, p0, Lcom/htc/widget/HtcTabHost;->mCurrentTab:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcTabHost;->mCurrentTab:I

    iget-object v1, p0, Lcom/htc/widget/HtcTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcTabHost;->mTabWidget:Lcom/htc/widget/HtcTabWidget;

    iget v1, p0, Lcom/htc/widget/HtcTabHost;->mCurrentTab:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcTabHost;->mCurrentView:Landroid/view/View;

    return-object v0
.end method

.method public getTabContentView()Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcTabHost;->mTabContent:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getTabWidget()Lcom/htc/widget/HtcTabWidget;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcTabHost;->mTabWidget:Lcom/htc/widget/HtcTabWidget;

    return-object v0
.end method

.method public newTabSpec(Ljava/lang/String;)Lcom/htc/widget/HtcTabHost$TabSpec;
    .locals 2

    new-instance v0, Lcom/htc/widget/HtcTabHost$TabSpec;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/htc/widget/HtcTabHost$TabSpec;-><init>(Lcom/htc/widget/HtcTabHost;Ljava/lang/String;Lcom/htc/widget/HtcTabHost$1;)V

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/htc/widget/HtcTabHost;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/htc/widget/HtcTabHost;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    :cond_0
    return-void
.end method

.method public onTouchModeChanged(Z)V
    .locals 2

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcTabHost;->mCurrentView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcTabHost;->mTabWidget:Lcom/htc/widget/HtcTabWidget;

    iget v1, p0, Lcom/htc/widget/HtcTabHost;->mCurrentTab:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_1
    return-void
.end method

.method public setCurrentTab(I)V
    .locals 5

    const/4 v4, -0x1

    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lcom/htc/widget/HtcTabHost;->mCurrentTab:I

    if-eq v1, v4, :cond_2

    iget-object v1, p0, Lcom/htc/widget/HtcTabHost;->mTabSpecs:Ljava/util/List;

    iget v2, p0, Lcom/htc/widget/HtcTabHost;->mCurrentTab:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcTabHost$TabSpec;

    #getter for: Lcom/htc/widget/HtcTabHost$TabSpec;->mContentStrategy:Lcom/htc/widget/HtcTabHost$ContentStrategy;
    invoke-static {v1}, Lcom/htc/widget/HtcTabHost$TabSpec;->access$300(Lcom/htc/widget/HtcTabHost$TabSpec;)Lcom/htc/widget/HtcTabHost$ContentStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/widget/HtcTabHost$ContentStrategy;->tabClosed()V

    :cond_2
    iput p1, p0, Lcom/htc/widget/HtcTabHost;->mCurrentTab:I

    iget-object v1, p0, Lcom/htc/widget/HtcTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcTabHost$TabSpec;

    iget-object v1, p0, Lcom/htc/widget/HtcTabHost;->mTabWidget:Lcom/htc/widget/HtcTabWidget;

    iget v2, p0, Lcom/htc/widget/HtcTabHost;->mCurrentTab:I

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcTabWidget;->focusCurrentTab(I)V

    #getter for: Lcom/htc/widget/HtcTabHost$TabSpec;->mContentStrategy:Lcom/htc/widget/HtcTabHost$ContentStrategy;
    invoke-static {v0}, Lcom/htc/widget/HtcTabHost$TabSpec;->access$300(Lcom/htc/widget/HtcTabHost$TabSpec;)Lcom/htc/widget/HtcTabHost$ContentStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/widget/HtcTabHost$ContentStrategy;->getContentView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/HtcTabHost;->mCurrentView:Landroid/view/View;

    iget-object v1, p0, Lcom/htc/widget/HtcTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/htc/widget/HtcTabHost;->mTabContent:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/htc/widget/HtcTabHost;->mCurrentView:Landroid/view/View;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    iget-object v1, p0, Lcom/htc/widget/HtcTabHost;->mTabWidget:Lcom/htc/widget/HtcTabWidget;

    invoke-virtual {v1}, Lcom/htc/widget/HtcTabWidget;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/htc/widget/HtcTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    :cond_4
    invoke-direct {p0}, Lcom/htc/widget/HtcTabHost;->invokeOnTabChangeListener()V

    goto :goto_0
.end method

.method public setCurrentTabByTag(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/htc/widget/HtcTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcTabHost$TabSpec;

    invoke-virtual {v1}, Lcom/htc/widget/HtcTabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcTabHost;->setCurrentTab(I)V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setCustomTabWidget(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Lcom/htc/widget/HtcTabHost;->getTabWidget()Lcom/htc/widget/HtcTabWidget;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcTabWidget;->addCustomView(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcTabHost;->addTabWithViewTag(Landroid/view/View;)V

    iget v0, p0, Lcom/htc/widget/HtcTabHost;->mCurrentTab:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcTabHost;->setCurrentTab(I)V

    :cond_0
    return-void
.end method

.method public setCustomTabWidget(Landroid/view/View;I)V
    .locals 2

    invoke-virtual {p0}, Lcom/htc/widget/HtcTabHost;->getTabWidget()Lcom/htc/widget/HtcTabWidget;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcTabWidget;->addCustomView(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcTabHost;->addTabWithViewTag(Landroid/view/View;)V

    if-gez p2, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_2

    :cond_0
    invoke-virtual {p0, p2}, Lcom/htc/widget/HtcTabHost;->setCurrentTab(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p0, Lcom/htc/widget/HtcTabHost;->mCurrentTab:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcTabHost;->setCurrentTab(I)V

    goto :goto_0
.end method

.method public setOnTabChangedListener(Lcom/htc/widget/HtcTabHost$OnTabChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/HtcTabHost;->mOnTabChangeListener:Lcom/htc/widget/HtcTabHost$OnTabChangeListener;

    return-void
.end method

.method public setup()V
    .locals 2

    const v0, 0x1020013

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcTabWidget;

    iput-object v0, p0, Lcom/htc/widget/HtcTabHost;->mTabWidget:Lcom/htc/widget/HtcTabWidget;

    iget-object v0, p0, Lcom/htc/widget/HtcTabHost;->mTabWidget:Lcom/htc/widget/HtcTabWidget;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your TabHost must have a TabWidget whose id attribute is \'android.R.id.tabs\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/htc/widget/HtcTabHost$1;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcTabHost$1;-><init>(Lcom/htc/widget/HtcTabHost;)V

    iput-object v0, p0, Lcom/htc/widget/HtcTabHost;->mTabKeyListener:Landroid/view/View$OnKeyListener;

    iget-object v0, p0, Lcom/htc/widget/HtcTabHost;->mTabWidget:Lcom/htc/widget/HtcTabWidget;

    new-instance v1, Lcom/htc/widget/HtcTabHost$2;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcTabHost$2;-><init>(Lcom/htc/widget/HtcTabHost;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcTabWidget;->setTabSelectionListener(Lcom/htc/widget/HtcTabWidget$OnTabSelectionChanged;)V

    const v0, 0x1020011

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/htc/widget/HtcTabHost;->mTabContent:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/htc/widget/HtcTabHost;->mTabContent:Landroid/widget/FrameLayout;

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

    invoke-virtual {p0}, Lcom/htc/widget/HtcTabHost;->setup()V

    iput-object p1, p0, Lcom/htc/widget/HtcTabHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    return-void
.end method
