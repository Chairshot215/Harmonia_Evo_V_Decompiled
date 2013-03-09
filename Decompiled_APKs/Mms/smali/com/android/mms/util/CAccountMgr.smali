.class public Lcom/android/mms/util/CAccountMgr;
.super Ljava/lang/Object;
.source "CAccountMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/util/CAccountMgr$ContactsSource;,
        Lcom/android/mms/util/CAccountMgr$AuthenticatorInfo;
    }
.end annotation


# static fields
.field private static final SupportContactAuthority:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/android/mms/util/CAccountMgr;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAccountManager:Landroid/accounts/AccountManager;

.field private mApplicationContext:Landroid/content/Context;

.field private mSources:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/mms/util/CAccountMgr$ContactsSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/mms/util/CAccountMgr;->SupportContactAuthority:Ljava/util/ArrayList;

    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/util/CAccountMgr;->sInstance:Ljava/lang/ref/SoftReference;

    .line 34
    sget-object v0, Lcom/android/mms/util/CAccountMgr;->SupportContactAuthority:Ljava/util/ArrayList;

    const-string v1, "com.android.contacts"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    sget-object v0, Lcom/android/mms/util/CAccountMgr;->SupportContactAuthority:Ljava/util/ArrayList;

    const-string v1, "com.htc.socialnetwork.snprovider"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    sget-object v0, Lcom/android/mms/util/CAccountMgr;->SupportContactAuthority:Ljava/util/ArrayList;

    const-string v1, "htceas"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    sget-object v0, Lcom/android/mms/util/CAccountMgr;->SupportContactAuthority:Ljava/util/ArrayList;

    const-string v1, "com.htc.plurk.Users"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object v0, Lcom/android/mms/util/CAccountMgr;->SupportContactAuthority:Ljava/util/ArrayList;

    const-string v1, "com.htc.htctwitter.Users"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 54
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/util/CAccountMgr;->mSources:Ljava/util/HashMap;

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/util/CAccountMgr;->mApplicationContext:Landroid/content/Context;

    .line 56
    iget-object v0, p0, Lcom/android/mms/util/CAccountMgr;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/util/CAccountMgr;->mAccountManager:Landroid/accounts/AccountManager;

    .line 57
    invoke-virtual {p0}, Lcom/android/mms/util/CAccountMgr;->queryAccounts()V

    .line 58
    return-void
.end method

