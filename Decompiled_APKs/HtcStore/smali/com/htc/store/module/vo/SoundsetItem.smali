.class public Lcom/htc/store/module/vo/SoundsetItem;
.super Lcom/htc/store/module/vo/ItemItem;
.source "SoundsetItem.java"


# instance fields
.field private mAlarmItem:Lcom/htc/store/module/vo/ItemItem;

.field private mCalendarItem:Lcom/htc/store/module/vo/ItemItem;

.field private mEmailItem:Lcom/htc/store/module/vo/ItemItem;

.field private mMessageItem:Lcom/htc/store/module/vo/ItemItem;

.field private mNotificationItem:Lcom/htc/store/module/vo/ItemItem;

.field private mRingtoneItem:Lcom/htc/store/module/vo/ItemItem;

.field private mTaskItem:Lcom/htc/store/module/vo/ItemItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/htc/store/module/vo/ItemItem;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/htc/store/module/vo/ItemItem;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/htc/store/module/vo/ItemItem;-><init>()V

    .line 21
    invoke-virtual {p1}, Lcom/htc/store/module/vo/ItemItem;->getOnlineActionTypeOnClick()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/store/module/vo/SoundsetItem;->setOnlineActionTypeOnClick(I)V

    .line 22
    invoke-virtual {p1}, Lcom/htc/store/module/vo/ItemItem;->getOnlineAuthor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/store/module/vo/SoundsetItem;->setOnlineAuthor(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p1}, Lcom/htc/store/module/vo/ItemItem;->getOnlineCommentCount()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/store/module/vo/SoundsetItem;->setOnlineCommentCount(J)V

    .line 24
    invoke-virtual {p1}, Lcom/htc/store/module/vo/ItemItem;->getOnlineContentURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/store/module/vo/SoundsetItem;->setOnlineContentURL(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p1}, Lcom/htc/store/module/vo/ItemItem;->getOnlineDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/store/module/vo/SoundsetItem;->setOnlineDescription(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p1}, Lcom/htc/store/module/vo/ItemItem;->getOnlineGenres()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/store/module/vo/SoundsetItem;->setOnlineGenres(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p1}, Lcom/htc/store/module/vo/ItemItem;->getOnlineViewType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/store/module/vo/SoundsetItem;->setOnlineViewType(I)V

    .line 28
    invoke-virtual {p1}, Lcom/htc/store/module/vo/ItemItem;->getOnlineDownloadCount()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/store/module/vo/SoundsetItem;->setOnlineDownloadCount(J)V

    .line 29
    invoke-virtual {p1}, Lcom/htc/store/module/vo/ItemItem;->getOnlineIconURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/store/module/vo/SoundsetItem;->setOnlineIconURL(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1}, Lcom/htc/store/module/vo/ItemItem;->getOnlineId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/store/module/vo/SoundsetItem;->setOnlineId(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1}, Lcom/htc/store/module/vo/ItemItem;->getOnlineLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/store/module/vo/SoundsetItem;->setOnlineLabel(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1}, Lcom/htc/store/module/vo/ItemItem;->getOnlineLikeCount()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/store/module/vo/SoundsetItem;->setOnlineLikeCount(J)V

    .line 33
    invoke-virtual {p1}, Lcom/htc/store/module/vo/ItemItem;->getOnlineOrder()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/store/module/vo/SoundsetItem;->setOnlineOrder(I)V

    .line 34
    invoke-virtual {p1}, Lcom/htc/store/module/vo/ItemItem;->getOnlinePackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/store/module/vo/SoundsetItem;->setOnlinePackageName(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p1}, Lcom/htc/store/module/vo/ItemItem;->getOnlinePreviewLandscapeURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/store/module/vo/SoundsetItem;->setOnlinePreviewLandscapeURL(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p1}, Lcom/htc/store/module/vo/ItemItem;->getOnlinePreviewPortraitURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/store/module/vo/SoundsetItem;->setOnlinePreviewPortraitURL(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p1}, Lcom/htc/store/module/vo/ItemItem;->getOnlinePrice()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/store/module/vo/SoundsetItem;->setOnlinePrice(F)V

    .line 38
    invoke-virtual {p1}, Lcom/htc/store/module/vo/ItemItem;->getOnlineReserved()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/store/module/vo/SoundsetItem;->setOnlineReserved(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p1}, Lcom/htc/store/module/vo/ItemItem;->getOnlineSize()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/store/module/vo/SoundsetItem;->setOnlineSize(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p1}, Lcom/htc/store/module/vo/ItemItem;->getOnlineSnapshotPortraitURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/store/module/vo/SoundsetItem;->setOnlineSnapshotPortraitURLs(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p1}, Lcom/htc/store/module/vo/ItemItem;->getOnlineSource()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/store/module/vo/SoundsetItem;->setOnlineSource(I)V

    .line 42
    invoke-virtual {p1}, Lcom/htc/store/module/vo/ItemItem;->getOnlineTimeStampPublished()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/store/module/vo/SoundsetItem;->setOnlineTimeStampPublished(J)V

    .line 43
    invoke-virtual {p1}, Lcom/htc/store/module/vo/ItemItem;->getOnlineTriggerOnClick()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/store/module/vo/SoundsetItem;->setOnlineTrialContentURL(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p1}, Lcom/htc/store/module/vo/ItemItem;->getOnlineTrialContentURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/store/module/vo/SoundsetItem;->setOnlineTriggerOnClick(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p1}, Lcom/htc/store/module/vo/ItemItem;->getOnlineUserComment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/store/module/vo/SoundsetItem;->setOnlineUserComment(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p1}, Lcom/htc/store/module/vo/ItemItem;->getOnlineUserFriendsCommentCount()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/store/module/vo/SoundsetItem;->setOnlineUserFriendsCommentCount(J)V

    .line 47
    invoke-virtual {p1}, Lcom/htc/store/module/vo/ItemItem;->getOnlineUserFriendsLikeCount()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/store/module/vo/SoundsetItem;->setOnlineUserFriendsLikeCount(J)V

    .line 48
    invoke-virtual {p1}, Lcom/htc/store/module/vo/ItemItem;->getOnlineUserLike()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/store/module/vo/SoundsetItem;->setOnlineUserLike(I)V

    .line 49
    invoke-virtual {p1}, Lcom/htc/store/module/vo/ItemItem;->getOnlineUserPurchaseId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/store/module/vo/SoundsetItem;->setOnlineUserPurchaseId(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1}, Lcom/htc/store/module/vo/ItemItem;->getOnlineV1Id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/store/module/vo/SoundsetItem;->setOnlineV1Id(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p1}, Lcom/htc/store/module/vo/ItemItem;->getOnlineSkuId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/store/module/vo/SoundsetItem;->setOnlineSkuId(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1}, Lcom/htc/store/module/vo/ItemItem;->getOnlineVersionName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/store/module/vo/SoundsetItem;->setOnlineVersionName(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p1}, Lcom/htc/store/module/vo/ItemItem;->getOnlineVersionCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/store/module/vo/SoundsetItem;->setOnlineVersionCode(I)V

    .line 54
    invoke-virtual {p1}, Lcom/htc/store/module/vo/ItemItem;->getStatus()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/store/module/vo/SoundsetItem;->setStatus(I)V

    .line 55
    invoke-virtual {p1}, Lcom/htc/store/module/vo/ItemItem;->getContentType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/store/module/vo/SoundsetItem;->setContentType(I)V

    .line 56
    return-void
