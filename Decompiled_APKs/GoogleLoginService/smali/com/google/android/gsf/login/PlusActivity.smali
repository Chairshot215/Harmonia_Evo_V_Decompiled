.class public Lcom/google/android/gsf/login/PlusActivity;
.super Lcom/google/android/gsf/login/BaseActivity;
.source "PlusActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/google/android/gsf/login/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x3ff

    const/16 v4, 0x3fe

    const/16 v3, 0x3fa

    const/4 v0, -0x1

    const/4 v2, 0x0

    .line 37
    if-nez p2, :cond_0

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 160
    :goto_0
    return-void

    .line 40
    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/PlusQueryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v4}, Lcom/google/android/gsf/login/PlusActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 45
    :sswitch_1
    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/PlusActivity;->setResult(I)V

    .line 46
    invoke-virtual {p0}, Lcom/google/android/gsf/login/PlusActivity;->finish()V

    goto :goto_0

    .line 50
    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/PlusQueryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v4}, Lcom/google/android/gsf/login/PlusActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 55
    :sswitch_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/NameActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v3}, Lcom/google/android/gsf/login/PlusActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 59
    :sswitch_4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/NameActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v3}, Lcom/google/android/gsf/login/PlusActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 63
    :sswitch_5
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/PlusFaqActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v5}, Lcom/google/android/gsf/login/PlusActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 68
    :sswitch_6
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/PlusFaqActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v5}, Lcom/google/android/gsf/login/PlusActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 75
    :cond_0
    sparse-switch p1, :sswitch_data_1

    .line 155
    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/PlusActivity;->setResult(I)V

    .line 156
    invoke-virtual {p0}, Lcom/google/android/gsf/login/PlusActivity;->finish()V

    goto :goto_0

    .line 77
    :sswitch_7
    if-ne p2, v0, :cond_1

    .line 78
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/PlusCheckTask;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x384

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/PlusActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 82
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/login/PlusActivity;->finish()V

    goto :goto_0

    .line 87
    :sswitch_8
    const/4 v0, 0x4

    if-ne p2, v0, :cond_2

    .line 88
    const/16 v0, 0x385

    invoke-virtual {p0, p3, v0}, Lcom/google/android/gsf/login/PlusActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 90
    :cond_2
    iget-object v0, p0, Lcom/google/android/gsf/login/PlusActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-boolean v0, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mAllowGooglePlus:Z

    if-nez v0, :cond_3

    .line 91
    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/PlusActivity;->setResult(I)V

    .line 92
    invoke-virtual {p0}, Lcom/google/android/gsf/login/PlusActivity;->finish()V

    goto :goto_0

    .line 95
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/PlusQueryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v4}, Lcom/google/android/gsf/login/PlusActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 101
    :sswitch_9
    iget-object v0, p0, Lcom/google/android/gsf/login/PlusActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-boolean v0, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUserSelectedGooglePlus:Z

    if-eqz v0, :cond_4

    .line 102
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/NameActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v3}, Lcom/google/android/gsf/login/PlusActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 104
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gsf/login/PlusActivity;->finish()V

    goto/16 :goto_0

    .line 110
    :sswitch_a
    iget-object v0, p0, Lcom/google/android/gsf/login/PlusActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mNameActivityCompleted:Z

    .line 111
    iget-object v0, p0, Lcom/google/android/gsf/login/PlusActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-boolean v0, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUserSelectedGooglePlus:Z

    if-eqz v0, :cond_5

    .line 112
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/PlusFaqActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v5}, Lcom/google/android/gsf/login/PlusActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 115
    :cond_5
    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/PlusActivity;->setResult(I)V

    .line 116
    invoke-virtual {p0}, Lcom/google/android/gsf/login/PlusActivity;->finish()V

    goto/16 :goto_0

    .line 122
    :sswitch_b
    iget-object v0, p0, Lcom/google/android/gsf/login/PlusActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-object v0, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUserData:Ljava/util/HashMap;

    sget-object v1, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->PICASA_USER:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    invoke-virtual {v1}, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->getWire()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 124
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/PicassaInfoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x405

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/PlusActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 127
    :cond_6
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/TermsOfServiceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x3f2

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/PlusActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 133
    :sswitch_c
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/TermsOfServiceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x3f2

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/PlusActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 138
    :sswitch_d
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/ProfileTask;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x401

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/PlusActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 143
    :sswitch_e
    if-eq p2, v0, :cond_7

    .line 144
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/ShowErrorActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x40a

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/PlusActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 147
    :cond_7
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/PlusActivity;->setResult(I)V

    .line 148
    invoke-virtual {p0}, Lcom/google/android/gsf/login/PlusActivity;->finish()V

    goto/16 :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x384 -> :sswitch_0
        0x3f2 -> :sswitch_5
        0x3fa -> :sswitch_2
        0x3fe -> :sswitch_1
        0x3ff -> :sswitch_3
        0x401 -> :sswitch_6
        0x405 -> :sswitch_4
    .end sparse-switch

    .line 75
    :sswitch_data_1
    .sparse-switch
        0x384 -> :sswitch_8
        0x385 -> :sswitch_7
        0x3f2 -> :sswitch_d
        0x3fa -> :sswitch_a
        0x3fe -> :sswitch_9
        0x3ff -> :sswitch_b
        0x401 -> :sswitch_e
        0x405 -> :sswitch_c
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    if-nez p1, :cond_0

    .line 30
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/PlusCheckTask;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x384

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/PlusActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 33
    :cond_0
    return-void
.end method
