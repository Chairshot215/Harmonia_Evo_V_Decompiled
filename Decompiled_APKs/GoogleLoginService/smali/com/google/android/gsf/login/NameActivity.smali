.class public Lcom/google/android/gsf/login/NameActivity;
.super Lcom/google/android/gsf/login/BaseActivity;
.source "NameActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field private mBackButton:Landroid/view/View;

.field private mFirstNameEdit:Landroid/widget/EditText;

.field private mLastNameEdit:Landroid/widget/EditText;

.field private mLocalOnly:Z

.field private mMessage:Landroid/widget/TextView;

.field private mNextButton:Landroid/view/View;

.field private mNextButton2:Landroid/view/View;

.field private mRetryMode:Z

.field private mSkipButton:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/android/gsf/login/BaseActivity;-><init>()V

    return-void
.end method

.method private initViews()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 66
    const v1, 0x7f0c002c

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/NameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/gsf/login/NameActivity;->mMessage:Landroid/widget/TextView;

    .line 68
    const v1, 0x7f0c002f

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/NameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/google/android/gsf/login/NameActivity;->mFirstNameEdit:Landroid/widget/EditText;

    .line 69
    iget-object v1, p0, Lcom/google/android/gsf/login/NameActivity;->mFirstNameEdit:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 70
    iget-object v1, p0, Lcom/google/android/gsf/login/NameActivity;->mFirstNameEdit:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 72
    const v1, 0x7f0c0030

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/NameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/google/android/gsf/login/NameActivity;->mLastNameEdit:Landroid/widget/EditText;

    .line 73
    iget-object v1, p0, Lcom/google/android/gsf/login/NameActivity;->mLastNameEdit:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 74
    iget-object v1, p0, Lcom/google/android/gsf/login/NameActivity;->mLastNameEdit:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 76
    const v1, 0x7f0c0002

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/NameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 77
    .local v0, title:Landroid/widget/TextView;
    iget-boolean v1, p0, Lcom/google/android/gsf/login/NameActivity;->mLocalOnly:Z

    if-eqz v1, :cond_2

    .line 78
    const v1, 0x7f080051

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 79
    iget-object v1, p0, Lcom/google/android/gsf/login/NameActivity;->mMessage:Landroid/widget/TextView;

    const v2, 0x7f080053

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 84
    :cond_0
    :goto_0
    const v1, 0x7f0c0008

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/NameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gsf/login/NameActivity;->mNextButton:Landroid/view/View;

    .line 85
    iget-object v1, p0, Lcom/google/android/gsf/login/NameActivity;->mNextButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    const v1, 0x7f0c0033

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/NameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gsf/login/NameActivity;->mNextButton2:Landroid/view/View;

    .line 87
    iget-object v1, p0, Lcom/google/android/gsf/login/NameActivity;->mNextButton2:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    const v1, 0x7f0c000a

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/NameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gsf/login/NameActivity;->mSkipButton:Landroid/view/View;

    .line 89
    iget-object v1, p0, Lcom/google/android/gsf/login/NameActivity;->mSkipButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    const v1, 0x7f0c0011

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/NameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gsf/login/NameActivity;->mBackButton:Landroid/view/View;

    .line 92
    invoke-virtual {p0}, Lcom/google/android/gsf/login/NameActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "noBack"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 93
    iget-object v1, p0, Lcom/google/android/gsf/login/NameActivity;->mBackButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 98
    :goto_1
    iget-boolean v1, p0, Lcom/google/android/gsf/login/NameActivity;->mRetryMode:Z

    if-eqz v1, :cond_1

    .line 99
    iget-object v1, p0, Lcom/google/android/gsf/login/NameActivity;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    const v1, 0x7f0c0031

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/NameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 101
    const v1, 0x7f0c0032

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/NameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 103
    :cond_1
    return-void

    .line 80
    :cond_2
    iget-object v1, p0, Lcom/google/android/gsf/login/NameActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-boolean v1, v1, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUserSelectedGooglePlus:Z

    if-eqz v1, :cond_0

    .line 81
    const v1, 0x7f080050

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 95
    :cond_3
    iget-object v1, p0, Lcom/google/android/gsf/login/NameActivity;->mBackButton:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/NameActivity;->setBackButton(Landroid/view/View;)V

    goto :goto_1
.end method

