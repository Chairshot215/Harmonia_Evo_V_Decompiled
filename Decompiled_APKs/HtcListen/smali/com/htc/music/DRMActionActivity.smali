.class public Lcom/htc/music/DRMActionActivity;
.super Lcom/htc/music/widget/MusicListActivity;
.source "DRMActionActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/DRMActionActivity$DRMActionActivityBroadcastReceiver;,
        Lcom/htc/music/DRMActionActivity$UpdateDRMRunnable;
    }
.end annotation


# static fields
.field public static final DIALOG_DRM_CONFIRM:I = 0x3

.field public static final DIALOG_DRM_ERROR:I = 0x2

.field private static final DIALOG_FOR_DELETE:I = 0x1

.field private static final DIALOG_FOR_DOWNLOADING:I = 0x0

.field protected static final DISMISS:I = 0x3

.field protected static final INIT:I = 0x1

.field private static TAG:Ljava/lang/String; = null

.field protected static final UpdateUI:I = 0x2

.field public static handler:Landroid/os/Handler;


# instance fields
.field private final ACTION_DELETE:I

.field private final ACTION_DELETE_DISABLED:I

.field private final ACTION_DELETE_IDX:I

.field private final ACTION_PLAY:I

.field private final ACTION_PLAY_DISABLED:I

.field private final ACTION_PLAY_RENEW_IDX:I

.field private final ACTION_PROPERTY:I

.field private final ACTION_PROPERTY_DISABLED:I

.field private final ACTION_PROPERTY_IDX:I

.field private final ACTION_RENEW:I

.field private final ACTION_RENEW_DISABLED:I

.field private actionArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mActionAdapter:Landroid/widget/BaseAdapter;

.field private mActionList:Lcom/htc/widget/HtcListView;

.field private mDrmData:Ljava/lang/String;

.field private mDrmTitle:Ljava/lang/String;

.field public mHandler:Landroid/os/Handler;

.field private mLooper:Landroid/os/Looper;

.field private mMsg:Ljava/lang/String;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mScanListener:Landroid/content/BroadcastReceiver;

.field private mService:Lcom/htc/music/IMediaPlaybackService;

.field private mShowToast:Z

.field private mStatusListener:Landroid/content/BroadcastReceiver;

.field private mTargetToMain:Z

.field private mTrackId:Ljava/lang/String;

.field protected osc:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "[DRMActionActivity]"

    sput-object v0, Lcom/htc/music/DRMActionActivity;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/htc/music/DRMActionActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/htc/music/widget/MusicListActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/DRMActionActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    iput v1, p0, Lcom/htc/music/DRMActionActivity;->ACTION_PLAY:I

    iput v2, p0, Lcom/htc/music/DRMActionActivity;->ACTION_RENEW:I

    iput v3, p0, Lcom/htc/music/DRMActionActivity;->ACTION_PROPERTY:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/music/DRMActionActivity;->ACTION_DELETE:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/music/DRMActionActivity;->ACTION_PLAY_DISABLED:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/htc/music/DRMActionActivity;->ACTION_RENEW_DISABLED:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/htc/music/DRMActionActivity;->ACTION_PROPERTY_DISABLED:I

    const/4 v0, 0x7

    iput v0, p0, Lcom/htc/music/DRMActionActivity;->ACTION_DELETE_DISABLED:I

    iput v1, p0, Lcom/htc/music/DRMActionActivity;->ACTION_PLAY_RENEW_IDX:I

    iput v2, p0, Lcom/htc/music/DRMActionActivity;->ACTION_PROPERTY_IDX:I

    iput v3, p0, Lcom/htc/music/DRMActionActivity;->ACTION_DELETE_IDX:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/DRMActionActivity;->actionArray:Ljava/util/ArrayList;

    iput-boolean v2, p0, Lcom/htc/music/DRMActionActivity;->mShowToast:Z

    iput-boolean v1, p0, Lcom/htc/music/DRMActionActivity;->mTargetToMain:Z

    new-instance v0, Lcom/htc/music/DRMActionActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/music/DRMActionActivity$1;-><init>(Lcom/htc/music/DRMActionActivity;)V

    iput-object v0, p0, Lcom/htc/music/DRMActionActivity;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/htc/music/DRMActionActivity$4;

    invoke-direct {v0, p0}, Lcom/htc/music/DRMActionActivity$4;-><init>(Lcom/htc/music/DRMActionActivity;)V

    iput-object v0, p0, Lcom/htc/music/DRMActionActivity;->osc:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/htc/music/DRMActionActivity$5;

    invoke-direct {v0, p0}, Lcom/htc/music/DRMActionActivity$5;-><init>(Lcom/htc/music/DRMActionActivity;)V

    iput-object v0, p0, Lcom/htc/music/DRMActionActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/htc/music/DRMActionActivity$6;

    invoke-direct {v0, p0}, Lcom/htc/music/DRMActionActivity$6;-><init>(Lcom/htc/music/DRMActionActivity;)V

    iput-object v0, p0, Lcom/htc/music/DRMActionActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/htc/music/DRMActionActivity$13;

    invoke-direct {v0, p0}, Lcom/htc/music/DRMActionActivity$13;-><init>(Lcom/htc/music/DRMActionActivity;)V

    iput-object v0, p0, Lcom/htc/music/DRMActionActivity;->mActionAdapter:Landroid/widget/BaseAdapter;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/DRMActionActivity;)Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/DRMActionActivity;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/htc/music/DRMActionActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/htc/music/DRMActionActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/music/DRMActionActivity;->mShowToast:Z

    return p1
