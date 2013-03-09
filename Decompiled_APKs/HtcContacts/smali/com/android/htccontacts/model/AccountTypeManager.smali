.class public abstract Lcom/android/htccontacts/model/AccountTypeManager;
.super Ljava/lang/Object;
.source "AccountTypeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/model/AccountTypeManager$onGetSimContactsListener;
    }
.end annotation


# static fields
.field public static final ACCOUNT_TYPE_SERVICE:Ljava/lang/String; = "contactAccountTypes"

.field static final TAG:Ljava/lang/String; = "AccountTypeManager"


# instance fields
.field protected mOnGetSimContactsListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/model/AccountTypeManager$onGetSimContactsListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/model/AccountTypeManager;->mOnGetSimContactsListenerList:Ljava/util/ArrayList;

    .line 176
    return-void
.end method

.method public static declared-synchronized createAccountTypeManager(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;
    .locals 2
    .parameter "context"

    .prologue
    .line 102
    const-class v1, Lcom/android/htccontacts/model/AccountTypeManager;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/android/htccontacts/model/AccountTypeManagerImpl;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/model/AccountTypeManagerImpl;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;
    .locals 4
    .parameter "context"

    .prologue
    .line 87
    if-nez p0, :cond_0

    .line 88
    invoke-static {}, Lcom/android/htccontacts/PeopleApp;->getInstance()Lcom/android/htccontacts/PeopleApp;

    move-result-object p0

    .line 91
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 92
    const-string v1, "contactAccountTypes"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/model/AccountTypeManager;

    .line 94
    .local v0, service:Lcom/android/htccontacts/model/AccountTypeManager;
    if-nez v0, :cond_1

    .line 95
    invoke-static {p0}, Lcom/android/htccontacts/model/AccountTypeManager;->createAccountTypeManager(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v0

    .line 96
    const-string v1, "AccountTypeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No account type service in context: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_1
    return-object v0
.end method


# virtual methods
.method public abstract getAccountLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getAccountType(Lcom/android/htccontacts/model/AccountTypeWithDataSet;)Lcom/android/htccontacts/model/AccountType;
.end method

.method public final getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/AccountType;
    .locals 1
    .parameter "accountType"
    .parameter "dataSet"

    .prologue
    .line 123
    invoke-static {p1, p2}, Lcom/android/htccontacts/model/AccountTypeWithDataSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/AccountTypeWithDataSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/model/AccountTypeManager;->getAccountType(Lcom/android/htccontacts/model/AccountTypeWithDataSet;)Lcom/android/htccontacts/model/AccountType;

    move-result-object v0

    return-object v0
.end method

.method public final getAccountTypeForAccount(Lcom/android/htccontacts/model/AccountWithDataSet;)Lcom/android/htccontacts/model/AccountType;
    .locals 1
    .parameter "account"

    .prologue
    .line 127
    invoke-virtual {p1}, Lcom/android/htccontacts/model/AccountWithDataSet;->getAccountTypeWithDataSet()Lcom/android/htccontacts/model/AccountTypeWithDataSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/model/AccountTypeManager;->getAccountType(Lcom/android/htccontacts/model/AccountTypeWithDataSet;)Lcom/android/htccontacts/model/AccountType;

    move-result-object v0

    return-object v0
.end method

.method public abstract getAccountTypes(Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/htccontacts/model/AccountType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAccounts(Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/htccontacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAccountsList(Z)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAccountsWithoutSim(Z)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCountactSyncSourcesInfo()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/util/ContactsUtils$AuthenticatorInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFilterSources()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/model/AccountType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getGroupWritableAccounts()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/htccontacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end method

.method public getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/DataKind;
    .locals 2
    .parameter "accountType"
    .parameter "dataSet"
    .parameter "mimeType"

    .prologue
    .line 151
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/AccountType;

    move-result-object v0

    .line 152
    .local v0, type:Lcom/android/htccontacts/model/AccountType;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p3}, Lcom/android/htccontacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v1

    goto :goto_0
.end method

.method public abstract getSNSources()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/model/AccountType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSimeContact()V
.end method

.method public abstract getUnEditableAccounts()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUnEditableSyncSourcesTypes()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/model/AccountTypeWithDataSet;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUsableInvitableAccountTypes()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/android/htccontacts/model/AccountTypeWithDataSet;",
            "Lcom/android/htccontacts/model/AccountType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isEditableAccount(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public registSimContactsListener(Lcom/android/htccontacts/model/AccountTypeManager$onGetSimContactsListener;)V
    .locals 1
    .parameter "getSimContentListener"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/htccontacts/model/AccountTypeManager;->mOnGetSimContactsListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/htccontacts/model/AccountTypeManager;->mOnGetSimContactsListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/model/AccountTypeManager;->mOnGetSimContactsListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    return-void
.end method

.method public unRegistSimContactsListener(Lcom/android/htccontacts/model/AccountTypeManager$onGetSimContactsListener;)V
    .locals 1
    .parameter "getSimContentListener"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/htccontacts/model/AccountTypeManager;->mOnGetSimContactsListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 189
    return-void
.end method
