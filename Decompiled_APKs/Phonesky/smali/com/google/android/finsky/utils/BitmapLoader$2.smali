.class Lcom/google/android/finsky/utils/BitmapLoader$2;
.super Ljava/lang/Object;
.source "BitmapLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/utils/BitmapLoader;->batchResponse(Ljava/lang/String;Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/utils/BitmapLoader;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/utils/BitmapLoader;)V
    .locals 0
    .parameter

    .prologue
    .line 497
    iput-object p1, p0, Lcom/google/android/finsky/utils/BitmapLoader$2;->this$0:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 500
    iget-object v4, p0, Lcom/google/android/finsky/utils/BitmapLoader$2;->this$0:Lcom/google/android/finsky/utils/BitmapLoader;

    #getter for: Lcom/google/android/finsky/utils/BitmapLoader;->mBatchedResponses:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/google/android/finsky/utils/BitmapLoader;->access$500(Lcom/google/android/finsky/utils/BitmapLoader;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;

    .line 501
    .local v3, wrapper:Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;
    #getter for: Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;->handlers:Ljava/util/List;
    invoke-static {v3}, Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;->access$600(Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    .line 502
    .local v0, container:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    #getter for: Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;->responseBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;->access$300(Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;)Landroid/graphics/Bitmap;

    move-result-object v4

    #setter for: Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v4}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->access$702(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 503
    #getter for: Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->mBitmapLoaded:Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;
    invoke-static {v0}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->access$800(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;->onResponse(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)V

    goto :goto_0

    .line 506
    .end local v0           #container:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #wrapper:Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;
    :cond_1
    iget-object v4, p0, Lcom/google/android/finsky/utils/BitmapLoader$2;->this$0:Lcom/google/android/finsky/utils/BitmapLoader;

    #getter for: Lcom/google/android/finsky/utils/BitmapLoader;->mBatchedResponses:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/google/android/finsky/utils/BitmapLoader;->access$500(Lcom/google/android/finsky/utils/BitmapLoader;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 507
    iget-object v4, p0, Lcom/google/android/finsky/utils/BitmapLoader$2;->this$0:Lcom/google/android/finsky/utils/BitmapLoader;

    const/4 v5, 0x0

    #setter for: Lcom/google/android/finsky/utils/BitmapLoader;->mRunnable:Ljava/lang/Runnable;
    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/BitmapLoader;->access$902(Lcom/google/android/finsky/utils/BitmapLoader;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 508
    return-void
.end method
