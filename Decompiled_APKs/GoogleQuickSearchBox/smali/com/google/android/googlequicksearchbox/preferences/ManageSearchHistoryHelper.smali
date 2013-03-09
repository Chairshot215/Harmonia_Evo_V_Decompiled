.class public Lcom/google/android/googlequicksearchbox/preferences/ManageSearchHistoryHelper;
.super Landroid/app/ProgressDialog;
.source "ManageSearchHistoryHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private mCancelled:Z

.field private final mConfig:Lcom/google/android/googlequicksearchbox/Config;

.field private final mLoginHelper:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

.field private final mUrlHelper:Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/googlequicksearchbox/Config;Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;)V
    .locals 6
    .parameter "context"
    .parameter "config"
    .parameter "loginHelper"
    .parameter "urlHelper"

    .prologue
    const/4 v5, 0x1

    .line 49
    invoke-direct {p0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 50
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/preferences/ManageSearchHistoryHelper;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    .line 51
    iput-object p3, p0, Lcom/google/android/googlequicksearchbox/preferences/ManageSearchHistoryHelper;->mLoginHelper:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

    .line 52
    iput-object p4, p0, Lcom/google/android/googlequicksearchbox/preferences/ManageSearchHistoryHelper;->mUrlHelper:Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;

    .line 53
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/preferences/ManageSearchHistoryHelper;->mLoginHelper:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->getAccount()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, account:Ljava/lang/String;
    const v1, 0x7f0b0029

    invoke-virtual {p0, v1}, Lcom/google/android/googlequicksearchbox/preferences/ManageSearchHistoryHelper;->setTitle(I)V

    .line 55
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/preferences/ManageSearchHistoryHelper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b002a

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/googlequicksearchbox/preferences/ManageSearchHistoryHelper;->setMessage(Ljava/lang/CharSequence;)V

    .line 58
    invoke-virtual {p0, v5}, Lcom/google/android/googlequicksearchbox/preferences/ManageSearchHistoryHelper;->setIndeterminate(Z)V

    .line 59
    invoke-virtual {p0, v5}, Lcom/google/android/googlequicksearchbox/preferences/ManageSearchHistoryHelper;->setCancelable(Z)V

    .line 60
    invoke-virtual {p0, p0}, Lcom/google/android/googlequicksearchbox/preferences/ManageSearchHistoryHelper;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 61
    const/4 v1, -0x2

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/preferences/ManageSearchHistoryHelper;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b002b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/google/android/googlequicksearchbox/preferences/ManageSearchHistoryHelper$1;

    invoke-direct {v3, p0}, Lcom/google/android/googlequicksearchbox/preferences/ManageSearchHistoryHelper$1;-><init>(Lcom/google/android/googlequicksearchbox/preferences/ManageSearchHistoryHelper;)V

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/googlequicksearchbox/preferences/ManageSearchHistoryHelper;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/googlequicksearchbox/preferences/ManageSearchHistoryHelper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/preferences/ManageSearchHistoryHelper;->cancelled()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/googlequicksearchbox/preferences/ManageSearchHistoryHelper;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/preferences/ManageSearchHistoryHelper;->mCancelled:Z

    return v0
.end method

.method private cancelled()V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/preferences/ManageSearchHistoryHelper;->mCancelled:Z

    .line 92
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/preferences/ManageSearchHistoryHelper;->dismiss()V

    .line 93
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/preferences/ManageSearchHistoryHelper;->cancelled()V

    .line 97
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/preferences/ManageSearchHistoryHelper;->show()V

    .line 70
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/preferences/ManageSearchHistoryHelper;->mUrlHelper:Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/preferences/ManageSearchHistoryHelper;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/Config;->getManageSearchHistoryUrlFormat()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->formatUrl(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, manageSearchHistory:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/preferences/ManageSearchHistoryHelper;->mLoginHelper:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

    const-string v2, "hist"

    new-instance v3, Lcom/google/android/googlequicksearchbox/preferences/ManageSearchHistoryHelper$2;

    invoke-direct {v3, p0, v0}, Lcom/google/android/googlequicksearchbox/preferences/ManageSearchHistoryHelper$2;-><init>(Lcom/google/android/googlequicksearchbox/preferences/ManageSearchHistoryHelper;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->getGaiaLoginLink(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/googlequicksearchbox/util/Consumer;)V

    .line 88
    return-void
.end method
