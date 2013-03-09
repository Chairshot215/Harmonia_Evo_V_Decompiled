.class Lcom/google/android/finsky/layout/FifeImageView$1;
.super Lcom/google/android/finsky/layout/ThumbnailListener;
.source "FifeImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/FifeImageView;->loadImageIfNecessary()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/FifeImageView;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/FifeImageView;Landroid/widget/ImageView;ZLandroid/view/View;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 188
    iput-object p1, p0, Lcom/google/android/finsky/layout/FifeImageView$1;->this$0:Lcom/google/android/finsky/layout/FifeImageView;

    invoke-direct {p0, p2, p3, p4}, Lcom/google/android/finsky/layout/ThumbnailListener;-><init>(Landroid/widget/ImageView;ZLandroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)V
    .locals 4
    .parameter "bitmapContainer"

    .prologue
    .line 191
    invoke-virtual {p1}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 192
    .local v1, response:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 193
    .local v0, isLoaded:Z
    :goto_0
    if-nez v0, :cond_0

    .line 195
    iget-object v2, p0, Lcom/google/android/finsky/layout/FifeImageView$1;->this$0:Lcom/google/android/finsky/layout/FifeImageView;

    iget v3, v2, Lcom/google/android/finsky/layout/FifeImageView;->mRequestCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/google/android/finsky/layout/FifeImageView;->mRequestCount:I

    .line 197
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/finsky/layout/ThumbnailListener;->onResponse(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)V

    .line 198
    iget-object v2, p0, Lcom/google/android/finsky/layout/FifeImageView$1;->this$0:Lcom/google/android/finsky/layout/FifeImageView;

    invoke-virtual {v2, v0}, Lcom/google/android/finsky/layout/FifeImageView;->setLoaded(Z)V

    .line 199
    iget-object v2, p0, Lcom/google/android/finsky/layout/FifeImageView$1;->this$0:Lcom/google/android/finsky/layout/FifeImageView;

    #calls: Lcom/google/android/finsky/layout/FifeImageView;->invokeOnLoaded()V
    invoke-static {v2}, Lcom/google/android/finsky/layout/FifeImageView;->access$000(Lcom/google/android/finsky/layout/FifeImageView;)V

    .line 200
    return-void

    .line 192
    .end local v0           #isLoaded:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 188
    check-cast p1, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/layout/FifeImageView$1;->onResponse(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)V

    return-void
.end method
