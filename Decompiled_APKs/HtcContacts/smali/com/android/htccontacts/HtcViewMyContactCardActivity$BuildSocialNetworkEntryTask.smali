.class Lcom/android/htccontacts/HtcViewMyContactCardActivity$BuildSocialNetworkEntryTask;
.super Lcom/android/htccontacts/util/WeakAsyncTask;
.source "HtcViewMyContactCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/HtcViewMyContactCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BuildSocialNetworkEntryTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/htccontacts/util/WeakAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/htccontacts/HtcViewMyContactCardActivity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/HtcViewMyContactCardActivity;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/HtcViewMyContactCardActivity;Lcom/android/htccontacts/HtcViewMyContactCardActivity;)V
    .locals 0
    .parameter
    .parameter "target"

    .prologue
    .line 1482
    iput-object p1, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity$BuildSocialNetworkEntryTask;->this$0:Lcom/android/htccontacts/HtcViewMyContactCardActivity;

    .line 1483
    invoke-direct {p0, p2}, Lcom/android/htccontacts/util/WeakAsyncTask;-><init>(Ljava/lang/Object;)V

    .line 1484
    return-void
.end method

.method private buildFacebookHtcEvent(Lcom/android/htccontacts/HtcViewMyContactCardActivity;)V
    .locals 15
    .parameter "target"

    .prologue
    .line 1510
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity$BuildSocialNetworkEntryTask;->this$0:Lcom/android/htccontacts/HtcViewMyContactCardActivity;

    #getter for: Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mFacebookLogin:Z
    invoke-static {v0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->access$700(Lcom/android/htccontacts/HtcViewMyContactCardActivity;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1511
    move-object/from16 v8, p1

    .line 1512
    .local v8, context:Landroid/content/Context;
    if-eqz v8, :cond_4

    .line 1513
    const-string v0, "content://com.htc.socialnetwork.facebook/rawquery"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1514
    .local v1, RAWQUERY_CONTENT_URI:Landroid/net/Uri;
    invoke-virtual {v8}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "select birthday_year, birthday_month, birthday_day from person where uid in (select loginId from accounts where defaultAccount=1)"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1517
    .local v6, c:Landroid/database/Cursor;
    const/4 v14, -0x1

    .local v14, year:I
    const/4 v12, -0x1

    .local v12, month:I
    const/4 v9, -0x1

    .line 1518
    .local v9, day:I
    if-eqz v6, :cond_4

    .line 1519
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1520
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    long-to-int v14, v2

    .line 1521
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    long-to-int v12, v2

    .line 1522
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    long-to-int v9, v2

    .line 1523
    if-gtz v14, :cond_1

    .line 1524
    const/16 v14, 0x76c

    .line 1526
    :cond_1
    const-wide/16 v10, 0x0

    .line 1527
    .local v10, lBirthady:J
    const/4 v0, -0x1

    if-eq v9, v0, :cond_2

    const/4 v0, -0x1

    if-eq v12, v0, :cond_2

    .line 1528
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 1529
    .local v7, calendar:Ljava/util/Calendar;
    add-int/lit8 v0, v12, -0x1

    invoke-virtual {v7, v14, v0, v9}, Ljava/util/Calendar;->set(III)V

    .line 1530
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    .line 1532
    .end local v7           #calendar:Ljava/util/Calendar;
    :cond_2
    invoke-virtual {v8}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x10402a2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v8, v0, v2, v3}, Lcom/android/htccontacts/HtcViewContactDetail;->newHtcEventEntry(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    move-result-object v13

    .line 1533
    .local v13, viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    if-eqz v13, :cond_0

    .line 1534
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity$BuildSocialNetworkEntryTask;->this$0:Lcom/android/htccontacts/HtcViewMyContactCardActivity;

    iget-object v0, v0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mEventEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1537
    .end local v10           #lBirthady:J
    .end local v13           #viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1542
    .end local v1           #RAWQUERY_CONTENT_URI:Landroid/net/Uri;
    .end local v6           #c:Landroid/database/Cursor;
    .end local v8           #context:Landroid/content/Context;
    .end local v9           #day:I
    .end local v12           #month:I
    .end local v14           #year:I
    :cond_4
    return-void
.end method

.method private buildFacebookStatusEntry(Lcom/android/htccontacts/HtcViewMyContactCardActivity;)V
    .locals 14
    .parameter "target"

    .prologue
    const/4 v13, -0x1

    .line 1544
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity$BuildSocialNetworkEntryTask;->this$0:Lcom/android/htccontacts/HtcViewMyContactCardActivity;

    #getter for: Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mFacebookLogin:Z
    invoke-static {v0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->access$700(Lcom/android/htccontacts/HtcViewMyContactCardActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1545
    invoke-static {p1}, Lcom/android/htccontacts/util/ContactsUtils;->getFacebookMessageIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v8

    .line 1546
    .local v8, intent:Landroid/content/Intent;
    if-nez v8, :cond_1

    .line 1568
    .end local v8           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 1547
    .restart local v8       #intent:Landroid/content/Intent;
    :cond_1
    const-string v0, "username"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1548
    .local v11, userName:Ljava/lang/String;
    const-string v0, "message"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1549
    .local v9, message:Ljava/lang/String;
    const/4 v7, 0x0

    .line 1550
    .local v7, footerLine:Ljava/lang/String;
    const-string v0, "post_time"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v10

    check-cast v10, Ljava/util/Date;

    .line 1551
    .local v10, posted:Ljava/util/Date;
    if-eqz v10, :cond_2

    .line 1552
    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    const/high16 v6, 0x4

    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1557
    :cond_2
    new-instance v12, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    invoke-direct {v12}, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;-><init>()V

    .line 1558
    .local v12, viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    iput-object v11, v12, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text1:Ljava/lang/String;

    .line 1559
    iput-object v9, v12, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    .line 1560
    iput-object v7, v12, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text4:Ljava/lang/String;

    .line 1561
    const/16 v0, 0x1d

    iput v0, v12, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    .line 1562
    iput v13, v12, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->leftIconId:I

    .line 1563
    iput v13, v12, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->rightIconId:I

    .line 1564
    iput-object v8, v12, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->intent:Landroid/content/Intent;

    .line 1566
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity$BuildSocialNetworkEntryTask;->this$0:Lcom/android/htccontacts/HtcViewMyContactCardActivity;

    iput-object v12, v0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mFacebookStatusEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    goto :goto_0
.end method

.method private buildPlurkStatusEntry(Lcom/android/htccontacts/HtcViewMyContactCardActivity;)V
    .locals 14
    .parameter "target"

    .prologue
    const/4 v13, -0x1

    .line 1596
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity$BuildSocialNetworkEntryTask;->this$0:Lcom/android/htccontacts/HtcViewMyContactCardActivity;

    #getter for: Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mPlurkLogin:Z
    invoke-static {v0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->access$900(Lcom/android/htccontacts/HtcViewMyContactCardActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1597
    invoke-static {p1}, Lcom/android/htccontacts/util/ContactsUtils;->getPlurkMessageIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v9

    .line 1598
    .local v9, intent:Landroid/content/Intent;
    if-nez v9, :cond_1

    .line 1620
    .end local v9           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 1599
    .restart local v9       #intent:Landroid/content/Intent;
    :cond_1
    const-string v0, "nick_name"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1600
    .local v10, nick_name:Ljava/lang/String;
    const-string v0, "content_raw"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1601
    .local v7, content_raw:Ljava/lang/String;
    const/4 v8, 0x0

    .line 1602
    .local v8, footerLine:Ljava/lang/String;
    const-string v0, "posted"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v11

    check-cast v11, Ljava/util/Date;

    .line 1603
    .local v11, posted:Ljava/util/Date;
    if-eqz v11, :cond_2

    .line 1604
    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    const/high16 v6, 0x4

    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1609
    :cond_2
    new-instance v12, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    invoke-direct {v12}, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;-><init>()V

    .line 1610
    .local v12, viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    iput-object v10, v12, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text1:Ljava/lang/String;

    .line 1611
    iput-object v7, v12, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    .line 1612
    iput-object v8, v12, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text4:Ljava/lang/String;

    .line 1613
    const/16 v0, 0x1d

    iput v0, v12, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    .line 1614
    iput v13, v12, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->leftIconId:I

    .line 1615
    iput v13, v12, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->rightIconId:I

    .line 1616
    iput-object v9, v12, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->intent:Landroid/content/Intent;

    .line 1618
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity$BuildSocialNetworkEntryTask;->this$0:Lcom/android/htccontacts/HtcViewMyContactCardActivity;

    iput-object v12, v0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mPlurkStatusEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    goto :goto_0
.end method

.method private buildTwitterStatusEntry(Lcom/android/htccontacts/HtcViewMyContactCardActivity;)V
    .locals 13
    .parameter "target"

    .prologue
    const/4 v12, -0x1

    .line 1570
    iget-object v2, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity$BuildSocialNetworkEntryTask;->this$0:Lcom/android/htccontacts/HtcViewMyContactCardActivity;

    #getter for: Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mTwitterLogin:Z
    invoke-static {v2}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->access$800(Lcom/android/htccontacts/HtcViewMyContactCardActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1571
    invoke-static {p1}, Lcom/android/htccontacts/util/ContactsUtils;->getTwitterMessageIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v8

    .line 1572
    .local v8, intent:Landroid/content/Intent;
    if-nez v8, :cond_1

    .line 1594
    .end local v8           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 1573
    .restart local v8       #intent:Landroid/content/Intent;
    :cond_1
    const-string v2, "user_name"

    invoke-virtual {v8, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1574
    .local v10, userName:Ljava/lang/String;
    const-string v2, "message"

    invoke-virtual {v8, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1575
    .local v9, message:Ljava/lang/String;
    const/4 v7, 0x0

    .line 1576
    .local v7, footerLine:Ljava/lang/String;
    const-string v2, "created_at"

    const-wide/16 v3, -0x1

    invoke-virtual {v8, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1577
    .local v0, created_at:J
    const-wide/16 v2, 0x0

    cmp-long v2, v2, v0

    if-gez v2, :cond_2

    .line 1578
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    const/high16 v6, 0x4

    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1583
    :cond_2
    new-instance v11, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    invoke-direct {v11}, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;-><init>()V

    .line 1584
    .local v11, viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    iput-object v10, v11, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text1:Ljava/lang/String;

    .line 1585
    iput-object v9, v11, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    .line 1586
    iput-object v7, v11, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text4:Ljava/lang/String;

    .line 1587
    const/16 v2, 0x1d

    iput v2, v11, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    .line 1588
    iput v12, v11, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->leftIconId:I

    .line 1589
    iput v12, v11, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->rightIconId:I

    .line 1590
    iput-object v8, v11, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->intent:Landroid/content/Intent;

    .line 1592
    iget-object v2, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity$BuildSocialNetworkEntryTask;->this$0:Lcom/android/htccontacts/HtcViewMyContactCardActivity;

    iput-object v11, v2, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mTwitterStatusEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1480
    check-cast p1, Lcom/android/htccontacts/HtcViewMyContactCardActivity;

    .end local p1
    check-cast p2, [Ljava/lang/Void;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/HtcViewMyContactCardActivity$BuildSocialNetworkEntryTask;->doInBackground(Lcom/android/htccontacts/HtcViewMyContactCardActivity;[Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground(Lcom/android/htccontacts/HtcViewMyContactCardActivity;[Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .parameter "target"
    .parameter "params"

    .prologue
    .line 1498
    invoke-virtual {p1}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->IsForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1499
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity$BuildSocialNetworkEntryTask;->this$0:Lcom/android/htccontacts/HtcViewMyContactCardActivity;

    #calls: Lcom/android/htccontacts/HtcViewMyContactCardActivity;->removeAllEntries()V
    invoke-static {v0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->access$600(Lcom/android/htccontacts/HtcViewMyContactCardActivity;)V

    .line 1501
    invoke-direct {p0, p1}, Lcom/android/htccontacts/HtcViewMyContactCardActivity$BuildSocialNetworkEntryTask;->buildFacebookStatusEntry(Lcom/android/htccontacts/HtcViewMyContactCardActivity;)V

    .line 1502
    invoke-direct {p0, p1}, Lcom/android/htccontacts/HtcViewMyContactCardActivity$BuildSocialNetworkEntryTask;->buildTwitterStatusEntry(Lcom/android/htccontacts/HtcViewMyContactCardActivity;)V

    .line 1503
    invoke-direct {p0, p1}, Lcom/android/htccontacts/HtcViewMyContactCardActivity$BuildSocialNetworkEntryTask;->buildPlurkStatusEntry(Lcom/android/htccontacts/HtcViewMyContactCardActivity;)V

    .line 1504
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity$BuildSocialNetworkEntryTask;->this$0:Lcom/android/htccontacts/HtcViewMyContactCardActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->buildEntries()V

    .line 1506
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/htccontacts/HtcViewMyContactCardActivity;Ljava/lang/Void;)V
    .locals 1
    .parameter "target"
    .parameter "result"

    .prologue
    .line 1624
    if-eqz p1, :cond_1

    .line 1625
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity$BuildSocialNetworkEntryTask;->this$0:Lcom/android/htccontacts/HtcViewMyContactCardActivity;

    #calls: Lcom/android/htccontacts/HtcViewMyContactCardActivity;->addAndMergeAllEntries()V
    invoke-static {v0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->access$1000(Lcom/android/htccontacts/HtcViewMyContactCardActivity;)V

    .line 1626
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity$BuildSocialNetworkEntryTask;->this$0:Lcom/android/htccontacts/HtcViewMyContactCardActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->setMyProfileDefaultItemsIfNeeded()V

    .line 1628
    invoke-virtual {p1}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->IsForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1629
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity$BuildSocialNetworkEntryTask;->this$0:Lcom/android/htccontacts/HtcViewMyContactCardActivity;

    #calls: Lcom/android/htccontacts/HtcViewMyContactCardActivity;->setList()V
    invoke-static {v0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->access$1100(Lcom/android/htccontacts/HtcViewMyContactCardActivity;)V

    .line 1630
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity$BuildSocialNetworkEntryTask;->this$0:Lcom/android/htccontacts/HtcViewMyContactCardActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->startQueryAction()V

    .line 1632
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->setDoingBuildSocialNetworkEntryTask(Z)V

    .line 1634
    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1480
    check-cast p1, Lcom/android/htccontacts/HtcViewMyContactCardActivity;

    .end local p1
    check-cast p2, Ljava/lang/Void;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/HtcViewMyContactCardActivity$BuildSocialNetworkEntryTask;->onPostExecute(Lcom/android/htccontacts/HtcViewMyContactCardActivity;Ljava/lang/Void;)V

    return-void
.end method

.method protected onPreExecute(Lcom/android/htccontacts/HtcViewMyContactCardActivity;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 1489
    invoke-super {p0, p1}, Lcom/android/htccontacts/util/WeakAsyncTask;->onPreExecute(Ljava/lang/Object;)V

    .line 1490
    if-eqz p1, :cond_0

    .line 1491
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->setDoingBuildSocialNetworkEntryTask(Z)V

    .line 1492
    #calls: Lcom/android/htccontacts/HtcViewMyContactCardActivity;->resetList()V
    invoke-static {p1}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->access$500(Lcom/android/htccontacts/HtcViewMyContactCardActivity;)V

    .line 1494
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPreExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1480
    check-cast p1, Lcom/android/htccontacts/HtcViewMyContactCardActivity;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/HtcViewMyContactCardActivity$BuildSocialNetworkEntryTask;->onPreExecute(Lcom/android/htccontacts/HtcViewMyContactCardActivity;)V

    return-void
.end method