.method private populateFields()V
    .locals 4

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/google/android/gsf/login/NameActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 107
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/google/android/gsf/login/BackendStub$Key;->FIRST_NAME:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v1}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/google/android/gsf/login/NameActivity;->mFirstNameEdit:Landroid/widget/EditText;

    sget-object v2, Lcom/google/android/gsf/login/BackendStub$Key;->FIRST_NAME:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v2}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 112
    :goto_0
    sget-object v1, Lcom/google/android/gsf/login/BackendStub$Key;->LAST_NAME:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v1}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    iget-object v1, p0, Lcom/google/android/gsf/login/NameActivity;->mLastNameEdit:Landroid/widget/EditText;

    sget-object v2, Lcom/google/android/gsf/login/BackendStub$Key;->LAST_NAME:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v2}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 117
    :goto_1
    return-void

    .line 110
    :cond_0
    iget-object v2, p0, Lcom/google/android/gsf/login/NameActivity;->mFirstNameEdit:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/google/android/gsf/login/NameActivity;->getUserData()Ljava/util/HashMap;

    move-result-object v1

    sget-object v3, Lcom/google/android/gsf/login/BackendStub$Key;->FIRST_NAME:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v3}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 115
    :cond_1
    iget-object v2, p0, Lcom/google/android/gsf/login/NameActivity;->mLastNameEdit:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/google/android/gsf/login/NameActivity;->getUserData()Ljava/util/HashMap;

    move-result-object v1

    sget-object v3, Lcom/google/android/gsf/login/BackendStub$Key;->LAST_NAME:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v3}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x407

    const/4 v1, -0x1

    .line 153
    const/16 v0, 0x406

    if-ne v0, p1, :cond_2

    .line 154
    if-ne p2, v1, :cond_1

    .line 155
    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/NameActivity;->setResult(I)V

    .line 156
    invoke-virtual {p0}, Lcom/google/android/gsf/login/NameActivity;->finish()V

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    if-eqz p2, :cond_0

    .line 158
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/BadNameActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gsf/login/NameActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 163
    :cond_2
    if-ne v2, p1, :cond_4

    .line 164
    if-ne p2, v1, :cond_3

    .line 165
    invoke-virtual {p0, p2}, Lcom/google/android/gsf/login/NameActivity;->setResult(I)V

    .line 166
    invoke-virtual {p0}, Lcom/google/android/gsf/login/NameActivity;->finish()V

    goto :goto_0

    .line 169
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/login/NameActivity;->mRetryMode:Z

    .line 170
    invoke-direct {p0}, Lcom/google/android/gsf/login/NameActivity;->initViews()V

    goto :goto_0

    .line 174
    :cond_4
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gsf/login/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/android/gsf/login/NameActivity;->mNextButton:Landroid/view/View;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gsf/login/NameActivity;->mNextButton2:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 143
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/login/NameActivity;->start()V

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/login/NameActivity;->mSkipButton:Landroid/view/View;

    if-ne p1, v0, :cond_2

    .line 146
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/NameActivity;->setResult(I)V

    .line 147
    invoke-virtual {p0}, Lcom/google/android/gsf/login/NameActivity;->finish()V

    .line 149
    :cond_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Lcom/google/android/gsf/login/NameActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "localOnly"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gsf/login/NameActivity;->mLocalOnly:Z

    .line 58
    invoke-virtual {p0}, Lcom/google/android/gsf/login/NameActivity;->shouldDisplayLastNameFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f030010

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/NameActivity;->setContentView(I)V

    .line 60
    invoke-direct {p0}, Lcom/google/android/gsf/login/NameActivity;->initViews()V

    .line 61
    invoke-direct {p0}, Lcom/google/android/gsf/login/NameActivity;->populateFields()V

    .line 62
    invoke-virtual {p0}, Lcom/google/android/gsf/login/NameActivity;->updateWidgetState()V

    .line 63
    return-void

    .line 58
    :cond_0
    const v0, 0x7f03000f

    goto :goto_0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 5
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    const v4, 0x7f08002e

    .line 190
    iget-object v3, p0, Lcom/google/android/gsf/login/NameActivity;->mFirstNameEdit:Landroid/widget/EditText;

    if-ne p1, v3, :cond_2

    if-nez p2, :cond_2

    .line 191
    const/4 v0, 0x0

    .line 192
    .local v0, error:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/gsf/login/NameActivity;->mFirstNameEdit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 193
    .local v1, firstName:Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 194
    invoke-virtual {p0, v4}, Lcom/google/android/gsf/login/NameActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 196
    :cond_0
    iget-object v3, p0, Lcom/google/android/gsf/login/NameActivity;->mFirstNameEdit:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 205
    .end local v0           #error:Ljava/lang/String;
    .end local v1           #firstName:Ljava/lang/CharSequence;
    :cond_1
    :goto_0
    return-void

    .line 197
    :cond_2
    iget-object v3, p0, Lcom/google/android/gsf/login/NameActivity;->mLastNameEdit:Landroid/widget/EditText;

    if-ne p1, v3, :cond_1

    if-nez p2, :cond_1

    .line 198
    const/4 v0, 0x0

    .line 199
    .restart local v0       #error:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/gsf/login/NameActivity;->mLastNameEdit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 200
    .local v2, lastName:Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v2}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 201
    invoke-virtual {p0, v4}, Lcom/google/android/gsf/login/NameActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 203
    :cond_3
    iget-object v3, p0, Lcom/google/android/gsf/login/NameActivity;->mLastNameEdit:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 179
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 180
    const-string v0, "retryMode"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gsf/login/NameActivity;->mRetryMode:Z

    .line 181
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 185
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 186
    const-string v0, "retryMode"

    iget-boolean v1, p0, Lcom/google/android/gsf/login/NameActivity;->mRetryMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 187
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 121
    invoke-super {p0}, Lcom/google/android/gsf/login/BaseActivity;->start()V

    .line 123
    iget-object v0, p0, Lcom/google/android/gsf/login/NameActivity;->mFirstNameEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 124
    iget-object v1, p0, Lcom/google/android/gsf/login/NameActivity;->mLastNameEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 125
    invoke-virtual {p0}, Lcom/google/android/gsf/login/NameActivity;->getUserData()Ljava/util/HashMap;

    move-result-object v2

    sget-object v3, Lcom/google/android/gsf/login/BackendStub$Key;->FIRST_NAME:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v3}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-virtual {p0}, Lcom/google/android/gsf/login/NameActivity;->getUserData()Ljava/util/HashMap;

    move-result-object v0

    sget-object v2, Lcom/google/android/gsf/login/BackendStub$Key;->LAST_NAME:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v2}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v0, p0, Lcom/google/android/gsf/login/NameActivity;->mFirstNameEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gsf/login/NameActivity;->mLastNameEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gsf/login/NameActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gsf/login/ProfileHelper;->updateMeContactWith(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/ContentResolver;)V

    .line 132
    iget-object v0, p0, Lcom/google/android/gsf/login/NameActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-boolean v0, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUserSelectedGooglePlus:Z

    if-eqz v0, :cond_0

    .line 133
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/NameCheckTask;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x406

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/NameActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 139
    :goto_0
    return-void

    .line 136
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/NameActivity;->setResult(I)V

    .line 137
    invoke-virtual {p0}, Lcom/google/android/gsf/login/NameActivity;->finish()V

    goto :goto_0