.end method

.method static synthetic access$400(Lcom/htc/music/DRMActionActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/DRMActionActivity;->actionArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/music/DRMActionActivity;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/DRMActionActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/music/DRMActionActivity;)Lcom/htc/music/IMediaPlaybackService;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/DRMActionActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    return-object v0
.end method

.method static synthetic access$602(Lcom/htc/music/DRMActionActivity;Lcom/htc/music/IMediaPlaybackService;)Lcom/htc/music/IMediaPlaybackService;
    .locals 0

    iput-object p1, p0, Lcom/htc/music/DRMActionActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    return-object p1
.end method

.method static synthetic access$700(Lcom/htc/music/DRMActionActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/music/DRMActionActivity;->showPoperty()V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/music/DRMActionActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/DRMActionActivity;->mTrackId:Ljava/lang/String;

    return-object v0
.end method

.method private isNetworkAvailable(Landroid/content/Context;)Z
    .locals 5

    const-string v3, "connectivity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1

    sget-object v3, Lcom/htc/music/DRMActionActivity;->TAG:Ljava/lang/String;

    const-string v4, "couldn\'t get connectivity manager"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v3, Lcom/htc/music/DRMActionActivity;->TAG:Ljava/lang/String;

    const-string v4, "network is not available"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-object v3, v2, v1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_2

    sget-object v3, Lcom/htc/music/DRMActionActivity;->TAG:Ljava/lang/String;

    const-string v4, "network is available"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private showPoperty()V
    .locals 1

    iget-object v0, p0, Lcom/htc/music/DRMActionActivity;->mActionList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    return-void
.end method


# virtual methods
.method UpdateInfo(I)V
    .locals 8

    const v7, 0x7f070089

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v2, -0x1

    if-ne p1, v2, :cond_2

    const-string v2, "DRMActionActivity"

    const-string v3, "DRM_STATUS_ERROR"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/music/DRMActionActivity;->actionArray:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/htc/music/DRMActionActivity;->actionArray:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/htc/music/DRMActionActivity;->mDrmTitle:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/htc/music/DRMActionActivity;->setTitle(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/music/DRMActionActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/music/DRMActionActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/music/DRMActionActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_1
    iget-object v2, p0, Lcom/htc/music/DRMActionActivity;->mActionList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v2}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    iput-boolean v6, p0, Lcom/htc/music/DRMActionActivity;->mShowToast:Z

    sget-object v2, Lcom/htc/music/DRMActionActivity;->TAG:Ljava/lang/String;

    const-string v3, "UpdateInfo Finish"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    if-nez p1, :cond_3

    iget-object v2, p0, Lcom/htc/music/DRMActionActivity;->actionArray:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/htc/music/DRMActionActivity;->actionArray:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/htc/music/DRMActionActivity;->actionArray:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const/4 v2, 0x4

    if-ne p1, v2, :cond_4

    iget-object v2, p0, Lcom/htc/music/DRMActionActivity;->actionArray:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/htc/music/DRMActionActivity;->actionArray:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v2, p0, Lcom/htc/music/DRMActionActivity;->mShowToast:Z

    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/music/DRMActionActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.htc"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x20c00e2

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x20c013c

    invoke-virtual {p0, v3}, Lcom/htc/music/DRMActionActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/htc/music/DRMActionActivity$2;

    invoke-direct {v4, p0}, Lcom/htc/music/DRMActionActivity$2;-><init>(Lcom/htc/music/DRMActionActivity;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v2, "DRMActionActivity"

    const-string v3, "getResourcesForApplication exception"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    if-ne p1, v5, :cond_5

    iget-object v2, p0, Lcom/htc/music/DRMActionActivity;->actionArray:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/htc/music/DRMActionActivity;->actionArray:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/htc/music/DRMActionActivity;->actionArray:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v2, p0, Lcom/htc/music/DRMActionActivity;->mShowToast:Z

    if-eqz v2, :cond_0

    const v2, 0x7f070087

    invoke-static {p0, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_5
    if-ne p1, v4, :cond_6

    iget-object v2, p0, Lcom/htc/music/DRMActionActivity;->actionArray:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/htc/music/DRMActionActivity;->actionArray:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/htc/music/DRMActionActivity;->actionArray:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v2, p0, Lcom/htc/music/DRMActionActivity;->mShowToast:Z

    if-eqz v2, :cond_0

    invoke-static {p0, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_6
    if-ne p1, v3, :cond_0

    const-string v2, "DRMActionActivity"

    const-string v3, "DRM_STATUS_CD_EXPIRED"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/music/DRMActionActivity;->actionArray:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/htc/music/DRMActionActivity;->actionArray:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v2, p0, Lcom/htc/music/DRMActionActivity;->mShowToast:Z

    if-eqz v2, :cond_0

    invoke-static {p0, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method

.method deleteDownload(Landroid/net/Uri;)V
    .locals 5

    :try_start_0
    iget-object v2, p0, Lcom/htc/music/DRMActionActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/DRMActionActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/DRMActionActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    invoke-virtual {p0}, Lcom/htc/music/DRMActionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/music/DRMActionActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.htc"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20c0162

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v2, Lcom/htc/music/DRMActionActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteDownload failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method init()I
    .locals 15

    const/4 v4, 0x0

    sget-object v0, Lcom/htc/music/DRMActionActivity;->TAG:Ljava/lang/String;

    const-string v1, "Init IN"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v12, -0x1

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "_data"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "title"

    aput-object v3, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/htc/music/DRMActionActivity;->mTrackId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    if-eqz v13, :cond_0

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    if-eqz v13, :cond_1

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    const/4 v13, 0x0

    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/DRMActionActivity;->finish()V

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Lcom/htc/music/DRMActionActivity;->actionArray:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/music/DRMActionActivity;->actionArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_3
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "_data"

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_6

    const-string v0, "content://drm/"

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {p0}, Lcom/htc/music/DRMActionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-static {p0, v14}, Lcom/htc/music/util/MusicUtils;->getDrmCursor(Landroid/content/Context;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "delivery_type"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const-string v0, "_data"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v0, "title"

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/DRMActionActivity;->mDrmTitle:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {p0, v14}, Lcom/htc/music/util/MusicUtils;->getDrmStatus(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v12

    packed-switch v12, :pswitch_data_0

    :cond_4
    :goto_1
    if-eqz v13, :cond_5

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    const/4 v13, 0x0

    :cond_5
    if-eqz v9, :cond_6

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_6
    sget-object v0, Lcom/htc/music/DRMActionActivity;->TAG:Ljava/lang/String;

    const-string v1, "Init Finish"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v12

    goto :goto_0

    :pswitch_0
    const-string v0, "_data"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/DRMActionActivity;->mDrmData:Ljava/lang/String;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/DRMActionActivity;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12

    const/4 v5, 0x0

    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v11}, Lcom/htc/music/DRMActionActivity;->setVolumeControlStream(I)V

    invoke-virtual {p0, v10}, Lcom/htc/music/DRMActionActivity;->requestWindowFeature(I)Z

    const/4 v7, 0x0

    if-eqz p1, :cond_3

    const-string v0, "track"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/DRMActionActivity;->mTrackId:Ljava/lang/String;

    const-string v0, "drmuri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "showToast"

    invoke-virtual {p1, v0, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/music/DRMActionActivity;->mShowToast:Z

    const-string v0, "drmtargettomain"

    invoke-virtual {p1, v0, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/music/DRMActionActivity;->mTargetToMain:Z

    :goto_0
    iget-object v0, p0, Lcom/htc/music/DRMActionActivity;->mTrackId:Ljava/lang/String;

    if-nez v0, :cond_1

    if-eqz v7, :cond_1

    new-array v2, v11, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v9

    const-string v0, "_data"

    aput-object v0, v2, v10

    const/4 v0, 0x2

    const-string v1, "title"

    aput-object v1, v2, v0

    const-string v3, "_data=?"

    new-array v4, v10, [Ljava/lang/String;

    aput-object v7, v4, v9

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/DRMActionActivity;->mTrackId:Ljava/lang/String;

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    iget-object v0, p0, Lcom/htc/music/DRMActionActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v0, :cond_2

    iput-object v5, p0, Lcom/htc/music/DRMActionActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/DRMActionActivity;->osc:Landroid/content/ServiceConnection;

    invoke-static {p0, v0, v1}, Lcom/htc/music/util/MusicUtils;->bindToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)Z

    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "file"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/music/DRMActionActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v8}, Lcom/htc/music/DRMActionActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.htc.music.metachanged"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/music/DRMActionActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v8}, Lcom/htc/music/DRMActionActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const v0, 0x7f030022

    invoke-virtual {p0, v0}, Lcom/htc/music/DRMActionActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/htc/music/DRMActionActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/DRMActionActivity;->mActionList:Lcom/htc/widget/HtcListView;

    iget-object v0, p0, Lcom/htc/music/DRMActionActivity;->mActionList:Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/htc/music/DRMActionActivity;->mActionAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/htc/music/DRMActionActivity;->mHandler:Landroid/os/Handler;

    sput-object v0, Lcom/htc/music/DRMActionActivity;->handler:Landroid/os/Handler;

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/htc/music/DRMActionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "track"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/DRMActionActivity;->mTrackId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/music/DRMActionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "drmuri"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/htc/music/DRMActionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "drmtargettomain"

    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/music/DRMActionActivity;->mTargetToMain:Z

    goto/16 :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 10

    const v9, 0x1040009

    const/4 v8, 0x0

    const v7, 0x1080027

    const v6, 0x1040013

    const/4 v5, 0x1

    packed-switch p1, :pswitch_data_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :pswitch_0
    new-instance v3, Landroid/app/ProgressDialog;

    invoke-direct {v3, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/htc/music/DRMActionActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/htc/music/DRMActionActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const v4, 0x7f0700a5

    invoke-virtual {p0, v4}, Lcom/htc/music/DRMActionActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/htc/music/DRMActionActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v3, p0, Lcom/htc/music/DRMActionActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v3, p0, Lcom/htc/music/DRMActionActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v4, Lcom/htc/music/DRMActionActivity$7;

    invoke-direct {v4, p0}, Lcom/htc/music/DRMActionActivity$7;-><init>(Lcom/htc/music/DRMActionActivity;)V

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v3, p0, Lcom/htc/music/DRMActionActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    goto :goto_0

    :pswitch_1
    new-array v2, v5, [I

    iget-object v3, p0, Lcom/htc/music/DRMActionActivity;->mTrackId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v8

    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsOnlyInternalStorage()Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x7f070011

    invoke-virtual {p0, v3}, Lcom/htc/music/DRMActionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/htc/music/DRMActionActivity;->mDrmTitle:Ljava/lang/String;

    aput-object v4, v3, v8

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x20c01fc

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/htc/music/DRMActionActivity$9;

    invoke-direct {v4, p0, v2}, Lcom/htc/music/DRMActionActivity$9;-><init>(Lcom/htc/music/DRMActionActivity;[I)V

    invoke-virtual {v3, v6, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/htc/music/DRMActionActivity$8;

    invoke-direct {v4, p0}, Lcom/htc/music/DRMActionActivity$8;-><init>(Lcom/htc/music/DRMActionActivity;)V

    invoke-virtual {v3, v9, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    goto :goto_0

    :cond_0
    const v3, 0x7f070010

    invoke-virtual {p0, v3}, Lcom/htc/music/DRMActionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :pswitch_2
    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f07005d

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/htc/music/DRMActionActivity$10;

    invoke-direct {v4, p0}, Lcom/htc/music/DRMActionActivity$10;-><init>(Lcom/htc/music/DRMActionActivity;)V

    invoke-virtual {v3, v6, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    goto/16 :goto_0

    :pswitch_3
    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/DRMActionActivity;->mMsg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/htc/music/DRMActionActivity$12;

    invoke-direct {v4, p0}, Lcom/htc/music/DRMActionActivity$12;-><init>(Lcom/htc/music/DRMActionActivity;)V

    invoke-virtual {v3, v6, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/htc/music/DRMActionActivity$11;

    invoke-direct {v4, p0}, Lcom/htc/music/DRMActionActivity$11;-><init>(Lcom/htc/music/DRMActionActivity;)V

    invoke-virtual {v3, v9, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/htc/music/DRMActionActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/DRMActionActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/music/DRMActionActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/DRMActionActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sget-object v0, Lcom/htc/music/DRMActionActivity;->TAG:Ljava/lang/String;

    const-string v1, "OnDestroy called"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/music/DRMActionActivity;->actionArray:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/DRMActionActivity;->actionArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/DRMActionActivity;->actionArray:Ljava/util/ArrayList;

    invoke-super {p0}, Lcom/htc/music/widget/MusicListActivity;->onDestroy()V

    return-void
.end method

.method protected onListItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/DRMActionActivity;->actionArray:Ljava/util/ArrayList;

    if-nez v13, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/DRMActionActivity;->actionArray:Ljava/util/ArrayList;

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v3, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/DRMActionActivity;->mTrackId:Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/htc/music/util/MusicUtils;->getTrack(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v13

    if-lez v13, :cond_2

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v13, "_data"

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/DRMActionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const/4 v14, 0x1

    invoke-static {v13, v12, v14}, Landroid/provider/DrmStore;->getDrmConstraint(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v4

    if-nez v4, :cond_4

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/music/DRMActionActivity;->mTargetToMain:Z

    if-eqz v13, :cond_3

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    new-array v15, v15, [I

    move-object/from16 v0, p0

    invoke-static {v0, v3, v13, v14, v15}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;ILcom/htc/music/NpCategory;[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    :try_start_1
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v13, "android.intent.action.VIEW"

    invoke-virtual {v8, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v8, v12}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/htc/music/DRMActionActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/DRMActionActivity;->finish()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v7, v8

    goto :goto_1

    :cond_4
    :try_start_3
    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/htc/music/util/MusicUtils;->getConstraintMessage(Landroid/content/Context;Landroid/provider/DrmStore$DrmConstraint;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/music/DRMActionActivity;->mMsg:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/DRMActionActivity;->mMsg:Ljava/lang/String;

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/music/DRMActionActivity;->mTargetToMain:Z

    if-eqz v13, :cond_6

    const/4 v13, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/music/DRMActionActivity;->showDialog(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v13

    :goto_2
    if-eqz v3, :cond_5

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    const/4 v3, 0x0

    :cond_5
    throw v13

    :cond_6
    :try_start_4
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    const-string v13, "android.intent.action.VIEW"

    invoke-virtual {v8, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v8, v12}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/htc/music/DRMActionActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/DRMActionActivity;->finish()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v7, v8

    goto :goto_1

    :cond_7
    :try_start_6
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/music/DRMActionActivity;->mTargetToMain:Z

    if-eqz v13, :cond_8

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    new-array v15, v15, [I

    move-object/from16 v0, p0

    invoke-static {v0, v3, v13, v14, v15}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;ILcom/htc/music/NpCategory;[I)V

    goto :goto_1

    :cond_8
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    const-string v13, "android.intent.action.VIEW"

    invoke-virtual {v8, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v8, v12}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/htc/music/DRMActionActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/DRMActionActivity;->finish()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object v7, v8

    goto/16 :goto_1

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/DRMActionActivity;->mDrmData:Ljava/lang/String;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/music/DRMActionActivity;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_a

    sget-object v13, Landroid/provider/DrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/DRMActionActivity;->mDrmData:Ljava/lang/String;

    const-class v15, Lcom/htc/music/DRMActionActivity$DRMActionActivityBroadcastReceiver;

    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14, v15}, Landroid/provider/DrmStore;->acquireRights(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    if-nez v12, :cond_9

    :try_start_8
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/DRMActionActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    const-string v14, "com.htc"

    invoke-virtual {v13, v14}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v11

    if-eqz v11, :cond_0

    const v13, 0x20c00e2

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v5

    const-string v13, "DRMActionActivity"

    const-string v14, "getResourcesForApplication exception"

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/music/DRMActionActivity;->showDialog(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/DRMActionActivity;->mHandler:Landroid/os/Handler;

    new-instance v14, Lcom/htc/music/DRMActionActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v12}, Lcom/htc/music/DRMActionActivity$3;-><init>(Lcom/htc/music/DRMActionActivity;Landroid/net/Uri;)V

    const-wide/16 v15, 0x4e20

    invoke-virtual/range {v13 .. v16}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_a
    :try_start_9
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/DRMActionActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    const-string v14, "com.htc"

    invoke-virtual {v13, v14}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v11

    const v13, 0x20c0156

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v5

    sget-object v13, Lcom/htc/music/DRMActionActivity;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Show toast failed."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    const-class v13, Lcom/htc/music/PropertyListActivity;

    move-object/from16 v0, p0

    invoke-virtual {v7, v0, v13}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v13, "track"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/DRMActionActivity;->mTrackId:Ljava/lang/String;

    invoke-virtual {v7, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/htc/music/DRMActionActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_3
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/music/DRMActionActivity;->showDialog(I)V

    goto/16 :goto_0

    :catchall_1
    move-exception v13

    move-object v7, v8

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/htc/music/widget/MusicListActivity;->onPause()V

    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/htc/music/widget/MusicListActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    check-cast p2, Lcom/htc/widget/HtcAlertDialog;

    iget-object v0, p0, Lcom/htc/music/DRMActionActivity;->mMsg:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/htc/music/widget/MusicListActivity;->onResume()V

    sget-object v0, Lcom/htc/music/DRMActionActivity;->TAG:Ljava/lang/String;

    const-string v1, "OnResume Begin"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/music/DRMActionActivity;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/htc/music/DRMActionActivity;->handler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    sget-object v0, Lcom/htc/music/DRMActionActivity;->TAG:Ljava/lang/String;

    const-string v1, "OnResume End"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "track"

    iget-object v1, p0, Lcom/htc/music/DRMActionActivity;->mTrackId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "drmuri"

    iget-object v1, p0, Lcom/htc/music/DRMActionActivity;->mDrmData:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "showToast"

    iget-boolean v1, p0, Lcom/htc/music/DRMActionActivity;->mShowToast:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "drmtargettomain"

    iget-boolean v1, p0, Lcom/htc/music/DRMActionActivity;->mTargetToMain:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
