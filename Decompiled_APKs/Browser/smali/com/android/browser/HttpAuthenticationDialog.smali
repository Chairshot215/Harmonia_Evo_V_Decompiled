.class public Lcom/android/browser/HttpAuthenticationDialog;
.super Ljava/lang/Object;
.source "HttpAuthenticationDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/HttpAuthenticationDialog$CancelListener;,
        Lcom/android/browser/HttpAuthenticationDialog$OkListener;
    }
.end annotation


# instance fields
.field private mCancelListener:Lcom/android/browser/HttpAuthenticationDialog$CancelListener;

.field private final mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private final mHost:Ljava/lang/String;

.field private mOkListener:Lcom/android/browser/HttpAuthenticationDialog$OkListener;

.field private mPasswordView:Landroid/widget/TextView;

.field private final mRealm:Ljava/lang/String;

.field private mUsernameView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "host"
    .parameter "realm"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/browser/HttpAuthenticationDialog;->mContext:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/android/browser/HttpAuthenticationDialog;->mHost:Ljava/lang/String;

    .line 52
    iput-object p3, p0, Lcom/android/browser/HttpAuthenticationDialog;->mRealm:Ljava/lang/String;

    .line 53
    invoke-direct {p0}, Lcom/android/browser/HttpAuthenticationDialog;->createDialog()V

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/HttpAuthenticationDialog;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/browser/HttpAuthenticationDialog;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/browser/HttpAuthenticationDialog;)Lcom/android/browser/HttpAuthenticationDialog$CancelListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/browser/HttpAuthenticationDialog;->mCancelListener:Lcom/android/browser/HttpAuthenticationDialog$CancelListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/browser/HttpAuthenticationDialog;)Lcom/android/browser/HttpAuthenticationDialog$OkListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/browser/HttpAuthenticationDialog;->mOkListener:Lcom/android/browser/HttpAuthenticationDialog$OkListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/browser/HttpAuthenticationDialog;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/browser/HttpAuthenticationDialog;->mHost:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/browser/HttpAuthenticationDialog;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/browser/HttpAuthenticationDialog;->mRealm:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/browser/HttpAuthenticationDialog;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/browser/HttpAuthenticationDialog;->getUsername()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/browser/HttpAuthenticationDialog;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/browser/HttpAuthenticationDialog;->getPassword()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createDialog()V
    .locals 6

    .prologue
    .line 111
    iget-object v3, p0, Lcom/android/browser/HttpAuthenticationDialog;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 112
    .local v0, factory:Landroid/view/LayoutInflater;
    const v3, 0x7f04001c

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 113
    .local v2, v:Landroid/view/View;
    const v3, 0x7f0d004f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/browser/HttpAuthenticationDialog;->mUsernameView:Landroid/widget/TextView;

    .line 114
    const v3, 0x7f0d0050

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/browser/HttpAuthenticationDialog;->mPasswordView:Landroid/widget/TextView;

    .line 115
    iget-object v3, p0, Lcom/android/browser/HttpAuthenticationDialog;->mPasswordView:Landroid/widget/TextView;

    new-instance v4, Lcom/android/browser/HttpAuthenticationDialog$1;

    invoke-direct {v4, p0}, Lcom/android/browser/HttpAuthenticationDialog$1;-><init>(Lcom/android/browser/HttpAuthenticationDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 126
    iget-object v3, p0, Lcom/android/browser/HttpAuthenticationDialog;->mContext:Landroid/content/Context;

    const v4, 0x7f0c000c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s1"

    iget-object v5, p0, Lcom/android/browser/HttpAuthenticationDialog;->mHost:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s2"

    iget-object v5, p0, Lcom/android/browser/HttpAuthenticationDialog;->mRealm:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, title:Ljava/lang/String;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/browser/HttpAuthenticationDialog;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1080027

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0c000f

    new-instance v5, Lcom/android/browser/HttpAuthenticationDialog$4;

    invoke-direct {v5, p0}, Lcom/android/browser/HttpAuthenticationDialog$4;-><init>(Lcom/android/browser/HttpAuthenticationDialog;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0c0011

    new-instance v5, Lcom/android/browser/HttpAuthenticationDialog$3;

    invoke-direct {v5, p0}, Lcom/android/browser/HttpAuthenticationDialog$3;-><init>(Lcom/android/browser/HttpAuthenticationDialog;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/browser/HttpAuthenticationDialog$2;

    invoke-direct {v4, p0}, Lcom/android/browser/HttpAuthenticationDialog$2;-><init>(Lcom/android/browser/HttpAuthenticationDialog;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/browser/HttpAuthenticationDialog;->mDialog:Landroid/app/AlertDialog;

    .line 150
    iget-object v3, p0, Lcom/android/browser/HttpAuthenticationDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 151
    return-void
.end method

.method private getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/browser/HttpAuthenticationDialog;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/browser/HttpAuthenticationDialog;->mUsernameView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public reshow()V
    .locals 4

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/browser/HttpAuthenticationDialog;->getUsername()Ljava/lang/String;

    move-result-object v2

    .line 92
    .local v2, username:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/browser/HttpAuthenticationDialog;->getPassword()Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, password:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/browser/HttpAuthenticationDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v0

    .line 94
    .local v0, focusId:I
    iget-object v3, p0, Lcom/android/browser/HttpAuthenticationDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 95
    invoke-direct {p0}, Lcom/android/browser/HttpAuthenticationDialog;->createDialog()V

    .line 96
    iget-object v3, p0, Lcom/android/browser/HttpAuthenticationDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 97
    if-eqz v2, :cond_0

    .line 98
    iget-object v3, p0, Lcom/android/browser/HttpAuthenticationDialog;->mUsernameView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    :cond_0
    if-eqz v1, :cond_1

    .line 101
    iget-object v3, p0, Lcom/android/browser/HttpAuthenticationDialog;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    :cond_1
    if-eqz v0, :cond_2

    .line 104
    iget-object v3, p0, Lcom/android/browser/HttpAuthenticationDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_2
    iget-object v3, p0, Lcom/android/browser/HttpAuthenticationDialog;->mUsernameView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->requestFocus()Z

    goto :goto_0
.end method

.method public setCancelListener(Lcom/android/browser/HttpAuthenticationDialog$CancelListener;)V
    .locals 0
    .parameter "cancelListener"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/browser/HttpAuthenticationDialog;->mCancelListener:Lcom/android/browser/HttpAuthenticationDialog$CancelListener;

    .line 77
    return-void
.end method

.method public setOkListener(Lcom/android/browser/HttpAuthenticationDialog$OkListener;)V
    .locals 0
    .parameter "okListener"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/browser/HttpAuthenticationDialog;->mOkListener:Lcom/android/browser/HttpAuthenticationDialog$OkListener;

    .line 69
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/browser/HttpAuthenticationDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 84
    iget-object v0, p0, Lcom/android/browser/HttpAuthenticationDialog;->mUsernameView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 85
    return-void
.end method
