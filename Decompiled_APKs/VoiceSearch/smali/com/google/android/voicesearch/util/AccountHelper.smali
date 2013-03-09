.class public Lcom/google/android/voicesearch/util/AccountHelper;
.super Ljava/lang/Object;
.source "AccountHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voicesearch/util/AccountHelper$AccountsCallback;
    }
.end annotation


# static fields
.field private static final FEATURE_LEGACY_HOSTED_OR_GOOGLE:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAccountManager:Landroid/accounts/AccountManager;

.field private final mContext:Landroid/content/Context;

.field private final mPersonalizationPrefManager:Lcom/google/android/voicesearch/personalization/PersonalizationPrefManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    const-class v0, Lcom/google/android/voicesearch/util/AccountHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/voicesearch/util/AccountHelper;->TAG:Ljava/lang/String;

    .line 59
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "legacy_hosted_or_google"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/voicesearch/util/AccountHelper;->FEATURE_LEGACY_HOSTED_OR_GOOGLE:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object v0, p0, Lcom/google/android/voicesearch/util/AccountHelper;->mContext:Landroid/content/Context;

    .line 69
    iput-object v0, p0, Lcom/google/android/voicesearch/util/AccountHelper;->mAccountManager:Landroid/accounts/AccountManager;

    .line 70
    iput-object v0, p0, Lcom/google/android/voicesearch/util/AccountHelper;->mPersonalizationPrefManager:Lcom/google/android/voicesearch/personalization/PersonalizationPrefManager;

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/voicesearch/personalization/PersonalizationPrefManager;)V
    .locals 1
    .parameter "context"
    .parameter "personalizationPrefManager"

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/google/android/voicesearch/util/AccountHelper;->mContext:Landroid/content/Context;

    .line 76
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/util/AccountHelper;->mAccountManager:Landroid/accounts/AccountManager;

    .line 77
    iput-object p2, p0, Lcom/google/android/voicesearch/util/AccountHelper;->mPersonalizationPrefManager:Lcom/google/android/voicesearch/personalization/PersonalizationPrefManager;

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/voicesearch/util/AccountHelper;Ljava/lang/String;)[Landroid/accounts/Account;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/util/AccountHelper;->getSyncedAccounts(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/voicesearch/util/AccountHelper;)Landroid/accounts/AccountManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/voicesearch/util/AccountHelper;->mAccountManager:Landroid/accounts/AccountManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/voicesearch/util/AccountHelper;)Lcom/google/android/voicesearch/personalization/PersonalizationPrefManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/voicesearch/util/AccountHelper;->mPersonalizationPrefManager:Lcom/google/android/voicesearch/personalization/PersonalizationPrefManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/voicesearch/util/AccountHelper;)[Landroid/accounts/Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/android/voicesearch/util/AccountHelper;->getGoogleAccounts()[Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/voicesearch/util/AccountHelper;Landroid/app/Activity;[Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/voicesearch/util/AccountHelper;->promptAuthToken(Landroid/app/Activity;[Landroid/accounts/Account;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/google/android/voicesearch/util/AccountHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getAccounts(Ljava/lang/String;)[Landroid/accounts/Account;
    .locals 6
    .parameter "syncedAuthority"

    .prologue
    const/4 v3, 0x0

    .line 192
    iget-object v4, p0, Lcom/google/android/voicesearch/util/AccountHelper;->mAccountManager:Landroid/accounts/AccountManager;

    if-nez v4, :cond_0

    move-object v0, v3

    .line 212
    :goto_0
    return-object v0

    .line 197
    :cond_0
    const/4 v0, 0x0

    .line 198
    .local v0, accounts:[Landroid/accounts/Account;
    if-nez p1, :cond_1

    .line 199
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/voicesearch/util/AccountHelper;->getLegacyAccountValues()[Landroid/accounts/Account;

    move-result-object v0

    goto :goto_0

    .line 201
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/util/AccountHelper;->getSyncedAccounts(Ljava/lang/String;)[Landroid/accounts/Account;
    :try_end_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    goto :goto_0

    .line 204
    :catch_0
    move-exception v2

    .line 205
    .local v2, ex:Landroid/accounts/AuthenticatorException;
    sget-object v4, Lcom/google/android/voicesearch/util/AccountHelper;->TAG:Ljava/lang/String;

    const-string v5, "getAccounts error: "

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v3

    .line 206
    goto :goto_0

    .line 207
    .end local v2           #ex:Landroid/accounts/AuthenticatorException;
    :catch_1
    move-exception v1

    .line 208
    .local v1, e:Landroid/accounts/OperationCanceledException;
    sget-object v4, Lcom/google/android/voicesearch/util/AccountHelper;->TAG:Ljava/lang/String;

    const-string v5, "getAccounts error: "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v3

    .line 209
    goto :goto_0

    .line 210
    .end local v1           #e:Landroid/accounts/OperationCanceledException;
    :catch_2
    move-exception v1

    .line 211
    .local v1, e:Ljava/io/IOException;
    sget-object v4, Lcom/google/android/voicesearch/util/AccountHelper;->TAG:Ljava/lang/String;

    const-string v5, "getAccounts error: "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v3

    .line 212
    goto :goto_0
.end method

.method private getAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "account"
    .parameter "authTokenType"

    .prologue
    const/4 v3, 0x0

    .line 152
    const/4 v7, 0x0

    .line 157
    .local v7, authToken:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/voicesearch/util/AccountHelper;->mAccountManager:Landroid/accounts/AccountManager;

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v10

    .line 159
    .local v10, futureAuth:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    if-nez v10, :cond_0

    .line 160
    sget-object v0, Lcom/google/android/voicesearch/util/AccountHelper;->TAG:Ljava/lang/String;

    const-string v1, "mAccountManager.getAuthToken(...) returned null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :goto_0
    return-object v3

    .line 164
    :cond_0
    :try_start_0
    invoke-interface {v10}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    .line 165
    .local v8, bundle:Landroid/os/Bundle;
    if-nez v8, :cond_1

    .line 166
    sget-object v0, Lcom/google/android/voicesearch/util/AccountHelper;->TAG:Ljava/lang/String;

    const-string v1, "mAccountManager.getAuthToken(...).getResult() returned null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 172
    .end local v8           #bundle:Landroid/os/Bundle;
    :catch_0
    move-exception v9

    .line 173
    .local v9, e:Landroid/accounts/OperationCanceledException;
    sget-object v0, Lcom/google/android/voicesearch/util/AccountHelper;->TAG:Ljava/lang/String;

    const-string v1, "getAuthToken error: "

    invoke-static {v0, v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v9           #e:Landroid/accounts/OperationCanceledException;
    :goto_1
    move-object v3, v7

    .line 180
    goto :goto_0

    .line 170
    .restart local v8       #bundle:Landroid/os/Bundle;
    :cond_1
    :try_start_1
    const-string v0, "authtoken"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v7

    goto :goto_1

    .line 174
    .end local v8           #bundle:Landroid/os/Bundle;
    :catch_1
    move-exception v9

    .line 175
    .local v9, e:Landroid/accounts/AuthenticatorException;
    sget-object v0, Lcom/google/android/voicesearch/util/AccountHelper;->TAG:Ljava/lang/String;

    const-string v1, "getAuthToken error: "

    invoke-static {v0, v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 176
    .end local v9           #e:Landroid/accounts/AuthenticatorException;
    :catch_2
    move-exception v9

    .line 177
    .local v9, e:Ljava/io/IOException;
    sget-object v0, Lcom/google/android/voicesearch/util/AccountHelper;->TAG:Ljava/lang/String;

    const-string v1, "getAuthToken error: "

    invoke-static {v0, v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private getAuthToken([Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "accounts"
    .parameter "authTokenType"

    .prologue
    .line 114
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 115
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/voicesearch/util/AccountHelper;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getAuthTokens([Landroid/accounts/Account;Ljava/lang/String;)[Ljava/lang/String;
    .locals 8
    .parameter "accounts"
    .parameter "authTokenType"

    .prologue
    const/4 v6, 0x0

    .line 218
    if-eqz p1, :cond_0

    iget-object v7, p0, Lcom/google/android/voicesearch/util/AccountHelper;->mAccountManager:Landroid/accounts/AccountManager;

    if-nez v7, :cond_1

    .line 236
    :cond_0
    :goto_0
    return-object v6

    .line 224
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 225
    .local v5, tokens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v1, p1

    .local v1, arr$:[Landroid/accounts/Account;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v0, v1, v3

    .line 226
    .local v0, account:Landroid/accounts/Account;
    invoke-direct {p0, v0, p2}, Lcom/google/android/voicesearch/util/AccountHelper;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 228
    .local v2, authToken:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 229
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 233
    .end local v0           #account:Landroid/accounts/Account;
    .end local v2           #authToken:Ljava/lang/String;
    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-eqz v7, :cond_0

    .line 234
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    goto :goto_0
.end method

.method private getGoogleAccounts()[Landroid/accounts/Account;
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/google/android/voicesearch/util/AccountHelper;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v1, "com.google"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method private getLegacyAccountValues()[Landroid/accounts/Account;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 307
    iget-object v2, p0, Lcom/google/android/voicesearch/util/AccountHelper;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v3, "com.google"

    sget-object v4, Lcom/google/android/voicesearch/util/AccountHelper;->FEATURE_LEGACY_HOSTED_OR_GOOGLE:[Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v1, v1}, Landroid/accounts/AccountManager;->getAccountsByTypeAndFeatures(Ljava/lang/String;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v2

    invoke-interface {v2}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/accounts/Account;

    .line 311
    .local v0, accounts:[Landroid/accounts/Account;
    if-eqz v0, :cond_0

    array-length v2, v0

    if-nez v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 316
    .end local v0           #accounts:[Landroid/accounts/Account;
    :cond_1
    return-object v0
.end method

.method private getSyncedAccounts(Ljava/lang/String;)[Landroid/accounts/Account;
    .locals 7
    .parameter "syncedAuthority"

    .prologue
    .line 283
    invoke-direct {p0}, Lcom/google/android/voicesearch/util/AccountHelper;->getGoogleAccounts()[Landroid/accounts/Account;

    move-result-object v1

    .line 284
    .local v1, accounts:[Landroid/accounts/Account;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 285
    .local v5, syncedAccounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    move-object v2, v1

    .local v2, arr$:[Landroid/accounts/Account;
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v2, v3

    .line 286
    .local v0, account:Landroid/accounts/Account;
    invoke-static {v0, p1}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 287
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 291
    .end local v0           #account:Landroid/accounts/Account;
    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 292
    const/4 v6, 0x0

    .line 295
    :goto_1
    return-object v6

    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Landroid/accounts/Account;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/accounts/Account;

    goto :goto_1
.end method

.method private invalidateAuthToken(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 2
    .parameter "account"
    .parameter "authToken"

    .prologue
    .line 131
    if-eqz p2, :cond_0

    .line 132
    sget-object v0, Lcom/google/android/voicesearch/util/AccountHelper;->TAG:Ljava/lang/String;

    const-string v1, "#invalidateAuthToken"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v0, p0, Lcom/google/android/voicesearch/util/AccountHelper;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :cond_0
    return-void
.end method

.method private invalidateAuthToken([Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 2
    .parameter "accounts"
    .parameter "authTokenType"

    .prologue
    const/4 v1, 0x0

    .line 122
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 123
    aget-object v0, p1, v1

    aget-object v1, p1, v1

    invoke-direct {p0, v1, p2}, Lcom/google/android/voicesearch/util/AccountHelper;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/util/AccountHelper;->invalidateAuthToken(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 125
    :cond_0
    return-void
.end method

.method private promptAuthToken(Landroid/app/Activity;Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 7
    .parameter "activity"
    .parameter "account"
    .parameter "authTokenType"

    .prologue
    const/4 v3, 0x0

    .line 148
    iget-object v0, p0, Lcom/google/android/voicesearch/util/AccountHelper;->mAccountManager:Landroid/accounts/AccountManager;

    move-object v1, p2

    move-object v2, p3

    move-object v4, p1

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 149
    return-void
.end method

.method private promptAuthToken(Landroid/app/Activity;[Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 1
    .parameter "activity"
    .parameter "accounts"
    .parameter "authTokenType"

    .prologue
    .line 138
    if-eqz p2, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    .line 139
    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-direct {p0, p1, v0, p3}, Lcom/google/android/voicesearch/util/AccountHelper;->promptAuthToken(Landroid/app/Activity;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 141
    :cond_0
    return-void
.end method


# virtual methods
.method public getContactAuthTokens()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 91
    const-string v0, "com.android.contacts"

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/util/AccountHelper;->getAccounts(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    const-string v1, "speechpersonalization"

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/util/AccountHelper;->getAuthTokens([Landroid/accounts/Account;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGmailAccounts(Landroid/content/Context;Lcom/google/android/voicesearch/util/AccountHelper$AccountsCallback;)V
    .locals 5
    .parameter "context"
    .parameter "callback"

    .prologue
    .line 401
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.google"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "mail"

    invoke-static {v4}, Lcom/google/android/gsf/GoogleLoginServiceConstants;->featureForService(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    new-instance v3, Lcom/google/android/voicesearch/util/AccountHelper$2;

    invoke-direct {v3, p0, p2}, Lcom/google/android/voicesearch/util/AccountHelper$2;-><init>(Lcom/google/android/voicesearch/util/AccountHelper;Lcom/google/android/voicesearch/util/AccountHelper$AccountsCallback;)V

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/accounts/AccountManager;->getAccountsByTypeAndFeatures(Ljava/lang/String;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 424
    return-void
.end method

.method public getGmailAccountsBlocking(Landroid/content/Context;)[Landroid/accounts/Account;
    .locals 8
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 433
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    const-string v4, "com.google"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "mail"

    invoke-static {v7}, Lcom/google/android/gsf/GoogleLoginServiceConstants;->featureForService(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5, v3, v3}, Landroid/accounts/AccountManager;->getAccountsByTypeAndFeatures(Ljava/lang/String;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v1

    .line 438
    .local v1, gmailAccounts:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<[Landroid/accounts/Account;>;"
    :try_start_0
    invoke-interface {v1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/accounts/Account;
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 446
    :goto_0
    return-object v2

    .line 439
    :catch_0
    move-exception v0

    .line 440
    .local v0, e:Landroid/accounts/OperationCanceledException;
    sget-object v2, Lcom/google/android/voicesearch/util/AccountHelper;->TAG:Ljava/lang/String;

    const-string v4, "Retreiving gmail accounts failed"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/accounts/OperationCanceledException;
    :goto_1
    move-object v2, v3

    .line 446
    goto :goto_0

    .line 441
    :catch_1
    move-exception v0

    .line 442
    .local v0, e:Landroid/accounts/AuthenticatorException;
    sget-object v2, Lcom/google/android/voicesearch/util/AccountHelper;->TAG:Ljava/lang/String;

    const-string v4, "Retreiving gmail accounts failed"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 443
    .end local v0           #e:Landroid/accounts/AuthenticatorException;
    :catch_2
    move-exception v0

    .line 444
    .local v0, e:Ljava/io/IOException;
    sget-object v2, Lcom/google/android/voicesearch/util/AccountHelper;->TAG:Ljava/lang/String;

    const-string v4, "Retreiving gmail accounts failed"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public getLastUsedGmailAccountIndex([Ljava/lang/String;)I
    .locals 7
    .parameter "availableAccounts"

    .prologue
    const/4 v3, -0x1

    .line 339
    iget-object v4, p0, Lcom/google/android/voicesearch/util/AccountHelper;->mContext:Landroid/content/Context;

    const-string v5, "VoiceSearchPreferences"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 341
    .local v2, prefs:Landroid/content/SharedPreferences;
    const-string v4, "key_gmail_account_to_send_from"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 342
    .local v1, lastUsedAccount:Ljava/lang/String;
    if-nez v1, :cond_1

    move v0, v3

    .line 350
    :cond_0
    :goto_0
    return v0

    .line 345
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v4, p1

    if-ge v0, v4, :cond_2

    .line 346
    aget-object v4, p1, v0

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 345
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v3

    .line 350
    goto :goto_0
.end method

.method public getSpeechPersonalizationServiceAuthToken()Ljava/lang/String;
    .locals 2

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/google/android/voicesearch/util/AccountHelper;->getGoogleAccounts()[Landroid/accounts/Account;

    move-result-object v0

    const-string v1, "speechpersonalization"

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/util/AccountHelper;->getAuthToken([Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasGoogleAccount()Z
    .locals 1

    .prologue
    .line 264
    invoke-direct {p0}, Lcom/google/android/voicesearch/util/AccountHelper;->getGoogleAccounts()[Landroid/accounts/Account;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public invalidateAuthToken(Ljava/lang/String;)V
    .locals 2
    .parameter "authToken"

    .prologue
    .line 246
    iget-object v0, p0, Lcom/google/android/voicesearch/util/AccountHelper;->mAccountManager:Landroid/accounts/AccountManager;

    if-nez v0, :cond_1

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    if-eqz p1, :cond_0

    .line 257
    iget-object v0, p0, Lcom/google/android/voicesearch/util/AccountHelper;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v1, "com.google"

    invoke-virtual {v0, v1, p1}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public invalidateSpeechPersonalization()V
    .locals 2

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/google/android/voicesearch/util/AccountHelper;->getGoogleAccounts()[Landroid/accounts/Account;

    move-result-object v0

    const-string v1, "speechpersonalization"

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/util/AccountHelper;->invalidateAuthToken([Landroid/accounts/Account;Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public promptForPermissions(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 362
    new-instance v0, Lcom/google/android/voicesearch/util/AccountHelper$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/voicesearch/util/AccountHelper$1;-><init>(Lcom/google/android/voicesearch/util/AccountHelper;Landroid/app/Activity;)V

    .line 391
    .local v0, getAccounts:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 392
    return-void
.end method

.method public setLastUsedGmailAccount(Ljava/lang/String;)V
    .locals 4
    .parameter "account"

    .prologue
    .line 325
    iget-object v1, p0, Lcom/google/android/voicesearch/util/AccountHelper;->mContext:Landroid/content/Context;

    const-string v2, "VoiceSearchPreferences"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 327
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "key_gmail_account_to_send_from"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 328
    invoke-static {v0}, Lcom/google/android/voicesearch/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 329
    return-void
.end method
