.class public Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "BrowseGroupsActivity.java"

# interfaces
.implements Lcom/htc/widget/InsertNewListAdapterInterface;
.implements Lcom/htc/widget/HtcAbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/BrowseGroupsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "GroupListItemAdapter"
.end annotation


# instance fields
.field private itemCount:I

.field private mCharBuffer1:Landroid/database/CharArrayBuffer;

.field private mCharBuffer2:Landroid/database/CharArrayBuffer;

.field protected mDoAddIndicatorRequest:Z

.field mGroupIDIdx:I

.field mGroupIsReadOnlyIndex:I

.field mGroupMemberCountIdx:I

.field mGroupNameIdx:I

.field protected mIndicatorMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field mPhotoIndex:I

.field private mRestartIndicatorIdleHandler:Landroid/os/MessageQueue$IdleHandler;

.field final synthetic this$0:Lcom/android/htccontacts/BrowseGroupsActivity;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/BrowseGroupsActivity;Landroid/content/Context;ILandroid/database/Cursor;)V
    .locals 4
    .parameter
    .parameter "context"
    .parameter "resource"
    .parameter "cursor"

    .prologue
    const/16 v2, 0x14

    .line 1524
    iput-object p1, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->this$0:Lcom/android/htccontacts/BrowseGroupsActivity;

    .line 1525
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 1515
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->mDoAddIndicatorRequest:Z

    .line 1517
    new-instance v1, Landroid/database/CharArrayBuffer;

    invoke-direct {v1, v2}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v1, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->mCharBuffer1:Landroid/database/CharArrayBuffer;

    .line 1518
    new-instance v1, Landroid/database/CharArrayBuffer;

    invoke-direct {v1, v2}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v1, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->mCharBuffer2:Landroid/database/CharArrayBuffer;

    .line 1522
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->itemCount:I

    .line 1832
    new-instance v1, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter$2;

    invoke-direct {v1, p0}, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter$2;-><init>(Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;)V

    iput-object v1, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->mRestartIndicatorIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    .line 1526
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->mIndicatorMap:Ljava/util/HashMap;

    .line 1527
    const-string v1, "layout_inflater"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 1528
    if-eqz p4, :cond_0

    .line 1531
    :try_start_0
    const-string v1, "_id"

    invoke-interface {p4, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->mGroupIDIdx:I

    .line 1532
    const-string v1, "title"

    invoke-interface {p4, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->mGroupNameIdx:I

    .line 1534
    const-string v1, "summ_count"

    invoke-interface {p4, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->mGroupMemberCountIdx:I

    .line 1535
    const-string v1, "photo"

    invoke-interface {p4, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->mPhotoIndex:I

    .line 1538
    const-string v1, "group_is_read_only"

    invoke-interface {p4, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->mGroupIsReadOnlyIndex:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1544
    :cond_0
    :goto_0
    return-void

    .line 1539
    :catch_0
    move-exception v0

    .line 1540
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "BrowseGroupsActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openGroup - Database column not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private shouldDrawBottomRound(Landroid/database/Cursor;)Z
    .locals 7
    .parameter "cursor"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1963
    if-nez p1, :cond_0

    .line 1989
    :goto_0
    return v3

    .line 1967
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    .line 1968
    .local v0, currentPos:I
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 1970
    .local v2, totalCount:I
    add-int/lit8 v5, v2, -0x1

    if-lt v0, v5, :cond_1

    move v3, v4

    .line 1971
    goto :goto_0

    .line 1974
    :cond_1
    if-ne v2, v3, :cond_2

    move v3, v4

    .line 1975
    goto :goto_0

    .line 1978
    :cond_2
    iget v5, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->mGroupNameIdx:I

    iget-object v6, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->mCharBuffer1:Landroid/database/CharArrayBuffer;

    invoke-interface {p1, v5, v6}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 1979
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1980
    invoke-interface {p1}, Landroid/database/Cursor;->moveToPrevious()Z

    goto :goto_0

    .line 1984
    :cond_3
    iget v3, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->mGroupNameIdx:I

    iget-object v5, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->mCharBuffer2:Landroid/database/CharArrayBuffer;

    invoke-interface {p1, v3, v5}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 1985
    const/4 v1, 0x0

    .line 1988
    .local v1, result:Z
    invoke-interface {p1}, Landroid/database/Cursor;->moveToPrevious()Z

    move v3, v4

    .line 1989
    goto :goto_0
.end method

.method private shouldDrawTopRound(Landroid/database/Cursor;)Z
    .locals 6
    .parameter "cursor"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1928
    if-nez p1, :cond_1

    .line 1956
    :cond_0
    :goto_0
    return v2

    .line 1932
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    .line 1933
    .local v0, currentPos:I
    if-gtz v0, :cond_2

    .line 1934
    iget-object v4, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->this$0:Lcom/android/htccontacts/BrowseGroupsActivity;

    iget-boolean v4, v4, Lcom/android/htccontacts/BrowseGroupsActivity;->mIsEnableAddItemSeparable:Z

    if-nez v4, :cond_0

    move v2, v3

    .line 1935
    goto :goto_0

    .line 1940
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-eq v4, v2, :cond_0

    .line 1944
    iget v4, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->mGroupNameIdx:I

    iget-object v5, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->mCharBuffer1:Landroid/database/CharArrayBuffer;

    invoke-interface {p1, v4, v5}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 1945
    invoke-interface {p1}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1946
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 1950
    :cond_3
    iget v2, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->mGroupNameIdx:I

    iget-object v4, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->mCharBuffer2:Landroid/database/CharArrayBuffer;

    invoke-interface {p1, v2, v4}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 1952
    const/4 v1, 0x0

    .line 1955
    .local v1, result:Z
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move v2, v3

    .line 1956
    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 22
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 1628
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;

    .line 1630
    .local v3, cache:Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;
    const-wide/16 v14, 0x0

    .line 1634
    .local v14, groupId:J
    const/16 v16, -0x1

    .line 1635
    .local v16, groupMemberCount:I
    const/4 v9, 0x0

    .line 1636
    .local v9, bytes:[B
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->itemCount:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->itemCount:I

    .line 1637
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->mGroupIDIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 1638
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->mGroupNameIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1640
    .local v5, groupName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->mGroupIsReadOnlyIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 1642
    .local v6, groupIsReadOnly:I
    const/16 v18, 0x0

    .line 1644
    .local v18, intObj:Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->mIndicatorMap:Ljava/util/HashMap;

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .end local v18           #intObj:Ljava/lang/Integer;
    check-cast v18, Ljava/lang/Integer;

    .line 1645
    .restart local v18       #intObj:Ljava/lang/Integer;
    if-nez v18, :cond_9

    .line 1646
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;->setIndicatorCount(I)V

    .line 1655
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->mDoAddIndicatorRequest:Z

    if-eqz v1, :cond_0

    .line 1656
    iput-object v5, v3, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;->groupName:Ljava/lang/String;

    .line 1657
    iput v6, v3, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;->GroupIsReadOnly:I

    .line 1658
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1659
    .local v4, b:Landroid/os/Bundle;
    const-string v1, "groupName"

    invoke-virtual {v4, v1, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1660
    iget-object v1, v3, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;->indicatorRequest:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;

    if-nez v1, :cond_a

    .line 1661
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->this$0:Lcom/android/htccontacts/BrowseGroupsActivity;

    #getter for: Lcom/android/htccontacts/BrowseGroupsActivity;->mGroupIndicatorRequestPool:Lcom/android/htccontacts/BrowseGroupsActivity$GroupIndicatorRequestPool;
    invoke-static {v1}, Lcom/android/htccontacts/BrowseGroupsActivity;->access$2000(Lcom/android/htccontacts/BrowseGroupsActivity;)Lcom/android/htccontacts/BrowseGroupsActivity$GroupIndicatorRequestPool;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->this$0:Lcom/android/htccontacts/BrowseGroupsActivity;

    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/htccontacts/BrowseGroupsActivity;->access$1900(Lcom/android/htccontacts/BrowseGroupsActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {v1 .. v6}, Lcom/android/htccontacts/BrowseGroupsActivity$GroupIndicatorRequestPool;->obtainGroupIndicator(Landroid/content/Context;Lcom/android/htccontacts/indicator/IndicatorResultListener;Landroid/os/Bundle;Ljava/lang/String;I)Lcom/android/htccontacts/indicator/GroupIndicatorRequest;

    move-result-object v17

    .line 1663
    .local v17, indicatorRequest:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;
    move-object/from16 v0, v17

    iput-object v0, v3, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;->indicatorRequest:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;

    .line 1669
    .end local v17           #indicatorRequest:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->this$0:Lcom/android/htccontacts/BrowseGroupsActivity;

    iget-object v2, v3, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;->indicatorRequest:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;

    invoke-virtual {v1, v2}, Lcom/android/htccontacts/BrowseGroupsActivity;->addIndicatorRequest(Lcom/android/htccontacts/indicator/IndicatorRequest;)V

    .line 1674
    .end local v4           #b:Landroid/os/Bundle;
    :cond_0
    iget-object v1, v3, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 1675
    iget-object v1, v3, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1679
    :cond_1
    const/4 v7, 0x0

    .line 1680
    .local v7, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->mPhotoIndex:I

    if-ltz v1, :cond_2

    .line 1681
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->mPhotoIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v9

    .line 1682
    if-eqz v9, :cond_2

    array-length v1, v9

    if-lez v1, :cond_2

    .line 1683
    const/4 v1, 0x0

    array-length v2, v9

    invoke-static {v9, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1687
    :cond_2
    iput-object v7, v3, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;->bitmap:Landroid/graphics/Bitmap;

    .line 1688
    const/4 v7, 0x0

    .line 1689
    iget-object v1, v3, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_b

    .line 1690
    iget-object v1, v3, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;->mListItemQuickContactBadge:Lcom/htc/widget/HtcListItemQuickContactBadge;

    invoke-virtual {v1}, Lcom/htc/widget/HtcListItemQuickContactBadge;->getBadge()Lcom/htc/widget/QuickContactBadge;

    move-result-object v1

    iget-object v2, v3, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/htc/widget/QuickContactBadge;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1700
    :goto_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->mGroupMemberCountIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 1701
    if-ltz v16, :cond_3

    .line 1702
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v1}, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->putMemberCountMap(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1708
    :cond_3
    iput-object v5, v3, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;->groupName:Ljava/lang/String;

    .line 1710
    iput v6, v3, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;->GroupIsReadOnly:I

    .line 1711
    if-gez v16, :cond_4

    .line 1712
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->this$0:Lcom/android/htccontacts/BrowseGroupsActivity;

    iget-object v1, v1, Lcom/android/htccontacts/BrowseGroupsActivity;->mValidCacheList:Ljava/util/HashMap;

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1713
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->this$0:Lcom/android/htccontacts/BrowseGroupsActivity;

    iget-object v1, v1, Lcom/android/htccontacts/BrowseGroupsActivity;->mMemberCountMap:Ljava/util/HashMap;

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 1714
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->this$0:Lcom/android/htccontacts/BrowseGroupsActivity;

    #getter for: Lcom/android/htccontacts/BrowseGroupsActivity;->mQueryCountHandler:Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;
    invoke-static {v1}, Lcom/android/htccontacts/BrowseGroupsActivity;->access$2100(Lcom/android/htccontacts/BrowseGroupsActivity;)Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;

    move-result-object v1

    invoke-virtual {v1, v5, v6, v3}, Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;->updateItem(Ljava/lang/String;ILcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;)V

    .line 1715
    const/16 v16, -0x1

    .line 1737
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->this$0:Lcom/android/htccontacts/BrowseGroupsActivity;

    iget-object v1, v1, Lcom/android/htccontacts/BrowseGroupsActivity;->mMemberCountMap:Ljava/util/HashMap;

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    .line 1739
    .local v19, intObj2:Ljava/lang/Integer;
    invoke-static {}, Lcom/android/htccontacts/BrowseGroupsActivity;->access$000()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "BrowseGroupsActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "mMemberCountMap:  ("

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v21, ", "

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v21, ")"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1742
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->this$0:Lcom/android/htccontacts/BrowseGroupsActivity;

    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/htccontacts/BrowseGroupsActivity;->access$2200(Lcom/android/htccontacts/BrowseGroupsActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5, v6}, Lcom/htc/util/contacts/ContactsUtility;->getDisplayGroupName(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 1744
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 1745
    .local v8, buffer:Ljava/lang/StringBuffer;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 1746
    invoke-virtual {v8, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1747
    move/from16 v11, v16

    .line 1748
    .local v11, counts:I
    if-gez v16, :cond_6

    .line 1749
    move-object/from16 v12, v19

    .line 1750
    .local v12, countsValue:Ljava/lang/Integer;
    if-eqz v12, :cond_6

    .line 1751
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 1759
    .end local v12           #countsValue:Ljava/lang/Integer;
    :cond_6
    if-ltz v11, :cond_7

    .line 1760
    const/16 v1, 0x20

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1761
    const/16 v1, 0x28

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1762
    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1763
    const/16 v1, 0x29

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1766
    :cond_7
    iget-object v1, v3, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setPrimaryText(Ljava/lang/String;)V

    .line 1770
    .end local v11           #counts:I
    :cond_8
    move/from16 v0, v16

    iput v0, v3, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;->memberCount:I

    .line 1775
    return-void

    .line 1650
    .end local v7           #bitmap:Landroid/graphics/Bitmap;
    .end local v8           #buffer:Ljava/lang/StringBuffer;
    .end local v19           #intObj2:Ljava/lang/Integer;
    :cond_9
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;->setIndicatorCount(I)V

    goto/16 :goto_0

    .line 1666
    .restart local v4       #b:Landroid/os/Bundle;
    :cond_a
    iget-object v1, v3, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;->indicatorRequest:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;

    invoke-virtual {v1, v4, v5, v6}, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->changePersonId(Landroid/os/Bundle;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 1696
    .end local v4           #b:Landroid/os/Bundle;
    .restart local v7       #bitmap:Landroid/graphics/Bitmap;
    :cond_b
    invoke-static {v5}, Lcom/htc/provider/HtcContactsContract$Groups;->getDefaultGroupIconResource(Ljava/lang/String;)I

    move-result v13

    .line 1697
    .local v13, defaultIcon:I
    iget-object v1, v3, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;->mListItemQuickContactBadge:Lcom/htc/widget/HtcListItemQuickContactBadge;

    invoke-virtual {v1}, Lcom/htc/widget/HtcListItemQuickContactBadge;->getBadge()Lcom/htc/widget/QuickContactBadge;

    move-result-object v1

    invoke-virtual {v1, v13}, Lcom/htc/widget/QuickContactBadge;->setImageResource(I)V

    goto/16 :goto_2

    .line 1718
    .end local v13           #defaultIcon:I
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->this$0:Lcom/android/htccontacts/BrowseGroupsActivity;

    iget-object v1, v1, Lcom/android/htccontacts/BrowseGroupsActivity;->mMemberCountMap:Ljava/util/HashMap;

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 1719
    .local v10, countValue:Ljava/lang/Integer;
    if-eqz v10, :cond_d

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 1720
    :goto_4
    goto/16 :goto_3

    .line 1719
    :cond_d
    const/16 v16, -0x1

    goto :goto_4

    .line 1722
    .end local v10           #countValue:Ljava/lang/Integer;
    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->this$0:Lcom/android/htccontacts/BrowseGroupsActivity;

    iget-object v1, v1, Lcom/android/htccontacts/BrowseGroupsActivity;->mMemberCountMap:Ljava/util/HashMap;

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 1723
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->itemCount:I

    const/4 v2, 0x2

    if-le v1, v2, :cond_f

    .line 1724
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->this$0:Lcom/android/htccontacts/BrowseGroupsActivity;

    #getter for: Lcom/android/htccontacts/BrowseGroupsActivity;->mQueryCountHandler:Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;
    invoke-static {v1}, Lcom/android/htccontacts/BrowseGroupsActivity;->access$2100(Lcom/android/htccontacts/BrowseGroupsActivity;)Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;

    move-result-object v1

    invoke-virtual {v1, v5, v6, v3}, Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;->updateItem(Ljava/lang/String;ILcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;)V

    .line 1726
    :cond_f
    const/16 v16, -0x1

    goto/16 :goto_3

    .line 1728
    :cond_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->this$0:Lcom/android/htccontacts/BrowseGroupsActivity;

    iget-object v1, v1, Lcom/android/htccontacts/BrowseGroupsActivity;->mMemberCountMap:Ljava/util/HashMap;

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    .line 1729
    .local v20, value:Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->this$0:Lcom/android/htccontacts/BrowseGroupsActivity;

    #getter for: Lcom/android/htccontacts/BrowseGroupsActivity;->mQueryCountHandler:Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;
    invoke-static {v1}, Lcom/android/htccontacts/BrowseGroupsActivity;->access$2100(Lcom/android/htccontacts/BrowseGroupsActivity;)Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;

    move-result-object v1

    invoke-virtual {v1, v5, v6, v3}, Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;->updateItem(Ljava/lang/String;ILcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;)V

    .line 1731
    if-nez v20, :cond_11

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_4

    .line 1732
    :cond_11
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v16

    goto/16 :goto_3
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    .line 1577
    iget-object v1, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->mCursor:Landroid/database/Cursor;

    if-ne p1, v1, :cond_0

    .line 1601
    :goto_0
    return-void

    .line 1580
    :cond_0
    iget-object v1, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_1

    .line 1581
    iget-object v1, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    invoke-interface {v1, v2}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1582
    iget-object v1, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v1, v2}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1583
    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->mCursor:Landroid/database/Cursor;

    .line 1584
    .local v0, tempCursor:Landroid/database/Cursor;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->mCursor:Landroid/database/Cursor;

    .line 1585
    iget-object v1, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->this$0:Lcom/android/htccontacts/BrowseGroupsActivity;

    invoke-virtual {v1, v0}, Lcom/android/htccontacts/BrowseGroupsActivity;->closeCursorInBackground(Landroid/database/Cursor;)V

    .line 1587
    .end local v0           #tempCursor:Landroid/database/Cursor;
    :cond_1
    iput-object p1, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->mCursor:Landroid/database/Cursor;

    .line 1588
    if-eqz p1, :cond_2

    .line 1589
    iget-object v1, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 1590
    iget-object v1, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1591
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->mRowIDColumn:I

    .line 1592
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->mDataValid:Z

    .line 1594
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1596
    :cond_2
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->mRowIDColumn:I

    .line 1597
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->mDataValid:Z

    .line 1599
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method

.method protected generateHtcListItemBuilder(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Lcom/android/htccontacts/widget/HtcListItemBuilder;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 1604
    new-instance v0, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    const/16 v1, 0xc9

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Lcom/android/htccontacts/widget/HtcListItemBuilder;-><init>(Landroid/content/Context;II)V

    return-object v0
.end method

.method public getGroupIsReadOnly(Landroid/database/Cursor;)I
    .locals 1
    .parameter "cursor"

    .prologue
    .line 1564
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1565
    iget v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->mGroupIsReadOnlyIndex:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1567
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGroupName(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .parameter "cursor"

    .prologue
    .line 1556
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1557
    iget v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->mGroupNameIdx:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1559
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getInsertView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1778
    if-nez p1, :cond_0

    .line 1786
    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0a0107

    const v3, 0x20802e1

    const/4 v4, 0x0

    new-instance v5, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter$1;

    invoke-direct {v5, p0}, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter$1;-><init>(Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;)V

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lcom/android/htccontacts/util/ContactsUtils;->getComposeNewItemView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;IIZLandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object p1

    .line 1793
    :cond_0
    return-object p1
.end method

.method protected initListItemCache(Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;Lcom/android/htccontacts/widget/HtcListItemBuilder;)V
    .locals 2
    .parameter "cache"
    .parameter "builder"

    .prologue
    .line 1608
    invoke-virtual {p2}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->getQuickContactBadge()Lcom/htc/widget/HtcListItemQuickContactBadge;

    move-result-object v0

    iput-object v0, p1, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;->mListItemQuickContactBadge:Lcom/htc/widget/HtcListItemQuickContactBadge;

    .line 1609
    invoke-virtual {p2}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->get2LineText()Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    .line 1611
    iget-object v0, p1, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setSecondaryText(Ljava/lang/String;)V

    .line 1612
    invoke-virtual {p2}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->getImageButton()Lcom/htc/widget/HtcListItemImageButton;

    move-result-object v0

    iput-object v0, p1, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;->mListItemImageButton:Lcom/htc/widget/HtcListItemImageButton;

    .line 1613
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 1617
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->generateHtcListItemBuilder(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Lcom/android/htccontacts/widget/HtcListItemBuilder;

    move-result-object v0

    .line 1618
    .local v0, builder:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    new-instance v1, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;

    iget-object v2, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->this$0:Lcom/android/htccontacts/BrowseGroupsActivity;

    invoke-direct {v1, v2}, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;-><init>(Lcom/android/htccontacts/BrowseGroupsActivity;)V

    .line 1619
    .local v1, cache:Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;
    invoke-virtual {p0, v1, v0}, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->initListItemCache(Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;Lcom/android/htccontacts/widget/HtcListItemBuilder;)V

    .line 1620
    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setTag(Ljava/lang/Object;)V

    .line 1621
    return-object v0
.end method

.method protected onContentChanged()V
    .locals 2

    .prologue
    .line 1812
    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->this$0:Lcom/android/htccontacts/BrowseGroupsActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/htccontacts/BrowseGroupsActivity;->mIsDirty:Z

    .line 1814
    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->this$0:Lcom/android/htccontacts/BrowseGroupsActivity;

    #getter for: Lcom/android/htccontacts/app/BaseActivity;->mIsForegroundActivity:Z
    invoke-static {v0}, Lcom/android/htccontacts/BrowseGroupsActivity;->access$2300(Lcom/android/htccontacts/BrowseGroupsActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1816
    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->this$0:Lcom/android/htccontacts/BrowseGroupsActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/BrowseGroupsActivity;->startQueryWithPreQueryDelayed()V

    .line 1817
    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->this$0:Lcom/android/htccontacts/BrowseGroupsActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/htccontacts/BrowseGroupsActivity;->mIsDirty:Z

    .line 1821
    :cond_0
    return-void
.end method

.method public onInsertViewClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1797
    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->this$0:Lcom/android/htccontacts/BrowseGroupsActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/BrowseGroupsActivity;->addGroup()V

    .line 1798
    return-void
.end method

.method public onInsertViewLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 1801
    const/4 v0, 0x1

    return v0
.end method

.method public onInsertViewTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "mv"

    .prologue
    .line 1805
    const/4 v0, 0x1

    return v0
.end method

.method public onScroll(Lcom/htc/widget/HtcAbsListView;III)V
    .locals 0
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 1879
    return-void
.end method

.method public onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 15
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 1884
    if-eqz p2, :cond_1

    .line 1885
    iget-object v1, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->this$0:Lcom/android/htccontacts/BrowseGroupsActivity;

    invoke-virtual {v1}, Lcom/android/htccontacts/BrowseGroupsActivity;->pauseIndicator()V

    .line 1886
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->mDoAddIndicatorRequest:Z

    .line 1887
    iget-object v1, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->this$0:Lcom/android/htccontacts/BrowseGroupsActivity;

    #getter for: Lcom/android/htccontacts/BrowseGroupsActivity;->mQueryCountHandler:Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;
    invoke-static {v1}, Lcom/android/htccontacts/BrowseGroupsActivity;->access$2100(Lcom/android/htccontacts/BrowseGroupsActivity;)Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;->setPause()V

    .line 1925
    :cond_0
    :goto_0
    return-void

    .line 1890
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->this$0:Lcom/android/htccontacts/BrowseGroupsActivity;

    #getter for: Lcom/android/htccontacts/BrowseGroupsActivity;->mQueryCountHandler:Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;
    invoke-static {v1}, Lcom/android/htccontacts/BrowseGroupsActivity;->access$2100(Lcom/android/htccontacts/BrowseGroupsActivity;)Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;->setEnableAndFlush()V

    .line 1891
    iget-object v1, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->this$0:Lcom/android/htccontacts/BrowseGroupsActivity;

    invoke-virtual {v1}, Lcom/android/htccontacts/BrowseGroupsActivity;->startIndicator()V

    .line 1892
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->mDoAddIndicatorRequest:Z

    .line 1896
    iget-object v1, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->this$0:Lcom/android/htccontacts/BrowseGroupsActivity;

    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;
    invoke-static {v1}, Lcom/android/htccontacts/BrowseGroupsActivity;->access$2900(Lcom/android/htccontacts/BrowseGroupsActivity;)Lcom/htc/widget/HtcListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcListView;->getFirstVisiblePosition()I

    move-result v9

    .line 1897
    .local v9, firstVisiblePosition:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    iget-object v1, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->this$0:Lcom/android/htccontacts/BrowseGroupsActivity;

    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;
    invoke-static {v1}, Lcom/android/htccontacts/BrowseGroupsActivity;->access$3000(Lcom/android/htccontacts/BrowseGroupsActivity;)Lcom/htc/widget/HtcListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v1

    if-ge v10, v1, :cond_0

    .line 1898
    iget-object v1, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->this$0:Lcom/android/htccontacts/BrowseGroupsActivity;

    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;
    invoke-static {v1}, Lcom/android/htccontacts/BrowseGroupsActivity;->access$3100(Lcom/android/htccontacts/BrowseGroupsActivity;)Lcom/htc/widget/HtcListView;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 1899
    .local v14, v:Landroid/view/View;
    iget-object v1, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->this$0:Lcom/android/htccontacts/BrowseGroupsActivity;

    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;
    invoke-static {v1}, Lcom/android/htccontacts/BrowseGroupsActivity;->access$3200(Lcom/android/htccontacts/BrowseGroupsActivity;)Lcom/htc/widget/HtcListView;

    move-result-object v1

    add-int v2, v9, v10

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v11

    .line 1900
    .local v11, object:Ljava/lang/Object;
    invoke-virtual {v14}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    .line 1901
    .local v13, tagObject:Ljava/lang/Object;
    instance-of v1, v11, Landroid/database/Cursor;

    if-eqz v1, :cond_2

    if-eqz v13, :cond_2

    instance-of v1, v13, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;

    if-eqz v1, :cond_2

    .line 1902
    move-object v0, v13

    check-cast v0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;

    move-object v3, v0

    .line 1903
    .local v3, cache:Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;
    move-object v0, v11

    check-cast v0, Landroid/database/Cursor;

    move-object v7, v0

    .line 1904
    .local v7, cursor:Landroid/database/Cursor;
    invoke-virtual {p0, v7}, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->getGroupName(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v5

    .line 1906
    .local v5, groupName:Ljava/lang/String;
    invoke-virtual {p0, v7}, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->getGroupIsReadOnly(Landroid/database/Cursor;)I

    move-result v6

    .line 1907
    .local v6, groupIsReadOnly:I
    iput-object v5, v3, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;->groupName:Ljava/lang/String;

    .line 1909
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1910
    .local v4, b:Landroid/os/Bundle;
    const-string v1, "groupName"

    invoke-virtual {v4, v1, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1911
    iget-object v1, v3, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;->indicatorRequest:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;

    if-nez v1, :cond_3

    .line 1912
    iget-object v1, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->this$0:Lcom/android/htccontacts/BrowseGroupsActivity;

    #getter for: Lcom/android/htccontacts/BrowseGroupsActivity;->mGroupIndicatorRequestPool:Lcom/android/htccontacts/BrowseGroupsActivity$GroupIndicatorRequestPool;
    invoke-static {v1}, Lcom/android/htccontacts/BrowseGroupsActivity;->access$2000(Lcom/android/htccontacts/BrowseGroupsActivity;)Lcom/android/htccontacts/BrowseGroupsActivity$GroupIndicatorRequestPool;

    move-result-object v1

    iget-object v2, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->this$0:Lcom/android/htccontacts/BrowseGroupsActivity;

    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/htccontacts/BrowseGroupsActivity;->access$3300(Lcom/android/htccontacts/BrowseGroupsActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {v1 .. v6}, Lcom/android/htccontacts/BrowseGroupsActivity$GroupIndicatorRequestPool;->obtainGroupIndicator(Landroid/content/Context;Lcom/android/htccontacts/indicator/IndicatorResultListener;Landroid/os/Bundle;Ljava/lang/String;I)Lcom/android/htccontacts/indicator/GroupIndicatorRequest;

    move-result-object v12

    .line 1914
    .local v12, request:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;
    iput-object v12, v3, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;->indicatorRequest:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;

    .line 1918
    .end local v12           #request:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;
    :goto_2
    iget-object v1, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->this$0:Lcom/android/htccontacts/BrowseGroupsActivity;

    iget-object v2, v3, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;->indicatorRequest:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;

    invoke-virtual {v1, v2}, Lcom/android/htccontacts/BrowseGroupsActivity;->addIndicatorRequest(Lcom/android/htccontacts/indicator/IndicatorRequest;)V

    .line 1897
    .end local v3           #cache:Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;
    .end local v4           #b:Landroid/os/Bundle;
    .end local v5           #groupName:Ljava/lang/String;
    .end local v6           #groupIsReadOnly:I
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1916
    .restart local v3       #cache:Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;
    .restart local v4       #b:Landroid/os/Bundle;
    .restart local v5       #groupName:Ljava/lang/String;
    .restart local v6       #groupIsReadOnly:I
    .restart local v7       #cursor:Landroid/database/Cursor;
    :cond_3
    iget-object v1, v3, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;->indicatorRequest:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;

    invoke-virtual {v1, v4, v5, v6}, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->changePersonId(Landroid/os/Bundle;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1921
    .end local v3           #cache:Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;
    .end local v4           #b:Landroid/os/Bundle;
    .end local v5           #groupName:Ljava/lang/String;
    .end local v6           #groupIsReadOnly:I
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v9           #firstVisiblePosition:I
    .end local v10           #i:I
    .end local v11           #object:Ljava/lang/Object;
    .end local v13           #tagObject:Ljava/lang/Object;
    .end local v14           #v:Landroid/view/View;
    :catch_0
    move-exception v8

    .line 1922
    .local v8, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v1, "BrowseGroupsActivity"

    const-string v2, "Failed to start indicator requery, but it\'s ok since listview has became invalid."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public putIndicatorMap(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1
    .parameter "name"
    .parameter "count"

    .prologue
    .line 1547
    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->mIndicatorMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1548
    return-void
.end method

.method public putMemberCountMap(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 3
    .parameter "name"
    .parameter "count"

    .prologue
    .line 1551
    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->this$0:Lcom/android/htccontacts/BrowseGroupsActivity;

    iget-object v0, v0, Lcom/android/htccontacts/BrowseGroupsActivity;->mMemberCountMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1552
    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->this$0:Lcom/android/htccontacts/BrowseGroupsActivity;

    iget-object v0, v0, Lcom/android/htccontacts/BrowseGroupsActivity;->mValidCacheList:Ljava/util/HashMap;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1553
    return-void
.end method

.method public removeCallback()V
    .locals 2

    .prologue
    .line 1830
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->mRestartIndicatorIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 1831
    return-void
.end method

.method public setDoAddIndicatorRequest(Z)V
    .locals 0
    .parameter "state"

    .prologue
    .line 1570
    iput-boolean p1, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->mDoAddIndicatorRequest:Z

    .line 1571
    return-void
.end method

.method public shouldDrawBottomRound(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 1997
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    invoke-direct {p0, v0}, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->shouldDrawBottomRound(Landroid/database/Cursor;)Z

    move-result v0

    return v0
.end method

.method public shouldDrawTopRound(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 2001
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    invoke-direct {p0, v0}, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->shouldDrawTopRound(Landroid/database/Cursor;)Z

    move-result v0

    return v0
.end method

.method public showDrawableSeparatorDivider(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 1993
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->shouldDrawBottomRound(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateIndicator()V
    .locals 2

    .prologue
    .line 1825
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->mRestartIndicatorIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 1826
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->mRestartIndicatorIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 1827
    return-void
.end method
