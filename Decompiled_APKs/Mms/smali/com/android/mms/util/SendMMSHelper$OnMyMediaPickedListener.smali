.class Lcom/android/mms/util/SendMMSHelper$OnMyMediaPickedListener;
.super Ljava/lang/Object;
.source "MsgForwardReceiver.java"

# interfaces
.implements Lcom/android/mms/ui/MediaPicker$OnMediaPickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/SendMMSHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnMyMediaPickedListener"
.end annotation


# instance fields
.field m_ctx:Landroid/content/Context;

.field m_strText:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/mms/util/SendMMSHelper;


# direct methods
.method constructor <init>(Lcom/android/mms/util/SendMMSHelper;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "ctx"
    .parameter "strText"

    .prologue
    .line 825
    iput-object p1, p0, Lcom/android/mms/util/SendMMSHelper$OnMyMediaPickedListener;->this$0:Lcom/android/mms/util/SendMMSHelper;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 822
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/util/SendMMSHelper$OnMyMediaPickedListener;->m_ctx:Landroid/content/Context;

    .line 823
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/android/mms/util/SendMMSHelper$OnMyMediaPickedListener;->m_strText:Ljava/lang/String;

    .line 826
    iput-object p2, p0, Lcom/android/mms/util/SendMMSHelper$OnMyMediaPickedListener;->m_ctx:Landroid/content/Context;

    .line 827
    iput-object p3, p0, Lcom/android/mms/util/SendMMSHelper$OnMyMediaPickedListener;->m_strText:Ljava/lang/String;

    .line 828
    return-void
.end method


# virtual methods
.method public onMediaPicked(Lcom/android/mms/model/MediaModel;)V
    .locals 9
    .parameter "media"

    .prologue
    const/4 v8, 0x0

    .line 831
    if-nez p1, :cond_0

    .line 862
    :goto_0
    return-void

    .line 835
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportConvertToRelatedForSingleFile()Z

    move-result v6

    .line 836
    .local v6, bForceConvert:Z
    iget-object v0, p0, Lcom/android/mms/util/SendMMSHelper$OnMyMediaPickedListener;->m_strText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    if-eqz v6, :cond_2

    .line 838
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/util/SendMMSHelper$OnMyMediaPickedListener;->this$0:Lcom/android/mms/util/SendMMSHelper;

    #getter for: Lcom/android/mms/util/SendMMSHelper;->mMessageBodyEditor:Lcom/android/mms/ui/MessageBodyEditor;
    invoke-static {v0}, Lcom/android/mms/util/SendMMSHelper;->access$000(Lcom/android/mms/util/SendMMSHelper;)Lcom/android/mms/ui/MessageBodyEditor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageBodyEditor;->clear(Z)V

    .line 839
    iget-object v0, p0, Lcom/android/mms/util/SendMMSHelper$OnMyMediaPickedListener;->this$0:Lcom/android/mms/util/SendMMSHelper;

    #getter for: Lcom/android/mms/util/SendMMSHelper;->mMessageBodyEditor:Lcom/android/mms/ui/MessageBodyEditor;
    invoke-static {v0}, Lcom/android/mms/util/SendMMSHelper;->access$000(Lcom/android/mms/util/SendMMSHelper;)Lcom/android/mms/ui/MessageBodyEditor;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mms/util/SendMMSHelper$OnMyMediaPickedListener;->m_strText:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/mms/util/SendMMSHelper$OnMyMediaPickedListener;->this$0:Lcom/android/mms/util/SendMMSHelper;

    #getter for: Lcom/android/mms/util/SendMMSHelper;->mMessageUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/mms/util/SendMMSHelper;->access$100(Lcom/android/mms/util/SendMMSHelper;)Landroid/net/Uri;

    move-result-object v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/MessageBodyEditor;->converToRelated(Lcom/android/mms/model/MediaModel;Ljava/lang/String;ZZLandroid/net/Uri;)Landroid/net/Uri;
    :try_end_0
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 853
    iget-object v0, p0, Lcom/android/mms/util/SendMMSHelper$OnMyMediaPickedListener;->this$0:Lcom/android/mms/util/SendMMSHelper;

    #getter for: Lcom/android/mms/util/SendMMSHelper;->mMediaPicker:Lcom/android/mms/ui/MediaPicker;
    invoke-static {v0}, Lcom/android/mms/util/SendMMSHelper;->access$200(Lcom/android/mms/util/SendMMSHelper;)Lcom/android/mms/ui/MediaPicker;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MediaPicker;->setType(I)V

    .line 854
    iget-object v0, p0, Lcom/android/mms/util/SendMMSHelper$OnMyMediaPickedListener;->this$0:Lcom/android/mms/util/SendMMSHelper;

    #getter for: Lcom/android/mms/util/SendMMSHelper;->mMediaPicker:Lcom/android/mms/ui/MediaPicker;
    invoke-static {v0}, Lcom/android/mms/util/SendMMSHelper;->access$200(Lcom/android/mms/util/SendMMSHelper;)Lcom/android/mms/ui/MediaPicker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/util/SendMMSHelper$OnMyMediaPickedListener;->this$0:Lcom/android/mms/util/SendMMSHelper;

    #getter for: Lcom/android/mms/util/SendMMSHelper;->mMessageBodyEditor:Lcom/android/mms/ui/MessageBodyEditor;
    invoke-static {v1}, Lcom/android/mms/util/SendMMSHelper;->access$000(Lcom/android/mms/util/SendMMSHelper;)Lcom/android/mms/ui/MessageBodyEditor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageBodyEditor;->getSlideshowUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MediaPicker;->setMessage(Landroid/net/Uri;)V

    .line 855
    iget-object v0, p0, Lcom/android/mms/util/SendMMSHelper$OnMyMediaPickedListener;->this$0:Lcom/android/mms/util/SendMMSHelper;

    #getter for: Lcom/android/mms/util/SendMMSHelper;->mMediaPicker:Lcom/android/mms/ui/MediaPicker;
    invoke-static {v0}, Lcom/android/mms/util/SendMMSHelper;->access$200(Lcom/android/mms/util/SendMMSHelper;)Lcom/android/mms/ui/MediaPicker;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MediaPicker;->setFlage(Z)V

    .line 856
    iget-object v0, p0, Lcom/android/mms/util/SendMMSHelper$OnMyMediaPickedListener;->this$0:Lcom/android/mms/util/SendMMSHelper;

    #getter for: Lcom/android/mms/util/SendMMSHelper;->mMediaPicker:Lcom/android/mms/ui/MediaPicker;
    invoke-static {v0}, Lcom/android/mms/util/SendMMSHelper;->access$200(Lcom/android/mms/util/SendMMSHelper;)Lcom/android/mms/ui/MediaPicker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MediaPicker;->start()V

    goto :goto_0

    .line 840
    :catch_0
    move-exception v7

    .line 842
    .local v7, e:Lcom/android/mms/ExceedMessageSizeException;
    iget-object v0, p0, Lcom/android/mms/util/SendMMSHelper$OnMyMediaPickedListener;->m_ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/util/SendMMSHelper$OnMyMediaPickedListener;->m_ctx:Landroid/content/Context;

    const v2, 0x7f090051

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/util/SendMMSHelper$OnMyMediaPickedListener;->m_ctx:Landroid/content/Context;

    const v3, 0x7f090162

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 847
    .end local v7           #e:Lcom/android/mms/ExceedMessageSizeException;
    :catch_1
    move-exception v7

    .line 848
    .local v7, e:Lcom/google/android/mms/MmsException;
    iget-object v0, p0, Lcom/android/mms/util/SendMMSHelper$OnMyMediaPickedListener;->m_ctx:Landroid/content/Context;

    const v1, 0x7f090060

    invoke-static {v0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 858
    .end local v7           #e:Lcom/google/android/mms/MmsException;
    :cond_2
    iget-object v0, p0, Lcom/android/mms/util/SendMMSHelper$OnMyMediaPickedListener;->this$0:Lcom/android/mms/util/SendMMSHelper;

    #getter for: Lcom/android/mms/util/SendMMSHelper;->mMessageBodyEditor:Lcom/android/mms/ui/MessageBodyEditor;
    invoke-static {v0}, Lcom/android/mms/util/SendMMSHelper;->access$000(Lcom/android/mms/util/SendMMSHelper;)Lcom/android/mms/ui/MessageBodyEditor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageBodyEditor;->clearMedia()V

    .line 859
    iget-object v0, p0, Lcom/android/mms/util/SendMMSHelper$OnMyMediaPickedListener;->this$0:Lcom/android/mms/util/SendMMSHelper;

    #getter for: Lcom/android/mms/util/SendMMSHelper;->mMessageBodyEditor:Lcom/android/mms/ui/MessageBodyEditor;
    invoke-static {v0}, Lcom/android/mms/util/SendMMSHelper;->access$000(Lcom/android/mms/util/SendMMSHelper;)Lcom/android/mms/ui/MessageBodyEditor;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/android/mms/ui/MessageBodyEditor;->clear(Z)V

    .line 860
    iget-object v0, p0, Lcom/android/mms/util/SendMMSHelper$OnMyMediaPickedListener;->this$0:Lcom/android/mms/util/SendMMSHelper;

    #getter for: Lcom/android/mms/util/SendMMSHelper;->mMessageBodyEditor:Lcom/android/mms/ui/MessageBodyEditor;
    invoke-static {v0}, Lcom/android/mms/util/SendMMSHelper;->access$000(Lcom/android/mms/util/SendMMSHelper;)Lcom/android/mms/ui/MessageBodyEditor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MessageBodyEditor;->addMedia(Lcom/android/mms/model/MediaModel;)V

    goto/16 :goto_0
.end method

.method public onSlideshowPicked(Landroid/net/Uri;)V
    .locals 9
    .parameter "msg"

    .prologue
    .line 866
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/util/SendMMSHelper$OnMyMediaPickedListener;->this$0:Lcom/android/mms/util/SendMMSHelper;

    #getter for: Lcom/android/mms/util/SendMMSHelper;->mMessageBodyEditor:Lcom/android/mms/ui/MessageBodyEditor;
    invoke-static {v0}, Lcom/android/mms/util/SendMMSHelper;->access$000(Lcom/android/mms/util/SendMMSHelper;)Lcom/android/mms/ui/MessageBodyEditor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MessageBodyEditor;->setSlideshow(Landroid/net/Uri;)V

    .line 867
    iget-object v0, p0, Lcom/android/mms/util/SendMMSHelper$OnMyMediaPickedListener;->this$0:Lcom/android/mms/util/SendMMSHelper;

    #setter for: Lcom/android/mms/util/SendMMSHelper;->mMessageUri:Landroid/net/Uri;
    invoke-static {v0, p1}, Lcom/android/mms/util/SendMMSHelper;->access$102(Lcom/android/mms/util/SendMMSHelper;Landroid/net/Uri;)Landroid/net/Uri;

    .line 868
    invoke-static {}, Lcom/android/mms/util/SendMMSHelper;->access$300()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/mms/util/SendMMSHelper;->access$300()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    .line 869
    iget-object v0, p0, Lcom/android/mms/util/SendMMSHelper$OnMyMediaPickedListener;->this$0:Lcom/android/mms/util/SendMMSHelper;

    iget-object v1, p0, Lcom/android/mms/util/SendMMSHelper$OnMyMediaPickedListener;->m_ctx:Landroid/content/Context;

    #calls: Lcom/android/mms/util/SendMMSHelper;->updateTemporaryMmsMessage(Landroid/content/Context;)Z
    invoke-static {v0, v1}, Lcom/android/mms/util/SendMMSHelper;->access$400(Lcom/android/mms/util/SendMMSHelper;Landroid/content/Context;)Z

    .line 870
    iget-object v0, p0, Lcom/android/mms/util/SendMMSHelper$OnMyMediaPickedListener;->this$0:Lcom/android/mms/util/SendMMSHelper;

    iget-object v1, p0, Lcom/android/mms/util/SendMMSHelper$OnMyMediaPickedListener;->m_ctx:Landroid/content/Context;

    const-wide/16 v2, 0x0

    iget-object v4, p0, Lcom/android/mms/util/SendMMSHelper$OnMyMediaPickedListener;->this$0:Lcom/android/mms/util/SendMMSHelper;

    #getter for: Lcom/android/mms/util/SendMMSHelper;->mMessageUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/android/mms/util/SendMMSHelper;->access$100(Lcom/android/mms/util/SendMMSHelper;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/util/SendMMSHelper$OnMyMediaPickedListener;->this$0:Lcom/android/mms/util/SendMMSHelper;

    #getter for: Lcom/android/mms/util/SendMMSHelper;->m_strCSID:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/mms/util/SendMMSHelper;->access$500(Lcom/android/mms/util/SendMMSHelper;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/util/SendMMSHelper$OnMyMediaPickedListener;->this$0:Lcom/android/mms/util/SendMMSHelper;

    #getter for: Lcom/android/mms/util/SendMMSHelper;->m_nTimestamp:J
    invoke-static {v6}, Lcom/android/mms/util/SendMMSHelper;->access$600(Lcom/android/mms/util/SendMMSHelper;)J

    move-result-wide v6

    #calls: Lcom/android/mms/util/SendMMSHelper;->sendMessageAsync(Landroid/content/Context;JLandroid/net/Uri;Ljava/lang/String;J)V
    invoke-static/range {v0 .. v7}, Lcom/android/mms/util/SendMMSHelper;->access$700(Lcom/android/mms/util/SendMMSHelper;Landroid/content/Context;JLandroid/net/Uri;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 878
    :cond_0
    :goto_0
    return-void

    .line 873
    :catch_0
    move-exception v8

    .line 874
    .local v8, e:Ljava/lang/Exception;
    iget-object v0, p0, Lcom/android/mms/util/SendMMSHelper$OnMyMediaPickedListener;->m_ctx:Landroid/content/Context;

    const v1, 0x7f090060

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 876
    const-string v0, "MsgForwardReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSlideshowPicked exception e >"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
