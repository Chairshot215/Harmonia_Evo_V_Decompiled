.class public Lcom/htc/android/mail/AccountPool;
.super Ljava/lang/Object;
.source "AccountPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/AccountPool$Proxy;,
        Lcom/htc/android/mail/AccountPool$AccountStore;
    }
.end annotation


# static fields
.field private static mAccountPool:Lcom/htc/android/mail/AccountPool;


# instance fields
.field private mAccountStore:Lcom/htc/android/mail/AccountPool$AccountStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/android/mail/AccountPool;->mAccountPool:Lcom/htc/android/mail/AccountPool;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/AccountPool;->mAccountStore:Lcom/htc/android/mail/AccountPool$AccountStore;

    .line 34
    new-instance v0, Lcom/htc/android/mail/AccountPool$AccountStore;

    invoke-direct {v0}, Lcom/htc/android/mail/AccountPool$AccountStore;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/AccountPool;->mAccountStore:Lcom/htc/android/mail/AccountPool$AccountStore;

    .line 35
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/htc/android/mail/AccountPool;
    .locals 4
    .parameter "context"

    .prologue
    .line 44
    sget-object v0, Lcom/htc/android/mail/AccountPool;->mAccountPool:Lcom/htc/android/mail/AccountPool;

    if-nez v0, :cond_1

    .line 45
    const-class v1, Lcom/htc/android/mail/AccountPool;

    monitor-enter v1

    .line 46
    :try_start_0
    sget-object v0, Lcom/htc/android/mail/AccountPool;->mAccountPool:Lcom/htc/android/mail/AccountPool;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/htc/android/mail/AccountPool;

    invoke-direct {v0}, Lcom/htc/android/mail/AccountPool;-><init>()V

    sput-object v0, Lcom/htc/android/mail/AccountPool;->mAccountPool:Lcom/htc/android/mail/AccountPool;

    .line 48
    sget-object v0, Lcom/htc/android/mail/AccountPool;->mAccountPool:Lcom/htc/android/mail/AccountPool;

    const-wide v2, 0x7fffffffffffffffL

    invoke-virtual {v0, p0, v2, v3}, Lcom/htc/android/mail/AccountPool;->getAccount(Landroid/content/Context;J)Lcom/htc/android/mail/Account;

    .line 50
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :cond_1
    sget-object v0, Lcom/htc/android/mail/AccountPool;->mAccountPool:Lcom/htc/android/mail/AccountPool;

    return-object v0

    .line 50
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static initAccountPoolInIntentService(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 38
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.android.mail.mailservice.MailIntentService.INIT_ACCOUNT_POOL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 39
    .local v0, newIntent:Landroid/content/Intent;
    const-string v1, "com.htc.android.mail"

    const-string v2, "com.htc.android.mail.mailservice.MailIntentService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 41
    return-void
.end method


# virtual methods
.method public containsExchange(Landroid/content/Context;)Z
    .locals 8
    .parameter "context"

    .prologue
    .line 168
    iget-object v6, p0, Lcom/htc/android/mail/AccountPool;->mAccountStore:Lcom/htc/android/mail/AccountPool$AccountStore;

    monitor-enter v6

    .line 169
    :try_start_0
    iget-object v5, p0, Lcom/htc/android/mail/AccountPool;->mAccountStore:Lcom/htc/android/mail/AccountPool$AccountStore;

    invoke-virtual {v5}, Lcom/htc/android/mail/AccountPool$AccountStore;->getAccounts()[Lcom/htc/android/mail/Account;

    move-result-object v1

    .line 170
    .local v1, accounts:[Lcom/htc/android/mail/Account;
    move-object v2, v1

    .local v2, arr$:[Lcom/htc/android/mail/Account;
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v2, v3

    .line 171
    .local v0, account:Lcom/htc/android/mail/Account;
    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v5

    const/4 v7, 0x4

    if-ne v5, v7, :cond_0

    const/4 v5, 0x1

    monitor-exit v6

    .line 174
    .end local v0           #account:Lcom/htc/android/mail/Account;
    :goto_1
    return v5

    .line 170
    .restart local v0       #account:Lcom/htc/android/mail/Account;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 173
    .end local v0           #account:Lcom/htc/android/mail/Account;
    :cond_1
    monitor-exit v6

    .line 174
    const/4 v5, 0x0

    goto :goto_1

    .line 173
    .end local v1           #accounts:[Lcom/htc/android/mail/Account;
    .end local v2           #arr$:[Lcom/htc/android/mail/Account;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public getAccount(Landroid/content/Context;J)Lcom/htc/android/mail/Account;
    .locals 4
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 56
    const/4 v0, 0x0

    .line 57
    .local v0, account:Lcom/htc/android/mail/Account;
    iget-object v3, p0, Lcom/htc/android/mail/AccountPool;->mAccountStore:Lcom/htc/android/mail/AccountPool$AccountStore;

    monitor-enter v3

    .line 58
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/mail/AccountPool;->mAccountStore:Lcom/htc/android/mail/AccountPool$AccountStore;

    invoke-virtual {v2, p2, p3}, Lcom/htc/android/mail/AccountPool$AccountStore;->get(J)Lcom/htc/android/mail/Account;

    move-result-object v0

    .line 59
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    if-nez v0, :cond_1

    .line 62
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, p2, v2

    if-nez v2, :cond_2

    .line 63
    iget-object v2, p0, Lcom/htc/android/mail/AccountPool;->mAccountStore:Lcom/htc/android/mail/AccountPool$AccountStore;

    invoke-static {p1, v2}, Lcom/htc/android/mail/Account;->getCombinedAccount(Landroid/content/Context;Lcom/htc/android/mail/AccountPool$AccountStore;)Lcom/htc/android/mail/Account;

    move-result-object v0

    .line 71
    :goto_0
    iget-object v3, p0, Lcom/htc/android/mail/AccountPool;->mAccountStore:Lcom/htc/android/mail/AccountPool$AccountStore;

    monitor-enter v3

    .line 72
    :try_start_1
    iget-object v2, p0, Lcom/htc/android/mail/AccountPool;->mAccountStore:Lcom/htc/android/mail/AccountPool$AccountStore;

    invoke-virtual {v2, p2, p3}, Lcom/htc/android/mail/AccountPool$AccountStore;->get(J)Lcom/htc/android/mail/Account;

    move-result-object v1

    .line 73
    .local v1, checkAccountAgain:Lcom/htc/android/mail/Account;
    if-nez v1, :cond_5

    .line 74
    if-eqz v0, :cond_0

    .line 75
    iget-object v2, p0, Lcom/htc/android/mail/AccountPool;->mAccountStore:Lcom/htc/android/mail/AccountPool$AccountStore;

    invoke-virtual {v2, p2, p3, v0}, Lcom/htc/android/mail/AccountPool$AccountStore;->put(JLcom/htc/android/mail/Account;)V

    .line 80
    :cond_0
    :goto_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v1           #checkAccountAgain:Lcom/htc/android/mail/Account;
    :cond_1
    move-object v2, v0

    .line 82
    :goto_2
    return-object v2

    .line 59
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 64
    :cond_2
    const-wide v2, 0x7ffffffffffffffdL

    cmp-long v2, p2, v2

    if-nez v2, :cond_3

    .line 65
    invoke-static {p1}, Lcom/htc/android/mail/Account;->getHuxUnifiedAccount(Landroid/content/Context;)Lcom/htc/android/mail/Account;

    move-result-object v0

    goto :goto_0

    .line 67
    :cond_3
    const-wide v2, 0x7ffffffffffffffeL

    cmp-long v2, p2, v2

    if-nez v2, :cond_4

    .line 68
    invoke-static {p1, p2, p3}, Lcom/htc/android/mail/Account;->getAccount(Landroid/content/Context;J)Lcom/htc/android/mail/Account;

    move-result-object v2

    goto :goto_2

    .line 69
    :cond_4
    invoke-static {p1, p2, p3}, Lcom/htc/android/mail/Account;->getAccount(Landroid/content/Context;J)Lcom/htc/android/mail/Account;

    move-result-object v0

    goto :goto_0

    .line 78
    .restart local v1       #checkAccountAgain:Lcom/htc/android/mail/Account;
    :cond_5
    move-object v0, v1

    goto :goto_1

    .line 80
    .end local v1           #checkAccountAgain:Lcom/htc/android/mail/Account;
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method public getAccount(Landroid/content/Context;Landroid/accounts/Account;)Lcom/htc/android/mail/Account;
    .locals 6
    .parameter "context"
    .parameter "syncAccount"

    .prologue
    .line 86
    const/4 v0, 0x0

    .line 87
    .local v0, account:Lcom/htc/android/mail/Account;
    iget-object v3, p0, Lcom/htc/android/mail/AccountPool;->mAccountStore:Lcom/htc/android/mail/AccountPool$AccountStore;

    monitor-enter v3

    .line 88
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/mail/AccountPool;->mAccountStore:Lcom/htc/android/mail/AccountPool$AccountStore;

    invoke-virtual {v2, p2}, Lcom/htc/android/mail/AccountPool$AccountStore;->get(Landroid/accounts/Account;)Lcom/htc/android/mail/Account;

    move-result-object v0

    .line 89
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    if-nez v0, :cond_1

    .line 91
    invoke-static {p1, p2}, Lcom/htc/android/mail/Account;->getAccount(Landroid/content/Context;Landroid/accounts/Account;)Lcom/htc/android/mail/Account;

    move-result-object v0

    .line 92
    iget-object v3, p0, Lcom/htc/android/mail/AccountPool;->mAccountStore:Lcom/htc/android/mail/AccountPool$AccountStore;

    monitor-enter v3

    .line 93
    :try_start_1
    iget-object v2, p0, Lcom/htc/android/mail/AccountPool;->mAccountStore:Lcom/htc/android/mail/AccountPool$AccountStore;

    invoke-virtual {v2, p2}, Lcom/htc/android/mail/AccountPool$AccountStore;->get(Landroid/accounts/Account;)Lcom/htc/android/mail/Account;

    move-result-object v1

    .line 94
    .local v1, checkAccountAgain:Lcom/htc/android/mail/Account;
    if-nez v1, :cond_2

    .line 95
    if-eqz v0, :cond_0

    .line 96
    iget-object v2, p0, Lcom/htc/android/mail/AccountPool;->mAccountStore:Lcom/htc/android/mail/AccountPool$AccountStore;

    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5, v0}, Lcom/htc/android/mail/AccountPool$AccountStore;->put(JLcom/htc/android/mail/Account;)V

    .line 101
    :cond_0
    :goto_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 103
    .end local v1           #checkAccountAgain:Lcom/htc/android/mail/Account;
    :cond_1
    return-object v0

    .line 89
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 99
    .restart local v1       #checkAccountAgain:Lcom/htc/android/mail/Account;
    :cond_2
    move-object v0, v1

    goto :goto_0

    .line 101
    .end local v1           #checkAccountAgain:Lcom/htc/android/mail/Account;
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method public getAccountByEmail(Landroid/content/Context;Ljava/lang/String;I)Lcom/htc/android/mail/Account;
    .locals 6
    .parameter "context"
    .parameter "emailAddress"
    .parameter "protocol"

    .prologue
    .line 107
    const/4 v0, 0x0

    .line 108
    .local v0, account:Lcom/htc/android/mail/Account;
    iget-object v3, p0, Lcom/htc/android/mail/AccountPool;->mAccountStore:Lcom/htc/android/mail/AccountPool$AccountStore;

    monitor-enter v3

    .line 109
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/mail/AccountPool;->mAccountStore:Lcom/htc/android/mail/AccountPool$AccountStore;

    invoke-virtual {v2, p2, p3}, Lcom/htc/android/mail/AccountPool$AccountStore;->getByEmail(Ljava/lang/String;I)Lcom/htc/android/mail/Account;

    move-result-object v0

    .line 110
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    if-nez v0, :cond_1

    .line 112
    invoke-static {p1, p2, p3}, Lcom/htc/android/mail/Account;->getAccountByEmail(Landroid/content/Context;Ljava/lang/String;I)Lcom/htc/android/mail/Account;

    move-result-object v0

    .line 113
    iget-object v3, p0, Lcom/htc/android/mail/AccountPool;->mAccountStore:Lcom/htc/android/mail/AccountPool$AccountStore;

    monitor-enter v3

    .line 114
    :try_start_1
    iget-object v2, p0, Lcom/htc/android/mail/AccountPool;->mAccountStore:Lcom/htc/android/mail/AccountPool$AccountStore;

    invoke-virtual {v2, p2, p3}, Lcom/htc/android/mail/AccountPool$AccountStore;->getByEmail(Ljava/lang/String;I)Lcom/htc/android/mail/Account;

    move-result-object v1

    .line 115
    .local v1, checkAccountAgain:Lcom/htc/android/mail/Account;
    if-nez v1, :cond_2

    .line 116
    if-eqz v0, :cond_0

    .line 117
    iget-object v2, p0, Lcom/htc/android/mail/AccountPool;->mAccountStore:Lcom/htc/android/mail/AccountPool$AccountStore;

    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5, v0}, Lcom/htc/android/mail/AccountPool$AccountStore;->put(JLcom/htc/android/mail/Account;)V

    .line 122
    :cond_0
    :goto_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 124
    .end local v1           #checkAccountAgain:Lcom/htc/android/mail/Account;
    :cond_1
    return-object v0

    .line 110
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 120
    .restart local v1       #checkAccountAgain:Lcom/htc/android/mail/Account;
    :cond_2
    move-object v0, v1

    goto :goto_0

    .line 122
    .end local v1           #checkAccountAgain:Lcom/htc/android/mail/Account;
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method public getAccountCount(Landroid/content/Context;I)I
    .locals 8
    .parameter "context"
    .parameter "type"

    .prologue
    .line 185
    iget-object v7, p0, Lcom/htc/android/mail/AccountPool;->mAccountStore:Lcom/htc/android/mail/AccountPool$AccountStore;

    monitor-enter v7

    .line 186
    const/4 v3, 0x0

    .line 187
    .local v3, count:I
    :try_start_0
    iget-object v6, p0, Lcom/htc/android/mail/AccountPool;->mAccountStore:Lcom/htc/android/mail/AccountPool$AccountStore;

    invoke-virtual {v6}, Lcom/htc/android/mail/AccountPool$AccountStore;->getAccounts()[Lcom/htc/android/mail/Account;

    move-result-object v1

    .line 188
    .local v1, accounts:[Lcom/htc/android/mail/Account;
    move-object v2, v1

    .local v2, arr$:[Lcom/htc/android/mail/Account;
    array-length v5, v2

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v0, v2, v4

    .line 189
    .local v0, account:Lcom/htc/android/mail/Account;
    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v6

    if-ne v6, p2, :cond_0

    add-int/lit8 v3, v3, 0x1

    .line 188
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 191
    .end local v0           #account:Lcom/htc/android/mail/Account;
    :cond_1
    monitor-exit v7

    return v3

    .line 192
    .end local v1           #accounts:[Lcom/htc/android/mail/Account;
    .end local v2           #arr$:[Lcom/htc/android/mail/Account;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method public getAccountIdByEmailAddr(Landroid/content/Context;Ljava/lang/String;I)J
    .locals 3
    .parameter "context"
    .parameter "emailAddr"
    .parameter "protocol"

    .prologue
    .line 128
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/android/mail/AccountPool;->getAccountByEmail(Landroid/content/Context;Ljava/lang/String;I)Lcom/htc/android/mail/Account;

    move-result-object v0

    .line 129
    .local v0, account:Lcom/htc/android/mail/Account;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v1

    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getAccounts(Landroid/content/Context;)[Lcom/htc/android/mail/Account;
    .locals 2
    .parameter "context"

    .prologue
    .line 162
    iget-object v1, p0, Lcom/htc/android/mail/AccountPool;->mAccountStore:Lcom/htc/android/mail/AccountPool$AccountStore;

    monitor-enter v1

    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/htc/android/mail/AccountPool;->mAccountStore:Lcom/htc/android/mail/AccountPool$AccountStore;

    invoke-virtual {v0}, Lcom/htc/android/mail/AccountPool$AccountStore;->getAccounts()[Lcom/htc/android/mail/Account;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAccounts(Landroid/content/Context;I)[Lcom/htc/android/mail/Account;
    .locals 9
    .parameter "context"
    .parameter "type"

    .prologue
    .line 140
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .local v6, typeAccount:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/Account;>;"
    iget-object v8, p0, Lcom/htc/android/mail/AccountPool;->mAccountStore:Lcom/htc/android/mail/AccountPool$AccountStore;

    monitor-enter v8

    .line 142
    :try_start_0
    iget-object v7, p0, Lcom/htc/android/mail/AccountPool;->mAccountStore:Lcom/htc/android/mail/AccountPool$AccountStore;

    invoke-virtual {v7}, Lcom/htc/android/mail/AccountPool$AccountStore;->getAccounts()[Lcom/htc/android/mail/Account;

    move-result-object v1

    .line 143
    .local v1, accounts:[Lcom/htc/android/mail/Account;
    move-object v2, v1

    .local v2, arr$:[Lcom/htc/android/mail/Account;
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v2, v3

    .line 144
    .local v0, account:Lcom/htc/android/mail/Account;
    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v7

    if-ne v7, p2, :cond_0

    .line 145
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 148
    .end local v0           #account:Lcom/htc/android/mail/Account;
    :cond_1
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 150
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v5, v7, [Lcom/htc/android/mail/Account;

    .line 151
    .local v5, returnAcc:[Lcom/htc/android/mail/Account;
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/htc/android/mail/Account;

    .line 153
    .end local v5           #returnAcc:[Lcom/htc/android/mail/Account;
    :goto_1
    return-object v7

    .line 148
    .end local v1           #accounts:[Lcom/htc/android/mail/Account;
    .end local v2           #arr$:[Lcom/htc/android/mail/Account;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 153
    .restart local v1       #accounts:[Lcom/htc/android/mail/Account;
    .restart local v2       #arr$:[Lcom/htc/android/mail/Account;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    :cond_2
    const/4 v7, 0x0

    new-array v7, v7, [Lcom/htc/android/mail/Account;

    goto :goto_1
.end method

.method public getDefaultAccountId(Landroid/content/Context;)J
    .locals 8
    .parameter "c"

    .prologue
    .line 273
    iget-object v7, p0, Lcom/htc/android/mail/AccountPool;->mAccountStore:Lcom/htc/android/mail/AccountPool$AccountStore;

    monitor-enter v7

    .line 274
    :try_start_0
    iget-object v5, p0, Lcom/htc/android/mail/AccountPool;->mAccountStore:Lcom/htc/android/mail/AccountPool$AccountStore;

    invoke-virtual {v5}, Lcom/htc/android/mail/AccountPool$AccountStore;->getAccounts()[Lcom/htc/android/mail/Account;

    move-result-object v1

    .line 275
    .local v1, accounts:[Lcom/htc/android/mail/Account;
    move-object v2, v1

    .local v2, arr$:[Lcom/htc/android/mail/Account;
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v0, v2, v3

    .line 276
    .local v0, account:Lcom/htc/android/mail/Account;
    if-nez v0, :cond_1

    .line 275
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 277
    :cond_1
    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getDelStatus()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 279
    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->isDefaultaccount()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v5

    monitor-exit v7

    .line 285
    .end local v0           #account:Lcom/htc/android/mail/Account;
    :goto_1
    return-wide v5

    :cond_2
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->getDefaultAccountId()J

    move-result-wide v5

    monitor-exit v7

    goto :goto_1

    .line 286
    .end local v1           #accounts:[Lcom/htc/android/mail/Account;
    .end local v2           #arr$:[Lcom/htc/android/mail/Account;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :catchall_0
    move-exception v5

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public getExchangeLargestProtocol(Landroid/content/Context;)Ljava/lang/String;
    .locals 13
    .parameter "context"

    .prologue
    .line 196
    const-string v9, "Unknown"

    .line 197
    .local v9, strRet:Ljava/lang/String;
    iget-object v11, p0, Lcom/htc/android/mail/AccountPool;->mAccountStore:Lcom/htc/android/mail/AccountPool$AccountStore;

    monitor-enter v11

    .line 198
    :try_start_0
    iget-object v10, p0, Lcom/htc/android/mail/AccountPool;->mAccountStore:Lcom/htc/android/mail/AccountPool$AccountStore;

    invoke-virtual {v10}, Lcom/htc/android/mail/AccountPool$AccountStore;->getAccounts()[Lcom/htc/android/mail/Account;

    move-result-object v1

    .line 199
    .local v1, accounts:[Lcom/htc/android/mail/Account;
    move-object v2, v1

    .local v2, arr$:[Lcom/htc/android/mail/Account;
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v0, v2, v3

    .line 200
    .local v0, account:Lcom/htc/android/mail/Account;
    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v10

    const/4 v12, 0x4

    if-ne v10, v12, :cond_0

    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getEasSvrProtocol()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "Unknown"

    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getEasSvrProtocol()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 204
    const-string v10, "Unknown"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 205
    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getEasSvrProtocol()Ljava/lang/String;

    move-result-object v9

    .line 199
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 207
    :cond_1
    invoke-static {v9}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    .line 208
    .local v7, retProtocol:D
    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getEasSvrProtocol()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    .line 209
    .local v5, protocol:D
    cmpl-double v10, v5, v7

    if-lez v10, :cond_0

    .line 210
    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getEasSvrProtocol()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 215
    .end local v0           #account:Lcom/htc/android/mail/Account;
    .end local v5           #protocol:D
    .end local v7           #retProtocol:D
    :cond_2
    monitor-exit v11

    .line 216
    return-object v9

    .line 215
    .end local v1           #accounts:[Lcom/htc/android/mail/Account;
    .end local v2           #arr$:[Lcom/htc/android/mail/Account;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10
.end method

.method public removeAccount(Landroid/content/Context;J)V
    .locals 4
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 241
    invoke-static {p1}, Lcom/htc/android/mail/RequestController;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/RequestController;

    move-result-object v0

    .line 242
    .local v0, controller:Lcom/htc/android/mail/RequestController;
    invoke-virtual {v0, p2, p3}, Lcom/htc/android/mail/RequestController;->stop(J)V

    .line 243
    iget-object v3, p0, Lcom/htc/android/mail/AccountPool;->mAccountStore:Lcom/htc/android/mail/AccountPool$AccountStore;

    monitor-enter v3

    .line 244
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/mail/AccountPool;->mAccountStore:Lcom/htc/android/mail/AccountPool$AccountStore;

    invoke-virtual {v2, p2, p3}, Lcom/htc/android/mail/AccountPool$AccountStore;->remove(J)Lcom/htc/android/mail/Account;

    .line 246
    invoke-static {p1}, Lcom/htc/android/mail/server/ServerPool;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/server/ServerPool;

    move-result-object v1

    .line 247
    .local v1, serverpool:Lcom/htc/android/mail/server/ServerPool;
    invoke-virtual {v1, p2, p3}, Lcom/htc/android/mail/server/ServerPool;->removeServer(J)V

    .line 248
    monitor-exit v3

    .line 249
    return-void

    .line 248
    .end local v1           #serverpool:Lcom/htc/android/mail/server/ServerPool;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public removeAccount(Landroid/content/Context;JIZ)V
    .locals 7
    .parameter "context"
    .parameter "accountId"
    .parameter "protocol"
    .parameter "isLastOne"

    .prologue
    const-wide v2, 0x7ffffffffffffffdL

    const/4 v6, 0x6

    .line 220
    invoke-static {p1}, Lcom/htc/android/mail/RequestController;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/RequestController;

    move-result-object v0

    .line 221
    .local v0, controller:Lcom/htc/android/mail/RequestController;
    if-ne p4, v6, :cond_0

    if-eqz p5, :cond_0

    .line 222
    invoke-virtual {v0, v2, v3}, Lcom/htc/android/mail/RequestController;->stop(J)V

    .line 224
    :cond_0
    invoke-virtual {v0, p2, p3}, Lcom/htc/android/mail/RequestController;->stop(J)V

    .line 225
    const-class v3, Lcom/htc/android/mail/Account;

    monitor-enter v3

    .line 226
    if-ne p4, v6, :cond_1

    if-eqz p5, :cond_1

    .line 227
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/mail/AccountPool;->mAccountStore:Lcom/htc/android/mail/AccountPool$AccountStore;

    const-wide v4, 0x7ffffffffffffffdL

    invoke-virtual {v2, v4, v5}, Lcom/htc/android/mail/AccountPool$AccountStore;->remove(J)Lcom/htc/android/mail/Account;

    .line 230
    :cond_1
    iget-object v2, p0, Lcom/htc/android/mail/AccountPool;->mAccountStore:Lcom/htc/android/mail/AccountPool$AccountStore;

    invoke-virtual {v2, p2, p3}, Lcom/htc/android/mail/AccountPool$AccountStore;->remove(J)Lcom/htc/android/mail/Account;

    .line 232
    invoke-static {p1}, Lcom/htc/android/mail/server/ServerPool;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/server/ServerPool;

    move-result-object v1

    .line 233
    .local v1, serverpool:Lcom/htc/android/mail/server/ServerPool;
    if-ne p4, v6, :cond_2

    if-eqz p5, :cond_2

    .line 234
    const-wide v4, 0x7ffffffffffffffdL

    invoke-virtual {v1, v4, v5}, Lcom/htc/android/mail/server/ServerPool;->removeServer(J)V

    .line 236
    :cond_2
    invoke-virtual {v1, p2, p3}, Lcom/htc/android/mail/server/ServerPool;->removeServer(J)V

    .line 237
    monitor-exit v3

    .line 238
    return-void

    .line 237
    .end local v1           #serverpool:Lcom/htc/android/mail/server/ServerPool;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public removeAllAccount(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 251
    iget-object v3, p0, Lcom/htc/android/mail/AccountPool;->mAccountStore:Lcom/htc/android/mail/AccountPool$AccountStore;

    monitor-enter v3

    .line 252
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/mail/AccountPool;->mAccountStore:Lcom/htc/android/mail/AccountPool$AccountStore;

    invoke-virtual {v2}, Lcom/htc/android/mail/AccountPool$AccountStore;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 253
    .local v0, accountId:Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, p1, v4, v5}, Lcom/htc/android/mail/AccountPool;->removeAccount(Landroid/content/Context;J)V

    goto :goto_0

    .line 255
    .end local v0           #accountId:Ljava/lang/Long;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 256
    return-void
.end method

.method public setDefaultAccountById(Landroid/content/Context;J)V
    .locals 9
    .parameter "c"
    .parameter "id"

    .prologue
    .line 259
    iget-object v6, p0, Lcom/htc/android/mail/AccountPool;->mAccountStore:Lcom/htc/android/mail/AccountPool$AccountStore;

    monitor-enter v6

    .line 260
    :try_start_0
    iget-object v5, p0, Lcom/htc/android/mail/AccountPool;->mAccountStore:Lcom/htc/android/mail/AccountPool$AccountStore;

    invoke-virtual {v5}, Lcom/htc/android/mail/AccountPool$AccountStore;->getAccounts()[Lcom/htc/android/mail/Account;

    move-result-object v1

    .line 261
    .local v1, accounts:[Lcom/htc/android/mail/Account;
    move-object v2, v1

    .local v2, arr$:[Lcom/htc/android/mail/Account;
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v0, v2, v3

    .line 262
    .local v0, account:Lcom/htc/android/mail/Account;
    if-nez v0, :cond_0

    .line 261
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 263
    :cond_0
    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v7

    cmp-long v5, v7, p2

    if-nez v5, :cond_1

    .line 264
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/htc/android/mail/Account;->setDefaultaccount(I)V

    goto :goto_1

    .line 269
    .end local v0           #account:Lcom/htc/android/mail/Account;
    .end local v1           #accounts:[Lcom/htc/android/mail/Account;
    .end local v2           #arr$:[Lcom/htc/android/mail/Account;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 266
    .restart local v0       #account:Lcom/htc/android/mail/Account;
    .restart local v1       #accounts:[Lcom/htc/android/mail/Account;
    .restart local v2       #arr$:[Lcom/htc/android/mail/Account;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    :cond_1
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v0, v5}, Lcom/htc/android/mail/Account;->setDefaultaccount(I)V

    goto :goto_1

    .line 269
    .end local v0           #account:Lcom/htc/android/mail/Account;
    :cond_2
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 270
    return-void
.end method
