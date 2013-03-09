.class public Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;
.super Ljava/lang/Object;
.source "WifiConfigUiForSetupWizardXL.java"

# interfaces
.implements Lcom/android/settings/wifi/WifiConfigUiBase;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL$FocusRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SetupWizard"


# instance fields
.field private mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

.field private final mActivity:Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;

.field private mCancelButton:Landroid/widget/Button;

.field private mConnectButton:Landroid/widget/Button;

.field private mController:Lcom/android/settings/wifi/WifiConfigController;

.field private mEdit:Z

.field private mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private final mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;Landroid/view/ViewGroup;Lcom/android/settings/wifi/AccessPoint;Z)V
    .locals 5
    .parameter "activity"
    .parameter "parent"
    .parameter "accessPoint"
    .parameter "edit"

    .prologue
    const/4 v1, 0x1

    .line 62
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->mHandler:Landroid/os/Handler;

    .line 63
    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->mActivity:Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;

    .line 64
    const v0, 0x7f080220

    invoke-virtual {p1, v0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    .line 65
    const v0, 0x7f08021f

    invoke-virtual {p1, v0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->mCancelButton:Landroid/widget/Button;

    .line 66
    iput-object p3, p0, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 67
    iput-boolean p4, p0, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->mEdit:Z

    .line 68
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->mInflater:Landroid/view/LayoutInflater;

    .line 70
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f04009e

    invoke-virtual {v0, v2, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->mView:Landroid/view/View;

    .line 71
    new-instance v2, Lcom/android/settings/wifi/WifiConfigController;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->mView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz p4, :cond_1

    move v0, v1

    :goto_0
    invoke-direct {v2, p0, v3, v4, v0}, Lcom/android/settings/wifi/WifiConfigController;-><init>(Lcom/android/settings/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/settings/wifi/AccessPoint;I)V

    iput-object v2, p0, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->mController:Lcom/android/settings/wifi/WifiConfigController;

    .line 74
    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 77
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->mView:Landroid/view/View;

    const v1, 0x7f0801ce

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 78
    const v0, 0x7f0801b2

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->requestFocusAndShowKeyboard(I)V

    .line 83
    :cond_0
    :goto_1
    return-void

    .line 71
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 79
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->mView:Landroid/view/View;

    const v1, 0x7f08019e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 81
    const v0, 0x7f0801c5

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->requestFocusAndShowKeyboard(I)V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;)Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->mActivity:Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;

    return-object v0
.end method


# virtual methods
.method public getAccessPoint()Lcom/android/settings/wifi/AccessPoint;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    return-object v0
.end method

.method public getCancelButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->mCancelButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->mActivity:Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;

    return-object v0
.end method

.method public getController()Lcom/android/settings/wifi/WifiConfigController;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->mController:Lcom/android/settings/wifi/WifiConfigController;

    return-object v0
.end method

.method public getForgetButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public getSubmitButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->mView:Landroid/view/View;

    return-object v0
.end method

.method public isEdit()Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->mEdit:Z

    return v0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter "view"
    .parameter "hasFocus"

    .prologue
    .line 210
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 211
    if-eqz p2, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL$FocusRunnable;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL$FocusRunnable;-><init>(Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 214
    :cond_0
    return-void
.end method

.method public requestFocusAndShowKeyboard(I)V
    .locals 7
    .parameter "editViewId"

    .prologue
    const/4 v6, 0x0

    .line 90
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->mView:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 91
    .local v1, viewToBeFocused:Landroid/view/View;
    if-nez v1, :cond_1

    .line 92
    const-string v2, "SetupWizard"

    const-string v3, "password field to be focused not found."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    instance-of v2, v1, Landroid/widget/EditText;

    if-nez v2, :cond_2

    .line 94
    const-string v2, "SetupWizard"

    const-string v3, "password field is not EditText"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 96
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 97
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v2, v1, v6}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0

    .line 100
    :cond_3
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 101
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    move-result v0

    .line 102
    .local v0, requestFocusResult:Z
    const-string v3, "SetupWizard"

    const-string v4, "Focus request  %s."

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/Object;

    if-eqz v0, :cond_4

    const-string v2, "successful"

    :goto_1
    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    if-nez v0, :cond_0

    .line 105
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto :goto_0

    .line 102
    :cond_4
    const-string v2, "failed"

    goto :goto_1
.end method

.method public setCancelButton(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->mCancelButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 165
    return-void
.end method

.method public setForgetButton(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 158
    return-void
.end method

.method public setSubmitButton(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->setSubmitButton(Ljava/lang/CharSequence;)V

    .line 171
    return-void
.end method

.method public setSubmitButton(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 153
    return-void
.end method

.method public setTitle(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 181
    const-string v0, "SetupWizard"

    const-string v1, "Ignoring setTitle"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "title"

    .prologue
    .line 186
    const-string v0, "SetupWizard"

    const-string v1, "Ignoring setTitle"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    return-void
.end method
