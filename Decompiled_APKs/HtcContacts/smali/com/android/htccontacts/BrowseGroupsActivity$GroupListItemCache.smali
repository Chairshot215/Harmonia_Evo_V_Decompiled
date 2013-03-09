.class public final Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;
.super Ljava/lang/Object;
.source "BrowseGroupsActivity.java"

# interfaces
.implements Lcom/android/htccontacts/indicator/IndicatorResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/BrowseGroupsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "GroupListItemCache"
.end annotation


# instance fields
.field public GroupIsReadOnly:I

.field activityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/htccontacts/BrowseGroupsActivity;",
            ">;"
        }
    .end annotation
.end field

.field public bitmap:Landroid/graphics/Bitmap;

.field public groupName:Ljava/lang/String;

.field public indicatorRequest:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;

.field public mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

.field public mListItemImageButton:Lcom/htc/widget/HtcListItemImageButton;

.field public mListItemQuickContactBadge:Lcom/htc/widget/HtcListItemQuickContactBadge;

.field public memberCount:I


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/BrowseGroupsActivity;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 1430
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1431
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;->activityRef:Ljava/lang/ref/WeakReference;

    .line 1432
    return-void
.end method


# virtual methods
.method public onIndicatorResult(Lcom/android/htccontacts/indicator/IndicatorResult;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 1434
    iget-object v2, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/BrowseGroupsActivity;

    .line 1435
    .local v1, target:Lcom/android/htccontacts/BrowseGroupsActivity;
    if-eqz v1, :cond_0

    .line 1436
    new-instance v0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupIndicatorUpdateRunner;

    iget-object v2, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;->activityRef:Ljava/lang/ref/WeakReference;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v2, v3, p1}, Lcom/android/htccontacts/BrowseGroupsActivity$GroupIndicatorUpdateRunner;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Lcom/android/htccontacts/indicator/IndicatorResult;)V

    .line 1437
    .local v0, r:Ljava/lang/Runnable;
    #getter for: Lcom/android/htccontacts/BrowseGroupsActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/htccontacts/BrowseGroupsActivity;->access$1700(Lcom/android/htccontacts/BrowseGroupsActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1439
    .end local v0           #r:Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public onPublishResult(Lcom/android/htccontacts/indicator/IndicatorResult;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 1442
    const-string v2, "MEMBER_COUNT"

    invoke-virtual {p1, v2}, Lcom/android/htccontacts/indicator/IndicatorResult;->getPublishResult(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1443
    .local v0, count:I
    iget-object v2, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/BrowseGroupsActivity;

    .line 1444
    .local v1, target:Lcom/android/htccontacts/BrowseGroupsActivity;
    if-nez v1, :cond_0

    .line 1463
    :cond_0
    return-void
.end method

.method public setIndicatorCount(I)V
    .locals 3
    .parameter "count"

    .prologue
    .line 1466
    if-lez p1, :cond_1

    .line 1467
    const/16 v0, 0x63

    if-le p1, v0, :cond_0

    .line 1468
    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;->mListItemQuickContactBadge:Lcom/htc/widget/HtcListItemQuickContactBadge;

    const-string v1, "99+"

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemQuickContactBadge;->setBubbleCount(Ljava/lang/String;)V

    .line 1477
    :goto_0
    return-void

    .line 1471
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;->mListItemQuickContactBadge:Lcom/htc/widget/HtcListItemQuickContactBadge;

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

    .line 1475
    :cond_1
    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;->mListItemQuickContactBadge:Lcom/htc/widget/HtcListItemQuickContactBadge;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemQuickContactBadge;->setBubbleCount(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateTitleByCache()V
    .locals 8

    .prologue
    .line 1481
    iget-object v5, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/htccontacts/BrowseGroupsActivity;

    .line 1482
    .local v3, target:Lcom/android/htccontacts/BrowseGroupsActivity;
    if-nez v3, :cond_0

    .line 1499
    :goto_0
    return-void

    .line 1486
    :cond_0
    invoke-static {}, Lcom/android/htccontacts/BrowseGroupsActivity;->access$000()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "BrowseGroupsActivity"

    const-string v6, "updateTitleByCache"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1487
    :cond_1
    iget-object v5, v3, Lcom/android/htccontacts/BrowseGroupsActivity;->mMemberCountMap:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;->groupName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1488
    .local v4, value:Ljava/lang/Integer;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1489
    .local v1, count:I
    :goto_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1490
    .local v0, buffer:Ljava/lang/StringBuffer;
    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/htccontacts/BrowseGroupsActivity;->access$1800(Lcom/android/htccontacts/BrowseGroupsActivity;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;->groupName:Ljava/lang/String;

    iget v7, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;->GroupIsReadOnly:I

    invoke-static {v5, v6, v7}, Lcom/htc/util/contacts/ContactsUtility;->getDisplayGroupName(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 1491
    .local v2, name:Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1492
    if-ltz v1, :cond_2

    .line 1493
    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1494
    const-string v5, "("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1495
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1496
    const-string v5, ")"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1498
    :cond_2
    iget-object v5, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setPrimaryText(Ljava/lang/String;)V

    goto :goto_0

    .line 1488
    .end local v0           #buffer:Ljava/lang/StringBuffer;
    .end local v1           #count:I
    .end local v2           #name:Ljava/lang/String;
    :cond_3
    const/4 v1, -0x1

    goto :goto_1
.end method
