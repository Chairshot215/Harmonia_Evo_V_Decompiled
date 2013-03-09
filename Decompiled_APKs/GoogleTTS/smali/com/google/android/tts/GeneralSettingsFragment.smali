.class public Lcom/google/android/tts/GeneralSettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "GeneralSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/tts/GeneralSettingsFragment$LicenseFileLoader;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mSpinnerDlg:Landroid/app/ProgressDialog;

.field private mTextDlg:Landroid/app/AlertDialog;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 119
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/tts/GeneralSettingsFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/android/tts/GeneralSettingsFragment;->showOpenSourceLicenses()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/tts/GeneralSettingsFragment;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/google/android/tts/GeneralSettingsFragment;->showPageOfText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/tts/GeneralSettingsFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/android/tts/GeneralSettingsFragment;->showError()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/tts/GeneralSettingsFragment;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/tts/GeneralSettingsFragment;->mSpinnerDlg:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/android/tts/GeneralSettingsFragment;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/google/android/tts/GeneralSettingsFragment;->mSpinnerDlg:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/android/tts/GeneralSettingsFragment;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/tts/GeneralSettingsFragment;->mTextDlg:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$402(Lcom/google/android/tts/GeneralSettingsFragment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/google/android/tts/GeneralSettingsFragment;->mTextDlg:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$500(Lcom/google/android/tts/GeneralSettingsFragment;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/tts/GeneralSettingsFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/tts/GeneralSettingsFragment;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/tts/GeneralSettingsFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private showError()V
    .locals 3

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/tts/GeneralSettingsFragment;->mSpinnerDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/tts/GeneralSettingsFragment;->mSpinnerDlg:Landroid/app/ProgressDialog;

    .line 115
    iget-object v0, p0, Lcom/google/android/tts/GeneralSettingsFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f060006

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 117
    return-void
.end method

.method private showOpenSourceLicenses()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 68
    const v4, 0x7f060004

    invoke-virtual {p0, v4}, Lcom/google/android/tts/GeneralSettingsFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 69
    .local v3, title:Ljava/lang/CharSequence;
    const v4, 0x7f060005

    invoke-virtual {p0, v4}, Lcom/google/android/tts/GeneralSettingsFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 71
    .local v0, msg:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/google/android/tts/GeneralSettingsFragment;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-static {v4, v3, v0, v5, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    .line 72
    .local v1, pd:Landroid/app/ProgressDialog;
    invoke-virtual {v1, v6}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 73
    iput-object v1, p0, Lcom/google/android/tts/GeneralSettingsFragment;->mSpinnerDlg:Landroid/app/ProgressDialog;

    .line 76
    new-instance v2, Ljava/lang/Thread;

    new-instance v4, Lcom/google/android/tts/GeneralSettingsFragment$LicenseFileLoader;

    invoke-direct {v4, p0}, Lcom/google/android/tts/GeneralSettingsFragment$LicenseFileLoader;-><init>(Lcom/google/android/tts/GeneralSettingsFragment;)V

    invoke-direct {v2, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 77
    .local v2, thread:Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 78
    return-void
.end method

.method private showPageOfText(Ljava/lang/String;)V
    .locals 7
    .parameter "text"

    .prologue
    const/4 v1, 0x0

    .line 90
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/google/android/tts/GeneralSettingsFragment;->mContext:Landroid/content/Context;

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 91
    .local v6, builder:Landroid/app/AlertDialog$Builder;
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/tts/GeneralSettingsFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f060004

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 95
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/tts/GeneralSettingsFragment;->mTextDlg:Landroid/app/AlertDialog;

    .line 98
    iget-object v0, p0, Lcom/google/android/tts/GeneralSettingsFragment;->mWebView:Landroid/webkit/WebView;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v2, p1

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/google/android/tts/GeneralSettingsFragment;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/google/android/tts/GeneralSettingsFragment$3;

    invoke-direct {v2, p0}, Lcom/google/android/tts/GeneralSettingsFragment$3;-><init>(Lcom/google/android/tts/GeneralSettingsFragment;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 109
    iput-object v1, p0, Lcom/google/android/tts/GeneralSettingsFragment;->mWebView:Landroid/webkit/WebView;

    .line 110
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const/high16 v1, 0x7f03

    invoke-virtual {p0, v1}, Lcom/google/android/tts/GeneralSettingsFragment;->addPreferencesFromResource(I)V

    .line 40
    invoke-virtual {p0}, Lcom/google/android/tts/GeneralSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/tts/GeneralSettingsFragment;->mContext:Landroid/content/Context;

    .line 41
    const-string v1, "open_source_licenses"

    invoke-virtual {p0, v1}, Lcom/google/android/tts/GeneralSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 43
    .local v0, licensesPref:Landroid/preference/Preference;
    new-instance v1, Lcom/google/android/tts/GeneralSettingsFragment$1;

    invoke-direct {v1, p0}, Lcom/google/android/tts/GeneralSettingsFragment$1;-><init>(Lcom/google/android/tts/GeneralSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 51
    new-instance v1, Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/google/android/tts/GeneralSettingsFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/tts/GeneralSettingsFragment;->mWebView:Landroid/webkit/WebView;

    .line 53
    new-instance v1, Lcom/google/android/tts/GeneralSettingsFragment$2;

    invoke-direct {v1, p0}, Lcom/google/android/tts/GeneralSettingsFragment$2;-><init>(Lcom/google/android/tts/GeneralSettingsFragment;)V

    iput-object v1, p0, Lcom/google/android/tts/GeneralSettingsFragment;->mHandler:Landroid/os/Handler;

    .line 65
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 82
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 83
    iget-object v0, p0, Lcom/google/android/tts/GeneralSettingsFragment;->mTextDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/google/android/tts/GeneralSettingsFragment;->mTextDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 86
    :cond_0
    return-void
.end method
