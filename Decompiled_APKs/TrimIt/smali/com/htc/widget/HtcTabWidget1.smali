.class public Lcom/htc/widget/HtcTabWidget1;
.super Landroid/widget/LinearLayout;
.source "HtcTabWidget1.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/HtcTabWidget1$OnTabSelectionChanged;,
        Lcom/htc/widget/HtcTabWidget1$TabClickListener;
    }
.end annotation


# static fields
.field static final TOTALTAB:I = 0x20


# instance fields
.field private mSelectedTab:I

.field private mSelectionChangedListener:Lcom/htc/widget/HtcTabWidget1$OnTabSelectionChanged;

.field private mTabView:[Landroid/view/View;

.field private madd:I

.field private moldSelectedTab:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/HtcTabWidget1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 57
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/HtcTabWidget1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    iput v2, p0, Lcom/htc/widget/HtcTabWidget1;->mSelectedTab:I

    .line 48
    iput v2, p0, Lcom/htc/widget/HtcTabWidget1;->moldSelectedTab:I

    .line 49
    const/16 v1, 0x20

    new-array v1, v1, [Landroid/view/View;

    iput-object v1, p0, Lcom/htc/widget/HtcTabWidget1;->mTabView:[Landroid/view/View;

    .line 50
    iput v2, p0, Lcom/htc/widget/HtcTabWidget1;->madd:I

    .line 62
    invoke-direct {p0}, Lcom/htc/widget/HtcTabWidget1;->initTabWidget()V

    .line 64
    sget-object v1, Lcom/android/internal/R$styleable;->TabWidget:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 68
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/htc/widget/HtcTabWidget1;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/htc/widget/HtcTabWidget1;->mSelectedTab:I

    return v0
.end method

.method static synthetic access$100(Lcom/htc/widget/HtcTabWidget1;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/htc/widget/HtcTabWidget1;->moldSelectedTab:I

    return v0
.end method

.method static synthetic access$300(Lcom/htc/widget/HtcTabWidget1;)Lcom/htc/widget/HtcTabWidget1$OnTabSelectionChanged;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/widget/HtcTabWidget1;->mSelectionChangedListener:Lcom/htc/widget/HtcTabWidget1$OnTabSelectionChanged;

    return-object v0
.end method

.method private initTabWidget()V
    .locals 3

    .prologue
    .line 79
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcTabWidget1;->setOrientation(I)V

    .line 80
    iget v2, p0, Lcom/htc/widget/HtcTabWidget1;->mGroupFlags:I

    or-int/lit16 v2, v2, 0x400

    iput v2, p0, Lcom/htc/widget/HtcTabWidget1;->mGroupFlags:I

    .line 82
    iget-object v0, p0, Lcom/htc/widget/HtcTabWidget1;->mContext:Landroid/content/Context;

    .line 83
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 87
    .local v1, resources:Landroid/content/res/Resources;
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcTabWidget1;->setFocusable(Z)V

    .line 88
    invoke-virtual {p0, p0}, Lcom/htc/widget/HtcTabWidget1;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 89
    return-void
.end method


# virtual methods
.method public addCustomView(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    const/4 v1, -0x1

    .line 228
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-super {p0, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 3
    .parameter "child"

    .prologue
    .line 214
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 219
    new-instance v0, Lcom/htc/widget/HtcTabWidget1$TabClickListener;

    iget v1, p0, Lcom/htc/widget/HtcTabWidget1;->madd:I

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/htc/widget/HtcTabWidget1$TabClickListener;-><init>(Lcom/htc/widget/HtcTabWidget1;ILcom/htc/widget/HtcTabWidget1$1;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 221
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 222
    iget v0, p0, Lcom/htc/widget/HtcTabWidget1;->madd:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/widget/HtcTabWidget1;->madd:I

    .line 223
    return-void
.end method

.method public childDrawableStateChanged(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 114
    iget v0, p0, Lcom/htc/widget/HtcTabWidget1;->mSelectedTab:I

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcTabWidget1;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/htc/widget/HtcTabWidget1;->invalidate()V

    .line 118
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->childDrawableStateChanged(Landroid/view/View;)V

    .line 119
    return-void
.end method

.method public focusCurrentTab(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 187
    iget v0, p0, Lcom/htc/widget/HtcTabWidget1;->mSelectedTab:I

    .line 190
    .local v0, oldTab:I
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcTabWidget1;->setCurrentTab(I)V

    .line 193
    if-eq v0, p1, :cond_0

    .line 194
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcTabWidget1;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 196
    :cond_0
    return-void
.end method

.method public getChildTabViewAt(I)Landroid/view/View;
    .locals 1
    .parameter "index"

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/htc/widget/HtcTabWidget1;->getTabCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/htc/widget/HtcTabWidget1;->mTabView:[Landroid/view/View;

    aget-object v0, v0, p1

    .line 101
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTabCount()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/htc/widget/HtcTabWidget1;->madd:I

    return v0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 263
    if-ne p1, p0, :cond_0

    if-eqz p2, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcTabWidget1;->mSelectedTab:I

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcTabWidget1;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 264
    iget v0, p0, Lcom/htc/widget/HtcTabWidget1;->mSelectedTab:I

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcTabWidget1;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 280
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 74
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 75
    return-void
.end method

.method public setCurrentTab(I)V
    .locals 4
    .parameter "index"

    .prologue
    .line 149
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcTabWidget1;->getTabCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    iget v0, p0, Lcom/htc/widget/HtcTabWidget1;->mSelectedTab:I

    iput v0, p0, Lcom/htc/widget/HtcTabWidget1;->moldSelectedTab:I

    .line 154
    iput p1, p0, Lcom/htc/widget/HtcTabWidget1;->mSelectedTab:I

    .line 155
    iget v0, p0, Lcom/htc/widget/HtcTabWidget1;->mSelectedTab:I

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcTabWidget1;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 156
    iget v0, p0, Lcom/htc/widget/HtcTabWidget1;->mSelectedTab:I

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcTabWidget1;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/htc/widget/HtcTabWidget1$1;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcTabWidget1$1;-><init>(Lcom/htc/widget/HtcTabWidget1;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 200
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 201
    invoke-virtual {p0}, Lcom/htc/widget/HtcTabWidget1;->getTabCount()I

    move-result v1

    .line 203
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 204
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcTabWidget1;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    .line 205
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 203
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 207
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return-void
.end method

.method setTabSelectionListener(Lcom/htc/widget/HtcTabWidget1$OnTabSelectionChanged;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 259
    iput-object p1, p0, Lcom/htc/widget/HtcTabWidget1;->mSelectionChangedListener:Lcom/htc/widget/HtcTabWidget1$OnTabSelectionChanged;

    .line 260
    return-void
.end method

.method public setTabView(Landroid/view/View;I)Z
    .locals 1
    .parameter "vw"
    .parameter "index"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/htc/widget/HtcTabWidget1;->mTabView:[Landroid/view/View;

    array-length v0, v0

    if-ge p2, v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/htc/widget/HtcTabWidget1;->mTabView:[Landroid/view/View;

    aput-object p1, v0, p2

    .line 236
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 235
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTabViewPressed(I)V
    .locals 4
    .parameter "index"

    .prologue
    .line 240
    iget v3, p0, Lcom/htc/widget/HtcTabWidget1;->madd:I

    if-le p1, v3, :cond_1

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    const/4 v0, 0x0

    .line 243
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0}, Lcom/htc/widget/HtcTabWidget1;->getTabCount()I

    move-result v1

    .line 244
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 245
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcTabWidget1;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    .line 246
    if-eqz v0, :cond_2

    .line 247
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    .line 244
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 250
    :cond_3
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcTabWidget1;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    .line 251
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isFocusable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 252
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0
.end method
