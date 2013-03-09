.class public Lcom/android/mms/view/ctl/RelatedMultimediaMessageViewCtl;
.super Lcom/android/mms/view/ctl/MultimediaMessageViewCtl;
.source "RelatedMultimediaMessageViewCtl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/mms/view/ctl/MultimediaMessageViewCtl;-><init>()V

    return-void
.end method

.method public static bind(Lcom/android/mms/view/MessageView;Lcom/android/mms/msg/AbstractMessage;)V
    .locals 6
    .parameter "msgView"
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    .line 34
    invoke-static {p0, p1}, Lcom/android/mms/view/ctl/MultimediaMessageViewCtl;->bind(Lcom/android/mms/view/MessageView;Lcom/android/mms/msg/AbstractMessage;)V

    move-object v2, p0

    .line 36
    check-cast v2, Lcom/android/mms/view/RelatedMultimediaMessageView;

    .local v2, mmView:Lcom/android/mms/view/RelatedMultimediaMessageView;
    move-object v1, p1

    .line 37
    check-cast v1, Lcom/android/mms/msg/RelatedMultimediaMessage;

    .line 41
    .local v1, mmItem:Lcom/android/mms/msg/RelatedMultimediaMessage;
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportRelatedVcardAndVcal()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 42
    invoke-virtual {v1}, Lcom/android/mms/msg/RelatedMultimediaMessage;->hasVcard()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 44
    invoke-virtual {v1}, Lcom/android/mms/msg/RelatedMultimediaMessage;->getFirstText()Lcom/android/mms/model/TextModel;

    move-result-object v3

    .line 45
    .local v3, text:Lcom/android/mms/model/TextModel;
    if-eqz v3, :cond_1

    .line 47
    invoke-virtual {v3}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/android/mms/view/RelatedMultimediaMessageView;->setText(Ljava/lang/String;)V

    .line 53
    :goto_0
    invoke-virtual {v1}, Lcom/android/mms/msg/RelatedMultimediaMessage;->getVcard()Lcom/android/mms/model/VCardModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/model/VCardModel;->getSrc()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, filename:Ljava/lang/String;
    const v4, 0x7f0200f5

    invoke-interface {v2, v4}, Lcom/android/mms/view/RelatedMultimediaMessageView;->setPreviewImage(I)V

    .line 55
    invoke-virtual {v1}, Lcom/android/mms/msg/RelatedMultimediaMessage;->getMessageBody()Lcom/android/mms/model/Model;

    move-result-object v4

    check-cast v4, Lcom/android/mms/model/SlideshowModel;

    check-cast v4, Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v4

    invoke-interface {v2, v0, v4}, Lcom/android/mms/view/RelatedMultimediaMessageView;->setAttachInfoText(Ljava/lang/String;I)V

    .line 57
    invoke-static {}, Lcom/android/mms/util/VCardSaveIndicatorCache;->getInstance()Lcom/android/mms/util/VCardSaveIndicatorCache;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 58
    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->getMessageId()J

    move-result-wide v4

    invoke-interface {v2, v4, v5}, Lcom/android/mms/view/RelatedMultimediaMessageView;->setAttachInfoSavedText(J)V

    .line 114
    .end local v0           #filename:Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 50
    :cond_1
    invoke-interface {v2, v5}, Lcom/android/mms/view/RelatedMultimediaMessageView;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 64
    .end local v3           #text:Lcom/android/mms/model/TextModel;
    :cond_2
    invoke-virtual {v1}, Lcom/android/mms/msg/RelatedMultimediaMessage;->hasVCalendar()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 66
    invoke-virtual {v1}, Lcom/android/mms/msg/RelatedMultimediaMessage;->getFirstText()Lcom/android/mms/model/TextModel;

    move-result-object v3

    .line 67
    .restart local v3       #text:Lcom/android/mms/model/TextModel;
    if-eqz v3, :cond_3

    .line 69
    invoke-virtual {v3}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/android/mms/view/RelatedMultimediaMessageView;->setText(Ljava/lang/String;)V

    .line 75
    :goto_2
    const v4, 0x7f0200f4

    invoke-interface {v2, v4}, Lcom/android/mms/view/RelatedMultimediaMessageView;->setPreviewImage(I)V

    .line 76
    const v5, 0x7f090141

    invoke-virtual {v1}, Lcom/android/mms/msg/RelatedMultimediaMessage;->getMessageBody()Lcom/android/mms/model/Model;

    move-result-object v4

    check-cast v4, Lcom/android/mms/model/SlideshowModel;

    check-cast v4, Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v4

    invoke-interface {v2, v5, v4}, Lcom/android/mms/view/RelatedMultimediaMessageView;->setAttachInfoText(II)V

    .line 78
    invoke-static {}, Lcom/android/mms/util/VCardSaveIndicatorCache;->getInstance()Lcom/android/mms/util/VCardSaveIndicatorCache;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 79
    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->getMessageId()J

    move-result-wide v4

    invoke-interface {v2, v4, v5}, Lcom/android/mms/view/RelatedMultimediaMessageView;->setAttachInfoSavedText(J)V

    goto :goto_1

    .line 72
    :cond_3
    invoke-interface {v2, v5}, Lcom/android/mms/view/RelatedMultimediaMessageView;->setText(Ljava/lang/String;)V

    goto :goto_2

    .line 102
    .end local v3           #text:Lcom/android/mms/model/TextModel;
    :cond_4
    invoke-virtual {v1, v2}, Lcom/android/mms/msg/RelatedMultimediaMessage;->setPreveiwThumbnail(Lcom/android/mms/view/RelatedMultimediaMessageView;)V

    .line 105
    invoke-virtual {v1}, Lcom/android/mms/msg/RelatedMultimediaMessage;->findFirstText()Lcom/android/mms/model/TextModel;

    move-result-object v3

    .line 106
    .restart local v3       #text:Lcom/android/mms/model/TextModel;
    if-eqz v3, :cond_5

    .line 107
    invoke-virtual {v3}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/android/mms/view/RelatedMultimediaMessageView;->setText(Ljava/lang/String;)V

    .line 113
    :goto_3
    invoke-virtual {v1}, Lcom/android/mms/msg/RelatedMultimediaMessage;->getMessageBody()Lcom/android/mms/model/Model;

    move-result-object v4

    check-cast v4, Lcom/android/mms/model/SlideshowModel;

    check-cast v4, Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v4

    invoke-interface {v2, v4}, Lcom/android/mms/view/RelatedMultimediaMessageView;->setAttachInfoText(I)V

    goto :goto_1

    .line 110
    :cond_5
    invoke-interface {v2, v5}, Lcom/android/mms/view/RelatedMultimediaMessageView;->setText(Ljava/lang/String;)V

    goto :goto_3
.end method
