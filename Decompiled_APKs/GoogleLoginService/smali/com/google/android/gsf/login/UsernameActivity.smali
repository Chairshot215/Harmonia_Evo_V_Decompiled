.class public Lcom/google/android/gsf/login/UsernameActivity;
.super Lcom/google/android/gsf/login/BaseActivity;
.source "UsernameActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field private mBackButton:Landroid/view/View;

.field private mNextButton:Landroid/view/View;

.field private mUsernameEdit:Landroid/widget/EditText;

.field private mUsernameError:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/android/gsf/login/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/google/android/gsf/login/UsernameActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/google/android/gsf/login/UsernameActivity;->mUsernameError:Z

    return p1
.end method

.method private initViews()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 52
    const v1, 0x7f0c0020

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/UsernameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/google/android/gsf/login/UsernameActivity;->mUsernameEdit:Landroid/widget/EditText;

    .line 53
    iget-object v1, p0, Lcom/google/android/gsf/login/UsernameActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 54
    iget-object v1, p0, Lcom/google/android/gsf/login/UsernameActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 55
    iget-object v1, p0, Lcom/google/android/gsf/login/UsernameActivity;->mUsernameEdit:Landroid/widget/EditText;

    new-array v2, v4, [Landroid/text/InputFilter;

    new-instance v3, Lcom/google/android/gsf/login/UsernameActivity$1;

    invoke-direct {v3, p0, v4}, Lcom/google/android/gsf/login/UsernameActivity$1;-><init>(Lcom/google/android/gsf/login/UsernameActivity;Z)V

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 68
    const v1, 0x7f0c0008

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/UsernameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gsf/login/UsernameActivity;->mNextButton:Landroid/view/View;

    .line 69
    iget-object v1, p0, Lcom/google/android/gsf/login/UsernameActivity;->mNextButton:Landroid/view/View;

    invoke-virtual {p0, v1, v4}, Lcom/google/android/gsf/login/UsernameActivity;->setDefaultButton(Landroid/view/View;Z)V

    .line 71
    const v1, 0x7f0c0011

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/UsernameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gsf/login/UsernameActivity;->mBackButton:Landroid/view/View;

    .line 72
    iget-object v1, p0, Lcom/google/android/gsf/login/UsernameActivity;->mBackButton:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/UsernameActivity;->setBackButton(Landroid/view/View;)V

    .line 74
    const v1, 0x7f0c0021

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/UsernameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 75
    .local v0, gmailHostname:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/google/android/gsf/login/UsernameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0, v1, v5}, Lcom/google/android/gsf/login/UsernameActivity;->getGmailHost(Landroid/content/res/Resources;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    :cond_0
    return-void
.end method

.method private populateFields()V
    .locals 3

    .prologue
    .line 81
    iget-object v2, p0, Lcom/google/android/gsf/login/UsernameActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-object v1, v2, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUsername:Ljava/lang/String;

    .line 84
    .local v1, username:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 85
    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 86
    .local v0, pos:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 89
    .end local v0           #pos:I
    :cond_0
    iget-object v2, p0, Lcom/google/android/gsf/login/UsernameActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 90
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/UsernameActivity;->setContentView(I)V

    .line 46
    invoke-direct {p0}, Lcom/google/android/gsf/login/UsernameActivity;->initViews()V

    .line 47
    invoke-direct {p0}, Lcom/google/android/gsf/login/UsernameActivity;->populateFields()V

    .line 48
    invoke-virtual {p0}, Lcom/google/android/gsf/login/UsernameActivity;->updateWidgetState()V

    .line 49
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 112
    iget-object v1, p0, Lcom/google/android/gsf/login/UsernameActivity;->mUsernameEdit:Landroid/widget/EditText;

    if-ne p1, v1, :cond_0

    if-nez p2, :cond_0

    .line 113
    iget-object v1, p0, Lcom/google/android/gsf/login/UsernameActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, username:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/google/android/gsf/login/UsernameActivity;->mUsernameError:Z

    if-eqz v1, :cond_1

    .line 115
    iget-object v1, p0, Lcom/google/android/gsf/login/UsernameActivity;->mUsernameEdit:Landroid/widget/EditText;

    const v2, 0x7f080029

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/UsernameActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 124
    .end local v0           #username:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 116
    .restart local v0       #username:Ljava/lang/String;
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 117
    iget-object v1, p0, Lcom/google/android/gsf/login/UsernameActivity;->mUsernameEdit:Landroid/widget/EditText;

    const v2, 0x7f080033

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/UsernameActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 118
    :cond_2
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/UsernameActivity;->validateUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/google/android/gsf/login/UsernameActivity;->mUsernameEdit:Landroid/widget/EditText;

    const v2, 0x7f080085

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/UsernameActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public start()V
    .locals 5

    .prologue
    .line 94
    invoke-super {p0}, Lcom/google/android/gsf/login/BaseActivity;->start()V

    .line 95
    iget-object v2, p0, Lcom/google/android/gsf/login/UsernameActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, username:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "GLSActivity"

    const-string v3, "username was empty in CreateAccountActivity"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/UsernameActivity;->validateUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, validatedUsername:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 100
    iget-object v2, p0, Lcom/google/android/gsf/login/UsernameActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iput-object v1, v2, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUsername:Ljava/lang/String;

    .line 101
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/UsernameActivity;->setResult(I)V

    .line 102
    invoke-virtual {p0}, Lcom/google/android/gsf/login/UsernameActivity;->finish()V

    .line 108
    :goto_0
    return-void

    .line 105
    :cond_1
    const-string v2, "GLSActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t create a valid email from \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v2, p0, Lcom/google/android/gsf/login/UsernameActivity;->mUsernameEdit:Landroid/widget/EditText;

    const v3, 0x7f080085

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/UsernameActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public updateWidgetState()V
    .locals 4

    .prologue
    .line 131
    invoke-super {p0}, Lcom/google/android/gsf/login/BaseActivity;->updateWidgetState()V

    .line 132
    iget-object v3, p0, Lcom/google/android/gsf/login/UsernameActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 133
    .local v1, username:Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/google/android/gsf/login/UsernameActivity;->mUsernameError:Z

    if-nez v3, :cond_0

    const/4 v2, 0x1

    .line 135
    .local v2, validUsername:Z
    :goto_0
    move v0, v2

    .line 136
    .local v0, enableNext:Z
    iget-object v3, p0, Lcom/google/android/gsf/login/UsernameActivity;->mNextButton:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 137
    iget-object v3, p0, Lcom/google/android/gsf/login/UsernameActivity;->mNextButton:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 138
    return-void

    .line 133
    .end local v0           #enableNext:Z
    .end local v2           #validUsername:Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
