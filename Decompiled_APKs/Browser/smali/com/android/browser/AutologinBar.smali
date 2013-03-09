.class public Lcom/android/browser/AutologinBar;
.super Landroid/widget/LinearLayout;
.source "AutologinBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/browser/DeviceAccountLogin$AutoLoginCallback;


# instance fields
.field protected mAccountsAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mAutoLoginAccount:Landroid/widget/Spinner;

.field protected mAutoLoginCancel:Landroid/view/View;

.field protected mAutoLoginError:Landroid/widget/TextView;

.field protected mAutoLoginHandler:Lcom/android/browser/DeviceAccountLogin;

.field protected mAutoLoginLogin:Landroid/widget/Button;

.field protected mAutoLoginProgress:Landroid/widget/ProgressBar;

.field protected mTitleBar:Lcom/android/browser/TitleBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method


# virtual methods
.method hideAutoLogin(Z)V
    .locals 1
    .parameter "animate"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/browser/AutologinBar;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0, p1}, Lcom/android/browser/TitleBar;->hideAutoLogin(Z)V

    .line 135
    return-void
.end method

.method public loginFailed()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 139
    iget-object v0, p0, Lcom/android/browser/AutologinBar;->mAutoLoginAccount:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 140
    iget-object v0, p0, Lcom/android/browser/AutologinBar;->mAutoLoginLogin:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 141
    iget-object v0, p0, Lcom/android/browser/AutologinBar;->mAutoLoginProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/android/browser/AutologinBar;->mAutoLoginError:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 143
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 74
    iget-object v0, p0, Lcom/android/browser/AutologinBar;->mAutoLoginCancel:Landroid/view/View;

    if-ne v0, p1, :cond_2

    .line 75
    iget-object v0, p0, Lcom/android/browser/AutologinBar;->mAutoLoginHandler:Lcom/android/browser/DeviceAccountLogin;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/browser/AutologinBar;->mAutoLoginHandler:Lcom/android/browser/DeviceAccountLogin;

    invoke-virtual {v0}, Lcom/android/browser/DeviceAccountLogin;->cancel()V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/AutologinBar;->mAutoLoginHandler:Lcom/android/browser/DeviceAccountLogin;

    .line 79
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/browser/AutologinBar;->hideAutoLogin(Z)V

    .line 90
    :cond_1
    :goto_0
    return-void

    .line 80
    :cond_2
    iget-object v0, p0, Lcom/android/browser/AutologinBar;->mAutoLoginLogin:Landroid/widget/Button;

    if-ne v0, p1, :cond_1

    .line 81
    iget-object v0, p0, Lcom/android/browser/AutologinBar;->mAutoLoginHandler:Lcom/android/browser/DeviceAccountLogin;

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/android/browser/AutologinBar;->mAutoLoginAccount:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 83
    iget-object v0, p0, Lcom/android/browser/AutologinBar;->mAutoLoginLogin:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 84
    iget-object v0, p0, Lcom/android/browser/AutologinBar;->mAutoLoginProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Lcom/android/browser/AutologinBar;->mAutoLoginError:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lcom/android/browser/AutologinBar;->mAutoLoginHandler:Lcom/android/browser/DeviceAccountLogin;

    iget-object v1, p0, Lcom/android/browser/AutologinBar;->mAutoLoginAccount:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Lcom/android/browser/DeviceAccountLogin;->login(ILcom/android/browser/DeviceAccountLogin$AutoLoginCallback;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 59
    const v0, 0x7f0d0076

    invoke-virtual {p0, v0}, Lcom/android/browser/AutologinBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/browser/AutologinBar;->mAutoLoginAccount:Landroid/widget/Spinner;

    .line 60
    const v0, 0x7f0d0079

    invoke-virtual {p0, v0}, Lcom/android/browser/AutologinBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/browser/AutologinBar;->mAutoLoginLogin:Landroid/widget/Button;

    .line 61
    iget-object v0, p0, Lcom/android/browser/AutologinBar;->mAutoLoginLogin:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    const v0, 0x7f0d0078

    invoke-virtual {p0, v0}, Lcom/android/browser/AutologinBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/browser/AutologinBar;->mAutoLoginProgress:Landroid/widget/ProgressBar;

    .line 63
    const v0, 0x7f0d007a

    invoke-virtual {p0, v0}, Lcom/android/browser/AutologinBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/browser/AutologinBar;->mAutoLoginError:Landroid/widget/TextView;

    .line 64
    const v0, 0x7f0d0077

    invoke-virtual {p0, v0}, Lcom/android/browser/AutologinBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/AutologinBar;->mAutoLoginCancel:Landroid/view/View;

    .line 65
    iget-object v0, p0, Lcom/android/browser/AutologinBar;->mAutoLoginCancel:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    return-void
.end method

.method public setTitleBar(Lcom/android/browser/TitleBar;)V
    .locals 0
    .parameter "titleBar"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/browser/AutologinBar;->mTitleBar:Lcom/android/browser/TitleBar;

    .line 70
    return-void
.end method

.method showAutoLogin(Z)V
    .locals 1
    .parameter "animate"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/browser/AutologinBar;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0, p1}, Lcom/android/browser/TitleBar;->showAutoLogin(Z)V

    .line 131
    return-void
