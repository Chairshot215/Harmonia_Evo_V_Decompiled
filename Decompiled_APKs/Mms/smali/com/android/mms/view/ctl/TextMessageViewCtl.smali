.class public Lcom/android/mms/view/ctl/TextMessageViewCtl;
.super Lcom/android/mms/view/ctl/MessageViewCtl;
.source "TextMessageViewCtl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/mms/view/ctl/MessageViewCtl;-><init>()V

    return-void
.end method

.method public static bind(Lcom/android/mms/view/MessageView;Lcom/android/mms/msg/AbstractMessage;)V
    .locals 2
    .parameter "msgView"
    .parameter "msg"

    .prologue
    .line 31
    invoke-static {p0, p1}, Lcom/android/mms/view/ctl/MessageViewCtl;->bind(Lcom/android/mms/view/MessageView;Lcom/android/mms/msg/AbstractMessage;)V

    move-object v0, p0

    .line 33
    check-cast v0, Lcom/android/mms/view/TextMessageView;

    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->getHighLightStr()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/mms/view/TextMessageView;->setHighLightStr(Ljava/lang/String;)V

    move-object v0, p0

    .line 36
    check-cast v0, Lcom/android/mms/view/TextMessageView;

    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/mms/view/TextMessageView;->setText(Ljava/lang/String;)V

    .line 37
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportThreadDetailBubbleStyle()Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->isIncoming()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    check-cast p0, Lcom/android/mms/view/TextMessageView;

    .end local p0
    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/android/mms/view/TextMessageView;->setPhotoIcon(Ljava/lang/String;)V

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 44
    .restart local p0
    :cond_1
    check-cast p0, Lcom/android/mms/view/TextMessageView;

    .end local p0
    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->getMePhoto()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/android/mms/view/TextMessageView;->setMePhotoIcon(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
