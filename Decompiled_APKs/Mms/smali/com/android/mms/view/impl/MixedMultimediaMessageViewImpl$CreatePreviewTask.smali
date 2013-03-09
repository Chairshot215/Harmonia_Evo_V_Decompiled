.class Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl$CreatePreviewTask;
.super Landroid/os/AsyncTask;
.source "MixedMultimediaMessageViewImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;
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

.field public mMessage:Lcom/android/mms/msg/MixedMultimediaMessage;

.field private final mModel:Lcom/android/mms/model/ImageModel;

.field private final mView:Landroid/widget/ImageView;

.field public mViewImpl:Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;


# direct methods
.method constructor <init>(Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;Lcom/android/mms/msg/MixedMultimediaMessage;Lcom/android/mms/model/ImageModel;Landroid/widget/ImageView;)V
    .locals 1
    .parameter "viewimpl"
    .parameter "message"
    .parameter "model"
    .parameter "view"

    .prologue
    .line 414
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 412
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl$CreatePreviewTask;->bm:Landroid/graphics/Bitmap;

    .line 415
    iput-object p1, p0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl$CreatePreviewTask;->mViewImpl:Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;

    .line 416
    iput-object p2, p0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl$CreatePreviewTask;->mMessage:Lcom/android/mms/msg/MixedMultimediaMessage;

    .line 417
    iput-object p3, p0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl$CreatePreviewTask;->mModel:Lcom/android/mms/model/ImageModel;

    .line 418
    iput-object p4, p0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl$CreatePreviewTask;->mView:Landroid/widget/ImageView;

    .line 419
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 407
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl$CreatePreviewTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .parameter "v"

    .prologue
    .line 423
    :goto_0
    invoke-static {}, Lcom/android/mms/ui/ComposeMessageActivity;->isScrolling()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl$CreatePreviewTask;->mModel:Lcom/android/mms/model/ImageModel;

    invoke-virtual {v0}, Lcom/android/mms/model/ImageModel;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl$CreatePreviewTask;->bm:Landroid/graphics/Bitmap;

    .line 427
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 407
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl$CreatePreviewTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 433
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl$CreatePreviewTask;->mViewImpl:Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;

    #getter for: Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->mMessage:Lcom/android/mms/msg/MixedMultimediaMessage;
    invoke-static {v1}, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->access$100(Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;)Lcom/android/mms/msg/MixedMultimediaMessage;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl$CreatePreviewTask;->mMessage:Lcom/android/mms/msg/MixedMultimediaMessage;

    if-ne v1, v2, :cond_0

    .line 434
    iget-object v1, p0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl$CreatePreviewTask;->mView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl$CreatePreviewTask;->bm:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 438
    :cond_0
    :goto_0
    return-void

    .line 435
    :catch_0
    move-exception v0

    .line 436
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
