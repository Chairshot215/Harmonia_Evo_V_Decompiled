.class Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;
.super Landroid/accounts/AbstractAccountAuthenticator;
.source "GoogleLoginService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/loginservice/GoogleLoginService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccountAuthenticatorImpl"
.end annotation


# instance fields
.field private final mAccountManager:Landroid/accounts/AccountManager;

.field private final mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/google/android/gsf/loginservice/GoogleLoginService;


# direct methods
.method public constructor <init>(Lcom/google/android/gsf/loginservice/GoogleLoginService;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 252
    iput-object p1, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->this$0:Lcom/google/android/gsf/loginservice/GoogleLoginService;

    .line 253
    invoke-direct {p0, p2}, Landroid/accounts/AbstractAccountAuthenticator;-><init>(Landroid/content/Context;)V

    .line 254
    iput-object p2, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->mContext:Landroid/content/Context;

    .line 255
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->mAccountManager:Landroid/accounts/AccountManager;

    .line 256
    return-void
.end method


# virtual methods
.method public addAccount(Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 395
    if-nez p5, :cond_0

    .line 396
    new-instance p5, Landroid/os/Bundle;

    invoke-direct {p5}, Landroid/os/Bundle;-><init>()V

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gsf/loginservice/GLSUser;->getGLSContext(Landroid/content/Context;)Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->newSession()Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    move-result-object v1

    .line 399
    const-string v0, "callerUid"

    invoke-virtual {p5, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 400
    iput v0, v1, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mCallingUID:I

    .line 401
    iput-object p1, v1, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mAccountAuthenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;

    .line 402
    if-eqz p5, :cond_1

    .line 403
    iput-object p5, v1, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mAccountManagerOptions:Landroid/os/Bundle;

    .line 406
    :cond_1
    const-string v0, "password"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 407
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 409
    const-string v0, "code:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 410
    const/4 v0, 0x5

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 411
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->mContext:Landroid/content/Context;

    invoke-static {v0, v6}, Lcom/google/android/gsf/loginservice/GLSUser;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gsf/loginservice/GLSUser;

    move-result-object v0

    .line 412
    const-string v2, "useBrowser"

    invoke-virtual {p5, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "created"

    invoke-virtual {p5, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v6, "setupWizard"

    invoke-virtual {p5, v6, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gsf/loginservice/GLSUser;->addAccount(Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;ZZZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 439
    :goto_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 440
    const-string v2, "authtoken"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 442
    const-string v2, "authAccount"

    const-string v3, "authAccount"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    const-string v0, "accountType"

    const-string v2, "com.google"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move-object v0, v1

    .line 482
    :goto_2
    return-object v0

    .line 419
    :cond_2
    const-string v0, "username"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 420
    iget-object v3, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/google/android/gsf/loginservice/GLSUser;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gsf/loginservice/GLSUser;

    move-result-object v0

    .line 421
    iget-boolean v3, v0, Lcom/google/android/gsf/loginservice/GLSUser;->existing:Z

    if-eqz v3, :cond_3

    move-object v0, v6

    .line 423
    goto :goto_2

    .line 425
    :cond_3
    const-string v3, "oauth1:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 426
    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 427
    invoke-virtual {v0, v2}, Lcom/google/android/gsf/loginservice/GLSUser;->setToken(Ljava/lang/String;)V

    .line 433
    :goto_3
    const-string v2, "useBrowser"

    invoke-virtual {p5, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "created"

    invoke-virtual {p5, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v5, "setupWizard"

    invoke-virtual {p5, v5, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gsf/loginservice/GLSUser;->addAccount(Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;ZZZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 430
    :cond_4
    invoke-virtual {v0, v2}, Lcom/google/android/gsf/loginservice/GLSUser;->setPassword(Ljava/lang/String;)V

    goto :goto_3

    .line 447
    :cond_5
    const-string v0, "errorCode"

    const/16 v2, 0x8

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 455
    :cond_6
    if-eqz p4, :cond_b

    .line 456
    array-length v3, p4

    move v2, v4

    move v0, v4

    :goto_4
    if-ge v2, v3, :cond_b

    aget-object v5, p4, v2

    .line 457
    const-string v6, "hosted_or_google"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 458
    or-int/lit8 v0, v0, 0x1

    .line 459
    or-int/lit8 v0, v0, 0x2

    .line 456
    :cond_7
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 460
    :cond_8
    const-string v6, "google"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 461
    or-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 462
    :cond_9
    const-string v6, "youtubelinked"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 463
    or-int/lit8 v0, v0, 0x4

    goto :goto_5

    .line 464
    :cond_a
    const-string v6, "saml"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 465
    or-int/lit8 v0, v0, 0x8

    goto :goto_5

    .line 470
    :cond_b
    new-instance v2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->mContext:Landroid/content/Context;

    const-class v3, Lcom/google/android/gsf/login/AccountIntroActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 471
    const-string v0, "isTop"

    invoke-virtual {v2, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 472
    const-string v0, "addAccount"

    invoke-virtual {v2, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 473
    invoke-virtual {v1, v2}, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->addSession(Landroid/content/Intent;)V

    .line 475
    const/high16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 478
    const-string v0, "firstRun"

    const-string v1, "firstRun"

    invoke-virtual {p5, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 480
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 481
    const-string v1, "intent"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto/16 :goto_2
.end method

.method public confirmCredentials(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 12
    .parameter "response"
    .parameter "account"
    .parameter "options"

    .prologue
    const/4 v11, 0x1

    const/4 v3, 0x0

    .line 361
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->this$0:Lcom/google/android/gsf/loginservice/GoogleLoginService;

    iget-object v2, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gsf/loginservice/GLSUser;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gsf/loginservice/GLSUser;

    move-result-object v0

    .line 362
    .local v0, glsAccount:Lcom/google/android/gsf/loginservice/GLSUser;
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gsf/loginservice/GLSUser;->getGLSContext(Landroid/content/Context;)Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->newSession()Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    move-result-object v5

    .line 363
    .local v5, session:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;
    iput-object p1, v5, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mAccountAuthenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;

    .line 364
    if-eqz p3, :cond_0

    .line 365
    iput-object p3, v5, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mAccountManagerOptions:Landroid/os/Bundle;

    .line 368
    :cond_0
    if-eqz p3, :cond_2

    const-string v1, "password"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 369
    const-string v1, "password"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 374
    .local v9, password:Ljava/lang/String;
    sget-object v1, Lcom/google/android/gsf/loginservice/GLSUser$Status;->SUCCESS:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    iget-object v2, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->mContext:Landroid/content/Context;

    iget-object v4, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v2, v4, v9, v5}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->onlineConfirmPassword(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;)Lcom/google/android/gsf/loginservice/GLSUser$Status;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 377
    .local v11, verified:Z
    :goto_0
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 378
    .local v10, result:Landroid/os/Bundle;
    const-string v1, "booleanResult"

    invoke-virtual {v10, v1, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 387
    .end local v9           #password:Ljava/lang/String;
    .end local v10           #result:Landroid/os/Bundle;
    .end local v11           #verified:Z
    :goto_1
    return-object v10

    .restart local v9       #password:Ljava/lang/String;
    :cond_1
    move v11, v3

    .line 374
    goto :goto_0

    .line 382
    .end local v9           #password:Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$Status;->BAD_AUTHENTICATION:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    const-string v4, "SID"

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gsf/loginservice/GLSUser;->errorIntent(Ljava/util/Map;Lcom/google/android/gsf/loginservice/GLSUser$Status;ILjava/lang/String;Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v8

    .line 384
    .local v8, intent:Landroid/content/Intent;
    const-string v1, "confirmCredentials"

    invoke-virtual {v8, v1, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 385
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 386
    .local v7, bundle:Landroid/os/Bundle;
    const-string v1, "intent"

    invoke-virtual {v7, v1, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    move-object v10, v7

    .line 387
    goto :goto_1
.end method

.method public editProperties(Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .parameter "response"
    .parameter "accountType"

    .prologue
    .line 354
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getAuthToken(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 11
    .parameter "accountAuthResponse"
    .parameter "account"
    .parameter "authTokenType"
    .parameter "loginOptions"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation

    .prologue
    .line 281
    if-nez p4, :cond_0

    .line 282
    new-instance p4, Landroid/os/Bundle;

    .end local p4
    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    .line 284
    .restart local p4
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 285
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "the mService is empty: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 290
    :cond_1
    const-string v8, "callerUid"

    invoke-virtual {p4, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 291
    .local v1, callerUid:I
    iget-object v8, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/google/android/gsf/loginservice/GLSUser;->getGLSContext(Landroid/content/Context;)Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->newSession()Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    move-result-object v5

    .line 292
    .local v5, session:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;
    iput-object p1, v5, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mAccountAuthenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;

    .line 293
    iput v1, v5, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mCallingUID:I

    .line 294
    if-eqz p4, :cond_2

    .line 295
    iput-object p4, v5, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mAccountManagerOptions:Landroid/os/Bundle;

    .line 297
    :cond_2
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0xa

    if-le v8, v9, :cond_3

    .line 300
    iput v1, v5, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mCallingUID:I

    .line 303
    :cond_3
    iget-object v8, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->this$0:Lcom/google/android/gsf/loginservice/GoogleLoginService;

    iget-object v9, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/google/android/gsf/loginservice/GLSUser;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gsf/loginservice/GLSUser;

    move-result-object v2

    .line 305
    .local v2, glsAccount:Lcom/google/android/gsf/loginservice/GLSUser;
    invoke-virtual {v2, p3, v1, v5}, Lcom/google/android/gsf/loginservice/GLSUser;->getAuthtoken(Ljava/lang/String;ILcom/google/android/gsf/loginservice/GLSUser$GLSSession;)Landroid/content/Intent;

    move-result-object v4

    .line 309
    .local v4, res:Landroid/content/Intent;
    invoke-virtual {v2, v4}, Lcom/google/android/gsf/loginservice/GLSUser;->getToken(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v7

    .line 310
    .local v7, token:Ljava/lang/String;
    if-eqz v7, :cond_4

    .line 311
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 340
    :goto_0
    return-object v0

    .line 314
    :cond_4
    iget-object v8, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->mContext:Landroid/content/Context;

    invoke-static {v8, v4}, Lcom/google/android/gsf/loginservice/GLSUser$Status;->fromIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/google/android/gsf/loginservice/GLSUser$Status;

    move-result-object v6

    .line 315
    .local v6, status:Lcom/google/android/gsf/loginservice/GLSUser$Status;
    sget-object v8, Lcom/google/android/gsf/loginservice/GLSUser$Status;->NETWORK_ERROR:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    if-eq v8, v6, :cond_5

    sget-object v8, Lcom/google/android/gsf/loginservice/GLSUser$Status;->SERVICE_UNAVAILABLE:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    if-ne v8, v6, :cond_6

    .line 318
    :cond_5
    new-instance v8, Landroid/accounts/NetworkErrorException;

    invoke-direct {v8}, Landroid/accounts/NetworkErrorException;-><init>()V

    throw v8

    .line 321
    :cond_6
    const-string v8, "GoogleLoginService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Returning error intent with: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const-string v8, "notifyOnAuthFailure"

    const/4 v9, 0x0

    invoke-virtual {p4, v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 324
    .local v3, notifyOnAuthFailure:Z
    if-eqz v3, :cond_7

    .line 325
    sget-object v8, Lcom/google/android/gsf/loginservice/GLSUser$Status;->NEED_PERMISSION:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    if-ne v8, v6, :cond_8

    .line 326
    iget-object v8, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->this$0:Lcom/google/android/gsf/loginservice/GoogleLoginService;

    iget-object v9, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->this$0:Lcom/google/android/gsf/loginservice/GoogleLoginService;

    const v10, 0x7f080107

    invoke-virtual {v9, v10}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    iget-object v10, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    #calls: Lcom/google/android/gsf/loginservice/GoogleLoginService;->doPermissionNotification(Ljava/lang/CharSequence;Landroid/content/Intent;Ljava/lang/String;I)V
    invoke-static {v8, v9, v4, v10, v1}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->access$100(Lcom/google/android/gsf/loginservice/GoogleLoginService;Ljava/lang/CharSequence;Landroid/content/Intent;Ljava/lang/String;I)V

    .line 335
    :cond_7
    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 336
    .local v0, bundle:Landroid/os/Bundle;
    const-string v8, "isTop"

    const/4 v9, 0x1

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 338
    const/high16 v8, 0x1000

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 339
    const-string v8, "intent"

    invoke-virtual {v0, v8, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 330
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_8
    iget-object v8, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->this$0:Lcom/google/android/gsf/loginservice/GoogleLoginService;

    iget-object v9, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->this$0:Lcom/google/android/gsf/loginservice/GoogleLoginService;

    const v10, 0x7f080107

    invoke-virtual {v9, v10}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    iget-object v10, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    #calls: Lcom/google/android/gsf/loginservice/GoogleLoginService;->doSignOnNotification(Ljava/lang/CharSequence;Landroid/content/Intent;Ljava/lang/String;)V
    invoke-static {v8, v9, v4, v10}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->access$200(Lcom/google/android/gsf/loginservice/GoogleLoginService;Ljava/lang/CharSequence;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getAuthTokenLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "authTokenType"

    .prologue
    .line 345
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->getAuthTokenLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 346
    .local v0, label:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 349
    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    move-object p1, v0

    goto :goto_0
.end method

.method public hasFeatures(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;[Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .parameter "response"
    .parameter "account"
    .parameter "features"

    .prologue
    .line 262
    iget-object v2, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->this$0:Lcom/google/android/gsf/loginservice/GoogleLoginService;

    iget-object v3, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->mAccountManager:Landroid/accounts/AccountManager;

    #calls: Lcom/google/android/gsf/loginservice/GoogleLoginService;->accountHasFeatures(Landroid/accounts/AccountManager;Landroid/accounts/Account;[Ljava/lang/String;)Z
    invoke-static {v2, v3, p2, p3}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->access$000(Lcom/google/android/gsf/loginservice/GoogleLoginService;Landroid/accounts/AccountManager;Landroid/accounts/Account;[Ljava/lang/String;)Z

    move-result v0

    .line 264
    .local v0, hasFeatures:Z
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 265
    .local v1, result:Landroid/os/Bundle;
    const-string v2, "booleanResult"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 266
    return-object v1
.end method

.method public updateCredentials(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 10
    .parameter "response"
    .parameter "account"
    .parameter "authTokenType"
    .parameter "loginOptions"

    .prologue
    const/4 v9, 0x1

    .line 488
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->this$0:Lcom/google/android/gsf/loginservice/GoogleLoginService;

    iget-object v2, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gsf/loginservice/GLSUser;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gsf/loginservice/GLSUser;

    move-result-object v0

    .line 490
    .local v0, glsAccount:Lcom/google/android/gsf/loginservice/GLSUser;
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gsf/loginservice/GLSUser;->getGLSContext(Landroid/content/Context;)Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->newSession()Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    move-result-object v5

    .line 491
    .local v5, session:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;
    iput-object p1, v5, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mAccountAuthenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;

    .line 492
    if-eqz p4, :cond_0

    .line 493
    iput-object p4, v5, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mAccountManagerOptions:Landroid/os/Bundle;

    .line 496
    :cond_0
    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$Status;->BAD_AUTHENTICATION:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    const/4 v3, 0x0

    const-string v4, "SID"

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gsf/loginservice/GLSUser;->errorIntent(Ljava/util/Map;Lcom/google/android/gsf/loginservice/GLSUser$Status;ILjava/lang/String;Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v8

    .line 498
    .local v8, intent:Landroid/content/Intent;
    const-string v1, "updateCredentials"

    invoke-virtual {v8, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 500
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 501
    .local v7, bundle:Landroid/os/Bundle;
    const-string v1, "intent"

    invoke-virtual {v7, v1, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 502
    const-string v1, "isTop"

    invoke-virtual {v8, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 503
    return-object v7
.end method
