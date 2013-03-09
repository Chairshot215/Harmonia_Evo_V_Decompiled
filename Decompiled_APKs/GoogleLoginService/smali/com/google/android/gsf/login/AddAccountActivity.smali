.class public Lcom/google/android/gsf/login/AddAccountActivity;
.super Lcom/google/android/gsf/login/BaseActivity;
.source "AddAccountActivity.java"


# static fields
.field private static BEFORE_PROFILE:I

.field private static PROFILE_PROGRESS:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, -0x1

    sput v0, Lcom/google/android/gsf/login/AddAccountActivity;->BEFORE_PROFILE:I

    .line 19
    const/4 v0, 0x0

    sput v0, Lcom/google/android/gsf/login/AddAccountActivity;->PROFILE_PROGRESS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/google/android/gsf/login/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public afterAddAccount()V
    .locals 5

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/gsf/login/AddAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-boolean v0, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUserSelectedGooglePlus:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gsf/login/AddAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget v0, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mProfileResult:I

    sget v1, Lcom/google/android/gsf/login/AddAccountActivity;->BEFORE_PROFILE:I

    if-ne v0, v1, :cond_0

    .line 39
    iget-object v0, p0, Lcom/google/android/gsf/login/AddAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    sget v1, Lcom/google/android/gsf/login/AddAccountActivity;->PROFILE_PROGRESS:I

    iput v1, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mProfileResult:I

    .line 40
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/ProfileTask;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x401

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/AddAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 70
    :goto_0
    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/login/AddAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-boolean v0, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mNeedsCreditCard:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/gsf/login/AddAccountActivity;->sTestHooks:Lcom/google/android/gsf/loginservice/BaseActivity$TestHooks;

    iget-boolean v0, v0, Lcom/google/android/gsf/loginservice/BaseActivity$TestHooks;->mSkipCreditCard:Z

    if-nez v0, :cond_2

    .line 47
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.vending.billing.ADD_CREDIT_CARD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 49
    sget-object v1, Lcom/google/android/gsf/login/AddAccountActivity;->sTestHooks:Lcom/google/android/gsf/loginservice/BaseActivity$TestHooks;

    iget-object v1, v1, Lcom/google/android/gsf/loginservice/BaseActivity$TestHooks;->mMarketIntent:Landroid/content/Intent;

    if-eqz v1, :cond_3

    .line 50
    sget-object v0, Lcom/google/android/gsf/login/AddAccountActivity;->sTestHooks:Lcom/google/android/gsf/loginservice/BaseActivity$TestHooks;

    iget-object v0, v0, Lcom/google/android/gsf/loginservice/BaseActivity$TestHooks;->mMarketIntent:Landroid/content/Intent;

    move-object v2, v0

    .line 52
    :goto_1
    const-string v0, "authAccount"

    iget-object v1, p0, Lcom/google/android/gsf/login/AddAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-object v1, v1, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUsername:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    iget-object v0, p0, Lcom/google/android/gsf/login/AddAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-object v0, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUserData:Ljava/util/HashMap;

    sget-object v1, Lcom/google/android/gsf/login/BackendStub$Key;->FIRST_NAME:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v1}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 54
    iget-object v1, p0, Lcom/google/android/gsf/login/AddAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-object v1, v1, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUserData:Ljava/util/HashMap;

    sget-object v3, Lcom/google/android/gsf/login/BackendStub$Key;->LAST_NAME:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v3}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 55
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 56
    const-string v3, "cardholder_name"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    :cond_1
    const/16 v0, 0x3fc

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gsf/login/AddAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 68
    :cond_2
    :goto_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/SyncIntroActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 69
    const/16 v1, 0x3ed

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/AddAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 63
    :catch_1
    move-exception v0

    goto :goto_2

    :cond_3
    move-object v2, v0

    goto :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x1

    .line 80
    if-ne p2, v0, :cond_0

    .line 81
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/AddAccountActivity;->setResult(I)V

    .line 82
    invoke-virtual {p0}, Lcom/google/android/gsf/login/AddAccountActivity;->finish()V

    .line 120
    :goto_0
    return-void

    .line 86
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 116
    const-string v0, "GLSActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown activity result req="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gsf/login/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 88
    :sswitch_0
    if-eq p2, v1, :cond_1

    .line 89
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/ShowErrorActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x40a

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/AddAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 92
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/login/AddAccountActivity;->afterAddAccount()V

    goto :goto_0

    .line 97
    :sswitch_1
    invoke-virtual {p0}, Lcom/google/android/gsf/login/AddAccountActivity;->afterAddAccount()V

    goto :goto_0

    .line 101
    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/SyncIntroActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    const/16 v1, 0x3ed

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/AddAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 107
    :sswitch_3
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/AddAccountActivity;->onSetupComplete(Z)V

    .line 109
    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/AddAccountActivity;->setResult(I)V

    .line 110
    invoke-virtual {p0}, Lcom/google/android/gsf/login/AddAccountActivity;->finish()V

    goto :goto_0

    .line 86
    :sswitch_data_0
    .sparse-switch
        0x3ed -> :sswitch_3
        0x3fc -> :sswitch_2
        0x401 -> :sswitch_0
        0x40a -> :sswitch_1
    .end sparse-switch
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 0
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 26
    iput p2, p0, Lcom/google/android/gsf/login/AddAccountActivity;->mNextRequest:I

    .line 27
    invoke-super {p0, p1, p2}, Lcom/google/android/gsf/login/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 28
    return-void
.end method
