.class public abstract Lcom/htc/socialnetwork/account/BaseLoginActivity;
.super Landroid/app/Activity;
.source "BaseLoginActivity.java"

# interfaces
.implements Lcom/htc/socialnetwork/account/Constants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/socialnetwork/account/BaseLoginActivity$TaskCallable;,
        Lcom/htc/socialnetwork/account/BaseLoginActivity$DefaultResponse;,
        Lcom/htc/socialnetwork/account/BaseLoginActivity$LoginFuture;
    }
.end annotation


# static fields
.field public static final FLAG_CONTACTVISIBILITY_DISABLE:I = 0x0

.field public static final FLAG_CONTACTVISIBILITY_INVISIBLE:I = 0x2

.field public static final FLAG_CONTACTVISIBILITY_VISIBLE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "BaseLoginActivity"

.field static final account_uri:Landroid/net/Uri;

.field static final password_uri:Landroid/net/Uri;


# instance fields
.field data:Landroid/os/Bundle;

.field public defaultResponse:Lcom/htc/socialnetwork/account/TaskResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/socialnetwork/account/TaskResponse",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field defaultRunnable:Lcom/htc/socialnetwork/account/BaseLoginActivity$TaskCallable;

.field protected isLogin:Z

.field loginExecutor:Lcom/htc/socialnetwork/account/BaseLoginActivity$LoginFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/socialnetwork/account/BaseLoginActivity$LoginFuture",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field loginSuccess:Z

.field protected loginUserName:Ljava/lang/String;

.field protected loginUserPasswd:Ljava/lang/String;

.field mHandler:Landroid/os/Handler;

.field private mHtcContext:Landroid/content/Context;

.field private mKeyListener:Landroid/view/View$OnKeyListener;

.field mLoginButton:Landroid/widget/Button;

.field mLoginTask:Lcom/htc/socialnetwork/account/LoginTasks;

.field mPasswordInput:Landroid/widget/EditText;

.field public mProgressDialog:Lcom/htc/app/HtcProgressDialog;

.field mSSLCheckBox:Landroid/widget/CheckBox;

.field mShowPassword:Landroid/widget/CheckBox;

.field mUserInput:Landroid/widget/AutoCompleteTextView;

.field private storePassword:Z

.field public uiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    const-string v0, "content://com.htc.accounts/accounts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->account_uri:Landroid/net/Uri;

    .line 81
    const-string v0, "content://com.htc.accounts/password"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->password_uri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 64
    iput-object v1, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->loginUserName:Ljava/lang/String;

    .line 65
    iput-object v1, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->loginUserPasswd:Ljava/lang/String;

    .line 74
    iput-boolean v0, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->isLogin:Z

    .line 75
    iput-object v1, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->mHtcContext:Landroid/content/Context;

    .line 82
    iput-boolean v0, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->loginSuccess:Z

    .line 630
    new-instance v0, Lcom/htc/socialnetwork/account/BaseLoginActivity$LoginFuture;

    invoke-direct {v0, p0}, Lcom/htc/socialnetwork/account/BaseLoginActivity$LoginFuture;-><init>(Lcom/htc/socialnetwork/account/BaseLoginActivity;)V

    iput-object v0, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->loginExecutor:Lcom/htc/socialnetwork/account/BaseLoginActivity$LoginFuture;

    .line 636
    iput-object v1, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->defaultRunnable:Lcom/htc/socialnetwork/account/BaseLoginActivity$TaskCallable;

    .line 763
    return-void
.end method