.end method


# virtual methods
.method public getAlarmItem()Lcom/htc/store/module/vo/ItemItem;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/store/module/vo/SoundsetItem;->mAlarmItem:Lcom/htc/store/module/vo/ItemItem;

    return-object v0
.end method

.method public getCalendarItem()Lcom/htc/store/module/vo/ItemItem;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/store/module/vo/SoundsetItem;->mCalendarItem:Lcom/htc/store/module/vo/ItemItem;

    return-object v0
.end method

.method public getEmailItem()Lcom/htc/store/module/vo/ItemItem;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/htc/store/module/vo/SoundsetItem;->mEmailItem:Lcom/htc/store/module/vo/ItemItem;

    return-object v0
.end method

.method public getMessageItem()Lcom/htc/store/module/vo/ItemItem;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/htc/store/module/vo/SoundsetItem;->mMessageItem:Lcom/htc/store/module/vo/ItemItem;

    return-object v0
.end method

.method public getNotificationItem()Lcom/htc/store/module/vo/ItemItem;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/store/module/vo/SoundsetItem;->mNotificationItem:Lcom/htc/store/module/vo/ItemItem;

    return-object v0
.end method

.method public getRingtoneItem()Lcom/htc/store/module/vo/ItemItem;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/store/module/vo/SoundsetItem;->mRingtoneItem:Lcom/htc/store/module/vo/ItemItem;

    return-object v0
.end method

.method public getTaskItem()Lcom/htc/store/module/vo/ItemItem;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/htc/store/module/vo/SoundsetItem;->mTaskItem:Lcom/htc/store/module/vo/ItemItem;

    return-object v0
.end method

.method public setAlarmItem(Lcom/htc/store/module/vo/ItemItem;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/htc/store/module/vo/SoundsetItem;->mAlarmItem:Lcom/htc/store/module/vo/ItemItem;

    .line 72
    return-void
.end method

.method public setCalendarItem(Lcom/htc/store/module/vo/ItemItem;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/htc/store/module/vo/SoundsetItem;->mCalendarItem:Lcom/htc/store/module/vo/ItemItem;

    .line 104
    return-void
.end method

.method public setEmailItem(Lcom/htc/store/module/vo/ItemItem;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/htc/store/module/vo/SoundsetItem;->mEmailItem:Lcom/htc/store/module/vo/ItemItem;

    .line 96
    return-void
.end method

.method public setMessageItem(Lcom/htc/store/module/vo/ItemItem;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/htc/store/module/vo/SoundsetItem;->mMessageItem:Lcom/htc/store/module/vo/ItemItem;

    .line 88
    return-void
.end method

.method public setNotificationItem(Lcom/htc/store/module/vo/ItemItem;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/htc/store/module/vo/SoundsetItem;->mNotificationItem:Lcom/htc/store/module/vo/ItemItem;

    .line 80
    return-void
.end method

.method public setRingtoneItem(Lcom/htc/store/module/vo/ItemItem;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/htc/store/module/vo/SoundsetItem;->mRingtoneItem:Lcom/htc/store/module/vo/ItemItem;

    .line 64
    return-void
.end method

.method public setTaskItem(Lcom/htc/store/module/vo/ItemItem;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/htc/store/module/vo/SoundsetItem;->mTaskItem:Lcom/htc/store/module/vo/ItemItem;

    .line 112
    return-void
.end method
