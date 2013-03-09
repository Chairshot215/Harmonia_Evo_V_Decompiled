.class public Lcom/htc/android/mail/widget/AccountListAdapter;
.super Landroid/widget/CursorAdapter;
.source "AccountListAdapter.java"


# instance fields
.field accountId:J

.field mIsInverseBackgroundColor:Z

.field noUnreadBubble:Z

.field onlyOneAccount:Z


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Landroid/content/Context;)V
    .locals 3
    .parameter "c"
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 16
    invoke-direct {p0, p2, p1}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 10
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/android/mail/widget/AccountListAdapter;->accountId:J

    .line 11
    iput-boolean v2, p0, Lcom/htc/android/mail/widget/AccountListAdapter;->onlyOneAccount:Z

    .line 12
    iput-boolean v2, p0, Lcom/htc/android/mail/widget/AccountListAdapter;->noUnreadBubble:Z

    .line 13
    iput-boolean v2, p0, Lcom/htc/android/mail/widget/AccountListAdapter;->mIsInverseBackgroundColor:Z

    .line 17
    return-void
.end method


# virtual methods
.method public final bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 7
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 32
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    .local v6, position:I
    move-object v0, p1

    .line 33
    check-cast v0, Lcom/htc/android/mail/widget/AccountAddressListItem;

    iget-boolean v4, p0, Lcom/htc/android/mail/widget/AccountListAdapter;->onlyOneAccount:Z

    iget-boolean v5, p0, Lcom/htc/android/mail/widget/AccountListAdapter;->noUnreadBubble:Z

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/mail/widget/AccountAddressListItem;->bind(Landroid/view/View;Landroid/database/Cursor;Landroid/content/Context;ZZ)V

    .line 34
    return-void
.end method

.method public final newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 38
    new-instance v0, Lcom/htc/android/mail/widget/AccountAddressListItem;

    invoke-direct {v0, p1}, Lcom/htc/android/mail/widget/AccountAddressListItem;-><init>(Landroid/content/Context;)V

    .line 39
    .local v0, listItem:Lcom/htc/android/mail/widget/AccountAddressListItem;
    iget-boolean v1, p0, Lcom/htc/android/mail/widget/AccountListAdapter;->mIsInverseBackgroundColor:Z

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/widget/AccountAddressListItem;->setInverseBackgroundColor(Z)V

    .line 40
    iget-wide v1, p0, Lcom/htc/android/mail/widget/AccountListAdapter;->accountId:J

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/widget/AccountAddressListItem;->setAccountId(J)V

    .line 41
    return-object v0
.end method

.method public setAccountId(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 20
    iput-wide p1, p0, Lcom/htc/android/mail/widget/AccountListAdapter;->accountId:J

    .line 21
    return-void
.end method

.method public setInverseBackgroundColor(Z)V
    .locals 0
    .parameter "isInverse"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/htc/android/mail/widget/AccountListAdapter;->mIsInverseBackgroundColor:Z

    .line 46
    return-void
.end method

.method public setNoUnreadBubble()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/mail/widget/AccountListAdapter;->noUnreadBubble:Z

    .line 28
    return-void
.end method

.method public setOnlyOneAccount()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/mail/widget/AccountListAdapter;->onlyOneAccount:Z

    .line 25
    return-void
.end method