.method static synthetic access$000(Lcom/htc/socialnetwork/account/BaseLoginActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/htc/socialnetwork/account/BaseLoginActivity;->setShowPassword(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/socialnetwork/account/BaseLoginActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->storePassword:Z

    return v0
.end method

.method static addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .parameter "uri"

    .prologue
    .line 163
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "caller_is_syncadapter"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static doAfterLoginAccount(Landroid/content/Context;Landroid/accounts/Account;[Ljava/lang/String;J)V
    .locals 8
    .parameter "context"
    .parameter "account"
    .parameter "providers"
    .parameter "syncInterval"

    .prologue
    const/4 v7, 0x1

    .line 148
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 149
    .local v3, provider:Ljava/lang/String;
    const-string v4, "BaseLoginActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is syncable "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1, v3}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-static {p1, v3}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_0

    .line 152
    invoke-static {p1, v3, v7}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 154
    :cond_0
    invoke-static {p1, v3, v7}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 148
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 156
    .end local v3           #provider:Ljava/lang/String;
    :cond_1
    const-wide/16 v4, 0x0

    cmp-long v4, p3, v4

    if-lez v4, :cond_2

    .line 157
    invoke-static {p0, p3, p4, v7}, Lcom/htc/socialnetwork/account/AccountReceiver;->reScheduleAlarm(Landroid/content/Context;JZ)V

    .line 160
    :cond_2
    return-void
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 199
    invoke-static {p0}, Lcom/htc/socialnetwork/account/BaseLoginActivity;->isNetworkAvailableExt(Landroid/content/Context;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNetworkAvailableExt(Landroid/content/Context;)I
    .locals 5
    .parameter "context"

    .prologue
    .line 203
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 204
    .local v0, connectivity:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 218
    :cond_0
    const/4 v2, -0x1

    :goto_0
    return v2

    .line 206
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 207
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 208
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_0

    .line 209
    const-string v2, "BaseLoginActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "info.getType()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private setShowPassword(Z)V
    .locals 2
    .parameter "showPassword"

    .prologue
    .line 408
    iget-object v0, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->mPasswordInput:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 409
    iget-object v1, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->mPasswordInput:Landroid/widget/EditText;

    if-eqz p1, :cond_1

    const/16 v0, 0x90

    :goto_0
    or-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 414
    :cond_0
    return-void

    .line 409
    :cond_1
    const/16 v0, 0x80

    goto :goto_0
.end method


# virtual methods
.method protected accountLogout()V
    .locals 4

    .prologue
    .line 315
    iget-object v1, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->loginExecutor:Lcom/htc/socialnetwork/account/BaseLoginActivity$LoginFuture;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/socialnetwork/account/BaseLoginActivity$LoginFuture;->stop(Z)Z

    .line 316
    iget-object v1, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->mLoginTask:Lcom/htc/socialnetwork/account/LoginTasks;

    iget-object v2, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->loginUserName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/socialnetwork/account/LoginTasks;->logout(Ljava/lang/String;)Z

    .line 317
    new-instance v0, Landroid/accounts/Account;

    iget-object v1, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->loginUserName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/socialnetwork/account/BaseLoginActivity;->getAccountType()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    .local v0, account:Landroid/accounts/Account;
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    new-instance v2, Lcom/htc/socialnetwork/account/BaseLoginActivity$1;

    invoke-direct {v2, p0}, Lcom/htc/socialnetwork/account/BaseLoginActivity$1;-><init>(Lcom/htc/socialnetwork/account/BaseLoginActivity;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 331
    return-void
.end method

.method public afterLogout()V
    .locals 0

    .prologue
    .line 334
    return-void
.end method

.method public dismissProgressDialog()V
    .locals 2

    .prologue
    .line 944
    iget-object v0, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_0

    .line 945
    iget-object v0, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/htc/socialnetwork/account/BaseLoginActivity$21;

    invoke-direct {v1, p0}, Lcom/htc/socialnetwork/account/BaseLoginActivity$21;-><init>(Lcom/htc/socialnetwork/account/BaseLoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 951
    :cond_0
    return-void
.end method

.method public doInBackgroundAfterLogin(Landroid/accounts/Account;)V
    .locals 5
    .parameter "account"

    .prologue
    .line 136
    iget-object v1, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->mShowPassword:Landroid/widget/CheckBox;

    if-eqz v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->mShowPassword:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/htc/socialnetwork/account/BaseLoginActivity;->writeShowPassword(I)V

    .line 140
    :cond_0
    invoke-virtual {p0}, Lcom/htc/socialnetwork/account/BaseLoginActivity;->getUserName()Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, email:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 142
    invoke-virtual {p0, v0}, Lcom/htc/socialnetwork/account/BaseLoginActivity;->writeAccount(Ljava/lang/String;)V

    .line 144
    :cond_1
    invoke-virtual {p0}, Lcom/htc/socialnetwork/account/BaseLoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/socialnetwork/account/BaseLoginActivity;->getProviderNames()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/socialnetwork/account/BaseLoginActivity;->getSyncInterval()J

    move-result-wide v3

    invoke-static {v1, p1, v2, v3, v4}, Lcom/htc/socialnetwork/account/BaseLoginActivity;->doAfterLoginAccount(Landroid/content/Context;Landroid/accounts/Account;[Ljava/lang/String;J)V

    .line 145
    return-void

    .line 137
    .end local v0           #email:Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 616
    const-string v0, "BaseLoginActivity"

    const-string v1, "onFinish is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 618
    return-void
.end method

.method getAccountList()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 809
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 810
    .local v7, accountList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_account"

    aput-object v0, v2, v1

    .line 811
    .local v2, projection:[Ljava/lang/String;
    const/4 v8, 0x0

    .line 813
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/htc/socialnetwork/account/BaseLoginActivity;->account_uri:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "_account asc"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/socialnetwork/account/BaseLoginActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 817
    if-eqz v8, :cond_1

    .line 818
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 821
    :cond_0
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 823
    .local v6, account:Ljava/lang/String;
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 824
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    if-nez v0, :cond_0

    .line 834
    .end local v6           #account:Ljava/lang/String;
    :cond_1
    if-eqz v8, :cond_2

    .line 835
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 837
    :cond_2
    return-object v7

    .line 827
    :catch_0
    move-exception v9

    .line 828
    .local v9, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_1
    const-string v0, "BaseLoginActivity"

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    if-eqz v8, :cond_2

    goto :goto_0

    .line 829
    .end local v9           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v9

    .line 830
    .local v9, e:Landroid/database/sqlite/SQLiteException;
    const-string v0, "BaseLoginActivity"

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    if-eqz v8, :cond_2

    goto :goto_0

    .line 831
    .end local v9           #e:Landroid/database/sqlite/SQLiteException;
    :catch_2
    move-exception v9

    .line 832
    .local v9, e:Ljava/lang/IllegalArgumentException;
    const-string v0, "BaseLoginActivity"

    invoke-virtual {v9}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 834
    if-eqz v8, :cond_2

    goto :goto_0

    .end local v9           #e:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 835
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 834
    :cond_3
    throw v0
.end method

.method public abstract getAccountType()Ljava/lang/String;
.end method

.method public getAuthenticateData()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 300
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContactVisibility()I
    .locals 1

    .prologue
    .line 248
    const/4 v0, 0x0

    return v0
.end method

.method public getData()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->data:Landroid/os/Bundle;

    return-object v0
.end method

.method protected getDefaultLoginRunnable()Lcom/htc/socialnetwork/account/BaseLoginActivity$TaskCallable;
    .locals 2

    .prologue
    .line 639
    iget-object v0, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->defaultRunnable:Lcom/htc/socialnetwork/account/BaseLoginActivity$TaskCallable;

    if-nez v0, :cond_0

    .line 640
    new-instance v0, Lcom/htc/socialnetwork/account/BaseLoginActivity$19;

    invoke-direct {v0, p0}, Lcom/htc/socialnetwork/account/BaseLoginActivity$19;-><init>(Lcom/htc/socialnetwork/account/BaseLoginActivity;)V

    iget-object v1, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->defaultResponse:Lcom/htc/socialnetwork/account/TaskResponse;

    invoke-virtual {v0, v1}, Lcom/htc/socialnetwork/account/BaseLoginActivity$19;->setResponse(Lcom/htc/socialnetwork/account/TaskResponse;)Lcom/htc/socialnetwork/account/BaseLoginActivity$TaskCallable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->defaultRunnable:Lcom/htc/socialnetwork/account/BaseLoginActivity$TaskCallable;

    .line 649
    :cond_0
    iget-object v0, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->defaultRunnable:Lcom/htc/socialnetwork/account/BaseLoginActivity$TaskCallable;

    return-object v0
.end method

.method public getLoginPasswordTextHint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    const v0, 0x20c0168

    invoke-virtual {p0, v0}, Lcom/htc/socialnetwork/account/BaseLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getLoginTask()Lcom/htc/socialnetwork/account/LoginTasks;
.end method

.method public abstract getLoginTextHint()Ljava/lang/String;
.end method

.method public abstract getLoginUserName()Ljava/lang/String;
.end method

.method public getPassword()Ljava/lang/String;
    .locals 2

    .prologue
    .line 181
    iget-object v1, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->mPasswordInput:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 182
    iget-object v1, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->mPasswordInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 186
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract getProviderName()Ljava/lang/String;
.end method

.method public getProviderNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 252
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 253
    .local v0, providers:[Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/htc/socialnetwork/account/BaseLoginActivity;->getProviderName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 254
    return-object v0
.end method

.method public abstract getServiceName()Ljava/lang/String;
.end method

.method public abstract getServiceTitle()Ljava/lang/String;
.end method

.method protected getShowPasswordValue()I
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 841
    const/4 v8, 0x0

    .line 842
    .local v8, isShowPassword:I
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "show_password"

    aput-object v0, v2, v1

    .line 843
    .local v2, projection:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 845
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/htc/socialnetwork/account/BaseLoginActivity;->password_uri:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/socialnetwork/account/BaseLoginActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 849
    if-eqz v6, :cond_0

    .line 850
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 851
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v8

    .line 861
    :cond_0
    if-eqz v6, :cond_1

    .line 862
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 864
    :cond_1
    return v8

    .line 854
    :catch_0
    move-exception v7

    .line 855
    .local v7, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_1
    const-string v0, "BaseLoginActivity"

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    if-eqz v6, :cond_1

    goto :goto_0

    .line 856
    .end local v7           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v7

    .line 857
    .local v7, e:Landroid/database/sqlite/SQLiteException;
    const-string v0, "BaseLoginActivity"

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    if-eqz v6, :cond_1

    goto :goto_0

    .line 858
    .end local v7           #e:Landroid/database/sqlite/SQLiteException;
    :catch_2
    move-exception v7

    .line 859
    .local v7, e:Ljava/lang/IllegalArgumentException;
    const-string v0, "BaseLoginActivity"

    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 861
    if-eqz v6, :cond_1

    goto :goto_0

    .end local v7           #e:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 862
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 861
    :cond_2
    throw v0
.end method

.method public getSyncInterval()J
    .locals 2

    .prologue
    .line 730
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 190
    iget-object v1, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->mUserInput:Landroid/widget/AutoCompleteTextView;

    if-eqz v1, :cond_0

    .line 191
    iget-object v1, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->mUserInput:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 195
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleError(Lcom/htc/socialnetwork/SocialNetworkException;)V
    .locals 3
    .parameter "e"

    .prologue
    .line 735
    invoke-virtual {p1}, Lcom/htc/socialnetwork/SocialNetworkException;->getErrorCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 743
    const/16 v0, 0x64

    .line 745
    .local v0, dialog_type:I
    :goto_0
    invoke-virtual {p1}, Lcom/htc/socialnetwork/SocialNetworkException;->printStackTrace()V

    .line 746
    iget-object v1, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/htc/socialnetwork/account/BaseLoginActivity$20;

    invoke-direct {v2, p0, v0}, Lcom/htc/socialnetwork/account/BaseLoginActivity$20;-><init>(Lcom/htc/socialnetwork/account/BaseLoginActivity;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 761
    return-void

    .line 737
    .end local v0           #dialog_type:I
    :sswitch_0
    const/16 v0, 0x66

    .line 738
    .restart local v0       #dialog_type:I
    goto :goto_0

    .line 740
    .end local v0           #dialog_type:I
    :sswitch_1
    const/16 v0, 0x6c

    .line 741
    .restart local v0       #dialog_type:I
    goto :goto_0

    .line 735
    nop

    :sswitch_data_0
    .sparse-switch
        0x7e4 -> :sswitch_1
        0x1ce9 -> :sswitch_0
    .end sparse-switch
.end method

.method protected initLayout()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 337
    iget-object v5, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->mHtcContext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 338
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v5, 0x20900a0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 339
    .local v4, view:Landroid/view/View;
    invoke-virtual {p0, v4}, Lcom/htc/socialnetwork/account/BaseLoginActivity;->setContentView(Landroid/view/View;)V

    .line 341
    invoke-virtual {p0}, Lcom/htc/socialnetwork/account/BaseLoginActivity;->getServiceTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/socialnetwork/account/BaseLoginActivity;->setTitle(Ljava/lang/String;)V

    .line 342
    const v5, 0x2020170

    invoke-virtual {p0, v5}, Lcom/htc/socialnetwork/account/BaseLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/AutoCompleteTextView;

    iput-object v5, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->mUserInput:Landroid/widget/AutoCompleteTextView;

    .line 343
    iget-object v5, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->mUserInput:Landroid/widget/AutoCompleteTextView;

    const/16 v6, 0x21

    invoke-virtual {v5, v6}, Landroid/widget/AutoCompleteTextView;->setInputType(I)V

    .line 345
    iget-object v5, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->mUserInput:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p0}, Lcom/htc/socialnetwork/account/BaseLoginActivity;->getLoginTextHint()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/AutoCompleteTextView;->setHint(Ljava/lang/CharSequence;)V

    .line 346
    invoke-virtual {p0}, Lcom/htc/socialnetwork/account/BaseLoginActivity;->getAccountList()Ljava/util/ArrayList;

    move-result-object v1

    .line 347
    .local v1, emailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 348
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v5, 0x2090080

    invoke-direct {v0, p0, v5, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 352
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->mUserInput:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v5, v0}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 354
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_0
    const v5, 0x2020171

    invoke-virtual {p0, v5}, Lcom/htc/socialnetwork/account/BaseLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->mPasswordInput:Landroid/widget/EditText;

    .line 355
    iget-object v5, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->mPasswordInput:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/htc/socialnetwork/account/BaseLoginActivity;->getLoginPasswordTextHint()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 356
    const v5, 0x2020173

    invoke-virtual {p0, v5}, Lcom/htc/socialnetwork/account/BaseLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->mLoginButton:Landroid/widget/Button;

    .line 357
    iget-object v5, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->mLoginButton:Landroid/widget/Button;

    new-instance v6, Lcom/htc/socialnetwork/account/BaseLoginActivity$2;

    invoke-direct {v6, p0}, Lcom/htc/socialnetwork/account/BaseLoginActivity$2;-><init>(Lcom/htc/socialnetwork/account/BaseLoginActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 370
    const v5, 0x2020172

    invoke-virtual {p0, v5}, Lcom/htc/socialnetwork/account/BaseLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->mShowPassword:Landroid/widget/CheckBox;

    .line 371
    invoke-virtual {p0}, Lcom/htc/socialnetwork/account/BaseLoginActivity;->getShowPasswordValue()I

    move-result v3

    .line 372
    .local v3, isShowPassword:I
    const-string v5, "BaseLoginActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isShowPassword = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    if-ne v3, v8, :cond_1

    .line 374
    invoke-direct {p0, v8}, Lcom/htc/socialnetwork/account/BaseLoginActivity;->setShowPassword(Z)V

    .line 375
    iget-object v5, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->mShowPassword:Landroid/widget/CheckBox;

    invoke-virtual {v5, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 377
    :cond_1
    iget-object v5, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->mShowPassword:Landroid/widget/CheckBox;

    new-instance v6, Lcom/htc/socialnetwork/account/BaseLoginActivity$3;

    invoke-direct {v6, p0}, Lcom/htc/socialnetwork/account/BaseLoginActivity$3;-><init>(Lcom/htc/socialnetwork/account/BaseLoginActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 384
    const v5, 0x2020174

    invoke-virtual {p0, v5}, Lcom/htc/socialnetwork/account/BaseLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->mSSLCheckBox:Landroid/widget/CheckBox;

    .line 386
    new-instance v5, Lcom/htc/socialnetwork/account/BaseLoginActivity$4;

    invoke-direct {v5, p0}, Lcom/htc/socialnetwork/account/BaseLoginActivity$4;-><init>(Lcom/htc/socialnetwork/account/BaseLoginActivity;)V

    iput-object v5, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->mKeyListener:Landroid/view/View$OnKeyListener;

    .line 403
    iget-object v5, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->mPasswordInput:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->mKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 404
    iget-object v5, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->mUserInput:Landroid/widget/AutoCompleteTextView;

    iget-object v6, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->mKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v5, v6}, Landroid/widget/AutoCompleteTextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 405
    return-void
.end method

.method public isBlank()Z
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->mUserInput:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->mPasswordInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 418
    const/4 v0, 0x0

    .line 420
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSSLEnabled()Z
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->mSSLCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 94
    :try_start_0
    invoke-static {p0}, Lcom/htc/res/HtcResources;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->mHtcContext:Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_0
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->mHandler:Landroid/os/Handler;

    .line 98
    invoke-virtual {p0}, Lcom/htc/socialnetwork/account/BaseLoginActivity;->getLoginTask()Lcom/htc/socialnetwork/account/LoginTasks;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->mLoginTask:Lcom/htc/socialnetwork/account/LoginTasks;

    .line 100
    iget-object v1, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->mLoginTask:Lcom/htc/socialnetwork/account/LoginTasks;

    invoke-virtual {p0}, Lcom/htc/socialnetwork/account/BaseLoginActivity;->getAccountType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/socialnetwork/account/LoginTasks;->isCurrentLogin(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 101
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 102
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->isLogin:Z

    .line 103
    const-string v1, "com.htc.socialnetwork.account.USERNAME"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->loginUserName:Ljava/lang/String;

    .line 104
    const-string v1, "com.htc.socialnetwork.account.PASSWORD"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->loginUserPasswd:Ljava/lang/String;

    .line 108
    :goto_1
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->uiHandler:Landroid/os/Handler;

    .line 109
    new-instance v1, Lcom/htc/socialnetwork/account/BaseLoginActivity$DefaultResponse;

    invoke-direct {v1, p0}, Lcom/htc/socialnetwork/account/BaseLoginActivity$DefaultResponse;-><init>(Lcom/htc/socialnetwork/account/BaseLoginActivity;)V

    iput-object v1, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->defaultResponse:Lcom/htc/socialnetwork/account/TaskResponse;

    .line 110
    invoke-virtual {p0}, Lcom/htc/socialnetwork/account/BaseLoginActivity;->initLayout()V

    .line 111
    return-void

    .line 106
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->isLogin:Z

    goto :goto_1

    .line 95
    .end local v0           #bundle:Landroid/os/Bundle;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .parameter "id"

    .prologue
    const v7, 0x20c0161

    const v6, 0x20c0160

    const v5, 0x20c015f

    const v3, 0x20c015d

    const v4, 0x1080027

    .line 438
    const/4 v1, 0x0

    .line 440
    .local v1, r:Landroid/content/res/Resources;
    :try_start_0
    iget-object v2, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->mHtcContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/res/HtcResources;->getResources(Landroid/content/Context;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 446
    packed-switch p1, :pswitch_data_0

    .line 611
    :pswitch_0
    const/4 v2, 0x0

    :goto_0
    return-object v2

    .line 442
    :catch_0
    move-exception v0

    .line 443
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    goto :goto_0

    .line 448
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :pswitch_1
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x20c0156

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x20c0162

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x20c0163

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/htc/socialnetwork/account/BaseLoginActivity$7;

    invoke-direct {v4, p0}, Lcom/htc/socialnetwork/account/BaseLoginActivity$7;-><init>(Lcom/htc/socialnetwork/account/BaseLoginActivity;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x20c0164

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/htc/socialnetwork/account/BaseLoginActivity$6;

    invoke-direct {v4, p0}, Lcom/htc/socialnetwork/account/BaseLoginActivity$6;-><init>(Lcom/htc/socialnetwork/account/BaseLoginActivity;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/htc/socialnetwork/account/BaseLoginActivity$5;

    invoke-direct {v3, p0}, Lcom/htc/socialnetwork/account/BaseLoginActivity$5;-><init>(Lcom/htc/socialnetwork/account/BaseLoginActivity;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    goto :goto_0

    .line 477
    :pswitch_2
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x20c0155

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/htc/socialnetwork/account/BaseLoginActivity$9;

    invoke-direct {v4, p0}, Lcom/htc/socialnetwork/account/BaseLoginActivity$9;-><init>(Lcom/htc/socialnetwork/account/BaseLoginActivity;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/htc/socialnetwork/account/BaseLoginActivity$8;

    invoke-direct {v4, p0}, Lcom/htc/socialnetwork/account/BaseLoginActivity$8;-><init>(Lcom/htc/socialnetwork/account/BaseLoginActivity;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    goto/16 :goto_0

    .line 499
    :pswitch_3
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x20c0159

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x20c015a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/htc/socialnetwork/account/BaseLoginActivity$10;

    invoke-direct {v4, p0}, Lcom/htc/socialnetwork/account/BaseLoginActivity$10;-><init>(Lcom/htc/socialnetwork/account/BaseLoginActivity;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    goto/16 :goto_0

    .line 512
    :pswitch_4
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x20c015b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x20c015c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/htc/socialnetwork/account/BaseLoginActivity$11;

    invoke-direct {v4, p0}, Lcom/htc/socialnetwork/account/BaseLoginActivity$11;-><init>(Lcom/htc/socialnetwork/account/BaseLoginActivity;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    goto/16 :goto_0

    .line 525
    :pswitch_5
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x20c0166

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x20c0165

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/htc/socialnetwork/account/BaseLoginActivity$12;

    invoke-direct {v4, p0}, Lcom/htc/socialnetwork/account/BaseLoginActivity$12;-><init>(Lcom/htc/socialnetwork/account/BaseLoginActivity;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    goto/16 :goto_0

    .line 539
    :pswitch_6
    new-instance v2, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v2, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 540
    iget-object v2, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const v3, 0x20c0157

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 541
    iget-object v2, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const v3, 0x108009b

    invoke-virtual {v2, v3}, Lcom/htc/app/HtcProgressDialog;->setIcon(I)V

    .line 542
    iget-object v2, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    new-instance v3, Lcom/htc/socialnetwork/account/BaseLoginActivity$13;

    invoke-direct {v3, p0}, Lcom/htc/socialnetwork/account/BaseLoginActivity$13;-><init>(Lcom/htc/socialnetwork/account/BaseLoginActivity;)V

    invoke-virtual {v2, v3}, Lcom/htc/app/HtcProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 552
    iget-object v2, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    goto/16 :goto_0

    .line 554
    :pswitch_7
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x20c015e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/htc/socialnetwork/account/BaseLoginActivity$16;

    invoke-direct {v4, p0}, Lcom/htc/socialnetwork/account/BaseLoginActivity$16;-><init>(Lcom/htc/socialnetwork/account/BaseLoginActivity;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/htc/socialnetwork/account/BaseLoginActivity$15;

    invoke-direct {v4, p0}, Lcom/htc/socialnetwork/account/BaseLoginActivity$15;-><init>(Lcom/htc/socialnetwork/account/BaseLoginActivity;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/htc/socialnetwork/account/BaseLoginActivity$14;

    invoke-direct {v3, p0}, Lcom/htc/socialnetwork/account/BaseLoginActivity$14;-><init>(Lcom/htc/socialnetwork/account/BaseLoginActivity;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    goto/16 :goto_0

    .line 584
    :pswitch_8
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x20c0158

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/htc/socialnetwork/account/BaseLoginActivity$18;

    invoke-direct {v4, p0}, Lcom/htc/socialnetwork/account/BaseLoginActivity$18;-><init>(Lcom/htc/socialnetwork/account/BaseLoginActivity;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/htc/socialnetwork/account/BaseLoginActivity$17;

    invoke-direct {v4, p0}, Lcom/htc/socialnetwork/account/BaseLoginActivity$17;-><init>(Lcom/htc/socialnetwork/account/BaseLoginActivity;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    goto/16 :goto_0

    .line 446
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_6
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 955
    invoke-virtual {p0}, Lcom/htc/socialnetwork/account/BaseLoginActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->loginSuccess:Z

    if-nez v1, :cond_0

    .line 956
    invoke-virtual {p0}, Lcom/htc/socialnetwork/account/BaseLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "accountAuthenticatorResponse"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountAuthenticatorResponse;

    .line 958
    .local v0, callback:Landroid/accounts/AccountAuthenticatorResponse;
    if-nez v0, :cond_1

    .line 959
    const-string v1, "BaseLoginActivity"

    const-string v2, "No callback IBinder"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    .end local v0           #callback:Landroid/accounts/AccountAuthenticatorResponse;
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 965
    return-void

    .line 961
    .restart local v0       #callback:Landroid/accounts/AccountAuthenticatorResponse;
    :cond_1
    const/16 v1, 0x190

    const-string v2, "User canceled"

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 119
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 120
    iget-boolean v0, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->isLogin:Z

    if-nez v0, :cond_1

    .line 121
    invoke-virtual {p0}, Lcom/htc/socialnetwork/account/BaseLoginActivity;->setLoginUI()V

    .line 122
    invoke-static {p0}, Lcom/htc/socialnetwork/account/BaseLoginActivity;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    const/16 v0, 0x6b

    invoke-virtual {p0, v0}, Lcom/htc/socialnetwork/account/BaseLoginActivity;->showDialog(I)V

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    invoke-virtual {p0}, Lcom/htc/socialnetwork/account/BaseLoginActivity;->setLogoutUI()V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 622
    iget-object v0, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->loginExecutor:Lcom/htc/socialnetwork/account/BaseLoginActivity$LoginFuture;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/socialnetwork/account/BaseLoginActivity$LoginFuture;->stop(Z)Z

    .line 623
    iget-object v0, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->loginExecutor:Lcom/htc/socialnetwork/account/BaseLoginActivity$LoginFuture;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/htc/socialnetwork/account/BaseLoginActivity$LoginFuture;->currentTask:Ljava/util/concurrent/FutureTask;

    .line 624
    iget-object v0, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_0

    .line 625
    iget-object v0, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 627
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 628
    return-void
.end method

.method public setAuthenticateData(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .parameter "username"
    .parameter "password"

    .prologue
    .line 304
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 305
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "com.htc.socialnetwork.account.USERNAME"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const-string v1, "com.htc.socialnetwork.account.PASSWORD"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    return-object v0
.end method

.method public setCurrentRunnable(Lcom/htc/socialnetwork/account/BaseLoginActivity$TaskCallable;)V
    .locals 1
    .parameter "run"

    .prologue
    .line 633
    iget-object v0, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->loginExecutor:Lcom/htc/socialnetwork/account/BaseLoginActivity$LoginFuture;

    iput-object p1, v0, Lcom/htc/socialnetwork/account/BaseLoginActivity$LoginFuture;->currentRunnable:Lcom/htc/socialnetwork/account/BaseLoginActivity$TaskCallable;

    .line 634
    return-void
.end method

.method public setData(Landroid/os/Bundle;)V
    .locals 0
    .parameter "d"

    .prologue
    .line 174
    iput-object p1, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->data:Landroid/os/Bundle;

    .line 175
    return-void
.end method

.method public setLoginUI()V
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->mLoginButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->mLoginButton:Landroid/widget/Button;

    const v1, 0x20c014e

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->mSSLCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_1

    .line 291
    invoke-virtual {p0}, Lcom/htc/socialnetwork/account/BaseLoginActivity;->showSSLOption()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 292
    iget-object v0, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->mSSLCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 297
    :cond_1
    :goto_0
    return-void

    .line 294
    :cond_2
    iget-object v0, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->mSSLCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0
.end method

.method public setLogoutUI()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 266
    iget-object v0, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->mLoginButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->mLoginButton:Landroid/widget/Button;

    const v1, 0x20c014f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->mUserInput:Landroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_1

    .line 269
    iget-object v0, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->mUserInput:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->loginUserName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    iget-object v0, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->mUserInput:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setFocusable(Z)V

    .line 271
    iget-object v0, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->mUserInput:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setEnabled(Z)V

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->mPasswordInput:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    .line 274
    iget-object v0, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->mPasswordInput:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->loginUserPasswd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 275
    iget-object v0, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->mPasswordInput:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 276
    iget-object v0, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->mPasswordInput:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 278
    :cond_2
    iget-object v0, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->mShowPassword:Landroid/widget/CheckBox;

    if-eqz v0, :cond_3

    .line 279
    iget-object v0, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->mShowPassword:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 281
    :cond_3
    iget-object v0, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->mSSLCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_4

    .line 282
    iget-object v0, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->mSSLCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 284
    :cond_4
    return-void
.end method

.method public setStorePassword(Z)V
    .locals 0
    .parameter "store"

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->storePassword:Z

    .line 115
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 3
    .parameter "title"

    .prologue
    .line 427
    const v2, 0x2020053

    invoke-virtual {p0, v2}, Lcom/htc/socialnetwork/account/BaseLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 428
    .local v0, titleText:Landroid/widget/TextView;
    const v2, 0x2020054

    invoke-virtual {p0, v2}, Lcom/htc/socialnetwork/account/BaseLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 429
    .local v1, title_shadowText:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 430
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 435
    :goto_0
    return-void

    .line 433
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public showSSLOption()Z
    .locals 1

    .prologue
    .line 258
    const/4 v0, 0x0

    return v0
.end method

.method public startTask()V
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->loginExecutor:Lcom/htc/socialnetwork/account/BaseLoginActivity$LoginFuture;

    invoke-virtual {v0}, Lcom/htc/socialnetwork/account/BaseLoginActivity$LoginFuture;->doWork()V

    .line 312
    return-void
.end method

.method public visibleInContact()Z
    .locals 1

    .prologue
    .line 244
    const/4 v0, 0x0

    return v0
.end method

.method protected writeAccount(Ljava/lang/String;)V
    .locals 10
    .parameter "account"

    .prologue
    .line 869
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_account"

    aput-object v1, v2, v0

    .line 871
    .local v2, projection:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_account=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 872
    .local v3, where:Ljava/lang/String;
    const/4 v7, 0x0

    .line 874
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/htc/socialnetwork/account/BaseLoginActivity;->account_uri:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/socialnetwork/account/BaseLoginActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 878
    const/4 v6, 0x0

    .line 879
    .local v6, accountExist:Z
    if-eqz v7, :cond_0

    .line 880
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 881
    const/4 v6, 0x1

    .line 885
    :cond_0
    if-nez v6, :cond_1

    .line 886
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 887
    .local v9, values:Landroid/content/ContentValues;
    const-string v0, "_account"

    invoke-virtual {v9, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    invoke-virtual {p0}, Lcom/htc/socialnetwork/account/BaseLoginActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/socialnetwork/account/BaseLoginActivity;->account_uri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 898
    .end local v9           #values:Landroid/content/ContentValues;
    :cond_1
    if-eqz v7, :cond_2

    .line 899
    .end local v6           #accountExist:Z
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 901
    :cond_2
    return-void

    .line 891
    :catch_0
    move-exception v8

    .line 892
    .local v8, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_1
    const-string v0, "BaseLoginActivity"

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    if-eqz v7, :cond_2

    goto :goto_0

    .line 893
    .end local v8           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v8

    .line 894
    .local v8, e:Landroid/database/sqlite/SQLiteException;
    const-string v0, "BaseLoginActivity"

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    if-eqz v7, :cond_2

    goto :goto_0

    .line 895
    .end local v8           #e:Landroid/database/sqlite/SQLiteException;
    :catch_2
    move-exception v8

    .line 896
    .local v8, e:Ljava/lang/IllegalArgumentException;
    const-string v0, "BaseLoginActivity"

    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 898
    if-eqz v7, :cond_2

    goto :goto_0

    .end local v8           #e:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 899
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 898
    :cond_3
    throw v0
.end method

.method protected writeShowPassword(I)V
    .locals 11
    .parameter "showPassword"

    .prologue
    .line 904
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "show_password"

    aput-object v1, v2, v0

    .line 905
    .local v2, projection:[Ljava/lang/String;
    const-string v10, "show_password"

    .line 907
    .local v10, where:Ljava/lang/String;
    const/4 v6, 0x0

    .line 909
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/htc/socialnetwork/account/BaseLoginActivity;->password_uri:Landroid/net/Uri;

    const-string v3, "show_password"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/socialnetwork/account/BaseLoginActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 913
    const/4 v8, 0x0

    .line 914
    .local v8, isSet:Z
    if-eqz v6, :cond_0

    .line 915
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 916
    const/4 v8, 0x1

    .line 920
    :cond_0
    if-nez v8, :cond_2

    .line 921
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 922
    .local v9, values:Landroid/content/ContentValues;
    const-string v0, "show_password"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 923
    invoke-virtual {p0}, Lcom/htc/socialnetwork/account/BaseLoginActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/socialnetwork/account/BaseLoginActivity;->password_uri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 938
    :goto_0
    if-eqz v6, :cond_1

    .line 939
    .end local v8           #isSet:Z
    .end local v9           #values:Landroid/content/ContentValues;
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 941
    :cond_1
    return-void

    .line 927
    .restart local v8       #isSet:Z
    :cond_2
    :try_start_1
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 928
    .restart local v9       #values:Landroid/content/ContentValues;
    const-string v0, "show_password"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 929
    invoke-virtual {p0}, Lcom/htc/socialnetwork/account/BaseLoginActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/socialnetwork/account/BaseLoginActivity;->password_uri:Landroid/net/Uri;

    const-string v3, "show_password"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v9, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 931
    .end local v8           #isSet:Z
    .end local v9           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v7

    .line 932
    .local v7, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_2
    const-string v0, "BaseLoginActivity"

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    if-eqz v6, :cond_1

    goto :goto_1

    .line 933
    .end local v7           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v7

    .line 934
    .local v7, e:Landroid/database/sqlite/SQLiteException;
    const-string v0, "BaseLoginActivity"

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    if-eqz v6, :cond_1

    goto :goto_1

    .line 935
    .end local v7           #e:Landroid/database/sqlite/SQLiteException;
    :catch_2
    move-exception v7

    .line 936
    .local v7, e:Ljava/lang/IllegalArgumentException;
    const-string v0, "BaseLoginActivity"

    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 938
    if-eqz v6, :cond_1

    goto :goto_1

    .end local v7           #e:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 939
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 938
    :cond_3
    throw v0
.end method
