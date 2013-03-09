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
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 72
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/htc/widget/HtcTabHost;->mTabSpecs:Ljava/util/List;

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/HtcTabHost;->mCurrentTab:I

    .line 60
    iput-object v2, p0, Lcom/htc/widget/HtcTabHost;->mCurrentView:Landroid/view/View;

    .line 65
    iput-object v2, p0, Lcom/htc/widget/HtcTabHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcTabHost;->mAddedtab:I

    .line 73
    invoke-direct {p0}, Lcom/htc/widget/HtcTabHost;->initTabHost()V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 77
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/htc/widget/HtcTabHost;->mTabSpecs:Ljava/util/List;

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/HtcTabHost;->mCurrentTab:I

    .line 60
    iput-object v2, p0, Lcom/htc/widget/HtcTabHost;->mCurrentView:Landroid/view/View;

    .line 65
    iput-object v2, p0, Lcom/htc/widget/HtcTabHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcTabHost;->mAddedtab:I

    .line 78
    invoke-direct {p0}, Lcom/htc/widget/HtcTabHost;->initTabHost()V

    .line 79
    return-void
.end method

.method static synthetic access$100(Lcom/htc/widget/HtcTabHost;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/widget/HtcTabHost;->mTabContent:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/widget/HtcTabHost;)Lcom/htc/widget/HtcTabWidget;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/widget/HtcTabHost;->mTabWidget:Lcom/htc/widget/HtcTabWidget;

    return-object v0
.end method

.method private initTabHost()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcTabHost;->setFocusableInTouchMode(Z)V

    .line 83
    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcTabHost;->setDescendantFocusability(I)V

    .line 85
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/HtcTabHost;->mCurrentTab:I

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcTabHost;->mCurrentView:Landroid/view/View;

    .line 87
    return-void
.end method

.method private invokeOnTabChangeListener()V
    .locals 2

    .prologue
    .line 430
    iget-object v0, p0, Lcom/htc/widget/HtcTabHost;->mOnTabChangeListener:Lcom/htc/widget/HtcTabHost$OnTabChangeListener;

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/htc/widget/HtcTabHost;->mOnTabChangeListener:Lcom/htc/widget/HtcTabHost$OnTabChangeListener;

    invoke-virtual {p0}, Lcom/htc/widget/HtcTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/htc/widget/HtcTabHost$OnTabChangeListener;->onTabChanged(Ljava/lang/String;)V

    .line 433
    :cond_0
    return-void
.end method


