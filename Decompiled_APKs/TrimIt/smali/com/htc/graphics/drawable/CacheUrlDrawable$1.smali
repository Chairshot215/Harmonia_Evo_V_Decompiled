.class Lcom/htc/graphics/drawable/CacheUrlDrawable$1;
.super Landroid/os/Handler;
.source "CacheUrlDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/graphics/drawable/CacheUrlDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/graphics/drawable/CacheUrlDrawable;


# direct methods
.method constructor <init>(Lcom/htc/graphics/drawable/CacheUrlDrawable;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable$1;->this$0:Lcom/htc/graphics/drawable/CacheUrlDrawable;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 75
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable$1;->this$0:Lcom/htc/graphics/drawable/CacheUrlDrawable;

    iget-object v2, v2, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 77
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    .line 78
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable$1;->this$0:Lcom/htc/graphics/drawable/CacheUrlDrawable;

    #getter for: Lcom/htc/graphics/drawable/CacheUrlDrawable;->mNeverDrawn:Z
    invoke-static {v1}, Lcom/htc/graphics/drawable/CacheUrlDrawable;->access$000(Lcom/htc/graphics/drawable/CacheUrlDrawable;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/htc/graphics/drawable/CacheUrlDrawable;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 81
    iget-object v1, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable$1;->this$0:Lcom/htc/graphics/drawable/CacheUrlDrawable;

    invoke-virtual {v1}, Lcom/htc/graphics/drawable/CacheUrlDrawable;->getScrollState()Lcom/htc/opensense/plugin/HtcScrollState;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable$1;->this$0:Lcom/htc/graphics/drawable/CacheUrlDrawable;

    invoke-virtual {v1}, Lcom/htc/graphics/drawable/CacheUrlDrawable;->getScrollState()Lcom/htc/opensense/plugin/HtcScrollState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/opensense/plugin/HtcScrollState;->getState()I

    move-result v1

    if-nez v1, :cond_3

    .line 83
    :cond_0
    const-string v1, "UrlDrawable"

    const-string v2, "fetching complete: invalidateSelf, %s"

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable$1;->this$0:Lcom/htc/graphics/drawable/CacheUrlDrawable;

    iget-object v4, v4, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mUrl:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v1, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable$1;->this$0:Lcom/htc/graphics/drawable/CacheUrlDrawable;

    iget-object v1, v1, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget-object v1, v1, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;

    iget-object v2, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable$1;->this$0:Lcom/htc/graphics/drawable/CacheUrlDrawable;

    iget-object v2, v2, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget v2, v2, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->minDim:I

    iget-object v3, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable$1;->this$0:Lcom/htc/graphics/drawable/CacheUrlDrawable;

    iget-object v3, v3, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget v3, v3, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->maxDim:I

    #calls: Lcom/htc/graphics/drawable/CacheUrlDrawable;->getScaledBitmap(Landroid/graphics/Bitmap;Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;II)Landroid/graphics/Bitmap;
    invoke-static {v0, v1, v2, v3}, Lcom/htc/graphics/drawable/CacheUrlDrawable;->access$100(Landroid/graphics/Bitmap;Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable$1;->this$0:Lcom/htc/graphics/drawable/CacheUrlDrawable;

    iget-object v1, v1, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget-boolean v1, v1, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->roundify:Z

    if-eqz v1, :cond_1

    .line 89
    invoke-static {v0, v5}, Lcom/htc/graphics/drawable/CacheUrlDrawable;->roundifyBitmap(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 91
    :cond_1
    iget-object v1, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable$1;->this$0:Lcom/htc/graphics/drawable/CacheUrlDrawable;

    #setter for: Lcom/htc/graphics/drawable/CacheUrlDrawable;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1, v0}, Lcom/htc/graphics/drawable/CacheUrlDrawable;->access$202(Lcom/htc/graphics/drawable/CacheUrlDrawable;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 92
    iget-object v1, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable$1;->this$0:Lcom/htc/graphics/drawable/CacheUrlDrawable;

    iget-object v2, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable$1;->this$0:Lcom/htc/graphics/drawable/CacheUrlDrawable;

    invoke-virtual {v2}, Lcom/htc/graphics/drawable/CacheUrlDrawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable$1;->this$0:Lcom/htc/graphics/drawable/CacheUrlDrawable;

    invoke-virtual {v3}, Lcom/htc/graphics/drawable/CacheUrlDrawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v5, v5, v2, v3}, Lcom/htc/graphics/drawable/CacheUrlDrawable;->setBounds(IIII)V

    .line 94
    iget-object v1, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable$1;->this$0:Lcom/htc/graphics/drawable/CacheUrlDrawable;

    invoke-virtual {v1}, Lcom/htc/graphics/drawable/CacheUrlDrawable;->invalidateSelf()V

    .line 103
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_2
    :goto_0
    return-void

    .line 96
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :cond_3
    const-string v2, "UrlDrawable"

    const-string v3, "fetching complete: do nothing (%s), %s"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable$1;->this$0:Lcom/htc/graphics/drawable/CacheUrlDrawable;

    invoke-virtual {v1}, Lcom/htc/graphics/drawable/CacheUrlDrawable;->getScrollState()Lcom/htc/opensense/plugin/HtcScrollState;

    move-result-object v1

    if-nez v1, :cond_4

    const-string v1, "null"

    :goto_1
    aput-object v1, v4, v5

    iget-object v1, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable$1;->this$0:Lcom/htc/graphics/drawable/CacheUrlDrawable;

    iget-object v1, v1, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mUrl:Ljava/lang/String;

    aput-object v1, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable$1;->this$0:Lcom/htc/graphics/drawable/CacheUrlDrawable;

    invoke-virtual {v1}, Lcom/htc/graphics/drawable/CacheUrlDrawable;->getScrollState()Lcom/htc/opensense/plugin/HtcScrollState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/opensense/plugin/HtcScrollState;->getState()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1
.end method
