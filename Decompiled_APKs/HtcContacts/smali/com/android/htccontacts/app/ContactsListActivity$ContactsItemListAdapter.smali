.class public Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;
.super Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;
.source "ContactsListActivity.java"

# interfaces
.implements Lcom/htc/widget/HtcAbsListView$OnScrollListener;
.implements Landroid/widget/SectionIndexer;
.implements Lcom/android/htccontacts/widget/FilterableGroupListAdapter$FirstSelectable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/app/ContactsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ContactsItemListAdapter"
.end annotation


# instance fields
.field private mAlphabet:Ljava/lang/String;

.field public mData1_Idx:I

.field public mData2_Idx:I

.field public mData3_Idx:I

.field public mDisplayTitileIdx:I

.field protected mDoAddIndicatorRequest:Z

.field protected mEnableSectionIndexer:Z

.field private mGroupingColumnIndex:I

.field public mIdChatCapability:I

.field public mIdPresenceId:I

.field public mIdxAccountCount:I

.field public mIdxAccountType:I

.field public mIdxDisplayName:I

.field public mIdxHasPhoneNum:I

.field public mIdxID:I

.field public mIdxLookupKey:I

.field public mIdxSortKey:I

.field public mIdxSortKeyAlt:I

.field public mIdxStarred:I

.field public mIdxStatusUpdateId:I

.field private mIndexer:Lcom/android/htccontacts/widget/HtcAlphabetIndexer;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsEnableHideSubHeaderIfEmpty:Z

.field private mIsSubHeaderEnabled:Z

.field public mMimetypeIdx:I

.field private mRestartIndicatorIdleHandler:Landroid/os/MessageQueue$IdleHandler;

.field private mScrollState:I

.field private mSections:[Ljava/lang/String;

.field public mSnippetIdx:I

.field private mSortIndexerColumnIdex:I

.field private mStartQueryIdleHandler:Landroid/os/MessageQueue$IdleHandler;

.field final synthetic this$0:Lcom/android/htccontacts/app/ContactsListActivity;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/app/ContactsListActivity;Landroid/content/Context;ILandroid/database/Cursor;)V
    .locals 3
    .parameter
    .parameter "context"
    .parameter "layout"
    .parameter "cursor"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 1866
    iput-object p1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->this$0:Lcom/android/htccontacts/app/ContactsListActivity;

    .line 1867
    invoke-direct {p0, p2, p3, p4, v2}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    .line 1751
    iput v0, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdxID:I

    .line 1752
    iput v0, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdxDisplayName:I

    .line 1753
    iput v0, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdxStarred:I

    .line 1754
    iput v0, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdxHasPhoneNum:I

    .line 1755
    iput v0, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdxLookupKey:I

    .line 1756
    iput v0, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdxAccountType:I

    .line 1757
    iput v0, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdxAccountCount:I

    .line 1758
    iput v0, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdxStatusUpdateId:I

    .line 1759
    iput v0, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdPresenceId:I

    .line 1760
    iput v0, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdChatCapability:I

    .line 1761
    iput v0, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdxSortKey:I

    .line 1762
    iput v0, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdxSortKeyAlt:I

    .line 1764
    iput v0, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mData1_Idx:I

    .line 1765
    iput v0, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mData2_Idx:I

    .line 1766
    iput v0, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mData3_Idx:I

    .line 1767
    iput v0, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mDisplayTitileIdx:I

    .line 1768
    iput v0, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mMimetypeIdx:I

    .line 1770
    iput v0, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mSnippetIdx:I

    .line 1779
    iput v1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mScrollState:I

    .line 1786
    iput-boolean v2, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mDoAddIndicatorRequest:Z

    .line 1787
    iput-boolean v1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mEnableSectionIndexer:Z

    .line 1789
    iput-boolean v1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIsSubHeaderEnabled:Z

    .line 1790
    iput-boolean v1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIsEnableHideSubHeaderIfEmpty:Z

    .line 2770
    new-instance v0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter$1;-><init>(Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;)V

    iput-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mStartQueryIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    .line 2793
    new-instance v0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter$2;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter$2;-><init>(Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;)V

    iput-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mRestartIndicatorIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    .line 1868
    iget v0, p1, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    const v1, 0x8000004

    if-ne v0, v1, :cond_0

    .line 1869
    iput-boolean v2, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mEnableSectionIndexer:Z

    .line 1872
    :cond_0
    invoke-virtual {p0, p4}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->updateIndex(Landroid/database/Cursor;)V

    .line 1874
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 1875
    const v0, 0x1040419

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mAlphabet:Ljava/lang/String;

    .line 1876
    if-eqz p4, :cond_1

    .line 1877
    invoke-direct {p0, p4}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->updateIndexer(Landroid/database/Cursor;)V

    .line 1879
    :cond_1
    return-void
.end method

.method private checkBottom(Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;Landroid/database/Cursor;)Z
    .locals 12
    .parameter "cache"
    .parameter "cursor"

    .prologue
    .line 2331
    const/4 v7, 0x0

    .line 2332
    .local v7, returnValue:Z
    invoke-interface {p2}, Landroid/database/Cursor;->isLast()Z

    move-result v10

    if-nez v10, :cond_a

    .line 2333
    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    .line 2334
    .local v2, cursorPosition:I
    iget v10, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mGroupingColumnIndex:I

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2335
    .local v9, thisItemName:Ljava/lang/String;
    add-int/lit8 v10, v2, 0x1

    invoke-super {p0, v10}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    .line 2336
    .local v6, o:Ljava/lang/Object;
    instance-of v10, v6, Landroid/database/Cursor;

    if-nez v10, :cond_0

    .line 2337
    const/4 v10, 0x0

    .line 2384
    .end local v2           #cursorPosition:I
    .end local v6           #o:Ljava/lang/Object;
    .end local v9           #thisItemName:Ljava/lang/String;
    :goto_0
    return v10

    .restart local v2       #cursorPosition:I
    .restart local v6       #o:Ljava/lang/Object;
    .restart local v9       #thisItemName:Ljava/lang/String;
    :cond_0
    move-object v0, v6

    .line 2339
    check-cast v0, Landroid/database/Cursor;

    .line 2340
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 2341
    iget v10, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mGroupingColumnIndex:I

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2343
    .local v4, nextItemName:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 2344
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;->setBottomRound(Z)V

    .line 2380
    .end local v4           #nextItemName:Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-super {p0, v2}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->getItem(I)Ljava/lang/Object;

    move v10, v7

    .line 2381
    goto :goto_0

    .line 2347
    .restart local v4       #nextItemName:Ljava/lang/String;
    :cond_2
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    :cond_3
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 2349
    :cond_4
    invoke-static {}, Lcom/android/htccontacts/util/ContactsUtils;->enableRoundCornerByProject()Z

    move-result v7

    .line 2350
    invoke-virtual {p1, v7}, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;->setBottomRound(Z)V

    goto :goto_1

    .line 2354
    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->getSectionForPosition(I)I

    move-result v1

    .line 2355
    .local v1, currSect:I
    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p0, v10}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->getSectionForPosition(I)I

    move-result v5

    .line 2357
    .local v5, nextSect:I
    const/4 v10, -0x1

    if-ne v1, v10, :cond_6

    const/4 v10, -0x1

    if-eq v5, v10, :cond_8

    .line 2358
    :cond_6
    if-eq v1, v5, :cond_7

    .line 2359
    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;->setBottomRound(Z)V

    .line 2360
    const/4 v7, 0x1

    goto :goto_1

    .line 2362
    :cond_7
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;->setBottomRound(Z)V

    .line 2363
    const/4 v7, 0x0

    goto :goto_1

    .line 2366
    :cond_8
    invoke-static {v9}, Lcom/android/htccontacts/util/ContactsUtils;->obtainCompareLeadingChar(Ljava/lang/String;)C

    move-result v8

    .line 2367
    .local v8, thisItemChar:C
    invoke-static {v4}, Lcom/android/htccontacts/util/ContactsUtils;->obtainCompareLeadingChar(Ljava/lang/String;)C

    move-result v3

    .line 2368
    .local v3, nextItemChar:C
    invoke-static {v8}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v10

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v11

    if-eq v10, v11, :cond_9

    .line 2370
    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;->setBottomRound(Z)V

    .line 2371
    const/4 v7, 0x1

    goto :goto_1

    .line 2373
    :cond_9
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;->setBottomRound(Z)V

    .line 2374
    const/4 v7, 0x0

    goto :goto_1

    .line 2383
    .end local v0           #c:Landroid/database/Cursor;
    .end local v1           #currSect:I
    .end local v2           #cursorPosition:I
    .end local v3           #nextItemChar:C
    .end local v4           #nextItemName:Ljava/lang/String;
    .end local v5           #nextSect:I
    .end local v6           #o:Ljava/lang/Object;
    .end local v8           #thisItemChar:C
    .end local v9           #thisItemName:Ljava/lang/String;
    :cond_a
    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;->setBottomRound(Z)V

    .line 2384
    const/4 v10, 0x1

    goto/16 :goto_0