# virtual methods
.method public addTab(Lcom/htc/widget/HtcTabHost$TabSpec;)V
    .locals 3
    .parameter "tabSpec"

    .prologue
    .line 202
    #getter for: Lcom/htc/widget/HtcTabHost$TabSpec;->mIndicatorStrategy:Lcom/htc/widget/HtcTabHost$IndicatorStrategy;
    invoke-static {p1}, Lcom/htc/widget/HtcTabHost$TabSpec;->access$200(Lcom/htc/widget/HtcTabHost$TabSpec;)Lcom/htc/widget/HtcTabHost$IndicatorStrategy;

    move-result-object v1

    if-nez v1, :cond_0

    .line 203
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "you must specify a way to create the tab indicator."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 206
    :cond_0
    #getter for: Lcom/htc/widget/HtcTabHost$TabSpec;->mContentStrategy:Lcom/htc/widget/HtcTabHost$ContentStrategy;
    invoke-static {p1}, Lcom/htc/widget/HtcTabHost$TabSpec;->access$300(Lcom/htc/widget/HtcTabHost$TabSpec;)Lcom/htc/widget/HtcTabHost$ContentStrategy;

    move-result-object v1

    if-nez v1, :cond_1

    .line 207
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "you must specify a way to create the tab content"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 209
    :cond_1
    #getter for: Lcom/htc/widget/HtcTabHost$TabSpec;->mIndicatorStrategy:Lcom/htc/widget/HtcTabHost$IndicatorStrategy;
    invoke-static {p1}, Lcom/htc/widget/HtcTabHost$TabSpec;->access$200(Lcom/htc/widget/HtcTabHost$TabSpec;)Lcom/htc/widget/HtcTabHost$IndicatorStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/widget/HtcTabHost$IndicatorStrategy;->createIndicatorView()Landroid/view/View;

    move-result-object v0

    .line 210
    .local v0, tabIndicator:Landroid/view/View;
    iget-object v1, p0, Lcom/htc/widget/HtcTabHost;->mTabKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 214
    #getter for: Lcom/htc/widget/HtcTabHost$TabSpec;->mIndicatorStrategy:Lcom/htc/widget/HtcTabHost$IndicatorStrategy;
    invoke-static {p1}, Lcom/htc/widget/HtcTabHost$TabSpec;->access$200(Lcom/htc/widget/HtcTabHost$TabSpec;)Lcom/htc/widget/HtcTabHost$IndicatorStrategy;

    move-result-object v1

    instance-of v1, v1, Lcom/htc/widget/HtcTabHost$ViewIndicatorStrategy;

    if-eqz v1, :cond_2

    .line 220
    :cond_2
    iget-object v1, p0, Lcom/htc/widget/HtcTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    iget v1, p0, Lcom/htc/widget/HtcTabHost;->mCurrentTab:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 223
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcTabHost;->setCurrentTab(I)V

    .line 225
    :cond_3
    return-void
.end method

.method public addTabWithViewTag(Landroid/view/View;)V
    .locals 7
    .parameter "vw"

    .prologue
    .line 357
    move-object v3, p1

    check-cast v3, Landroid/view/ViewGroup;

    .line 358
    .local v3, vg:Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 359
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 360
    .local v0, child:Landroid/view/View;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 362
    instance-of v4, v0, Landroid/view/View;

    if-eqz v4, :cond_0

    .line 363
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 365
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_1

    .line 366
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

    .line 370
    iget-object v4, p0, Lcom/htc/widget/HtcTabHost;->mTabWidget:Lcom/htc/widget/HtcTabWidget;

    iget v5, p0, Lcom/htc/widget/HtcTabHost;->mAddedtab:I

    invoke-virtual {v4, v0, v5}, Lcom/htc/widget/HtcTabWidget;->setTabView(Landroid/view/View;I)Z

    .line 371
    iget-object v4, p0, Lcom/htc/widget/HtcTabHost;->mTabWidget:Lcom/htc/widget/HtcTabWidget;

    invoke-virtual {v4, v0}, Lcom/htc/widget/HtcTabWidget;->addView(Landroid/view/View;)V

    .line 372
    iget-object v4, p0, Lcom/htc/widget/HtcTabHost;->mTabSpecs:Ljava/util/List;

    iget v5, p0, Lcom/htc/widget/HtcTabHost;->mAddedtab:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcTabHost;->newTabSpec(Ljava/lang/String;)Lcom/htc/widget/HtcTabHost$TabSpec;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/htc/widget/HtcTabHost$TabSpec;->setContent(Landroid/content/Intent;)Lcom/htc/widget/HtcTabHost$TabSpec;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 375
    iget-object v4, p0, Lcom/htc/widget/HtcTabHost;->mTabKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 376
    iget v4, p0, Lcom/htc/widget/HtcTabHost;->mAddedtab:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/htc/widget/HtcTabHost;->mAddedtab:I

    .line 358
    .end local v2           #intent:Landroid/content/Intent;
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 377
    .restart local v2       #intent:Landroid/content/Intent;
    :cond_1
    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    .line 378
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcTabHost;->addTabWithViewTag(Landroid/view/View;)V

    goto :goto_1

    .line 382
    .end local v0           #child:Landroid/view/View;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_2
    return-void
.end method