.end method

.method public updateWidgetState()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 212
    invoke-super {p0}, Lcom/google/android/gsf/login/BaseActivity;->updateWidgetState()V

    .line 213
    iget-boolean v7, p0, Lcom/google/android/gsf/login/NameActivity;->mLocalOnly:Z

    if-eqz v7, :cond_0

    .line 224
    :goto_0
    return-void

    .line 215
    :cond_0
    iget-object v7, p0, Lcom/google/android/gsf/login/NameActivity;->mFirstNameEdit:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 216
    .local v1, firstName:Ljava/lang/CharSequence;
    iget-object v7, p0, Lcom/google/android/gsf/login/NameActivity;->mLastNameEdit:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 218
    .local v2, lastName:Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v3, v5

    .line 219
    .local v3, validFirstName:Z
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v4, v5

    .line 221
    .local v4, validLastName:Z
    :goto_2
    if-eqz v3, :cond_3

    if-eqz v4, :cond_3

    move v0, v5

    .line 222
    .local v0, enableNext:Z
    :goto_3
    iget-object v5, p0, Lcom/google/android/gsf/login/NameActivity;->mNextButton:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 223
    iget-object v5, p0, Lcom/google/android/gsf/login/NameActivity;->mNextButton:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_0

    .end local v0           #enableNext:Z
    .end local v3           #validFirstName:Z
    .end local v4           #validLastName:Z
    :cond_1
    move v3, v6

    .line 218
    goto :goto_1

    .restart local v3       #validFirstName:Z
    :cond_2
    move v4, v6

    .line 219
    goto :goto_2

    .restart local v4       #validLastName:Z
    :cond_3
    move v0, v6

    .line 221
    goto :goto_3
.end method
