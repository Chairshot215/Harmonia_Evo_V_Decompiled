.class Lcom/htc/graphics/drawable/UrlDrawable$4;
.super Landroid/os/AsyncTask;
.source "UrlDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/graphics/drawable/UrlDrawable;->setStart(Landroid/content/Context;Ljava/lang/String;Lcom/htc/graphics/drawable/UrlDrawable$Options;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/graphics/Bitmap;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/graphics/drawable/UrlDrawable;


# direct methods
.method constructor <init>(Lcom/htc/graphics/drawable/UrlDrawable;)V
    .locals 0
    .parameter

    .prologue
    .line 790
    iput-object p1, p0, Lcom/htc/graphics/drawable/UrlDrawable$4;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "bitmaps"

    .prologue
    const/4 v4, 0x0

    .line 794
    aget-object v0, p1, v4

    .line 796
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$4;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    iget-object v1, v1, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v1, v1, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maskBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 797
    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$4;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    iget-object v1, v1, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v1, v1, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maskBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/htc/graphics/drawable/UrlDrawable;->getApplyMaskBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 800
    :cond_0
    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$4;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    iget-object v1, v1, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v1, v1, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable$4;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    iget-object v2, v2, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget v2, v2, Lcom/htc/graphics/drawable/UrlDrawable$Options;->minDim:I

    iget-object v3, p0, Lcom/htc/graphics/drawable/UrlDrawable$4;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    iget-object v3, v3, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget v3, v3, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maxDim:I

    #calls: Lcom/htc/graphics/drawable/UrlDrawable;->getScaledBitmap(Landroid/graphics/Bitmap;Lcom/htc/graphics/drawable/UrlDrawable$Dimension;II)Landroid/graphics/Bitmap;
    invoke-static {v0, v1, v2, v3}, Lcom/htc/graphics/drawable/UrlDrawable;->access$400(Landroid/graphics/Bitmap;Lcom/htc/graphics/drawable/UrlDrawable$Dimension;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 803
    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$4;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    iget-object v1, v1, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-boolean v1, v1, Lcom/htc/graphics/drawable/UrlDrawable$Options;->roundify:Z

    if-eqz v1, :cond_1

    .line 804
    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$4;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    iget-object v1, v1, Lcom/htc/graphics/drawable/UrlDrawable;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, v4}, Lcom/htc/graphics/drawable/UrlDrawable;->roundifyBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 807
    :cond_1
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 790
    check-cast p1, [Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/graphics/drawable/UrlDrawable$4;->doInBackground([Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 812
    invoke-static {p1}, Lcom/htc/graphics/drawable/UrlDrawable;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 813
    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable$4;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    iget-object v0, v0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iput-object p1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    .line 814
    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable$4;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    invoke-virtual {v0}, Lcom/htc/graphics/drawable/UrlDrawable;->invalidateSelf()V

    .line 816
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 790
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/graphics/drawable/UrlDrawable$4;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
