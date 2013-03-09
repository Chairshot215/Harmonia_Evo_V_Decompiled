.class public Lcom/htc/fm/SignalBar;
.super Landroid/widget/RelativeLayout;
.source "SignalBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/fm/SignalBar$1;,
        Lcom/htc/fm/SignalBar$Level;
    }
.end annotation


# static fields
.field private static final COUNT:I = 0x4

.field private static final DEFAULT_MAX:I = 0x7

.field private static final DEFAULT_OFFRES:I = 0x7f02005d

.field private static final DEFAULT_ONRES:I = 0x7f02005c

.field private static final DEFAULT_SPACE:I = 0x8


# instance fields
.field private mLevels:[Lcom/htc/fm/SignalBar$Level;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attributeSet"

    .prologue
    .line 23
    const v0, 0x101007b

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/fm/SignalBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/htc/fm/SignalBar$Level;

    iput-object v0, p0, Lcom/htc/fm/SignalBar;->mLevels:[Lcom/htc/fm/SignalBar$Level;

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/htc/fm/SignalBar;->initLevels(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method private initLevels(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 16
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 33
    sget-object v2, Lcom/htc/fm/R$styleable;->SignalBar:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v11

    .line 34
    .local v11, attrArray:Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-virtual {v11, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 35
    .local v5, maxLevel:I
    const/4 v2, 0x1

    const/16 v3, 0x8

    invoke-virtual {v11, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 36
    .local v6, space:I
    const/4 v2, 0x2

    const v3, 0x7f02005c

    invoke-virtual {v11, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 37
    .local v7, onResID:I
    const/4 v2, 0x3

    const v3, 0x7f02005d

    invoke-virtual {v11, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 39
    .local v8, offResID:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fm/SignalBar;->mLevels:[Lcom/htc/fm/SignalBar$Level;

    array-length v2, v2

    if-ge v12, v2, :cond_4

    .line 40
    rem-int/lit8 v2, v12, 0x2

    if-nez v2, :cond_0

    const/4 v9, 0x1

    .line 41
    .local v9, isReversed:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fm/SignalBar;->mLevels:[Lcom/htc/fm/SignalBar$Level;

    array-length v2, v2

    div-int/lit8 v2, v2, 0x2

    if-ge v12, v2, :cond_1

    const/4 v13, 0x1

    .line 42
    .local v13, isLeft:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/fm/SignalBar;->mLevels:[Lcom/htc/fm/SignalBar$Level;

    new-instance v2, Lcom/htc/fm/SignalBar$Level;

    const/4 v10, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v10}, Lcom/htc/fm/SignalBar$Level;-><init>(Lcom/htc/fm/SignalBar;Landroid/content/Context;IIIIZLcom/htc/fm/SignalBar$1;)V

    aput-object v2, v15, v12

    .line 43
    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct {v14, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 44
    .local v14, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v13, :cond_2

    const/16 v2, 0x9

    :goto_3
    invoke-virtual {v14, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 45
    if-eqz v9, :cond_3

    const/16 v2, 0xc

    :goto_4
    invoke-virtual {v14, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 46
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fm/SignalBar;->mLevels:[Lcom/htc/fm/SignalBar$Level;

    aget-object v2, v2, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v14}, Lcom/htc/fm/SignalBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 40
    .end local v9           #isReversed:Z
    .end local v13           #isLeft:Z
    .end local v14           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    const/4 v9, 0x0

    goto :goto_1

    .line 41
    .restart local v9       #isReversed:Z
    :cond_1
    const/4 v13, 0x0

    goto :goto_2

    .line 44
    .restart local v13       #isLeft:Z
    .restart local v14       #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    const/16 v2, 0xb

    goto :goto_3

    .line 45
    :cond_3
    const/4 v2, 0x6

    goto :goto_4

    .line 48
    .end local v9           #isReversed:Z
    .end local v13           #isLeft:Z
    .end local v14           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_4
    return-void
.end method


# virtual methods
.method public setRssi(I)V
    .locals 4
    .parameter "rssi"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/fm/SignalBar;->mLevels:[Lcom/htc/fm/SignalBar$Level;

    .local v0, arr$:[Lcom/htc/fm/SignalBar$Level;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 52
    .local v3, level:Lcom/htc/fm/SignalBar$Level;
    #calls: Lcom/htc/fm/SignalBar$Level;->setLevel(I)V
    invoke-static {v3, p1}, Lcom/htc/fm/SignalBar$Level;->access$100(Lcom/htc/fm/SignalBar$Level;I)V

    .line 51
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 54
    .end local v3           #level:Lcom/htc/fm/SignalBar$Level;
    :cond_0
    invoke-virtual {p0}, Lcom/htc/fm/SignalBar;->invalidate()V

    .line 55
    return-void
.end method
