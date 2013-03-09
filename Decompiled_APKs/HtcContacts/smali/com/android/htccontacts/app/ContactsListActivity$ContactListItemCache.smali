.class public Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;
.super Lcom/android/htccontacts/widget/BaseContactListItemCache;
.source "ContactsListActivity.java"

# interfaces
.implements Lcom/android/htccontacts/indicator/IndicatorResultListener;
.implements Lcom/android/htccontacts/util/SparseLongArray$ArrayObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/app/ContactsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ContactListItemCache"
.end annotation


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public contactId:J

.field public indicatorRequest:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

.field private mRefActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/htccontacts/app/ContactsListActivity;",
            ">;"
        }
    .end annotation
.end field

.field public primaryBuffer:Landroid/database/CharArrayBuffer;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/app/ContactsListActivity;)V
    .locals 2
    .parameter "activity"

    .prologue
    const/4 v0, 0x0

    .line 1579
    invoke-direct {p0, v0, v0}, Lcom/android/htccontacts/widget/BaseContactListItemCache;-><init>(ZZ)V

    .line 1564
    new-instance v0, Landroid/database/CharArrayBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;->primaryBuffer:Landroid/database/CharArrayBuffer;

    .line 1580
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;->mRefActivity:Ljava/lang/ref/WeakReference;

    .line 1581
    return-void
.end method


