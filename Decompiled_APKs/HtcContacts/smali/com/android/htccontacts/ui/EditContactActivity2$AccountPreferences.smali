.class Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;
.super Ljava/lang/Object;
.source "EditContactActivity2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ui/EditContactActivity2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccountPreferences"
.end annotation


# static fields
.field private static final isEnabled:Z = true


# instance fields
.field private final ACCOUNT_REFERANCE:Ljava/lang/String;

.field private final HAS_EXCHANGE_ACCOUNT_BEFORE:Ljava/lang/String;

.field private final HAS_GOOGLE_ACCOUNT_BEFORE:Ljava/lang/String;

.field private final LAST_CREATED_CONTACT_NAME:Ljava/lang/String;

.field private final LAST_CREATED_CONTACT_TYPE:Ljava/lang/String;

.field public isNewContact:Z

.field public isUsingPreferredAccount:Z

.field private mAccounts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end field

.field private mLastAccount:Lcom/android/htccontacts/model/AccountWithDataSet;

.field private mPref:Landroid/content/SharedPreferences;

.field private mType:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "target"

    .prologue
    const/4 v1, 0x0

    .line 6850
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6836
    iput-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;->mPref:Landroid/content/SharedPreferences;

    .line 6837
    iput-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;->mAccounts:Ljava/util/ArrayList;

    .line 6839
    const-string v0, "hasExchangeBefore"

    iput-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;->HAS_EXCHANGE_ACCOUNT_BEFORE:Ljava/lang/String;

    .line 6840
    const-string v0, "hasGoogleBefore"

    iput-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;->HAS_GOOGLE_ACCOUNT_BEFORE:Ljava/lang/String;

    .line 6841
    const-string v0, "lastCreatedContactType"

    iput-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;->LAST_CREATED_CONTACT_TYPE:Ljava/lang/String;

    .line 6842
    const-string v0, "lastCreatedContactName"

    iput-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;->LAST_CREATED_CONTACT_NAME:Ljava/lang/String;

    .line 6843
    const-string v0, "com.android.htccontact_account_preferences"

    iput-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;->ACCOUNT_REFERANCE:Ljava/lang/String;

    .line 6844
    iput-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;->mType:Ljava/lang/CharSequence;

    .line 6845
    iput-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;->mLastAccount:Lcom/android/htccontacts/model/AccountWithDataSet;

    .line 6846
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;->isNewContact:Z

    .line 6847
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;->isUsingPreferredAccount:Z

    .line 6851
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;->clear(Landroid/content/Context;)V

    .line 6852
    return-void
.end method

.method private getAccount(Ljava/lang/CharSequence;)Lcom/android/htccontacts/model/AccountWithDataSet;
    .locals 6
    .parameter "type"

    .prologue
    const/4 v3, 0x0

    .line 6886
    iget-object v4, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;->mPref:Landroid/content/SharedPreferences;

    const-string v5, "lastCreatedContactName"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6887
    .local v2, sLastName:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 6888
    iget-object v4, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;->mAccounts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/model/AccountWithDataSet;

    .line 6889
    .local v0, account:Lcom/android/htccontacts/model/AccountWithDataSet;
    iget-object v4, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6899
    .end local v0           #account:Lcom/android/htccontacts/model/AccountWithDataSet;
    :goto_0
    return-object v0

    .line 6895
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    iget-object v4, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;->mAccounts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/model/AccountWithDataSet;

    .line 6896
    .restart local v0       #account:Lcom/android/htccontacts/model/AccountWithDataSet;
    iget-object v4, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .end local v0           #account:Lcom/android/htccontacts/model/AccountWithDataSet;
    :cond_3
    move-object v0, v3

    .line 6899
    goto :goto_0
.end method

