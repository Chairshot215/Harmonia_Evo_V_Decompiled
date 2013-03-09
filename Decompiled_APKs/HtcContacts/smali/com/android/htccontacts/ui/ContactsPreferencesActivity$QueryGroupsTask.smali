.class Lcom/android/htccontacts/ui/ContactsPreferencesActivity$QueryGroupsTask;
.super Lcom/android/htccontacts/util/WeakAsyncTask;
.source "ContactsPreferencesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ui/ContactsPreferencesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueryGroupsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/htccontacts/util/WeakAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountSet;",
        "Lcom/android/htccontacts/ui/ContactsPreferencesActivity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/ui/ContactsPreferencesActivity;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 866
    invoke-direct {p0, p1}, Lcom/android/htccontacts/util/WeakAsyncTask;-><init>(Ljava/lang/Object;)V

    .line 867
    return-void
.end method


# virtual methods
.method protected varargs doInBackground(Lcom/android/htccontacts/ui/ContactsPreferencesActivity;[Ljava/lang/Void;)Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountSet;
    .locals 10
    .parameter "target"
    .parameter "params"

    .prologue
    .line 873
    move-object v2, p1

    .line 874
    .local v2, context:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v6

    .line 875
    .local v6, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    invoke-virtual {v2}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 878
    .local v5, resolver:Landroid/content/ContentResolver;
    new-instance v1, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountSet;

    invoke-direct {v1}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountSet;-><init>()V

    .line 879
    .local v1, accounts:Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountSet;
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/htccontacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/model/AccountWithDataSet;

    .line 881
    .local v0, account:Landroid/accounts/Account;
    const-string v7, "com.htc.socialnetwork.flickr"

    iget-object v8, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 882
    new-instance v4, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountCount;

    invoke-direct {v4}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountCount;-><init>()V

    .line 883
    .local v4, mAccountCount:Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountCount;
    iget-object v7, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iput-object v7, v4, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountCount;->mAccountName:Ljava/lang/String;

    .line 884
    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    iput-object v7, v4, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountCount;->mAccountType:Ljava/lang/String;

    .line 885
    const-string v7, ""

    iput-object v7, v4, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountCount;->mCounts:Ljava/lang/String;

    .line 886
    #getter for: Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mAccountCountList:Ljava/util/ArrayList;
    invoke-static {p1}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->access$1000(Lcom/android/htccontacts/ui/ContactsPreferencesActivity;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 888
    new-instance v7, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountDisplay;

    iget-object v8, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v9, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {v7, v5, v8, v9}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountDisplay;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 893
    .end local v0           #account:Landroid/accounts/Account;
    .end local v4           #mAccountCount:Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountCount;
    :cond_1
    invoke-virtual {p0, v2, v1}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$QueryGroupsTask;->persistAccounts(Landroid/content/Context;Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountSet;)V

    .line 895
    return-object v1
.end method

.method protected bridge synthetic doInBackground(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 863
    check-cast p1, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;

    .end local p1
    check-cast p2, [Ljava/lang/Void;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$QueryGroupsTask;->doInBackground(Lcom/android/htccontacts/ui/ContactsPreferencesActivity;[Ljava/lang/Void;)Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountSet;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/htccontacts/ui/ContactsPreferencesActivity;Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountSet;)V
    .locals 8
    .parameter "target"
    .parameter "result"

    .prologue
    const/4 v2, 0x0

    .line 921
    #getter for: Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mAdapter:Lcom/android/htccontacts/ui/ContactsPreferencesActivity$DisplayAdapter;
    invoke-static {p1}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->access$1100(Lcom/android/htccontacts/ui/ContactsPreferencesActivity;)Lcom/android/htccontacts/ui/ContactsPreferencesActivity$DisplayAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$DisplayAdapter;->setAccounts(Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountSet;)V

    .line 922
    const-string v0, "content://com.android.contacts/rawcontact/counts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 924
    .local v3, queryUri:Landroid/net/Uri;
    iget-object v0, p1, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mQueryHandler:Lcom/android/htccontacts/ui/ContactsPreferencesActivity$QueryHandler;

    const/16 v1, 0x6a4

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 863
    check-cast p1, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;

    .end local p1
    check-cast p2, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountSet;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$QueryGroupsTask;->onPostExecute(Lcom/android/htccontacts/ui/ContactsPreferencesActivity;Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountSet;)V

    return-void
.end method

.method protected persistAccounts(Landroid/content/Context;Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountSet;)V
    .locals 8
    .parameter "context"
    .parameter "accountSet"

    .prologue
    const/4 v7, 0x0

    .line 899
    const-string v6, "TipOfAccounts"

    invoke-virtual {p1, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 900
    .local v5, pref:Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 902
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    const-string v6, "AccountCount"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 903
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 904
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AccountName"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 905
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AccountType"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 903
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 908
    :cond_0
    const-string v6, "AccountCount"

    invoke-virtual {p2}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountSet;->size()I

    move-result v7

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 909
    const/4 v3, 0x1

    .line 910
    invoke-virtual {p2}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountDisplay;

    .line 911
    .local v0, account:Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountDisplay;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AccountName"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountDisplay;->mName:Ljava/lang/String;

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 912
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AccountType"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountDisplay;->mType:Ljava/lang/String;

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 913
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 915
    .end local v0           #account:Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountDisplay;
    :cond_1
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 916
    return-void
.end method
