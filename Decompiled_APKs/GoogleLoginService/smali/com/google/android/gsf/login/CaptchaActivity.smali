.class public Lcom/google/android/gsf/login/CaptchaActivity;
.super Lcom/google/android/gsf/login/BaseActivity;
.source "CaptchaActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mCancelButton:Landroid/widget/Button;

.field private mCaptchaEditText:Landroid/widget/EditText;

.field private mImageView:Landroid/widget/ImageView;

.field private mNextButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/android/gsf/login/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/gsf/login/CaptchaActivity;->mCancelButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 92
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/CaptchaActivity;->setResult(I)V

    .line 93
    invoke-virtual {p0}, Lcom/google/android/gsf/login/CaptchaActivity;->finish()V

    .line 95
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v1, 0x7f030006

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/CaptchaActivity;->setContentView(I)V

    .line 45
    iget-boolean v1, p0, Lcom/google/android/gsf/login/CaptchaActivity;->LOCAL_LOGV:Z

    if-eqz v1, :cond_0

    const-string v1, "GLSActivity"

    const-string v2, "Doing captcha..."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/login/CaptchaActivity;->getUserData()Ljava/util/HashMap;

    move-result-object v1

    sget-object v2, Lcom/google/android/gsf/login/BackendStub$Key;->CAPTCHA_BITMAP:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v2}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 50
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const v1, 0x7f0c0019

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/CaptchaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/google/android/gsf/login/CaptchaActivity;->mImageView:Landroid/widget/ImageView;

    .line 51
    iget-object v1, p0, Lcom/google/android/gsf/login/CaptchaActivity;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 53
    const v1, 0x7f0c001a

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/CaptchaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/google/android/gsf/login/CaptchaActivity;->mCaptchaEditText:Landroid/widget/EditText;

    .line 54
    iget-object v1, p0, Lcom/google/android/gsf/login/CaptchaActivity;->mCaptchaEditText:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 56
    const v1, 0x7f0c0008

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/CaptchaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/google/android/gsf/login/CaptchaActivity;->mNextButton:Landroid/widget/Button;

    .line 58
    const v1, 0x7f0c001b

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/CaptchaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/google/android/gsf/login/CaptchaActivity;->mCancelButton:Landroid/widget/Button;

    .line 59
    iget-object v1, p0, Lcom/google/android/gsf/login/CaptchaActivity;->mCancelButton:Landroid/widget/Button;

    if-eqz v1, :cond_1

    .line 60
    iget-object v1, p0, Lcom/google/android/gsf/login/CaptchaActivity;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    :cond_1
    iget-object v1, p0, Lcom/google/android/gsf/login/CaptchaActivity;->mCaptchaEditText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gsf/login/CaptchaActivity;->setDefaultButton(Landroid/view/View;Z)V

    .line 64
    iget-object v1, p0, Lcom/google/android/gsf/login/CaptchaActivity;->mNextButton:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gsf/login/CaptchaActivity;->setDefaultButton(Landroid/view/View;Z)V

    .line 66
    invoke-virtual {p0}, Lcom/google/android/gsf/login/CaptchaActivity;->updateWidgetState()V

    .line 67
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 71
    iget-object v1, p0, Lcom/google/android/gsf/login/CaptchaActivity;->mCaptchaEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, answer:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/gsf/login/CaptchaActivity;->getUserData()Ljava/util/HashMap;

    move-result-object v1

    sget-object v2, Lcom/google/android/gsf/login/BackendStub$Key;->CAPTCHA_ANSWER:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v2}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const/4 v1, -0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gsf/login/CaptchaActivity;->setResult(ILandroid/content/Intent;)V

    .line 74
    invoke-virtual {p0}, Lcom/google/android/gsf/login/CaptchaActivity;->finish()V

    .line 75
    return-void
.end method

.method public updateWidgetState()V
    .locals 3

    .prologue
    .line 82
    invoke-super {p0}, Lcom/google/android/gsf/login/BaseActivity;->updateWidgetState()V

    .line 83
    iget-object v2, p0, Lcom/google/android/gsf/login/CaptchaActivity;->mCaptchaEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 84
    .local v0, answer:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 85
    .local v1, answerValid:Z
    :goto_0
    iget-object v2, p0, Lcom/google/android/gsf/login/CaptchaActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 86
    iget-object v2, p0, Lcom/google/android/gsf/login/CaptchaActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setFocusable(Z)V

    .line 87
    return-void

    .line 84
    .end local v1           #answerValid:Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