.method private getHasExchangeBefore()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 6999
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "hasExchangeBefore"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private getHasGoogleBefore()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 7007
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "hasGoogleBefore"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private isAccountReady(Ljava/lang/String;)Z
    .locals 3
    .parameter "type"

    .prologue
    .line 6864
    iget-object v2, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;->mAccounts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/model/AccountWithDataSet;

    .line 6865
    .local v0, account:Lcom/android/htccontacts/model/AccountWithDataSet;
    iget-object v2, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6866
    const/4 v2, 0x1

    .line 6868
    .end local v0           #account:Lcom/android/htccontacts/model/AccountWithDataSet;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setHasExchangeBefore(Z)V
    .locals 2
    .parameter "bool"

    .prologue
    .line 6995
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hasExchangeBefore"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 6996
    return-void
.end method

.method private setHasGoogleBefore(Z)V
    .locals 2
    .parameter "bool"

    .prologue
    .line 7003
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hasGoogleBefore"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 7004
    return-void
.end method


# virtual methods
.method public clear(Landroid/content/Context;)V
    .locals 4
    .parameter "target"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6855
    iput-boolean v2, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;->isNewContact:Z

    .line 6856
    iput-boolean v3, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;->isUsingPreferredAccount:Z

    .line 6857
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;->mType:Ljava/lang/CharSequence;

    .line 6858
    invoke-static {p1}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v0

    .line 6859
    .local v0, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    const-string v1, "com.android.htccontact_account_preferences"

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;->mPref:Landroid/content/SharedPreferences;

    .line 6860
    invoke-virtual {v0, v3}, Lcom/android/htccontacts/model/AccountTypeManager;->getAccountsList(Z)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;->mAccounts:Ljava/util/ArrayList;

    .line 6861
    return-void
.end method

