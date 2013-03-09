.class Lcom/htc/android/mail/MailSearch$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "MailSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/MailSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/MailSearch;


# direct methods
.method public constructor <init>(Lcom/htc/android/mail/MailSearch;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 1650
    iput-object p1, p0, Lcom/htc/android/mail/MailSearch$QueryHandler;->this$0:Lcom/htc/android/mail/MailSearch;

    .line 1651
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 1652
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 3
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 1656
    if-nez p3, :cond_1

    .line 1657
    invoke-static {}, Lcom/htc/android/mail/MailSearch;->access$900()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "MailSearch"

    const-string v2, "onQueryComplete cursor null>"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1694
    :cond_0
    :goto_0
    return-void

    .line 1662
    :cond_1
    iget-object v1, p0, Lcom/htc/android/mail/MailSearch$QueryHandler;->this$0:Lcom/htc/android/mail/MailSearch;

    invoke-virtual {v1}, Lcom/htc/android/mail/MailSearch;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lcom/htc/android/mail/MailSearch$QueryHandler;->this$0:Lcom/htc/android/mail/MailSearch;

    #getter for: Lcom/htc/android/mail/MailSearch;->mIsShowServerMail:Z
    invoke-static {v1}, Lcom/htc/android/mail/MailSearch;->access$300(Lcom/htc/android/mail/MailSearch;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1663
    :cond_2
    invoke-interface {p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1664
    move-object v0, p3

    .line 1665
    .local v0, fCursor:Landroid/database/Cursor;
    invoke-static {}, Lcom/htc/android/mail/MailListTab$BackGroundHandler;->getInstance()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/htc/android/mail/MailSearch$QueryHandler$1;

    invoke-direct {v2, p0, v0}, Lcom/htc/android/mail/MailSearch$QueryHandler$1;-><init>(Lcom/htc/android/mail/MailSearch$QueryHandler;Landroid/database/Cursor;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1685
    .end local v0           #fCursor:Landroid/database/Cursor;
    :cond_3
    iget-object v1, p0, Lcom/htc/android/mail/MailSearch$QueryHandler;->this$0:Lcom/htc/android/mail/MailSearch;

    iget-object v1, v1, Lcom/htc/android/mail/MailSearch;->mResultContentObserver:Lcom/htc/android/mail/MailSearch$SearchResultContentObserver;

    invoke-virtual {v1, p1}, Lcom/htc/android/mail/MailSearch$SearchResultContentObserver;->setToken(I)V

    .line 1686
    iget-object v1, p0, Lcom/htc/android/mail/MailSearch$QueryHandler;->this$0:Lcom/htc/android/mail/MailSearch;

    iget-object v1, v1, Lcom/htc/android/mail/MailSearch;->mResultContentObserver:Lcom/htc/android/mail/MailSearch$SearchResultContentObserver;

    invoke-interface {p3, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 1688
    iget-object v1, p0, Lcom/htc/android/mail/MailSearch$QueryHandler;->this$0:Lcom/htc/android/mail/MailSearch;

    #getter for: Lcom/htc/android/mail/MailSearch;->mAdapter:Lcom/htc/android/mail/MailSearch$MailListAdapter;
    invoke-static {v1}, Lcom/htc/android/mail/MailSearch;->access$2500(Lcom/htc/android/mail/MailSearch;)Lcom/htc/android/mail/MailSearch$MailListAdapter;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1689
    iget-object v1, p0, Lcom/htc/android/mail/MailSearch$QueryHandler;->this$0:Lcom/htc/android/mail/MailSearch;

    #setter for: Lcom/htc/android/mail/MailSearch;->privateCursor:Landroid/database/Cursor;
    invoke-static {v1, p3}, Lcom/htc/android/mail/MailSearch;->access$2602(Lcom/htc/android/mail/MailSearch;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1690
    iget-object v1, p0, Lcom/htc/android/mail/MailSearch$QueryHandler;->this$0:Lcom/htc/android/mail/MailSearch;

    #getter for: Lcom/htc/android/mail/MailSearch;->mAdapter:Lcom/htc/android/mail/MailSearch$MailListAdapter;
    invoke-static {v1}, Lcom/htc/android/mail/MailSearch;->access$2500(Lcom/htc/android/mail/MailSearch;)Lcom/htc/android/mail/MailSearch$MailListAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/htc/android/mail/MailSearch$MailListAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 1692
    :cond_4
    const-string v1, "MailSearch"

    const-string v2, "complete, adpater null>"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