# virtual methods
.method public notifyChanged(JLjava/lang/Object;)V
    .locals 11
    .parameter "id"
    .parameter "newItem"

    .prologue
    .line 1640
    iget-wide v0, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;->contactId:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    .line 1735
    :cond_0
    :goto_0
    return-void

    .line 1643
    :cond_1
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;->mRefActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/htccontacts/app/ContactsListActivity;

    .line 1644
    .local v5, activity:Lcom/android/htccontacts/app/ContactsListActivity;
    if-eqz v5, :cond_0

    .line 1647
    const/4 v0, 0x1

    invoke-virtual {v5}, Lcom/android/htccontacts/app/ContactsListActivity;->isFinishing()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1650
    instance-of v0, p3, Ljava/lang/Integer;

    if-eqz v0, :cond_4

    move-object v7, p3

    .line 1651
    check-cast v7, Ljava/lang/Integer;

    .line 1652
    .local v7, count:Ljava/lang/Integer;
    iget-object v0, p0, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItemQuickContactBadge:Lcom/htc/widget/HtcListItemQuickContactBadge;

    if-eqz v0, :cond_0

    .line 1655
    iget-object v0, p0, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItemQuickContactBadge:Lcom/htc/widget/HtcListItemQuickContactBadge;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListItemQuickContactBadge;->getBubbleCountText()Ljava/lang/String;

    move-result-object v6

    .line 1656
    .local v6, bubbleText:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1657
    .local v8, nCount:I
    if-eqz v7, :cond_2

    if-eqz v6, :cond_2

    const/16 v0, 0x63

    if-le v8, v0, :cond_3

    const-string v0, "99+"

    :goto_1
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1660
    :cond_2
    const-string v0, "ContactsListActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "notifyChanged(indicator count) - [Post UI change] contactId: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v9, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;->contactId:J

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, ", count: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    #calls: Lcom/android/htccontacts/app/ContactsListActivity;->getMainHandler()Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/htccontacts/app/ContactsListActivity;->access$300(Lcom/android/htccontacts/app/ContactsListActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache$1;

    invoke-direct {v1, p0, v8}, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache$1;-><init>(Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1657
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1669
    .end local v6           #bubbleText:Ljava/lang/String;
    .end local v7           #count:Ljava/lang/Integer;
    .end local v8           #nCount:I
    :cond_4
    instance-of v0, p3, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;

    if-eqz v0, :cond_0

    move-object v4, p3

    .line 1670
    check-cast v4, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;

    .line 1671
    .local v4, status:Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;
    move-wide v2, p1

    .line 1672
    .local v2, postContactId:J
    iget-object v0, v4, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusMessage:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, v4, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusMessage:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    invoke-virtual {v1}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->getSecondaryText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1676
    :cond_5
    const-string v0, "ContactsListActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "notifyChanged(status) - [Post UI change] contactId: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v9, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;->contactId:J

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, ", message: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v9, v4, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusMessage:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1677
    #calls: Lcom/android/htccontacts/app/ContactsListActivity;->getMainHandler()Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/htccontacts/app/ContactsListActivity;->access$300(Lcom/android/htccontacts/app/ContactsListActivity;)Landroid/os/Handler;

    move-result-object v9

    new-instance v0, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache$2;-><init>(Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;JLcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;Lcom/android/htccontacts/app/ContactsListActivity;)V

    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method

.method public onIndicatorResult(Lcom/android/htccontacts/indicator/IndicatorResult;)V
    .locals 5
    .parameter "result"

    .prologue
    .line 1584
    iget-object v4, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;->mRefActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/app/ContactsListActivity;

    .line 1585
    .local v0, activity:Lcom/android/htccontacts/app/ContactsListActivity;
    if-nez v0, :cond_1

    .line 1598
    :cond_0
    :goto_0
    return-void

    .line 1588
    :cond_1
    invoke-virtual {v0}, Lcom/android/htccontacts/app/ContactsListActivity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1592
    invoke-virtual {p1}, Lcom/android/htccontacts/indicator/IndicatorResult;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 1593
    .local v1, bundle:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 1594
    const-string v4, "contactId"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 1595
    .local v2, contactId:J
    invoke-virtual {p1}, Lcom/android/htccontacts/indicator/IndicatorResult;->getStatusInfo()Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;

    move-result-object v4

    #calls: Lcom/android/htccontacts/app/ContactsListActivity;->putStatusArray(JLcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;)V
    invoke-static {v0, v2, v3, v4}, Lcom/android/htccontacts/app/ContactsListActivity;->access$100(Lcom/android/htccontacts/app/ContactsListActivity;JLcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;)V

    .line 1596
    invoke-virtual {p1}, Lcom/android/htccontacts/indicator/IndicatorResult;->getTotalCount()I

    move-result v4

    #calls: Lcom/android/htccontacts/app/ContactsListActivity;->putIndicatorArray(JI)V
    invoke-static {v0, v2, v3, v4}, Lcom/android/htccontacts/app/ContactsListActivity;->access$200(Lcom/android/htccontacts/app/ContactsListActivity;JI)V

    goto :goto_0
.end method

.method public onPublishResult(Lcom/android/htccontacts/indicator/IndicatorResult;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1602
    return-void
.end method

.method public setIndicatorCount(I)V
    .locals 3
    .parameter "count"

    .prologue
    .line 1605
    if-lez p1, :cond_1

    .line 1606
    const/16 v0, 0x63

    if-le p1, v0, :cond_0

    .line 1607
    iget-object v0, p0, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItemQuickContactBadge:Lcom/htc/widget/HtcListItemQuickContactBadge;

    const-string v1, "99+"

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemQuickContactBadge;->setBubbleCount(Ljava/lang/String;)V

    .line 1616
    :goto_0
    return-void

    .line 1610
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItemQuickContactBadge:Lcom/htc/widget/HtcListItemQuickContactBadge;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemQuickContactBadge;->setBubbleCount(Ljava/lang/String;)V

    goto :goto_0

    .line 1614
    :cond_1
    iget-object v0, p0, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItemQuickContactBadge:Lcom/htc/widget/HtcListItemQuickContactBadge;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemQuickContactBadge;->setBubbleCount(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setPresenceStatus(Lcom/android/htccontacts/widget/ImPresence;)V
    .locals 2
    .parameter "status"

    .prologue
    .line 1626
    iget-object v0, p0, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mHtcListItemImageButton:Lcom/htc/widget/HtcListItemImageButton;

    if-nez v0, :cond_0

    .line 1636
    :goto_0
    return-void

    .line 1629
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/htccontacts/widget/ImPresence;->hasIm()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1630
    iget-object v0, p0, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mHtcListItemImageButton:Lcom/htc/widget/HtcListItemImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    .line 1631
    iget-object v0, p0, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mHtcListItemImageButton:Lcom/htc/widget/HtcListItemImageButton;

    invoke-virtual {p1}, Lcom/android/htccontacts/widget/ImPresence;->getPresence()I

    move-result v1

    invoke-static {v1}, Lcom/android/htccontacts/ContactPresenceIconUtil;->HtcGetPresenceIconRes(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    goto :goto_0

    .line 1634
    :cond_1
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;->setPresenceViewVisibility(I)V

    goto :goto_0
.end method

.method public setPresenceViewVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 1619
    iget-object v0, p0, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mHtcListItemImageButton:Lcom/htc/widget/HtcListItemImageButton;

    if-nez v0, :cond_0

    .line 1623
    :goto_0
    return-void

    .line 1622
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mHtcListItemImageButton:Lcom/htc/widget/HtcListItemImageButton;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    goto :goto_0
.end method