.method public clearAllTabs()V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/htc/widget/HtcTabHost;->mTabWidget:Lcom/htc/widget/HtcTabWidget;

    invoke-virtual {v0}, Lcom/htc/widget/HtcTabWidget;->removeAllViews()V

    .line 233
    invoke-direct {p0}, Lcom/htc/widget/HtcTabHost;->initTabHost()V

    .line 234
    iget-object v0, p0, Lcom/htc/widget/HtcTabHost;->mTabContent:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 235
    iget-object v0, p0, Lcom/htc/widget/HtcTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 236
    invoke-virtual {p0}, Lcom/htc/widget/HtcTabHost;->requestLayout()V

    .line 237
    invoke-virtual {p0}, Lcom/htc/widget/HtcTabHost;->invalidate()V

    .line 238
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 285
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 289
    .local v0, handled:Z
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

    .line 296
    iget-object v1, p0, Lcom/htc/widget/HtcTabHost;->mTabWidget:Lcom/htc/widget/HtcTabWidget;

    iget v2, p0, Lcom/htc/widget/HtcTabHost;->mCurrentTab:I

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 297
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcTabHost;->playSoundEffect(I)V

    .line 298
    const/4 v0, 0x1

    .line 300
    .end local v0           #handled:Z
    :cond_0
    return v0
.end method

.method public dispatchWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 306
    iget-object v0, p0, Lcom/htc/widget/HtcTabHost;->mCurrentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/htc/widget/HtcTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 309
    :cond_0
    return-void
.end method

.method public getCurrentTab()I
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lcom/htc/widget/HtcTabHost;->mCurrentTab:I

    return v0
.end method

.method public getCurrentTabTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 249
    iget v0, p0, Lcom/htc/widget/HtcTabHost;->mCurrentTab:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcTabHost;->mCurrentTab:I

    iget-object v1, p0, Lcom/htc/widget/HtcTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 250
    iget-object v0, p0, Lcom/htc/widget/HtcTabHost;->mTabSpecs:Ljava/util/List;

    iget v1, p0, Lcom/htc/widget/HtcTabHost;->mCurrentTab:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcTabHost$TabSpec;

    invoke-virtual {v0}, Lcom/htc/widget/HtcTabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 252
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentTabView()Landroid/view/View;
    .locals 2

    .prologue
    .line 256
    iget v0, p0, Lcom/htc/widget/HtcTabHost;->mCurrentTab:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcTabHost;->mCurrentTab:I

    iget-object v1, p0, Lcom/htc/widget/HtcTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 257
    iget-object v0, p0, Lcom/htc/widget/HtcTabHost;->mTabWidget:Lcom/htc/widget/HtcTabWidget;

    iget v1, p0, Lcom/htc/widget/HtcTabHost;->mCurrentTab:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    .line 259
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/htc/widget/HtcTabHost;->mCurrentView:Landroid/view/View;

    return-object v0
.end method

.method public getTabContentView()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/htc/widget/HtcTabHost;->mTabContent:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getTabWidget()Lcom/htc/widget/HtcTabWidget;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/htc/widget/HtcTabHost;->mTabWidget:Lcom/htc/widget/HtcTabWidget;

    return-object v0
.end method

.method public newTabSpec(Ljava/lang/String;)Lcom/htc/widget/HtcTabHost$TabSpec;
    .locals 2
    .parameter "tag"

    .prologue
    .line 94
    new-instance v0, Lcom/htc/widget/HtcTabHost$TabSpec;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/htc/widget/HtcTabHost$TabSpec;-><init>(Lcom/htc/widget/HtcTabHost;Ljava/lang/String;Lcom/htc/widget/HtcTabHost$1;)V

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 167
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 168
    invoke-virtual {p0}, Lcom/htc/widget/HtcTabHost;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 169
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 172
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 176
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 177
    invoke-virtual {p0}, Lcom/htc/widget/HtcTabHost;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 178
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 181
    :cond_0
    return-void
.end method

