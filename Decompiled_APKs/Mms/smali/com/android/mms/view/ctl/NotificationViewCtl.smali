.class public Lcom/android/mms/view/ctl/NotificationViewCtl;
.super Lcom/android/mms/view/ctl/MessageViewCtl;
.source "NotificationViewCtl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/mms/view/ctl/MessageViewCtl;-><init>()V

    return-void
.end method

.method public static bind(Lcom/android/mms/view/MessageView;Lcom/android/mms/msg/AbstractMessage;)V
    .locals 5
    .parameter "msgView"
    .parameter "msg"

    .prologue
    .line 30
    invoke-static {p0, p1}, Lcom/android/mms/view/ctl/MessageViewCtl;->bind(Lcom/android/mms/view/MessageView;Lcom/android/mms/msg/AbstractMessage;)V

    move-object v1, p0

    .line 32
    check-cast v1, Lcom/android/mms/view/NotificationView;

    .local v1, nView:Lcom/android/mms/view/NotificationView;
    move-object v0, p1

    .line 34
    check-cast v0, Lcom/android/mms/msg/MultimediaMessage;

    .line 35
    .local v0, mmItem:Lcom/android/mms/msg/MultimediaMessage;
    invoke-virtual {v0}, Lcom/android/mms/msg/MultimediaMessage;->getSubject()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/android/mms/view/NotificationView;->setSubject(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->getMessageSize()I

    move-result v3

    invoke-interface {v1, v3}, Lcom/android/mms/view/NotificationView;->setMessageSize(I)V

    .line 38
    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->getTimestamp()J

    move-result-wide v3

    invoke-interface {v1, v3, v4}, Lcom/android/mms/view/NotificationView;->setTimeExpire(J)V

    .line 40
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->getURI()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/mms/util/DownloadManager;->getState(Landroid/net/Uri;)I

    move-result v2

    .line 41
    .local v2, state:I
    const/16 v3, 0x81

    if-ne v2, v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-interface {v1, v3}, Lcom/android/mms/view/NotificationView;->setDownloading(Z)V

    .line 42
    return-void

    .line 41
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
