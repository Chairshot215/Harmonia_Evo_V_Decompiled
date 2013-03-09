.class public Lcom/android/browser/GoogleAccountLogin;
.super Ljava/lang/Object;
.source "GoogleAccountLogin.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroid/accounts/AccountManagerCallback;
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;",
        "Landroid/content/DialogInterface$OnCancelListener;"
    }
.end annotation


# static fields
.field private static final GOOGLE:Ljava/lang/String; = "com.google"

.field private static final LOGTAG:Ljava/lang/String; = "BrowserLogin"

.field public static final PREF_AUTOLOGIN_TIME:Ljava/lang/String; = "last_autologin_time"

.field private static final TOKEN_AUTH_URL:Landroid/net/Uri;


# instance fields
.field private ISSUE_AUTH_TOKEN_URL:Landroid/net/Uri;

.field private final mAccount:Landroid/accounts/Account;

.field private final mActivity:Landroid/app/Activity;

.field private mLsid:Ljava/lang/String;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mRunnable:Ljava/lang/Runnable;

.field private mSid:Ljava/lang/String;

.field private mState:I

.field private mTokensInvalidated:Z

.field private mUserAgent:Ljava/lang/String;

.field private final mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-string v0, "https://www.google.com/accounts/TokenAuth"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/browser/GoogleAccountLogin;->TOKEN_AUTH_URL:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;Landroid/accounts/Account;Ljava/lang/Runnable;)V
    .locals 2
    .parameter "activity"
    .parameter "account"
    .parameter "runnable"

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-string v0, "https://www.google.com/accounts/IssueAuthToken?service=gaia&Session=false"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/GoogleAccountLogin;->ISSUE_AUTH_TOKEN_URL:Landroid/net/Uri;

    .line 74
    iput-object p1, p0, Lcom/android/browser/GoogleAccountLogin;->mActivity:Landroid/app/Activity;

    .line 75
    iput-object p2, p0, Lcom/android/browser/GoogleAccountLogin;->mAccount:Landroid/accounts/Account;

    .line 76
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/android/browser/GoogleAccountLogin;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/browser/GoogleAccountLogin;->mWebView:Landroid/webkit/WebView;

    .line 77
    iput-object p3, p0, Lcom/android/browser/GoogleAccountLogin;->mRunnable:Ljava/lang/Runnable;

    .line 78
    iget-object v0, p0, Lcom/android/browser/GoogleAccountLogin;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/GoogleAccountLogin;->mUserAgent:Ljava/lang/String;

    .line 83
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 84
    invoke-static {}, Lcom/android/browser/WebViewTimersControl;->getInstance()Lcom/android/browser/WebViewTimersControl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/GoogleAccountLogin;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Lcom/android/browser/WebViewTimersControl;->onBrowserActivityResume(Landroid/webkit/WebView;)V

    .line 86
    iget-object v0, p0, Lcom/android/browser/GoogleAccountLogin;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/android/browser/GoogleAccountLogin$1;

    invoke-direct {v1, p0}, Lcom/android/browser/GoogleAccountLogin$1;-><init>(Lcom/android/browser/GoogleAccountLogin;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/GoogleAccountLogin;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/browser/GoogleAccountLogin;->done()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/browser/GoogleAccountLogin;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/browser/GoogleAccountLogin;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/browser/GoogleAccountLogin;)Landroid/webkit/WebView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/browser/GoogleAccountLogin;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method private declared-synchronized done()V
    .locals 4

    .prologue
    .line 266
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/browser/GoogleAccountLogin;->mRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 267
    const-string v1, "BrowserLogin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finished login attempt for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/browser/GoogleAccountLogin;->mAccount:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v1, p0, Lcom/android/browser/GoogleAccountLogin;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/browser/GoogleAccountLogin;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    :try_start_1
    iget-object v1, p0, Lcom/android/browser/GoogleAccountLogin;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 279
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/android/browser/GoogleAccountLogin;->mRunnable:Ljava/lang/Runnable;

    .line 280
    iget-object v1, p0, Lcom/android/browser/GoogleAccountLogin;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/android/browser/GoogleAccountLogin$3;

    invoke-direct {v2, p0}, Lcom/android/browser/GoogleAccountLogin$3;-><init>(Lcom/android/browser/GoogleAccountLogin;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 287
    :cond_0
    monitor-exit p0

    return-void

    .line 272
    :catch_0
    move-exception v0

    .line 277
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    const-string v1, "BrowserLogin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to dismiss mProgressDialog: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 266
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private static getAccounts(Landroid/content/Context;)[Landroid/accounts/Account;
    .locals 2
    .parameter "ctx"

    .prologue
    .line 249
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.google"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method private invalidateTokens()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 174
    iget-object v1, p0, Lcom/android/browser/GoogleAccountLogin;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 175
    .local v0, am:Landroid/accounts/AccountManager;
    const-string v1, "com.google"

    iget-object v2, p0, Lcom/android/browser/GoogleAccountLogin;->mSid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v1, "com.google"

    iget-object v2, p0, Lcom/android/browser/GoogleAccountLogin;->mLsid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iput-boolean v4, p0, Lcom/android/browser/GoogleAccountLogin;->mTokensInvalidated:Z

    .line 178
    iput v4, p0, Lcom/android/browser/GoogleAccountLogin;->mState:I

    .line 179
    iget-object v1, p0, Lcom/android/browser/GoogleAccountLogin;->mAccount:Landroid/accounts/Account;

    const-string v2, "SID"

    iget-object v4, p0, Lcom/android/browser/GoogleAccountLogin;->mActivity:Landroid/app/Activity;

    move-object v5, p0

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 180
    return-void
.end method

.method private static isLoggedIn()Z
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    .line 255
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/browser/BrowserSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "last_autologin_time"

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 257
    .local v0, lastLogin:J
    cmp-long v2, v0, v4

    if-nez v2, :cond_0

    .line 258
    const/4 v2, 0x0

    .line 260
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private saveLoginTime()V
    .locals 4

    .prologue
    .line 99
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/BrowserSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 100
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v1, "last_autologin_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 101
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 102
    return-void
.end method

.method private startLogin()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x1

    .line 235
    invoke-direct {p0}, Lcom/android/browser/GoogleAccountLogin;->saveLoginTime()V

    .line 236
    iget-object v0, p0, Lcom/android/browser/GoogleAccountLogin;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/browser/GoogleAccountLogin;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0c0083

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/GoogleAccountLogin;->mActivity:Landroid/app/Activity;

    const v4, 0x7f0c0084

    new-array v5, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/browser/GoogleAccountLogin;->mAccount:Landroid/accounts/Account;

    iget-object v7, v7, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move v4, v3

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/GoogleAccountLogin;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 243
    iput v3, p0, Lcom/android/browser/GoogleAccountLogin;->mState:I

    .line 244
    iget-object v0, p0, Lcom/android/browser/GoogleAccountLogin;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/GoogleAccountLogin;->mAccount:Landroid/accounts/Account;

    const-string v2, "SID"

    iget-object v4, p0, Lcom/android/browser/GoogleAccountLogin;->mActivity:Landroid/app/Activity;

    move-object v3, v8

    move-object v5, p0

    move-object v6, v8

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 246
    return-void
.end method

.method public static startLoginIfNeeded(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 3
    .parameter "activity"
    .parameter "runnable"

    .prologue
    .line 217
    invoke-static {}, Lcom/android/browser/GoogleAccountLogin;->isLoggedIn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 218
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 232
    :goto_0
    return-void

    .line 223
    :cond_0
    invoke-static {p0}, Lcom/android/browser/GoogleAccountLogin;->getAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v0

    .line 224
    .local v0, accounts:[Landroid/accounts/Account;
    if-eqz v0, :cond_1

    array-length v2, v0

    if-nez v2, :cond_2

    .line 225
    :cond_1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 229
    :cond_2
    new-instance v1, Lcom/android/browser/GoogleAccountLogin;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-direct {v1, p0, v2, p1}, Lcom/android/browser/GoogleAccountLogin;-><init>(Landroid/app/Activity;Landroid/accounts/Account;Ljava/lang/Runnable;)V

    .line 231
    .local v1, login:Lcom/android/browser/GoogleAccountLogin;
    invoke-direct {v1}, Lcom/android/browser/GoogleAccountLogin;->startLogin()V

    goto :goto_0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "unused"

    .prologue
    .line 291
    invoke-direct {p0}, Lcom/android/browser/GoogleAccountLogin;->done()V

    .line 292
    return-void
.end method

.method public run()V
    .locals 12

    .prologue
    .line 107
    iget-object v9, p0, Lcom/android/browser/GoogleAccountLogin;->ISSUE_AUTH_TOKEN_URL:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v9

    const-string v10, "SID"

    iget-object v11, p0, Lcom/android/browser/GoogleAccountLogin;->mSid:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v9

    const-string v10, "LSID"

    iget-object v11, p0, Lcom/android/browser/GoogleAccountLogin;->mLsid:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    .line 112
    .local v8, url:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/browser/GoogleAccountLogin;->mUserAgent:Ljava/lang/String;

    invoke-static {v9}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    .line 113
    .local v0, client:Landroid/net/http/AndroidHttpClient;
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v4, v8}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 115
    .local v4, request:Lorg/apache/http/client/methods/HttpPost;
    const/4 v6, 0x0

    .line 117
    .local v6, result:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v0, v4}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 118
    .local v5, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    .line 119
    .local v7, status:I
    const/16 v9, 0xc8

    if-eq v7, v9, :cond_1

    .line 120
    const-string v9, "BrowserLogin"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "LOGIN_FAIL: Bad status from auth url "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const/16 v9, 0x193

    if-ne v7, v9, :cond_0

    iget-boolean v9, p0, Lcom/android/browser/GoogleAccountLogin;->mTokensInvalidated:Z

    if-nez v9, :cond_0

    .line 126
    const-string v9, "BrowserLogin"

    const-string v10, "LOGIN_FAIL: Invalidating tokens..."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-direct {p0}, Lcom/android/browser/GoogleAccountLogin;->invalidateTokens()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 171
    .end local v5           #response:Lorg/apache/http/HttpResponse;
    .end local v7           #status:I
    :goto_0
    return-void

    .line 134
    .restart local v5       #response:Lorg/apache/http/HttpResponse;
    .restart local v7       #status:I
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/browser/GoogleAccountLogin;->done()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 150
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_0

    .line 137
    :cond_1
    :try_start_2
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 138
    .local v2, entity:Lorg/apache/http/HttpEntity;
    if-nez v2, :cond_2

    .line 139
    const-string v9, "BrowserLogin"

    const-string v10, "LOGIN_FAIL: Null entity in response"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-direct {p0}, Lcom/android/browser/GoogleAccountLogin;->done()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 150
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_0

    .line 143
    :cond_2
    :try_start_3
    const-string v9, "UTF-8"

    invoke-static {v2, v9}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v6

    .line 150
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 152
    sget-object v9, Lcom/android/browser/GoogleAccountLogin;->TOKEN_AUTH_URL:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v9

    const-string v10, "source"

    const-string v11, "android-browser"

    invoke-virtual {v9, v10, v11}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v9

    const-string v10, "auth"

    invoke-virtual {v9, v10, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v9

    const-string v10, "continue"

    iget-object v11, p0, Lcom/android/browser/GoogleAccountLogin;->mActivity:Landroid/app/Activity;

    invoke-static {v11}, Lcom/android/browser/BrowserSettings;->getFactoryResetHomeUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 158
    .local v3, newUrl:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/browser/GoogleAccountLogin;->mActivity:Landroid/app/Activity;

    new-instance v10, Lcom/android/browser/GoogleAccountLogin$2;

    invoke-direct {v10, p0, v3}, Lcom/android/browser/GoogleAccountLogin$2;-><init>(Lcom/android/browser/GoogleAccountLogin;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 144
    .end local v2           #entity:Lorg/apache/http/HttpEntity;
    .end local v3           #newUrl:Ljava/lang/String;
    .end local v5           #response:Lorg/apache/http/HttpResponse;
    .end local v7           #status:I
    :catch_0
    move-exception v1

    .line 145
    .local v1, e:Ljava/lang/Exception;
    :try_start_4
    const-string v9, "BrowserLogin"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "LOGIN_FAIL: Exception acquiring uber token "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 147
    invoke-direct {p0}, Lcom/android/browser/GoogleAccountLogin;->done()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 150
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_0

    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    throw v9
.end method

.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 186
    .local p1, value:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "authtoken"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 188
    .local v8, id:Ljava/lang/String;
    iget v0, p0, Lcom/android/browser/GoogleAccountLogin;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 191
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Impossible to get into this state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    .end local v8           #id:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 205
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "BrowserLogin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LOGIN_FAIL: Exception in state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/browser/GoogleAccountLogin;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-direct {p0}, Lcom/android/browser/GoogleAccountLogin;->done()V

    .line 210
    .end local v7           #e:Ljava/lang/Exception;
    :goto_0
    return-void

    .line 194
    .restart local v8       #id:Ljava/lang/String;
    :pswitch_0
    :try_start_1
    iput-object v8, p0, Lcom/android/browser/GoogleAccountLogin;->mSid:Ljava/lang/String;

    .line 195
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/browser/GoogleAccountLogin;->mState:I

    .line 196
    iget-object v0, p0, Lcom/android/browser/GoogleAccountLogin;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/GoogleAccountLogin;->mAccount:Landroid/accounts/Account;

    const-string v2, "LSID"

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/browser/GoogleAccountLogin;->mActivity:Landroid/app/Activity;

    const/4 v6, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    goto :goto_0

    .line 200
    :pswitch_1
    iput-object v8, p0, Lcom/android/browser/GoogleAccountLogin;->mLsid:Ljava/lang/String;

    .line 201
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 188
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
