.class Lcom/htc/android/mail/MailList$15;
.super Lcom/htc/android/mail/MailList$TabInfo;
.source "MailList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/MailList;->doGroupTab()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/MailList;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/MailList;)V
    .locals 0
    .parameter

    .prologue
    .line 1814
    iput-object p1, p0, Lcom/htc/android/mail/MailList$15;->this$0:Lcom/htc/android/mail/MailList;

    invoke-direct {p0, p1}, Lcom/htc/android/mail/MailList$TabInfo;-><init>(Lcom/htc/android/mail/MailList;)V

    return-void
.end method


# virtual methods
.method public getChildrenCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 6
    .parameter "groupCursor"

    .prologue
    const/4 v4, 0x0

    .line 1848
    iget-object v0, p0, Lcom/htc/android/mail/MailList$15;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/android/mail/MailList;->access$3100(Lcom/htc/android/mail/MailList;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/android/mail/MailList$15;->getChildrenUri()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/htc/android/mail/MailProvider;->sSummaryColumns:[Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/htc/android/mail/MailList$15;->getChildrenWhere(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v4, v4}, Lcom/htc/android/mail/MailList$15;->getChildrenSortOrder(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getChildrenSortOrder(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "column"
    .parameter "order"

    .prologue
    .line 1843
    const-string v0, "messages._internaldate DESC"

    return-object v0
.end method

.method public getChildrenUri()Landroid/net/Uri;
    .locals 6

    .prologue
    .line 1854
    iget-object v2, p0, Lcom/htc/android/mail/MailList$15;->this$0:Lcom/htc/android/mail/MailList;

    iget-object v2, v2, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    iget-object v4, p0, Lcom/htc/android/mail/MailList$15;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mMailbox:Lcom/htc/android/mail/Mailbox;
    invoke-static {v4}, Lcom/htc/android/mail/MailList;->access$500(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/Mailbox;

    move-result-object v4

    iget-wide v4, v4, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-static {v2, v3, v4, v5}, Lcom/htc/android/mail/MailCommon;->getSummariesUri(JJ)Landroid/net/Uri;

    move-result-object v0

    .line 1855
    .local v0, baseUri:Landroid/net/Uri;
    const-string v2, "groupChildren"

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1856
    .local v1, uri:Landroid/net/Uri;
    return-object v1
.end method

.method public getChildrenWhere(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 7
    .parameter "groupCursor"

    .prologue
    .line 1835
    sget v1, Lcom/htc/android/mail/MailProvider;->sSummaryGroupsTitleIdx:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1836
    .local v0, title:Ljava/lang/String;
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "_mailboxId = %d AND _fromEmail in (SELECT people_db.data.data FROM people_db.data WHERE people_db.data.group_id in (SELECT _id FROM people_db.groups WHERE title = %s))"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/htc/android/mail/MailList$15;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mMailbox:Lcom/htc/android/mail/Mailbox;
    invoke-static {v5}, Lcom/htc/android/mail/MailList;->access$500(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/Mailbox;

    move-result-object v5

    iget-wide v5, v5, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getListView()Lcom/htc/widget/HtcListView;
    .locals 4

    .prologue
    .line 1868
    iget-object v2, p0, Lcom/htc/android/mail/MailList$TabInfo;->mList:Lcom/htc/widget/HtcListView;

    if-nez v2, :cond_0

    .line 1869
    invoke-super {p0}, Lcom/htc/android/mail/MailList$TabInfo;->getListView()Lcom/htc/widget/HtcListView;

    .line 1870
    invoke-super {p0}, Lcom/htc/android/mail/MailList$TabInfo;->addSecondHeader()V

    .line 1871
    iget-object v2, p0, Lcom/htc/android/mail/MailList$TabInfo;->mList:Lcom/htc/widget/HtcListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 1872
    iget-object v2, p0, Lcom/htc/android/mail/MailList$TabInfo;->mList:Lcom/htc/widget/HtcListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    .line 1874
    iget-object v1, p0, Lcom/htc/android/mail/MailList$TabInfo;->mList:Lcom/htc/widget/HtcListView;

    check-cast v1, Lcom/htc/widget/HtcExpandableListView;

    .line 1875
    .local v1, expandListView:Lcom/htc/widget/HtcExpandableListView;
    new-instance v2, Lcom/htc/android/mail/MailList$15$1;

    invoke-direct {v2, p0, v1}, Lcom/htc/android/mail/MailList$15$1;-><init>(Lcom/htc/android/mail/MailList$15;Lcom/htc/widget/HtcExpandableListView;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcExpandableListView;->setOnGroupExpandListener(Lcom/htc/widget/HtcExpandableListView$OnGroupExpandListener;)V

    .line 1905
    new-instance v2, Lcom/htc/android/mail/MailList$15$2;

    invoke-direct {v2, p0}, Lcom/htc/android/mail/MailList$15$2;-><init>(Lcom/htc/android/mail/MailList$15;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcExpandableListView;->setOnChildClickListener(Lcom/htc/widget/HtcExpandableListView$OnChildClickListener;)V

    .line 1915
    iget-object v2, p0, Lcom/htc/android/mail/MailList$15;->this$0:Lcom/htc/android/mail/MailList;

    invoke-virtual {v2}, Lcom/htc/android/mail/MailList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1916
    .local v0, config:Landroid/content/res/Configuration;
    iget-object v2, p0, Lcom/htc/android/mail/MailList$15;->this$0:Lcom/htc/android/mail/MailList;

    invoke-virtual {v2, v0, v1}, Lcom/htc/android/mail/MailList;->setIndicatorBounds(Landroid/content/res/Configuration;Lcom/htc/widget/HtcExpandableListView;)V

    .line 1918
    .end local v0           #config:Landroid/content/res/Configuration;
    .end local v1           #expandListView:Lcom/htc/widget/HtcExpandableListView;
    :cond_0
    iget-object v2, p0, Lcom/htc/android/mail/MailList$TabInfo;->mList:Lcom/htc/widget/HtcListView;

    return-object v2
.end method

.method public getMailListTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1819
    iget-object v0, p0, Lcom/htc/android/mail/MailList$15;->this$0:Lcom/htc/android/mail/MailList;

    const v1, 0x7f0b0057

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/MailList;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProjection()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1824
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sSummaryColumnsForGroups:[Ljava/lang/String;

    return-object v0
.end method

.method public getSortOrder(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "column"
    .parameter "order"

    .prologue
    .line 1829
    const-string v0, "people_db.groups.sortorder DESC"

    iput-object v0, p0, Lcom/htc/android/mail/MailList$TabInfo;->mSortRule:Ljava/lang/String;

    .line 1830
    iget-object v0, p0, Lcom/htc/android/mail/MailList$TabInfo;->mSortRule:Ljava/lang/String;

    return-object v0
.end method

.method public taskBeforeQuery()V
    .locals 1

    .prologue
    .line 1861
    iget-object v0, p0, Lcom/htc/android/mail/MailList$15;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mGroupMailStore:Lcom/htc/android/mail/database/GroupMailStore;
    invoke-static {v0}, Lcom/htc/android/mail/MailList;->access$3200(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/database/GroupMailStore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1862
    iget-object v0, p0, Lcom/htc/android/mail/MailList$15;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mGroupMailStore:Lcom/htc/android/mail/database/GroupMailStore;
    invoke-static {v0}, Lcom/htc/android/mail/MailList;->access$3200(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/database/GroupMailStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/mail/database/GroupMailStore;->getDataFromPeople()V

    .line 1864
    :cond_0
    return-void
.end method
