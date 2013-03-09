.class public Lcom/htc/store/activity/EntryActivity;
.super Lcom/htc/store/activity/BaseActivity;
.source "EntryActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/store/activity/EntryActivity$DownloadIconsTask;,
        Lcom/htc/store/activity/EntryActivity$DoSetupTask;,
        Lcom/htc/store/activity/EntryActivity$CheckPreconditionTask;
    }
.end annotation


# static fields
.field private static final ACTION_CHECK_NETWORK_TO_CALL_SETUP:I = 0x5

.field private static final ACTION_CHECK_NETWORK_TO_DOWNLOAD_IMAGES:I = 0x6

.field private static final ACTION_DOWNLOAD_IMAGES:I = 0x2

.field private static final ACTION_DO_SETUP:I = 0x1

.field private static final ACTION_END_INITIALIZATION:I = 0x3

.field public static final ACTION_ENTRY:Ljava/lang/String; = "com.htc.store.action.ENTRY"

.field private static final ACTION_NONE:I = 0x0

.field private static final ACTION_SHOW_ERROR:I = 0x4

.field private static final DIALOG_INITIALIZING:I = 0x64

.field public static final EXTRA_CHECK_PRECONDITION_ONLY:Ljava/lang/String; = "check_precondition"

.field public static final EXTRA_RELAUNCH:Ljava/lang/String; = "relaunch"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccessHelper:Lcom/htc/store/provider/AccessHelper;

.field private mActionOnResume:I

.field private mDownloadIconsTask:Lcom/htc/store/activity/EntryActivity$DownloadIconsTask;

.field private mRestHelper:Lcom/htc/store/module/rest/RestHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/htc/store/activity/EntryActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/store/activity/EntryActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/htc/store/activity/BaseActivity;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/store/activity/EntryActivity;->mActionOnResume:I

    .line 399
    return-void
.end method

