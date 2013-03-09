.class Lcom/htc/graphics/drawable/UrlDrawable$3;
.super Landroid/os/Handler;
.source "UrlDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/graphics/drawable/UrlDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/graphics/drawable/UrlDrawable;


# direct methods
.method constructor <init>(Lcom/htc/graphics/drawable/UrlDrawable;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 453
    iput-object p1, p0, Lcom/htc/graphics/drawable/UrlDrawable$3;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 457
    sget-boolean v1, Lcom/htc/graphics/drawable/UrlDrawable;->DEBUT_LOG_ENABLED:Z

    if-eqz v1, :cond_0

    .line 458
    const-string v1, "UrlDrawable"

    const-string v2, "[%d][%s] handleMessage received result from FutureTask[%d]: returned=%d, current=%d, mNeverDrawn=%b"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/htc/graphics/drawable/UrlDrawable$3;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/htc/graphics/drawable/UrlDrawable$3;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    iget-object v4, v4, Lcom/htc/graphics/drawable/UrlDrawable;->mUrl:Ljava/lang/String;

    aput-object v4, v3, v7

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    const/4 v4, 0x3

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget-object v5, p0, Lcom/htc/graphics/drawable/UrlDrawable$3;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    iget-object v5, v5, Lcom/htc/graphics/drawable/UrlDrawable;->mImageId:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    iget-object v5, p0, Lcom/htc/graphics/drawable/UrlDrawable$3;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    #getter for: Lcom/htc/graphics/drawable/UrlDrawable;->mNeverDrawn:Z
    invoke-static {v5}, Lcom/htc/graphics/drawable/UrlDrawable;->access$100(Lcom/htc/graphics/drawable/UrlDrawable;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :cond_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable$3;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    iget-object v2, v2, Lcom/htc/graphics/drawable/UrlDrawable;->mImageId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 467
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    .line 468
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$3;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    #getter for: Lcom/htc/graphics/drawable/UrlDrawable;->mNeverDrawn:Z
    invoke-static {v1}, Lcom/htc/graphics/drawable/UrlDrawable;->access$100(Lcom/htc/graphics/drawable/UrlDrawable;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/htc/graphics/drawable/UrlDrawable;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 471
    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$3;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    invoke-virtual {v1}, Lcom/htc/graphics/drawable/UrlDrawable;->getScrollState()Lcom/htc/opensense/plugin/HtcScrollState;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$3;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    invoke-virtual {v1}, Lcom/htc/graphics/drawable/UrlDrawable;->getScrollState()Lcom/htc/opensense/plugin/HtcScrollState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/opensense/plugin/HtcScrollState;->getState()I

    move-result v1

    if-nez v1, :cond_3

    .line 512
    :cond_1
    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$3;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    #setter for: Lcom/htc/graphics/drawable/UrlDrawable;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1, v0}, Lcom/htc/graphics/drawable/UrlDrawable;->access$202(Lcom/htc/graphics/drawable/UrlDrawable;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 513
    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$3;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable$3;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    invoke-virtual {v2}, Lcom/htc/graphics/drawable/UrlDrawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/htc/graphics/drawable/UrlDrawable$3;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    invoke-virtual {v3}, Lcom/htc/graphics/drawable/UrlDrawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v6, v6, v2, v3}, Lcom/htc/graphics/drawable/UrlDrawable;->setBounds(IIII)V

    .line 515
    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$3;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    invoke-virtual {v1}, Lcom/htc/graphics/drawable/UrlDrawable;->redrawImage()V

    .line 516
    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$3;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    invoke-virtual {v1}, Lcom/htc/graphics/drawable/UrlDrawable;->invalidateSelf()V

    .line 525
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_2
    :goto_0
    return-void

    .line 518
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :cond_3
    const-string v2, "UrlDrawable"

    const-string v3, "fetching complete: do nothing (%s), %s"

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$3;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    invoke-virtual {v1}, Lcom/htc/graphics/drawable/UrlDrawable;->getScrollState()Lcom/htc/opensense/plugin/HtcScrollState;

    move-result-object v1

    if-nez v1, :cond_4

    const-string v1, "null"

    :goto_1
    aput-object v1, v4, v6

    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$3;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    iget-object v1, v1, Lcom/htc/graphics/drawable/UrlDrawable;->mUrl:Ljava/lang/String;

    aput-object v1, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$3;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    invoke-virtual {v1}, Lcom/htc/graphics/drawable/UrlDrawable;->getScrollState()Lcom/htc/opensense/plugin/HtcScrollState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/opensense/plugin/HtcScrollState;->getState()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1
.end method
