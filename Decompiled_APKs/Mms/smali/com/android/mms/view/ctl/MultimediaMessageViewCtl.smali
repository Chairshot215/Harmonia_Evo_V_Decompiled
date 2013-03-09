.class public Lcom/android/mms/view/ctl/MultimediaMessageViewCtl;
.super Lcom/android/mms/view/ctl/MessageViewCtl;
.source "MultimediaMessageViewCtl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/mms/view/ctl/MessageViewCtl;-><init>()V

    return-void
.end method

.method public static bind(Lcom/android/mms/view/MessageView;Lcom/android/mms/msg/AbstractMessage;)V
    .locals 4
    .parameter "msgView"
    .parameter "msg"

    .prologue
    .line 32
    invoke-static {p0, p1}, Lcom/android/mms/view/ctl/MessageViewCtl;->bind(Lcom/android/mms/view/MessageView;Lcom/android/mms/msg/AbstractMessage;)V

    move-object v1, p0

    .line 34
    check-cast v1, Lcom/android/mms/view/MultimediaMessageView;

    .local v1, mmView:Lcom/android/mms/view/MultimediaMessageView;
    move-object v0, p1

    .line 35
    check-cast v0, Lcom/android/mms/msg/MultimediaMessage;

    .line 37
    .local v0, mmItem:Lcom/android/mms/msg/MultimediaMessage;
    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->getHighLightStr()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/mms/view/MultimediaMessageView;->setHighLightStr(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v0}, Lcom/android/mms/msg/MultimediaMessage;->getSubject()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/mms/view/MultimediaMessageView;->setSubject(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->getMessageId()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/android/mms/view/MultimediaMessageView;->setReportIndicator(J)V

    .line 42
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportThreadDetailBubbleStyle()Z

    move-result v2

    if-nez v2, :cond_0

    .line 44
    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->isIncoming()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 45
    check-cast p0, Lcom/android/mms/view/MultimediaMessageView;

    .end local p0
    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Lcom/android/mms/view/MultimediaMessageView;->setPhotoIcon(Ljava/lang/String;)V

    .line 55
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportNGMGroupMessage()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 56
    invoke-virtual {v0}, Lcom/android/mms/msg/MultimediaMessage;->getCc()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/android/mms/msg/MultimediaMessage;->getCc()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 57
    invoke-interface {v1}, Lcom/android/mms/view/MultimediaMessageView;->setNGMGroupConversation()V

    .line 61
    :cond_1
    return-void

    .line 49
    .restart local p0
    :cond_2
    check-cast p0, Lcom/android/mms/view/MultimediaMessageView;

    .end local p0
    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->getMePhoto()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-interface {p0, v2}, Lcom/android/mms/view/MultimediaMessageView;->setMePhotoIcon(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
