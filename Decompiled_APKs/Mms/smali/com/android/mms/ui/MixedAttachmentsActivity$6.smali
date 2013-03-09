.class Lcom/android/mms/ui/MixedAttachmentsActivity$6;
.super Ljava/lang/Object;
.source "MixedAttachmentsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MixedAttachmentsActivity;->createMenu(Lcom/google/android/mms/pdu/PduPart;Lcom/android/mms/model/MediaModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MixedAttachmentsActivity;

.field final synthetic val$body:Lcom/google/android/mms/pdu/PduPart;

.field final synthetic val$media:Lcom/android/mms/model/MediaModel;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MixedAttachmentsActivity;Lcom/android/mms/model/MediaModel;Lcom/google/android/mms/pdu/PduPart;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 426
    iput-object p1, p0, Lcom/android/mms/ui/MixedAttachmentsActivity$6;->this$0:Lcom/android/mms/ui/MixedAttachmentsActivity;

    iput-object p2, p0, Lcom/android/mms/ui/MixedAttachmentsActivity$6;->val$media:Lcom/android/mms/model/MediaModel;

    iput-object p3, p0, Lcom/android/mms/ui/MixedAttachmentsActivity$6;->val$body:Lcom/google/android/mms/pdu/PduPart;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v8, 0x1

    .line 429
    invoke-static {}, Lcom/android/mms/ui/MixedAttachmentsActivity;->access$300()I

    move-result v5

    if-ne p2, v5, :cond_7

    .line 430
    iget-object v5, p0, Lcom/android/mms/ui/MixedAttachmentsActivity$6;->val$media:Lcom/android/mms/model/MediaModel;

    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->isUnsupportedMedia()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 431
    iget-object v5, p0, Lcom/android/mms/ui/MixedAttachmentsActivity$6;->this$0:Lcom/android/mms/ui/MixedAttachmentsActivity;

    invoke-virtual {v5}, Lcom/android/mms/ui/MixedAttachmentsActivity;->finish()V

    .line 500
    :cond_0
    :goto_0
    return-void

    .line 434
    :cond_1
    iget-object v5, p0, Lcom/android/mms/ui/MixedAttachmentsActivity$6;->val$media:Lcom/android/mms/model/MediaModel;

    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v4

    .line 435
    .local v4, mediaUri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 436
    .local v1, intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/mms/ui/MixedAttachmentsActivity$6;->val$media:Lcom/android/mms/model/MediaModel;

    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 437
    iget-object v5, p0, Lcom/android/mms/ui/MixedAttachmentsActivity$6;->val$media:Lcom/android/mms/model/MediaModel;

    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->getDrmObject()Lcom/android/mms/drm/DrmWrapper;

    move-result-object v3

    .line 438
    .local v3, mDrmObject:Lcom/android/mms/drm/DrmWrapper;
    invoke-virtual {v3}, Lcom/android/mms/drm/DrmWrapper;->getContentType()Ljava/lang/String;

    move-result-object v2

    .line 440
    .local v2, mDrmContentType:Ljava/lang/String;
    const-string v5, "MixedAttachmentsActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mDrmContentType:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iget-object v5, p0, Lcom/android/mms/ui/MixedAttachmentsActivity$6;->val$media:Lcom/android/mms/model/MediaModel;

    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->isImage()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 444
    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 446
    const-string v5, "viewSingleImage"

    invoke-virtual {v1, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 478
    .end local v2           #mDrmContentType:Ljava/lang/String;
    .end local v3           #mDrmObject:Lcom/android/mms/drm/DrmWrapper;
    :cond_2
    :goto_1
    :try_start_0
    iget-object v5, p0, Lcom/android/mms/ui/MixedAttachmentsActivity$6;->this$0:Lcom/android/mms/ui/MixedAttachmentsActivity;

    invoke-virtual {v5, v1}, Lcom/android/mms/ui/MixedAttachmentsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    :goto_2
    iget-object v5, p0, Lcom/android/mms/ui/MixedAttachmentsActivity$6;->this$0:Lcom/android/mms/ui/MixedAttachmentsActivity;

    invoke-virtual {v5}, Lcom/android/mms/ui/MixedAttachmentsActivity;->finish()V

    goto :goto_0

    .line 447
    .restart local v2       #mDrmContentType:Ljava/lang/String;
    .restart local v3       #mDrmObject:Lcom/android/mms/drm/DrmWrapper;
    :cond_3
    iget-object v5, p0, Lcom/android/mms/ui/MixedAttachmentsActivity$6;->val$media:Lcom/android/mms/model/MediaModel;

    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->isVideo()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 448
    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 452
    const-string v5, "landscape"

    invoke-virtual {v1, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    .line 455
    :cond_4
    iget-object v5, p0, Lcom/android/mms/ui/MixedAttachmentsActivity$6;->val$media:Lcom/android/mms/model/MediaModel;

    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->isAudio()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 456
    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 464
    .end local v2           #mDrmContentType:Ljava/lang/String;
    .end local v3           #mDrmObject:Lcom/android/mms/drm/DrmWrapper;
    :cond_5
    iget-object v5, p0, Lcom/android/mms/ui/MixedAttachmentsActivity$6;->val$media:Lcom/android/mms/model/MediaModel;

    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 466
    iget-object v5, p0, Lcom/android/mms/ui/MixedAttachmentsActivity$6;->val$media:Lcom/android/mms/model/MediaModel;

    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->isImage()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 467
    const-string v5, "viewSingleImage"

    invoke-virtual {v1, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    .line 470
    :cond_6
    iget-object v5, p0, Lcom/android/mms/ui/MixedAttachmentsActivity$6;->val$media:Lcom/android/mms/model/MediaModel;

    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->isVideo()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 471
    const-string v5, "landscape"

    invoke-virtual {v1, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    .line 479
    :catch_0
    move-exception v0

    .line 480
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    const-string v5, "MixedAttachmentsActivity"

    const-string v6, "catch exception: View Mixed attachment..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget-object v5, p0, Lcom/android/mms/ui/MixedAttachmentsActivity$6;->this$0:Lcom/android/mms/ui/MixedAttachmentsActivity;

    const v6, 0x7f090148

    const v7, 0x7f090112

    invoke-virtual {v5, v6, v7}, Lcom/android/mms/ui/MixedAttachmentsActivity;->displayDialog(II)V

    goto :goto_2

    .line 486
    .end local v0           #ex:Landroid/content/ActivityNotFoundException;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v4           #mediaUri:Landroid/net/Uri;
    :cond_7
    invoke-static {}, Lcom/android/mms/ui/MixedAttachmentsActivity;->access$400()I

    move-result v5

    if-ne p2, v5, :cond_0

    .line 488
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->hasStorageCard()Z

    move-result v5

    if-nez v5, :cond_8

    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportInternalStorage()Z

    move-result v5

    if-nez v5, :cond_8

    .line 490
    iget-object v5, p0, Lcom/android/mms/ui/MixedAttachmentsActivity$6;->this$0:Lcom/android/mms/ui/MixedAttachmentsActivity;

    const v6, 0x7f090160

    const v7, 0x7f0901e3

    invoke-virtual {v5, v6, v7}, Lcom/android/mms/ui/MixedAttachmentsActivity;->displayDialog(II)V

    goto/16 :goto_0

    .line 494
    :cond_8
    :try_start_1
    iget-object v5, p0, Lcom/android/mms/ui/MixedAttachmentsActivity$6;->this$0:Lcom/android/mms/ui/MixedAttachmentsActivity;

    iget-object v6, p0, Lcom/android/mms/ui/MixedAttachmentsActivity$6;->val$body:Lcom/google/android/mms/pdu/PduPart;

    iget-object v7, p0, Lcom/android/mms/ui/MixedAttachmentsActivity$6;->val$media:Lcom/android/mms/model/MediaModel;

    invoke-virtual {v7}, Lcom/android/mms/model/MediaModel;->isText()Z

    move-result v7

    #calls: Lcom/android/mms/ui/MixedAttachmentsActivity;->copyPart(Lcom/google/android/mms/pdu/PduPart;Z)V
    invoke-static {v5, v6, v7}, Lcom/android/mms/ui/MixedAttachmentsActivity;->access$500(Lcom/android/mms/ui/MixedAttachmentsActivity;Lcom/google/android/mms/pdu/PduPart;Z)V
    :try_end_1
    .catch Lcom/android/mms/StorageFullException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 495
    :catch_1
    move-exception v5

    goto/16 :goto_0
.end method