.end method

.method private checkTop(Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;Landroid/database/Cursor;)Z
    .locals 12
    .parameter "cache"
    .parameter "cursor"

    .prologue
    .line 2389
    const/4 v6, 0x0

    .line 2390
    .local v6, returnValue:Z
    invoke-interface {p2}, Landroid/database/Cursor;->isFirst()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 2391
    invoke-virtual {p0}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->checkFirstItemTopRoundShow()Z

    move-result v6

    .line 2392
    invoke-virtual {p1, v6}, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;->setTopRound(Z)V

    :goto_0
    move v10, v6

    .line 2444
    :goto_1
    return v10

    .line 2395
    :cond_0
    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    .line 2396
    .local v2, cursorPosition:I
    iget v10, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mGroupingColumnIndex:I

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2397
    .local v8, thisItemName:Ljava/lang/String;
    add-int/lit8 v10, v2, -0x1

    invoke-super {p0, v10}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    .line 2398
    .local v4, o:Ljava/lang/Object;
    instance-of v10, v4, Landroid/database/Cursor;

    if-nez v10, :cond_1

    .line 2399
    const/4 v10, 0x0

    goto :goto_1

    :cond_1
    move-object v0, v4

    .line 2401
    check-cast v0, Landroid/database/Cursor;

    .line 2402
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 2403
    iget v10, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mGroupingColumnIndex:I

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2405
    .local v5, prevItemName:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2406
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;->setTopRound(Z)V

    .line 2442
    .end local v5           #prevItemName:Ljava/lang/String;
    :cond_2
    :goto_2
    invoke-super {p0, v2}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->getItem(I)Ljava/lang/Object;

    goto :goto_0

    .line 2409
    .restart local v5       #prevItemName:Ljava/lang/String;
    :cond_3
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    :cond_4
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 2411
    :cond_5
    invoke-static {}, Lcom/android/htccontacts/util/ContactsUtils;->enableRoundCornerByProject()Z

    move-result v6

    .line 2412
    invoke-virtual {p1, v6}, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;->setTopRound(Z)V

    goto :goto_2

    .line 2417
    :cond_6
    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p0, v10}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->getSectionForPosition(I)I

    move-result v9

    .line 2418
    .local v9, upperSect:I
    invoke-virtual {p0, v2}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->getSectionForPosition(I)I

    move-result v1

    .line 2420
    .local v1, currSect:I
    const/4 v10, -0x1

    if-ne v9, v10, :cond_7

    const/4 v10, -0x1

    if-eq v1, v10, :cond_9

    .line 2421
    :cond_7
    if-eq v9, v1, :cond_8

    .line 2422
    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;->setTopRound(Z)V

    .line 2423
    const/4 v6, 0x1

    goto :goto_2

    .line 2425
    :cond_8
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;->setTopRound(Z)V

    .line 2426
    const/4 v6, 0x0

    goto :goto_2

    .line 2429
    :cond_9
    invoke-static {v8}, Lcom/android/htccontacts/util/ContactsUtils;->obtainCompareLeadingChar(Ljava/lang/String;)C

    move-result v3

    .line 2430
    .local v3, listItemChar:C
    invoke-static {v5}, Lcom/android/htccontacts/util/ContactsUtils;->obtainCompareLeadingChar(Ljava/lang/String;)C

    move-result v7

    .line 2431
    .local v7, thisChar:C
    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v10

    invoke-static {v7}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v11

    if-eq v10, v11, :cond_a

    .line 2433
    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;->setTopRound(Z)V

    .line 2434
    const/4 v6, 0x1

    goto :goto_2

    .line 2436
    :cond_a
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;->setTopRound(Z)V

    .line 2437
    const/4 v6, 0x0

    goto :goto_2
.end method

.method private getGroupingColumnIndex()I
    .locals 3

    .prologue
    .line 2715
    iget v0, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdxDisplayName:I

    .line 2717
    .local v0, index:I
    iget v2, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdxSortKey:I

    if-gez v2, :cond_0

    iget v2, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdxSortKeyAlt:I

    if-ltz v2, :cond_1

    .line 2718
    :cond_0
    iget-object v2, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->this$0:Lcom/android/htccontacts/app/ContactsListActivity;

    invoke-virtual {v2}, Lcom/android/htccontacts/app/ContactsListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/android/htccontacts/util/ContactsUtils;->getContactListOrderByLastFirst(Landroid/content/ContentResolver;)Z

    move-result v1

    .line 2720
    .local v1, isLastFirst:Z
    if-nez v1, :cond_2

    iget v2, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdxSortKey:I

    if-lez v2, :cond_2

    .line 2721
    iget v0, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdxSortKey:I

    .line 2728
    .end local v1           #isLastFirst:Z
    :cond_1
    :goto_0
    return v0

    .line 2723
    .restart local v1       #isLastFirst:Z
    :cond_2
    if-eqz v1, :cond_1

    iget v2, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdxSortKeyAlt:I

    if-lez v2, :cond_1

    .line 2724
    iget v0, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdxSortKeyAlt:I

    goto :goto_0
.end method

.method private getIndexerColumnIndex()I
    .locals 3

    .prologue
    .line 2699
    iget v0, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdxDisplayName:I

    .line 2701
    .local v0, index:I
    iget v2, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdxSortKey:I

    if-gez v2, :cond_0

    iget v2, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdxSortKeyAlt:I

    if-ltz v2, :cond_1

    .line 2702
    :cond_0
    iget-object v2, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->this$0:Lcom/android/htccontacts/app/ContactsListActivity;

    invoke-virtual {v2}, Lcom/android/htccontacts/app/ContactsListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/android/htccontacts/util/ContactsUtils;->getContactListOrderByLastFirst(Landroid/content/ContentResolver;)Z

    move-result v1

    .line 2703
    .local v1, isLastFirst:Z
    if-nez v1, :cond_2

    iget v2, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdxSortKey:I

    if-lez v2, :cond_2

    .line 2704
    iget v0, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdxSortKey:I

    .line 2711
    .end local v1           #isLastFirst:Z
    :cond_1
    :goto_0
    return v0

    .line 2706
    .restart local v1       #isLastFirst:Z
    :cond_2
    if-eqz v1, :cond_1

    iget v2, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdxSortKeyAlt:I

    if-lez v2, :cond_1

    .line 2707
    iget v0, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdxSortKeyAlt:I

    goto :goto_0
.end method

.method private getSubHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 2156
    if-nez p2, :cond_0

    .line 2157
    iget-object v1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x2090026

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 2160
    const v1, 0x208066a

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2175
    const v1, 0x2020010

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2176
    .local v0, label:Landroid/widget/TextView;
    const v1, 0x7f0a0042

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2178
    .end local v0           #label:Landroid/widget/TextView;
    :cond_0
    return-object p2
.end method

