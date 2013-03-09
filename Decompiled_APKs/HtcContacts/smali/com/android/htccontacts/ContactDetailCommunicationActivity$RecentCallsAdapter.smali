.class Lcom/android/htccontacts/ContactDetailCommunicationActivity$RecentCallsAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "ContactDetailCommunicationActivity.java"

# interfaces
.implements Lcom/android/htccontacts/widget/ILinearExpandableListAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ContactDetailCommunicationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecentCallsAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/ContactDetailCommunicationActivity;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "context"

    .prologue
    .line 1310
    iput-object p1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    .line 1311
    const v0, 0x7f030036

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    .line 1312
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 2

    .prologue
    .line 1342
    invoke-super {p0}, Landroid/widget/ResourceCursorAdapter;->getCount()I

    move-result v0

    .line 1343
    .local v0, realCount:I
    if-lez v0, :cond_0

    .line 1344
    invoke-super {p0}, Landroid/widget/ResourceCursorAdapter;->areAllItemsEnabled()Z

    move-result v1

    .line 1347
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 18
    .parameter "view"
    .parameter "context"
    .parameter "c"

    .prologue
    .line 1444
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListItemCache;

    .line 1445
    .local v2, cache:Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListItemCache;
    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1447
    .local v9, number:Ljava/lang/String;
    const-string v11, ""

    .line 1448
    .local v11, phone_name:Ljava/lang/String;
    const/4 v12, -0x1

    .line 1450
    .local v12, phone_name_index:I
    const/4 v13, 0x2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mContactType:I
    invoke-static {v14}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->access$1600(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)I

    move-result v14

    if-eq v13, v14, :cond_0

    const/4 v13, 0x4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mContactType:I
    invoke-static {v14}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->access$1600(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)I

    move-result v14

    if-eq v13, v14, :cond_0

    .line 1452
    const/4 v12, 0x7

    .line 1455
    :cond_0
    if-lez v12, :cond_1

    .line 1456
    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1459
    :cond_1
    const/4 v13, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 1460
    .local v6, date:J
    iput-wide v6, v2, Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListItemCache;->date:J

    .line 1461
    iput-object v11, v2, Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListItemCache;->phone_name:Ljava/lang/String;

    .line 1462
    const/4 v13, 0x3

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1463
    .local v4, callsDuration:J
    const/4 v13, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1464
    .local v3, callType:I
    const/4 v10, -0x1

    .line 1465
    .local v10, phoneType:I
    const/4 v13, 0x2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mContactType:I
    invoke-static {v14}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->access$1600(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)I

    move-result v14

    if-eq v13, v14, :cond_2

    const/4 v13, 0x4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mContactType:I
    invoke-static {v14}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->access$1600(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)I

    move-result v14

    if-ne v13, v14, :cond_7

    .line 1467
    :cond_2
    const/4 v10, 0x2

    .line 1472
    :goto_0
    const/4 v13, 0x6

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1473
    .local v1, bearerType:I
    const/4 v13, 0x2

    if-ne v13, v1, :cond_8

    .line 1475
    iget-object v13, v2, Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListItemCache;->mListItemImageButton:Lcom/htc/widget/HtcListItemImageButton;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcListItemImageButton;->setBackgroundColor(I)V

    .line 1477
    sget-short v13, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v14, 0xda

    if-ne v13, v14, :cond_3

    .line 1478
    iget-object v13, v2, Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f020015

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v13 .. v17}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setSecondaryTextCompoundDrawableWithIntrinicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1487
    :cond_3
    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 1512
    :goto_2
    const-string v13, "-1"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 1513
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    const v14, 0x7f0a016e

    invoke-virtual {v13, v14}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1520
    :cond_4
    :goto_3
    iget-object v13, v2, Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    invoke-virtual {v13, v9}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setPrimaryText(Ljava/lang/String;)V

    .line 1523
    sget-boolean v13, Lcom/htc/util/phone/CityIdInfo;->ENABLED:Z

    if-nez v13, :cond_5

    .line 1524
    iget-object v13, v2, Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListItemCache;->mListItem2LineStamp:Lcom/htc/widget/HtcListItem2LineStamp;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->access$2100(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)Landroid/content/Context;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mIs24HourFormat:Z
    invoke-static {v15}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->access$2200(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)Z

    move-result v15

    invoke-static {v14, v15, v6, v7}, Lcom/htc/util/contacts/TimeUtils;->getFormatTime(Landroid/content/Context;ZJ)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcListItem2LineStamp;->setSecondaryText(Ljava/lang/String;)V

    .line 1526
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->access$2300(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)Landroid/content/Context;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v13, v6, v7, v14}, Lcom/android/htccontacts/util/TimeUtils;->getRelativeDateStringUsingSystemFormat(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v8

    .line 1527
    .local v8, dayString:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 1528
    iget-object v13, v2, Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListItemCache;->mListItem2LineStamp:Lcom/htc/widget/HtcListItem2LineStamp;

    invoke-virtual {v13, v8}, Lcom/htc/widget/HtcListItem2LineStamp;->setPrimaryText(Ljava/lang/String;)V

    .line 1532
    .end local v8           #dayString:Ljava/lang/String;
    :cond_5
    sget-boolean v13, Lcom/htc/util/phone/CityIdInfo;->ENABLED:Z

    if-eqz v13, :cond_b

    .line 1533
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    #calls: Lcom/android/htccontacts/ContactDetailCommunicationActivity;->setupTimeViewsIfCityId(Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListItemCache;J)V
    invoke-static {v13, v2, v6, v7}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->access$2400(Lcom/android/htccontacts/ContactDetailCommunicationActivity;Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListItemCache;J)V

    .line 1534
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    move-object/from16 v0, p3

    #calls: Lcom/android/htccontacts/ContactDetailCommunicationActivity;->setupCityView(Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListItemCache;Landroid/database/Cursor;Ljava/lang/String;)V
    invoke-static {v13, v2, v0, v9}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->access$2500(Lcom/android/htccontacts/ContactDetailCommunicationActivity;Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListItemCache;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 1539
    :goto_4
    invoke-static {}, Lcom/android/htccontacts/util/ContactsUtils;->isCallDurationHideProject()Z

    move-result v13

    if-nez v13, :cond_6

    .line 1540
    iget-object v13, v2, Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mDurationText:Ljava/lang/String;
    invoke-static {v15}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->access$2700(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ": "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v4, v5}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setSecondaryText(Ljava/lang/String;)V

    .line 1544
    :cond_6
    iput-object v9, v2, Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListItemCache;->number:Ljava/lang/String;

    .line 1547
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v13

    const/4 v14, 0x3

    if-le v13, v14, :cond_c

    .line 1549
    check-cast p1, Lcom/htc/widget/HtcListItem;

    .end local p1
    const/16 v13, 0xc

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/htc/widget/HtcListItem;->setRoundCorner(I)V

    .line 1557
    :goto_5
    return-void

    .line 1469
    .end local v1           #bearerType:I
    .restart local p1
    :cond_7
    const/16 v13, 0x8

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    goto/16 :goto_0

    .line 1484
    .restart local v1       #bearerType:I
    :cond_8
    iget-object v13, v2, Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListItemCache;->mListItemImageButton:Lcom/htc/widget/HtcListItemImageButton;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcListItemImageButton;->setBackgroundColor(I)V

    goto/16 :goto_1

    .line 1491
    :pswitch_0
    iget-object v13, v2, Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListItemCache;->mListItemImageButton:Lcom/htc/widget/HtcListItemImageButton;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mDrawableIncoming:Landroid/graphics/drawable/Drawable;
    invoke-static {v14}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->access$1700(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcListItemImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 1497
    :pswitch_1
    iget-object v13, v2, Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListItemCache;->mListItemImageButton:Lcom/htc/widget/HtcListItemImageButton;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mDrawableOutgoing:Landroid/graphics/drawable/Drawable;
    invoke-static {v14}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->access$1800(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcListItemImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 1502
    :pswitch_2
    iget-object v13, v2, Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListItemCache;->mListItemImageButton:Lcom/htc/widget/HtcListItemImageButton;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mDrawableMissed:Landroid/graphics/drawable/Drawable;
    invoke-static {v14}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->access$1900(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcListItemImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 1514
    :cond_9
    const-string v13, "-2"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mNumber:Ljava/lang/String;
    invoke-static {v14}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->access$2000(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 1515
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    const v14, 0x7f0a0187

    invoke-virtual {v13, v14}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_3

    .line 1517
    :cond_a
    const-string v13, "-3"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 1518
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    const v14, 0x7f0a0188

    invoke-virtual {v13, v14}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_3

    .line 1536
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    #calls: Lcom/android/htccontacts/ContactDetailCommunicationActivity;->setupTimeViews(Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListItemCache;J)V
    invoke-static {v13, v2, v6, v7}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->access$2600(Lcom/android/htccontacts/ContactDetailCommunicationActivity;Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListItemCache;J)V

    goto/16 :goto_4

    .line 1550
    :cond_c
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->isLast()Z

    move-result v13

    if-eqz v13, :cond_d

    .line 1552
    check-cast p1, Lcom/htc/widget/HtcListItem;

    .end local p1
    const/16 v13, 0xb

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/htc/widget/HtcListItem;->setRoundCorner(I)V

    goto/16 :goto_5

    .line 1555
    .restart local p1
    :cond_d
    check-cast p1, Lcom/htc/widget/HtcListItem;

    .end local p1
    const/16 v13, 0xc

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/htc/widget/HtcListItem;->setRoundCorner(I)V

    goto/16 :goto_5

    .line 1487
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 4
    .parameter "cursor"

    .prologue
    .line 1561
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$RecentCallsAdapter;->mCursor:Landroid/database/Cursor;

    if-ne p1, v1, :cond_0

    .line 1585
    :goto_0
    return-void

    .line 1564
    :cond_0
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    iget-object v1, v1, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mListAdapter:Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;

    const/4 v2, 0x2

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->setStatus(ILjava/lang/String;)V

    .line 1565
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$RecentCallsAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_1

    .line 1566
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$RecentCallsAdapter;->mCursor:Landroid/database/Cursor;

    .line 1567
    .local v0, tmpCursor:Landroid/database/Cursor;
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$RecentCallsAdapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1568
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$RecentCallsAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1569
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    invoke-virtual {v1, v0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->closeCursorInBackground(Landroid/database/Cursor;)V

    .line 1571
    .end local v0           #tmpCursor:Landroid/database/Cursor;
    :cond_1
    iput-object p1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$RecentCallsAdapter;->mCursor:Landroid/database/Cursor;

    .line 1572
    if-eqz p1, :cond_2

    .line 1573
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$RecentCallsAdapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 1574
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$RecentCallsAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1575
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$RecentCallsAdapter;->mRowIDColumn:I

    .line 1576
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$RecentCallsAdapter;->mDataValid:Z

    .line 1578
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity$RecentCallsAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1580
    :cond_2
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$RecentCallsAdapter;->mRowIDColumn:I

    .line 1581
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$RecentCallsAdapter;->mDataValid:Z

    .line 1583
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity$RecentCallsAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method

.method protected generateHtcListItemBuilder(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Lcom/android/htccontacts/widget/HtcListItemBuilder;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 1315
    new-instance v0, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    const/16 v1, 0x194

    invoke-direct {v0, p1, v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;-><init>(Landroid/content/Context;I)V

    .line 1317
    .local v0, builder:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->getImageButton()Lcom/htc/widget/HtcListItemImageButton;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    .line 1319
    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1333
    invoke-super {p0}, Landroid/widget/ResourceCursorAdapter;->getCount()I

    move-result v0

    .line 1334
    .local v0, realCount:I
    if-nez v0, :cond_0

    .line 1335
    const/4 v0, 0x1

    .line 1337
    .end local v0           #realCount:I
    :cond_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 3
    .parameter "position"

    .prologue
    .line 1364
    invoke-super {p0}, Landroid/widget/ResourceCursorAdapter;->getCount()I

    move-result v1

    .line 1365
    .local v1, realCount:I
    if-lez v1, :cond_0

    .line 1366
    invoke-super {p0, p1}, Landroid/widget/ResourceCursorAdapter;->getItemViewType(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    .line 1374
    :goto_0
    return v2

    .line 1369
    :cond_0
    invoke-super {p0}, Landroid/widget/ResourceCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1370
    .local v0, c:Landroid/database/Cursor;
    if-nez v0, :cond_1

    .line 1371
    const/4 v2, 0x0

    goto :goto_0

    .line 1374
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getMaxShowingEntries()I
    .locals 1

    .prologue
    .line 1589
    const/4 v0, 0x3

    return v0
.end method

.method public getToggleView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v7, 0x7f0a0045

    const/4 v6, 0x1

    const/4 v8, 0x0

    const v5, 0x7f0a0047

    .line 1599
    if-nez p1, :cond_2

    .line 1600
    new-instance v0, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$RecentCallsAdapter;->mContext:Landroid/content/Context;

    const/16 v4, 0x2bd

    invoke-direct {v0, v3, v4}, Lcom/android/htccontacts/widget/HtcListItemBuilder;-><init>(Landroid/content/Context;I)V

    .line 1601
    .local v0, builder:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    #calls: Lcom/android/htccontacts/ContactDetailCommunicationActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;
    invoke-static {v3}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->access$2800(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v2

    .line 1602
    .local v2, info:Lcom/android/htccontacts/HtcContactInfo;
    const-string v1, ""

    .line 1603
    .local v1, displayName:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    invoke-virtual {v3}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setTag(Ljava/lang/Object;)V

    .line 1604
    if-eqz v2, :cond_0

    .line 1605
    iget-object v1, v2, Lcom/android/htccontacts/HtcContactInfoBase;->sDisplayName:Ljava/lang/String;

    .line 1607
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1608
    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$RecentCallsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->set1LineCenteredText(Ljava/lang/CharSequence;)V

    .line 1615
    :goto_0
    move-object p1, v0

    .end local v0           #builder:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    :goto_1
    move-object v3, p1

    .line 1630
    check-cast v3, Lcom/htc/widget/HtcListItem;

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItem;->setRoundCorner(I)V

    .line 1632
    return-object p1

    .line 1612
    .restart local v0       #builder:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    :cond_1
    invoke-virtual {v0, v5}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->set1LineCenteredText(I)V

    goto :goto_0

    .line 1617
    .end local v0           #builder:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    .end local v1           #displayName:Ljava/lang/String;
    .end local v2           #info:Lcom/android/htccontacts/HtcContactInfo;
    :cond_2
    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    #calls: Lcom/android/htccontacts/ContactDetailCommunicationActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;
    invoke-static {v3}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->access$2900(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v2

    .line 1618
    .restart local v2       #info:Lcom/android/htccontacts/HtcContactInfo;
    const-string v1, ""

    .line 1619
    .restart local v1       #displayName:Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 1620
    iget-object v1, v2, Lcom/android/htccontacts/HtcContactInfoBase;->sDisplayName:Ljava/lang/String;

    .line 1622
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    move-object v3, p1

    .line 1623
    check-cast v3, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    iget-object v4, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$RecentCallsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->set1LineCenteredText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    move-object v3, p1

    .line 1627
    check-cast v3, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    invoke-virtual {v3, v5}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->set1LineCenteredText(I)V

    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v10, 0x7f0a0379

    const/4 v9, 0x0

    .line 1391
    invoke-super {p0}, Landroid/widget/ResourceCursorAdapter;->getCount()I

    move-result v4

    .line 1392
    .local v4, realCount:I
    if-lez v4, :cond_0

    .line 1393
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 1428
    :goto_0
    return-object v7

    .line 1396
    :cond_0
    invoke-super {p0}, Landroid/widget/ResourceCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 1397
    .local v1, c:Landroid/database/Cursor;
    if-nez v1, :cond_3

    .line 1399
    if-nez p2, :cond_1

    .line 1400
    iget-object v7, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v7}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->access$1500(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f030056

    invoke-virtual {v7, v8, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1402
    :cond_1
    const v7, 0x7f07001f

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 1403
    .local v5, root:Landroid/view/View;
    const v7, 0x102000d

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1404
    .local v3, progressView:Landroid/view/View;
    const v7, 0x7f0700dc

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 1405
    .local v6, textView:Landroid/widget/TextView;
    if-eqz v5, :cond_2

    if-eqz v3, :cond_2

    if-eqz v6, :cond_2

    .line 1406
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1407
    const v7, 0x7f0a0034

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 1408
    invoke-virtual {v5, v9}, Landroid/view/View;->setDuplicateParentStateEnabled(Z)V

    .line 1409
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setDuplicateParentStateEnabled(Z)V

    :cond_2
    move-object v7, p2

    .line 1411
    goto :goto_0

    .line 1415
    .end local v3           #progressView:Landroid/view/View;
    .end local v5           #root:Landroid/view/View;
    .end local v6           #textView:Landroid/widget/TextView;
    :cond_3
    if-nez p2, :cond_4

    .line 1416
    new-instance v0, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    iget-object v7, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$RecentCallsAdapter;->mContext:Landroid/content/Context;

    const/16 v8, 0x2bd

    invoke-direct {v0, v7, v8}, Lcom/android/htccontacts/widget/HtcListItemBuilder;-><init>(Landroid/content/Context;I)V

    .line 1417
    .local v0, builder:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    iget-object v7, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    invoke-virtual {v7}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setTag(Ljava/lang/Object;)V

    .line 1418
    invoke-virtual {v0, v10}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->set1LineCenteredText(I)V

    .line 1419
    const/16 v7, 0xb

    invoke-virtual {v0, v7}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setRoundCorner(I)V

    .line 1420
    move-object p2, v0

    .line 1423
    .end local v0           #builder:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    :cond_4
    new-instance v2, Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListItemCache;

    invoke-direct {v2}, Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListItemCache;-><init>()V

    .line 1424
    .local v2, cache:Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListItemCache;
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListItemCache;->setBottomRound(Z)V

    .line 1425
    invoke-virtual {v2, v9}, Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListItemCache;->setTopRound(Z)V

    .line 1426
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v7, p2

    .line 1428
    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 1381
    invoke-super {p0}, Landroid/widget/ResourceCursorAdapter;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method protected initListItemCache(Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListItemCache;Lcom/android/htccontacts/widget/HtcListItemBuilder;)V
    .locals 1
    .parameter "cache"
    .parameter "builder"

    .prologue
    .line 1324
    invoke-virtual {p2}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->get2LineText()Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    .line 1325
    invoke-virtual {p2}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->get2LineStamp()Lcom/android/htccontacts/widget/HtcListItem2LineStampIcon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListItemCache;->mListItem2LineStamp:Lcom/htc/widget/HtcListItem2LineStamp;

    .line 1326
    invoke-virtual {p2}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->getLeftImage()Lcom/htc/widget/HtcListItemImageButton;

    move-result-object v0

    iput-object v0, p1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListItemCache;->mListItemImageButton:Lcom/htc/widget/HtcListItemImageButton;

    .line 1328
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mCacheList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->access$1400(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1329
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1386
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 1353
    invoke-super {p0}, Landroid/widget/ResourceCursorAdapter;->getCount()I

    move-result v0

    .line 1354
    .local v0, realCount:I
    if-lez v0, :cond_0

    .line 1355
    invoke-super {p0, p1}, Landroid/widget/ResourceCursorAdapter;->isEnabled(I)Z

    move-result v1

    .line 1358
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isToggleViewAvailable()Z
    .locals 1

    .prologue
    .line 1594
    const/4 v0, 0x1

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 1435
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/htccontacts/ContactDetailCommunicationActivity$RecentCallsAdapter;->generateHtcListItemBuilder(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Lcom/android/htccontacts/widget/HtcListItemBuilder;

    move-result-object v0

    .line 1436
    .local v0, builder:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    new-instance v1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListItemCache;

    invoke-direct {v1}, Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListItemCache;-><init>()V

    .line 1437
    .local v1, cache:Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListItemCache;
    invoke-virtual {p0, v1, v0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity$RecentCallsAdapter;->initListItemCache(Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListItemCache;Lcom/android/htccontacts/widget/HtcListItemBuilder;)V

    .line 1438
    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setTag(Ljava/lang/Object;)V

    .line 1439
    return-object v0
.end method

.method public onToggleViewClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 1637
    return-void
.end method

.method public onToggleViewLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 1642
    const/4 v0, 0x0

    return v0
.end method

.method public onToggleViewTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "mv"

    .prologue
    .line 1647
    const/4 v0, 0x0

    return v0
.end method
