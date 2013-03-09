.class public Lcom/google/android/gm/MessageWebView;
.super Landroid/webkit/WebView;
.source "MessageWebView.java"


# instance fields
.field private mMaxScale:F

.field private mParentLayoutHeight:I

.field private mShrinkMeasuredHeight:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gm/MessageWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gm/MessageWebView;->mMaxScale:F

    .line 49
    return-void
.end method

.method private setParentHeight(ZI)I
    .locals 5
    .parameter "measure"
    .parameter "height"

    .prologue
    .line 60
    const/4 v0, 0x0

    .line 61
    .local v0, originalHeight:I
    invoke-virtual {p0}, Lcom/google/android/gm/MessageWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 62
    .local v1, parent:Landroid/view/ViewParent;
    instance-of v4, v1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    .line 63
    invoke-virtual {p0}, Lcom/google/android/gm/MessageWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 64
    .local v2, parentGroup:Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 65
    .local v3, parentLayoutParams:Landroid/view/ViewGroup$LayoutParams;
    iget v0, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 66
    if-eqz p1, :cond_0

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result p2

    .end local p2
    :cond_0
    iput p2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 67
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    .end local v2           #parentGroup:Landroid/view/ViewGroup;
    .end local v3           #parentLayoutParams:Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    return v0
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 8
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 92
    const-string v1, "Gmail"

    const-string v2, "IN %d onLayout, changed=%b w/h=%d/%d l/t/r/b=%d/%d/%d/%d z=%f"

    const/16 v3, 0x9

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    rem-int/lit16 v4, v4, 0x3e8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v7

    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/google/android/gm/MessageWebView;->getWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/google/android/gm/MessageWebView;->getHeight()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x7

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0x8

    invoke-virtual {p0}, Lcom/google/android/gm/MessageWebView;->getScale()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 94
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebView;->onLayout(ZIIII)V

    .line 96
    invoke-virtual {p0}, Lcom/google/android/gm/MessageWebView;->getScale()F

    move-result v0

    .line 98
    .local v0, scale:F
    iget-boolean v1, p0, Lcom/google/android/gm/MessageWebView;->mShrinkMeasuredHeight:Z

    if-eqz v1, :cond_1

    .line 101
    iget v1, p0, Lcom/google/android/gm/MessageWebView;->mParentLayoutHeight:I

    invoke-direct {p0, v6, v1}, Lcom/google/android/gm/MessageWebView;->setParentHeight(ZI)I

    .line 102
    iput-boolean v6, p0, Lcom/google/android/gm/MessageWebView;->mShrinkMeasuredHeight:Z

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gm/MessageWebView;->getHeight()I

    move-result v1

    if-lez v1, :cond_0

    .line 105
    iget v1, p0, Lcom/google/android/gm/MessageWebView;->mMaxScale:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gm/MessageWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v1

    if-nez v1, :cond_2

    .line 114
    const-string v1, "Gmail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*** shrinking height of webview="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    rem-int/lit16 v3, v3, 0x3e8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 116
    invoke-direct {p0, v7, v6}, Lcom/google/android/gm/MessageWebView;->setParentHeight(ZI)I

    move-result v1

    iput v1, p0, Lcom/google/android/gm/MessageWebView;->mParentLayoutHeight:I

    .line 117
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gm/MessageWebView;->mMaxScale:F

    .line 119
    iput-boolean v7, p0, Lcom/google/android/gm/MessageWebView;->mShrinkMeasuredHeight:Z

    goto :goto_0

    .line 121
    :cond_2
    iget v1, p0, Lcom/google/android/gm/MessageWebView;->mMaxScale:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/google/android/gm/MessageWebView;->getScale()F

    move-result v1

    iput v1, p0, Lcom/google/android/gm/MessageWebView;->mMaxScale:F

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 74
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 75
    .local v0, heightMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 76
    .local v1, heightSize:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 77
    .local v2, widthMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 83
    .local v3, widthSize:I
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V

    .line 85
    iget-boolean v4, p0, Lcom/google/android/gm/MessageWebView;->mShrinkMeasuredHeight:Z

    if-eqz v4, :cond_0

    const/high16 v4, 0x4000

    if-eq v0, v4, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/google/android/gm/MessageWebView;->getMeasuredWidthAndState()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/google/android/gm/MessageWebView;->setMeasuredDimension(II)V

    .line 88
    :cond_0
    return-void
.end method
