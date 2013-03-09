.class public Lcom/google/android/gsf/login/CreateAccountActivity;
.super Lcom/google/android/gsf/login/AddAccountActivity;
.source "CreateAccountActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/login/CreateAccountActivity$1;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/android/gsf/login/AddAccountActivity;-><init>()V

    .line 264
    return-void
.end method

.method private handleBack(IILandroid/content/Intent;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x3fe

    const/16 v4, 0x3fa

    const/16 v3, 0x3f3

    const/16 v2, 0x404

    .line 43
    packed-switch p1, :pswitch_data_0

    .line 113
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gsf/login/AddAccountActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 115
    :goto_0
    return-void

    .line 45
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/AccountSecurityActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v3}, Lcom/google/android/gsf/login/CreateAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 50
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/PlusQueryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v5}, Lcom/google/android/gsf/login/CreateAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 56
    :pswitch_3
    invoke-virtual {p0, p2}, Lcom/google/android/gsf/login/CreateAccountActivity;->setResult(I)V

    .line 57
    invoke-virtual {p0}, Lcom/google/android/gsf/login/CreateAccountActivity;->finish()V

    goto :goto_0

    .line 61
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/NameActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v4}, Lcom/google/android/gsf/login/CreateAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 66
    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/UsernameActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gsf/login/CreateAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 72
    :pswitch_6
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/NameActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v4}, Lcom/google/android/gsf/login/CreateAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 76
    :pswitch_7
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/UsernameActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gsf/login/CreateAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 81
    :pswitch_8
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/ChoosePasswordActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x3f4

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/CreateAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 86
    :pswitch_9
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/NameActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 87
    const-string v1, "noBack"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 88
    const/16 v1, 0x40b

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/CreateAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 92
    :pswitch_a
    iget-object v0, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-boolean v0, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUserSelectedGooglePlus:Z

    if-eqz v0, :cond_0

    .line 93
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/PlusQueryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v5}, Lcom/google/android/gsf/login/CreateAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 96
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/AccountSecurityActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v3}, Lcom/google/android/gsf/login/CreateAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 103
    :pswitch_b
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/UsernameActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gsf/login/CreateAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 108
    :pswitch_c
    invoke-virtual {p0, p2}, Lcom/google/android/gsf/login/CreateAccountActivity;->setResult(I)V

    .line 109
    invoke-virtual {p0}, Lcom/google/android/gsf/login/CreateAccountActivity;->finish()V

    goto/16 :goto_0

    .line 43
    nop

    :pswitch_data_0
    .packed-switch 0x3eb
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_a
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x3ff

    const/16 v3, 0x3f4

    const/16 v2, 0x3f2

    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 119
    if-ne p2, v1, :cond_1

    .line 120
    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/CreateAccountActivity;->setResult(I)V

    .line 121
    invoke-virtual {p0}, Lcom/google/android/gsf/login/CreateAccountActivity;->finish()V

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    if-nez p2, :cond_2

    .line 126
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gsf/login/CreateAccountActivity;->handleBack(IILandroid/content/Intent;)V

    goto :goto_0

    .line 130
    :cond_2
    packed-switch p1, :pswitch_data_0

    .line 281
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gsf/login/AddAccountActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 132
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-boolean v0, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUserSelectedGooglePlus:Z

    if-eqz v0, :cond_3

    .line 133
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/NameCheckTask;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x406

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/CreateAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 136
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/TermsOfServiceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gsf/login/CreateAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 142
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/TermsOfServiceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gsf/login/CreateAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 146
    :pswitch_3
    if-ne p2, v0, :cond_4

    .line 147
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/PlusFaqActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v4}, Lcom/google/android/gsf/login/CreateAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 149
    :cond_4
    if-eqz p2, :cond_0

    .line 150
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/BadNameActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x407

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/CreateAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 157
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-boolean v0, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUserSelectedGooglePlus:Z

    if-eqz v0, :cond_5

    .line 158
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/PlusFaqActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v4}, Lcom/google/android/gsf/login/CreateAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 161
    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/TermsOfServiceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gsf/login/CreateAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 167
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iput-boolean v1, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mNameActivityCompleted:Z

    .line 168
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/UsernameActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x404

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/CreateAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 173
    :pswitch_6
    iget-object v0, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-boolean v0, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUserSelectedGooglePlus:Z

    if-eqz v0, :cond_6

    .line 174
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/PlusFaqActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v4}, Lcom/google/android/gsf/login/CreateAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 179
    :cond_6
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/TermsOfServiceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gsf/login/CreateAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 185
    :pswitch_7
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/CheckAvailTask;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x3f8

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/CreateAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 190
    :pswitch_8
    if-ne p2, v0, :cond_7

    .line 191
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/ChoosePasswordActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v3}, Lcom/google/android/gsf/login/CreateAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 194
    :cond_7
    invoke-static {p3}, Lcom/google/android/gsf/loginservice/GLSUser$Status;->fromExtra(Landroid/content/Intent;)Lcom/google/android/gsf/loginservice/GLSUser$Status;

    .line 195
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/SuggestUsernameActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x3f9

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/CreateAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 201
    :pswitch_9
    if-ne p2, v0, :cond_8

    .line 202
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/ChoosePasswordActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v3}, Lcom/google/android/gsf/login/CreateAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 205
    :cond_8
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/CheckAvailTask;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x3f8

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/CreateAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 212
    :pswitch_a
    if-ne p2, v0, :cond_0

    .line 213
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/AccountSecurityActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x3f3

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/CreateAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 222
    :pswitch_b
    invoke-virtual {p0}, Lcom/google/android/gsf/login/CreateAccountActivity;->isESEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 223
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/PlusQueryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x3fe

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/CreateAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 226
    :cond_9
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/TermsOfServiceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gsf/login/CreateAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 232
    :pswitch_c
    iget-object v0, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-boolean v0, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mTermsOfServiceShown:Z

    if-eqz v0, :cond_a

    .line 233
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/CreateAccountTask;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x3eb

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/CreateAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 237
    :cond_a
    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/CreateAccountActivity;->setResult(I)V

    .line 238
    invoke-virtual {p0}, Lcom/google/android/gsf/login/CreateAccountActivity;->finish()V

    goto/16 :goto_0

    .line 243
    :pswitch_d
    if-ne p2, v0, :cond_b

    .line 245
    iget-object v0, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iput-boolean v1, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mIsNewAccount:Z

    .line 247
    iget-object v0, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    invoke-virtual {p0}, Lcom/google/android/gsf/login/CreateAccountActivity;->getMarket()Lcom/google/android/gsf/login/MarketHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    invoke-virtual {v1, v2}, Lcom/google/android/gsf/login/MarketHelper;->allowCreditCard(Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mNeedsCreditCard:Z

    .line 248
    invoke-virtual {p0}, Lcom/google/android/gsf/login/CreateAccountActivity;->afterAddAccount()V

    goto/16 :goto_0

    .line 250
    :cond_b
    invoke-static {p3}, Lcom/google/android/gsf/loginservice/GLSUser$Status;->fromExtra(Landroid/content/Intent;)Lcom/google/android/gsf/loginservice/GLSUser$Status;

    move-result-object v0

    .line 251
    sget-object v1, Lcom/google/android/gsf/login/CreateAccountActivity$1;->$SwitchMap$com$google$android$gsf$loginservice$GLSUser$Status:[I

    invoke-virtual {v0}, Lcom/google/android/gsf/loginservice/GLSUser$Status;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_1

    .line 263
    const/16 v0, 0x3f1

    invoke-virtual {p0, p3, v0}, Lcom/google/android/gsf/login/CreateAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 253
    :pswitch_e
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/SuggestUsernameActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x3f9

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/CreateAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 258
    :pswitch_f
    const/16 v0, 0x3f5

    invoke-virtual {p0, p3, v0}, Lcom/google/android/gsf/login/CreateAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 271
    :pswitch_10
    invoke-virtual {p0, p2}, Lcom/google/android/gsf/login/CreateAccountActivity;->setResult(I)V

    .line 272
    invoke-virtual {p0}, Lcom/google/android/gsf/login/CreateAccountActivity;->finish()V

    goto/16 :goto_0

    .line 277
    :pswitch_11
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/ChoosePasswordActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v3}, Lcom/google/android/gsf/login/CreateAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 130
    nop

    :pswitch_data_0
    .packed-switch 0x3eb
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch

    .line 251
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/AddAccountActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    if-nez p1, :cond_0

    .line 38
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/NameActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x3fa

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/CreateAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 40
    :cond_0
    return-void
.end method
