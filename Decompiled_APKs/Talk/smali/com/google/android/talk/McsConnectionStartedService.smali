.class public Lcom/google/android/talk/McsConnectionStartedService;
.super Landroid/app/IntentService;
.source "McsConnectionStartedService.java"

# interfaces
.implements Lcom/google/android/talk/AccountLoginUtils$ConnectionCreatedListener;


# static fields
.field private static final ACCOUNT_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mAccountManager:Landroid/accounts/AccountManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "username"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "last_login_state"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/talk/McsConnectionStartedService;->ACCOUNT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/google/android/talk/McsConnectionStartedService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 42
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/talk/McsConnectionStartedService;->setIntentRedelivery(Z)V

    .line 43
    return-void
.end method

.method private isValidAccount(Ljava/lang/String;)Z
    .locals 7
    .parameter "username"

    .prologue
    .line 102
    iget-object v5, p0, Lcom/google/android/talk/McsConnectionStartedService;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v6, "com.google"

    invoke-virtual {v5, v6}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 104
    .local v1, accounts:[Landroid/accounts/Account;
    move-object v2, v1

    .local v2, arr$:[Landroid/accounts/Account;
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v2, v3

    .line 105
    .local v0, account:Landroid/accounts/Account;
    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 106
    const/4 v5, 0x1

    .line 109
    .end local v0           #account:Landroid/accounts/Account;
    :goto_1
    return v5

    .line 104
    .restart local v0       #account:Landroid/accounts/Account;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 109
    .end local v0           #account:Landroid/accounts/Account;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private onMcsConnectionStarted()V
    .locals 14

    .prologue
    const/4 v4, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 56
    const-string v0, "talk"

    const-string v1, "onMcsConnectionStarted"

    invoke-static {v0, v1}, Lcom/google/android/talk/TalkApp;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/McsConnectionStartedService;->mAccountManager:Landroid/accounts/AccountManager;

    .line 58
    invoke-virtual {p0}, Lcom/google/android/talk/McsConnectionStartedService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/TalkApp;

    invoke-virtual {v0}, Lcom/google/android/talk/TalkApp;->getGTalkService()Lcom/google/android/gtalkservice/IGTalkService;

    move-result-object v10

    .line 59
    .local v10, service:Lcom/google/android/gtalkservice/IGTalkService;
    if-nez v10, :cond_0

    .line 60
    const-string v0, "talk"

    const-string v1, "onMcsConnectionStarted: GTalkService is null"

    invoke-static {v0, v1}, Lcom/google/android/talk/TalkApp;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :goto_0
    return-void

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/talk/McsConnectionStartedService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/gsf/TalkContract$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/talk/McsConnectionStartedService;->ACCOUNT_PROJECTION:[Ljava/lang/String;

    const-string v3, "last_login_state=1"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 71
    .local v7, c:Landroid/database/Cursor;
    if-nez v7, :cond_1

    .line 72
    const-string v0, "talk"

    const-string v1, "onMcsConnectionStarted: empty cursor"

    invoke-static {v0, v1}, Lcom/google/android/talk/TalkApp;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_1
    :goto_1
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 77
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 78
    .local v11, username:Ljava/lang/String;
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 79
    .local v6, accountId:I
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_2

    move v9, v12

    .line 80
    .local v9, lastLoggedIn:Z
    :goto_2
    const-string v0, "talk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMcsConnectionStarted: login for accountId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " username: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " lastLoggedIn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/talk/TalkApp;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    if-eqz v9, :cond_1

    invoke-direct {p0, v11}, Lcom/google/android/talk/McsConnectionStartedService;->isValidAccount(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    invoke-static {v11, v10, p0}, Lcom/google/android/talk/AccountLoginUtils;->signIn(Ljava/lang/String;Lcom/google/android/gtalkservice/IGTalkService;Lcom/google/android/talk/AccountLoginUtils$ConnectionCreatedListener;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 88
    .end local v6           #accountId:I
    .end local v9           #lastLoggedIn:Z
    .end local v11           #username:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 89
    .local v8, ex:Landroid/database/SQLException;
    :try_start_1
    const-string v0, "talk"

    const-string v1, "onMcsConnectionStarted caught "

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v8           #ex:Landroid/database/SQLException;
    .restart local v6       #accountId:I
    .restart local v11       #username:Ljava/lang/String;
    :cond_2
    move v9, v13

    .line 79
    goto :goto_2

    .line 91
    .end local v6           #accountId:I
    .end local v11           #username:Ljava/lang/String;
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method public connectionCreated(Ljava/lang/String;Lcom/google/android/gtalkservice/IImSession;)V
    .locals 3
    .parameter "username"
    .parameter "imSession"

    .prologue
    .line 114
    invoke-static {}, Lcom/google/android/talk/TalkApp;->verboseLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    const-string v0, "talk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectionCreated "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/talk/McsConnectionStartedService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/TalkApp;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/talk/TalkApp;->setImSessionAvailable(Ljava/lang/String;Lcom/google/android/gtalkservice/IImSession;)V

    .line 118
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/google/android/talk/McsConnectionStartedService;->onMcsConnectionStarted()V

    .line 50
    return-void
.end method
