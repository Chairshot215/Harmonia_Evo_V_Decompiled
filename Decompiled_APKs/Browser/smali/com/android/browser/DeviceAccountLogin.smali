.class public Lcom/android/browser/DeviceAccountLogin;
.super Ljava/lang/Object;
.source "DeviceAccountLogin.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/DeviceAccountLogin$AutoLoginCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# static fields
.field public static final FAILED:I = 0x1

.field public static final INITIAL:I = 0x0

.field public static final PROCESSING:I = 0x2


# instance fields
.field private final mAccountManager:Landroid/accounts/AccountManager;

.field mAccounts:[Landroid/accounts/Account;

.field private final mActivity:Landroid/app/Activity;

.field private mAuthToken:Ljava/lang/String;

.field private mCallback:Lcom/android/browser/DeviceAccountLogin$AutoLoginCallback;

.field private mState:I

.field private final mTab:Lcom/android/browser/Tab;

.field private final mWebView:Landroid/webkit/WebView;

.field private final mWebViewController:Lcom/android/browser/WebViewController;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/webkit/WebView;Lcom/android/browser/Tab;Lcom/android/browser/WebViewController;)V
    .locals 1
    .parameter "activity"
    .parameter "view"
    .parameter "tab"
    .parameter "controller"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/browser/DeviceAccountLogin;->mState:I

    .line 52
    iput-object p1, p0, Lcom/android/browser/DeviceAccountLogin;->mActivity:Landroid/app/Activity;

    .line 53
    iput-object p2, p0, Lcom/android/browser/DeviceAccountLogin;->mWebView:Landroid/webkit/WebView;

    .line 54
    iput-object p3, p0, Lcom/android/browser/DeviceAccountLogin;->mTab:Lcom/android/browser/Tab;

    .line 55
    iput-object p4, p0, Lcom/android/browser/DeviceAccountLogin;->mWebViewController:Lcom/android/browser/WebViewController;

    .line 56
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/DeviceAccountLogin;->mAccountManager:Landroid/accounts/AccountManager;

    .line 57
    return-void
.end method

.method private displayLoginUi()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/browser/DeviceAccountLogin;->mTab:Lcom/android/browser/Tab;

    invoke-virtual {v0, p0}, Lcom/android/browser/Tab;->setDeviceAccountLogin(Lcom/android/browser/DeviceAccountLogin;)V

    .line 119
    iget-object v0, p0, Lcom/android/browser/DeviceAccountLogin;->mTab:Lcom/android/browser/Tab;

    invoke-virtual {v0}, Lcom/android/browser/Tab;->inForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/browser/DeviceAccountLogin;->mWebViewController:Lcom/android/browser/WebViewController;

    iget-object v1, p0, Lcom/android/browser/DeviceAccountLogin;->mTab:Lcom/android/browser/Tab;

    invoke-interface {v0, v1}, Lcom/android/browser/WebViewController;->showAutoLogin(Lcom/android/browser/Tab;)V

    .line 122
    :cond_0
    return-void
.end method

.method private loginFailed()V
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/browser/DeviceAccountLogin;->mState:I

    .line 107
    iget-object v0, p0, Lcom/android/browser/DeviceAccountLogin;->mTab:Lcom/android/browser/Tab;

    invoke-virtual {v0}, Lcom/android/browser/Tab;->getDeviceAccountLogin()Lcom/android/browser/DeviceAccountLogin;

    move-result-object v0

    if-nez v0, :cond_1

    .line 108
    invoke-direct {p0}, Lcom/android/browser/DeviceAccountLogin;->displayLoginUi()V

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/android/browser/DeviceAccountLogin;->mCallback:Lcom/android/browser/DeviceAccountLogin$AutoLoginCallback;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/browser/DeviceAccountLogin;->mCallback:Lcom/android/browser/DeviceAccountLogin$AutoLoginCallback;

    invoke-interface {v0}, Lcom/android/browser/DeviceAccountLogin$AutoLoginCallback;->loginFailed()V

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/browser/DeviceAccountLogin;->mTab:Lcom/android/browser/Tab;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/browser/Tab;->setDeviceAccountLogin(Lcom/android/browser/DeviceAccountLogin;)V

    .line 126
    return-void
.end method