.method public onTouchModeChanged(Z)V
    .locals 2
    .parameter "isInTouchMode"

    .prologue
    .line 187
    if-nez p1, :cond_1

    .line 190
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

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcTabHost;->mTabWidget:Lcom/htc/widget/HtcTabWidget;

    iget v1, p0, Lcom/htc/widget/HtcTabHost;->mCurrentTab:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 194
    :cond_1
    return-void
.end method

.method public setCurrentTab(I)V
    .locals 5
    .parameter "index"

    .prologue
    const/4 v4, -0x1

    .line 312
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 353
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    iget v1, p0, Lcom/htc/widget/HtcTabHost;->mCurrentTab:I

    if-eq v1, v4, :cond_2

    .line 323
    iget-object v1, p0, Lcom/htc/widget/HtcTabHost;->mTabSpecs:Ljava/util/List;

    iget v2, p0, Lcom/htc/widget/HtcTabHost;->mCurrentTab:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcTabHost$TabSpec;

    #getter for: Lcom/htc/widget/HtcTabHost$TabSpec;->mContentStrategy:Lcom/htc/widget/HtcTabHost$ContentStrategy;
    invoke-static {v1}, Lcom/htc/widget/HtcTabHost$TabSpec;->access$300(Lcom/htc/widget/HtcTabHost$TabSpec;)Lcom/htc/widget/HtcTabHost$ContentStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/widget/HtcTabHost$ContentStrategy;->tabClosed()V

    .line 326
    :cond_2
    iput p1, p0, Lcom/htc/widget/HtcTabHost;->mCurrentTab:I

    .line 327
    iget-object v1, p0, Lcom/htc/widget/HtcTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcTabHost$TabSpec;

    .line 331
    .local v0, spec:Lcom/htc/widget/HtcTabHost$TabSpec;
    iget-object v1, p0, Lcom/htc/widget/HtcTabHost;->mTabWidget:Lcom/htc/widget/HtcTabWidget;

    iget v2, p0, Lcom/htc/widget/HtcTabHost;->mCurrentTab:I

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcTabWidget;->focusCurrentTab(I)V

    .line 334
    #getter for: Lcom/htc/widget/HtcTabHost$TabSpec;->mContentStrategy:Lcom/htc/widget/HtcTabHost$ContentStrategy;
    invoke-static {v0}, Lcom/htc/widget/HtcTabHost$TabSpec;->access$300(Lcom/htc/widget/HtcTabHost$TabSpec;)Lcom/htc/widget/HtcTabHost$ContentStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/widget/HtcTabHost$ContentStrategy;->getContentView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/HtcTabHost;->mCurrentView:Landroid/view/View;

    .line 336
    iget-object v1, p0, Lcom/htc/widget/HtcTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_3

    .line 337
    iget-object v1, p0, Lcom/htc/widget/HtcTabHost;->mTabContent:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/htc/widget/HtcTabHost;->mCurrentView:Landroid/view/View;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 345
    :cond_3
    iget-object v1, p0, Lcom/htc/widget/HtcTabHost;->mTabWidget:Lcom/htc/widget/HtcTabWidget;

    invoke-virtual {v1}, Lcom/htc/widget/HtcTabWidget;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_4

    .line 348
    iget-object v1, p0, Lcom/htc/widget/HtcTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 352
    :cond_4
    invoke-direct {p0}, Lcom/htc/widget/HtcTabHost;->invokeOnTabChangeListener()V

    goto :goto_0
.end method

