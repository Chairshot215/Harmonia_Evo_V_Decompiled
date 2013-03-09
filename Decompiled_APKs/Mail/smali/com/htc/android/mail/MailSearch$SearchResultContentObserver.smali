.class Lcom/htc/android/mail/MailSearch$SearchResultContentObserver;
.super Landroid/database/ContentObserver;
.source "MailSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/MailSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchResultContentObserver"
.end annotation


# static fields
.field private static final interval:I = 0xbb8


# instance fields
.field private mIsDirty:Z

.field private mIsPaused:Z

.field private mLastTimeQuery:J

.field private mToken:I

.field private mUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/htc/android/mail/MailSearch;


# direct methods
.method public constructor <init>(Lcom/htc/android/mail/MailSearch;Landroid/os/Handler;)V
    .locals 3
    .parameter
    .parameter "handler"

    .prologue
    const/4 v2, 0x0

    .line 1752
    iput-object p1, p0, Lcom/htc/android/mail/MailSearch$SearchResultContentObserver;->this$0:Lcom/htc/android/mail/MailSearch;

    .line 1753
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1746
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/android/mail/MailSearch$SearchResultContentObserver;->mLastTimeQuery:J

    .line 1747
    iput-boolean v2, p0, Lcom/htc/android/mail/MailSearch$SearchResultContentObserver;->mIsDirty:Z

    .line 1750
    iput-boolean v2, p0, Lcom/htc/android/mail/MailSearch$SearchResultContentObserver;->mIsPaused:Z

    .line 1754
    return-void
.end method

