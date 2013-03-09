.class public Lcom/android/mms/ui/ManagePasswordPreference;
.super Lcom/htc/preference/HtcDialogPreference;
.source "ManagePasswordPreference.java"


# instance fields
.field private mConfirmPasswdEditor:Landroid/widget/EditText;

.field private mOldPasswdEditor:Landroid/widget/EditText;

.field private mPasswdEditor:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/mms/ui/ManagePasswordPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    const v0, 0x7f03002b

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManagePasswordPreference;->setDialogLayoutResource(I)V

    .line 44
    const v0, 0x20c015f

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManagePasswordPreference;->setPositiveButtonText(I)V

    .line 45
    const v0, 0x20c0164

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManagePasswordPreference;->setNegativeButtonText(I)V

    .line 46
    return-void
.end method

.method private initWidgets(Landroid/view/View;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 98
    const v0, 0x7f0e009f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/mms/ui/ManagePasswordPreference;->mOldPasswdEditor:Landroid/widget/EditText;

    .line 99
    const v0, 0x7f0e00a0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/mms/ui/ManagePasswordPreference;->mPasswdEditor:Landroid/widget/EditText;

    .line 100
    const v0, 0x7f0e00a1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/mms/ui/ManagePasswordPreference;->mConfirmPasswdEditor:Landroid/widget/EditText;

    .line 101
    return-void
.end method

.method private setupDialog()V
    .locals 1

    .prologue
    .line 104
    invoke-static {}, Lcom/android/mms/category/PasswordManager;->getInstance()Lcom/android/mms/category/PasswordManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/category/PasswordManager;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-direct {p0}, Lcom/android/mms/ui/ManagePasswordPreference;->setupSetPasswordDialog()V

    .line 109
    :goto_0
    return-void

    .line 107
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ManagePasswordPreference;->setupModifyPasswordDialog()V

    goto :goto_0
.end method

.method private setupModifyPasswordDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 117
    iget-object v0, p0, Lcom/android/mms/ui/ManagePasswordPreference;->mOldPasswdEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcom/android/mms/ui/ManagePasswordPreference;->mConfirmPasswdEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 119
    return-void
.end method

.method private setupSetPasswordDialog()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/mms/ui/ManagePasswordPreference;->mConfirmPasswdEditor:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 113
    const v0, 0x7f09006c

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManagePasswordPreference;->setPositiveButtonText(I)V

    .line 114
    return-void
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ManagePasswordPreference;->initWidgets(Landroid/view/View;)V

    .line 51
    invoke-direct {p0}, Lcom/android/mms/ui/ManagePasswordPreference;->setupDialog()V

    .line 52
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    const v7, 0x7f090298

    const v6, 0x7f090295

    const v4, 0x7f090294

    const/4 v5, 0x0

    .line 55
    const/4 v3, -0x1

    if-eq p2, v3, :cond_0

    .line 95
    :goto_0
    return-void

    .line 57
    :cond_0
    invoke-static {}, Lcom/android/mms/category/PasswordManager;->getInstance()Lcom/android/mms/category/PasswordManager;

    move-result-object v2

    .line 58
    .local v2, pwMgr:Lcom/android/mms/category/PasswordManager;
    iget-object v3, p0, Lcom/android/mms/ui/ManagePasswordPreference;->mPasswdEditor:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, password:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/mms/ui/ManagePasswordPreference;->mConfirmPasswdEditor:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, confirmPassword:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/android/mms/category/PasswordManager;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 62
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 63
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/ManagePasswordPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 65
    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 66
    invoke-virtual {p0}, Lcom/android/mms/ui/ManagePasswordPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 68
    :cond_3
    invoke-virtual {v2, v1}, Lcom/android/mms/category/PasswordManager;->setPassword(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 69
    invoke-virtual {p0}, Lcom/android/mms/ui/ManagePasswordPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f090296

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 72
    :cond_4
    invoke-virtual {p0}, Lcom/android/mms/ui/ManagePasswordPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v7, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 76
    :cond_5
    iget-object v3, p0, Lcom/android/mms/ui/ManagePasswordPreference;->mOldPasswdEditor:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/mms/category/PasswordManager;->authenticate(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 77
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 78
    :cond_6
    invoke-virtual {p0}, Lcom/android/mms/ui/ManagePasswordPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 80
    :cond_7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 81
    invoke-virtual {p0}, Lcom/android/mms/ui/ManagePasswordPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 83
    :cond_8
    invoke-virtual {v2, v1}, Lcom/android/mms/category/PasswordManager;->setPassword(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 84
    invoke-virtual {p0}, Lcom/android/mms/ui/ManagePasswordPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f090297

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 87
    :cond_9
    invoke-virtual {p0}, Lcom/android/mms/ui/ManagePasswordPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v7, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 91
    :cond_a
    invoke-virtual {p0}, Lcom/android/mms/ui/ManagePasswordPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f090293

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method
