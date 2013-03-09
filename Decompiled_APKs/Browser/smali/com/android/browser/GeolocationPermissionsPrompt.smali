.class public Lcom/android/browser/GeolocationPermissionsPrompt;
.super Landroid/widget/RelativeLayout;
.source "GeolocationPermissionsPrompt.java"


# instance fields
.field private mCallback:Landroid/webkit/GeolocationPermissions$Callback;

.field private mDontShareButton:Landroid/widget/Button;

.field private mMessage:Landroid/widget/TextView;

.field private mOrigin:Ljava/lang/String;

.field private mRemember:Landroid/widget/CheckBox;

.field private mShareButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/browser/GeolocationPermissionsPrompt;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/GeolocationPermissionsPrompt;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/browser/GeolocationPermissionsPrompt;->handleButtonClick(Z)V

    return-void
.end method

.method private handleButtonClick(Z)V
    .locals 6
    .parameter "allow"

    .prologue
    const/4 v5, 0x0

    .line 96
    invoke-virtual {p0}, Lcom/android/browser/GeolocationPermissionsPrompt;->hide()V

    .line 98
    iget-object v2, p0, Lcom/android/browser/GeolocationPermissionsPrompt;->mRemember:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 99
    .local v0, remember:Z
    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/android/browser/GeolocationPermissionsPrompt;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz p1, :cond_1

    const v2, 0x7f0c0142

    :goto_0
    const/4 v4, 0x1

    invoke-static {v3, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 105
    .local v1, toast:Landroid/widget/Toast;
    const/16 v2, 0x50

    invoke-virtual {v1, v2, v5, v5}, Landroid/widget/Toast;->setGravity(III)V

    .line 106
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 109
    .end local v1           #toast:Landroid/widget/Toast;
    :cond_0
    iget-object v2, p0, Lcom/android/browser/GeolocationPermissionsPrompt;->mCallback:Landroid/webkit/GeolocationPermissions$Callback;

    iget-object v3, p0, Lcom/android/browser/GeolocationPermissionsPrompt;->mOrigin:Ljava/lang/String;

    invoke-interface {v2, v3, p1, v0}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 110
    return-void

    .line 100
    :cond_1
    const v2, 0x7f0c0143

    goto :goto_0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 54
    const v0, 0x7f0d0048

    invoke-virtual {p0, v0}, Lcom/android/browser/GeolocationPermissionsPrompt;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/browser/GeolocationPermissionsPrompt;->mMessage:Landroid/widget/TextView;

    .line 55
    const v0, 0x7f0d004b

    invoke-virtual {p0, v0}, Lcom/android/browser/GeolocationPermissionsPrompt;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/browser/GeolocationPermissionsPrompt;->mShareButton:Landroid/widget/Button;

    .line 56
    const v0, 0x7f0d004a

    invoke-virtual {p0, v0}, Lcom/android/browser/GeolocationPermissionsPrompt;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/browser/GeolocationPermissionsPrompt;->mDontShareButton:Landroid/widget/Button;

    .line 57
    const v0, 0x7f0d0049

    invoke-virtual {p0, v0}, Lcom/android/browser/GeolocationPermissionsPrompt;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/browser/GeolocationPermissionsPrompt;->mRemember:Landroid/widget/CheckBox;

    .line 59
    iget-object v0, p0, Lcom/android/browser/GeolocationPermissionsPrompt;->mShareButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/browser/GeolocationPermissionsPrompt$1;

    invoke-direct {v1, p0}, Lcom/android/browser/GeolocationPermissionsPrompt$1;-><init>(Lcom/android/browser/GeolocationPermissionsPrompt;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v0, p0, Lcom/android/browser/GeolocationPermissionsPrompt;->mDontShareButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/browser/GeolocationPermissionsPrompt$2;

    invoke-direct {v1, p0}, Lcom/android/browser/GeolocationPermissionsPrompt$2;-><init>(Lcom/android/browser/GeolocationPermissionsPrompt;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    return-void
.end method

.method private setMessage(Ljava/lang/CharSequence;)V
    .locals 4
    .parameter "origin"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/browser/GeolocationPermissionsPrompt;->mMessage:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/browser/GeolocationPermissionsPrompt;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c013e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    .line 89
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/browser/GeolocationPermissionsPrompt;->setVisibility(I)V

    .line 90
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 49
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 50
    invoke-direct {p0}, Lcom/android/browser/GeolocationPermissionsPrompt;->init()V

    .line 51
    return-void
.end method

.method public show(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 3
    .parameter "origin"
    .parameter "callback"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/browser/GeolocationPermissionsPrompt;->mOrigin:Ljava/lang/String;

    .line 77
    iput-object p2, p0, Lcom/android/browser/GeolocationPermissionsPrompt;->mCallback:Landroid/webkit/GeolocationPermissions$Callback;

    .line 78
    iget-object v1, p0, Lcom/android/browser/GeolocationPermissionsPrompt;->mOrigin:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 79
    .local v0, uri:Landroid/net/Uri;
    const-string v1, "http"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/browser/GeolocationPermissionsPrompt;->mOrigin:Ljava/lang/String;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/browser/GeolocationPermissionsPrompt;->setMessage(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v1, p0, Lcom/android/browser/GeolocationPermissionsPrompt;->mRemember:Landroid/widget/CheckBox;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 82
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/browser/GeolocationPermissionsPrompt;->setVisibility(I)V

    .line 83
    return-void

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/android/browser/GeolocationPermissionsPrompt;->mOrigin:Ljava/lang/String;

    goto :goto_0
.end method
