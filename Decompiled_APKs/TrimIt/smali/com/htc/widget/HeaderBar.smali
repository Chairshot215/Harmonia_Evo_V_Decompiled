.class public Lcom/htc/widget/HeaderBar;
.super Landroid/view/ViewGroup;
.source "HeaderBar.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/HeaderBar$LayoutParams;
    }
.end annotation


# static fields
.field static final enableDebug:Z


# instance fields
.field private backgroundBound:Z

.field private backgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private backgroundEnable:Z

.field private bubbleSize:I

.field private bubbleView:Landroid/view/View;

.field protected bubbleViewOffset:I

.field private centerView:Landroid/view/View;

.field private context:Landroid/content/Context;

.field private final disableAlpha:I

.field private final enableAlpha:I

.field private enableLeftDivider:Z

.field private enableRightDivider:Z

.field private headerArea:Landroid/graphics/Rect;

.field private inflator:Landroid/view/LayoutInflater;

.field private lastLDividerEnable:Z

.field private lastRDividerEnable:Z

.field private leftDividerDrawable:Landroid/graphics/drawable/Drawable;

.field private leftDividerHeight:I

.field private leftDividerPos:[I

.field private leftDividerWidth:I

.field private leftPadding:I

.field private leftViewCount:I

.field private final maxChildCount:I

.field private nPaddingHeight:I

.field private nPaddingWidth:I

.field private paddingBottom:I

.field private paddingLeft:I

.field private paddingRight:I

.field private paddingTop:I

.field private progressSize:I

.field private progressView:Landroid/view/View;

.field protected progressViewOffset:I

.field private rightDividerDrawable:Landroid/graphics/drawable/Drawable;

.field private rightDividerHeight:I

.field private rightDividerPos:[I

.field private rightDividerWidth:I

.field private rightPadding:I

.field protected rightUnitWidth:I

.field private rightViewCount:I

.field private transparentEnable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "icontext"

    .prologue
    .line 60
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/htc/widget/HeaderBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "icontext"
    .parameter "attrset"

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/HeaderBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .parameter "icontext"
    .parameter "attrset"
    .parameter "defStyle"

    .prologue
    const/4 v7, 0x1

    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 76
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    iput v6, p0, Lcom/htc/widget/HeaderBar;->maxChildCount:I

    .line 22
    iput-object v4, p0, Lcom/htc/widget/HeaderBar;->centerView:Landroid/view/View;

    .line 23
    iput-object v4, p0, Lcom/htc/widget/HeaderBar;->bubbleView:Landroid/view/View;

    .line 24
    iput-object v4, p0, Lcom/htc/widget/HeaderBar;->progressView:Landroid/view/View;

    .line 26
    iput-object v4, p0, Lcom/htc/widget/HeaderBar;->context:Landroid/content/Context;

    .line 27
    iput-object v4, p0, Lcom/htc/widget/HeaderBar;->inflator:Landroid/view/LayoutInflater;

    .line 29
    iput-object v4, p0, Lcom/htc/widget/HeaderBar;->leftDividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 30
    iput-object v4, p0, Lcom/htc/widget/HeaderBar;->rightDividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 32
    iput-boolean v5, p0, Lcom/htc/widget/HeaderBar;->enableLeftDivider:Z

    .line 33
    iput-boolean v5, p0, Lcom/htc/widget/HeaderBar;->enableRightDivider:Z

    .line 35
    iput v3, p0, Lcom/htc/widget/HeaderBar;->leftDividerWidth:I

    .line 36
    iput v3, p0, Lcom/htc/widget/HeaderBar;->leftDividerHeight:I

    .line 37
    iput v3, p0, Lcom/htc/widget/HeaderBar;->rightDividerWidth:I

    .line 38
    iput v3, p0, Lcom/htc/widget/HeaderBar;->rightDividerHeight:I

    .line 41
    iput v3, p0, Lcom/htc/widget/HeaderBar;->bubbleSize:I

    .line 42
    iput v3, p0, Lcom/htc/widget/HeaderBar;->progressSize:I

    .line 44
    iput v3, p0, Lcom/htc/widget/HeaderBar;->rightUnitWidth:I

    .line 45
    iput v3, p0, Lcom/htc/widget/HeaderBar;->bubbleViewOffset:I

    .line 46
    iput v3, p0, Lcom/htc/widget/HeaderBar;->progressViewOffset:I

    .line 138
    iput v3, p0, Lcom/htc/widget/HeaderBar;->leftPadding:I

    .line 139
    iput v3, p0, Lcom/htc/widget/HeaderBar;->rightPadding:I

    .line 459
    iput-boolean v5, p0, Lcom/htc/widget/HeaderBar;->backgroundBound:Z

    .line 460
    iput-boolean v5, p0, Lcom/htc/widget/HeaderBar;->backgroundEnable:Z

    .line 462
    iput-object v4, p0, Lcom/htc/widget/HeaderBar;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 483
    const/16 v3, 0x7f

    iput v3, p0, Lcom/htc/widget/HeaderBar;->enableAlpha:I

    .line 484
    const/16 v3, 0xff

    iput v3, p0, Lcom/htc/widget/HeaderBar;->disableAlpha:I

    .line 486
    iput-boolean v5, p0, Lcom/htc/widget/HeaderBar;->transparentEnable:Z

    .line 531
    iput-boolean v7, p0, Lcom/htc/widget/HeaderBar;->lastLDividerEnable:Z

    .line 532
    iput-boolean v7, p0, Lcom/htc/widget/HeaderBar;->lastRDividerEnable:Z

    .line 590
    new-array v3, v6, [I

    iput-object v3, p0, Lcom/htc/widget/HeaderBar;->leftDividerPos:[I

    .line 591
    new-array v3, v6, [I

    iput-object v3, p0, Lcom/htc/widget/HeaderBar;->rightDividerPos:[I

    .line 1082
    iput-object v4, p0, Lcom/htc/widget/HeaderBar;->headerArea:Landroid/graphics/Rect;

    .line 78
    iput-object v4, p0, Lcom/htc/widget/HeaderBar;->context:Landroid/content/Context;

    .line 79
    iput-object p1, p0, Lcom/htc/widget/HeaderBar;->context:Landroid/content/Context;

    .line 81
    iput-object v4, p0, Lcom/htc/widget/HeaderBar;->inflator:Landroid/view/LayoutInflater;

    .line 82
    iget-object v3, p0, Lcom/htc/widget/HeaderBar;->context:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    iput-object v3, p0, Lcom/htc/widget/HeaderBar;->inflator:Landroid/view/LayoutInflater;

    .line 84
    invoke-direct {p0}, Lcom/htc/widget/HeaderBar;->setupEnvironment()V

    .line 85
    invoke-direct {p0}, Lcom/htc/widget/HeaderBar;->setupBubbleAndProgress()V

    .line 88
    iget-object v3, p0, Lcom/htc/widget/HeaderBar;->context:Landroid/content/Context;

    sget-object v4, Lcom/htc/R$styleable;->HeaderBar:[I

    invoke-virtual {v3, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 90
    .local v0, array:Landroid/content/res/TypedArray;
    if-nez v0, :cond_0

    .line 135
    :goto_0
    return-void

    .line 94
    :cond_0
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 107
    :goto_1
    invoke-virtual {v0, v7, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    sparse-switch v3, :sswitch_data_1

    .line 122
    :goto_2
    iget-object v3, p0, Lcom/htc/widget/HeaderBar;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 124
    .local v2, resources:Landroid/content/res/Resources;
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 125
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    :goto_3
    invoke-virtual {p0, v1}, Lcom/htc/widget/HeaderBar;->setLeftDivider(Landroid/graphics/drawable/Drawable;)V

    .line 127
    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 128
    .restart local v1       #drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_2

    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    :goto_4
    invoke-virtual {p0, v1}, Lcom/htc/widget/HeaderBar;->setRightDivider(Landroid/graphics/drawable/Drawable;)V

    .line 134
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 97
    .end local v2           #resources:Landroid/content/res/Resources;
    :sswitch_0
    invoke-virtual {p0, v5}, Lcom/htc/widget/HeaderBar;->setBubbleVisibility(I)V

    .line 98
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/widget/HeaderBar;->setBubbleCount(I)V

    goto :goto_1

    .line 101
    :sswitch_1
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/htc/widget/HeaderBar;->setBubbleVisibility(I)V

    .line 102
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/widget/HeaderBar;->setBubbleCount(I)V

    goto :goto_1

    .line 110
    :sswitch_2
    invoke-virtual {p0, v5}, Lcom/htc/widget/HeaderBar;->setProgressVisibility(I)V

    goto :goto_2

    .line 113
    :sswitch_3
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/htc/widget/HeaderBar;->setProgressVisibility(I)V

    goto :goto_2

    .line 125
    .restart local v1       #drawable:Landroid/graphics/drawable/Drawable;
    .restart local v2       #resources:Landroid/content/res/Resources;
    :cond_1
    const v3, 0x2080b03

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_3

    .line 128
    :cond_2
    const v3, 0x2080b03

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_4

    .line 94
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
    .end sparse-switch

    .line 107
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_2
        0x4 -> :sswitch_3
    .end sparse-switch
.end method

.method private setupBackgroundAlpha()V
    .locals 2

    .prologue
    .line 521
    iget-object v0, p0, Lcom/htc/widget/HeaderBar;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 522
    iget-object v1, p0, Lcom/htc/widget/HeaderBar;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-boolean v0, p0, Lcom/htc/widget/HeaderBar;->backgroundEnable:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/widget/HeaderBar;->transparentEnable:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x7f

    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 524
    :cond_0
    return-void

    .line 522
    :cond_1
    const/16 v0, 0xff

    goto :goto_0
.end method

.method private setupBubbleAndProgress()V
    .locals 0

    .prologue
    .line 199
    return-void
.end method

.method private setupBubbleView()V
    .locals 4

    .prologue
    .line 203
    iget-object v0, p0, Lcom/htc/widget/HeaderBar;->bubbleView:Landroid/view/View;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HeaderBar;->inflator:Landroid/view/LayoutInflater;

    if-eqz v0, :cond_1

    .line 205
    iget v0, p0, Lcom/htc/widget/HeaderBar;->bubbleSize:I

    if-gez v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/htc/widget/HeaderBar;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20d0086

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HeaderBar;->bubbleSize:I

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HeaderBar;->inflator:Landroid/view/LayoutInflater;

    const v1, 0x20900e6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HeaderBar;->bubbleView:Landroid/view/View;

    .line 209
    iget-object v0, p0, Lcom/htc/widget/HeaderBar;->bubbleView:Landroid/view/View;

    iget-object v1, p0, Lcom/htc/widget/HeaderBar;->context:Landroid/content/Context;

    const-string v2, "common_notification_on"

    const v3, 0x208006a

    invoke-static {v1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 213
    iget-object v0, p0, Lcom/htc/widget/HeaderBar;->bubbleView:Landroid/view/View;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    iget v2, p0, Lcom/htc/widget/HeaderBar;->bubbleSize:I

    iget v3, p0, Lcom/htc/widget/HeaderBar;->bubbleSize:I

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HeaderBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    :cond_1
    return-void
.end method

.method private setupEnvironment()V
    .locals 5

    .prologue
    .line 143
    iget-object v1, p0, Lcom/htc/widget/HeaderBar;->context:Landroid/content/Context;

    if-eqz v1, :cond_4

    .line 145
    iget-object v1, p0, Lcom/htc/widget/HeaderBar;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 148
    .local v0, resources:Landroid/content/res/Resources;
    iget v1, p0, Lcom/htc/widget/HeaderBar;->rightUnitWidth:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/htc/widget/HeaderBar;->bubbleViewOffset:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/htc/widget/HeaderBar;->progressViewOffset:I

    if-gez v1, :cond_1

    .line 150
    :cond_0
    const v1, 0x20d0083

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HeaderBar;->rightUnitWidth:I

    .line 151
    const v1, 0x20d0088

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HeaderBar;->bubbleViewOffset:I

    .line 152
    const v1, 0x20d0089

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HeaderBar;->progressViewOffset:I

    .line 156
    :cond_1
    iget-object v1, p0, Lcom/htc/widget/HeaderBar;->context:Landroid/content/Context;

    const-string v2, "common_titlebar_sublevel"

    const v3, 0x2080085

    invoke-static {v1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/widget/HeaderBar;->setBackgroundResource(I)V

    .line 160
    iget v1, p0, Lcom/htc/widget/HeaderBar;->leftPadding:I

    if-gez v1, :cond_2

    const v1, 0x20d0085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HeaderBar;->leftPadding:I

    .line 161
    :cond_2
    iget v1, p0, Lcom/htc/widget/HeaderBar;->rightPadding:I

    if-gez v1, :cond_3

    const v1, 0x20d0084

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HeaderBar;->rightPadding:I

    .line 163
    :cond_3
    iget v1, p0, Lcom/htc/widget/HeaderBar;->leftPadding:I

    invoke-virtual {p0}, Lcom/htc/widget/HeaderBar;->getPaddingTop()I

    move-result v2

    iget v3, p0, Lcom/htc/widget/HeaderBar;->rightPadding:I

    invoke-virtual {p0}, Lcom/htc/widget/HeaderBar;->getPaddingBottom()I

    move-result v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/htc/widget/HeaderBar;->setPadding(IIII)V

    .line 167
    return-void

    .line 166
    .end local v0           #resources:Landroid/content/res/Resources;
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "context is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private setupProgressView()V
    .locals 4

    .prologue
    .line 219
    iget-object v0, p0, Lcom/htc/widget/HeaderBar;->progressView:Landroid/view/View;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HeaderBar;->inflator:Landroid/view/LayoutInflater;

    if-eqz v0, :cond_1

    .line 221
    iget v0, p0, Lcom/htc/widget/HeaderBar;->progressSize:I

    if-gez v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/htc/widget/HeaderBar;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20d0087

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HeaderBar;->progressSize:I

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HeaderBar;->inflator:Landroid/view/LayoutInflater;

    const v1, 0x20900e9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HeaderBar;->progressView:Landroid/view/View;

    .line 225
    iget-object v0, p0, Lcom/htc/widget/HeaderBar;->progressView:Landroid/view/View;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    iget v2, p0, Lcom/htc/widget/HeaderBar;->progressSize:I

    iget v3, p0, Lcom/htc/widget/HeaderBar;->progressSize:I

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HeaderBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 227
    :cond_1
    return-void
.end method


# virtual methods
.method public addCenterView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 449
    if-nez p1, :cond_0

    .line 453
    :goto_0
    return-void

    .line 452
    :cond_0
    new-instance v0, Lcom/htc/widget/HeaderBar$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/htc/widget/HeaderBar$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;I)V

    invoke-virtual {p0, p1, v0}, Lcom/htc/widget/HeaderBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public addLeftView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 433
    if-nez p1, :cond_0

    .line 437
    :goto_0
    return-void

    .line 436
    :cond_0
    new-instance v0, Lcom/htc/widget/HeaderBar$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/htc/widget/HeaderBar$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;I)V

    invoke-virtual {p0, p1, v0}, Lcom/htc/widget/HeaderBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public addRightView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 441
    if-nez p1, :cond_0

    .line 445
    :goto_0
    return-void

    .line 444
    :cond_0
    new-instance v0, Lcom/htc/widget/HeaderBar$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/htc/widget/HeaderBar$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;I)V

    invoke-virtual {p0, p1, v0}, Lcom/htc/widget/HeaderBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "params"

    .prologue
    .line 982
    instance-of v0, p1, Lcom/htc/widget/HeaderBar$LayoutParams;

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    .line 906
    iget-boolean v0, p0, Lcom/htc/widget/HeaderBar;->backgroundEnable:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HeaderBar;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 908
    iget-boolean v0, p0, Lcom/htc/widget/HeaderBar;->backgroundBound:Z

    if-nez v0, :cond_0

    .line 910
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HeaderBar;->backgroundBound:Z

    .line 911
    iget-object v0, p0, Lcom/htc/widget/HeaderBar;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/htc/widget/HeaderBar;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/widget/HeaderBar;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 914
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HeaderBar;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 917
    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 918
    return-void
.end method

.method public dump()V
    .locals 7

    .prologue
    .line 1005
    const/4 v3, 0x0

    .line 1006
    .local v3, view:Landroid/view/View;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1008
    .local v2, rect:Landroid/graphics/Rect;
    const/4 v1, 0x0

    .local v1, loop:I
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBar;->getChildCount()I

    move-result v0

    .local v0, childCount:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1010
    invoke-virtual {p0, v1}, Lcom/htc/widget/HeaderBar;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1011
    invoke-virtual {v3, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1012
    const-string v4, "HeaderBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getChildAt("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "):"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1014
    :cond_0
    return-void
.end method

.method public enableLeftDivider(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 311
    iget-boolean v1, p0, Lcom/htc/widget/HeaderBar;->enableLeftDivider:Z

    if-ne p1, v1, :cond_1

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 314
    :cond_1
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/htc/widget/HeaderBar;->leftDividerDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    .line 316
    .local v0, enableDivider:Z
    :goto_1
    iget-boolean v1, p0, Lcom/htc/widget/HeaderBar;->enableLeftDivider:Z

    if-eq v0, v1, :cond_0

    .line 319
    iput-boolean v0, p0, Lcom/htc/widget/HeaderBar;->enableLeftDivider:Z

    .line 320
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBar;->requestLayout()V

    .line 321
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBar;->invalidate()V

    goto :goto_0

    .line 314
    .end local v0           #enableDivider:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public enableLeftLastDivider(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 545
    iget-boolean v0, p0, Lcom/htc/widget/HeaderBar;->lastLDividerEnable:Z

    if-ne p1, v0, :cond_0

    .line 550
    :goto_0
    return-void

    .line 548
    :cond_0
    iput-boolean p1, p0, Lcom/htc/widget/HeaderBar;->lastLDividerEnable:Z

    .line 549
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBar;->invalidate()V

    goto :goto_0
.end method

.method public enableRightDivider(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 328
    iget-boolean v1, p0, Lcom/htc/widget/HeaderBar;->enableRightDivider:Z

    if-ne p1, v1, :cond_1

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 331
    :cond_1
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/htc/widget/HeaderBar;->rightDividerDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    .line 333
    .local v0, enableDivider:Z
    :goto_1
    iget-boolean v1, p0, Lcom/htc/widget/HeaderBar;->enableRightDivider:Z

    if-eq v0, v1, :cond_0

    .line 336
    iput-boolean v0, p0, Lcom/htc/widget/HeaderBar;->enableRightDivider:Z

    .line 337
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBar;->requestLayout()V

    .line 338
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBar;->invalidate()V

    goto :goto_0

    .line 331
    .end local v0           #enableDivider:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public enableRightLastDivider(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 536
    iget-boolean v0, p0, Lcom/htc/widget/HeaderBar;->lastRDividerEnable:Z

    if-ne p1, v0, :cond_0

    .line 541
    :goto_0
    return-void

    .line 539
    :cond_0
    iput-boolean p1, p0, Lcom/htc/widget/HeaderBar;->lastRDividerEnable:Z

    .line 540
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBar;->invalidate()V

    goto :goto_0
.end method

.method public enableSecondBackground(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    .line 466
    iget-boolean v0, p0, Lcom/htc/widget/HeaderBar;->backgroundEnable:Z

    if-ne v0, p1, :cond_0

    .line 481
    :goto_0
    return-void

    .line 472
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HeaderBar;->backgroundBound:Z

    .line 473
    iput-boolean p1, p0, Lcom/htc/widget/HeaderBar;->backgroundEnable:Z

    .line 475
    iget-boolean v0, p0, Lcom/htc/widget/HeaderBar;->backgroundEnable:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HeaderBar;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 476
    iget-object v0, p0, Lcom/htc/widget/HeaderBar;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/HeaderBar;->context:Landroid/content/Context;

    const-string v2, "common_app_bkg_top"

    const v3, 0x20807c7

    invoke-static {v1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HeaderBar;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 479
    :cond_1
    invoke-direct {p0}, Lcom/htc/widget/HeaderBar;->setupBackgroundAlpha()V

    .line 480
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBar;->invalidate()V

    goto :goto_0
.end method

.method public enableTranparentBckground()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 516
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/widget/HeaderBar;->enableTransparentBackground(Z)V

    .line 517
    return-void
.end method

.method public enableTransparentBackground()V
    .locals 1

    .prologue
    .line 510
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/widget/HeaderBar;->enableTransparentBackground(Z)V

    .line 511
    return-void
.end method

.method public enableTransparentBackground(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    .line 490
    iget-boolean v0, p0, Lcom/htc/widget/HeaderBar;->transparentEnable:Z

    if-ne v0, p1, :cond_0

    .line 506
    :goto_0
    return-void

    .line 496
    :cond_0
    iput-boolean p1, p0, Lcom/htc/widget/HeaderBar;->transparentEnable:Z

    .line 498
    iget-object v2, p0, Lcom/htc/widget/HeaderBar;->context:Landroid/content/Context;

    if-eqz p1, :cond_1

    const-string v0, "common_titlebar_sublevel_75"

    move-object v1, v0

    :goto_1
    if-eqz p1, :cond_2

    const v0, 0x208050c

    :goto_2
    invoke-static {v2, v1, v0}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HeaderBar;->setBackgroundResource(I)V

    .line 503
    iget v0, p0, Lcom/htc/widget/HeaderBar;->leftPadding:I

    invoke-virtual {p0}, Lcom/htc/widget/HeaderBar;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/htc/widget/HeaderBar;->rightPadding:I

    invoke-virtual {p0}, Lcom/htc/widget/HeaderBar;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/widget/HeaderBar;->setPadding(IIII)V

    .line 504
    invoke-direct {p0}, Lcom/htc/widget/HeaderBar;->setupBackgroundAlpha()V

    .line 505
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBar;->invalidate()V

    goto :goto_0

    .line 498
    :cond_1
    const-string v0, "common_titlebar_sublevel"

    move-object v1, v0

    goto :goto_1

    :cond_2
    const v0, 0x2080085

    goto :goto_2
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/htc/widget/HeaderBar;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/htc/widget/HeaderBar$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/htc/widget/HeaderBar;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/htc/widget/HeaderBar$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/htc/widget/HeaderBar$LayoutParams;
    .locals 2
    .parameter "attrset"

    .prologue
    .line 991
    new-instance v0, Lcom/htc/widget/HeaderBar$LayoutParams;

    iget-object v1, p0, Lcom/htc/widget/HeaderBar;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/htc/widget/HeaderBar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/htc/widget/HeaderBar$LayoutParams;
    .locals 1
    .parameter "params"

    .prologue
    .line 1000
    new-instance v0, Lcom/htc/widget/HeaderBar$LayoutParams;

    invoke-direct {v0, p1}, Lcom/htc/widget/HeaderBar$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getBubbleCount()I
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/htc/widget/HeaderBar;->bubbleView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/htc/widget/HeaderBar;->bubbleView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 413
    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x8000

    goto :goto_0
.end method

.method public getBubbleOffset()I
    .locals 1

    .prologue
    .line 423
    iget v0, p0, Lcom/htc/widget/HeaderBar;->bubbleViewOffset:I

    return v0
.end method

.method public getBubbleText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/htc/widget/HeaderBar;->bubbleView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBar;->bubbleView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHeaderArea()Landroid/graphics/Rect;
    .locals 4

    .prologue
    .line 1087
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBar;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HeaderBar;->getWidth()I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HeaderBar;->getHeight()I

    move-result v1

    if-gez v1, :cond_1

    .line 1088
    :cond_0
    const/4 v1, 0x0

    .line 1103
    :goto_0
    return-object v1

    .line 1090
    :cond_1
    iget-object v1, p0, Lcom/htc/widget/HeaderBar;->headerArea:Landroid/graphics/Rect;

    if-nez v1, :cond_2

    .line 1091
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/htc/widget/HeaderBar;->headerArea:Landroid/graphics/Rect;

    .line 1093
    :cond_2
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 1096
    .local v0, screenLoc:[I
    invoke-virtual {p0, v0}, Lcom/htc/widget/HeaderBar;->getLocationOnScreen([I)V

    .line 1098
    iget-object v1, p0, Lcom/htc/widget/HeaderBar;->headerArea:Landroid/graphics/Rect;

    const/4 v2, 0x1

    aget v2, v0, v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 1099
    iget-object v1, p0, Lcom/htc/widget/HeaderBar;->headerArea:Landroid/graphics/Rect;

    const/4 v2, 0x0

    aget v2, v0, v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 1100
    iget-object v1, p0, Lcom/htc/widget/HeaderBar;->headerArea:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/htc/widget/HeaderBar;->headerArea:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/htc/widget/HeaderBar;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 1101
    iget-object v1, p0, Lcom/htc/widget/HeaderBar;->headerArea:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/htc/widget/HeaderBar;->headerArea:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/htc/widget/HeaderBar;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 1103
    iget-object v1, p0, Lcom/htc/widget/HeaderBar;->headerArea:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method public getProgressOffset()I
    .locals 1

    .prologue
    .line 428
    iget v0, p0, Lcom/htc/widget/HeaderBar;->progressViewOffset:I

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "config"

    .prologue
    .line 885
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 887
    iget-object v0, p0, Lcom/htc/widget/HeaderBar;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 888
    iget-object v0, p0, Lcom/htc/widget/HeaderBar;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/HeaderBar;->context:Landroid/content/Context;

    const-string v2, "common_app_bkg_top"

    const v3, 0x20807c7

    invoke-static {v1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HeaderBar;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 891
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HeaderBar;->backgroundBound:Z

    .line 893
    iget-boolean v0, p0, Lcom/htc/widget/HeaderBar;->transparentEnable:Z

    if-eqz v0, :cond_1

    .line 894
    invoke-direct {p0}, Lcom/htc/widget/HeaderBar;->setupBackgroundAlpha()V

    .line 896
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBar;->invalidate()V

    .line 897
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    .line 940
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 942
    iget v4, p0, Lcom/htc/widget/HeaderBar;->paddingTop:I

    .line 943
    .local v4, top:I
    iget v5, p0, Lcom/htc/widget/HeaderBar;->paddingTop:I

    iget v6, p0, Lcom/htc/widget/HeaderBar;->nPaddingHeight:I

    add-int v0, v5, v6

    .line 946
    .local v0, bottom:I
    iget-boolean v5, p0, Lcom/htc/widget/HeaderBar;->enableLeftDivider:Z

    if-eqz v5, :cond_0

    .line 947
    const/4 v2, 0x0

    .local v2, loop:I
    :goto_0
    iget v5, p0, Lcom/htc/widget/HeaderBar;->leftViewCount:I

    if-ge v2, v5, :cond_0

    .line 950
    iget v5, p0, Lcom/htc/widget/HeaderBar;->leftViewCount:I

    add-int/lit8 v5, v5, -0x1

    if-ne v2, v5, :cond_2

    iget-boolean v5, p0, Lcom/htc/widget/HeaderBar;->lastLDividerEnable:Z

    if-nez v5, :cond_2

    .line 961
    .end local v2           #loop:I
    :cond_0
    iget-boolean v5, p0, Lcom/htc/widget/HeaderBar;->enableRightDivider:Z

    if-eqz v5, :cond_1

    .line 962
    const/4 v2, 0x0

    .restart local v2       #loop:I
    :goto_1
    iget v5, p0, Lcom/htc/widget/HeaderBar;->rightViewCount:I

    if-ge v2, v5, :cond_1

    .line 965
    iget v5, p0, Lcom/htc/widget/HeaderBar;->rightViewCount:I

    add-int/lit8 v5, v5, -0x1

    if-ne v2, v5, :cond_3

    iget-boolean v5, p0, Lcom/htc/widget/HeaderBar;->lastRDividerEnable:Z

    if-nez v5, :cond_3

    .line 974
    .end local v2           #loop:I
    :cond_1
    return-void

    .line 953
    .restart local v2       #loop:I
    :cond_2
    iget-object v5, p0, Lcom/htc/widget/HeaderBar;->leftDividerPos:[I

    aget v1, v5, v2

    .line 954
    .local v1, left:I
    iget v5, p0, Lcom/htc/widget/HeaderBar;->leftDividerWidth:I

    add-int v3, v1, v5

    .line 956
    .local v3, right:I
    iget-object v5, p0, Lcom/htc/widget/HeaderBar;->leftDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v1, v4, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 957
    iget-object v5, p0, Lcom/htc/widget/HeaderBar;->leftDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 947
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 968
    .end local v1           #left:I
    .end local v3           #right:I
    :cond_3
    iget-object v5, p0, Lcom/htc/widget/HeaderBar;->rightDividerPos:[I

    aget v3, v5, v2

    .line 969
    .restart local v3       #right:I
    iget v5, p0, Lcom/htc/widget/HeaderBar;->rightDividerWidth:I

    sub-int v1, v3, v5

    .line 971
    .restart local v1       #left:I
    iget-object v5, p0, Lcom/htc/widget/HeaderBar;->rightDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v1, v4, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 972
    iget-object v5, p0, Lcom/htc/widget/HeaderBar;->rightDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 962
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 18
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 638
    const/4 v10, 0x0

    .line 640
    .local v10, locateLeftPanel:Z
    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/widget/HeaderBar;->paddingLeft:I

    .line 641
    .local v9, leftMost:I
    sub-int v15, p4, p2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HeaderBar;->paddingRight:I

    move/from16 v16, v0

    sub-int v13, v15, v16

    .line 643
    .local v13, rightMost:I
    sub-int v15, p4, p2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HeaderBar;->paddingRight:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HeaderBar;->paddingLeft:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/widget/HeaderBar;->nPaddingWidth:I

    .line 644
    sub-int v15, p5, p3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HeaderBar;->paddingBottom:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HeaderBar;->paddingTop:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/widget/HeaderBar;->nPaddingHeight:I

    .line 646
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/htc/widget/HeaderBar;->centerView:Landroid/view/View;

    .line 647
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/widget/HeaderBar;->leftViewCount:I

    .line 648
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/widget/HeaderBar;->rightViewCount:I

    .line 654
    const/4 v11, 0x0

    .local v11, loop:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HeaderBar;->getChildCount()I

    move-result v2

    .local v2, childCount:I
    :goto_0
    if-ge v11, v2, :cond_13

    .line 656
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/htc/widget/HeaderBar;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 657
    .local v7, childView:Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    .line 660
    .local v14, vglParams:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v15

    const/16 v16, 0x8

    move/from16 v0, v16

    if-eq v15, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/HeaderBar;->progressView:Landroid/view/View;

    if-eq v7, v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/HeaderBar;->bubbleView:Landroid/view/View;

    if-ne v7, v15, :cond_1

    .line 654
    .end local v14           #vglParams:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 665
    .restart local v14       #vglParams:Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    const/4 v10, 0x0

    .line 668
    instance-of v15, v14, Lcom/htc/widget/HeaderBar$LayoutParams;

    if-eqz v15, :cond_2

    move-object v15, v14

    .line 669
    check-cast v15, Lcom/htc/widget/HeaderBar$LayoutParams;

    iget v15, v15, Lcom/htc/widget/HeaderBar$LayoutParams;->panelGravity:I

    packed-switch v15, :pswitch_data_0

    .line 686
    :cond_2
    :goto_2
    :pswitch_0
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 687
    .local v8, childWidth:I
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 690
    .local v3, childHeight:I
    if-eqz v10, :cond_d

    .line 693
    instance-of v15, v14, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v15, :cond_6

    check-cast v14, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local v14           #vglParams:Landroid/view/ViewGroup$LayoutParams;
    move-object v12, v14

    .line 696
    .local v12, mglParams:Landroid/view/ViewGroup$MarginLayoutParams;
    :goto_3
    if-nez v12, :cond_7

    const/4 v15, 0x0

    :goto_4
    add-int v4, v9, v15

    .line 697
    .local v4, childLeft:I
    if-nez v12, :cond_8

    const/4 v15, 0x0

    :goto_5
    add-int/2addr v15, v9

    add-int v5, v15, v8

    .line 700
    .local v5, childRight:I
    add-int v16, v9, v8

    if-nez v12, :cond_9

    const/4 v15, 0x0

    :goto_6
    add-int v9, v16, v15

    .line 703
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HeaderBar;->nPaddingHeight:I

    if-le v3, v15, :cond_a

    .line 705
    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/widget/HeaderBar;->paddingTop:I

    .line 706
    .local v6, childTop:I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HeaderBar;->nPaddingHeight:I

    add-int v1, v6, v15

    .line 715
    .local v1, childBottom:I
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/htc/widget/HeaderBar;->enableLeftDivider:Z

    if-eqz v15, :cond_4

    .line 717
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/HeaderBar;->leftDividerPos:[I

    if-eqz v15, :cond_3

    .line 718
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/HeaderBar;->leftDividerPos:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HeaderBar;->leftViewCount:I

    move/from16 v16, v0

    aput v9, v15, v16

    .line 720
    :cond_3
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HeaderBar;->leftDividerWidth:I

    add-int/2addr v9, v15

    .line 724
    :cond_4
    if-gt v5, v13, :cond_b

    .line 726
    invoke-virtual {v7, v4, v6, v5, v1}, Landroid/view/View;->layout(IIII)V

    .line 727
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HeaderBar;->leftViewCount:I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/widget/HeaderBar;->leftViewCount:I

    .line 735
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HeaderBar;->leftViewCount:I

    const/16 v16, 0x8

    move/from16 v0, v16

    if-lt v15, v0, :cond_0

    .line 736
    new-instance v15, Ljava/lang/IllegalStateException;

    const-string v16, "too many left child view"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 673
    .end local v1           #childBottom:I
    .end local v3           #childHeight:I
    .end local v4           #childLeft:I
    .end local v5           #childRight:I
    .end local v6           #childTop:I
    .end local v8           #childWidth:I
    .end local v12           #mglParams:Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v14       #vglParams:Landroid/view/ViewGroup$LayoutParams;
    :pswitch_1
    const/4 v10, 0x1

    .line 674
    goto :goto_2

    .line 678
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/HeaderBar;->centerView:Landroid/view/View;

    if-eqz v15, :cond_5

    .line 679
    new-instance v15, Ljava/lang/IllegalStateException;

    const-string v16, "more than one center view"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 681
    :cond_5
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/htc/widget/HeaderBar;->centerView:Landroid/view/View;

    goto/16 :goto_1

    .line 693
    .restart local v3       #childHeight:I
    .restart local v8       #childWidth:I
    :cond_6
    const/4 v12, 0x0

    goto :goto_3

    .line 696
    .end local v14           #vglParams:Landroid/view/ViewGroup$LayoutParams;
    .restart local v12       #mglParams:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_7
    iget v15, v12, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_4

    .line 697
    .restart local v4       #childLeft:I
    :cond_8
    iget v15, v12, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_5

    .line 700
    .restart local v5       #childRight:I
    :cond_9
    iget v15, v12, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v0, v12, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v17, v0

    add-int v15, v15, v17

    goto :goto_6

    .line 710
    :cond_a
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HeaderBar;->paddingTop:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HeaderBar;->nPaddingHeight:I

    move/from16 v16, v0

    sub-int v16, v16, v3

    div-int/lit8 v16, v16, 0x2

    add-int v6, v15, v16

    .line 711
    .restart local v6       #childTop:I
    add-int v1, v6, v3

    .restart local v1       #childBottom:I
    goto :goto_7

    .line 731
    :cond_b
    invoke-virtual {v7, v4, v6, v13, v1}, Landroid/view/View;->layout(IIII)V

    .line 880
    .end local v1           #childBottom:I
    .end local v3           #childHeight:I
    .end local v4           #childLeft:I
    .end local v5           #childRight:I
    .end local v6           #childTop:I
    .end local v7           #childView:Landroid/view/View;
    .end local v8           #childWidth:I
    .end local v12           #mglParams:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_c
    :goto_8
    return-void

    .line 741
    .restart local v3       #childHeight:I
    .restart local v7       #childView:Landroid/view/View;
    .restart local v8       #childWidth:I
    .restart local v14       #vglParams:Landroid/view/ViewGroup$LayoutParams;
    :cond_d
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HeaderBar;->rightUnitWidth:I

    if-le v8, v15, :cond_11

    .line 743
    move v5, v13

    .line 744
    .restart local v5       #childRight:I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HeaderBar;->rightUnitWidth:I

    sub-int v4, v5, v15

    .line 753
    .restart local v4       #childLeft:I
    :goto_9
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HeaderBar;->rightUnitWidth:I

    sub-int/2addr v13, v15

    .line 756
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HeaderBar;->nPaddingHeight:I

    if-le v3, v15, :cond_12

    .line 758
    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/widget/HeaderBar;->paddingTop:I

    .line 759
    .restart local v6       #childTop:I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HeaderBar;->nPaddingHeight:I

    add-int v1, v6, v15

    .line 768
    .restart local v1       #childBottom:I
    :goto_a
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/htc/widget/HeaderBar;->enableRightDivider:Z

    if-eqz v15, :cond_f

    .line 770
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/HeaderBar;->rightDividerPos:[I

    if-eqz v15, :cond_e

    .line 771
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/HeaderBar;->rightDividerPos:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HeaderBar;->rightViewCount:I

    move/from16 v16, v0

    aput v13, v15, v16

    .line 773
    :cond_e
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HeaderBar;->rightDividerWidth:I

    sub-int/2addr v13, v15

    .line 777
    :cond_f
    if-lt v4, v9, :cond_10

    .line 779
    invoke-virtual {v7, v4, v6, v5, v1}, Landroid/view/View;->layout(IIII)V

    .line 780
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HeaderBar;->rightViewCount:I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/widget/HeaderBar;->rightViewCount:I

    .line 788
    :cond_10
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HeaderBar;->rightViewCount:I

    const/16 v16, 0x8

    move/from16 v0, v16

    if-lt v15, v0, :cond_0

    .line 789
    new-instance v15, Ljava/lang/IllegalStateException;

    const-string v16, "too many right child view"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 748
    .end local v1           #childBottom:I
    .end local v4           #childLeft:I
    .end local v5           #childRight:I
    .end local v6           #childTop:I
    :cond_11
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HeaderBar;->rightUnitWidth:I

    sub-int/2addr v15, v8

    div-int/lit8 v15, v15, 0x2

    sub-int v5, v13, v15

    .line 749
    .restart local v5       #childRight:I
    sub-int v4, v5, v8

    .restart local v4       #childLeft:I
    goto :goto_9

    .line 763
    :cond_12
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HeaderBar;->paddingTop:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HeaderBar;->nPaddingHeight:I

    move/from16 v16, v0

    sub-int v16, v16, v3

    div-int/lit8 v16, v16, 0x2

    add-int v6, v15, v16

    .line 764
    .restart local v6       #childTop:I
    add-int v1, v6, v3

    .restart local v1       #childBottom:I
    goto :goto_a

    .line 794
    .end local v1           #childBottom:I
    .end local v3           #childHeight:I
    .end local v4           #childLeft:I
    .end local v5           #childRight:I
    .end local v6           #childTop:I
    .end local v7           #childView:Landroid/view/View;
    .end local v8           #childWidth:I
    .end local v14           #vglParams:Landroid/view/ViewGroup$LayoutParams;
    :cond_13
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/HeaderBar;->bubbleView:Landroid/view/View;

    if-eqz v15, :cond_14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/HeaderBar;->bubbleView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v15

    const/16 v16, 0x8

    move/from16 v0, v16

    if-eq v15, v0, :cond_14

    .line 796
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/HeaderBar;->bubbleView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 797
    .restart local v8       #childWidth:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/HeaderBar;->bubbleView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 799
    .restart local v3       #childHeight:I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HeaderBar;->bubbleViewOffset:I

    sub-int v5, v13, v15

    .line 800
    .restart local v5       #childRight:I
    sub-int v4, v5, v8

    .line 802
    .restart local v4       #childLeft:I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HeaderBar;->paddingTop:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HeaderBar;->nPaddingHeight:I

    move/from16 v16, v0

    sub-int v16, v16, v3

    div-int/lit8 v16, v16, 0x2

    add-int v6, v15, v16

    .line 803
    .restart local v6       #childTop:I
    add-int v1, v6, v3

    .line 806
    .restart local v1       #childBottom:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/HeaderBar;->bubbleView:Landroid/view/View;

    invoke-virtual {v15, v4, v6, v5, v1}, Landroid/view/View;->layout(IIII)V

    .line 809
    sub-int v15, v13, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HeaderBar;->bubbleViewOffset:I

    move/from16 v16, v0

    sub-int v13, v15, v16

    .line 813
    .end local v1           #childBottom:I
    .end local v3           #childHeight:I
    .end local v4           #childLeft:I
    .end local v5           #childRight:I
    .end local v6           #childTop:I
    .end local v8           #childWidth:I
    :cond_14
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/HeaderBar;->progressView:Landroid/view/View;

    if-eqz v15, :cond_15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/HeaderBar;->progressView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v15

    const/16 v16, 0x8

    move/from16 v0, v16

    if-eq v15, v0, :cond_15

    .line 815
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/HeaderBar;->progressView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 816
    .restart local v8       #childWidth:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/HeaderBar;->progressView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 818
    .restart local v3       #childHeight:I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HeaderBar;->progressViewOffset:I

    sub-int v5, v13, v15

    .line 819
    .restart local v5       #childRight:I
    sub-int v4, v5, v8

    .line 821
    .restart local v4       #childLeft:I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HeaderBar;->paddingTop:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HeaderBar;->nPaddingHeight:I

    move/from16 v16, v0

    sub-int v16, v16, v3

    div-int/lit8 v16, v16, 0x2

    add-int v6, v15, v16

    .line 822
    .restart local v6       #childTop:I
    add-int v1, v6, v3

    .line 825
    .restart local v1       #childBottom:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/HeaderBar;->progressView:Landroid/view/View;

    invoke-virtual {v15, v4, v6, v5, v1}, Landroid/view/View;->layout(IIII)V

    .line 828
    sub-int v15, v13, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HeaderBar;->progressViewOffset:I

    move/from16 v16, v0

    sub-int v13, v15, v16

    .line 832
    .end local v1           #childBottom:I
    .end local v3           #childHeight:I
    .end local v4           #childLeft:I
    .end local v5           #childRight:I
    .end local v6           #childTop:I
    .end local v8           #childWidth:I
    :cond_15
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/HeaderBar;->centerView:Landroid/view/View;

    if-eqz v15, :cond_c

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/HeaderBar;->centerView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v15

    const/16 v16, 0x8

    move/from16 v0, v16

    if-eq v15, v0, :cond_c

    if-ge v9, v13, :cond_c

    .line 834
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/HeaderBar;->centerView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 835
    .restart local v8       #childWidth:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/HeaderBar;->centerView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 838
    .restart local v3       #childHeight:I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HeaderBar;->nPaddingHeight:I

    if-le v3, v15, :cond_17

    .line 840
    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/widget/HeaderBar;->paddingTop:I

    .line 841
    .restart local v6       #childTop:I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HeaderBar;->nPaddingHeight:I

    add-int v1, v6, v15

    .line 867
    .restart local v1       #childBottom:I
    :goto_b
    sub-int v15, v13, v9

    if-eq v8, v15, :cond_16

    .line 872
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/HeaderBar;->centerView:Landroid/view/View;

    sub-int v16, v13, v9

    const/high16 v17, 0x4000

    invoke-static/range {v16 .. v17}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    const/high16 v17, 0x4000

    move/from16 v0, v17

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v17

    invoke-virtual/range {v15 .. v17}, Landroid/view/View;->measure(II)V

    .line 878
    :cond_16
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/HeaderBar;->centerView:Landroid/view/View;

    invoke-virtual {v15, v9, v6, v13, v1}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_8

    .line 845
    .end local v1           #childBottom:I
    .end local v6           #childTop:I
    :cond_17
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HeaderBar;->paddingTop:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HeaderBar;->nPaddingHeight:I

    move/from16 v16, v0

    sub-int v16, v16, v3

    div-int/lit8 v16, v16, 0x2

    add-int v6, v15, v16

    .line 846
    .restart local v6       #childTop:I
    add-int v1, v6, v3

    .restart local v1       #childBottom:I
    goto :goto_b

    .line 669
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 599
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 601
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 602
    .local v1, headerWidth:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 604
    .local v0, headerHeight:I
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBar;->getPaddingTop()I

    move-result v2

    iput v2, p0, Lcom/htc/widget/HeaderBar;->paddingTop:I

    .line 605
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBar;->getPaddingLeft()I

    move-result v2

    iput v2, p0, Lcom/htc/widget/HeaderBar;->paddingLeft:I

    .line 606
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBar;->getPaddingRight()I

    move-result v2

    iput v2, p0, Lcom/htc/widget/HeaderBar;->paddingRight:I

    .line 607
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBar;->getPaddingBottom()I

    move-result v2

    iput v2, p0, Lcom/htc/widget/HeaderBar;->paddingBottom:I

    .line 622
    invoke-virtual {p0, p1, p2}, Lcom/htc/widget/HeaderBar;->measureChildren(II)V

    .line 623
    invoke-virtual {p0, v1, v0}, Lcom/htc/widget/HeaderBar;->setMeasuredDimension(II)V

    .line 625
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/widget/HeaderBar;->backgroundBound:Z

    .line 626
    return-void
.end method

.method public setBubbleCount(I)V
    .locals 1
    .parameter "count"

    .prologue
    .line 359
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HeaderBar;->setBubbleText(Ljava/lang/String;)V

    .line 360
    return-void
.end method

.method public setBubbleOffset(I)V
    .locals 2
    .parameter "offset"

    .prologue
    .line 378
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/htc/widget/HeaderBar;->bubbleViewOffset:I

    if-ne p1, v0, :cond_1

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 381
    :cond_1
    iput p1, p0, Lcom/htc/widget/HeaderBar;->bubbleViewOffset:I

    .line 383
    iget-object v0, p0, Lcom/htc/widget/HeaderBar;->bubbleView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBar;->bubbleView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 385
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBar;->requestLayout()V

    .line 386
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBar;->invalidate()V

    goto :goto_0
.end method

.method public setBubbleText(Ljava/lang/String;)V
    .locals 4
    .parameter "string"

    .prologue
    .line 364
    iget-object v0, p0, Lcom/htc/widget/HeaderBar;->bubbleView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 365
    invoke-direct {p0}, Lcom/htc/widget/HeaderBar;->setupBubbleView()V

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HeaderBar;->bubbleView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    iget-object v0, p0, Lcom/htc/widget/HeaderBar;->bubbleView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/htc/widget/HeaderBar;->context:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x2

    if-le v1, v3, :cond_1

    const v1, 0x20300d5

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 370
    return-void

    .line 368
    :cond_1
    const v1, 0x20300d7

    goto :goto_0
.end method

.method public setBubbleVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 343
    iget-object v0, p0, Lcom/htc/widget/HeaderBar;->bubbleView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 344
    invoke-direct {p0}, Lcom/htc/widget/HeaderBar;->setupBubbleView()V

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HeaderBar;->bubbleView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 347
    return-void
.end method

.method public setLeftDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "drawable"

    .prologue
    const/4 v1, -0x1

    .line 234
    iget-object v0, p0, Lcom/htc/widget/HeaderBar;->leftDividerDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    .line 266
    :goto_0
    return-void

    .line 238
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-lez v0, :cond_2

    .line 240
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HeaderBar;->enableLeftDivider:Z

    .line 241
    iput-object p1, p0, Lcom/htc/widget/HeaderBar;->leftDividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 244
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget v1, p0, Lcom/htc/widget/HeaderBar;->leftDividerWidth:I

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iget v1, p0, Lcom/htc/widget/HeaderBar;->leftDividerHeight:I

    if-ne v0, v1, :cond_1

    .line 246
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBar;->invalidate()V

    goto :goto_0

    .line 251
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HeaderBar;->leftDividerWidth:I

    .line 252
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HeaderBar;->leftDividerHeight:I

    .line 264
    :goto_1
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBar;->requestLayout()V

    .line 265
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBar;->invalidate()V

    goto :goto_0

    .line 257
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HeaderBar;->enableLeftDivider:Z

    .line 259
    iput v1, p0, Lcom/htc/widget/HeaderBar;->leftDividerWidth:I

    .line 260
    iput v1, p0, Lcom/htc/widget/HeaderBar;->leftDividerHeight:I

    .line 261
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HeaderBar;->leftDividerDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method public setProgressOffset(I)V
    .locals 2
    .parameter "offset"

    .prologue
    .line 396
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/htc/widget/HeaderBar;->progressViewOffset:I

    if-ne p1, v0, :cond_1

    .line 406
    :cond_0
    :goto_0
    return-void

    .line 399
    :cond_1
    iput p1, p0, Lcom/htc/widget/HeaderBar;->progressViewOffset:I

    .line 401
    iget-object v0, p0, Lcom/htc/widget/HeaderBar;->progressView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBar;->progressView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 403
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBar;->requestLayout()V

    .line 404
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBar;->invalidate()V

    goto :goto_0
.end method

.method public setProgressVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 351
    iget-object v0, p0, Lcom/htc/widget/HeaderBar;->progressView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 352
    invoke-direct {p0}, Lcom/htc/widget/HeaderBar;->setupProgressView()V

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HeaderBar;->progressView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 355
    return-void
.end method

.method public setRightDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "drawable"

    .prologue
    const/4 v1, -0x1

    .line 273
    iget-object v0, p0, Lcom/htc/widget/HeaderBar;->rightDividerDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    .line 305
    :goto_0
    return-void

    .line 277
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-lez v0, :cond_2

    .line 279
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HeaderBar;->enableRightDivider:Z

    .line 280
    iput-object p1, p0, Lcom/htc/widget/HeaderBar;->rightDividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 283
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget v1, p0, Lcom/htc/widget/HeaderBar;->rightDividerWidth:I

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iget v1, p0, Lcom/htc/widget/HeaderBar;->rightDividerHeight:I

    if-ne v0, v1, :cond_1

    .line 285
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBar;->invalidate()V

    goto :goto_0

    .line 290
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HeaderBar;->rightDividerWidth:I

    .line 291
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HeaderBar;->rightDividerHeight:I

    .line 303
    :goto_1
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBar;->requestLayout()V

    .line 304
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBar;->invalidate()V

    goto :goto_0

    .line 296
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HeaderBar;->enableRightDivider:Z

    .line 298
    iput v1, p0, Lcom/htc/widget/HeaderBar;->rightDividerWidth:I

    .line 299
    iput v1, p0, Lcom/htc/widget/HeaderBar;->rightDividerHeight:I

    .line 300
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HeaderBar;->rightDividerDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method public updateResource()V
    .locals 4

    .prologue
    .line 559
    const/4 v2, 0x0

    .local v2, loop:I
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBar;->getChildCount()I

    move-result v0

    .local v0, childCount:I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 561
    invoke-virtual {p0, v2}, Lcom/htc/widget/HeaderBar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 563
    .local v1, childView:Landroid/view/View;
    if-nez v1, :cond_1

    .line 559
    .end local v1           #childView:Landroid/view/View;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 567
    .restart local v1       #childView:Landroid/view/View;
    :cond_1
    instance-of v3, v1, Lcom/htc/widget/HeaderBarText;

    if-eqz v3, :cond_2

    move-object v3, v1

    .line 568
    check-cast v3, Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v3}, Lcom/htc/widget/HeaderBarText;->updateResource()V

    .line 571
    :cond_2
    instance-of v3, v1, Lcom/htc/widget/HeaderBarDropDown;

    if-eqz v3, :cond_0

    .line 572
    check-cast v1, Lcom/htc/widget/HeaderBarDropDown;

    .end local v1           #childView:Landroid/view/View;
    invoke-virtual {v1}, Lcom/htc/widget/HeaderBarDropDown;->updateResource()V

    goto :goto_1

    .line 574
    :cond_3
    return-void
.end method