.method private needQuery()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1800
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1801
    .local v0, nowTime:J
    iget-boolean v3, p0, Lcom/htc/android/mail/MailSearch$SearchResultContentObserver;->mIsPaused:Z

    if-eqz v3, :cond_1

    .line 1805
    :cond_0
    :goto_0
    return v2

    .line 1802
    :cond_1
    iget-object v3, p0, Lcom/htc/android/mail/MailSearch$SearchResultContentObserver;->this$0:Lcom/htc/android/mail/MailSearch;

    #getter for: Lcom/htc/android/mail/MailSearch;->mRefreshMailing:Z
    invoke-static {v3}, Lcom/htc/android/mail/MailSearch;->access$3000(Lcom/htc/android/mail/MailSearch;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-wide v3, p0, Lcom/htc/android/mail/MailSearch$SearchResultContentObserver;->mLastTimeQuery:J

    sub-long v3, v0, v3

    const-wide/16 v5, 0xbb8

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 1803
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 1758
    const/4 v0, 0x1

    return v0
.end method

.method public finalQuery()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 1794
    invoke-virtual {p0}, Lcom/htc/android/mail/MailSearch$SearchResultContentObserver;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1795
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch$SearchResultContentObserver;->this$0:Lcom/htc/android/mail/MailSearch;

    #getter for: Lcom/htc/android/mail/MailSearch;->mQueryHandler:Lcom/htc/android/mail/MailSearch$QueryHandler;
    invoke-static {v0}, Lcom/htc/android/mail/MailSearch;->access$1900(Lcom/htc/android/mail/MailSearch;)Lcom/htc/android/mail/MailSearch$QueryHandler;

    move-result-object v0

    iget v1, p0, Lcom/htc/android/mail/MailSearch$SearchResultContentObserver;->mToken:I

    iget-object v3, p0, Lcom/htc/android/mail/MailSearch$SearchResultContentObserver;->mUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/htc/android/mail/MailSearch$SearchResultContentObserver;->this$0:Lcom/htc/android/mail/MailSearch;

    #getter for: Lcom/htc/android/mail/MailSearch;->mProjection:[Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/android/mail/MailSearch;->access$1600(Lcom/htc/android/mail/MailSearch;)[Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/MailSearch$SearchResultContentObserver;->this$0:Lcom/htc/android/mail/MailSearch;

    #getter for: Lcom/htc/android/mail/MailSearch;->mWhere:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/android/mail/MailSearch;->access$1700(Lcom/htc/android/mail/MailSearch;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/mail/MailSearch$SearchResultContentObserver;->this$0:Lcom/htc/android/mail/MailSearch;

    #getter for: Lcom/htc/android/mail/MailSearch;->MAIL_SORT_RULE:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/android/mail/MailSearch;->access$1800(Lcom/htc/android/mail/MailSearch;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/htc/android/mail/MailSearch$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1797
    :cond_0
    return-void
.end method

.method public getToken()I
    .locals 1

    .prologue
    .line 1782
    iget v0, p0, Lcom/htc/android/mail/MailSearch$SearchResultContentObserver;->mToken:I

    return v0
.end method

.method public getUri(I)Landroid/net/Uri;
    .locals 1
    .parameter "token"

    .prologue
    .line 1773
    if-nez p1, :cond_0

    .line 1774
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch$SearchResultContentObserver;->this$0:Lcom/htc/android/mail/MailSearch;

    #getter for: Lcom/htc/android/mail/MailSearch;->mUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/htc/android/mail/MailSearch;->access$2900(Lcom/htc/android/mail/MailSearch;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/MailSearch$SearchResultContentObserver;->mUri:Landroid/net/Uri;

    .line 1778
    :goto_0
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch$SearchResultContentObserver;->mUri:Landroid/net/Uri;

    return-object v0

    .line 1776
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch$SearchResultContentObserver;->this$0:Lcom/htc/android/mail/MailSearch;

    #getter for: Lcom/htc/android/mail/MailSearch;->mServerSearchUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/htc/android/mail/MailSearch;->access$1500(Lcom/htc/android/mail/MailSearch;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/MailSearch$SearchResultContentObserver;->mUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method public isDirty()Z
    .locals 1

    .prologue
    .line 1790
    iget-boolean v0, p0, Lcom/htc/android/mail/MailSearch$SearchResultContentObserver;->mIsDirty:Z

    return v0
.end method

.method public isPause()Z
    .locals 1

    .prologue
    .line 1809
    iget-boolean v0, p0, Lcom/htc/android/mail/MailSearch$SearchResultContentObserver;->mIsPaused:Z

    return v0
.end method

.method public onChange(Z)V
    .locals 8
    .parameter "selfChange"

    .prologue
    const/4 v2, 0x0

    .line 1763
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/mail/MailSearch$SearchResultContentObserver;->mIsDirty:Z

    .line 1764
    invoke-direct {p0}, Lcom/htc/android/mail/MailSearch$SearchResultContentObserver;->needQuery()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1765
    invoke-static {}, Lcom/htc/android/mail/MailSearch;->access$900()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MailSearch"

    const-string v1, "onChange: start query"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1766
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch$SearchResultContentObserver;->this$0:Lcom/htc/android/mail/MailSearch;

    #getter for: Lcom/htc/android/mail/MailSearch;->mQueryHandler:Lcom/htc/android/mail/MailSearch$QueryHandler;
    invoke-static {v0}, Lcom/htc/android/mail/MailSearch;->access$1900(Lcom/htc/android/mail/MailSearch;)Lcom/htc/android/mail/MailSearch$QueryHandler;

    move-result-object v0

    iget v1, p0, Lcom/htc/android/mail/MailSearch$SearchResultContentObserver;->mToken:I

    iget v3, p0, Lcom/htc/android/mail/MailSearch$SearchResultContentObserver;->mToken:I

    invoke-virtual {p0, v3}, Lcom/htc/android/mail/MailSearch$SearchResultContentObserver;->getUri(I)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/mail/MailSearch$SearchResultContentObserver;->this$0:Lcom/htc/android/mail/MailSearch;

    #getter for: Lcom/htc/android/mail/MailSearch;->mProjection:[Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/android/mail/MailSearch;->access$1600(Lcom/htc/android/mail/MailSearch;)[Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/MailSearch$SearchResultContentObserver;->this$0:Lcom/htc/android/mail/MailSearch;

    #getter for: Lcom/htc/android/mail/MailSearch;->mWhere:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/android/mail/MailSearch;->access$1700(Lcom/htc/android/mail/MailSearch;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/mail/MailSearch$SearchResultContentObserver;->this$0:Lcom/htc/android/mail/MailSearch;

    #getter for: Lcom/htc/android/mail/MailSearch;->MAIL_SORT_RULE:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/android/mail/MailSearch;->access$1800(Lcom/htc/android/mail/MailSearch;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/htc/android/mail/MailSearch$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1767
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/android/mail/MailSearch$SearchResultContentObserver;->mLastTimeQuery:J

    .line 1768
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/mail/MailSearch$SearchResultContentObserver;->mIsDirty:Z

    .line 1770
    :cond_1
    return-void
.end method

.method public setDirty(Z)V
    .locals 0
    .parameter "dirty"

    .prologue
    .line 1786
    iput-boolean p1, p0, Lcom/htc/android/mail/MailSearch$SearchResultContentObserver;->mIsDirty:Z

    .line 1787
    return-void
.end method

.method public setPause(Z)V
    .locals 8
    .parameter "pause"

    .prologue
    const/4 v2, 0x0

    .line 1813
    iput-boolean p1, p0, Lcom/htc/android/mail/MailSearch$SearchResultContentObserver;->mIsPaused:Z

    .line 1814
    iget-boolean v0, p0, Lcom/htc/android/mail/MailSearch$SearchResultContentObserver;->mIsPaused:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1815
    invoke-virtual {p0}, Lcom/htc/android/mail/MailSearch$SearchResultContentObserver;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1816
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch$SearchResultContentObserver;->this$0:Lcom/htc/android/mail/MailSearch;

    #getter for: Lcom/htc/android/mail/MailSearch;->mQueryHandler:Lcom/htc/android/mail/MailSearch$QueryHandler;
    invoke-static {v0}, Lcom/htc/android/mail/MailSearch;->access$1900(Lcom/htc/android/mail/MailSearch;)Lcom/htc/android/mail/MailSearch$QueryHandler;

    move-result-object v0

    iget v1, p0, Lcom/htc/android/mail/MailSearch$SearchResultContentObserver;->mToken:I

    iget v3, p0, Lcom/htc/android/mail/MailSearch$SearchResultContentObserver;->mToken:I

    invoke-virtual {p0, v3}, Lcom/htc/android/mail/MailSearch$SearchResultContentObserver;->getUri(I)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/mail/MailSearch$SearchResultContentObserver;->this$0:Lcom/htc/android/mail/MailSearch;

    #getter for: Lcom/htc/android/mail/MailSearch;->mProjection:[Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/android/mail/MailSearch;->access$1600(Lcom/htc/android/mail/MailSearch;)[Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/MailSearch$SearchResultContentObserver;->this$0:Lcom/htc/android/mail/MailSearch;

    #getter for: Lcom/htc/android/mail/MailSearch;->mWhere:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/android/mail/MailSearch;->access$1700(Lcom/htc/android/mail/MailSearch;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/mail/MailSearch$SearchResultContentObserver;->this$0:Lcom/htc/android/mail/MailSearch;

    #getter for: Lcom/htc/android/mail/MailSearch;->MAIL_SORT_RULE:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/android/mail/MailSearch;->access$1800(Lcom/htc/android/mail/MailSearch;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/htc/android/mail/MailSearch$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1819
    :cond_0
    return-void
.end method

.method public setToken(I)V
    .locals 0
    .parameter "token"

    .prologue
    .line 1822
    iput p1, p0, Lcom/htc/android/mail/MailSearch$SearchResultContentObserver;->mToken:I

    .line 1823
    return-void
.end method
