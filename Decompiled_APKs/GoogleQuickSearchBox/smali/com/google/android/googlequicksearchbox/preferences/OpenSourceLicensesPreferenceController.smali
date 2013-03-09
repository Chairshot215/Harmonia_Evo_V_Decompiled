.class public Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;
.super Ljava/lang/Object;
.source "OpenSourceLicensesPreferenceController.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController$LicenseFileLoader;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mShowingOpenSourceLicences:Z

.field private mSpinnerDlg:Landroid/app/ProgressDialog;

.field private mTextDlg:Landroid/app/AlertDialog;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;->mContext:Landroid/content/Context;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;->showOpenSourceLicenses()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;->showPageOfText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;->showError()V

    return-void
.end method

.method static synthetic access$302(Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;->mShowingOpenSourceLicences:Z

    return p1
.end method

.method static synthetic access$400(Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;->mSpinnerDlg:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$402(Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;->mSpinnerDlg:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$500(Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;->mTextDlg:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$502(Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;->mTextDlg:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$600(Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getText(I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "resId"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private showError()V
    .locals 3

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;->mSpinnerDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;->mSpinnerDlg:Landroid/app/ProgressDialog;

    .line 172
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0043

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 174
    return-void
.end method

.method private showOpenSourceLicenses()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 119
    const v4, 0x7f0b0041

    invoke-direct {p0, v4}, Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 120
    .local v3, title:Ljava/lang/CharSequence;
    const v4, 0x7f0b0042

    invoke-direct {p0, v4}, Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 122
    .local v0, msg:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-static {v4, v3, v0, v5, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    .line 123
    .local v1, pd:Landroid/app/ProgressDialog;
    invoke-virtual {v1, v6}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 124
    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;->mSpinnerDlg:Landroid/app/ProgressDialog;

    .line 127
    new-instance v2, Ljava/lang/Thread;

    new-instance v4, Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController$LicenseFileLoader;

    invoke-direct {v4, p0}, Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController$LicenseFileLoader;-><init>(Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;)V

    invoke-direct {v2, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 128
    .local v2, thread:Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 129
    return-void
.end method

.method private showPageOfText(Ljava/lang/String;)V
    .locals 6
    .parameter "text"

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 132
    new-instance v0, Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;->mWebView:Landroid/webkit/WebView;

    .line 135
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0b0041

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;->mTextDlg:Landroid/app/AlertDialog;

    .line 141
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;->mTextDlg:Landroid/app/AlertDialog;

    new-instance v2, Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController$3;

    invoke-direct {v2, p0}, Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController$3;-><init>(Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 147
    iput-boolean v3, p0, Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;->mShowingOpenSourceLicences:Z

    .line 150
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;->mWebView:Landroid/webkit/WebView;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v2, p1

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController$4;

    invoke-direct {v2, p0}, Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController$4;-><init>(Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 166
    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;->mWebView:Landroid/webkit/WebView;

    .line 167
    return-void
.end method


# virtual methods
.method public filterPreference(Landroid/preference/Preference;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public handlePreference(Landroid/preference/Preference;)V
    .locals 1
    .parameter "p"

    .prologue
    .line 62
    new-instance v0, Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController$1;-><init>(Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 68
    return-void
.end method

.method public onCreateComplete(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 72
    new-instance v0, Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController$2;

    invoke-direct {v0, p0}, Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController$2;-><init>(Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;)V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;->mHandler:Landroid/os/Handler;

    .line 84
    if-eqz p1, :cond_0

    const-string v0, "SHOWING_OPEN_SOURCE_LICENSES"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;->showOpenSourceLicenses()V

    .line 88
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 92
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;->mSpinnerDlg:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;->mSpinnerDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;->mTextDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;->mTextDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 98
    :cond_1
    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;->mSpinnerDlg:Landroid/app/ProgressDialog;

    .line 99
    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;->mTextDlg:Landroid/app/AlertDialog;

    .line 100
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 104
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 218
    const-string v0, "SHOWING_OPEN_SOURCE_LICENSES"

    iget-boolean v1, p0, Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;->mShowingOpenSourceLicences:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 219
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 108
    return-void
.end method

.method public setScreen(Landroid/preference/PreferenceScreen;)V
    .locals 0
    .parameter "screen"

    .prologue
    .line 112
    return-void
.end method
