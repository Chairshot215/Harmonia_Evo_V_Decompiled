.class Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl$CreatePreviewTask;
.super Landroid/os/AsyncTask;
.source "RelatedMultimediaMessageViewImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CreatePreviewTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private bm:Landroid/graphics/Bitmap;

.field public mMessage:Lcom/android/mms/msg/RelatedMultimediaMessage;

.field private final mModel:Lcom/android/mms/model/ImageModel;

.field private final mView:Landroid/widget/ImageView;

.field public mViewImpl:Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl;


# direct methods
.method constructor <init>(Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl;Lcom/android/mms/msg/RelatedMultimediaMessage;Lcom/android/mms/model/ImageModel;Landroid/widget/ImageView;)V
    .locals 1
    .parameter "viewimpl"
    .parameter "message"
    .parameter "model"
    .parameter "view"

    .prologue
    .line 208
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 206
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl$CreatePreviewTask;->bm:Landroid/graphics/Bitmap;

    .line 209
    iput-object p1, p0, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl$CreatePreviewTask;->mViewImpl:Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl;

    .line 210
    iput-object p2, p0, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl$CreatePreviewTask;->mMessage:Lcom/android/mms/msg/RelatedMultimediaMessage;

    .line 211
    iput-object p3, p0, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl$CreatePreviewTask;->mModel:Lcom/android/mms/model/ImageModel;

    .line 212
    iput-object p4, p0, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl$CreatePreviewTask;->mView:Landroid/widget/ImageView;

    .line 213
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 201
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl$CreatePreviewTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .parameter "v"

    .prologue
    .line 217
    :goto_0
    invoke-static {}, Lcom/android/mms/ui/ComposeMessageActivity;->isScrolling()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl$CreatePreviewTask;->mModel:Lcom/android/mms/model/ImageModel;

    invoke-virtual {v0}, Lcom/android/mms/model/ImageModel;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl$CreatePreviewTask;->bm:Landroid/graphics/Bitmap;

    .line 221
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 201
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl$CreatePreviewTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 227
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl$CreatePreviewTask;->mViewImpl:Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl;

    #getter for: Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl;->mMessage:Lcom/android/mms/msg/RelatedMultimediaMessage;
    invoke-static {v1}, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl;->access$000(Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl;)Lcom/android/mms/msg/RelatedMultimediaMessage;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl$CreatePreviewTask;->mMessage:Lcom/android/mms/msg/RelatedMultimediaMessage;

    if-ne v1, v2, :cond_0

    .line 228
    iget-object v1, p0, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl$CreatePreviewTask;->mView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl$CreatePreviewTask;->bm:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
