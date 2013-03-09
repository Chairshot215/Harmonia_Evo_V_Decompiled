.class public Lcom/google/android/gm/HybridConversationScrollContainer;
.super Landroid/widget/LinearLayout;
.source "HybridConversationScrollContainer.java"


# instance fields
.field private final mConvHeader:Lcom/google/android/gm/ConversationViewHeader;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gm/HybridConversationScrollContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/google/android/gm/HybridConversationScrollContainer;->setOrientation(I)V

    .line 37
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 38
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f040024

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/ConversationViewHeader;

    .line 40
    .local v0, cvh:Lcom/google/android/gm/ConversationViewHeader;
    invoke-virtual {p0, v0}, Lcom/google/android/gm/HybridConversationScrollContainer;->addView(Landroid/view/View;)V

    .line 41
    iput-object v0, p0, Lcom/google/android/gm/HybridConversationScrollContainer;->mConvHeader:Lcom/google/android/gm/ConversationViewHeader;

    .line 42
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 85
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gm/HybridConversationScrollContainer;->addView(Landroid/view/View;I)V

    .line 86
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 8
    .parameter "child"
    .parameter "index"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 90
    instance-of v0, p1, Lcom/google/android/gm/HeaderBlock;

    .line 92
    .local v0, isHeaderBlock:Z
    iget-object v1, p0, Lcom/google/android/gm/HybridConversationScrollContainer;->mConvHeader:Lcom/google/android/gm/ConversationViewHeader;

    if-nez v1, :cond_1

    .line 94
    if-eqz v0, :cond_0

    .line 95
    const-string v1, "Gmail"

    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2}, Ljava/lang/Error;-><init>()V

    const-string v3, "invalid child view during init: %s"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p1, v4, v6

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 105
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 106
    return-void

    .line 100
    :cond_1
    if-eqz p2, :cond_2

    if-nez v0, :cond_0

    .line 101
    :cond_2
    const-string v1, "Gmail"

    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2}, Ljava/lang/Error;-><init>()V

    const-string v3, "invalid child view/index i=%d child=%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    aput-object p1, v4, v7

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public getConversationHeader()Lcom/google/android/gm/ConversationViewHeader;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/gm/HybridConversationScrollContainer;->mConvHeader:Lcom/google/android/gm/ConversationViewHeader;

    return-object v0
.end method

.method public getHeaderAt(I)Landroid/view/View;
    .locals 9
    .parameter "i"

    .prologue
    const/4 v8, 0x0

    .line 68
    add-int/lit8 v0, p1, 0x1

    .line 69
    .local v0, childIndex:I
    invoke-virtual {p0, v0}, Lcom/google/android/gm/HybridConversationScrollContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 70
    .local v1, header:Landroid/view/View;
    instance-of v2, v1, Lcom/google/android/gm/HeaderBlock;

    if-nez v2, :cond_0

    .line 71
    const-string v2, "Gmail"

    new-instance v3, Ljava/lang/Error;

    invoke-direct {v3}, Ljava/lang/Error;-><init>()V

    const-string v4, "invalid header view at i=%d: %s. (count=%d child0=%s)"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x1

    aput-object v1, v5, v6

    const/4 v6, 0x2

    invoke-virtual {p0}, Lcom/google/android/gm/HybridConversationScrollContainer;->getChildCount()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-virtual {p0, v8}, Lcom/google/android/gm/HybridConversationScrollContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 74
    const/4 v1, 0x0

    .line 76
    .end local v1           #header:Landroid/view/View;
    :cond_0
    return-object v1
.end method

.method public getHeaderCount()I
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/google/android/gm/HybridConversationScrollContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 52
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 54
    invoke-virtual {p0}, Lcom/google/android/gm/HybridConversationScrollContainer;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "missing conversation header view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    return-void
.end method

.method public removeAllHeaders()V
    .locals 2

    .prologue
    .line 80
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gm/HybridConversationScrollContainer;->getHeaderCount()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gm/HybridConversationScrollContainer;->removeViews(II)V

    .line 81
    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .locals 0
    .parameter "eventType"

    .prologue
    .line 48
    return-void
.end method
