.class public Lcom/google/android/gsf/login/SuggestUsernameActivity;
.super Lcom/google/android/gsf/login/BaseActivity;
.source "SuggestUsernameActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field private mAlternativesButton:Landroid/widget/Button;

.field private mCurrentSuggestion:Ljava/lang/String;

.field private mCurrentSuggestionPosition:I

.field private mDetailMessage:Landroid/widget/TextView;

.field private mNextButton:Landroid/view/View;

.field private mSkipButton:Landroid/view/View;

.field private mSuggestionsAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mUsernameEdit:Landroid/widget/EditText;

.field private mUsernameError:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/android/gsf/login/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/google/android/gsf/login/SuggestUsernameActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mUsernameError:Z

    return p1
.end method


# virtual methods
.method protected getContentView()I
    .locals 1

    .prologue
    .line 57
    const v0, 0x7f03001b

    return v0
.end method

.method protected initViews()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 84
    iget-object v6, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-object v6, v6, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUsername:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gsf/login/BackendStub;->usernameOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 85
    .local v5, username:Ljava/lang/String;
    const v6, 0x7f0c0020

    invoke-virtual {p0, v6}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mUsernameEdit:Landroid/widget/EditText;

    .line 86
    iget-object v6, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {v6, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v6, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {v6, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 88
    iget-object v6, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {v6, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 89
    iget-object v6, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mUsernameEdit:Landroid/widget/EditText;

    new-array v7, v9, [Landroid/text/InputFilter;

    new-instance v8, Lcom/google/android/gsf/login/SuggestUsernameActivity$1;

    invoke-direct {v8, p0, v9}, Lcom/google/android/gsf/login/SuggestUsernameActivity$1;-><init>(Lcom/google/android/gsf/login/SuggestUsernameActivity;Z)V

    aput-object v8, v7, v10

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 106
    iget-object v6, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->requestFocus()Z

    .line 107
    iget-object v6, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {p0, v6, v10}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->setDefaultButton(Landroid/view/View;Z)V

    .line 109
    const v6, 0x7f0c0036

    invoke-virtual {p0, v6}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mAlternativesButton:Landroid/widget/Button;

    .line 110
    iget-object v6, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mAlternativesButton:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    const v6, 0x7f0c0008

    invoke-virtual {p0, v6}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mNextButton:Landroid/view/View;

    .line 113
    iget-object v6, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mNextButton:Landroid/view/View;

    invoke-virtual {p0, v6, v9}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->setDefaultButton(Landroid/view/View;Z)V

    .line 115
    const v6, 0x7f0c000a

    invoke-virtual {p0, v6}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mSkipButton:Landroid/view/View;

    .line 116
    iget-object v6, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mSkipButton:Landroid/view/View;

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    const v6, 0x7f0c0046

    invoke-virtual {p0, v6}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mDetailMessage:Landroid/widget/TextView;

    .line 119
    iget-object v6, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mDetailMessage:Landroid/widget/TextView;

    if-eqz v6, :cond_2

    .line 120
    invoke-virtual {p0}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->getUserData()Ljava/util/HashMap;

    move-result-object v6

    sget-object v7, Lcom/google/android/gsf/login/BackendStub$Key;->DETAIL:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v7}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 121
    .local v4, serverDetail:Ljava/lang/String;
    const/4 v1, 0x0

    .line 124
    .local v1, detailMessage:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 126
    :try_start_0
    invoke-static {v4}, Lcom/google/android/gsf/login/BackendStub$Detail;->valueOf(Ljava/lang/String;)Lcom/google/android/gsf/login/BackendStub$Detail;

    move-result-object v0

    .line 127
    .local v0, detail:Lcom/google/android/gsf/login/BackendStub$Detail;
    invoke-virtual {v0}, Lcom/google/android/gsf/login/BackendStub$Detail;->getMessageId()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 128
    .local v3, msg:Ljava/lang/String;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/CharSequence;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    invoke-static {v3, v6}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 135
    .end local v0           #detail:Lcom/google/android/gsf/login/BackendStub$Detail;
    .end local v3           #msg:Ljava/lang/String;
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 136
    invoke-static {}, Lcom/google/android/gsf/login/BackendStub$Detail;->defaultMessageId()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/CharSequence;

    iget-object v8, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-object v8, v8, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUsername:Ljava/lang/String;

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 139
    :cond_1
    iget-object v6, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mDetailMessage:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    .end local v1           #detailMessage:Ljava/lang/String;
    .end local v4           #serverDetail:Ljava/lang/String;
    :cond_2
    return-void

    .line 129
    .restart local v1       #detailMessage:Ljava/lang/String;
    .restart local v4       #serverDetail:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 131
    .local v2, e:Ljava/lang/IllegalArgumentException;
    const-string v6, "GLSActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown enum "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mSuggestionsAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mCurrentSuggestion:Ljava/lang/String;

    .line 249
    iput p2, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mCurrentSuggestionPosition:I

    .line 250
    iget-object v0, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mUsernameEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mCurrentSuggestion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v0, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mUsernameEdit:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 255
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 256
    invoke-virtual {p0}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->updateWidgetState()V

    .line 257
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 233
    iget-object v1, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mAlternativesButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_1

    .line 235
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 236
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0800b0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 237
    iget-object v1, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mSuggestionsAdapter:Landroid/widget/ArrayAdapter;

    iget v2, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mCurrentSuggestionPosition:I

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 238
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 243
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    iget-object v1, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mSkipButton:Landroid/view/View;

    if-ne p1, v1, :cond_0

    .line 240
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->setResult(I)V

    .line 241
    invoke-virtual {p0}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->getContentView()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->setContentView(I)V

    .line 65
    invoke-virtual {p0}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->initViews()V

    .line 66
    invoke-virtual {p0}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->populateFields()V

    .line 67
    invoke-virtual {p0}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->updateWidgetState()V

    .line 68
    iget-object v0, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 69
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 216
    iget-object v1, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mUsernameEdit:Landroid/widget/EditText;

    if-ne p1, v1, :cond_0

    if-nez p2, :cond_0

    .line 217
    iget-boolean v1, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mUsernameError:Z

    if-eqz v1, :cond_1

    .line 218
    iget-object v1, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mUsernameEdit:Landroid/widget/EditText;

    const v2, 0x7f080029

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    iget-object v1, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, username:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 222
    iget-object v1, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mUsernameEdit:Landroid/widget/EditText;

    const v2, 0x7f080033

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 224
    :cond_2
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->validateUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mUsernameEdit:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 225
    :cond_3
    iget-object v1, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mUsernameEdit:Landroid/widget/EditText;

    const v2, 0x7f080085

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 73
    invoke-super {p0}, Lcom/google/android/gsf/login/BaseActivity;->onResume()V

    .line 76
    invoke-static {}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->isTabletLayout()Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 78
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 79
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    const v1, 0x7f0c000c

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 81
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method protected populateFields()V
    .locals 4

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->getUserData()Ljava/util/HashMap;

    move-result-object v2

    sget-object v3, Lcom/google/android/gsf/login/BackendStub$Key;->SUGGESTIONS:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v3}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    move-object v1, v2

    check-cast v1, [Ljava/lang/String;

    .line 147
    .local v1, suggestions:[Ljava/lang/String;
    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    .line 149
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 150
    aget-object v2, v1, v0

    invoke-static {v2}, Lcom/google/android/gsf/login/BackendStub;->usernameOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    :cond_0
    iget-object v2, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mAlternativesButton:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 154
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x1090009

    invoke-direct {v2, p0, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mSuggestionsAdapter:Landroid/widget/ArrayAdapter;

    .line 160
    .end local v0           #i:I
    :goto_1
    return-void

    .line 158
    :cond_1
    iget-object v2, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mAlternativesButton:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1
.end method

.method public start()V
    .locals 5

    .prologue
    .line 164
    iget-object v2, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, username:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 167
    const-string v2, "GLSActivity"

    const-string v3, "empty username in SuggestUsernameActivity"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v2, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mUsernameEdit:Landroid/widget/EditText;

    const v3, 0x7f080033

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 196
    :goto_0
    return-void

    .line 172
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->validateUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, validatedUsername:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 175
    const-string v2, "GLSActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t create a valid email name from \'"

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

    .line 176
    iget-object v2, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mUsernameEdit:Landroid/widget/EditText;

    const v3, 0x7f080085

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 180
    :cond_1
    iget-object v2, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mCurrentSuggestion:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mCurrentSuggestion:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 185
    iget-object v2, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iput-object v1, v2, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUsername:Ljava/lang/String;

    .line 187
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->setResult(I)V

    .line 188
    invoke-virtual {p0}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->finish()V

    goto :goto_0

    .line 191
    :cond_2
    iget-object v2, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iput-object v1, v2, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUsername:Ljava/lang/String;

    .line 193
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->setResult(I)V

    .line 194
    invoke-virtual {p0}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->finish()V

    goto :goto_0
.end method

.method public updateWidgetState()V
    .locals 5

    .prologue
    .line 203
    invoke-super {p0}, Lcom/google/android/gsf/login/BaseActivity;->updateWidgetState()V

    .line 204
    iget-object v4, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 205
    .local v2, username:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-object v4, v4, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUsername:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gsf/login/BackendStub;->usernameOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 206
    .local v1, origname:Ljava/lang/String;
    iget-boolean v4, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mUsernameError:Z

    if-nez v4, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v3, 0x1

    .line 209
    .local v3, validUsername:Z
    :goto_0
    move v0, v3

    .line 210
    .local v0, enableNext:Z
    iget-object v4, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mNextButton:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 211
    iget-object v4, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mNextButton:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 212
    return-void

    .line 206
    .end local v0           #enableNext:Z
    .end local v3           #validUsername:Z
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
