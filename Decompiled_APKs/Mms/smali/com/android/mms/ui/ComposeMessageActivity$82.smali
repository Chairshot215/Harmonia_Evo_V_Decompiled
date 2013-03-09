.class Lcom/android/mms/ui/ComposeMessageActivity$82;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Lcom/android/mms/ui/MediaPicker$OnMediaPickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->initMediaAttachment(Lcom/google/android/mms/pdu/MultimediaMessagePdu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 14492
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$82;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaPicked(Lcom/android/mms/model/MediaModel;)V
    .locals 11
    .parameter "media"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 14494
    if-eqz p1, :cond_0

    .line 14495
    const-string v0, "ComposeMessageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMediaPicked:media: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14498
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$82;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgTextEditor:Lcom/android/mms/ui/MessageTextEditor;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageTextEditor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageTextEditor;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 14500
    .local v2, mText:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportConvertToRelatedForSingleFile()Z

    move-result v6

    .line 14501
    .local v6, bForceConvert:Z
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_2

    :cond_1
    if-eqz v6, :cond_6

    :cond_2
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->isVCard()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->isVCalendar()Z

    move-result v0

    if-nez v0, :cond_6

    .line 14504
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$82;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMessageBodyEditor:Lcom/android/mms/ui/MessageBodyEditor;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1300(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageBodyEditor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageBodyEditor;->clear(Z)V

    .line 14505
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$82;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMessageBodyEditor:Lcom/android/mms/ui/MessageBodyEditor;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1300(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageBodyEditor;

    move-result-object v0

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$82;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mIsFromDraft:Z
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1400(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$82;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mIsEditOriginal:Z
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1500(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_3
    move v4, v10

    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$82;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMessageUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1100(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/net/Uri;

    move-result-object v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/MessageBodyEditor;->converToRelated(Lcom/android/mms/model/MediaModel;Ljava/lang/String;ZZLandroid/net/Uri;)Landroid/net/Uri;
    :try_end_0
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 14524
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$82;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgTextEditor:Lcom/android/mms/ui/MessageTextEditor;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageTextEditor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageTextEditor;->clearText()V

    .line 14528
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSignature()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 14529
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$82;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->getPrefSignature(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 14530
    .local v8, tstr:Ljava/lang/String;
    if-eqz v8, :cond_4

    .line 14531
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$82;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgTextEditor:Lcom/android/mms/ui/MessageTextEditor;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageTextEditor;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/android/mms/ui/MessageTextEditor;->setText(Ljava/lang/CharSequence;)V

    .line 14532
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$82;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMessageBodyEditor:Lcom/android/mms/ui/MessageBodyEditor;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1300(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageBodyEditor;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 14534
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$82;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMessageBodyEditor:Lcom/android/mms/ui/MessageBodyEditor;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1300(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageBodyEditor;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/android/mms/ui/MessageBodyEditor;->setText(Ljava/lang/String;)V

    .line 14541
    .end local v8           #tstr:Ljava/lang/String;
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$82;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMediaPicker:Lcom/android/mms/ui/MediaPicker;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1000(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MediaPicker;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MediaPicker;->setType(I)V

    .line 14542
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$82;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMediaPicker:Lcom/android/mms/ui/MediaPicker;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1000(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MediaPicker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$82;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMessageBodyEditor:Lcom/android/mms/ui/MessageBodyEditor;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1300(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageBodyEditor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageBodyEditor;->getSlideshowUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MediaPicker;->setMessage(Landroid/net/Uri;)V

    .line 14543
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$82;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMediaPicker:Lcom/android/mms/ui/MediaPicker;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1000(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MediaPicker;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/android/mms/ui/MediaPicker;->setFlage(Z)V

    .line 14544
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$82;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMediaPicker:Lcom/android/mms/ui/MediaPicker;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1000(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MediaPicker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MediaPicker;->start()V

    .line 14556
    :goto_1
    return-void

    :cond_5
    move v4, v9

    .line 14505
    goto :goto_0

    .line 14507
    :catch_0
    move-exception v7

    .line 14509
    .local v7, e:Lcom/android/mms/ExceedMessageSizeException;
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$82;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$82;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const v3, 0x7f090051

    invoke-virtual {v1, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$82;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const v4, 0x7f090162

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 14516
    .end local v7           #e:Lcom/android/mms/ExceedMessageSizeException;
    :catch_1
    move-exception v7

    .line 14517
    .local v7, e:Lcom/google/android/mms/MmsException;
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$82;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mAppContext:Landroid/content/Context;

    const v1, 0x7f090060

    invoke-static {v0, v1, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 14549
    .end local v7           #e:Lcom/google/android/mms/MmsException;
    :cond_6
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$82;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMessageBodyEditor:Lcom/android/mms/ui/MessageBodyEditor;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1300(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageBodyEditor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageBodyEditor;->clearMedia()V

    .line 14552
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$82;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMessageBodyEditor:Lcom/android/mms/ui/MessageBodyEditor;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1300(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageBodyEditor;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/android/mms/ui/MessageBodyEditor;->clear(Z)V

    .line 14554
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$82;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMessageBodyEditor:Lcom/android/mms/ui/MessageBodyEditor;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1300(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageBodyEditor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MessageBodyEditor;->addMedia(Lcom/android/mms/model/MediaModel;)V

    goto :goto_1
.end method

.method public onSlideshowPicked(Landroid/net/Uri;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 14560
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$82;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMessageBodyEditor:Lcom/android/mms/ui/MessageBodyEditor;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1300(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageBodyEditor;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/mms/ui/MessageBodyEditor;->setSlideshow(Landroid/net/Uri;)V

    .line 14561
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$82;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMessageUri:Landroid/net/Uri;
    invoke-static {v2, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1102(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;)Landroid/net/Uri;

    .line 14564
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$82;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgTextEditor:Lcom/android/mms/ui/MessageTextEditor;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageTextEditor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageTextEditor;->clearText()V

    .line 14570
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSignature()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 14571
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$82;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->getPrefSignature(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 14572
    .local v1, tstr:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 14573
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$82;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgTextEditor:Lcom/android/mms/ui/MessageTextEditor;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageTextEditor;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/mms/ui/MessageTextEditor;->setText(Ljava/lang/CharSequence;)V

    .line 14574
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$82;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMessageBodyEditor:Lcom/android/mms/ui/MessageBodyEditor;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1300(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageBodyEditor;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 14575
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$82;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgTextEditor:Lcom/android/mms/ui/MessageTextEditor;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageTextEditor;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/mms/ui/MessageTextEditor;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14585
    .end local v1           #tstr:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 14581
    :catch_0
    move-exception v0

    .line 14582
    .local v0, e:Lcom/google/android/mms/MmsException;
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$82;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageActivity;->mAppContext:Landroid/content/Context;

    const v3, 0x7f090060

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