.method protected static findAuthenticator([Landroid/accounts/AuthenticatorDescription;Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;
    .locals 6
    .parameter "auths"
    .parameter "accountType"

    .prologue
    .line 243
    move-object v0, p0

    .local v0, arr$:[Landroid/accounts/AuthenticatorDescription;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 244
    .local v1, auth:Landroid/accounts/AuthenticatorDescription;
    iget-object v4, v1, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 245
    return-object v1

    .line 243
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 248
    .end local v1           #auth:Landroid/accounts/AuthenticatorDescription;
    :cond_1
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Couldn\'t find authenticator for specific account type"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/mms/util/CAccountMgr;
    .locals 3
    .parameter "context"

    .prologue
    .line 46
    const-class v2, Lcom/android/mms/util/CAccountMgr;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/android/mms/util/CAccountMgr;->sInstance:Ljava/lang/ref/SoftReference;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 47
    .local v0, mgrAccount:Lcom/android/mms/util/CAccountMgr;
    :goto_0
    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/android/mms/util/CAccountMgr;

    .end local v0           #mgrAccount:Lcom/android/mms/util/CAccountMgr;
    invoke-direct {v0, p0}, Lcom/android/mms/util/CAccountMgr;-><init>(Landroid/content/Context;)V

    .line 49
    .restart local v0       #mgrAccount:Lcom/android/mms/util/CAccountMgr;
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/android/mms/util/CAccountMgr;->sInstance:Ljava/lang/ref/SoftReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :cond_0
    monitor-exit v2

    return-object v0

    .line 46
    .end local v0           #mgrAccount:Lcom/android/mms/util/CAccountMgr;
    :cond_1
    :try_start_1
    sget-object v1, Lcom/android/mms/util/CAccountMgr;->sInstance:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/util/CAccountMgr;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method protected addSource(Lcom/android/mms/util/CAccountMgr$ContactsSource;)V
    .locals 2
    .parameter "source"

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/mms/util/CAccountMgr;->mSources:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/mms/util/CAccountMgr$ContactsSource;->accountType:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    return-void
.end method

.method public getAccounts(Z)Ljava/util/ArrayList;
    .locals 10
    .parameter "writableOnly"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    iget-object v2, p0, Lcom/android/mms/util/CAccountMgr;->mAccountManager:Landroid/accounts/AccountManager;

    .line 144
    .local v2, am:Landroid/accounts/AccountManager;
    invoke-virtual {v2}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    .line 145
    .local v1, accounts:[Landroid/accounts/Account;
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    .line 147
    .local v6, matching:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    move-object v3, v1

    .local v3, arr$:[Landroid/accounts/Account;
    array-length v5, v3

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v0, v3, v4

    .line 148
    .local v0, account:Landroid/accounts/Account;
    iget-object v8, p0, Lcom/android/mms/util/CAccountMgr;->mSources:Ljava/util/HashMap;

    iget-object v9, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/mms/util/CAccountMgr$ContactsSource;

    .line 149
    .local v7, source:Lcom/android/mms/util/CAccountMgr$ContactsSource;
    if-nez v7, :cond_0

    .line 147
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 153
    :cond_0
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 181
    .end local v0           #account:Landroid/accounts/Account;
    .end local v7           #source:Lcom/android/mms/util/CAccountMgr$ContactsSource;
    :cond_1
    new-instance v0, Landroid/accounts/Account;

    const-string v8, "pcsc"

    const-string v9, "com.htc.android.pcsc"

    invoke-direct {v0, v8, v9}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    .restart local v0       #account:Landroid/accounts/Account;
    if-eqz v0, :cond_2

    .line 183
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    :cond_2
    return-object v6
.end method

.method public getAuthenticatorInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/mms/util/CAccountMgr$AuthenticatorInfo;
    .locals 8
    .parameter "context"
    .parameter "strAccountType"

    .prologue
    .line 213
    iget-object v6, p0, Lcom/android/mms/util/CAccountMgr;->mSources:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 214
    .local v3, sets:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 216
    .local v1, info:Lcom/android/mms/util/CAccountMgr$AuthenticatorInfo;
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 217
    .local v5, type:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/mms/util/CAccountMgr;->mSources:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/util/CAccountMgr$ContactsSource;

    .line 218
    .local v4, source:Lcom/android/mms/util/CAccountMgr$ContactsSource;
    iget-object v6, v4, Lcom/android/mms/util/CAccountMgr$ContactsSource;->accountType:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, v4, Lcom/android/mms/util/CAccountMgr$ContactsSource;->accountType:Ljava/lang/String;

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 219
    new-instance v1, Lcom/android/mms/util/CAccountMgr$AuthenticatorInfo;

    .end local v1           #info:Lcom/android/mms/util/CAccountMgr$AuthenticatorInfo;
    invoke-direct {v1}, Lcom/android/mms/util/CAccountMgr$AuthenticatorInfo;-><init>()V

    .line 220
    .restart local v1       #info:Lcom/android/mms/util/CAccountMgr$AuthenticatorInfo;
    iget-object v6, v4, Lcom/android/mms/util/CAccountMgr$ContactsSource;->accountType:Ljava/lang/String;

    iput-object v6, v1, Lcom/android/mms/util/CAccountMgr$AuthenticatorInfo;->strType:Ljava/lang/String;

    .line 221
    iget-object v6, v4, Lcom/android/mms/util/CAccountMgr$ContactsSource;->resPackageName:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 223
    :try_start_0
    iget-object v6, p0, Lcom/android/mms/util/CAccountMgr;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, v4, Lcom/android/mms/util/CAccountMgr$ContactsSource;->resPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    .line 224
    .local v2, sRes:Landroid/content/res/Resources;
    iget v6, v4, Lcom/android/mms/util/CAccountMgr$ContactsSource;->titleRes:I

    if-lez v6, :cond_2

    iget v6, v4, Lcom/android/mms/util/CAccountMgr$ContactsSource;->titleRes:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_0
    iput-object v6, v1, Lcom/android/mms/util/CAccountMgr$AuthenticatorInfo;->strTitle:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    .end local v2           #sRes:Landroid/content/res/Resources;
    .end local v4           #source:Lcom/android/mms/util/CAccountMgr$ContactsSource;
    .end local v5           #type:Ljava/lang/String;
    :cond_1
    :goto_1
    return-object v1

    .line 224
    .restart local v2       #sRes:Landroid/content/res/Resources;
    .restart local v4       #source:Lcom/android/mms/util/CAccountMgr$ContactsSource;
    .restart local v5       #type:Ljava/lang/String;
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 226
    .end local v2           #sRes:Landroid/content/res/Resources;
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method public getInflatedSource(Ljava/lang/String;I)Lcom/android/mms/util/CAccountMgr$ContactsSource;
    .locals 2
    .parameter "accountType"
    .parameter "inflateLevel"

    .prologue
    .line 192
    iget-object v1, p0, Lcom/android/mms/util/CAccountMgr;->mSources:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/util/CAccountMgr$ContactsSource;

    .line 194
    .local v0, source:Lcom/android/mms/util/CAccountMgr$ContactsSource;
    return-object v0
.end method

.method protected declared-synchronized queryAccounts()V
    .locals 13

    .prologue
    .line 64
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/mms/util/CAccountMgr;->mAccountManager:Landroid/accounts/AccountManager;

    .line 65
    .local v1, am:Landroid/accounts/AccountManager;
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 68
    .local v5, cs:Landroid/content/IContentService;
    :try_start_1
    invoke-interface {v5}, Landroid/content/IContentService;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v10

    .line 69
    .local v10, syncs:[Landroid/content/SyncAdapterType;
    invoke-virtual {v1}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v4

    .line 71
    .local v4, auths:[Landroid/accounts/AuthenticatorDescription;
    move-object v2, v10

    .local v2, arr$:[Landroid/content/SyncAdapterType;
    array-length v7, v2

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v7, :cond_2

    aget-object v9, v2, v6

    .line 72
    .local v9, sync:Landroid/content/SyncAdapterType;
    sget-object v11, Lcom/android/mms/util/CAccountMgr;->SupportContactAuthority:Ljava/util/ArrayList;

    iget-object v12, v9, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 71
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 76
    :cond_0
    iget-object v0, v9, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    .line 77
    .local v0, accountType:Ljava/lang/String;
    invoke-static {v4, v0}, Lcom/android/mms/util/CAccountMgr;->findAuthenticator([Landroid/accounts/AuthenticatorDescription;Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v3

    .line 113
    .local v3, auth:Landroid/accounts/AuthenticatorDescription;
    new-instance v8, Lcom/android/mms/util/CAccountMgr$ContactsSource;

    iget-object v11, v3, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    iget-object v12, v3, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-direct {v8, p0, v11, v12}, Lcom/android/mms/util/CAccountMgr$ContactsSource;-><init>(Lcom/android/mms/util/CAccountMgr;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .local v8, source:Lcom/android/mms/util/CAccountMgr$ContactsSource;
    iget-object v11, v3, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    if-eqz v11, :cond_1

    .line 116
    iget v11, v3, Landroid/accounts/AuthenticatorDescription;->labelId:I

    if-lez v11, :cond_3

    iget v11, v3, Landroid/accounts/AuthenticatorDescription;->labelId:I

    :goto_2
    iput v11, v8, Lcom/android/mms/util/CAccountMgr$ContactsSource;->titleRes:I

    .line 119
    :cond_1
    invoke-virtual {p0, v8}, Lcom/android/mms/util/CAccountMgr;->addSource(Lcom/android/mms/util/CAccountMgr$ContactsSource;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 122
    .end local v0           #accountType:Ljava/lang/String;
    .end local v2           #arr$:[Landroid/content/SyncAdapterType;
    .end local v3           #auth:Landroid/accounts/AuthenticatorDescription;
    .end local v4           #auths:[Landroid/accounts/AuthenticatorDescription;
    .end local v6           #i$:I
    .end local v7           #len$:I
    .end local v8           #source:Lcom/android/mms/util/CAccountMgr$ContactsSource;
    .end local v9           #sync:Landroid/content/SyncAdapterType;
    .end local v10           #syncs:[Landroid/content/SyncAdapterType;
    :catch_0
    move-exception v11

    .line 129
    :cond_2
    :try_start_2
    new-instance v8, Lcom/android/mms/util/CAccountMgr$ContactsSource;

    const-string v11, "com.htc.android.pcsc"

    iget-object v12, p0, Lcom/android/mms/util/CAccountMgr;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v8, p0, v11, v12}, Lcom/android/mms/util/CAccountMgr$ContactsSource;-><init>(Lcom/android/mms/util/CAccountMgr;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .restart local v8       #source:Lcom/android/mms/util/CAccountMgr$ContactsSource;
    const v11, 0x7f090255

    iput v11, v8, Lcom/android/mms/util/CAccountMgr$ContactsSource;->titleRes:I

    .line 131
    invoke-virtual {p0, v8}, Lcom/android/mms/util/CAccountMgr;->addSource(Lcom/android/mms/util/CAccountMgr$ContactsSource;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 139
    monitor-exit p0

    return-void

    .line 116
    .restart local v0       #accountType:Ljava/lang/String;
    .restart local v2       #arr$:[Landroid/content/SyncAdapterType;
    .restart local v3       #auth:Landroid/accounts/AuthenticatorDescription;
    .restart local v4       #auths:[Landroid/accounts/AuthenticatorDescription;
    .restart local v6       #i$:I
    .restart local v7       #len$:I
    .restart local v9       #sync:Landroid/content/SyncAdapterType;
    .restart local v10       #syncs:[Landroid/content/SyncAdapterType;
    :cond_3
    const/4 v11, -0x1

    goto :goto_2

    .line 64
    .end local v0           #accountType:Ljava/lang/String;
    .end local v1           #am:Landroid/accounts/AccountManager;
    .end local v2           #arr$:[Landroid/content/SyncAdapterType;
    .end local v3           #auth:Landroid/accounts/AuthenticatorDescription;
    .end local v4           #auths:[Landroid/accounts/AuthenticatorDescription;
    .end local v5           #cs:Landroid/content/IContentService;
    .end local v6           #i$:I
    .end local v7           #len$:I
    .end local v8           #source:Lcom/android/mms/util/CAccountMgr$ContactsSource;
    .end local v9           #sync:Landroid/content/SyncAdapterType;
    .end local v10           #syncs:[Landroid/content/SyncAdapterType;
    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11
.end method
