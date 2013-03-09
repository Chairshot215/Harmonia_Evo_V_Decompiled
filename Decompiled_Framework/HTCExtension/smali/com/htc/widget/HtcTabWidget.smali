.class public Lcom/htc/widget/HtcTabWidget;
.super Landroid/widget/LinearLayout;
.source "HtcTabWidget.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/HtcTabWidget$OnTabSelectionChanged;,
        Lcom/htc/widget/HtcTabWidget$TabClickListener;
    }
.end annotation


# static fields
.field static final TOTALTAB:I = 0x20


# instance fields
.field private mSelectedTab:I

.field private mSelectionChangedListener:Lcom/htc/widget/HtcTabWidget$OnTabSelectionChanged;

.field private mTabView:[Landroid/view/View;

.field private madd:I

.field private moldSelectedTab:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/HtcTabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/HtcTabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v2, p0, Lcom/htc/widget/HtcTabWidget;->mSelectedTab:I

    iput v2, p0, Lcom/htc/widget/HtcTabWidget;->moldSelectedTab:I

    const/16 v1, 0x20

    new-array v1, v1, [Landroid/view/View;

    iput-object v1, p0, Lcom/htc/widget/HtcTabWidget;->mTabView:[Landroid/view/View;

    iput v2, p0, Lcom/htc/widget/HtcTabWidget;->madd:I

    invoke-direct {p0}, Lcom/htc/widget/HtcTabWidget;->initTabWidget()V

    sget-object v1, Lcom/android/internal/R$styleable;->TabWidget:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Lcom/htc/widget/HtcTabWidget;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/HtcTabWidget;->mSelectedTab:I

    return v0
.end method

.method static synthetic access$100(Lcom/htc/widget/HtcTabWidget;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/HtcTabWidget;->moldSelectedTab:I

    return v0
.end method

.method static synthetic access$300(Lcom/htc/widget/HtcTabWidget;)Lcom/htc/widget/HtcTabWidget$OnTabSelectionChanged;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcTabWidget;->mSelectionChangedListener:Lcom/htc/widget/HtcTabWidget$OnTabSelectionChanged;

    return-object v0
.end method

.method private initTabWidget()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcTabWidget;->setOrientation(I)V

    iget v2, p0, Lcom/htc/widget/HtcTabWidget;->mGroupFlags:I

    or-int/lit16 v2, v2, 0x400

    iput v2, p0, Lcom/htc/widget/HtcTabWidget;->mGroupFlags:I

    iget-object v0, p0, Lcom/htc/widget/HtcTabWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcTabWidget;->setFocusable(Z)V

    invoke-virtual {p0, p0}, Lcom/htc/widget/HtcTabWidget;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method


# virtual methods
.method public addCustomView(Landroid/view/View;)V
    .locals 2

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-super {p0, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    new-instance v0, Lcom/htc/widget/HtcTabWidget$TabClickListener;

    iget v1, p0, Lcom/htc/widget/HtcTabWidget;->madd:I

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/htc/widget/HtcTabWidget$TabClickListener;-><init>(Lcom/htc/widget/HtcTabWidget;ILcom/htc/widget/HtcTabWidget$1;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget v0, p0, Lcom/htc/widget/HtcTabWidget;->madd:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/widget/HtcTabWidget;->madd:I

    return-void
.end method

.method public childDrawableStateChanged(Landroid/view/View;)V
    .locals 1

    iget v0, p0, Lcom/htc/widget/HtcTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcTabWidget;->invalidate()V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->childDrawableStateChanged(Landroid/view/View;)V

    return-void
.end method

.method public focusCurrentTab(I)V
    .locals 2

    iget v0, p0, Lcom/htc/widget/HtcTabWidget;->mSelectedTab:I

    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcTabWidget;->setCurrentTab(I)V

    if-eq v0, p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void
.end method

.method public getChildTabViewAt(I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/widget/HtcTabWidget;->getTabCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcTabWidget;->mTabView:[Landroid/view/View;

    aget-object v0, v0, p1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTabCount()I
    .locals 1

    iget v0, p0, Lcom/htc/widget/HtcTabWidget;->madd:I

    return v0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    if-ne p1, p0, :cond_0

    if-eqz p2, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    return-void
.end method

.method public setCurrentTab(I)V
    .locals 4

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcTabWidget;->getTabCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/htc/widget/HtcTabWidget;->mSelectedTab:I

    iput v0, p0, Lcom/htc/widget/HtcTabWidget;->moldSelectedTab:I

    iput p1, p0, Lcom/htc/widget/HtcTabWidget;->mSelectedTab:I

    iget v0, p0, Lcom/htc/widget/HtcTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget v0, p0, Lcom/htc/widget/HtcTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/htc/widget/HtcTabWidget$1;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcTabWidget$1;-><init>(Lcom/htc/widget/HtcTabWidget;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/htc/widget/HtcTabWidget;->getTabCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method setTabSelectionListener(Lcom/htc/widget/HtcTabWidget$OnTabSelectionChanged;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/HtcTabWidget;->mSelectionChangedListener:Lcom/htc/widget/HtcTabWidget$OnTabSelectionChanged;

    return-void
.end method

.method public setTabView(Landroid/view/View;I)Z
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcTabWidget;->mTabView:[Landroid/view/View;

    array-length v0, v0

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcTabWidget;->mTabView:[Landroid/view/View;

    aput-object p1, v0, p2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTabViewPressed(I)V
    .locals 4

    iget v3, p0, Lcom/htc/widget/HtcTabWidget;->madd:I

    if-le p1, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/htc/widget/HtcTabWidget;->getTabCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_3

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isFocusable()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0
.end method
