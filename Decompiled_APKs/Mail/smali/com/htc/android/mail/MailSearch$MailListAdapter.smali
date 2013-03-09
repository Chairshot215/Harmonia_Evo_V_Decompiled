.class Lcom/htc/android/mail/MailSearch$MailListAdapter;
.super Landroid/widget/CursorAdapter;
.source "MailSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/MailSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MailListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/MailSearch;


# direct methods
.method public constructor <init>(Lcom/htc/android/mail/MailSearch;Landroid/database/Cursor;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "c"
    .parameter "context"

    .prologue
    .line 187
    iput-object p1, p0, Lcom/htc/android/mail/MailSearch$MailListAdapter;->this$0:Lcom/htc/android/mail/MailSearch;

    .line 188
    const/4 v0, 0x0

    invoke-direct {p0, p3, p2, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 189
    return-void
.end method


# virtual methods
.method public final bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 6
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 205
    move-object v0, p1

    check-cast v0, Lcom/htc/android/mail/MailListItemBig;

    iget-object v1, p0, Lcom/htc/android/mail/MailSearch$MailListAdapter;->this$0:Lcom/htc/android/mail/MailSearch;

    #getter for: Lcom/htc/android/mail/MailSearch;->mMailbox:Lcom/htc/android/mail/Mailbox;
    invoke-static {v1}, Lcom/htc/android/mail/MailSearch;->access$100(Lcom/htc/android/mail/MailSearch;)Lcom/htc/android/mail/Mailbox;

    move-result-object v1

    iget-boolean v1, v1, Lcom/htc/android/mail/Mailbox;->showSender:Z

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/MailListItemBig;->setShowSender(Z)V

    move-object v0, p1

    .line 206
    check-cast v0, Lcom/htc/android/mail/MailListItemBig;

    iget-object v1, p0, Lcom/htc/android/mail/MailSearch$MailListAdapter;->this$0:Lcom/htc/android/mail/MailSearch;

    #getter for: Lcom/htc/android/mail/MailSearch;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v1}, Lcom/htc/android/mail/MailSearch;->access$200(Lcom/htc/android/mail/MailSearch;)Lcom/htc/android/mail/Account;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/MailListItemBig;->setProtocol(I)V

    move-object v0, p1

    .line 207
    check-cast v0, Lcom/htc/android/mail/MailListItemBig;

    iget-object v1, p0, Lcom/htc/android/mail/MailSearch$MailListAdapter;->this$0:Lcom/htc/android/mail/MailSearch;

    #getter for: Lcom/htc/android/mail/MailSearch;->mIsShowServerMail:Z
    invoke-static {v1}, Lcom/htc/android/mail/MailSearch;->access$300(Lcom/htc/android/mail/MailSearch;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/MailListItemBig;->setFromSearchSvrMail(Z)V

    move-object v0, p1

    .line 208
    check-cast v0, Lcom/htc/android/mail/MailListItemBig;

    iget-object v1, p0, Lcom/htc/android/mail/MailSearch$MailListAdapter;->this$0:Lcom/htc/android/mail/MailSearch;

    #getter for: Lcom/htc/android/mail/MailSearch;->mSearchKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/android/mail/MailSearch;->access$400(Lcom/htc/android/mail/MailSearch;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/MailListItemBig;->enableSpannable(Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch$MailListAdapter;->this$0:Lcom/htc/android/mail/MailSearch;

    #getter for: Lcom/htc/android/mail/MailSearch;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v0}, Lcom/htc/android/mail/MailSearch;->access$200(Lcom/htc/android/mail/MailSearch;)Lcom/htc/android/mail/Account;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/MailSearch$MailListAdapter;->this$0:Lcom/htc/android/mail/MailSearch;

    #getter for: Lcom/htc/android/mail/MailSearch;->mAccountCounts:I
    invoke-static {v0}, Lcom/htc/android/mail/MailSearch;->access$500(Lcom/htc/android/mail/MailSearch;)I

    move-result v0

    if-le v0, v5, :cond_0

    move-object v0, p1

    .line 210
    check-cast v0, Lcom/htc/android/mail/MailListItemBig;

    invoke-virtual {v0, v5}, Lcom/htc/android/mail/MailListItemBig;->setShowAccountIndicator(Z)V

    :goto_0
    move-object v0, p1

    .line 214
    check-cast v0, Lcom/htc/android/mail/MailListItemBig;

    iget-object v1, p0, Lcom/htc/android/mail/MailSearch$MailListAdapter;->this$0:Lcom/htc/android/mail/MailSearch;

    #getter for: Lcom/htc/android/mail/MailSearch;->mSelectedMailMessages:Lcom/htc/android/mail/util/SelectedMailMessages;
    invoke-static {v1}, Lcom/htc/android/mail/MailSearch;->access$600(Lcom/htc/android/mail/MailSearch;)Lcom/htc/android/mail/util/SelectedMailMessages;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p3, v4, v1, v2}, Lcom/htc/android/mail/MailListItemBig;->bind(Landroid/database/Cursor;ILcom/htc/android/mail/util/SelectedMailMessages;Lcom/htc/android/mail/util/SelectedMailGroups;)V

    .line 215
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch$MailListAdapter;->this$0:Lcom/htc/android/mail/MailSearch;

    #getter for: Lcom/htc/android/mail/MailSearch;->mIsShowServerMail:Z
    invoke-static {v0}, Lcom/htc/android/mail/MailSearch;->access$300(Lcom/htc/android/mail/MailSearch;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    check-cast p1, Lcom/htc/android/mail/MailListItemBig;

    .end local p1
    invoke-virtual {p1, v4}, Lcom/htc/android/mail/MailListItemBig;->showCheckBlock(Z)V

    .line 220
    :goto_1
    return-void

    .restart local p1
    :cond_0
    move-object v0, p1

    .line 212
    check-cast v0, Lcom/htc/android/mail/MailListItemBig;

    invoke-virtual {v0, v4}, Lcom/htc/android/mail/MailListItemBig;->setShowAccountIndicator(Z)V

    goto :goto_0

    .line 218
    :cond_1
    check-cast p1, Lcom/htc/android/mail/MailListItemBig;

    .end local p1
    invoke-virtual {p1, v5}, Lcom/htc/android/mail/MailListItemBig;->showCheckBlock(Z)V

    goto :goto_1
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    .line 193
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/MailSearch$MailListAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 194
    .local v0, old:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 195
    invoke-static {}, Lcom/htc/android/mail/MailListTab$BackGroundHandler;->getInstance()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/htc/android/mail/MailSearch$MailListAdapter$1;

    invoke-direct {v2, p0, v0}, Lcom/htc/android/mail/MailSearch$MailListAdapter$1;-><init>(Lcom/htc/android/mail/MailSearch$MailListAdapter;Landroid/database/Cursor;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 201
    :cond_0
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 229
    iget-object v1, p0, Lcom/htc/android/mail/MailSearch$MailListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 231
    if-eqz p2, :cond_0

    .line 232
    move-object v0, p2

    .line 236
    .local v0, v:Landroid/view/View;
    :goto_0
    iget-object v1, p0, Lcom/htc/android/mail/MailSearch$MailListAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/android/mail/MailSearch$MailListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/android/mail/MailSearch$MailListAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 237
    return-object v0

    .line 234
    .end local v0           #v:Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/htc/android/mail/MailSearch$MailListAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/android/mail/MailSearch$MailListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v1, v2, p3}, Lcom/htc/android/mail/MailSearch$MailListAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .restart local v0       #v:Landroid/view/View;
    goto :goto_0
.end method

.method public final newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 224
    new-instance v0, Lcom/htc/android/mail/MailListItemBig;

    invoke-direct {v0, p1}, Lcom/htc/android/mail/MailListItemBig;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
