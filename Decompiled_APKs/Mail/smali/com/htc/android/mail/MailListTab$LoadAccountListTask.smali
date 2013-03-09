.class Lcom/htc/android/mail/MailListTab$LoadAccountListTask;
.super Landroid/os/AsyncTask;
.source "MailListTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/MailListTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadAccountListTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/MailListTab;


# direct methods
.method private constructor <init>(Lcom/htc/android/mail/MailListTab;)V
    .locals 0
    .parameter

    .prologue
    .line 1585
    iput-object p1, p0, Lcom/htc/android/mail/MailListTab$LoadAccountListTask;->this$0:Lcom/htc/android/mail/MailListTab;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/mail/MailListTab;Lcom/htc/android/mail/MailListTab$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1585
    invoke-direct {p0, p1}, Lcom/htc/android/mail/MailListTab$LoadAccountListTask;-><init>(Lcom/htc/android/mail/MailListTab;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1585
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/MailListTab$LoadAccountListTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 15
    .parameter "params"

    .prologue
    .line 1588
    const/4 v11, 0x0

    .line 1589
    .local v11, totalAccount:I
    const/4 v12, 0x0

    .line 1590
    .local v12, totalCount:I
    const/4 v6, 0x0

    .line 1591
    .local v6, accountAddrCursor:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab$LoadAccountListTask;->this$0:Lcom/htc/android/mail/MailListTab;

    #getter for: Lcom/htc/android/mail/MailListTab;->mTrackMsgCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/htc/android/mail/MailListTab;->access$1300(Lcom/htc/android/mail/MailListTab;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1592
    iget-object v14, p0, Lcom/htc/android/mail/MailListTab$LoadAccountListTask;->this$0:Lcom/htc/android/mail/MailListTab;

    iget-object v0, p0, Lcom/htc/android/mail/MailListTab$LoadAccountListTask;->this$0:Lcom/htc/android/mail/MailListTab;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailListTab;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->accountWithUnread:Landroid/net/Uri;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/String;

    const-string v4, "accounts._del = -1"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    #setter for: Lcom/htc/android/mail/MailListTab;->mTrackMsgCursor:Landroid/database/Cursor;
    invoke-static {v14, v0}, Lcom/htc/android/mail/MailListTab;->access$1302(Lcom/htc/android/mail/MailListTab;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1594
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab$LoadAccountListTask;->this$0:Lcom/htc/android/mail/MailListTab;

    #getter for: Lcom/htc/android/mail/MailListTab;->mAccountListChangeObserver:Landroid/database/ContentObserver;
    invoke-static {v0}, Lcom/htc/android/mail/MailListTab;->access$2100(Lcom/htc/android/mail/MailListTab;)Landroid/database/ContentObserver;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1595
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab$LoadAccountListTask;->this$0:Lcom/htc/android/mail/MailListTab;

    new-instance v1, Lcom/htc/android/mail/MailListTab$AccountListChangeObserver;

    iget-object v2, p0, Lcom/htc/android/mail/MailListTab$LoadAccountListTask;->this$0:Lcom/htc/android/mail/MailListTab;

    invoke-direct {v1, v2}, Lcom/htc/android/mail/MailListTab$AccountListChangeObserver;-><init>(Lcom/htc/android/mail/MailListTab;)V

    #setter for: Lcom/htc/android/mail/MailListTab;->mAccountListChangeObserver:Landroid/database/ContentObserver;
    invoke-static {v0, v1}, Lcom/htc/android/mail/MailListTab;->access$2102(Lcom/htc/android/mail/MailListTab;Landroid/database/ContentObserver;)Landroid/database/ContentObserver;

    .line 1596
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab$LoadAccountListTask;->this$0:Lcom/htc/android/mail/MailListTab;

    #getter for: Lcom/htc/android/mail/MailListTab;->mTrackMsgCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/htc/android/mail/MailListTab;->access$1300(Lcom/htc/android/mail/MailListTab;)Landroid/database/Cursor;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/MailListTab$LoadAccountListTask;->this$0:Lcom/htc/android/mail/MailListTab;

    #getter for: Lcom/htc/android/mail/MailListTab;->mAccountListChangeObserver:Landroid/database/ContentObserver;
    invoke-static {v1}, Lcom/htc/android/mail/MailListTab;->access$2100(Lcom/htc/android/mail/MailListTab;)Landroid/database/ContentObserver;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 1597
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab$LoadAccountListTask;->this$0:Lcom/htc/android/mail/MailListTab;

    #getter for: Lcom/htc/android/mail/MailListTab;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/htc/android/mail/MailListTab;->access$1900(Lcom/htc/android/mail/MailListTab;)Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1598
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab$LoadAccountListTask;->this$0:Lcom/htc/android/mail/MailListTab;

    #getter for: Lcom/htc/android/mail/MailListTab;->mTrackMsgCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/htc/android/mail/MailListTab;->access$1300(Lcom/htc/android/mail/MailListTab;)Landroid/database/Cursor;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/MailListTab$LoadAccountListTask;->this$0:Lcom/htc/android/mail/MailListTab;

    #getter for: Lcom/htc/android/mail/MailListTab;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/htc/android/mail/MailListTab;->access$1900(Lcom/htc/android/mail/MailListTab;)Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/htc/android/mail/MailProvider;->accountWithUnread:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 1602
    :cond_1
    const/16 v0, 0x9

    new-array v9, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v9, v0

    const/4 v0, 0x1

    const-string v1, "_desc"

    aput-object v1, v9, v0

    const/4 v0, 0x2

    const-string v1, "_emailaddress"

    aput-object v1, v9, v0

    const/4 v0, 0x3

    const-string v1, "_count"

    aput-object v1, v9, v0

    const/4 v0, 0x4

    const-string v1, "_defaultaccount"

    aput-object v1, v9, v0

    const/4 v0, 0x5

    const-string v1, "_colorIdx"

    aput-object v1, v9, v0

    const/4 v0, 0x6

    const-string v1, "_provider"

    aput-object v1, v9, v0

    const/4 v0, 0x7

    const-string v1, "_protocol"

    aput-object v1, v9, v0

    const/16 v0, 0x8

    const-string v1, "_providerGroup"

    aput-object v1, v9, v0

    .line 1605
    .local v9, projection:[Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab$LoadAccountListTask;->this$0:Lcom/htc/android/mail/MailListTab;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailListTab;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->accountWithUnread:Landroid/net/Uri;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/String;

    const-string v4, "accounts._del = -1"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1608
    array-length v0, v9

    new-array v13, v0, [Ljava/lang/Object;

    .line 1609
    .local v13, values:[Ljava/lang/Object;
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v13, v0

    .line 1610
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab$LoadAccountListTask;->this$0:Lcom/htc/android/mail/MailListTab;

    new-instance v1, Landroid/database/MatrixCursor;

    invoke-direct {v1, v9}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    #setter for: Lcom/htc/android/mail/MailListTab;->mAccountListCursor:Landroid/database/MatrixCursor;
    invoke-static {v0, v1}, Lcom/htc/android/mail/MailListTab;->access$2202(Lcom/htc/android/mail/MailListTab;Landroid/database/MatrixCursor;)Landroid/database/MatrixCursor;

    .line 1613
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab$LoadAccountListTask;->this$0:Lcom/htc/android/mail/MailListTab;

    #getter for: Lcom/htc/android/mail/MailListTab;->mAccountListCursor:Landroid/database/MatrixCursor;
    invoke-static {v0}, Lcom/htc/android/mail/MailListTab;->access$2200(Lcom/htc/android/mail/MailListTab;)Landroid/database/MatrixCursor;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1615
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1616
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 1617
    .local v8, count:I
    add-int/2addr v12, v8

    .line 1618
    goto :goto_0

    .line 1621
    .end local v8           #count:I
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    .line 1622
    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Lcom/htc/android/mail/MailProvider;->getAccount(J)Lcom/htc/android/mail/Account;

    move-result-object v7

    .line 1623
    .local v7, combinedAccount:Lcom/htc/android/mail/Account;
    const/4 v0, 0x0

    invoke-virtual {v7}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v13, v0

    .line 1624
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/htc/android/mail/MailListTab$LoadAccountListTask;->this$0:Lcom/htc/android/mail/MailListTab;

    invoke-virtual {v7, v1}, Lcom/htc/android/mail/Account;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v13, v0

    .line 1625
    const/4 v0, 0x3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v13, v0

    .line 1626
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab$LoadAccountListTask;->this$0:Lcom/htc/android/mail/MailListTab;

    #getter for: Lcom/htc/android/mail/MailListTab;->mAccountListCursor:Landroid/database/MatrixCursor;
    invoke-static {v0}, Lcom/htc/android/mail/MailListTab;->access$2200(Lcom/htc/android/mail/MailListTab;)Landroid/database/MatrixCursor;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1629
    .end local v7           #combinedAccount:Lcom/htc/android/mail/Account;
    :cond_3
    invoke-static {}, Lcom/htc/android/mail/Mail;->isHuxEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1630
    const/4 v0, -0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1633
    :cond_4
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1635
    const-string v0, "Verizon"

    const/4 v1, 0x7

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1636
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v13, v0

    .line 1637
    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v13, v0

    .line 1638
    const/4 v0, 0x2

    const/4 v1, 0x2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v13, v0

    .line 1639
    const/4 v0, 0x3

    const/4 v1, 0x3

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v13, v0

    .line 1640
    const/4 v0, 0x4

    const/4 v1, 0x4

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v13, v0

    .line 1641
    const/4 v0, 0x5

    const/4 v1, 0x5

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v13, v0

    .line 1642
    const/4 v0, 0x6

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1643
    .local v10, providerGroup:Ljava/lang/String;
    const/4 v0, 0x6

    const/4 v1, 0x7

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v13, v0

    .line 1644
    const/4 v0, 0x7

    const/16 v1, 0x8

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v13, v0

    .line 1646
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab$LoadAccountListTask;->this$0:Lcom/htc/android/mail/MailListTab;

    #getter for: Lcom/htc/android/mail/MailListTab;->mAccountListCursor:Landroid/database/MatrixCursor;
    invoke-static {v0}, Lcom/htc/android/mail/MailListTab;->access$2200(Lcom/htc/android/mail/MailListTab;)Landroid/database/MatrixCursor;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1647
    add-int/lit8 v11, v11, 0x1

    .line 1648
    goto :goto_1

    .line 1653
    .end local v10           #providerGroup:Ljava/lang/String;
    :cond_5
    const/4 v0, -0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1655
    :cond_6
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1657
    invoke-static {}, Lcom/htc/android/mail/Mail;->isHuxEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1659
    const-string v0, "Verizon"

    const/4 v1, 0x7

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1664
    :cond_7
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v13, v0

    .line 1665
    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v13, v0

    .line 1666
    const/4 v0, 0x2

    const/4 v1, 0x2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v13, v0

    .line 1667
    const/4 v0, 0x3

    const/4 v1, 0x3

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v13, v0

    .line 1668
    const/4 v0, 0x4

    const/4 v1, 0x4

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v13, v0

    .line 1669
    const/4 v0, 0x5

    const/4 v1, 0x5

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v13, v0

    .line 1670
    const/4 v0, 0x6

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1671
    .restart local v10       #providerGroup:Ljava/lang/String;
    const/4 v0, 0x6

    const/4 v1, 0x7

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v13, v0

    .line 1672
    const/4 v0, 0x7

    const/16 v1, 0x8

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v13, v0

    .line 1673
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab$LoadAccountListTask;->this$0:Lcom/htc/android/mail/MailListTab;

    #getter for: Lcom/htc/android/mail/MailListTab;->mAccountListCursor:Landroid/database/MatrixCursor;
    invoke-static {v0}, Lcom/htc/android/mail/MailListTab;->access$2200(Lcom/htc/android/mail/MailListTab;)Landroid/database/MatrixCursor;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1674
    add-int/lit8 v11, v11, 0x1

    .line 1675
    goto :goto_2

    .line 1676
    .end local v10           #providerGroup:Ljava/lang/String;
    :cond_8
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1677
    const/4 v0, 0x1

    if-ne v11, v0, :cond_9

    .line 1678
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab$LoadAccountListTask;->this$0:Lcom/htc/android/mail/MailListTab;

    #getter for: Lcom/htc/android/mail/MailListTab;->mAccountListAdapter:Lcom/htc/android/mail/widget/AccountListAdapter;
    invoke-static {v0}, Lcom/htc/android/mail/MailListTab;->access$2300(Lcom/htc/android/mail/MailListTab;)Lcom/htc/android/mail/widget/AccountListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/mail/widget/AccountListAdapter;->setOnlyOneAccount()V

    .line 1681
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1585
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/MailListTab$LoadAccountListTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1685
    invoke-static {}, Lcom/htc/android/mail/MailListTab;->access$800()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MailListTab"

    const-string v1, "onPostExecute>"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1686
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab$LoadAccountListTask;->this$0:Lcom/htc/android/mail/MailListTab;

    #getter for: Lcom/htc/android/mail/MailListTab;->mAccountListAdapter:Lcom/htc/android/mail/widget/AccountListAdapter;
    invoke-static {v0}, Lcom/htc/android/mail/MailListTab;->access$2300(Lcom/htc/android/mail/MailListTab;)Lcom/htc/android/mail/widget/AccountListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/MailListTab$LoadAccountListTask;->this$0:Lcom/htc/android/mail/MailListTab;

    #getter for: Lcom/htc/android/mail/MailListTab;->mAccountListCursor:Landroid/database/MatrixCursor;
    invoke-static {v1}, Lcom/htc/android/mail/MailListTab;->access$2200(Lcom/htc/android/mail/MailListTab;)Landroid/database/MatrixCursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/widget/AccountListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1687
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab$LoadAccountListTask;->this$0:Lcom/htc/android/mail/MailListTab;

    iget-object v0, v0, Lcom/htc/android/mail/MailListTab;->mMailListActionBar:Lcom/htc/android/mail/widget/MailActionBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/android/mail/MailListTab$LoadAccountListTask;->this$0:Lcom/htc/android/mail/MailListTab;

    iget-object v0, v0, Lcom/htc/android/mail/MailListTab;->mMailListActionBar:Lcom/htc/android/mail/widget/MailActionBar;

    invoke-virtual {v0}, Lcom/htc/android/mail/widget/MailActionBar;->getDropDownList()Lcom/htc/widget/HeaderBarDropDown;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1702
    :cond_1
    :goto_0
    return-void

    .line 1688
    :cond_2
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab$LoadAccountListTask;->this$0:Lcom/htc/android/mail/MailListTab;

    #getter for: Lcom/htc/android/mail/MailListTab;->mAccountListAdapter:Lcom/htc/android/mail/widget/AccountListAdapter;
    invoke-static {v0}, Lcom/htc/android/mail/MailListTab;->access$2300(Lcom/htc/android/mail/MailListTab;)Lcom/htc/android/mail/widget/AccountListAdapter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/widget/AccountListAdapter;->setInverseBackgroundColor(Z)V

    .line 1689
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab$LoadAccountListTask;->this$0:Lcom/htc/android/mail/MailListTab;

    iget-object v0, v0, Lcom/htc/android/mail/MailListTab;->mMailListActionBar:Lcom/htc/android/mail/widget/MailActionBar;

    iget-object v0, v0, Lcom/htc/android/mail/widget/MailActionBar;->mDropDownList:Lcom/htc/widget/HeaderBarDropDown;

    iget-object v1, p0, Lcom/htc/android/mail/MailListTab$LoadAccountListTask;->this$0:Lcom/htc/android/mail/MailListTab;

    #getter for: Lcom/htc/android/mail/MailListTab;->mAccountListAdapter:Lcom/htc/android/mail/widget/AccountListAdapter;
    invoke-static {v1}, Lcom/htc/android/mail/MailListTab;->access$2300(Lcom/htc/android/mail/MailListTab;)Lcom/htc/android/mail/widget/AccountListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarDropDown;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1690
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab$LoadAccountListTask;->this$0:Lcom/htc/android/mail/MailListTab;

    iget-object v0, v0, Lcom/htc/android/mail/MailListTab;->mMailListActionBar:Lcom/htc/android/mail/widget/MailActionBar;

    iget-object v0, v0, Lcom/htc/android/mail/widget/MailActionBar;->mDropDownList:Lcom/htc/widget/HeaderBarDropDown;

    new-instance v1, Lcom/htc/android/mail/MailListTab$LoadAccountListTask$1;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/MailListTab$LoadAccountListTask$1;-><init>(Lcom/htc/android/mail/MailListTab$LoadAccountListTask;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarDropDown;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0
.end method
