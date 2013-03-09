.class Lcom/android/settings/wifi/WifiDialog;
.super Lcom/htc/widget/HtcAlertDialog;
.source "WifiDialog.java"

# interfaces
.implements Lcom/android/settings/wifi/WifiConfigUiBase;


# static fields
.field static final BUTTON_FORGET:I = -0x3

.field static final BUTTON_SUBMIT:I = -0x1

.field public static final MODE_CONFIGURE:I = 0x1

.field public static final MODE_ERROR:I = 0x3

.field public static final MODE_INFO:I = 0x0

.field public static final MODE_INVALID_PASSWORD:I = 0x4

.field public static final MODE_RETRY_PASSWORD:I = 0x2


# instance fields
.field private final mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

.field private mController:Lcom/android/settings/wifi/WifiConfigController;

.field private final mEdit:I

.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mSubmitBtnResId:I

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;I)V
    .locals 1
    .parameter "context"
    .parameter "listener"
    .parameter "accessPoint"
    .parameter "edit"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcAlertDialog;-><init>(Landroid/content/Context;)V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/wifi/WifiDialog;->mSubmitBtnResId:I

    .line 57
    iput p4, p0, Lcom/android/settings/wifi/WifiDialog;->mEdit:I

    .line 58
    iput-object p2, p0, Lcom/android/settings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 59
    iput-object p3, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 60
    return-void
.end method


# virtual methods
.method public getCancelButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 95
    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public getController()Lcom/android/settings/wifi/WifiConfigController;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mController:Lcom/android/settings/wifi/WifiConfigController;

    return-object v0
.end method

.method public getEdit()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/android/settings/wifi/WifiDialog;->mEdit:I

    return v0
.end method

.method public getForgetButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 90
    const/4 v0, -0x3

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public getSubmitButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 85
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public isCWRegisterBtn()Z
    .locals 2

    .prologue
    .line 121
    iget v0, p0, Lcom/android/settings/wifi/WifiDialog;->mSubmitBtnResId:I

    const v1, 0x7f0c0534

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCWUnRegisterBtn()Z
    .locals 2

    .prologue
    .line 125
    iget v0, p0, Lcom/android/settings/wifi/WifiDialog;->mSubmitBtnResId:I

    const v1, 0x7f0c0535

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEdit()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 80
    iget v1, p0, Lcom/android/settings/wifi/WifiDialog;->mEdit:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04009f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    .line 70
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiDialog;->setView(Landroid/view/View;)V

    .line 71
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiDialog;->setInverseBackgroundForced(Z)V

    .line 72
    new-instance v0, Lcom/android/settings/wifi/WifiConfigController;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v3, p0, Lcom/android/settings/wifi/WifiDialog;->mEdit:I

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/settings/wifi/WifiConfigController;-><init>(Lcom/android/settings/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/settings/wifi/AccessPoint;I)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mController:Lcom/android/settings/wifi/WifiConfigController;

    .line 73
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 75
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mController:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    .line 76
    return-void
.end method

.method public setCancelButton(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 110
    const/4 v0, -0x2

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/settings/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 111
    return-void
.end method

.method public setForgetButton(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 105
    const/4 v0, -0x3

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/settings/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 106
    return-void
.end method

.method public setSubmitButton(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiDialog;->setSubmitButton(Ljava/lang/CharSequence;)V

    .line 117
    iput p1, p0, Lcom/android/settings/wifi/WifiDialog;->mSubmitBtnResId:I

    .line 118
    return-void
.end method

.method public setSubmitButton(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 100
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/settings/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 101
    return-void
.end method