.method static synthetic access$1000(Lcom/htc/store/activity/EntryActivity;)Lcom/htc/store/module/rest/RestHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/store/activity/EntryActivity;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/htc/store/activity/EntryActivity;Lcom/htc/store/module/rest/RestHelper;)Lcom/htc/store/module/rest/RestHelper;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/htc/store/activity/EntryActivity;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/htc/store/activity/EntryActivity;)Lcom/htc/store/provider/AccessHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/store/activity/EntryActivity;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/htc/store/activity/EntryActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/store/activity/EntryActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/htc/store/activity/EntryActivity;->sendBroadcastToCheckAppUpdate()V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/store/activity/EntryActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/htc/store/activity/EntryActivity;->clearAllItems(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/store/activity/EntryActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/htc/store/activity/EntryActivity;->doAccountChange(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/store/activity/EntryActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/htc/store/activity/EntryActivity;->doOperatorChange(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/store/activity/EntryActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/htc/store/activity/EntryActivity;->doLocaleChange(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/store/activity/EntryActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/htc/store/activity/EntryActivity;->doAction(I)V

    return-void
.end method

.method static synthetic access$902(Lcom/htc/store/activity/EntryActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput p1, p0, Lcom/htc/store/activity/EntryActivity;->mActionOnResume:I

    return p1
.end method

.method private clearAllItems(Z)V
    .locals 4
    .parameter "isClearMyActivityItems"

    .prologue
    .line 219
    sget-object v0, Lcom/htc/store/activity/EntryActivity;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "clearAllItems"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    iget-object v0, p0, Lcom/htc/store/activity/EntryActivity;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    invoke-virtual {v0}, Lcom/htc/store/provider/AccessHelper;->clearCarousel()I

    .line 221
    iget-object v0, p0, Lcom/htc/store/activity/EntryActivity;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    invoke-virtual {v0}, Lcom/htc/store/provider/AccessHelper;->clearPromo()I

    .line 222
    iget-object v0, p0, Lcom/htc/store/activity/EntryActivity;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    invoke-virtual {v0}, Lcom/htc/store/provider/AccessHelper;->clearFeatured()I

    .line 223
    iget-object v0, p0, Lcom/htc/store/activity/EntryActivity;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    invoke-virtual {v0}, Lcom/htc/store/provider/AccessHelper;->clearCategory()I

    .line 224
    iget-object v0, p0, Lcom/htc/store/activity/EntryActivity;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    invoke-virtual {v0}, Lcom/htc/store/provider/AccessHelper;->clearCategoryTTL()I

    .line 225
    iget-object v0, p0, Lcom/htc/store/activity/EntryActivity;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    invoke-virtual {v0}, Lcom/htc/store/provider/AccessHelper;->clearItem()I

    .line 226
    iget-object v0, p0, Lcom/htc/store/activity/EntryActivity;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    invoke-virtual {v0}, Lcom/htc/store/provider/AccessHelper;->clearItemTTL()I

    .line 227
    iget-object v0, p0, Lcom/htc/store/activity/EntryActivity;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    invoke-virtual {v0}, Lcom/htc/store/provider/AccessHelper;->clearComment()I

    .line 228
    iget-object v0, p0, Lcom/htc/store/activity/EntryActivity;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    invoke-virtual {v0}, Lcom/htc/store/provider/AccessHelper;->clearGetMoreMapping()I

    .line 229
    iget-object v0, p0, Lcom/htc/store/activity/EntryActivity;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    invoke-virtual {v0}, Lcom/htc/store/provider/AccessHelper;->clearGetMoreTTL()I

    .line 230
    iget-object v0, p0, Lcom/htc/store/activity/EntryActivity;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    invoke-virtual {v0}, Lcom/htc/store/provider/AccessHelper;->clearImageCacheMapping()I

    .line 231
    if-eqz p1, :cond_0

    .line 233
    iget-object v0, p0, Lcom/htc/store/activity/EntryActivity;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    invoke-virtual {v0}, Lcom/htc/store/provider/AccessHelper;->clearMyActivity()I

    .line 235
    :cond_0
    return-void
.end method

.method private doAccountChange(Ljava/lang/String;)V
    .locals 5
    .parameter "accountId"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 194
    sget-object v0, Lcom/htc/store/activity/EntryActivity;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Account changed: "

    aput-object v2, v1, v3

    aput-object p1, v1, v4

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    iget-object v0, p0, Lcom/htc/store/activity/BaseActivity;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    invoke-virtual {v0, p1}, Lcom/htc/store/module/PreferenceManager;->setAccountId(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/htc/store/activity/BaseActivity;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/store/module/PreferenceManager;->setSetupTTL(J)V

    .line 197
    invoke-direct {p0, v4}, Lcom/htc/store/activity/EntryActivity;->clearAllItems(Z)V

    .line 198
    iget-object v0, p0, Lcom/htc/store/activity/BaseActivity;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    invoke-virtual {v0, v3}, Lcom/htc/store/module/PreferenceManager;->setFirstSyncMyActivity(Z)V

    .line 199
    return-void
.end method

.method private doAction(I)V
    .locals 6
    .parameter "action"

    .prologue
    const/16 v4, 0x64

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 139
    packed-switch p1, :pswitch_data_0

    .line 191
    :goto_0
    return-void

    .line 141
    :pswitch_0
    new-instance v2, Lcom/htc/store/activity/EntryActivity$DoSetupTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/htc/store/activity/EntryActivity$DoSetupTask;-><init>(Lcom/htc/store/activity/EntryActivity;Lcom/htc/store/activity/EntryActivity$1;)V

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/htc/store/activity/EntryActivity$DoSetupTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 145
    :pswitch_1
    new-instance v2, Lcom/htc/store/activity/EntryActivity$DownloadIconsTask;

    invoke-direct {v2, p0}, Lcom/htc/store/activity/EntryActivity$DownloadIconsTask;-><init>(Lcom/htc/store/activity/EntryActivity;)V

    iput-object v2, p0, Lcom/htc/store/activity/EntryActivity;->mDownloadIconsTask:Lcom/htc/store/activity/EntryActivity$DownloadIconsTask;

    .line 146
    iget-object v2, p0, Lcom/htc/store/activity/EntryActivity;->mDownloadIconsTask:Lcom/htc/store/activity/EntryActivity$DownloadIconsTask;

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/htc/store/activity/EntryActivity$DownloadIconsTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 150
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/store/activity/EntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "check_precondition"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 151
    .local v0, checkPreconditionOnly:Z
    if-eqz v0, :cond_0

    .line 152
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/htc/store/activity/EntryActivity;->setResult(I)V

    .line 160
    :goto_1
    invoke-virtual {p0}, Lcom/htc/store/activity/EntryActivity;->finish()V

    goto :goto_0

    .line 154
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 155
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/htc/store/activity/EntryActivity;->getContext()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/htc/store/activity/landing/LandingTab;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 156
    invoke-virtual {p0}, Lcom/htc/store/activity/EntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 157
    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 158
    invoke-virtual {p0, v1}, Lcom/htc/store/activity/EntryActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 164
    .end local v0           #checkPreconditionOnly:Z
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_3
    invoke-virtual {p0}, Lcom/htc/store/activity/EntryActivity;->showCommonErrorDialogToFinish()V

    goto :goto_0

    .line 168
    :pswitch_4
    invoke-static {p0}, Lcom/htc/store/util/CommonUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 169
    iput v5, p0, Lcom/htc/store/activity/EntryActivity;->mActionOnResume:I

    .line 170
    invoke-virtual {p0, v4}, Lcom/htc/store/activity/EntryActivity;->showDialog(I)V

    .line 171
    invoke-direct {p0, v3}, Lcom/htc/store/activity/EntryActivity;->doAction(I)V

    goto :goto_0

    .line 173
    :cond_1
    sget-object v2, Lcom/htc/store/activity/EntryActivity;->TAG:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Network is not available."

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    const/4 v2, 0x5

    iput v2, p0, Lcom/htc/store/activity/EntryActivity;->mActionOnResume:I

    .line 175
    invoke-virtual {p0}, Lcom/htc/store/activity/EntryActivity;->showNoNetworkDialogCancelToFinish()V

    goto :goto_0

    .line 180
    :pswitch_5
    invoke-static {p0}, Lcom/htc/store/util/CommonUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 181
    iput v5, p0, Lcom/htc/store/activity/EntryActivity;->mActionOnResume:I

    .line 182
    invoke-virtual {p0, v4}, Lcom/htc/store/activity/EntryActivity;->showDialog(I)V

    .line 183
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/htc/store/activity/EntryActivity;->doAction(I)V

    goto/16 :goto_0

    .line 185
    :cond_2
    sget-object v2, Lcom/htc/store/activity/EntryActivity;->TAG:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Network is not available."

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    const/4 v2, 0x6

    iput v2, p0, Lcom/htc/store/activity/EntryActivity;->mActionOnResume:I

    .line 187
    invoke-virtual {p0}, Lcom/htc/store/activity/EntryActivity;->showNoNetworkDialogCancelToFinish()V

    goto/16 :goto_0

    .line 139
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private doLocaleChange(Ljava/lang/String;)V
    .locals 4
    .parameter "locale"

    .prologue
    const/4 v3, 0x0

    .line 212
    sget-object v0, Lcom/htc/store/activity/EntryActivity;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Locale changed: "

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    iget-object v0, p0, Lcom/htc/store/activity/BaseActivity;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    invoke-virtual {v0, p1}, Lcom/htc/store/module/PreferenceManager;->setLocale(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/htc/store/activity/BaseActivity;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/store/module/PreferenceManager;->setSetupTTL(J)V

    .line 215
    invoke-direct {p0, v3}, Lcom/htc/store/activity/EntryActivity;->clearAllItems(Z)V

    .line 216
    return-void
.end method

.method private doOperatorChange(Ljava/lang/String;)V
    .locals 6
    .parameter "operator"

    .prologue
    const-wide/16 v4, -0x2

    .line 202
    sget-object v0, Lcom/htc/store/activity/EntryActivity;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Operator changed: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    iget-object v0, p0, Lcom/htc/store/activity/BaseActivity;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    invoke-virtual {v0, p1}, Lcom/htc/store/module/PreferenceManager;->setOperator(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/htc/store/activity/BaseActivity;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/store/module/PreferenceManager;->setSetupTTL(J)V

    .line 205
    iget-object v0, p0, Lcom/htc/store/activity/EntryActivity;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    invoke-virtual {v0}, Lcom/htc/store/provider/AccessHelper;->clearCarousel()I

    .line 206
    iget-object v0, p0, Lcom/htc/store/activity/EntryActivity;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    invoke-virtual {v0, v4, v5}, Lcom/htc/store/provider/AccessHelper;->removePromoByCategoryId(J)I

    .line 207
    iget-object v0, p0, Lcom/htc/store/activity/EntryActivity;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    invoke-virtual {v0, v4, v5}, Lcom/htc/store/provider/AccessHelper;->removeFeaturedByCategoryId(J)I

    .line 208
    iget-object v0, p0, Lcom/htc/store/activity/EntryActivity;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    invoke-virtual {v0, v4, v5}, Lcom/htc/store/provider/AccessHelper;->removeCategoriesByParentId(J)I

    .line 209
    return-void
.end method

.method private sendBroadcastToCheckAppUpdate()V
    .locals 3

    .prologue
    .line 238
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.updater.FOTA_SETTING_INDIVIDUAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 239
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "package name"

    const-string v2, "HtcStore"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    const-string v1, "show download dialog"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 241
    const-string v1, "update type"

    const-string v2, "individual_appupdate"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    invoke-virtual {p0, v0}, Lcom/htc/store/activity/EntryActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 243
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 45
    iput-boolean v2, p0, Lcom/htc/store/activity/BaseActivity;->mCheckAccountOnResume:Z

    .line 46
    iput-boolean v2, p0, Lcom/htc/store/activity/BaseActivity;->mCheckLocaleOnResume:Z

    .line 47
    invoke-super {p0, p1}, Lcom/htc/store/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v0, 0x7f030023

    invoke-virtual {p0, v0}, Lcom/htc/store/activity/EntryActivity;->setContentView(I)V

    .line 49
    new-instance v0, Lcom/htc/store/provider/AccessHelper;

    invoke-virtual {p0}, Lcom/htc/store/activity/EntryActivity;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/store/provider/AccessHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/store/activity/EntryActivity;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    .line 50
    new-instance v0, Lcom/htc/store/activity/EntryActivity$CheckPreconditionTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/store/activity/EntryActivity$CheckPreconditionTask;-><init>(Lcom/htc/store/activity/EntryActivity;Lcom/htc/store/activity/EntryActivity$1;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/htc/store/activity/EntryActivity$CheckPreconditionTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 51
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .parameter "id"
    .parameter "args"

    .prologue
    .line 109
    const/4 v0, 0x0

    .line 110
    .local v0, dialog:Landroid/app/Dialog;
    packed-switch p1, :pswitch_data_0

    .line 132
    :goto_0
    if-nez v0, :cond_0

    .line 133
    invoke-super {p0, p1, p2}, Lcom/htc/store/activity/BaseActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 135
    :cond_0
    return-object v0

    .line 112
    :pswitch_0
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 113
    .local v1, progressDiaglog:Landroid/app/ProgressDialog;
    const v2, 0x7f0a0040

    invoke-virtual {p0, v2}, Lcom/htc/store/activity/EntryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 114
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 115
    new-instance v2, Lcom/htc/store/activity/EntryActivity$1;

    invoke-direct {v2, p0}, Lcom/htc/store/activity/EntryActivity$1;-><init>(Lcom/htc/store/activity/EntryActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 120
    new-instance v2, Lcom/htc/store/activity/EntryActivity$2;

    invoke-direct {v2, p0}, Lcom/htc/store/activity/EntryActivity$2;-><init>(Lcom/htc/store/activity/EntryActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 129
    move-object v0, v1

    goto :goto_0

    .line 110
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/htc/store/activity/EntryActivity;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/htc/store/activity/EntryActivity;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;

    invoke-virtual {v0}, Lcom/htc/store/module/rest/RestHelper;->destroy()V

    .line 103
    :cond_0
    invoke-super {p0}, Lcom/htc/store/activity/BaseActivity;->onDestroy()V

    .line 104
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/htc/store/activity/EntryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 95
    invoke-super {p0}, Lcom/htc/store/activity/BaseActivity;->onPause()V

    .line 96
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 55
    sget-object v1, Lcom/htc/store/activity/EntryActivity;->TAG:Ljava/lang/String;

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "onResume"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    invoke-super {p0}, Lcom/htc/store/activity/BaseActivity;->onResume()V

    .line 57
    invoke-virtual {p0}, Lcom/htc/store/activity/EntryActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 58
    iget-boolean v1, p0, Lcom/htc/store/activity/BaseActivity;->mFirstCreate:Z

    if-nez v1, :cond_5

    .line 59
    iget-boolean v1, p0, Lcom/htc/store/activity/BaseActivity;->mIsInternalStorageLow:Z

    if-nez v1, :cond_1

    .line 60
    sget-object v1, Lcom/htc/store/activity/EntryActivity;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "mActionOnResume: "

    aput-object v3, v2, v4

    iget v3, p0, Lcom/htc/store/activity/EntryActivity;->mActionOnResume:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    iget v1, p0, Lcom/htc/store/activity/EntryActivity;->mActionOnResume:I

    if-eqz v1, :cond_3

    .line 62
    iget v0, p0, Lcom/htc/store/activity/EntryActivity;->mActionOnResume:I

    .line 63
    .local v0, action:I
    iget v1, p0, Lcom/htc/store/activity/EntryActivity;->mActionOnResume:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/htc/store/activity/EntryActivity;->mActionOnResume:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    .line 65
    iput v4, p0, Lcom/htc/store/activity/EntryActivity;->mActionOnResume:I

    .line 67
    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 68
    sget-object v1, Lcom/htc/store/activity/EntryActivity;->TAG:Ljava/lang/String;

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "Check precondition again."

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    new-instance v1, Lcom/htc/store/activity/EntryActivity$CheckPreconditionTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/store/activity/EntryActivity$CheckPreconditionTask;-><init>(Lcom/htc/store/activity/EntryActivity;Lcom/htc/store/activity/EntryActivity$1;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/htc/store/activity/EntryActivity$CheckPreconditionTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 86
    .end local v0           #action:I
    :cond_1
    :goto_0
    return-void

    .line 71
    .restart local v0       #action:I
    :cond_2
    invoke-direct {p0, v0}, Lcom/htc/store/activity/EntryActivity;->doAction(I)V

    goto :goto_0

    .line 74
    .end local v0           #action:I
    :cond_3
    iget-object v1, p0, Lcom/htc/store/activity/EntryActivity;->mDownloadIconsTask:Lcom/htc/store/activity/EntryActivity$DownloadIconsTask;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/htc/store/activity/EntryActivity;->mDownloadIconsTask:Lcom/htc/store/activity/EntryActivity$DownloadIconsTask;

    invoke-virtual {v1}, Lcom/htc/store/activity/EntryActivity$DownloadIconsTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v1, v2, :cond_4

    .line 76
    sget-object v1, Lcom/htc/store/activity/EntryActivity;->TAG:Ljava/lang/String;

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "mDownloadIconsTask is executing"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 78
    :cond_4
    sget-object v1, Lcom/htc/store/activity/EntryActivity;->TAG:Ljava/lang/String;

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "Why action is none?"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    invoke-virtual {p0}, Lcom/htc/store/activity/EntryActivity;->finish()V

    goto :goto_0

    .line 84
    :cond_5
    iput-boolean v4, p0, Lcom/htc/store/activity/BaseActivity;->mFirstCreate:Z

    goto :goto_0
.end method
