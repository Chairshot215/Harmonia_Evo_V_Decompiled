.class Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl$1;
.super Ljava/lang/Object;
.source "MixedMultimediaMessageViewImpl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->fireEvent(Lcom/android/mms/view/Event;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$media:Lcom/android/mms/model/MediaModel;


# direct methods
.method constructor <init>(Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;Landroid/content/Context;Lcom/android/mms/model/MediaModel;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 303
    iput-object p1, p0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl$1;->this$0:Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;

    iput-object p2, p0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl$1;->val$media:Lcom/android/mms/model/MediaModel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 305
    packed-switch p2, :pswitch_data_0

    .line 327
    :cond_0
    :goto_0
    return-void

    .line 309
    :pswitch_0
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->hasStorageCard()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportInternalStorage()Z

    move-result v0

    if-nez v0, :cond_1

    .line 311
    iget-object v0, p0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl$1;->val$context:Landroid/content/Context;

    const v1, 0x7f090160

    const v2, 0x7f0901e3

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->displayDialog(Landroid/content/Context;II)V

    .line 315
    :cond_1
    iget-object v0, p0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl$1;->val$media:Lcom/android/mms/model/MediaModel;

    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->getPduPart()Lcom/google/android/mms/pdu/PduPart;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 317
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl$1;->val$media:Lcom/android/mms/model/MediaModel;

    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->getPduPart()Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/MessageUtils;->copyPart(Landroid/content/Context;Lcom/google/android/mms/pdu/PduPart;ZZ)Z
    :try_end_0
    .catch Lcom/android/mms/StorageFullException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 323
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl$1;->this$0:Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;

    iget-object v1, p0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl$1;->val$media:Lcom/android/mms/model/MediaModel;

    #calls: Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->viewMedia(Lcom/android/mms/model/MediaModel;)V
    invoke-static {v0, v1}, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->access$000(Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;Lcom/android/mms/model/MediaModel;)V

    goto :goto_0

    .line 319
    :catch_0
    move-exception v0

    goto :goto_0

    .line 305
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
