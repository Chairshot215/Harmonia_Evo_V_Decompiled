.class Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "ContactDetailMailActivity.java"

# interfaces
.implements Lcom/htc/widget/InsertNewListAdapterInterface;
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ContactDetailMailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MailListAdapter"
.end annotation


# instance fields
.field private mAlphabet:Ljava/lang/String;

.field protected mIdxRecieveDate:I

.field private mIndexer:Lcom/android/htccontacts/widget/DateIndexer;

.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/htccontacts/ContactDetailMailActivity;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/ContactDetailMailActivity;Landroid/content/Context;ILandroid/database/Cursor;)V
    .locals 4
    .parameter
    .parameter "context"
    .parameter "resource"
    .parameter "cursor"

    .prologue
    .line 1185
    iput-object p1, p0, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;->this$0:Lcom/android/htccontacts/ContactDetailMailActivity;

    .line 1186
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 1187
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 1188
    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/htccontacts/ContactDetailMailActivity;->access$700(Lcom/android/htccontacts/ContactDetailMailActivity;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x1040419

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;->mAlphabet:Ljava/lang/String;

    .line 1189
    if-eqz p4, :cond_0

    .line 1190
    const-string v0, "_date"

    invoke-interface {p4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;->mIdxRecieveDate:I

    .line 1191
    new-instance v0, Lcom/android/htccontacts/widget/DateIndexer;

    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/htccontacts/ContactDetailMailActivity;->access$800(Lcom/android/htccontacts/ContactDetailMailActivity;)Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;->mIdxRecieveDate:I

    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;->mAlphabet:Ljava/lang/String;

    invoke-direct {v0, v1, p4, v2, v3}, Lcom/android/htccontacts/widget/DateIndexer;-><init>(Landroid/content/Context;Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;->mIndexer:Lcom/android/htccontacts/widget/DateIndexer;

    .line 1193
    :cond_0
    return-void
.end method

.method private generateHtcListItemBuilder(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Lcom/android/htccontacts/widget/HtcListItemBuilder;
    .locals 2
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 1435
    new-instance v0, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    const/16 v1, 0x6a

    invoke-direct {v0, p1, v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;-><init>(Landroid/content/Context;I)V

    .line 1437
    .local v0, builder:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    return-object v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 16
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 1446
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/ContactDetailMailActivity$MailListItemCache;

    .line 1448
    .local v1, cache:Lcom/android/htccontacts/ContactDetailMailActivity$MailListItemCache;
    const/4 v13, 0x3

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1449
    .local v11, subject:Ljava/lang/String;
    const/16 v13, 0xf

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1450
    .local v9, provider:Ljava/lang/String;
    const/4 v13, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1451
    .local v2, date:J
    const/4 v13, 0x5

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 1452
    .local v5, isRead:I
    const/16 v13, 0x9

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1453
    .local v12, subjtype:Ljava/lang/String;
    const/16 v13, 0xb

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 1454
    .local v4, incAttachment:I
    const/16 v13, 0xd

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 1455
    .local v8, priority:I
    const/16 v13, 0xe

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1456
    .local v7, meetingFlag:I
    const/16 v13, 0xc

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 1459
    .local v6, mailact:I
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 1460
    iget-object v13, v1, Lcom/android/htccontacts/ContactDetailMailActivity$MailListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setPrimaryText(Ljava/lang/String;)V

    .line 1466
    :goto_0
    if-lez v5, :cond_1

    .line 1467
    iget-object v13, v1, Lcom/android/htccontacts/ContactDetailMailActivity$MailListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    const v14, 0x2030036

    invoke-virtual {v13, v14}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setPrimaryTextStyle(I)V

    .line 1474
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;->this$0:Lcom/android/htccontacts/ContactDetailMailActivity;

    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/android/htccontacts/ContactDetailMailActivity;->access$1200(Lcom/android/htccontacts/ContactDetailMailActivity;)Landroid/content/Context;

    move-result-object v13

    const/4 v14, 0x1

    invoke-static {v13, v2, v3, v14}, Lcom/android/htccontacts/util/TimeUtils;->getTimeOrRelativeDateStringUsingSystemFormat(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v10

    .line 1476
    .local v10, relativeDayString:Ljava/lang/String;
    iget-object v13, v1, Lcom/android/htccontacts/ContactDetailMailActivity$MailListItemCache;->mListItem7BadgesStamp:Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;

    invoke-virtual {v13, v10}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->setTextStamp(Ljava/lang/String;)V

    .line 1478
    iget-object v13, v1, Lcom/android/htccontacts/ContactDetailMailActivity$MailListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    invoke-virtual {v13, v9}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setSecondaryText(Ljava/lang/String;)V

    .line 1481
    packed-switch v6, :pswitch_data_0

    .line 1491
    iget-object v13, v1, Lcom/android/htccontacts/ContactDetailMailActivity$MailListItemCache;->mListItem7BadgesStamp:Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->setBadgeState(IZ)V

    .line 1492
    iget-object v13, v1, Lcom/android/htccontacts/ContactDetailMailActivity$MailListItemCache;->mListItem7BadgesStamp:Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->setBadgeState(IZ)V

    .line 1497
    :goto_2
    if-nez v7, :cond_2

    .line 1498
    iget-object v13, v1, Lcom/android/htccontacts/ContactDetailMailActivity$MailListItemCache;->mListItem7BadgesStamp:Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;

    const/4 v14, 0x2

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->setBadgeState(IZ)V

    .line 1505
    :goto_3
    packed-switch v8, :pswitch_data_1

    .line 1515
    :pswitch_0
    iget-object v13, v1, Lcom/android/htccontacts/ContactDetailMailActivity$MailListItemCache;->mListItem7BadgesStamp:Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;

    const/4 v14, 0x4

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->setBadgeState(IZ)V

    .line 1516
    iget-object v13, v1, Lcom/android/htccontacts/ContactDetailMailActivity$MailListItemCache;->mListItem7BadgesStamp:Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;

    const/4 v14, 0x3

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->setBadgeState(IZ)V

    .line 1521
    :goto_4
    if-nez v4, :cond_3

    .line 1522
    iget-object v13, v1, Lcom/android/htccontacts/ContactDetailMailActivity$MailListItemCache;->mListItem7BadgesStamp:Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;

    const/4 v14, 0x5

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->setBadgeState(IZ)V

    .line 1527
    :goto_5
    return-void

    .line 1462
    .end local v10           #relativeDayString:Ljava/lang/String;
    :cond_0
    iget-object v13, v1, Lcom/android/htccontacts/ContactDetailMailActivity$MailListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    invoke-virtual {v13, v11}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setPrimaryText(Ljava/lang/String;)V

    goto :goto_0

    .line 1469
    :cond_1
    iget-object v13, v1, Lcom/android/htccontacts/ContactDetailMailActivity$MailListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    const v14, 0x2030037

    invoke-virtual {v13, v14}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setPrimaryTextStyle(I)V

    goto :goto_1

    .line 1483
    .restart local v10       #relativeDayString:Ljava/lang/String;
    :pswitch_1
    iget-object v13, v1, Lcom/android/htccontacts/ContactDetailMailActivity$MailListItemCache;->mListItem7BadgesStamp:Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->setBadgeState(IZ)V

    .line 1484
    iget-object v13, v1, Lcom/android/htccontacts/ContactDetailMailActivity$MailListItemCache;->mListItem7BadgesStamp:Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->setBadgeState(IZ)V

    goto :goto_2

    .line 1487
    :pswitch_2
    iget-object v13, v1, Lcom/android/htccontacts/ContactDetailMailActivity$MailListItemCache;->mListItem7BadgesStamp:Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->setBadgeState(IZ)V

    .line 1488
    iget-object v13, v1, Lcom/android/htccontacts/ContactDetailMailActivity$MailListItemCache;->mListItem7BadgesStamp:Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->setBadgeState(IZ)V

    goto :goto_2

    .line 1501
    :cond_2
    iget-object v13, v1, Lcom/android/htccontacts/ContactDetailMailActivity$MailListItemCache;->mListItem7BadgesStamp:Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;

    const/4 v14, 0x2

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->setBadgeState(IZ)V

    goto :goto_3

    .line 1507
    :pswitch_3
    iget-object v13, v1, Lcom/android/htccontacts/ContactDetailMailActivity$MailListItemCache;->mListItem7BadgesStamp:Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;

    const/4 v14, 0x4

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->setBadgeState(IZ)V

    .line 1508
    iget-object v13, v1, Lcom/android/htccontacts/ContactDetailMailActivity$MailListItemCache;->mListItem7BadgesStamp:Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;

    const/4 v14, 0x3

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->setBadgeState(IZ)V

    goto :goto_4

    .line 1511
    :pswitch_4
    iget-object v13, v1, Lcom/android/htccontacts/ContactDetailMailActivity$MailListItemCache;->mListItem7BadgesStamp:Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;

    const/4 v14, 0x4

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->setBadgeState(IZ)V

    .line 1512
    iget-object v13, v1, Lcom/android/htccontacts/ContactDetailMailActivity$MailListItemCache;->mListItem7BadgesStamp:Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;

    const/4 v14, 0x3

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->setBadgeState(IZ)V

    goto :goto_4

    .line 1525
    :cond_3
    iget-object v13, v1, Lcom/android/htccontacts/ContactDetailMailActivity$MailListItemCache;->mListItem7BadgesStamp:Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;

    const/4 v14, 0x5

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->setBadgeState(IZ)V

    goto :goto_5

    .line 1481
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1505
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 5
    .parameter "cursor"

    .prologue
    .line 1367
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;->mCursor:Landroid/database/Cursor;

    if-ne p1, v1, :cond_1

    .line 1400
    :cond_0
    :goto_0
    return-void

    .line 1370
    :cond_1
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_2

    .line 1371
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;->mCursor:Landroid/database/Cursor;

    .line 1372
    .local v0, tmpCursor:Landroid/database/Cursor;
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1373
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1374
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;->this$0:Lcom/android/htccontacts/ContactDetailMailActivity;

    invoke-virtual {v1, v0}, Lcom/android/htccontacts/ContactDetailMailActivity;->closeCursorInBackground(Landroid/database/Cursor;)V

    .line 1376
    .end local v0           #tmpCursor:Landroid/database/Cursor;
    :cond_2
    iput-object p1, p0, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;->mCursor:Landroid/database/Cursor;

    .line 1377
    if-eqz p1, :cond_3

    .line 1378
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 1379
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1380
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;->mRowIDColumn:I

    .line 1381
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;->mDataValid:Z

    .line 1383
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;->notifyDataSetChanged()V

    .line 1391
    :goto_1
    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v2, "2.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1392
    if-eqz p1, :cond_0

    .line 1393
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;->updateIndexer(Landroid/database/Cursor;)V

    .line 1394
    if-eqz p1, :cond_0

    .line 1395
    const-string v1, "_date"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;->mIdxRecieveDate:I

    .line 1396
    new-instance v1, Lcom/android/htccontacts/widget/DateIndexer;

    iget-object v2, p0, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;->this$0:Lcom/android/htccontacts/ContactDetailMailActivity;

    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/htccontacts/ContactDetailMailActivity;->access$1000(Lcom/android/htccontacts/ContactDetailMailActivity;)Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;->mIdxRecieveDate:I

    iget-object v4, p0, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;->mAlphabet:Ljava/lang/String;

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/android/htccontacts/widget/DateIndexer;-><init>(Landroid/content/Context;Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    iput-object v1, p0, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;->mIndexer:Lcom/android/htccontacts/widget/DateIndexer;

    goto :goto_0

    .line 1385
    :cond_3
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;->mRowIDColumn:I

    .line 1386
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;->mDataValid:Z

    .line 1388
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;->notifyDataSetInvalidated()V

    goto :goto_1
.end method

.method public cleanFlag(Landroid/database/Cursor;)I
    .locals 9
    .parameter "cursor"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 1262
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1263
    .local v2, messageId:J
    iget-object v6, p0, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;->this$0:Lcom/android/htccontacts/ContactDetailMailActivity;

    invoke-virtual {v6}, Lcom/android/htccontacts/ContactDetailMailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1264
    .local v4, resolver:Landroid/content/ContentResolver;
    const-string v6, "content://mail/messages/addtrack"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1265
    .local v0, builder:Landroid/net/Uri$Builder;
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1266
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1267
    .local v1, cv:Landroid/content/ContentValues;
    const-string v6, "_flags"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1268
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v4, v6, v1, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 1270
    .local v5, updateRow:I
    return v5
.end method

.method public deleteMail(Landroid/database/Cursor;)I
    .locals 7
    .parameter "cursor"

    .prologue
    const/4 v6, 0x0

    .line 1222
    iget-object v4, p0, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;->this$0:Lcom/android/htccontacts/ContactDetailMailActivity;

    invoke-virtual {v4}, Lcom/android/htccontacts/ContactDetailMailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1223
    .local v3, resolver:Landroid/content/ContentResolver;
    const/4 v4, 0x0

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 1225
    .local v1, messageId:J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://mail/deleteMessage/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1226
    .local v0, mailUri:Landroid/net/Uri;
    invoke-virtual {v3, v0, v6, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    return v4
.end method

.method public flagThisMessage(Landroid/database/Cursor;)I
    .locals 9
    .parameter "cursor"

    .prologue
    const/4 v8, 0x0

    .line 1249
    const/4 v6, 0x0

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1250
    .local v2, messageId:J
    iget-object v6, p0, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;->this$0:Lcom/android/htccontacts/ContactDetailMailActivity;

    invoke-virtual {v6}, Lcom/android/htccontacts/ContactDetailMailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1251
    .local v4, resolver:Landroid/content/ContentResolver;
    const-string v6, "content://mail/messages/addtrack"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1252
    .local v0, builder:Landroid/net/Uri$Builder;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1253
    .local v1, cv:Landroid/content/ContentValues;
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1254
    const-string v6, "_flags"

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1255
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v4, v6, v1, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 1257
    .local v5, updateRow:I
    return v5
.end method

.method public getFlag(Landroid/database/Cursor;)I
    .locals 1
    .parameter "cursor"

    .prologue
    .line 1278
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getForwardIntent(Landroid/database/Cursor;)Landroid/content/Intent;
    .locals 5
    .parameter "cursor"

    .prologue
    .line 1332
    const/4 v3, 0x0

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 1333
    .local v1, messageId:J
    const/4 v0, 0x0

    .line 1335
    .local v0, forwardIntent:Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    .end local v0           #forwardIntent:Landroid/content/Intent;
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1336
    .restart local v0       #forwardIntent:Landroid/content/Intent;
    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1337
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://mail/messages/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1338
    const-string v3, "cmd"

    const-string v4, "forward"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1340
    return-object v0
.end method

.method public getInsertView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1530
    if-nez p1, :cond_2

    .line 1532
    const v2, 0x7f0a01f2

    .line 1533
    .local v2, textId:I
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;->this$0:Lcom/android/htccontacts/ContactDetailMailActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailMailActivity;->mShowAddEmail:Z
    invoke-static {v0}, Lcom/android/htccontacts/ContactDetailMailActivity;->access$1300(Lcom/android/htccontacts/ContactDetailMailActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1534
    const v2, 0x7f0a01f2

    .line 1539
    :cond_0
    :goto_0
    const v3, 0x2080237

    .line 1541
    .local v3, resId:I
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;->this$0:Lcom/android/htccontacts/ContactDetailMailActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailMailActivity;->mShowAddEmail:Z
    invoke-static {v0}, Lcom/android/htccontacts/ContactDetailMailActivity;->access$1300(Lcom/android/htccontacts/ContactDetailMailActivity;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1542
    const v3, 0x2080237

    .line 1546
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/4 v4, 0x0

    new-instance v5, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter$1;

    invoke-direct {v5, p0}, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter$1;-><init>(Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;)V

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lcom/android/htccontacts/util/ContactsUtils;->getComposeNewItemView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;IIZLandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object p1

    .line 1558
    .end local v2           #textId:I
    .end local v3           #resId:I
    :cond_2
    return-object p1

    .line 1535
    .restart local v2       #textId:I
    :cond_3
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;->this$0:Lcom/android/htccontacts/ContactDetailMailActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailMailActivity;->mShowSendEmail:Z
    invoke-static {v0}, Lcom/android/htccontacts/ContactDetailMailActivity;->access$1400(Lcom/android/htccontacts/ContactDetailMailActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1536
    const v2, 0x7f0a01f3

    goto :goto_0

    .line 1543
    .restart local v3       #resId:I
    :cond_4
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;->this$0:Lcom/android/htccontacts/ContactDetailMailActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailMailActivity;->mShowSendEmail:Z
    invoke-static {v0}, Lcom/android/htccontacts/ContactDetailMailActivity;->access$1400(Lcom/android/htccontacts/ContactDetailMailActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1544
    const v3, 0x20801d5

    goto :goto_1
.end method

.method public getOpenMailIntent(Landroid/database/Cursor;)Landroid/content/Intent;
    .locals 13
    .parameter "cursor"

    .prologue
    const/4 v4, 0x1

    const/4 v10, 0x0

    .line 1196
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 1197
    .local v8, messageId:J
    const/4 v11, 0x7

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    int-to-long v0, v11

    .line 1198
    .local v0, accountId:J
    const/16 v11, 0x8

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 1200
    .local v6, mailboxId:J
    const-string v11, "isDraft"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    if-ne v11, v4, :cond_0

    .line 1201
    .local v4, isDraft:Z
    :goto_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "content://mail/messages/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1203
    .local v5, mailUri:Landroid/net/Uri;
    if-nez v4, :cond_1

    .line 1204
    new-instance v2, Landroid/content/Intent;

    const-string v11, "android.intent.action.VIEW"

    invoke-direct {v2, v11, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1205
    .local v2, intent:Landroid/content/Intent;
    const-string v11, "isExchangeSvr"

    invoke-virtual {v2, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1206
    const-string v10, "accountID"

    invoke-virtual {v2, v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1207
    const-string v10, "messageIdsUriStr"

    const-string v11, "content://mail/peopleMessageIds"

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1208
    const-string v10, "where"

    iget-object v11, p0, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;->this$0:Lcom/android/htccontacts/ContactDetailMailActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailMailActivity;->mWhereClause:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/htccontacts/ContactDetailMailActivity;->access$000(Lcom/android/htccontacts/ContactDetailMailActivity;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1209
    const-string v10, "sortRule"

    const-string v11, "_date DESC"

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1210
    const-string v10, "mailBoxId"

    invoke-virtual {v2, v10, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1211
    const-string v10, "mailboxId"

    invoke-virtual {v2, v10, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-object v3, v2

    .line 1216
    .end local v2           #intent:Landroid/content/Intent;
    .local v3, intent:Ljava/lang/Object;
    :goto_1
    return-object v3

    .end local v3           #intent:Ljava/lang/Object;
    .end local v4           #isDraft:Z
    .end local v5           #mailUri:Landroid/net/Uri;
    :cond_0
    move v4, v10

    .line 1200
    goto :goto_0

    .line 1214
    .restart local v4       #isDraft:Z
    .restart local v5       #mailUri:Landroid/net/Uri;
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v10, "android.intent.action.EDIT"

    invoke-direct {v2, v10, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1215
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v10, "cmd"

    const-string v11, "editdraft"

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v3, v2

    .line 1216
    .restart local v3       #intent:Ljava/lang/Object;
    goto :goto_1
.end method

.method public getPositionForSection(I)I
    .locals 5
    .parameter "sectionIndex"

    .prologue
    .line 1411
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;->mIndexer:Lcom/android/htccontacts/widget/DateIndexer;

    if-nez v1, :cond_1

    .line 1412
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1413
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 1415
    const/4 v1, 0x0

    .line 1419
    .end local v0           #cursor:Landroid/database/Cursor;
    :goto_0
    return v1

    .line 1417
    .restart local v0       #cursor:Landroid/database/Cursor;
    :cond_0
    new-instance v1, Lcom/android/htccontacts/widget/DateIndexer;

    iget-object v2, p0, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;->this$0:Lcom/android/htccontacts/ContactDetailMailActivity;

    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/htccontacts/ContactDetailMailActivity;->access$1100(Lcom/android/htccontacts/ContactDetailMailActivity;)Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;->mIdxRecieveDate:I

    iget-object v4, p0, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;->mAlphabet:Ljava/lang/String;

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/android/htccontacts/widget/DateIndexer;-><init>(Landroid/content/Context;Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    iput-object v1, p0, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;->mIndexer:Lcom/android/htccontacts/widget/DateIndexer;

    .line 1419
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_1
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;->mIndexer:Lcom/android/htccontacts/widget/DateIndexer;

    invoke-virtual {v1, p1}, Lcom/android/htccontacts/widget/DateIndexer;->getPositionForSection(I)I

    move-result v1

    goto :goto_0
.end method

.method public getProvider(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .parameter "cursor"

    .prologue
    .line 1344
    const/16 v0, 0xf

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRead(Landroid/database/Cursor;)I
    .locals 1
    .parameter "cursor"

    .prologue
    .line 1274
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getReplyAllIntent(Landroid/database/Cursor;)Landroid/content/Intent;
    .locals 5
    .parameter "cursor"

    .prologue
    .line 1319
    const/4 v3, 0x0

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 1320
    .local v0, messageId:J
    const/4 v2, 0x0

    .line 1322
    .local v2, replyAllIntent:Landroid/content/Intent;
    new-instance v2, Landroid/content/Intent;

    .end local v2           #replyAllIntent:Landroid/content/Intent;
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1323
    .restart local v2       #replyAllIntent:Landroid/content/Intent;
    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1324
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://mail/messages/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1325
    const-string v3, "cmd"

    const-string v4, "replyall"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1327
    return-object v2
.end method

.method public getReplyIntent(Landroid/database/Cursor;)Landroid/content/Intent;
    .locals 5
    .parameter "cursor"

    .prologue
    .line 1306
    const/4 v3, 0x0

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 1307
    .local v0, messageId:J
    const/4 v2, 0x0

    .line 1309
    .local v2, replyIntent:Landroid/content/Intent;
    new-instance v2, Landroid/content/Intent;

    .end local v2           #replyIntent:Landroid/content/Intent;
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1310
    .restart local v2       #replyIntent:Landroid/content/Intent;
    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1311
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://mail/messages/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1312
    const-string v3, "cmd"

    const-string v4, "reply"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1314
    return-object v2
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 1423
    const/4 v0, 0x0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1403
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;->mIndexer:Lcom/android/htccontacts/widget/DateIndexer;

    if-eqz v0, :cond_0

    .line 1404
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;->mIndexer:Lcom/android/htccontacts/widget/DateIndexer;

    invoke-virtual {v0}, Lcom/android/htccontacts/widget/DateIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    .line 1406
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    goto :goto_0
.end method

.method public getSeeConversationIntent(Landroid/database/Cursor;)Landroid/content/Intent;
    .locals 9
    .parameter "cursor"

    .prologue
    .line 1231
    const/4 v7, 0x7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    int-to-long v0, v7

    .line 1232
    .local v0, accountId:J
    const/16 v7, 0xa

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1233
    .local v2, groupId:Ljava/lang/String;
    const/16 v7, 0x8

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1235
    .local v4, mailboxId:J
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "content://mail/accounts/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 1236
    .local v6, url:Landroid/net/Uri;
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v3, v7, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1238
    .local v3, intent:Landroid/content/Intent;
    const-string v7, "com.htc.android.mail"

    const-string v8, "com.htc.android.mail.MailListTab"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1239
    const-string v7, "ExpandMailId"

    invoke-virtual {v3, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1240
    const-string v7, "mailboxId"

    invoke-virtual {v3, v7, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1241
    const-string v7, "MailTabGroupAccount"

    invoke-virtual {v3, v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1242
    const-string v7, "GO_TO_TAB"

    const-string v8, "tab_thread"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1244
    return-object v3
.end method

.method protected initListItemCache(Lcom/android/htccontacts/widget/HtcListItemBuilder;Lcom/android/htccontacts/ContactDetailMailActivity$MailListItemCache;)V
    .locals 1
    .parameter "builder"
    .parameter "listItemCache"

    .prologue
    .line 1441
    invoke-virtual {p1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->get7BadgesAndStamp()Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;

    move-result-object v0

    iput-object v0, p2, Lcom/android/htccontacts/ContactDetailMailActivity$MailListItemCache;->mListItem7BadgesStamp:Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;

    .line 1442
    invoke-virtual {p1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->get2LineText()Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    move-result-object v0

    iput-object v0, p2, Lcom/android/htccontacts/ContactDetailMailActivity$MailListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    .line 1443
    return-void
.end method

.method public isDraft(Landroid/database/Cursor;)Z
    .locals 2
    .parameter "cursor"

    .prologue
    const/4 v0, 0x1

    .line 1282
    const-string v1, "isDraft"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public markRead(Landroid/database/Cursor;)I
    .locals 7
    .parameter "cursor"

    .prologue
    const/4 v6, 0x0

    .line 1295
    const/4 v4, 0x0

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 1296
    .local v1, messageId:J
    iget-object v4, p0, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;->this$0:Lcom/android/htccontacts/ContactDetailMailActivity;

    invoke-virtual {v4}, Lcom/android/htccontacts/ContactDetailMailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1297
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://mail/setMessageStatus/read/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v0, v4, v5, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 1301
    .local v3, updateRow:I
    return v3
.end method

.method public markUnread(Landroid/database/Cursor;)I
    .locals 7
    .parameter "cursor"

    .prologue
    const/4 v6, 0x0

    .line 1286
    const/4 v4, 0x0

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 1287
    .local v1, messageId:J
    iget-object v4, p0, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;->this$0:Lcom/android/htccontacts/ContactDetailMailActivity;

    invoke-virtual {v4}, Lcom/android/htccontacts/ContactDetailMailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1288
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://mail/setMessageStatus/unread/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v0, v4, v5, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 1291
    .local v3, updateRow:I
    return v3
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 1426
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1427
    .local v2, view:Landroid/view/View;
    invoke-direct {p0, p1, p2, p3}, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;->generateHtcListItemBuilder(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Lcom/android/htccontacts/widget/HtcListItemBuilder;

    move-result-object v0

    .line 1428
    .local v0, builder:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    new-instance v1, Lcom/android/htccontacts/ContactDetailMailActivity$MailListItemCache;

    invoke-direct {v1}, Lcom/android/htccontacts/ContactDetailMailActivity$MailListItemCache;-><init>()V

    .line 1429
    .local v1, cache:Lcom/android/htccontacts/ContactDetailMailActivity$MailListItemCache;
    invoke-virtual {p0, v0, v1}, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;->initListItemCache(Lcom/android/htccontacts/widget/HtcListItemBuilder;Lcom/android/htccontacts/ContactDetailMailActivity$MailListItemCache;)V

    .line 1430
    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setTag(Ljava/lang/Object;)V

    .line 1431
    return-object v0
.end method

.method public onInsertViewClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1562
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;->this$0:Lcom/android/htccontacts/ContactDetailMailActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailMailActivity;->mShowAddEmail:Z
    invoke-static {v0}, Lcom/android/htccontacts/ContactDetailMailActivity;->access$1300(Lcom/android/htccontacts/ContactDetailMailActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1563
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;->this$0:Lcom/android/htccontacts/ContactDetailMailActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/ContactDetailMailActivity;->doAddEmail()V

    .line 1567
    :cond_0
    :goto_0
    return-void

    .line 1564
    :cond_1
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;->this$0:Lcom/android/htccontacts/ContactDetailMailActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailMailActivity;->mShowSendEmail:Z
    invoke-static {v0}, Lcom/android/htccontacts/ContactDetailMailActivity;->access$1400(Lcom/android/htccontacts/ContactDetailMailActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1565
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;->this$0:Lcom/android/htccontacts/ContactDetailMailActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/ContactDetailMailActivity;->doSendEmail()V

    goto :goto_0
.end method

.method public onInsertViewLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 1570
    const/4 v0, 0x1

    return v0
.end method

.method public onInsertViewTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "mv"

    .prologue
    .line 1574
    const/4 v0, 0x1

    return v0
.end method

.method public updateIndexer(Landroid/database/Cursor;)V
    .locals 4
    .parameter "cursor"

    .prologue
    .line 1349
    if-eqz p1, :cond_0

    .line 1350
    const-string v0, "_date"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;->mIdxRecieveDate:I

    .line 1351
    new-instance v0, Lcom/android/htccontacts/widget/DateIndexer;

    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;->this$0:Lcom/android/htccontacts/ContactDetailMailActivity;

    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/htccontacts/ContactDetailMailActivity;->access$900(Lcom/android/htccontacts/ContactDetailMailActivity;)Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;->mIdxRecieveDate:I

    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;->mAlphabet:Ljava/lang/String;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/android/htccontacts/widget/DateIndexer;-><init>(Landroid/content/Context;Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;->mIndexer:Lcom/android/htccontacts/widget/DateIndexer;

    .line 1354
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;->this$0:Lcom/android/htccontacts/ContactDetailMailActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/ContactDetailMailActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1355
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;->this$0:Lcom/android/htccontacts/ContactDetailMailActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/ContactDetailMailActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    .line 1356
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;->this$0:Lcom/android/htccontacts/ContactDetailMailActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/ContactDetailMailActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    .line 1359
    :cond_1
    return-void
.end method
