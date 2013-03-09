.class public Lcom/google/appinventor/components/runtime/util/AccountChooser;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/util/AccountChooser$SelectAccount;
    }
.end annotation


# static fields
.field private static final ACCOUNT_PREFERENCE:Ljava/lang/String; = "account"

.field private static final ACCOUNT_TYPE:Ljava/lang/String; = "com.google"

.field private static final LOG_TAG:Ljava/lang/String; = "AccountChooser"

.field private static final NO_ACCOUNT:Ljava/lang/String; = ""


# instance fields
.field private accountManager:Landroid/accounts/AccountManager;

.field private activity:Landroid/app/Activity;

.field private chooseAccountPrompt:Ljava/lang/String;

.field private preferencesKey:Ljava/lang/String;

.field private service:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/AccountChooser;->activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/AccountChooser;->service:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/util/AccountChooser;->chooseAccountPrompt:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/util/AccountChooser;->preferencesKey:Ljava/lang/String;

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/AccountChooser;->accountManager:Landroid/accounts/AccountManager;

    return-void
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/util/AccountChooser;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/AccountChooser;->chooseAccountPrompt:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/util/AccountChooser;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/AccountChooser;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method private chooseAccount(Ljava/lang/String;[Landroid/accounts/Account;)Landroid/accounts/Account;
    .locals 4

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    iget-object v3, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, "AccountChooser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chose account: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private createAccount()Ljava/lang/String;
    .locals 8

    const/4 v3, 0x0

    const-string v0, "AccountChooser"

    const-string v1, "Adding auth token account ..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/AccountChooser;->accountManager:Landroid/accounts/AccountManager;

    const-string v1, "com.google"

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/AccountChooser;->service:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/AccountChooser;->activity:Landroid/app/Activity;

    move-object v4, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    const-string v0, "authAccount"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AccountChooser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "created: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/accounts/OperationCanceledException;->printStackTrace()V

    :goto_1
    move-object v0, v3

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/accounts/AuthenticatorException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private getPersistedAccountName()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/AccountChooser;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "account"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPreferences()Landroid/content/SharedPreferences;
    .locals 3

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/AccountChooser;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/AccountChooser;->preferencesKey:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private persistAccountName(Ljava/lang/String;)V
    .locals 3

    const-string v0, "AccountChooser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "persisting account: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/AccountChooser;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "account"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private selectAccount([Landroid/accounts/Account;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v0}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v1, Lcom/google/appinventor/components/runtime/util/AccountChooser$SelectAccount;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/appinventor/components/runtime/util/AccountChooser$SelectAccount;-><init>(Lcom/google/appinventor/components/runtime/util/AccountChooser;[Landroid/accounts/Account;Ljava/util/concurrent/SynchronousQueue;)V

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/AccountChooser$SelectAccount;->start()V

    const-string v1, "AccountChooser"

    const-string v2, "Select: waiting for user..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/SynchronousQueue;->take()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    :goto_0
    const-string v1, "AccountChooser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Selected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ""

    if-ne v0, v1, :cond_0

    move-object v0, v4

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    move-object v0, v4

    goto :goto_0
.end method


# virtual methods
.method public findAccount()Landroid/accounts/Account;
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/AccountChooser;->accountManager:Landroid/accounts/AccountManager;

    const-string v1, "com.google"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    aget-object v1, v0, v3

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/util/AccountChooser;->persistAccountName(Ljava/lang/String;)V

    aget-object v0, v0, v3

    :goto_0
    return-object v0

    :cond_0
    array-length v1, v0

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/AccountChooser;->createAccount()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/AccountChooser;->persistAccountName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/AccountChooser;->accountManager:Landroid/accounts/AccountManager;

    const-string v1, "com.google"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    aget-object v0, v0, v3

    goto :goto_0

    :cond_1
    const-string v0, "AccountChooser"

    const-string v1, "User failed to create a valid account"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v4

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/AccountChooser;->getPersistedAccountName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v1, v0}, Lcom/google/appinventor/components/runtime/util/AccountChooser;->chooseAccount(Ljava/lang/String;[Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object v1

    if-eqz v1, :cond_3

    move-object v0, v1

    goto :goto_0

    :cond_3
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/AccountChooser;->selectAccount([Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/util/AccountChooser;->persistAccountName(Ljava/lang/String;)V

    invoke-direct {p0, v1, v0}, Lcom/google/appinventor/components/runtime/util/AccountChooser;->chooseAccount(Ljava/lang/String;[Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-string v0, "AccountChooser"

    const-string v1, "User failed to choose an account"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v4

    goto :goto_0
.end method

.method public forgetAccountName()V
    .locals 2

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/AccountChooser;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "account"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
