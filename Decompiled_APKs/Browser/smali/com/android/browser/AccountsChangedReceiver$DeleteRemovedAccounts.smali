.class Lcom/android/browser/AccountsChangedReceiver$DeleteRemovedAccounts;
.super Ljava/lang/Thread;
.source "AccountsChangedReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/AccountsChangedReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DeleteRemovedAccounts"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/AccountsChangedReceiver$DeleteRemovedAccounts;->mContext:Landroid/content/Context;

    .line 50
    return-void
.end method


# virtual methods
.method contains([Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "accounts"
    .parameter "name"
    .parameter "type"

    .prologue
    .line 81
    move-object v1, p1

    .local v1, arr$:[Landroid/accounts/Account;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 82
    .local v0, a:Landroid/accounts/Account;
    iget-object v4, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v4, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v4, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 84
    const/4 v4, 0x1

    .line 87
    .end local v0           #a:Landroid/accounts/Account;
    :goto_1
    return v4

    .line 81
    .restart local v0       #a:Landroid/accounts/Account;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 87
    .end local v0           #a:Landroid/accounts/Account;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method delete(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "cr"
    .parameter "name"
    .parameter "type"

    .prologue
    .line 74
    sget-object v1, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "caller_is_syncadapter"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 77
    .local v0, uri:Landroid/net/Uri;
    const-string v1, "account_name=? AND account_type=?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 78
    return-void
.end method

.method public run()V
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 54
    iget-object v1, p0, Lcom/android/browser/AccountsChangedReceiver$DeleteRemovedAccounts;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v6

    .line 55
    .local v6, accounts:[Landroid/accounts/Account;
    iget-object v1, p0, Lcom/android/browser/AccountsChangedReceiver$DeleteRemovedAccounts;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 56
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/BrowserContract$Accounts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/browser/AccountsChangedReceiver;->access$000()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "account_name IS NOT NULL"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 58
    .local v7, c:Landroid/database/Cursor;
    :cond_0
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 60
    .local v8, name:Ljava/lang/String;
    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 61
    .local v9, type:Ljava/lang/String;
    invoke-virtual {p0, v6, v8, v9}, Lcom/android/browser/AccountsChangedReceiver$DeleteRemovedAccounts;->contains([Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 62
    invoke-virtual {p0, v0, v8, v9}, Lcom/android/browser/AccountsChangedReceiver$DeleteRemovedAccounts;->delete(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 65
    .end local v8           #name:Ljava/lang/String;
    .end local v9           #type:Ljava/lang/String;
    :cond_1
    sget-object v1, Landroid/provider/BrowserContract$Accounts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v4, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 66
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 67
    return-void
.end method
