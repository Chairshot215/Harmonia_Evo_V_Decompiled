.class public Lcom/google/android/gsf/login/UsernamePasswordActivity;
.super Lcom/google/android/gsf/login/BaseActivity;
.source "UsernamePasswordActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field private mBackButton:Landroid/view/View;

.field private mLastPauseMillis:J

.field private mMessage:Landroid/widget/TextView;

.field private mNextButton:Landroid/view/View;

.field protected mPasswordEdit:Landroid/widget/EditText;

.field private mPasswordError:Z

.field private mShouldFocusToPassword:Z

.field private mSignInAgreementLabel:Landroid/widget/TextView;

.field protected mUsernameEdit:Landroid/widget/EditText;

.field private mUsernameError:Z

.field protected prefilledPassword:Ljava/lang/String;

.field protected prefilledUsername:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/android/gsf/login/BaseActivity;-><init>()V

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->prefilledUsername:Ljava/lang/String;

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->prefilledPassword:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Lcom/google/android/gsf/login/UsernamePasswordActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mUsernameError:Z

    return p1
.end method

.method static synthetic access$102(Lcom/google/android/gsf/login/UsernamePasswordActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mPasswordError:Z

    return p1
.end method


# virtual methods
.method protected getContentView()I
    .locals 1

    .prologue
    .line 63
    const v0, 0x7f03000e

    return v0
.end method

.method protected hasMenu()Z
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x1

    return v0
.end method

.method protected initPrefill()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 136
    invoke-virtual {p0}, Lcom/google/android/gsf/login/UsernamePasswordActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preset_login"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, acct:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->LOCAL_LOGV:Z

    if-eqz v2, :cond_0

    const-string v2, "GLSActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got prefill: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 147
    :cond_1
    :goto_0
    return-void

    .line 140
    :cond_2
    const-string v2, ":"

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, pieces:[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->prefilledUsername:Ljava/lang/String;

    .line 142
    array-length v2, v1

    if-ne v2, v5, :cond_1

    .line 143
    const/4 v2, 0x1

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->prefilledPassword:Ljava/lang/String;

    .line 144
    iget-boolean v2, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->LOCAL_LOGV:Z

    if-eqz v2, :cond_1

    const-string v2, "GLSActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LoginActivity.initPrefill: prefilling "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->prefilledUsername:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected initViews()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 150
    const v2, 0x7f0c0008

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/UsernamePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mNextButton:Landroid/view/View;

    .line 151
    iget-object v2, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mNextButton:Landroid/view/View;

    invoke-virtual {p0, v2, v5}, Lcom/google/android/gsf/login/UsernamePasswordActivity;->setDefaultButton(Landroid/view/View;Z)V

    .line 153
    const v2, 0x7f0c0011

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/UsernamePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mBackButton:Landroid/view/View;

    .line 154
    iget-object v2, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mBackButton:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/UsernamePasswordActivity;->setBackButton(Landroid/view/View;)V

    .line 156
    const v2, 0x7f0c0020

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/UsernamePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mUsernameEdit:Landroid/widget/EditText;

    .line 157
    const v2, 0x7f0c001c

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/UsernamePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mPasswordEdit:Landroid/widget/EditText;

    .line 158
    iget-boolean v2, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mAddAccount:Z

    if-nez v2, :cond_1

    .line 159
    iget-boolean v2, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mConfirmCredentials:Z

    if-nez v2, :cond_0

    .line 160
    const v2, 0x7f0c002c

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/UsernamePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mMessage:Landroid/widget/TextView;

    .line 161
    iget-object v2, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 162
    iget-object v2, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mMessage:Landroid/widget/TextView;

    const v3, 0x7f08011a

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 165
    :cond_0
    iget-object v2, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setVisibility(I)V

    .line 166
    const v2, 0x7f0c002d

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/UsernamePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 167
    .local v1, userFixed:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-object v2, v2, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUsername:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 169
    iget-object v2, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 196
    .end local v1           #userFixed:Landroid/widget/TextView;
    :goto_0
    iget-object v2, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mPasswordEdit:Landroid/widget/EditText;

    new-array v3, v5, [Landroid/text/InputFilter;

    new-instance v4, Lcom/google/android/gsf/login/UsernamePasswordActivity$2;

    invoke-direct {v4, p0, v5}, Lcom/google/android/gsf/login/UsernamePasswordActivity$2;-><init>(Lcom/google/android/gsf/login/UsernamePasswordActivity;Z)V

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 208
    iget-object v2, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 209
    iget-object v2, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 210
    iget-object v2, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {p0, v2, v6}, Lcom/google/android/gsf/login/UsernamePasswordActivity;->setDefaultButton(Landroid/view/View;Z)V

    .line 212
    const v2, 0x7f0c002e

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/UsernamePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mSignInAgreementLabel:Landroid/widget/TextView;

    .line 213
    iget-boolean v2, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mAddAccount:Z

    if-eqz v2, :cond_3

    .line 214
    iget-object v2, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mSignInAgreementLabel:Landroid/widget/TextView;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 215
    const v2, 0x7f080079

    invoke-static {p0, v2}, Lcom/google/android/gsf/login/LinkSpan;->linkify(Lcom/google/android/gsf/login/BaseActivity;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 216
    .local v0, msg:Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mSignInAgreementLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    iget-object v2, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mSignInAgreementLabel:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 230
    .end local v0           #msg:Ljava/lang/CharSequence;
    :goto_1
    return-void

    .line 172
    :cond_1
    iget-object v2, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mUsernameEdit:Landroid/widget/EditText;

    new-array v3, v5, [Landroid/text/InputFilter;

    new-instance v4, Lcom/google/android/gsf/login/UsernamePasswordActivity$1;

    invoke-direct {v4, p0, v5}, Lcom/google/android/gsf/login/UsernamePasswordActivity$1;-><init>(Lcom/google/android/gsf/login/UsernamePasswordActivity;Z)V

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 184
    iget-object v2, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 185
    iget-object v2, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 186
    iget-object v2, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-object v2, v2, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUsername:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 187
    iget-object v2, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mUsernameEdit:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-object v3, v3, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUsername:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v2, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 189
    iput-boolean v5, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mShouldFocusToPassword:Z

    goto :goto_0

    .line 191
    :cond_2
    iget-object v2, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 219
    :cond_3
    iget-object v2, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mSignInAgreementLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method protected maybePrefillFields()V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mUsernameEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->prefilledUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mPasswordEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->prefilledPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 241
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, Lcom/google/android/gsf/login/UsernamePasswordActivity;->getContentView()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/UsernamePasswordActivity;->setContentView(I)V

    .line 70
    invoke-virtual {p0}, Lcom/google/android/gsf/login/UsernamePasswordActivity;->initPrefill()V

    .line 71
    invoke-virtual {p0}, Lcom/google/android/gsf/login/UsernamePasswordActivity;->initViews()V

    .line 72
    invoke-virtual {p0}, Lcom/google/android/gsf/login/UsernamePasswordActivity;->maybePrefillFields()V

    .line 73
    invoke-virtual {p0}, Lcom/google/android/gsf/login/UsernamePasswordActivity;->updateWidgetState()V

    .line 76
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 315
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 317
    const v1, 0x7f0800ae

    invoke-interface {p1, v2, v3, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 319
    .local v0, item:Landroid/view/MenuItem;
    const v1, 0x7f02003c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 320
    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/google/android/gsf/login/Compat;->menuItemSetShowAsAction(Landroid/view/MenuItem;I)V

    .line 321
    return v3
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    const v3, 0x7f080033

    .line 259
    iget-object v2, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mUsernameEdit:Landroid/widget/EditText;

    if-ne p1, v2, :cond_4

    if-nez p2, :cond_4

    iget-boolean v2, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mAddAccount:Z

    if-eqz v2, :cond_4

    .line 260
    iget-boolean v2, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mUsernameError:Z

    if-eqz v2, :cond_1

    .line 261
    iget-object v2, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mUsernameEdit:Landroid/widget/EditText;

    const v3, 0x7f080029

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/UsernamePasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    iget-object v2, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, username:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 265
    iget-object v2, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/UsernamePasswordActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 269
    :cond_2
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/UsernamePasswordActivity;->validateUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 270
    .local v1, validatedUsername:Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 271
    iget-object v2, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v2, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mUsernameEdit:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 274
    :cond_3
    iget-object v2, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mUsernameEdit:Landroid/widget/EditText;

    const v3, 0x7f080085

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/UsernamePasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 278
    .end local v0           #username:Ljava/lang/String;
    .end local v1           #validatedUsername:Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mPasswordEdit:Landroid/widget/EditText;

    if-ne p1, v2, :cond_0

    if-nez p2, :cond_0

    .line 279
    iget-boolean v2, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mPasswordError:Z

    if-eqz v2, :cond_5

    .line 280
    iget-object v2, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mPasswordEdit:Landroid/widget/EditText;

    const v3, 0x7f08002a

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/UsernamePasswordActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 281
    :cond_5
    iget-object v2, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 282
    iget-object v2, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/UsernamePasswordActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 326
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 332
    :goto_0
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 328
    :pswitch_0
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/UsernamePasswordActivity;->setResult(I)V

    .line 329
    invoke-virtual {p0}, Lcom/google/android/gsf/login/UsernamePasswordActivity;->finish()V

    goto :goto_0

    .line 326
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 80
    invoke-super {p0}, Lcom/google/android/gsf/login/BaseActivity;->onPause()V

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mLastPauseMillis:J

    .line 83
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 87
    invoke-super {p0}, Lcom/google/android/gsf/login/BaseActivity;->onResume()V

    .line 88
    iget-object v0, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mUsernameEdit:Landroid/widget/EditText;

    if-nez v0, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 95
    iget-object v0, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mUsernameEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->prefilledUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 97
    :cond_2
    iget-object v0, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mUsernameEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextKeepState(Ljava/lang/CharSequence;)V

    .line 100
    invoke-virtual {p0}, Lcom/google/android/gsf/login/UsernamePasswordActivity;->updateWidgetState()V

    .line 103
    iget-object v0, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mLastPauseMillis:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 110
    iget-object v0, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mPasswordEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->prefilledPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextKeepState(Ljava/lang/CharSequence;)V

    .line 111
    iget-boolean v0, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mShouldFocusToPassword:Z

    if-eqz v0, :cond_4

    .line 112
    iget-object v0, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 119
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->prefilledPassword:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mPasswordError:Z

    .line 121
    iget-object v0, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 114
    :cond_4
    iget-object v0, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_1
.end method

.method public start()V
    .locals 3

    .prologue
    .line 245
    invoke-super {p0}, Lcom/google/android/gsf/login/BaseActivity;->start()V

    .line 248
    iget-boolean v0, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mAddAccount:Z

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-object v1, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUsername:Ljava/lang/String;

    .line 251
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/login/UsernamePasswordActivity;->getUserData()Ljava/util/HashMap;

    move-result-object v0

    sget-object v1, Lcom/google/android/gsf/login/BackendStub$Key;->PASSWORD:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v1}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/UsernamePasswordActivity;->setResult(I)V

    .line 254
    invoke-virtual {p0}, Lcom/google/android/gsf/login/UsernamePasswordActivity;->finish()V

    .line 255
    return-void
.end method

.method public updateWidgetState()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 292
    invoke-super {p0}, Lcom/google/android/gsf/login/BaseActivity;->updateWidgetState()V

    .line 293
    iget-object v7, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 294
    .local v2, un:Ljava/lang/CharSequence;
    iget-object v7, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 301
    .local v1, pw:Ljava/lang/CharSequence;
    iget-boolean v7, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mUsernameError:Z

    if-nez v7, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/google/android/gsf/login/UsernamePasswordActivity;->validateUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    move v4, v5

    .line 303
    .local v4, validUsername:Z
    :goto_0
    iget-boolean v7, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mAddAccount:Z

    if-nez v7, :cond_0

    .line 304
    const/4 v4, 0x1

    .line 306
    :cond_0
    iget-boolean v7, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mPasswordError:Z

    if-nez v7, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    move v3, v5

    .line 308
    .local v3, validPassword:Z
    :goto_1
    if-eqz v4, :cond_3

    if-eqz v3, :cond_3

    move v0, v5

    .line 309
    .local v0, enableOk:Z
    :goto_2
    iget-object v5, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mNextButton:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 310
    iget-object v5, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity;->mNextButton:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 311
    return-void

    .end local v0           #enableOk:Z
    .end local v3           #validPassword:Z
    .end local v4           #validUsername:Z
    :cond_1
    move v4, v6

    .line 301
    goto :goto_0

    .restart local v4       #validUsername:Z
    :cond_2
    move v3, v6

    .line 306
    goto :goto_1

    .restart local v3       #validPassword:Z
    :cond_3
    move v0, v6

    .line 308
    goto :goto_2
.end method