.method public doSaving()V
    .locals 3

    .prologue
    .line 7019
    iget-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;->mPref:Landroid/content/SharedPreferences;

    if-nez v1, :cond_1

    .line 7028
    :cond_0
    :goto_0
    return-void

    .line 7020
    :cond_1
    iget-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 7021
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;->mLastAccount:Lcom/android/htccontacts/model/AccountWithDataSet;

    if-eqz v1, :cond_0

    .line 7022
    iget-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;->mLastAccount:Lcom/android/htccontacts/model/AccountWithDataSet;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 7023
    const-string v1, "lastCreatedContactType"

    iget-object v2, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;->mLastAccount:Lcom/android/htccontacts/model/AccountWithDataSet;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 7025
    :cond_2
    iget-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;->mLastAccount:Lcom/android/htccontacts/model/AccountWithDataSet;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7026
    const-string v1, "lastCreatedContactName"

    iget-object v2, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;->mLastAccount:Lcom/android/htccontacts/model/AccountWithDataSet;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public getAccount(Landroid/content/Context;Z)Lcom/android/htccontacts/model/AccountWithDataSet;
    .locals 3
    .parameter "context"
    .parameter "excludeSIM"

    .prologue
    const/4 v2, 0x1

    .line 6873
    const-string v1, "com.vodafone.people"

    invoke-static {p1, v1}, Lcom/android/htccontacts/util/Vodafone360Util;->is360AccountLogin(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 6874
    .local v0, bIsLogin:Z
    invoke-static {}, Lcom/android/htccontacts/util/Vodafone360Util;->is360Enabled()Z

    move-result v1

    if-ne v1, v2, :cond_0

    if-ne v0, v2, :cond_0

    .line 6875
    const-string v1, "com.vodafone.people"

    invoke-direct {p0, v1}, Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;->getAccount(Ljava/lang/CharSequence;)Lcom/android/htccontacts/model/AccountWithDataSet;

    move-result-object v1

    .line 6880
    :goto_0
    return-object v1

    .line 6877
    :cond_0
    invoke-static {}, Lcom/android/htccontacts/util/ContactsUtils;->isBackupAssistantEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6878
    const-string v1, "com.htc.android.pcsc"

    invoke-direct {p0, v1}, Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;->getAccount(Ljava/lang/CharSequence;)Lcom/android/htccontacts/model/AccountWithDataSet;

    move-result-object v1

    goto :goto_0

    .line 6880
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;->getAccount(Z)Lcom/android/htccontacts/model/AccountWithDataSet;

    move-result-object v1

    goto :goto_0
.end method

.method public getAccount(Z)Lcom/android/htccontacts/model/AccountWithDataSet;
    .locals 10
    .parameter "excludeSIM"

    .prologue
    .line 6904
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isTmousCustomization()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 6905
    const-string v7, "com.tmobile.nab"

    invoke-direct {p0, v7}, Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;->getAccount(Ljava/lang/CharSequence;)Lcom/android/htccontacts/model/AccountWithDataSet;

    move-result-object v0

    .line 6906
    .local v0, account:Lcom/android/htccontacts/model/AccountWithDataSet;
    if-eqz v0, :cond_0

    .line 6990
    .end local v0           #account:Lcom/android/htccontacts/model/AccountWithDataSet;
    :goto_0
    return-object v0

    .line 6911
    :cond_0
    iget-object v6, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;->mType:Ljava/lang/CharSequence;

    .line 6913
    .local v6, localmType:Ljava/lang/CharSequence;
    if-eqz v6, :cond_1

    .line 6914
    iput-object v6, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;->mType:Ljava/lang/CharSequence;

    .line 6915
    invoke-direct {p0, v6}, Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;->getAccount(Ljava/lang/CharSequence;)Lcom/android/htccontacts/model/AccountWithDataSet;

    move-result-object v0

    goto :goto_0

    .line 6918
    :cond_1
    invoke-static {}, Lcom/htc/util/contacts/TMOClient;->isMyPhonebookEnabled()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 6919
    iget-object v7, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;->mPref:Landroid/content/SharedPreferences;

    const-string v8, "lastCreatedContactType"

    const-string v9, "com.htc.android.myphonebook"

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 6927
    :goto_1
    invoke-direct {p0}, Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;->getHasExchangeBefore()Ljava/lang/Boolean;

    move-result-object v1

    .line 6928
    .local v1, hasExchangeBefore:Ljava/lang/Boolean;
    invoke-direct {p0}, Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;->getHasGoogleBefore()Ljava/lang/Boolean;

    move-result-object v2

    .line 6930
    .local v2, hasGoogleBefore:Ljava/lang/Boolean;
    const-string v7, "com.google"

    invoke-direct {p0, v7}, Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;->isAccountReady(Ljava/lang/String;)Z

    move-result v4

    .line 6931
    .local v4, isGoogleReady:Z
    const-string v7, "com.htc.android.mail.eas"

    invoke-direct {p0, v7}, Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;->isAccountReady(Ljava/lang/String;)Z

    move-result v3

    .line 6932
    .local v3, isExchangeReady:Z
    if-nez p1, :cond_5

    const-string v7, "com.anddroid.contacts.sim"

    invoke-direct {p0, v7}, Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;->isAccountReady(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v5, 0x1

    .line 6934
    .local v5, isSimReady:Z
    :goto_2
    if-eqz v3, :cond_6

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_6

    .line 6935
    const-string v6, "com.htc.android.mail.eas"

    .line 6940
    :cond_2
    :goto_3
    invoke-direct {p0, v4}, Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;->setHasGoogleBefore(Z)V

    .line 6941
    invoke-direct {p0, v3}, Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;->setHasExchangeBefore(Z)V

    .line 6943
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 6944
    const-string v6, "com.htc.android.pcsc"

    .line 6947
    :cond_3
    const-string v7, "com.htc.android.pcsc"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 6948
    iput-object v6, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;->mType:Ljava/lang/CharSequence;

    .line 6949
    invoke-direct {p0, v6}, Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;->getAccount(Ljava/lang/CharSequence;)Lcom/android/htccontacts/model/AccountWithDataSet;

    move-result-object v0

    goto :goto_0

    .line 6921
    .end local v1           #hasExchangeBefore:Ljava/lang/Boolean;
    .end local v2           #hasGoogleBefore:Ljava/lang/Boolean;
    .end local v3           #isExchangeReady:Z
    .end local v4           #isGoogleReady:Z
    .end local v5           #isSimReady:Z
    :cond_4
    iget-object v7, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;->mPref:Landroid/content/SharedPreferences;

    const-string v8, "lastCreatedContactType"

    const-string v9, "com.htc.android.mail.eas"

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 6932
    .restart local v1       #hasExchangeBefore:Ljava/lang/Boolean;
    .restart local v2       #hasGoogleBefore:Ljava/lang/Boolean;
    .restart local v3       #isExchangeReady:Z
    .restart local v4       #isGoogleReady:Z
    :cond_5
    const/4 v5, 0x0

    goto :goto_2

    .line 6936
    .restart local v5       #isSimReady:Z
    :cond_6
    if-eqz v4, :cond_2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_2

    .line 6937
    const-string v6, "com.google"

    goto :goto_3

    .line 6953
    :cond_7
    const-string v7, "com.anddroid.contacts.sim"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 6954
    if-eqz v5, :cond_8

    .line 6955
    iput-object v6, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;->mType:Ljava/lang/CharSequence;

    .line 6956
    invoke-direct {p0, v6}, Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;->getAccount(Ljava/lang/CharSequence;)Lcom/android/htccontacts/model/AccountWithDataSet;

    move-result-object v0

    goto/16 :goto_0

    .line 6959
    :cond_8
    const-string v6, "com.htc.android.mail.eas"

    .line 6962
    :cond_9
    const-string v7, "com.htc.android.mail.eas"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 6963
    if-eqz v3, :cond_a

    .line 6964
    iput-object v6, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;->mType:Ljava/lang/CharSequence;

    .line 6965
    invoke-direct {p0, v6}, Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;->getAccount(Ljava/lang/CharSequence;)Lcom/android/htccontacts/model/AccountWithDataSet;

    move-result-object v0

    goto/16 :goto_0

    .line 6968
    :cond_a
    const-string v6, "com.google"

    .line 6971
    :cond_b
    const-string v7, "com.google"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 6972
    if-eqz v4, :cond_c

    .line 6973
    iput-object v6, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;->mType:Ljava/lang/CharSequence;

    .line 6974
    invoke-direct {p0, v6}, Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;->getAccount(Ljava/lang/CharSequence;)Lcom/android/htccontacts/model/AccountWithDataSet;

    move-result-object v0

    goto/16 :goto_0

    .line 6976
    :cond_c
    if-eqz v3, :cond_e

    .line 6977
    const-string v6, "com.htc.android.mail.eas"

    .line 6984
    :cond_d
    :goto_4
    invoke-direct {p0, v6}, Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;->getAccount(Ljava/lang/CharSequence;)Lcom/android/htccontacts/model/AccountWithDataSet;

    move-result-object v0

    .line 6985
    .restart local v0       #account:Lcom/android/htccontacts/model/AccountWithDataSet;
    if-eqz v0, :cond_f

    .line 6986
    iput-object v6, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;->mType:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 6980
    .end local v0           #account:Lcom/android/htccontacts/model/AccountWithDataSet;
    :cond_e
    const-string v6, "com.htc.android.pcsc"

    goto :goto_4

    .line 6989
    .restart local v0       #account:Lcom/android/htccontacts/model/AccountWithDataSet;
    :cond_f
    const-string v7, "com.htc.android.pcsc"

    iput-object v7, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;->mType:Ljava/lang/CharSequence;

    .line 6990
    const-string v7, "com.htc.android.pcsc"

    invoke-direct {p0, v7}, Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;->getAccount(Ljava/lang/CharSequence;)Lcom/android/htccontacts/model/AccountWithDataSet;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public getLastCreatedAccount()Lcom/android/htccontacts/model/AccountWithDataSet;
    .locals 1

    .prologue
    .line 7015
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;->mLastAccount:Lcom/android/htccontacts/model/AccountWithDataSet;

    return-object v0
.end method

.method public setLastCreatedAccount(Lcom/android/htccontacts/model/AccountWithDataSet;)V
    .locals 0
    .parameter "account"

    .prologue
    .line 7011
    iput-object p1, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;->mLastAccount:Lcom/android/htccontacts/model/AccountWithDataSet;

    .line 7012
    return-void
.end method