.method public setCurrentTabByTag(Ljava/lang/String;)V
    .locals 2
    .parameter "tag"

    .prologue
    .line 268
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/widget/HtcTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 269
    iget-object v1, p0, Lcom/htc/widget/HtcTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcTabHost$TabSpec;

    invoke-virtual {v1}, Lcom/htc/widget/HtcTabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 270
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcTabHost;->setCurrentTab(I)V

    .line 274
    :cond_0
    return-void

    .line 268
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setCustomTabWidget(Landroid/view/View;)V
    .locals 2
    .parameter "vw"

    .prologue
    .line 391
    invoke-virtual {p0}, Lcom/htc/widget/HtcTabHost;->getTabWidget()Lcom/htc/widget/HtcTabWidget;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcTabWidget;->addCustomView(Landroid/view/View;)V

    .line 392
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcTabHost;->addTabWithViewTag(Landroid/view/View;)V

    .line 394
    iget v0, p0, Lcom/htc/widget/HtcTabHost;->mCurrentTab:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 395
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcTabHost;->setCurrentTab(I)V

    .line 398
    :cond_0
    return-void
.end method

.method public setCustomTabWidget(Landroid/view/View;I)V
    .locals 2
    .parameter "vw"
    .parameter "defaultTab"

    .prologue
    .line 408
    invoke-virtual {p0}, Lcom/htc/widget/HtcTabHost;->getTabWidget()Lcom/htc/widget/HtcTabWidget;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcTabWidget;->addCustomView(Landroid/view/View;)V

    .line 409
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcTabHost;->addTabWithViewTag(Landroid/view/View;)V

    .line 411
    if-gez p2, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_2

    .line 412
    :cond_0
    invoke-virtual {p0, p2}, Lcom/htc/widget/HtcTabHost;->setCurrentTab(I)V

    .line 418
    :cond_1
    :goto_0
    return-void

    .line 414
    :cond_2
    iget v0, p0, Lcom/htc/widget/HtcTabHost;->mCurrentTab:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 415
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcTabHost;->setCurrentTab(I)V

    goto :goto_0
.end method

.method public setOnTabChangedListener(Lcom/htc/widget/HtcTabHost$OnTabChangeListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 426
    iput-object p1, p0, Lcom/htc/widget/HtcTabHost;->mOnTabChangeListener:Lcom/htc/widget/HtcTabHost$OnTabChangeListener;

    .line 427
    return-void
.end method

.method public setup()V
    .locals 2

    .prologue
    .line 109
    const v0, 0x1020013

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcTabWidget;

    iput-object v0, p0, Lcom/htc/widget/HtcTabHost;->mTabWidget:Lcom/htc/widget/HtcTabWidget;

    .line 110
    iget-object v0, p0, Lcom/htc/widget/HtcTabHost;->mTabWidget:Lcom/htc/widget/HtcTabWidget;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your TabHost must have a TabWidget whose id attribute is \'android.R.id.tabs\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_0
    new-instance v0, Lcom/htc/widget/HtcTabHost$1;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcTabHost$1;-><init>(Lcom/htc/widget/HtcTabHost;)V

    iput-object v0, p0, Lcom/htc/widget/HtcTabHost;->mTabKeyListener:Landroid/view/View$OnKeyListener;

    .line 135
    iget-object v0, p0, Lcom/htc/widget/HtcTabHost;->mTabWidget:Lcom/htc/widget/HtcTabWidget;

    new-instance v1, Lcom/htc/widget/HtcTabHost$2;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcTabHost$2;-><init>(Lcom/htc/widget/HtcTabHost;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcTabWidget;->setTabSelectionListener(Lcom/htc/widget/HtcTabWidget$OnTabSelectionChanged;)V

    .line 144
    const v0, 0x1020011

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/htc/widget/HtcTabHost;->mTabContent:Landroid/widget/FrameLayout;

    .line 145
    iget-object v0, p0, Lcom/htc/widget/HtcTabHost;->mTabContent:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    .line 146
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your TabHost must have a FrameLayout whose id attribute is \'android.R.id.tabcontent\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_1
    return-void
.end method

.method public setup(Landroid/app/LocalActivityManager;)V
    .locals 0
    .parameter "activityGroup"

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/htc/widget/HtcTabHost;->setup()V

    .line 161
    iput-object p1, p0, Lcom/htc/widget/HtcTabHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    .line 162
    return-void
.end method
