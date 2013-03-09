.class Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider$1;
.super Ljava/lang/Object;
.source "AbstractSyncableContentProvider.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->onCreate()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider$1;->this$0:Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 10
    .parameter "accounts"

    .prologue
    .line 174
    iget-object v8, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider$1;->this$0:Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;

    iget-object v9, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider$1;->this$0:Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;

    iget-object v9, v9, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    iput-object v9, v8, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 178
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .local v2, gaiaAccounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    move-object v1, p1

    .local v1, arr$:[Landroid/accounts/Account;
    array-length v6, v1

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v0, v1, v5

    .line 180
    .local v0, acct:Landroid/accounts/Account;
    iget-object v8, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v9, "com.google"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 181
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 184
    .end local v0           #acct:Landroid/accounts/Account;
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array p1, v8, [Landroid/accounts/Account;

    .line 185
    const/4 v3, 0x0

    .line 186
    .local v3, i:I
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 187
    .restart local v0       #acct:Landroid/accounts/Account;
    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .local v4, i:I
    aput-object v0, p1, v3

    move v3, v4

    .end local v4           #i:I
    .restart local v3       #i:I
    goto :goto_1

    .line 189
    .end local v0           #acct:Landroid/accounts/Account;
    :cond_2
    iget-object v8, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider$1;->this$0:Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;

    invoke-virtual {v8, p1}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->onAccountsChanged([Landroid/accounts/Account;)V

    .line 190
    iget-object v8, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider$1;->this$0:Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;

    invoke-virtual {v8}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->getTempProviderSyncAdapter()Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;

    move-result-object v7

    .line 191
    .local v7, syncAdapter:Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;
    if-eqz v7, :cond_3

    .line 192
    invoke-virtual {v7, p1}, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->onAccountsChanged([Landroid/accounts/Account;)V

    .line 194
    :cond_3
    return-void
.end method