.method private updateIndexer(Landroid/database/Cursor;)V
    .locals 9
    .parameter "cursor"

    .prologue
    const/4 v8, 0x0

    .line 2621
    if-nez p1, :cond_1

    .line 2622
    iget-object v7, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIndexer:Lcom/android/htccontacts/widget/HtcAlphabetIndexer;

    if-eqz v7, :cond_0

    .line 2623
    iget-object v7, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIndexer:Lcom/android/htccontacts/widget/HtcAlphabetIndexer;

    invoke-virtual {v7, v8}, Lcom/android/htccontacts/widget/HtcAlphabetIndexer;->setCursor(Landroid/database/Cursor;)V

    .line 2673
    :cond_0
    :goto_0
    return-void

    .line 2628
    :cond_1
    invoke-direct {p0}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->getIndexerColumnIndex()I

    move-result v4

    .line 2629
    .local v4, newIndex:I
    iget-object v7, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIndexer:Lcom/android/htccontacts/widget/HtcAlphabetIndexer;

    if-nez v7, :cond_4

    .line 2630
    iget-object v7, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mAlphabet:Ljava/lang/String;

    invoke-virtual {p0, p1, v4, v7}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->getContactIndexer(Landroid/database/Cursor;ILjava/lang/CharSequence;)Lcom/android/htccontacts/widget/HtcAlphabetIndexer;

    move-result-object v7

    iput-object v7, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIndexer:Lcom/android/htccontacts/widget/HtcAlphabetIndexer;

    .line 2642
    :goto_1
    iget-object v5, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mSections:[Ljava/lang/String;

    .line 2643
    .local v5, oldSections:[Ljava/lang/String;
    invoke-interface {p1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 2644
    .local v0, bundle:Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 2645
    .local v1, counts:[I
    if-eqz v0, :cond_6

    const-string v7, "address_book_index_titles"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2646
    const-string v7, "address_book_index_titles"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 2648
    .local v6, sections:[Ljava/lang/String;
    iput-object v6, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mSections:[Ljava/lang/String;

    .line 2649
    const-string v7, "address_book_index_counts"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 2655
    .end local v6           #sections:[Ljava/lang/String;
    :goto_2
    iget-object v7, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIndexer:Lcom/android/htccontacts/widget/HtcAlphabetIndexer;

    instance-of v7, v7, Lcom/android/htccontacts/widget/HtcContactAlphabetSectionIndexer;

    if-eqz v7, :cond_2

    .line 2656
    iget-object v2, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIndexer:Lcom/android/htccontacts/widget/HtcAlphabetIndexer;

    check-cast v2, Lcom/android/htccontacts/widget/HtcContactAlphabetSectionIndexer;

    .line 2658
    .local v2, indexer:Lcom/android/htccontacts/widget/HtcContactAlphabetSectionIndexer;
    iget-object v7, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mSections:[Ljava/lang/String;

    invoke-virtual {v2, v7, v1}, Lcom/android/htccontacts/widget/HtcContactAlphabetSectionIndexer;->changeSections([Ljava/lang/String;[I)V

    .line 2663
    .end local v2           #indexer:Lcom/android/htccontacts/widget/HtcContactAlphabetSectionIndexer;
    :cond_2
    iget-object v7, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mSections:[Ljava/lang/String;

    if-eq v5, v7, :cond_3

    .line 2664
    iget-object v7, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->this$0:Lcom/android/htccontacts/app/ContactsListActivity;

    invoke-virtual {v7}, Lcom/android/htccontacts/app/ContactsListActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v3

    .line 2665
    .local v3, listView:Lcom/htc/widget/HtcListView;
    if-eqz v3, :cond_3

    .line 2666
    invoke-virtual {v3}, Lcom/htc/widget/HtcListView;->setFastScrollSectionsDirty()V

    .line 2670
    .end local v3           #listView:Lcom/htc/widget/HtcListView;
    :cond_3
    iput v4, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mSortIndexerColumnIdex:I

    .line 2671
    invoke-direct {p0}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->getGroupingColumnIndex()I

    move-result v7

    iput v7, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mGroupingColumnIndex:I

    goto :goto_0

    .line 2633
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #counts:[I
    .end local v5           #oldSections:[Ljava/lang/String;
    :cond_4
    iget v7, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mSortIndexerColumnIdex:I

    if-eq v4, v7, :cond_5

    .line 2634
    iget-object v7, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIndexer:Lcom/android/htccontacts/widget/HtcAlphabetIndexer;

    invoke-virtual {v7, v8}, Lcom/android/htccontacts/widget/HtcAlphabetIndexer;->setCursor(Landroid/database/Cursor;)V

    .line 2635
    iget-object v7, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mAlphabet:Ljava/lang/String;

    invoke-virtual {p0, p1, v4, v7}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->getContactIndexer(Landroid/database/Cursor;ILjava/lang/CharSequence;)Lcom/android/htccontacts/widget/HtcAlphabetIndexer;

    move-result-object v7

    iput-object v7, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIndexer:Lcom/android/htccontacts/widget/HtcAlphabetIndexer;

    goto :goto_1

    .line 2638
    :cond_5
    iget-object v7, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIndexer:Lcom/android/htccontacts/widget/HtcAlphabetIndexer;

    invoke-virtual {v7, p1}, Lcom/android/htccontacts/widget/HtcAlphabetIndexer;->setCursor(Landroid/database/Cursor;)V

    goto :goto_1

    .line 2652
    .restart local v0       #bundle:Landroid/os/Bundle;
    .restart local v1       #counts:[I
    .restart local v5       #oldSections:[Ljava/lang/String;
    :cond_6
    iput-object v8, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mSections:[Ljava/lang/String;

    goto :goto_2
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 2

    .prologue
    .line 2074
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->isShowSubHeader()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2075
    const/4 v0, 0x0

    .line 2077
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->areAllItemsEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method protected bindName(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;Ljava/lang/String;)V
    .locals 4
    .parameter "view"
    .parameter "context"
    .parameter "cursor"
    .parameter "cache"
    .parameter "accountType"

    .prologue
    .line 2219
    iget v1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdxDisplayName:I

    if-gez v1, :cond_0

    .line 2234
    :goto_0
    return-void

    .line 2221
    :cond_0
    iget v1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdxDisplayName:I

    iget-object v2, p4, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;->primaryBuffer:Landroid/database/CharArrayBuffer;

    invoke-interface {p3, v1, v2}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 2222
    iget-object v1, p4, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;->primaryBuffer:Landroid/database/CharArrayBuffer;

    iget v0, v1, Landroid/database/CharArrayBuffer;->sizeCopied:I

    .line 2223
    .local v0, size:I
    if-eqz v0, :cond_1

    .line 2224
    iget-object v1, p4, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    iget-object v2, p4, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;->primaryBuffer:Landroid/database/CharArrayBuffer;

    iget-object v2, v2, Landroid/database/CharArrayBuffer;->data:[C

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setPrimaryText([CII)V

    goto :goto_0

    .line 2226
    :cond_1
    if-eqz p5, :cond_2

    const-string v1, "DeviceOnly"

    invoke-virtual {v1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2228
    iget-object v1, p4, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    const v2, 0x7f0a0024

    invoke-virtual {v1, v2}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setPrimaryText(I)V

    goto :goto_0

    .line 2231
    :cond_2
    iget-object v1, p4, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    const v2, 0x7f0a0022

    invoke-virtual {v1, v2}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setPrimaryText(I)V

    goto :goto_0
.end method

.method protected bindPhoto(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;Ljava/lang/String;)V
    .locals 3
    .parameter "view"
    .parameter "context"
    .parameter "cursor"
    .parameter "cache"
    .parameter "accountType"

    .prologue
    .line 2323
    iget-object v1, p4, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItemQuickContactBadge:Lcom/htc/widget/HtcListItemQuickContactBadge;

    invoke-virtual {v1}, Lcom/htc/widget/HtcListItemQuickContactBadge;->getBadge()Lcom/htc/widget/QuickContactBadge;

    move-result-object v0

    .line 2324
    .local v0, badge:Lcom/htc/widget/QuickContactBadge;
    iget-object v1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->this$0:Lcom/android/htccontacts/app/ContactsListActivity;

    iget v1, v1, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    const/high16 v2, 0x100

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 2325
    invoke-virtual {p0, p3}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->getContactUri(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 2327
    :cond_0
    invoke-super {p0, p2, p3, v0, p5}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->bindPhoto(Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 2328
    return-void
.end method

.method protected bindPresence(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;)V
    .locals 4
    .parameter "view"
    .parameter "context"
    .parameter "cursor"
    .parameter "cache"

    .prologue
    .line 2303
    iget v2, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdPresenceId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdPresenceId:I

    invoke-interface {p3, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2304
    iget v2, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdPresenceId:I

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 2305
    .local v1, presence_id:I
    iget v2, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdChatCapability:I

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 2306
    .local v0, chatCapability:I
    const/4 v2, 0x0

    invoke-virtual {p4, v2}, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;->setPresenceViewVisibility(I)V

    .line 2307
    new-instance v2, Lcom/android/htccontacts/widget/ImPresence;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v0, v3}, Lcom/android/htccontacts/widget/ImPresence;-><init>(IIZ)V

    invoke-virtual {p4, v2}, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;->setPresenceStatus(Lcom/android/htccontacts/widget/ImPresence;)V

    .line 2315
    .end local v0           #chatCapability:I
    .end local v1           #presence_id:I
    :goto_0
    return-void

    .line 2309
    :cond_0
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isGlacierTMO()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2310
    const/4 v2, 0x0

    invoke-virtual {p4, v2}, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;->setPresenceStatus(Lcom/android/htccontacts/widget/ImPresence;)V

    goto :goto_0

    .line 2312
    :cond_1
    const/16 v2, 0x8

    invoke-virtual {p4, v2}, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;->setPresenceViewVisibility(I)V

    goto :goto_0
.end method

.method protected bindSource(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;Ljava/lang/String;)V
    .locals 0
    .parameter "view"
    .parameter "context"
    .parameter "cursor"
    .parameter "cache"
    .parameter "accountType"

    .prologue
    .line 2318
    return-void
.end method

.method protected bindStatus(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;Ljava/lang/String;)V
    .locals 17
    .parameter "view"
    .parameter "context"
    .parameter "cursor"
    .parameter "cache"
    .parameter "accountType"

    .prologue
    .line 2238
    if-eqz p5, :cond_0

    const-string v3, "DeviceOnly"

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2239
    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setSecondaryTextVisibility(I)V

    .line 2240
    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    const v4, 0x7f0a0025

    invoke-virtual {v3, v4}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setSecondaryText(I)V

    .line 2300
    :goto_0
    return-void

    .line 2242
    :cond_0
    if-eqz p5, :cond_1

    const-string v3, "com.anddroid.contacts.sim"

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2243
    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setSecondaryTextVisibility(I)V

    goto :goto_0

    .line 2246
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->this$0:Lcom/android/htccontacts/app/ContactsListActivity;

    iget-object v3, v3, Lcom/android/htccontacts/app/ContactsListActivity;->mStatusArray:Lcom/android/htccontacts/util/SparseLongArray;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdxID:I

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/htccontacts/util/SparseLongArray;->get(J)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;

    .line 2248
    .local v13, status:Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;
    if-eqz v13, :cond_6

    .line 2249
    iget-object v3, v13, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusMessage:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2250
    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setSecondaryTextVisibility(I)V

    .line 2251
    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setSecondaryText(Ljava/lang/String;)V

    goto :goto_0

    .line 2254
    :cond_2
    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setSecondaryTextVisibility(I)V

    .line 2255
    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    iget-object v4, v13, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusMessage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setSecondaryText(Ljava/lang/String;)V

    .line 2257
    iget-object v3, v13, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusPackage:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    iget v3, v13, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusIconRes:I

    if-eqz v3, :cond_5

    .line 2258
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v13, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v13, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusIconRes:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2260
    .local v11, key:Ljava/lang/String;
    sget-object v3, Lcom/android/htccontacts/app/ContactsListActivity;->mStatusIconCache:Ljava/util/HashMap;

    invoke-virtual {v3, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/drawable/Drawable;

    .line 2261
    .local v9, icon:Landroid/graphics/drawable/Drawable;
    if-nez v9, :cond_3

    .line 2263
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->this$0:Lcom/android/htccontacts/app/ContactsListActivity;

    invoke-virtual {v3}, Lcom/android/htccontacts/app/ContactsListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 2264
    .local v14, thisRes:Landroid/content/res/Resources;
    const v3, 0x7f090065

    invoke-virtual {v14, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    .line 2265
    .local v15, width:I
    const v3, 0x7f090066

    invoke-virtual {v14, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 2266
    .local v8, height:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->this$0:Lcom/android/htccontacts/app/ContactsListActivity;

    invoke-virtual {v3}, Lcom/android/htccontacts/app/ContactsListActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, v13, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v12

    .line 2267
    .local v12, packageRes:Landroid/content/res/Resources;
    iget v3, v13, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusIconRes:I

    invoke-static {v12, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 2268
    .local v10, iconBitmap:Landroid/graphics/Bitmap;
    if-eqz v10, :cond_3

    .line 2269
    add-int/lit8 v3, v15, 0xa

    const/4 v4, 0x1

    invoke-static {v10, v3, v8, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 2271
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v12, v10}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 2272
    .local v2, bitmapDrawable:Landroid/graphics/drawable/Drawable;
    new-instance v1, Landroid/graphics/drawable/InsetDrawable;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xa

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 2273
    .local v1, scaleDrawable:Landroid/graphics/drawable/Drawable;
    move-object v9, v1

    .line 2274
    sget-object v3, Lcom/android/htccontacts/app/ContactsListActivity;->mStatusIconCache:Ljava/util/HashMap;

    invoke-virtual {v3, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2281
    .end local v1           #scaleDrawable:Landroid/graphics/drawable/Drawable;
    .end local v2           #bitmapDrawable:Landroid/graphics/drawable/Drawable;
    .end local v8           #height:I
    .end local v10           #iconBitmap:Landroid/graphics/Bitmap;
    .end local v12           #packageRes:Landroid/content/res/Resources;
    .end local v14           #thisRes:Landroid/content/res/Resources;
    .end local v15           #width:I
    :cond_3
    :goto_1
    if-eqz v9, :cond_4

    .line 2282
    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v9, v4, v5, v6}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setSecondaryTextCompoundDrawableWithIntrinicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 2277
    :catch_0
    move-exception v7

    .line 2278
    .local v7, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "ContactsListActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to load image - package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v13, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusPackage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", back to the original way..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2285
    .end local v7           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_4
    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v3, v4, v5, v6, v0}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setSecondaryTextCompoundDrawableWithIntrinicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 2290
    .end local v9           #icon:Landroid/graphics/drawable/Drawable;
    .end local v11           #key:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v3, v4, v5, v6, v0}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setSecondaryTextCompoundDrawableWithIntrinicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 2295
    :cond_6
    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setSecondaryTextVisibility(I)V

    .line 2296
    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setSecondaryText(Ljava/lang/String;)V

    .line 2297
    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v3, v4, v5, v6, v0}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setSecondaryTextCompoundDrawableWithIntrinicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 17
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 2461
    if-nez p3, :cond_0

    .line 2462
    const-string v5, "ContactsListActivity"

    const-string v8, "bindView but given a null cursor! No bindView will be performed."

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2558
    :goto_0
    return-void

    .line 2466
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;

    .line 2467
    .local v6, cache:Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isTmousCustomization()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2469
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->isFirst()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2470
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->checkFirstItemTopRoundShow()Z

    move-result v15

    .line 2471
    .local v15, drawTop:Z
    invoke-virtual {v6, v15}, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;->setTopRound(Z)V

    .line 2472
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v6, v1}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->checkBottom(Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;Landroid/database/Cursor;)Z

    move-result v14

    .line 2473
    .local v14, drawBottom:Z
    move-object/from16 v0, p1

    instance-of v5, v0, Lcom/htc/widget/HtcListItem;

    if-eqz v5, :cond_1

    .line 2474
    const/4 v5, 0x1

    if-ne v5, v15, :cond_5

    const/4 v5, 0x1

    if-ne v5, v14, :cond_5

    move-object/from16 v5, p1

    .line 2475
    check-cast v5, Lcom/htc/widget/HtcListItem;

    const/16 v8, 0xd

    invoke-virtual {v5, v8}, Lcom/htc/widget/HtcListItem;->setRoundCorner(I)V

    .line 2509
    .end local v14           #drawBottom:Z
    .end local v15           #drawTop:Z
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->this$0:Lcom/android/htccontacts/app/ContactsListActivity;

    invoke-virtual {v5}, Lcom/android/htccontacts/app/ContactsListActivity;->isIndicatorEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2510
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->this$0:Lcom/android/htccontacts/app/ContactsListActivity;

    iget-object v5, v5, Lcom/android/htccontacts/app/ContactsListActivity;->mIndicatorArray:Lcom/android/htccontacts/util/SparseLongArray;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdxID:I

    move-object/from16 v0, p3

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v8, v9, v10}, Lcom/android/htccontacts/util/SparseLongArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 2512
    .local v16, indicatorCount:I
    move/from16 v0, v16

    invoke-virtual {v6, v0}, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;->setIndicatorCount(I)V

    .line 2513
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdxID:I

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v6, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;->contactId:J

    .line 2514
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mDoAddIndicatorRequest:Z

    if-eqz v5, :cond_3

    .line 2515
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 2516
    .local v7, b:Landroid/os/Bundle;
    const-string v5, "contactId"

    iget-wide v8, v6, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;->contactId:J

    invoke-virtual {v7, v5, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2517
    iget-wide v8, v6, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;->contactId:J

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-lez v5, :cond_2

    .line 2518
    iget-object v5, v6, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;->indicatorRequest:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    if-nez v5, :cond_c

    .line 2519
    new-instance v4, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->this$0:Lcom/android/htccontacts/app/ContactsListActivity;

    iget-object v5, v5, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    iget-wide v8, v6, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;->contactId:J

    invoke-direct/range {v4 .. v9}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;-><init>(Landroid/content/Context;Lcom/android/htccontacts/indicator/IndicatorResultListener;Landroid/os/Bundle;J)V

    .line 2521
    .local v4, indicatorRequest:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->this$0:Lcom/android/htccontacts/app/ContactsListActivity;

    iget-object v5, v5, Lcom/android/htccontacts/app/ContactsListActivity;->mIndicatorReqList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2523
    iput-object v4, v6, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;->indicatorRequest:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    .line 2527
    .end local v4           #indicatorRequest:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;
    :goto_2
    const/4 v5, -0x1

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdxStatusUpdateId:I

    if-eq v5, v8, :cond_2

    .line 2528
    iget-object v5, v6, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;->indicatorRequest:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdxStatusUpdateId:I

    move-object/from16 v0, p3

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->changeStatusId(J)V

    .line 2531
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->this$0:Lcom/android/htccontacts/app/ContactsListActivity;

    iget-object v8, v6, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;->indicatorRequest:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    invoke-virtual {v5, v8}, Lcom/android/htccontacts/app/ContactsListActivity;->addIndicatorRequest(Lcom/android/htccontacts/indicator/IndicatorRequest;)V

    .line 2547
    .end local v7           #b:Landroid/os/Bundle;
    .end local v16           #indicatorCount:I
    :cond_3
    const/4 v13, 0x0

    .line 2549
    .local v13, accountType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdxAccountType:I

    if-ltz v5, :cond_4

    .line 2550
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdxAccountType:I

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    :cond_4
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object v12, v6

    .line 2553
    invoke-virtual/range {v8 .. v13}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->bindName(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;Ljava/lang/String;)V

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object v12, v6

    .line 2554
    invoke-virtual/range {v8 .. v13}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->bindStatus(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;Ljava/lang/String;)V

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object v12, v6

    .line 2555
    invoke-virtual/range {v8 .. v13}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->bindSource(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;Ljava/lang/String;)V

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object v12, v6

    .line 2556
    invoke-virtual/range {v8 .. v13}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->bindPhoto(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;Ljava/lang/String;)V

    .line 2557
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v6}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->bindPresence(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;)V

    goto/16 :goto_0

    .line 2477
    .end local v13           #accountType:Ljava/lang/String;
    .restart local v14       #drawBottom:Z
    .restart local v15       #drawTop:Z
    :cond_5
    if-nez v15, :cond_6

    const/4 v5, 0x1

    if-ne v5, v14, :cond_6

    move-object/from16 v5, p1

    .line 2478
    check-cast v5, Lcom/htc/widget/HtcListItem;

    const/16 v8, 0xb

    invoke-virtual {v5, v8}, Lcom/htc/widget/HtcListItem;->setRoundCorner(I)V

    goto/16 :goto_1

    .line 2480
    :cond_6
    const/4 v5, 0x1

    if-ne v5, v15, :cond_7

    if-nez v14, :cond_7

    move-object/from16 v5, p1

    .line 2481
    check-cast v5, Lcom/htc/widget/HtcListItem;

    const/16 v8, 0xa

    invoke-virtual {v5, v8}, Lcom/htc/widget/HtcListItem;->setRoundCorner(I)V

    goto/16 :goto_1

    :cond_7
    move-object/from16 v5, p1

    .line 2484
    check-cast v5, Lcom/htc/widget/HtcListItem;

    const/16 v8, 0xc

    invoke-virtual {v5, v8}, Lcom/htc/widget/HtcListItem;->setRoundCorner(I)V

    goto/16 :goto_1

    .line 2489
    .end local v14           #drawBottom:Z
    .end local v15           #drawTop:Z
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v6, v1}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->checkTop(Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;Landroid/database/Cursor;)Z

    move-result v15

    .line 2490
    .restart local v15       #drawTop:Z
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v6, v1}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->checkBottom(Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;Landroid/database/Cursor;)Z

    move-result v14

    .line 2491
    .restart local v14       #drawBottom:Z
    move-object/from16 v0, p1

    instance-of v5, v0, Lcom/htc/widget/HtcListItem;

    if-eqz v5, :cond_1

    .line 2492
    const/4 v5, 0x1

    if-ne v5, v15, :cond_9

    const/4 v5, 0x1

    if-ne v5, v14, :cond_9

    move-object/from16 v5, p1

    .line 2493
    check-cast v5, Lcom/htc/widget/HtcListItem;

    const/16 v8, 0xd

    invoke-virtual {v5, v8}, Lcom/htc/widget/HtcListItem;->setRoundCorner(I)V

    goto/16 :goto_1

    .line 2495
    :cond_9
    if-nez v15, :cond_a

    const/4 v5, 0x1

    if-ne v5, v14, :cond_a

    move-object/from16 v5, p1

    .line 2496
    check-cast v5, Lcom/htc/widget/HtcListItem;

    const/16 v8, 0xb

    invoke-virtual {v5, v8}, Lcom/htc/widget/HtcListItem;->setRoundCorner(I)V

    goto/16 :goto_1

    .line 2498
    :cond_a
    const/4 v5, 0x1

    if-ne v5, v15, :cond_b

    if-nez v14, :cond_b

    move-object/from16 v5, p1

    .line 2499
    check-cast v5, Lcom/htc/widget/HtcListItem;

    const/16 v8, 0xa

    invoke-virtual {v5, v8}, Lcom/htc/widget/HtcListItem;->setRoundCorner(I)V

    goto/16 :goto_1

    :cond_b
    move-object/from16 v5, p1

    .line 2502
    check-cast v5, Lcom/htc/widget/HtcListItem;

    const/16 v8, 0xc

    invoke-virtual {v5, v8}, Lcom/htc/widget/HtcListItem;->setRoundCorner(I)V

    goto/16 :goto_1

    .line 2525
    .end local v14           #drawBottom:Z
    .end local v15           #drawTop:Z
    .restart local v7       #b:Landroid/os/Bundle;
    .restart local v16       #indicatorCount:I
    :cond_c
    iget-object v5, v6, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;->indicatorRequest:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-wide v8, v6, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;->contactId:J

    invoke-virtual {v5, v7, v8, v9}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->changePersonId(Landroid/os/Bundle;J)V

    goto/16 :goto_2
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    .line 2018
    iget-object v1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mCursor:Landroid/database/Cursor;

    if-ne p1, v1, :cond_0

    .line 2053
    :goto_0
    return-void

    .line 2021
    :cond_0
    iget-object v1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_1

    .line 2022
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mCursor:Landroid/database/Cursor;

    .line 2023
    .local v0, tmpCursor:Landroid/database/Cursor;
    iget-object v1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2024
    iget-object v1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 2025
    iget-object v1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->this$0:Lcom/android/htccontacts/app/ContactsListActivity;

    invoke-virtual {v1, v0}, Lcom/android/htccontacts/app/ContactsListActivity;->closeCursorInBackground(Landroid/database/Cursor;)V

    .line 2027
    .end local v0           #tmpCursor:Landroid/database/Cursor;
    :cond_1
    iput-object p1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mCursor:Landroid/database/Cursor;

    .line 2028
    if-eqz p1, :cond_2

    .line 2029
    iget-object v1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 2030
    iget-object v1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 2031
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mRowIDColumn:I

    .line 2032
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mDataValid:Z

    .line 2034
    invoke-virtual {p0}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->notifyDataSetChanged()V

    .line 2042
    :goto_1
    if-eqz p1, :cond_3

    .line 2043
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->updateIndex(Landroid/database/Cursor;)V

    .line 2044
    invoke-direct {p0, p1}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->updateIndexer(Landroid/database/Cursor;)V

    .line 2045
    iget-object v1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->this$0:Lcom/android/htccontacts/app/ContactsListActivity;

    invoke-virtual {v1, p1}, Lcom/android/htccontacts/app/ContactsListActivity;->ensureFastScrollEnabled(Landroid/database/Cursor;)V

    goto :goto_0

    .line 2036
    :cond_2
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mRowIDColumn:I

    .line 2037
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mDataValid:Z

    .line 2039
    invoke-virtual {p0}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->notifyDataSetInvalidated()V

    goto :goto_1

    .line 2050
    :cond_3
    const-string v1, "ContactsListActivity"

    const-string v2, "release updateIndexer"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2051
    invoke-direct {p0, p1}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->updateIndexer(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method protected checkFirstItemTopRoundShow()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2448
    iget-object v1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->this$0:Lcom/android/htccontacts/app/ContactsListActivity;

    iget v1, v1, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    const/high16 v2, 0x1000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->this$0:Lcom/android/htccontacts/app/ContactsListActivity;

    iget-boolean v1, v1, Lcom/android/htccontacts/app/ContactsListActivity;->mHeaderCreateNewItemExist:Z

    if-eqz v1, :cond_1

    .line 2456
    :cond_0
    :goto_0
    return v0

    .line 2452
    :cond_1
    invoke-virtual {p0}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->isShowSubHeader()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->this$0:Lcom/android/htccontacts/app/ContactsListActivity;

    invoke-virtual {v1}, Lcom/android/htccontacts/app/ContactsListActivity;->IsAddItemInSearchLayout()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2456
    :cond_2
    invoke-static {}, Lcom/android/htccontacts/util/ContactsUtils;->enableRoundCornerByProject()Z

    move-result v0

    goto :goto_0
.end method

.method protected generateHtcListItemBuilder(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Lcom/android/htccontacts/widget/HtcListItemBuilder;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 2193
    new-instance v0, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    const/16 v1, 0xc9

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Lcom/android/htccontacts/widget/HtcListItemBuilder;-><init>(Landroid/content/Context;II)V

    return-object v0
.end method

.method public final getAccountTypeIndex()I
    .locals 1

    .prologue
    .line 2767
    iget v0, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdxAccountType:I

    return v0
.end method

.method public getContactId(Landroid/database/Cursor;)J
    .locals 2
    .parameter "cursor"

    .prologue
    .line 1959
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1960
    iget v0, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdxID:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 1962
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method protected getContactIndexer(Landroid/database/Cursor;ILjava/lang/CharSequence;)Lcom/android/htccontacts/widget/HtcAlphabetIndexer;
    .locals 7
    .parameter "cursor"
    .parameter "sortedColumnIndex"
    .parameter "alphabet"

    .prologue
    .line 2676
    invoke-interface {p1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 2677
    .local v6, bundle:Landroid/os/Bundle;
    const/4 v0, 0x0

    .line 2680
    .local v0, indexer:Lcom/android/htccontacts/widget/HtcAlphabetIndexer;
    iget-boolean v1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mEnableSectionIndexer:Z

    if-eqz v1, :cond_1

    if-eqz v6, :cond_1

    const-string v1, "address_book_index_titles"

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2681
    const-string v1, "address_book_index_titles"

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2682
    const-string v1, "address_book_index_titles"

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2684
    .local v4, sections:[Ljava/lang/String;
    const-string v1, "address_book_index_counts"

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    .line 2685
    .local v5, counts:[I
    new-instance v0, Lcom/android/htccontacts/widget/HtcContactAlphabetSectionIndexer;

    .end local v0           #indexer:Lcom/android/htccontacts/widget/HtcAlphabetIndexer;
    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/htccontacts/widget/HtcContactAlphabetSectionIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;[Ljava/lang/String;[I)V

    .line 2696
    .end local v4           #sections:[Ljava/lang/String;
    .end local v5           #counts:[I
    .restart local v0       #indexer:Lcom/android/htccontacts/widget/HtcAlphabetIndexer;
    :goto_0
    return-object v0

    .line 2688
    :cond_0
    new-instance v0, Lcom/android/htccontacts/widget/HtcContactAlphabetSectionIndexer;

    .end local v0           #indexer:Lcom/android/htccontacts/widget/HtcAlphabetIndexer;
    invoke-direct {v0, p1, p2, p3}, Lcom/android/htccontacts/widget/HtcContactAlphabetSectionIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    .restart local v0       #indexer:Lcom/android/htccontacts/widget/HtcAlphabetIndexer;
    goto :goto_0

    .line 2693
    :cond_1
    new-instance v0, Lcom/android/htccontacts/widget/HtcContactAlphabetSectionIndexer;

    .end local v0           #indexer:Lcom/android/htccontacts/widget/HtcAlphabetIndexer;
    invoke-direct {v0, p1, p2, p3}, Lcom/android/htccontacts/widget/HtcContactAlphabetSectionIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    .restart local v0       #indexer:Lcom/android/htccontacts/widget/HtcAlphabetIndexer;
    goto :goto_0
.end method

.method public getContactUri(Landroid/database/Cursor;)Landroid/net/Uri;
    .locals 6
    .parameter "cursor"

    .prologue
    .line 1996
    const/4 v3, 0x0

    .line 1997
    .local v3, uri:Landroid/net/Uri;
    iget v5, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdxID:I

    if-gez v5, :cond_0

    move-object v4, v3

    .line 2009
    .end local v3           #uri:Landroid/net/Uri;
    .local v4, uri:Landroid/net/Uri;
    :goto_0
    return-object v4

    .line 2000
    .end local v4           #uri:Landroid/net/Uri;
    .restart local v3       #uri:Landroid/net/Uri;
    :cond_0
    iget v5, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdxID:I

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 2002
    .local v0, contactId:J
    iget v5, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdxLookupKey:I

    if-ltz v5, :cond_1

    .line 2003
    iget v5, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdxLookupKey:I

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2004
    .local v2, lookupKey:Ljava/lang/String;
    invoke-static {v0, v1, v2}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .end local v2           #lookupKey:Ljava/lang/String;
    :goto_1
    move-object v4, v3

    .line 2009
    .end local v3           #uri:Landroid/net/Uri;
    .restart local v4       #uri:Landroid/net/Uri;
    goto :goto_0

    .line 2007
    .end local v4           #uri:Landroid/net/Uri;
    .restart local v3       #uri:Landroid/net/Uri;
    :cond_1
    sget-object v5, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    goto :goto_1
.end method

.method public getCount()I
    .locals 3

    .prologue
    .line 2124
    invoke-super {p0}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->getCount()I

    move-result v0

    .line 2125
    .local v0, count:I
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->isShowSubHeader()Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 2126
    add-int/lit8 v0, v0, 0x1

    .line 2128
    .end local v0           #count:I
    :cond_0
    return v0
.end method

.method public getFirstSelectableItem([I)Z
    .locals 4
    .parameter "selectablePosition"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2099
    array-length v3, p1

    if-ge v3, v2, :cond_0

    .line 2100
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "int[] size must greater or equal than 2"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2102
    :cond_0
    invoke-super {p0}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->getCount()I

    move-result v0

    .line 2103
    .local v0, count:I
    if-gtz v0, :cond_1

    .line 2105
    const/4 v2, -0x1

    aput v2, p1, v1

    .line 2118
    :goto_0
    return v1

    .line 2108
    :cond_1
    invoke-virtual {p0}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->isShowSubHeader()Z

    move-result v3

    if-ne v2, v3, :cond_2

    .line 2111
    aput v2, p1, v1

    move v1, v2

    .line 2112
    goto :goto_0

    .line 2117
    :cond_2
    aput v1, p1, v1

    move v1, v2

    .line 2118
    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 2139
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->isShowSubHeader()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2140
    add-int/lit8 v0, p1, -0x1

    invoke-super {p0, v0}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 2142
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 2146
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->isShowSubHeader()Z

    move-result v1

    if-ne v0, v1, :cond_1

    .line 2147
    if-nez p1, :cond_0

    .line 2148
    const/4 v0, 0x0

    .line 2152
    :goto_0
    return v0

    .line 2150
    :cond_0
    add-int/lit8 v0, p1, -0x1

    invoke-super {p0, v0}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->getItemViewType(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2152
    :cond_1
    invoke-super {p0, p1}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->getItemViewType(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getPositionForSection(I)I
    .locals 2
    .parameter "section"

    .prologue
    .line 2742
    iget-object v1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIndexer:Lcom/android/htccontacts/widget/HtcAlphabetIndexer;

    if-nez v1, :cond_1

    .line 2743
    invoke-virtual {p0}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 2744
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 2746
    const/4 v1, 0x0

    .line 2751
    .end local v0           #cursor:Landroid/database/Cursor;
    :goto_0
    return v1

    .line 2748
    .restart local v0       #cursor:Landroid/database/Cursor;
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->updateIndexer(Landroid/database/Cursor;)V

    .line 2751
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_1
    iget-object v1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIndexer:Lcom/android/htccontacts/widget/HtcAlphabetIndexer;

    invoke-virtual {v1, p1}, Lcom/android/htccontacts/widget/HtcAlphabetIndexer;->getPositionForSection(I)I

    move-result v1

    goto :goto_0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 2755
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIndexer:Lcom/android/htccontacts/widget/HtcAlphabetIndexer;

    if-nez v0, :cond_0

    .line 2756
    const/4 v0, -0x1

    .line 2758
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIndexer:Lcom/android/htccontacts/widget/HtcAlphabetIndexer;

    invoke-virtual {v0, p1}, Lcom/android/htccontacts/widget/HtcAlphabetIndexer;->getSectionForPosition(I)I

    move-result v0

    goto :goto_0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2732
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIndexer:Lcom/android/htccontacts/widget/HtcAlphabetIndexer;

    if-nez v0, :cond_0

    .line 2733
    const/4 v0, 0x0

    .line 2738
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIndexer:Lcom/android/htccontacts/widget/HtcAlphabetIndexer;

    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcAlphabetIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 2183
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->isShowSubHeader()Z

    move-result v1

    if-ne v0, v1, :cond_1

    .line 2184
    if-nez p1, :cond_0

    .line 2185
    invoke-direct {p0, p1, p2, p3}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->getSubHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2189
    :goto_0
    return-object v0

    .line 2187
    :cond_0
    add-int/lit8 v0, p1, -0x1

    invoke-super {p0, v0, p2, p3}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 2189
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 2135
    const/4 v0, 0x2

    return v0
.end method

.method protected initContactListItemCache(Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;Lcom/android/htccontacts/widget/HtcListItemBuilder;)V
    .locals 2
    .parameter "cache"
    .parameter "builder"

    .prologue
    .line 2197
    invoke-virtual {p2}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->getQuickContactBadge()Lcom/htc/widget/HtcListItemQuickContactBadge;

    move-result-object v0

    iput-object v0, p1, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItemQuickContactBadge:Lcom/htc/widget/HtcListItemQuickContactBadge;

    .line 2198
    invoke-virtual {p2}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->get2LineText()Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    .line 2199
    iget-object v0, p1, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setSecondaryText(Ljava/lang/String;)V

    .line 2200
    invoke-virtual {p2}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->getImageButton()Lcom/htc/widget/HtcListItemImageButton;

    move-result-object v0

    iput-object v0, p1, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mHtcListItemImageButton:Lcom/htc/widget/HtcListItemImageButton;

    .line 2201
    return-void
.end method

.method public isEnabled(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 2085
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->isShowSubHeader()Z

    move-result v1

    if-ne v0, v1, :cond_1

    .line 2086
    if-nez p1, :cond_0

    .line 2087
    const/4 v0, 0x0

    .line 2091
    :goto_0
    return v0

    .line 2089
    :cond_0
    add-int/lit8 v0, p1, -0x1

    invoke-super {p0, v0}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->isEnabled(I)Z

    move-result v0

    goto :goto_0

    .line 2091
    :cond_1
    invoke-super {p0, p1}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->isEnabled(I)Z

    move-result v0

    goto :goto_0
.end method

.method protected isHideSubHeaderIfEmpty()Z
    .locals 1

    .prologue
    .line 2068
    iget-boolean v0, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIsEnableHideSubHeaderIfEmpty:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 2069
    const/4 v0, 0x1

    .line 2071
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMyContactItem(Landroid/database/Cursor;)Z
    .locals 2
    .parameter "cursor"

    .prologue
    .line 1967
    iget v1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdxAccountType:I

    if-ltz v1, :cond_0

    .line 1968
    iget v1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdxAccountType:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1969
    .local v0, accountType:Ljava/lang/String;
    const-string v1, "DeviceOnly"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1970
    const/4 v1, 0x1

    .line 1973
    .end local v0           #accountType:Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected isShowSubHeader()Z
    .locals 1

    .prologue
    .line 2081
    iget-boolean v0, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIsSubHeaderEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->isHideSubHeaderIfEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSimContactItem(Landroid/database/Cursor;)Z
    .locals 2
    .parameter "cursor"

    .prologue
    .line 1984
    iget v1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdxAccountType:I

    if-ltz v1, :cond_0

    .line 1985
    iget v1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdxAccountType:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1986
    .local v0, accountType:Ljava/lang/String;
    const-string v1, "com.anddroid.contacts.sim"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1987
    const/4 v1, 0x1

    .line 1990
    .end local v0           #accountType:Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected newCache()Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;
    .locals 2

    .prologue
    .line 2056
    new-instance v0, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;

    iget-object v1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->this$0:Lcom/android/htccontacts/app/ContactsListActivity;

    invoke-direct {v0, v1}, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;-><init>(Lcom/android/htccontacts/app/ContactsListActivity;)V

    return-object v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 2205
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->generateHtcListItemBuilder(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Lcom/android/htccontacts/widget/HtcListItemBuilder;

    move-result-object v0

    .line 2206
    .local v0, builder:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    invoke-virtual {p0}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->newCache()Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;

    move-result-object v1

    .line 2208
    .local v1, cache:Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;
    invoke-virtual {p0, v1, v0}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->initContactListItemCache(Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;Lcom/android/htccontacts/widget/HtcListItemBuilder;)V

    .line 2210
    iget-object v2, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->this$0:Lcom/android/htccontacts/app/ContactsListActivity;

    #getter for: Lcom/android/htccontacts/app/ContactsListActivity;->mRefCacheList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/htccontacts/app/ContactsListActivity;->access$400(Lcom/android/htccontacts/app/ContactsListActivity;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2211
    iget-object v2, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->this$0:Lcom/android/htccontacts/app/ContactsListActivity;

    iget-object v2, v2, Lcom/android/htccontacts/app/ContactsListActivity;->mIndicatorArray:Lcom/android/htccontacts/util/SparseLongArray;

    invoke-virtual {v2, v1}, Lcom/android/htccontacts/util/SparseLongArray;->registerObserver(Lcom/android/htccontacts/util/SparseLongArray$ArrayObserver;)V

    .line 2212
    iget-object v2, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->this$0:Lcom/android/htccontacts/app/ContactsListActivity;

    iget-object v2, v2, Lcom/android/htccontacts/app/ContactsListActivity;->mStatusArray:Lcom/android/htccontacts/util/SparseLongArray;

    invoke-virtual {v2, v1}, Lcom/android/htccontacts/util/SparseLongArray;->registerObserver(Lcom/android/htccontacts/util/SparseLongArray$ArrayObserver;)V

    .line 2214
    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setTag(Ljava/lang/Object;)V

    .line 2215
    return-object v0
.end method

.method protected onContentChanged()V
    .locals 4

    .prologue
    .line 2593
    iget-object v2, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->this$0:Lcom/android/htccontacts/app/ContactsListActivity;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/htccontacts/app/ContactsListActivity;->mIsDirty:Z

    .line 2596
    iget-object v2, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->this$0:Lcom/android/htccontacts/app/ContactsListActivity;

    iget-boolean v2, v2, Lcom/android/htccontacts/app/BaseActivity;->mIsForegroundActivity:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mScrollState:I

    if-nez v2, :cond_1

    .line 2598
    iget-object v2, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->this$0:Lcom/android/htccontacts/app/ContactsListActivity;

    invoke-virtual {v2}, Lcom/android/htccontacts/app/ContactsListActivity;->getFilterText()Ljava/lang/String;

    move-result-object v0

    .line 2599
    .local v0, filterText:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2607
    iget-object v2, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->this$0:Lcom/android/htccontacts/app/ContactsListActivity;

    invoke-virtual {v2}, Lcom/android/htccontacts/app/ContactsListActivity;->startQuery()V

    .line 2616
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->this$0:Lcom/android/htccontacts/app/ContactsListActivity;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/htccontacts/app/ContactsListActivity;->mIsDirty:Z

    .line 2618
    .end local v0           #filterText:Ljava/lang/String;
    :cond_1
    return-void

    .line 2610
    .restart local v0       #filterText:Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->this$0:Lcom/android/htccontacts/app/ContactsListActivity;

    invoke-virtual {v2}, Lcom/android/htccontacts/app/ContactsListActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    .line 2611
    .local v1, listView:Lcom/htc/widget/HtcListView;
    if-eqz v1, :cond_0

    .line 2612
    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcListView;->setFilterText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onScroll(Lcom/htc/widget/HtcAbsListView;III)V
    .locals 0
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 2571
    return-void
.end method

.method public onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 2
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 2574
    invoke-super {p0, p1, p2}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V

    .line 2576
    if-eqz p2, :cond_0

    .line 2577
    iput p2, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mScrollState:I

    .line 2578
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->this$0:Lcom/android/htccontacts/app/ContactsListActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/app/ContactsListActivity;->pauseIndicator()V

    .line 2579
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mDoAddIndicatorRequest:Z

    .line 2589
    :goto_0
    return-void

    .line 2581
    :cond_0
    iput p2, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mScrollState:I

    .line 2583
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mStartQueryIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 2584
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mRestartIndicatorIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 2586
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mStartQueryIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 2587
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mRestartIndicatorIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    goto :goto_0
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 3
    .parameter "constraint"

    .prologue
    .line 1803
    const/4 v0, 0x0

    .line 1804
    .local v0, cursor:Landroid/database/Cursor;
    iget-object v1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->this$0:Lcom/android/htccontacts/app/ContactsListActivity;

    iget v1, v1, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    const/high16 v2, 0x2000

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    .line 1805
    iget-object v1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->this$0:Lcom/android/htccontacts/app/ContactsListActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/htccontacts/app/ContactsListActivity;->doFilter(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1806
    iget-object v1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->this$0:Lcom/android/htccontacts/app/ContactsListActivity;

    invoke-virtual {v1, v0}, Lcom/android/htccontacts/app/ContactsListActivity;->onFilterComplete(Landroid/database/Cursor;)V

    .line 1808
    :cond_0
    return-object v0
.end method

.method public setAutoHideSubHeaderEnabled(Z)V
    .locals 0
    .parameter "isEnabled"

    .prologue
    .line 2064
    iput-boolean p1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIsEnableHideSubHeaderIfEmpty:Z

    .line 2065
    return-void
.end method

.method public setDoAddIndicatorRequest(Z)V
    .locals 0
    .parameter "state"

    .prologue
    .line 2565
    iput-boolean p1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mDoAddIndicatorRequest:Z

    .line 2566
    return-void
.end method

.method public setSubHeaderEnabled(Z)V
    .locals 0
    .parameter "isEnabled"

    .prologue
    .line 2060
    iput-boolean p1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIsSubHeaderEnabled:Z

    .line 2061
    return-void
.end method

.method protected updateIndex(Landroid/database/Cursor;)V
    .locals 4
    .parameter "cursor"

    .prologue
    const/4 v3, -0x1

    .line 1889
    if-nez p1, :cond_0

    .line 1956
    :goto_0
    return-void

    .line 1894
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->this$0:Lcom/android/htccontacts/app/ContactsListActivity;

    invoke-virtual {v1}, Lcom/android/htccontacts/app/ContactsListActivity;->getProjectionForQuery()[Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/htccontacts/app/ContactsListActivity;->PHONES_PROJECTION:[Ljava/lang/String;

    if-ne v1, v2, :cond_1

    .line 1895
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdxID:I

    .line 1896
    const-string v1, "display_name"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdxDisplayName:I

    .line 1897
    const/4 v1, 0x7

    iput v1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdxAccountType:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1940
    :goto_1
    :try_start_1
    const-string v1, "status_update_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdxStatusUpdateId:I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1948
    :goto_2
    :try_start_2
    const-string v1, "contact_presence"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdPresenceId:I

    .line 1949
    const-string v1, "contact_chat_capability"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdChatCapability:I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1951
    :catch_0
    move-exception v0

    .line 1952
    .local v0, e:Ljava/lang/IllegalArgumentException;
    iput v3, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdPresenceId:I

    .line 1953
    const-string v1, "ContactsListActivity"

    const-string v2, "presence column is not available... The presence will not be shown"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1899
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :cond_1
    :try_start_3
    iget-object v1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->this$0:Lcom/android/htccontacts/app/ContactsListActivity;

    invoke-virtual {v1}, Lcom/android/htccontacts/app/ContactsListActivity;->getProjectionForQuery()[Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/htccontacts/app/ContactsListActivity;->LEGACY_PEOPLE_PROJECTION:[Ljava/lang/String;

    if-ne v1, v2, :cond_2

    .line 1900
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdxID:I

    .line 1901
    const-string v1, "starred"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdxStarred:I

    .line 1902
    const-string v1, "display_name"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdxDisplayName:I
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 1936
    :catch_1
    move-exception v0

    .line 1937
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "ContactsListActivity"

    const-string v2, "Failed to get column index for cursor !!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1904
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :cond_2
    :try_start_4
    iget-object v1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->this$0:Lcom/android/htccontacts/app/ContactsListActivity;

    invoke-virtual {v1}, Lcom/android/htccontacts/app/ContactsListActivity;->getProjectionForQuery()[Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/htccontacts/app/ContactsListActivity;->LEGACY_POSTALS_PROJECTION:[Ljava/lang/String;

    if-ne v1, v2, :cond_3

    .line 1905
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdxID:I

    .line 1906
    const-string v1, "data"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdxDisplayName:I

    goto :goto_1

    .line 1914
    :cond_3
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdxID:I

    .line 1915
    const-string v1, "display_name"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdxDisplayName:I

    .line 1916
    const-string v1, "starred"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdxStarred:I

    .line 1918
    const-string v1, "photo_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->mIdxPhotoId:I

    .line 1919
    const-string v1, "has_phone_number"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdxHasPhoneNum:I

    .line 1920
    const-string v1, "lookup"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdxLookupKey:I

    .line 1922
    const-string v1, "ext_account_Type"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdxAccountType:I

    .line 1924
    const-string v1, "data1"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mData1_Idx:I

    .line 1925
    const-string v1, "data2"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mData2_Idx:I

    .line 1926
    const-string v1, "data3"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mData3_Idx:I

    .line 1927
    const-string v1, "display_title"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mDisplayTitileIdx:I

    .line 1928
    const-string v1, "mimetype"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mMimetypeIdx:I

    .line 1930
    const-string v1, "snippet"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mSnippetIdx:I

    .line 1931
    const-string v1, "sort_key"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdxSortKey:I

    .line 1932
    const-string v1, "sort_key_alt"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdxSortKeyAlt:I
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    .line 1942
    :catch_2
    move-exception v0

    .line 1943
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    iput v3, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdxStatusUpdateId:I

    .line 1944
    const-string v1, "ContactsListActivity"

    const-string v2, "Status update column is not available... The status will not be shown"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public updateIndicator()V
    .locals 2

    .prologue
    .line 1883
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mRestartIndicatorIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 1885
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mRestartIndicatorIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 1886
    return-void
.end method
