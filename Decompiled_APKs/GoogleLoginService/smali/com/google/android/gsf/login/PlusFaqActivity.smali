.class public Lcom/google/android/gsf/login/PlusFaqActivity;
.super Lcom/google/android/gsf/login/BaseActivity;
.source "PlusFaqActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/android/gsf/login/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "icicle"

    .prologue
    const v10, 0x7f08004b

    const/4 v6, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 35
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v5, 0x7f030016

    invoke-virtual {p0, v5}, Lcom/google/android/gsf/login/PlusFaqActivity;->setContentView(I)V

    .line 37
    const v5, 0x7f0c0011

    invoke-virtual {p0, v5}, Lcom/google/android/gsf/login/PlusFaqActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/android/gsf/login/PlusFaqActivity;->setBackButton(Landroid/view/View;)V

    .line 38
    const v5, 0x7f0c0008

    invoke-virtual {p0, v5}, Lcom/google/android/gsf/login/PlusFaqActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v5, v8}, Lcom/google/android/gsf/login/PlusFaqActivity;->setDefaultButton(Landroid/view/View;Z)V

    .line 40
    const v5, 0x7f0c000d

    invoke-virtual {p0, v5}, Lcom/google/android/gsf/login/PlusFaqActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 41
    .local v3, msg:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/google/android/gsf/login/PlusFaqActivity;->shouldDisplayLastNameFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 42
    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gsf/login/PlusFaqActivity;->getUserData()Ljava/util/HashMap;

    move-result-object v6

    sget-object v7, Lcom/google/android/gsf/login/BackendStub$Key;->LAST_NAME:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v7}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {p0}, Lcom/google/android/gsf/login/PlusFaqActivity;->getUserData()Ljava/util/HashMap;

    move-result-object v6

    sget-object v7, Lcom/google/android/gsf/login/BackendStub$Key;->FIRST_NAME:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v7}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v10, v5}, Lcom/google/android/gsf/login/PlusFaqActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    :goto_0
    const v5, 0x7f0c003e

    invoke-virtual {p0, v5}, Lcom/google/android/gsf/login/PlusFaqActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 53
    .local v4, warning:Landroid/widget/TextView;
    const/4 v1, 0x0

    .line 54
    .local v1, domain:Ljava/lang/String;
    iget-object v5, p0, Lcom/google/android/gsf/login/PlusFaqActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-boolean v5, v5, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mCreatingAccount:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/google/android/gsf/login/PlusFaqActivity;->mGlsUser:Lcom/google/android/gsf/loginservice/GLSUser;

    sget-object v6, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->SERVICE_HOSTED:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    invoke-virtual {v6}, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->getWire()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gsf/loginservice/GLSUser;->hasService(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 56
    iget-object v5, p0, Lcom/google/android/gsf/login/PlusFaqActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-object v2, v5, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUsername:Ljava/lang/String;

    .line 57
    .local v2, email:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 58
    const/16 v5, 0x40

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 59
    .local v0, atIndex:I
    if-ltz v0, :cond_0

    .line 60
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 64
    .end local v0           #atIndex:I
    .end local v2           #email:Ljava/lang/String;
    :cond_0
    if-eqz v1, :cond_2

    .line 65
    const v5, 0x7f08004c

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v1, v6, v9

    invoke-virtual {p0, v5, v6}, Lcom/google/android/gsf/login/PlusFaqActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    :goto_1
    return-void

    .line 46
    .end local v1           #domain:Ljava/lang/String;
    .end local v4           #warning:Landroid/widget/TextView;
    :cond_1
    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gsf/login/PlusFaqActivity;->getUserData()Ljava/util/HashMap;

    move-result-object v6

    sget-object v7, Lcom/google/android/gsf/login/BackendStub$Key;->FIRST_NAME:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v7}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {p0}, Lcom/google/android/gsf/login/PlusFaqActivity;->getUserData()Ljava/util/HashMap;

    move-result-object v6

    sget-object v7, Lcom/google/android/gsf/login/BackendStub$Key;->LAST_NAME:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v7}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v10, v5}, Lcom/google/android/gsf/login/PlusFaqActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 67
    .restart local v1       #domain:Ljava/lang/String;
    .restart local v4       #warning:Landroid/widget/TextView;
    :cond_2
    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public start()V
    .locals 1

    .prologue
    .line 73
    invoke-super {p0}, Lcom/google/android/gsf/login/BaseActivity;->start()V

    .line 74
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/PlusFaqActivity;->setResult(I)V

    .line 75
    invoke-virtual {p0}, Lcom/google/android/gsf/login/PlusFaqActivity;->finish()V

    .line 76
    return-void
.end method