.end method

.method public updateAutoLogin(Lcom/android/browser/Tab;Z)V
    .locals 8
    .parameter "tab"
    .parameter "animate"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 93
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getDeviceAccountLogin()Lcom/android/browser/DeviceAccountLogin;

    move-result-object v0

    .line 94
    .local v0, login:Lcom/android/browser/DeviceAccountLogin;
    if-eqz v0, :cond_0

    .line 95
    iput-object v0, p0, Lcom/android/browser/AutologinBar;->mAutoLoginHandler:Lcom/android/browser/DeviceAccountLogin;

    .line 96
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/android/browser/AutologinBar;->mContext:Landroid/content/Context;

    const v3, 0x103006e

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 98
    .local v1, wrapper:Landroid/view/ContextThemeWrapper;
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x1090008

    invoke-virtual {v0}, Lcom/android/browser/DeviceAccountLogin;->getAccountNames()[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/android/browser/AutologinBar;->mAccountsAdapter:Landroid/widget/ArrayAdapter;

    .line 100
    iget-object v2, p0, Lcom/android/browser/AutologinBar;->mAccountsAdapter:Landroid/widget/ArrayAdapter;

    const v3, 0x1090009

    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 102
    iget-object v2, p0, Lcom/android/browser/AutologinBar;->mAutoLoginAccount:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/android/browser/AutologinBar;->mAccountsAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 103
    iget-object v2, p0, Lcom/android/browser/AutologinBar;->mAutoLoginAccount:Landroid/widget/Spinner;

    invoke-virtual {v2, v5}, Landroid/widget/Spinner;->setSelection(I)V

    .line 104
    iget-object v2, p0, Lcom/android/browser/AutologinBar;->mAutoLoginAccount:Landroid/widget/Spinner;

    invoke-virtual {v2, v6}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 105
    iget-object v2, p0, Lcom/android/browser/AutologinBar;->mAutoLoginLogin:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 106
    iget-object v2, p0, Lcom/android/browser/AutologinBar;->mAutoLoginProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 107
    iget-object v2, p0, Lcom/android/browser/AutologinBar;->mAutoLoginError:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    invoke-virtual {v0}, Lcom/android/browser/DeviceAccountLogin;->getState()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 121
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 110
    :pswitch_0
    iget-object v2, p0, Lcom/android/browser/AutologinBar;->mAutoLoginAccount:Landroid/widget/Spinner;

    invoke-virtual {v2, v5}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 111
    iget-object v2, p0, Lcom/android/browser/AutologinBar;->mAutoLoginLogin:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 112
    iget-object v2, p0, Lcom/android/browser/AutologinBar;->mAutoLoginProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 123
    :goto_0
    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/android/browser/AutologinBar;->showAutoLogin(Z)V

    .line 127
    .end local v1           #wrapper:Landroid/view/ContextThemeWrapper;
    :goto_1
    return-void

    .line 115
    .restart local v1       #wrapper:Landroid/view/ContextThemeWrapper;
    :pswitch_2
    iget-object v2, p0, Lcom/android/browser/AutologinBar;->mAutoLoginProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 116
    iget-object v2, p0, Lcom/android/browser/AutologinBar;->mAutoLoginError:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 125
    .end local v1           #wrapper:Landroid/view/ContextThemeWrapper;
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/browser/AutologinBar;->hideAutoLogin(Z)V

    goto :goto_1

    .line 108
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
