.class Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;
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
    name = "MailListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/ContactDetailCommunicationActivity;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "context"

    .prologue
    .line 1674
    iput-object p1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    .line 1675
    const v0, 0x209000d

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    .line 1676
    return-void
.end method

.method private generateHtcListItemBuilder(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Lcom/android/htccontacts/widget/HtcListItemBuilder;
    .locals 2
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 1941
    new-instance v0, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    const/16 v1, 0x6a

    invoke-direct {v0, p1, v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;-><init>(Landroid/content/Context;I)V

    .line 1943
    .local v0, builder:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    return-object v0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 2

    .prologue
    .line 1689
    invoke-super {p0}, Landroid/widget/ResourceCursorAdapter;->getCount()I

    move-result v0

    .line 1690
    .local v0, realCount:I
    if-lez v0, :cond_0

    .line 1691
    invoke-super {p0}, Landroid/widget/ResourceCursorAdapter;->areAllItemsEnabled()Z

    move-result v1

    .line 1694
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
    .parameter "cursor"

    .prologue
    .line 1962
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;

    .line 1964
    .local v1, cache:Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;
    const/4 v15, 0x3

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1965
    .local v13, subject:Ljava/lang/String;
    const/16 v15, 0xf

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1966
    .local v11, provider:Ljava/lang/String;
    const/4 v15, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1967
    .local v2, date:J
    const/4 v15, 0x5

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1968
    .local v7, isRead:I
    const/16 v15, 0x9

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1969
    .local v14, subjtype:Ljava/lang/String;
    const/16 v15, 0xb

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 1970
    .local v6, incAttachment:I
    const/16 v15, 0xd

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 1971
    .local v10, priority:I
    const/16 v15, 0xe

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 1972
    .local v9, meetingFlag:I
    const/16 v15, 0xc

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 1973
    .local v8, mailact:I
    const/16 v15, 0xa

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1974
    .local v5, groupId:Ljava/lang/String;
    const/4 v15, 0x6

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 1976
    .local v4, flag:I
    iput v4, v1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;->flag:I

    .line 1977
    iput-object v5, v1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;->groupId:Ljava/lang/String;

    .line 1979
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 1980
    iget-object v15, v1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setPrimaryText(Ljava/lang/String;)V

    .line 1981
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;->subject:Ljava/lang/String;

    .line 1987
    :goto_0
    iput v7, v1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;->isRead:I

    .line 1989
    if-lez v7, :cond_1

    .line 1990
    iget-object v15, v1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    const v16, 0x2030036

    invoke-virtual/range {v15 .. v16}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setPrimaryTextStyle(I)V

    .line 1997
    :goto_1
    iput-wide v2, v1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;->date:J

    .line 1998
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;
    invoke-static {v15}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->access$3200(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)Landroid/content/Context;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v15, v2, v3, v0}, Lcom/android/htccontacts/util/TimeUtils;->getTimeOrRelativeDateStringUsingSystemFormat(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v12

    .line 2001
    .local v12, relativeDayString:Ljava/lang/String;
    iget-object v15, v1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;->mListItem7BadgesStamp:Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;

    invoke-virtual {v15, v12}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->setTextStamp(Ljava/lang/String;)V

    .line 2004
    iget-object v15, v1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    invoke-virtual {v15, v11}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setSecondaryText(Ljava/lang/String;)V

    .line 2007
    packed-switch v8, :pswitch_data_0

    .line 2017
    iget-object v15, v1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;->mListItem7BadgesStamp:Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->setBadgeState(IZ)V

    .line 2018
    iget-object v15, v1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;->mListItem7BadgesStamp:Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;

    const/16 v16, 0x1

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->setBadgeState(IZ)V

    .line 2023
    :goto_2
    if-nez v9, :cond_2

    .line 2024
    iget-object v15, v1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;->mListItem7BadgesStamp:Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;

    const/16 v16, 0x2

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->setBadgeState(IZ)V

    .line 2030
    :goto_3
    packed-switch v10, :pswitch_data_1

    .line 2040
    :pswitch_0
    iget-object v15, v1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;->mListItem7BadgesStamp:Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;

    const/16 v16, 0x4

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->setBadgeState(IZ)V

    .line 2041
    iget-object v15, v1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;->mListItem7BadgesStamp:Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;

    const/16 v16, 0x3

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->setBadgeState(IZ)V

    .line 2046
    :goto_4
    if-nez v6, :cond_3

    .line 2047
    iget-object v15, v1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;->mListItem7BadgesStamp:Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;

    const/16 v16, 0x5

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->setBadgeState(IZ)V

    .line 2053
    :goto_5
    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    iput-wide v15, v1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;->messageId:J

    .line 2054
    const/4 v15, 0x7

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    int-to-long v15, v15

    iput-wide v15, v1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;->accountId:J

    .line 2055
    const/16 v15, 0x8

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    iput-wide v15, v1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;->mailboxId:J

    .line 2057
    const-string v15, "isDraft"

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_4

    const/4 v15, 0x1

    :goto_6
    iput-boolean v15, v1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;->isDraft:Z

    .line 2062
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v15

    const/16 v16, 0x3

    move/from16 v0, v16

    if-le v15, v0, :cond_5

    .line 2064
    check-cast p1, Lcom/htc/widget/HtcListItem;

    .end local p1
    const/16 v15, 0xc

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/htc/widget/HtcListItem;->setRoundCorner(I)V

    .line 2073
    :goto_7
    return-void

    .line 1983
    .end local v12           #relativeDayString:Ljava/lang/String;
    .restart local p1
    :cond_0
    iget-object v15, v1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    invoke-virtual {v15, v13}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setPrimaryText(Ljava/lang/String;)V

    .line 1984
    iput-object v13, v1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;->subject:Ljava/lang/String;

    goto/16 :goto_0

    .line 1992
    :cond_1
    iget-object v15, v1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    const v16, 0x2030037

    invoke-virtual/range {v15 .. v16}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setPrimaryTextStyle(I)V

    goto/16 :goto_1

    .line 2009
    .restart local v12       #relativeDayString:Ljava/lang/String;
    :pswitch_1
    iget-object v15, v1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;->mListItem7BadgesStamp:Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;

    const/16 v16, 0x0

    const/16 v17, 0x1

    invoke-virtual/range {v15 .. v17}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->setBadgeState(IZ)V

    .line 2010
    iget-object v15, v1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;->mListItem7BadgesStamp:Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;

    const/16 v16, 0x1

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->setBadgeState(IZ)V

    goto/16 :goto_2

    .line 2013
    :pswitch_2
    iget-object v15, v1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;->mListItem7BadgesStamp:Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->setBadgeState(IZ)V

    .line 2014
    iget-object v15, v1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;->mListItem7BadgesStamp:Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;

    const/16 v16, 0x1

    const/16 v17, 0x1

    invoke-virtual/range {v15 .. v17}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->setBadgeState(IZ)V

    goto/16 :goto_2

    .line 2026
    :cond_2
    iget-object v15, v1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;->mListItem7BadgesStamp:Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;

    const/16 v16, 0x2

    const/16 v17, 0x1

    invoke-virtual/range {v15 .. v17}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->setBadgeState(IZ)V

    goto/16 :goto_3

    .line 2032
    :pswitch_3
    iget-object v15, v1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;->mListItem7BadgesStamp:Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;

    const/16 v16, 0x4

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->setBadgeState(IZ)V

    .line 2033
    iget-object v15, v1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;->mListItem7BadgesStamp:Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;

    const/16 v16, 0x3

    const/16 v17, 0x1

    invoke-virtual/range {v15 .. v17}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->setBadgeState(IZ)V

    goto/16 :goto_4

    .line 2036
    :pswitch_4
    iget-object v15, v1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;->mListItem7BadgesStamp:Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;

    const/16 v16, 0x4

    const/16 v17, 0x1

    invoke-virtual/range {v15 .. v17}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->setBadgeState(IZ)V

    .line 2037
    iget-object v15, v1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;->mListItem7BadgesStamp:Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;

    const/16 v16, 0x3

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->setBadgeState(IZ)V

    goto/16 :goto_4

    .line 2049
    :cond_3
    iget-object v15, v1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;->mListItem7BadgesStamp:Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;

    const/16 v16, 0x5

    const/16 v17, 0x1

    invoke-virtual/range {v15 .. v17}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->setBadgeState(IZ)V

    goto/16 :goto_5

    .line 2057
    :cond_4
    const/4 v15, 0x0

    goto/16 :goto_6

    .line 2065
    :cond_5
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->isLast()Z

    move-result v15

    if-eqz v15, :cond_6

    .line 2067
    check-cast p1, Lcom/htc/widget/HtcListItem;

    .end local p1
    const/16 v15, 0xb

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/htc/widget/HtcListItem;->setRoundCorner(I)V

    goto/16 :goto_7

    .line 2071
    .restart local p1
    :cond_6
    check-cast p1, Lcom/htc/widget/HtcListItem;

    .end local p1
    const/16 v15, 0xc

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/htc/widget/HtcListItem;->setRoundCorner(I)V

    goto/16 :goto_7

    .line 2007
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 2030
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 6
    .parameter "cursor"

    .prologue
    const/4 v5, 0x1

    .line 1908
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;->mCursor:Landroid/database/Cursor;

    if-ne p1, v1, :cond_0

    .line 1938
    :goto_0
    return-void

    .line 1912
    :cond_0
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mParent:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;
    invoke-static {v1}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->access$3000(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mParent:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;
    invoke-static {v1}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->access$3000(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    move-result-object v1

    iget v1, v1, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->MAIL_UNREAD_COUNT:I

    if-lez v1, :cond_2

    .line 1913
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    iget-object v1, v1, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mListAdapter:Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mParent:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;
    invoke-static {v3}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->access$3000(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    move-result-object v3

    iget v3, v3, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->MAIL_UNREAD_COUNT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    invoke-virtual {v3}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a03d9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->setStatus(ILjava/lang/String;)V

    .line 1917
    :goto_1
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_1

    .line 1918
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;->mCursor:Landroid/database/Cursor;

    .line 1919
    .local v0, tmpCursor:Landroid/database/Cursor;
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1920
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1921
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    invoke-virtual {v1, v0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->closeCursorInBackground(Landroid/database/Cursor;)V

    .line 1923
    .end local v0           #tmpCursor:Landroid/database/Cursor;
    :cond_1
    iput-object p1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;->mCursor:Landroid/database/Cursor;

    .line 1924
    if-eqz p1, :cond_3

    .line 1925
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 1926
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1927
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;->mRowIDColumn:I

    .line 1928
    iput-boolean v5, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;->mDataValid:Z

    .line 1930
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1915
    :cond_2
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    iget-object v1, v1, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mListAdapter:Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;

    const-string v2, ""

    invoke-virtual {v1, v5, v2}, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->setStatus(ILjava/lang/String;)V

    goto :goto_1

    .line 1932
    :cond_3
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;->mRowIDColumn:I

    .line 1933
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;->mDataValid:Z

    .line 1935
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;->notifyDataSetInvalidated()V

    goto/16 :goto_0
.end method

.method public cleanFlag(Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;)I
    .locals 9
    .parameter "cache"

    .prologue
    const/4 v8, 0x0

    .line 1824
    iget-wide v2, p1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;->messageId:J

    .line 1825
    .local v2, messageId:J
    iget-object v6, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    invoke-virtual {v6}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1826
    .local v4, resolver:Landroid/content/ContentResolver;
    const-string v6, "content://mail/messages/addtrack"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1828
    .local v0, builder:Landroid/net/Uri$Builder;
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1829
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1830
    .local v1, cv:Landroid/content/ContentValues;
    const-string v6, "_flags"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1831
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v4, v6, v1, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 1833
    .local v5, updateRow:I
    return v5
.end method

.method public deleteMail(Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;)I
    .locals 7
    .parameter "cache"

    .prologue
    const/4 v6, 0x0

    .line 1783
    iget-object v4, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    invoke-virtual {v4}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1785
    .local v3, resolver:Landroid/content/ContentResolver;
    iget-wide v1, p1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;->messageId:J

    .line 1787
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

    .line 1788
    .local v0, mailUri:Landroid/net/Uri;
    invoke-virtual {v3, v0, v6, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    return v4
.end method

.method public flagThisMessage(Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;)I
    .locals 9
    .parameter "cache"

    .prologue
    const/4 v8, 0x0

    .line 1811
    iget-wide v2, p1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;->messageId:J

    .line 1812
    .local v2, messageId:J
    iget-object v6, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    invoke-virtual {v6}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1813
    .local v4, resolver:Landroid/content/ContentResolver;
    const-string v6, "content://mail/messages/addtrack"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1814
    .local v0, builder:Landroid/net/Uri$Builder;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1815
    .local v1, cv:Landroid/content/ContentValues;
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1816
    const-string v6, "_flags"

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1817
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v4, v6, v1, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 1819
    .local v5, updateRow:I
    return v5
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1680
    invoke-super {p0}, Landroid/widget/ResourceCursorAdapter;->getCount()I

    move-result v0

    .line 1681
    .local v0, realCount:I
    if-nez v0, :cond_0

    .line 1682
    const/4 v0, 0x1

    .line 1684
    .end local v0           #realCount:I
    :cond_0
    return v0
.end method

.method public getFlag(Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;)I
    .locals 1
    .parameter "cache"

    .prologue
    .line 1837
    iget v0, p1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;->flag:I

    return v0
.end method

.method public getForwardIntent(Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;)Landroid/content/Intent;
    .locals 5
    .parameter "cache"

    .prologue
    .line 1890
    iget-wide v1, p1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;->messageId:J

    .line 1891
    .local v1, messageId:J
    const/4 v0, 0x0

    .line 1893
    .local v0, forwardIntent:Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    .end local v0           #forwardIntent:Landroid/content/Intent;
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1894
    .restart local v0       #forwardIntent:Landroid/content/Intent;
    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1895
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

    .line 1897
    const-string v3, "cmd"

    const-string v4, "forward"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1899
    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 1711
    invoke-super {p0}, Landroid/widget/ResourceCursorAdapter;->getCount()I

    move-result v0

    .line 1712
    .local v0, realCount:I
    if-lez v0, :cond_0

    .line 1713
    invoke-super {p0, p1}, Landroid/widget/ResourceCursorAdapter;->getItemViewType(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 1716
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMaxShowingEntries()I
    .locals 1

    .prologue
    .line 2077
    const/4 v0, 0x3

    return v0
.end method

.method public getOpenMailIntent(Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;)Landroid/content/Intent;
    .locals 12
    .parameter "cache"

    .prologue
    .line 1757
    iget-wide v8, p1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;->messageId:J

    .line 1758
    .local v8, messageId:J
    iget-wide v0, p1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;->accountId:J

    .line 1759
    .local v0, accountId:J
    iget-wide v6, p1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;->mailboxId:J

    .line 1761
    .local v6, mailboxId:J
    iget-boolean v4, p1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;->isDraft:Z

    .line 1762
    .local v4, isDraft:Z
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "content://mail/messages/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1764
    .local v5, mailUri:Landroid/net/Uri;
    if-nez v4, :cond_0

    .line 1765
    new-instance v2, Landroid/content/Intent;

    const-string v10, "android.intent.action.VIEW"

    invoke-direct {v2, v10, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1766
    .local v2, intent:Landroid/content/Intent;
    const-string v10, "isExchangeSvr"

    const/4 v11, 0x0

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1767
    const-string v10, "accountID"

    invoke-virtual {v2, v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1768
    const-string v10, "messageIdsUriStr"

    const-string v11, "content://mail/peopleMessageIds"

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1769
    const-string v10, "where"

    iget-object v11, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mMailWhereClause:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->access$1100(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1770
    const-string v10, "sortRule"

    const-string v11, "_date DESC"

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1771
    const-string v10, "mailBoxId"

    invoke-virtual {v2, v10, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1772
    const-string v10, "mailboxId"

    invoke-virtual {v2, v10, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-object v3, v2

    .line 1777
    .end local v2           #intent:Landroid/content/Intent;
    .local v3, intent:Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 1775
    .end local v3           #intent:Ljava/lang/Object;
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v10, "android.intent.action.EDIT"

    invoke-direct {v2, v10, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1776
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v10, "cmd"

    const-string v11, "editdraft"

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v3, v2

    .line 1777
    .restart local v3       #intent:Ljava/lang/Object;
    goto :goto_0
.end method

.method public getProvider(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .parameter "cursor"

    .prologue
    .line 1903
    const/16 v0, 0xf

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReplyAllIntent(Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;)Landroid/content/Intent;
    .locals 5
    .parameter "cache"

    .prologue
    .line 1876
    iget-wide v0, p1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;->messageId:J

    .line 1877
    .local v0, messageId:J
    const/4 v2, 0x0

    .line 1879
    .local v2, replyAllIntent:Landroid/content/Intent;
    new-instance v2, Landroid/content/Intent;

    .end local v2           #replyAllIntent:Landroid/content/Intent;
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1880
    .restart local v2       #replyAllIntent:Landroid/content/Intent;
    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1881
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

    .line 1883
    const-string v3, "cmd"

    const-string v4, "replyall"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1885
    return-object v2
.end method

.method public getReplyIntent(Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;)Landroid/content/Intent;
    .locals 5
    .parameter "cache"

    .prologue
    .line 1862
    iget-wide v0, p1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;->messageId:J

    .line 1863
    .local v0, messageId:J
    const/4 v2, 0x0

    .line 1865
    .local v2, replyIntent:Landroid/content/Intent;
    new-instance v2, Landroid/content/Intent;

    .end local v2           #replyIntent:Landroid/content/Intent;
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1866
    .restart local v2       #replyIntent:Landroid/content/Intent;
    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1867
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

    .line 1869
    const-string v3, "cmd"

    const-string v4, "reply"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1871
    return-object v2
.end method

.method public getSeeConversationIntent(Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;)Landroid/content/Intent;
    .locals 9
    .parameter "cache"

    .prologue
    .line 1793
    iget-wide v0, p1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;->accountId:J

    .line 1794
    .local v0, accountId:J
    iget-object v2, p1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;->groupId:Ljava/lang/String;

    .line 1795
    .local v2, groupId:Ljava/lang/String;
    iget-wide v4, p1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;->mailboxId:J

    .line 1797
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

    .line 1798
    .local v6, url:Landroid/net/Uri;
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v3, v7, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1800
    .local v3, intent:Landroid/content/Intent;
    const-string v7, "com.htc.android.mail"

    const-string v8, "com.htc.android.mail.MailListTab"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1801
    const-string v7, "ExpandMailId"

    invoke-virtual {v3, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1802
    const-string v7, "mailboxId"

    invoke-virtual {v3, v7, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1803
    const-string v7, "MailTabGroupAccount"

    invoke-virtual {v3, v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1804
    const-string v7, "GO_TO_TAB"

    const-string v8, "tab_thread"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1806
    return-object v3
.end method

.method public getToggleView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v7, 0x7f0a0044

    const/4 v6, 0x1

    const/4 v8, 0x0

    const v5, 0x7f0a0046

    .line 2087
    if-nez p1, :cond_2

    .line 2088
    new-instance v0, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;->mContext:Landroid/content/Context;

    const/16 v4, 0x2bd

    invoke-direct {v0, v3, v4}, Lcom/android/htccontacts/widget/HtcListItemBuilder;-><init>(Landroid/content/Context;I)V

    .line 2089
    .local v0, builder:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    #calls: Lcom/android/htccontacts/ContactDetailCommunicationActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;
    invoke-static {v3}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->access$3300(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v2

    .line 2090
    .local v2, info:Lcom/android/htccontacts/HtcContactInfo;
    const-string v1, ""

    .line 2091
    .local v1, displayName:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    invoke-virtual {v3}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setTag(Ljava/lang/Object;)V

    .line 2092
    if-eqz v2, :cond_0

    .line 2093
    iget-object v1, v2, Lcom/android/htccontacts/HtcContactInfoBase;->sDisplayName:Ljava/lang/String;

    .line 2095
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2096
    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;->mContext:Landroid/content/Context;

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

    .line 2103
    :goto_0
    move-object p1, v0

    .end local v0           #builder:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    :goto_1
    move-object v3, p1

    .line 2119
    check-cast v3, Lcom/htc/widget/HtcListItem;

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItem;->setRoundCorner(I)V

    .line 2120
    return-object p1

    .line 2100
    .restart local v0       #builder:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    :cond_1
    invoke-virtual {v0, v5}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->set1LineCenteredText(I)V

    goto :goto_0

    .line 2105
    .end local v0           #builder:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    .end local v1           #displayName:Ljava/lang/String;
    .end local v2           #info:Lcom/android/htccontacts/HtcContactInfo;
    :cond_2
    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    #calls: Lcom/android/htccontacts/ContactDetailCommunicationActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;
    invoke-static {v3}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->access$3400(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v2

    .line 2106
    .restart local v2       #info:Lcom/android/htccontacts/HtcContactInfo;
    const-string v1, ""

    .line 2107
    .restart local v1       #displayName:Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 2108
    iget-object v1, v2, Lcom/android/htccontacts/HtcContactInfoBase;->sDisplayName:Ljava/lang/String;

    .line 2110
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    move-object v3, p1

    .line 2111
    check-cast v3, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    iget-object v4, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;->mContext:Landroid/content/Context;

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

    .line 2115
    check-cast v3, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    invoke-virtual {v3, v5}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->set1LineCenteredText(I)V

    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v5, 0x7f0a0180

    .line 1733
    invoke-super {p0}, Landroid/widget/ResourceCursorAdapter;->getCount()I

    move-result v2

    .line 1734
    .local v2, realCount:I
    if-lez v2, :cond_0

    .line 1735
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1752
    :goto_0
    return-object v3

    .line 1740
    :cond_0
    if-nez p2, :cond_1

    .line 1741
    new-instance v0, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;->mContext:Landroid/content/Context;

    const/16 v4, 0x2bd

    invoke-direct {v0, v3, v4}, Lcom/android/htccontacts/widget/HtcListItemBuilder;-><init>(Landroid/content/Context;I)V

    .line 1742
    .local v0, builder:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    invoke-virtual {v3}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setTag(Ljava/lang/Object;)V

    .line 1743
    invoke-virtual {v0, v5}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->set1LineCenteredText(I)V

    .line 1744
    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setRoundCorner(I)V

    .line 1745
    move-object p2, v0

    .line 1748
    .end local v0           #builder:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    :cond_1
    new-instance v1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;

    invoke-direct {v1}, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;-><init>()V

    .line 1749
    .local v1, cache:Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;->setBottomRound(Z)V

    .line 1750
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;->setTopRound(Z)V

    .line 1751
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v3, p2

    .line 1752
    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 1722
    invoke-super {p0}, Landroid/widget/ResourceCursorAdapter;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected initListItemCache(Lcom/android/htccontacts/widget/HtcListItemBuilder;Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;)V
    .locals 1
    .parameter "builder"
    .parameter "listItemCache"

    .prologue
    .line 1947
    invoke-virtual {p1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->get7BadgesAndStamp()Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;

    move-result-object v0

    iput-object v0, p2, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;->mListItem7BadgesStamp:Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;

    .line 1948
    invoke-virtual {p1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->get2LineText()Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    move-result-object v0

    iput-object v0, p2, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    .line 1949
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mMailCacheList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->access$3100(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1950
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1727
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 1700
    invoke-super {p0}, Landroid/widget/ResourceCursorAdapter;->getCount()I

    move-result v0

    .line 1701
    .local v0, realCount:I
    if-lez v0, :cond_0

    .line 1702
    invoke-super {p0, p1}, Landroid/widget/ResourceCursorAdapter;->isEnabled(I)Z

    move-result v1

    .line 1705
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isToggleViewAvailable()Z
    .locals 1

    .prologue
    .line 2082
    const/4 v0, 0x1

    return v0
.end method

.method public markRead(Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;)I
    .locals 7
    .parameter "cache"

    .prologue
    const/4 v6, 0x0

    .line 1851
    iget-wide v1, p1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;->messageId:J

    .line 1852
    .local v1, messageId:J
    iget-object v4, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    invoke-virtual {v4}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1853
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

    .line 1857
    .local v3, updateRow:I
    return v3
.end method

.method public markUnread(Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;)I
    .locals 7
    .parameter "cache"

    .prologue
    const/4 v6, 0x0

    .line 1841
    iget-wide v1, p1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;->messageId:J

    .line 1842
    .local v1, messageId:J
    iget-object v4, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    invoke-virtual {v4}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1843
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

    .line 1847
    .local v3, updateRow:I
    return v3
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 1953
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1954
    .local v2, view:Landroid/view/View;
    invoke-direct {p0, p1, p2, p3}, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;->generateHtcListItemBuilder(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Lcom/android/htccontacts/widget/HtcListItemBuilder;

    move-result-object v0

    .line 1955
    .local v0, builder:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    new-instance v1, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;

    invoke-direct {v1}, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;-><init>()V

    .line 1956
    .local v1, cache:Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;
    invoke-virtual {p0, v0, v1}, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;->initListItemCache(Lcom/android/htccontacts/widget/HtcListItemBuilder;Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;)V

    .line 1957
    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setTag(Ljava/lang/Object;)V

    .line 1958
    return-object v0
.end method

.method public onToggleViewClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 2125
    return-void
.end method

.method public onToggleViewLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 2130
    const/4 v0, 0x0

    return v0
.end method

.method public onToggleViewTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "mv"

    .prologue
    .line 2135
    const/4 v0, 0x0

    return v0
.end method
