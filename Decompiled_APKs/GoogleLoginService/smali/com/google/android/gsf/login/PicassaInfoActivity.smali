.class public Lcom/google/android/gsf/login/PicassaInfoActivity;
.super Lcom/google/android/gsf/login/BaseActivity;
.source "PicassaInfoActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/android/gsf/login/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    const/4 v7, 0x1

    .line 32
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v2, 0x7f030015

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/PicassaInfoActivity;->setContentView(I)V

    .line 34
    const v2, 0x7f0c0011

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/PicassaInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/PicassaInfoActivity;->setBackButton(Landroid/view/View;)V

    .line 35
    const v2, 0x7f0c0008

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/PicassaInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2, v7}, Lcom/google/android/gsf/login/PicassaInfoActivity;->setDefaultButton(Landroid/view/View;Z)V

    .line 37
    const v2, 0x7f0c000d

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/PicassaInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 38
    .local v0, description:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/google/android/gsf/login/PicassaInfoActivity;->getUserData()Ljava/util/HashMap;

    move-result-object v2

    sget-object v3, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->PICASA_USER:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    invoke-virtual {v3}, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->getWire()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 39
    .local v1, username:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 40
    iget-object v2, p0, Lcom/google/android/gsf/login/PicassaInfoActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-object v1, v2, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUsername:Ljava/lang/String;

    .line 42
    :cond_0
    const v2, 0x7f08004e

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/google/android/gsf/login/PicassaInfoActivity;->getUserData()Ljava/util/HashMap;

    move-result-object v5

    sget-object v6, Lcom/google/android/gsf/login/BackendStub$Key;->FIRST_NAME:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v6}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0}, Lcom/google/android/gsf/login/PicassaInfoActivity;->getUserData()Ljava/util/HashMap;

    move-result-object v4

    sget-object v5, Lcom/google/android/gsf/login/BackendStub$Key;->LAST_NAME:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v5}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v7

    const/4 v4, 0x2

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gsf/login/PicassaInfoActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Lcom/google/android/gsf/login/BaseActivity;->start()V

    .line 51
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/PicassaInfoActivity;->setResult(I)V

    .line 52
    invoke-virtual {p0}, Lcom/google/android/gsf/login/PicassaInfoActivity;->finish()V

    .line 53
    return-void
.end method