.method public getAccountNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 137
    iget-object v2, p0, Lcom/android/browser/DeviceAccountLogin;->mAccounts:[Landroid/accounts/Account;

    array-length v2, v2

    new-array v1, v2, [Ljava/lang/String;

    .line 138
    .local v1, names:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/browser/DeviceAccountLogin;->mAccounts:[Landroid/accounts/Account;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 139
    iget-object v2, p0, Lcom/android/browser/DeviceAccountLogin;->mAccounts:[Landroid/accounts/Account;

    aget-object v2, v2, v0

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v2, v1, v0

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 141
    :cond_0
    return-object v1
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/android/browser/DeviceAccountLogin;->mState:I

    return v0
.end method

.method public handleLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "realm"
    .parameter "account"
    .parameter "args"

    .prologue
    const/4 v3, 0x0

    .line 60
    iget-object v0, p0, Lcom/android/browser/DeviceAccountLogin;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v0, p1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/DeviceAccountLogin;->mAccounts:[Landroid/accounts/Account;

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "weblogin:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/DeviceAccountLogin;->mAuthToken:Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lcom/android/browser/DeviceAccountLogin;->mAccounts:[Landroid/accounts/Account;

    array-length v0, v0

    if-nez v0, :cond_0

    .line 80
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v7, p0, Lcom/android/browser/DeviceAccountLogin;->mAccounts:[Landroid/accounts/Account;

    .local v7, arr$:[Landroid/accounts/Account;
    array-length v9, v7

    .local v9, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_1
    if-ge v8, v9, :cond_2

    aget-object v1, v7, v8

    .line 70
    .local v1, a:Landroid/accounts/Account;
    iget-object v0, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/android/browser/DeviceAccountLogin;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v2, p0, Lcom/android/browser/DeviceAccountLogin;->mAuthToken:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/browser/DeviceAccountLogin;->mActivity:Landroid/app/Activity;

    move-object v5, p0

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    goto :goto_0

    .line 69
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 79
    .end local v1           #a:Landroid/accounts/Account;
    :cond_2
    invoke-direct {p0}, Lcom/android/browser/DeviceAccountLogin;->displayLoginUi()V

    goto :goto_0
.end method

.method public login(ILcom/android/browser/DeviceAccountLogin$AutoLoginCallback;)V
    .locals 7
    .parameter "accountIndex"
    .parameter "cb"

    .prologue
    const/4 v3, 0x0

    .line 129
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/browser/DeviceAccountLogin;->mState:I

    .line 130
    iput-object p2, p0, Lcom/android/browser/DeviceAccountLogin;->mCallback:Lcom/android/browser/DeviceAccountLogin$AutoLoginCallback;

    .line 131
    iget-object v0, p0, Lcom/android/browser/DeviceAccountLogin;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/android/browser/DeviceAccountLogin;->mAccounts:[Landroid/accounts/Account;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/android/browser/DeviceAccountLogin;->mAuthToken:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/browser/DeviceAccountLogin;->mActivity:Landroid/app/Activity;

    move-object v5, p0

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 134
    return-void
.end method

.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 4
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
    .line 85
    .local p1, value:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    const-string v3, "authtoken"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, result:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 88
    invoke-direct {p0}, Lcom/android/browser/DeviceAccountLogin;->loginFailed()V

    .line 99
    .end local v1           #result:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 90
    .restart local v1       #result:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/browser/DeviceAccountLogin;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 91
    iget-object v2, p0, Lcom/android/browser/DeviceAccountLogin;->mTab:Lcom/android/browser/Tab;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/browser/Tab;->setDeviceAccountLogin(Lcom/android/browser/DeviceAccountLogin;)V

    .line 92
    iget-object v2, p0, Lcom/android/browser/DeviceAccountLogin;->mTab:Lcom/android/browser/Tab;

    invoke-virtual {v2}, Lcom/android/browser/Tab;->inForeground()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    iget-object v2, p0, Lcom/android/browser/DeviceAccountLogin;->mWebViewController:Lcom/android/browser/WebViewController;

    iget-object v3, p0, Lcom/android/browser/DeviceAccountLogin;->mTab:Lcom/android/browser/Tab;

    invoke-interface {v2, v3}, Lcom/android/browser/WebViewController;->hideAutoLogin(Lcom/android/browser/Tab;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 96
    .end local v1           #result:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 97
    .local v0, e:Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/android/browser/DeviceAccountLogin;->loginFailed()V

    goto :goto_0
.end method
