.class public Lcom/google/android/gsf/login/LoginActivity;
.super Lcom/google/android/gsf/login/AddAccountActivity;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/login/LoginActivity$1;
    }
.end annotation


# instance fields
.field private final mPreExistingAccounts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/android/gsf/login/AddAccountActivity;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/login/LoginActivity;->mPreExistingAccounts:Ljava/util/Set;

    return-void
.end method

.method private removeAnyNewAccounts()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 302
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 303
    .local v1, accountManager:Landroid/accounts/AccountManager;
    const-string v6, "com.google"

    invoke-virtual {v1, v6}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 304
    .local v2, accounts:[Landroid/accounts/Account;
    move-object v3, v2

    .local v3, arr$:[Landroid/accounts/Account;
    array-length v5, v3

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v0, v3, v4

    .line 305
    .local v0, account:Landroid/accounts/Account;
    iget-object v6, p0, Lcom/google/android/gsf/login/LoginActivity;->mPreExistingAccounts:Ljava/util/Set;

    iget-object v7, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 306
    const-string v6, "GLSActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LoginActivity: removing pre-existing account: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-virtual {v1, v0, v9, v9}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 304
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 310
    .end local v0           #account:Landroid/accounts/Account;
    :cond_1
    return-void
.end method


# virtual methods
.method protected handleBack(IILandroid/content/Intent;Lcom/google/android/gsf/loginservice/GLSUser$Status;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x3ff

    const/16 v2, 0x3fe

    .line 314
    iget-boolean v0, p0, Lcom/google/android/gsf/login/LoginActivity;->mAddAccount:Z

    if-nez v0, :cond_0

    .line 316
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gsf/login/LoginActivity;->setResult(ILandroid/content/Intent;)V

    .line 317
    invoke-virtual {p0}, Lcom/google/android/gsf/login/LoginActivity;->finish()V

    .line 383
    :goto_0
    return-void

    .line 321
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 379
    invoke-virtual {p0, p2}, Lcom/google/android/gsf/login/LoginActivity;->setResult(I)V

    .line 380
    invoke-virtual {p0}, Lcom/google/android/gsf/login/LoginActivity;->finish()V

    goto :goto_0

    .line 326
    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/UsernamePasswordActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x402

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 332
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/SyncIntroActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 333
    const/16 v1, 0x3ed

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 337
    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/PlusQueryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gsf/login/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 344
    :sswitch_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/PlusQueryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gsf/login/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 349
    :sswitch_4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/NameActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x3fa

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 358
    :sswitch_5
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/PlusFaqActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v3}, Lcom/google/android/gsf/login/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 362
    :sswitch_6
    iget-object v0, p0, Lcom/google/android/gsf/login/LoginActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-boolean v0, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUserSelectedGooglePlus:Z

    if-eqz v0, :cond_2

    .line 363
    iget-object v0, p0, Lcom/google/android/gsf/login/LoginActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-object v0, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUserData:Ljava/util/HashMap;

    sget-object v1, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->PICASA_USER:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    invoke-virtual {v1}, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->getWire()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 365
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/PicassaInfoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x405

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 368
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/PlusFaqActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v3}, Lcom/google/android/gsf/login/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 372
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/PlusQueryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gsf/login/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 321
    nop

    :sswitch_data_0
    .sparse-switch
        0x3e9 -> :sswitch_0
        0x3ea -> :sswitch_0
        0x3ec -> :sswitch_0
        0x3f2 -> :sswitch_6
        0x3fa -> :sswitch_2
        0x3fc -> :sswitch_1
        0x3fe -> :sswitch_3
        0x3ff -> :sswitch_4
        0x405 -> :sswitch_5
    .end sparse-switch
.end method

.method public handleStatus(Lcom/google/android/gsf/loginservice/GLSUser$Status;)V
    .locals 3
    .parameter

    .prologue
    .line 77
    .line 78
    sget-object v0, Lcom/google/android/gsf/login/LoginActivity$1;->$SwitchMap$com$google$android$gsf$loginservice$GLSUser$Status:[I

    invoke-virtual {p1}, Lcom/google/android/gsf/loginservice/GLSUser$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 106
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/ShowErrorActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 107
    const/16 v1, 0x3f1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 109
    :goto_0
    return-void

    .line 81
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gsf/login/LoginActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-object v0, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUsername:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gsf/login/LoginActivity;->mGlsUser:Lcom/google/android/gsf/loginservice/GLSUser;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gsf/login/LoginActivity;->mGlsUser:Lcom/google/android/gsf/loginservice/GLSUser;

    invoke-virtual {v0}, Lcom/google/android/gsf/loginservice/GLSUser;->isBrowser()Z

    move-result v0

    if-nez v0, :cond_1

    .line 83
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/UsernamePasswordActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x402

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 86
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/BrowserActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 87
    const-string v1, "authAccount"

    iget-object v2, p0, Lcom/google/android/gsf/login/LoginActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-object v2, v2, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUsername:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    const/16 v1, 0x3ec

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 93
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/CaptchaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    const/16 v1, 0x3e9

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 98
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/loginservice/GrantCredentialsPermissionActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 100
    const/16 v1, 0x403

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x0

    const/16 v3, 0x3ec

    const/4 v1, 0x1

    const/4 v2, -0x1

    .line 123
    if-ne p2, v1, :cond_0

    .line 125
    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/LoginActivity;->setResult(I)V

    .line 126
    invoke-virtual {p0}, Lcom/google/android/gsf/login/LoginActivity;->finish()V

    .line 299
    :goto_0
    return-void

    .line 130
    :cond_0
    invoke-static {p3}, Lcom/google/android/gsf/loginservice/GLSUser$Status;->fromExtra(Landroid/content/Intent;)Lcom/google/android/gsf/loginservice/GLSUser$Status;

    move-result-object v0

    .line 131
    if-nez p2, :cond_2

    .line 132
    invoke-virtual {p0}, Lcom/google/android/gsf/login/LoginActivity;->isSetupWizard()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 133
    const-string v1, "GLSActivity"

    const-string v2, "LoginActivity: removing any pre-existing accounts since the setup wizard was canceled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-direct {p0}, Lcom/google/android/gsf/login/LoginActivity;->removeAnyNewAccounts()V

    .line 137
    :cond_1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/gsf/login/LoginActivity;->handleBack(IILandroid/content/Intent;Lcom/google/android/gsf/loginservice/GLSUser$Status;)V

    goto :goto_0

    .line 141
    :cond_2
    sparse-switch p1, :sswitch_data_0

    .line 295
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gsf/login/AddAccountActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 143
    :sswitch_0
    if-ne p2, v5, :cond_3

    .line 144
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/BrowserActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v3}, Lcom/google/android/gsf/login/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 154
    :cond_3
    :sswitch_1
    if-ne p2, v2, :cond_4

    .line 155
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/LoginActivityTask;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x3ea

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 158
    :cond_4
    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/LoginActivity;->setResult(I)V

    .line 159
    invoke-virtual {p0}, Lcom/google/android/gsf/login/LoginActivity;->finish()V

    goto :goto_0

    .line 165
    :sswitch_2
    if-ne p2, v2, :cond_5

    .line 166
    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/LoginActivity;->setResult(I)V

    .line 170
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gsf/login/LoginActivity;->finish()V

    goto :goto_0

    .line 168
    :cond_5
    invoke-virtual {p0, v4, p3}, Lcom/google/android/gsf/login/LoginActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_1

    .line 175
    :sswitch_3
    iget-boolean v1, p0, Lcom/google/android/gsf/login/LoginActivity;->mConfirmCredentials:Z

    if-eqz v1, :cond_6

    .line 177
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/LoginActivity;->accountAuthenticatorResult(Landroid/os/Bundle;)V

    .line 178
    invoke-virtual {p0, v2, p3}, Lcom/google/android/gsf/login/LoginActivity;->setResult(ILandroid/content/Intent;)V

    .line 179
    invoke-virtual {p0}, Lcom/google/android/gsf/login/LoginActivity;->finish()V

    goto :goto_0

    .line 183
    :cond_6
    if-ne p2, v2, :cond_9

    .line 184
    iget-boolean v0, p0, Lcom/google/android/gsf/login/LoginActivity;->mAddAccount:Z

    if-nez v0, :cond_7

    .line 186
    iput-boolean v4, p0, Lcom/google/android/gsf/login/LoginActivity;->mCallAuthenticatorResponseOnFinish:Z

    .line 187
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/LoginActivity;->accountAuthenticatorResult(Landroid/os/Bundle;)V

    .line 188
    invoke-virtual {p0, v2, p3}, Lcom/google/android/gsf/login/LoginActivity;->setResult(ILandroid/content/Intent;)V

    .line 190
    iget-object v0, p0, Lcom/google/android/gsf/login/LoginActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-object v0, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUsername:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gsf/login/LoginActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-object v1, v1, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mAccountManagerOptions:Landroid/os/Bundle;

    invoke-static {p0, v0, v1}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->onIntentDone(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 193
    invoke-virtual {p0}, Lcom/google/android/gsf/login/LoginActivity;->finish()V

    goto/16 :goto_0

    .line 197
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gsf/login/LoginActivity;->isESEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gsf/login/LoginActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-boolean v0, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mAllowGooglePlus:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gsf/login/LoginActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-boolean v0, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mHasGooglePlus:Z

    if-nez v0, :cond_8

    .line 199
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/PlusQueryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x3fe

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 204
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/gsf/login/LoginActivity;->afterAddAccount()V

    goto/16 :goto_0

    .line 207
    :cond_9
    sget-object v1, Lcom/google/android/gsf/loginservice/GLSUser$Status;->BAD_AUTHENTICATION:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    if-ne v0, v1, :cond_a

    .line 208
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/ShowErrorActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 209
    const/16 v1, 0x409

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 211
    :cond_a
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/LoginActivity;->handleStatus(Lcom/google/android/gsf/loginservice/GLSUser$Status;)V

    goto/16 :goto_0

    .line 218
    :sswitch_4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/SyncIntroActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 219
    const/16 v1, 0x3ed

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 224
    :sswitch_5
    iget-object v0, p0, Lcom/google/android/gsf/login/LoginActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-object v0, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUsername:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gsf/login/LoginActivity;->mGlsUser:Lcom/google/android/gsf/loginservice/GLSUser;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gsf/login/LoginActivity;->mGlsUser:Lcom/google/android/gsf/loginservice/GLSUser;

    invoke-virtual {v0}, Lcom/google/android/gsf/loginservice/GLSUser;->isBrowser()Z

    move-result v0

    if-nez v0, :cond_c

    .line 226
    :cond_b
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/UsernamePasswordActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x402

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 229
    :cond_c
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/BrowserActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v3}, Lcom/google/android/gsf/login/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 236
    :sswitch_6
    if-ne p2, v5, :cond_d

    .line 237
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/BrowserActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 238
    invoke-virtual {p0, v0, v3}, Lcom/google/android/gsf/login/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 239
    :cond_d
    const/4 v0, 0x5

    if-ne p2, v0, :cond_e

    .line 240
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/UsernamePasswordActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x402

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 242
    :cond_e
    if-ne p2, v2, :cond_f

    .line 244
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/LoginActivityTask;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x3ea

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 248
    :cond_f
    invoke-virtual {p0, p2}, Lcom/google/android/gsf/login/LoginActivity;->setResult(I)V

    .line 249
    invoke-virtual {p0}, Lcom/google/android/gsf/login/LoginActivity;->finish()V

    goto/16 :goto_0

    .line 254
    :sswitch_7
    iget-object v0, p0, Lcom/google/android/gsf/login/LoginActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-boolean v0, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUserSelectedGooglePlus:Z

    if-eqz v0, :cond_10

    .line 255
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/NameActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x3fa

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 259
    :cond_10
    invoke-virtual {p0}, Lcom/google/android/gsf/login/LoginActivity;->afterAddAccount()V

    goto/16 :goto_0

    .line 264
    :sswitch_8
    iget-object v0, p0, Lcom/google/android/gsf/login/LoginActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-object v0, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUserData:Ljava/util/HashMap;

    sget-object v1, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->PICASA_USER:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    invoke-virtual {v1}, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->getWire()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 266
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/PicassaInfoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x405

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 269
    :cond_11
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/TermsOfServiceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x3f2

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 275
    :sswitch_9
    iget-object v0, p0, Lcom/google/android/gsf/login/LoginActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iput-boolean v1, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mNameActivityCompleted:Z

    .line 276
    iget-object v0, p0, Lcom/google/android/gsf/login/LoginActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-boolean v0, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUserSelectedGooglePlus:Z

    if-eqz v0, :cond_12

    .line 277
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/PlusFaqActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x3ff

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 280
    :cond_12
    invoke-virtual {p0}, Lcom/google/android/gsf/login/LoginActivity;->afterAddAccount()V

    goto/16 :goto_0

    .line 285
    :sswitch_a
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/TermsOfServiceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x3f2

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 290
    :sswitch_b
    invoke-virtual {p0}, Lcom/google/android/gsf/login/LoginActivity;->afterAddAccount()V

    goto/16 :goto_0

    .line 141
    :sswitch_data_0
    .sparse-switch
        0x3e9 -> :sswitch_1
        0x3ea -> :sswitch_3
        0x3ec -> :sswitch_1
        0x3f1 -> :sswitch_6
        0x3f2 -> :sswitch_b
        0x3fa -> :sswitch_9
        0x3fc -> :sswitch_4
        0x3fe -> :sswitch_7
        0x3ff -> :sswitch_8
        0x402 -> :sswitch_0
        0x403 -> :sswitch_2
        0x405 -> :sswitch_a
        0x409 -> :sswitch_5
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "icicle"

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/AddAccountActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Lcom/google/android/gsf/login/LoginActivity;->isFinishing()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    if-nez p1, :cond_3

    .line 50
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v8

    const-string v9, "com.google"

    invoke-virtual {v8, v9}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v3

    .line 51
    .local v3, accounts:[Landroid/accounts/Account;
    move-object v4, v3

    .local v4, arr$:[Landroid/accounts/Account;
    array-length v6, v4

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1
    if-ge v5, v6, :cond_2

    aget-object v0, v4, v5

    .line 52
    .local v0, account:Landroid/accounts/Account;
    iget-object v8, p0, Lcom/google/android/gsf/login/LoginActivity;->mPreExistingAccounts:Ljava/util/Set;

    iget-object v9, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 51
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 55
    .end local v0           #account:Landroid/accounts/Account;
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gsf/login/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/google/android/gsf/loginservice/GLSUser$Status;->fromIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/google/android/gsf/loginservice/GLSUser$Status;

    move-result-object v7

    .line 56
    .local v7, status:Lcom/google/android/gsf/loginservice/GLSUser$Status;
    invoke-virtual {p0, v7}, Lcom/google/android/gsf/login/LoginActivity;->handleStatus(Lcom/google/android/gsf/loginservice/GLSUser$Status;)V

    goto :goto_0

    .line 58
    .end local v3           #accounts:[Landroid/accounts/Account;
    .end local v4           #arr$:[Landroid/accounts/Account;
    .end local v5           #i$:I
    .end local v6           #len$:I
    .end local v7           #status:Lcom/google/android/gsf/loginservice/GLSUser$Status;
    :cond_3
    const-string v8, "preExistingAccounts"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, accountNames:[Ljava/lang/String;
    move-object v4, v2

    .local v4, arr$:[Ljava/lang/String;
    array-length v6, v4

    .restart local v6       #len$:I
    const/4 v5, 0x0

    .restart local v5       #i$:I
    :goto_2
    if-ge v5, v6, :cond_0

    aget-object v1, v4, v5

    .line 60
    .local v1, accountName:Ljava/lang/String;
    iget-object v8, p0, Lcom/google/android/gsf/login/LoginActivity;->mPreExistingAccounts:Ljava/util/Set;

    invoke-interface {v8, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/AddAccountActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 68
    iget-object v1, p0, Lcom/google/android/gsf/login/LoginActivity;->mPreExistingAccounts:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/String;

    .line 69
    .local v0, accountNames:[Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/gsf/login/LoginActivity;->mPreExistingAccounts:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 70
    const-string v1, "preExistingAccounts"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 71
    return-void
.end method
