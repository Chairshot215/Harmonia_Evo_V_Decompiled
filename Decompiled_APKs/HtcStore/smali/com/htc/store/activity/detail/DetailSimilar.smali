.class public Lcom/htc/store/activity/detail/DetailSimilar;
.super Lcom/htc/store/activity/BaseActivity;
.source "DetailSimilar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter;,
        Lcom/htc/store/activity/detail/DetailSimilar$DownloadCommentLikeInfoTask;,
        Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;,
        Lcom/htc/store/activity/detail/DetailSimilar$GetSimilarTask;,
        Lcom/htc/store/activity/detail/DetailSimilar$CheckContentTask;,
        Lcom/htc/store/activity/detail/DetailSimilar$InitializeAdapterTask;
    }
.end annotation


# static fields
.field static final ACTION_DOWNLOAD_SIMILAR:I = 0x2

.field static final ACTION_ERROR:I = 0x0

.field static final ACTION_GET_SIMILAR:I = 0x1

.field static final ACTION_NONE:I = -0x1

.field static final ACTION_SHOW_EMPTY:I = 0xb

.field static final ACTION_SHOW_LIST:I = 0xa

.field private static final CHECK_CONTENT_TASK_INDEX:I = 0x0

.field private static final DOWNLOAD_COMMENT_LIKE_INFO_TASK_INDEX:I = 0x2

.field private static final DOWNLOAD_ICON_TASK_COUNT:I = 0x3

.field private static final GET_SIMILAR_TASK_INDEX:I = 0x1

.field private static final MENU_EDIT_TABS:I = 0x2

.field private static final MENU_REFRESH:I = 0x0

.field private static final MENU_SETTING:I = 0x1

.field private static final STACK_ACTIVITY_LIMIT:I = 0x12

.field private static final TAG:Ljava/lang/String;

.field private static sStackActivityCount:I


# instance fields
.field private mAccessHelper:Lcom/htc/store/provider/AccessHelper;

.field private mCheckContentTask:Lcom/htc/store/activity/detail/DetailSimilar$CheckContentTask;

.field private mDownloadCommentLikeInfoTask:Lcom/htc/store/activity/detail/DetailSimilar$DownloadCommentLikeInfoTask;

.field private mEmptyList:Landroid/view/View;

.field private mEmptyListText:Landroid/widget/TextView;

.field private mEmptyProgress:Landroid/widget/ProgressBar;

.field private mGetSimilarTask:Lcom/htc/store/activity/detail/DetailSimilar$GetSimilarTask;

.field private mHeaderBar:Lcom/htc/widget/HeaderBar;

.field private mHeaderBarTitle:Lcom/htc/widget/HeaderBarText;

.field private mImageCacheMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/store/module/vo/ImageCacheMappingItem;",
            ">;"
        }
    .end annotation
.end field

.field private mInitializeAdapterTask:Lcom/htc/store/activity/detail/DetailSimilar$InitializeAdapterTask;

.field private mIsFromInside:Z

.field private mIsTaskDoing:[Z

.field private mItemIconDownloader:Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;

.field private mItemOnlineId:Ljava/lang/String;

.field private mItemOnlineId2Status:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mItemPackageName2Status:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mOnEmptyListClickListener:Landroid/view/View$OnClickListener;

.field private mRestHelper:Lcom/htc/store/module/rest/RestHelper;

.field private mSimilarItemAdapter:Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter;

.field private mSimilarItemList:Lcom/htc/widget/HtcListView;

.field private mSimilarItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/module/vo/ItemItem;",
            ">;"
        }
    .end annotation
.end field

.field private mTabTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-class v0, Lcom/htc/store/activity/detail/DetailSimilar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/store/activity/detail/DetailSimilar;->TAG:Ljava/lang/String;

    .line 93
    const/4 v0, 0x0

    sput v0, Lcom/htc/store/activity/detail/DetailSimilar;->sStackActivityCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/htc/store/activity/BaseActivity;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mItemOnlineId:Ljava/lang/String;

    .line 71
    const/4 v0, 0x4

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mIsTaskDoing:[Z

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mIsFromInside:Z

    .line 441
    new-instance v0, Lcom/htc/store/activity/detail/DetailSimilar$1;

    invoke-direct {v0, p0}, Lcom/htc/store/activity/detail/DetailSimilar$1;-><init>(Lcom/htc/store/activity/detail/DetailSimilar;)V

    iput-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mOnEmptyListClickListener:Landroid/view/View$OnClickListener;

    .line 1013
    return-void
.end method

.method static synthetic access$000(Lcom/htc/store/activity/detail/DetailSimilar;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailSimilar;->getContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/store/activity/detail/DetailSimilar;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/htc/store/activity/detail/DetailSimilar;->isOkToGetSimilar()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/htc/store/activity/detail/DetailSimilar;)Lcom/htc/widget/HtcListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mSimilarItemList:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/store/activity/detail/DetailSimilar;)Lcom/htc/store/activity/detail/DetailSimilar$CheckContentTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mCheckContentTask:Lcom/htc/store/activity/detail/DetailSimilar$CheckContentTask;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/htc/store/activity/detail/DetailSimilar;Lcom/htc/store/activity/detail/DetailSimilar$CheckContentTask;)Lcom/htc/store/activity/detail/DetailSimilar$CheckContentTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mCheckContentTask:Lcom/htc/store/activity/detail/DetailSimilar$CheckContentTask;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/htc/store/activity/detail/DetailSimilar;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/htc/store/activity/detail/DetailSimilar;->updateProgressBar(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/htc/store/activity/detail/DetailSimilar;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/htc/store/activity/detail/DetailSimilar;->updateEmptyList(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/htc/store/activity/detail/DetailSimilar;)[Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mIsTaskDoing:[Z

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/store/activity/detail/DetailSimilar;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailSimilar;->getContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/store/activity/detail/DetailSimilar;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mImageCacheMapping:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/htc/store/activity/detail/DetailSimilar;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mImageCacheMapping:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/htc/store/activity/detail/DetailSimilar;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mSimilarItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/htc/store/activity/detail/DetailSimilar;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mSimilarItems:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/htc/store/activity/detail/DetailSimilar;)Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mItemIconDownloader:Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/htc/store/activity/detail/DetailSimilar;Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;)Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mItemIconDownloader:Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/htc/store/activity/detail/DetailSimilar;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnBackPressed:Z

    return v0
.end method

.method static synthetic access$200(Lcom/htc/store/activity/detail/DetailSimilar;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/htc/store/activity/detail/DetailSimilar;->retrieveInfo(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/htc/store/activity/detail/DetailSimilar;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnDestroy:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/htc/store/activity/detail/DetailSimilar;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnPause:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/htc/store/activity/detail/DetailSimilar;)Lcom/htc/store/activity/detail/DetailSimilar$GetSimilarTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mGetSimilarTask:Lcom/htc/store/activity/detail/DetailSimilar$GetSimilarTask;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/htc/store/activity/detail/DetailSimilar;Lcom/htc/store/activity/detail/DetailSimilar$GetSimilarTask;)Lcom/htc/store/activity/detail/DetailSimilar$GetSimilarTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mGetSimilarTask:Lcom/htc/store/activity/detail/DetailSimilar$GetSimilarTask;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/htc/store/activity/detail/DetailSimilar;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/htc/store/activity/detail/DetailSimilar;->isOkToDownloadIcon()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/htc/store/activity/detail/DetailSimilar;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailSimilar;->isHtcAccountExisted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/htc/store/activity/detail/DetailSimilar;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/htc/store/activity/detail/DetailSimilar;->isOkToDownloadCommentLikeInfo()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/htc/store/activity/detail/DetailSimilar;)Lcom/htc/store/activity/detail/DetailSimilar$DownloadCommentLikeInfoTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mDownloadCommentLikeInfoTask:Lcom/htc/store/activity/detail/DetailSimilar$DownloadCommentLikeInfoTask;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/htc/store/activity/detail/DetailSimilar;Lcom/htc/store/activity/detail/DetailSimilar$DownloadCommentLikeInfoTask;)Lcom/htc/store/activity/detail/DetailSimilar$DownloadCommentLikeInfoTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mDownloadCommentLikeInfoTask:Lcom/htc/store/activity/detail/DetailSimilar$DownloadCommentLikeInfoTask;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/htc/store/activity/detail/DetailSimilar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/htc/store/activity/detail/DetailSimilar;->updateProgressBar()V

    return-void
.end method

.method static synthetic access$2800(Lcom/htc/store/activity/detail/DetailSimilar;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mItemOnlineId2Status:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/htc/store/activity/detail/DetailSimilar;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mItemOnlineId2Status:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/htc/store/activity/detail/DetailSimilar;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mItemPackageName2Status:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/htc/store/activity/detail/DetailSimilar;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mItemPackageName2Status:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$300(Lcom/htc/store/activity/detail/DetailSimilar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailSimilar;->showNoNetworkDialog()V

    return-void
.end method

.method static synthetic access$3000(Lcom/htc/store/activity/detail/DetailSimilar;)Lcom/htc/store/module/rest/RestHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/htc/store/activity/detail/DetailSimilar;Lcom/htc/store/module/rest/RestHelper;)Lcom/htc/store/module/rest/RestHelper;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/htc/store/activity/detail/DetailSimilar;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailSimilar;->getContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3200(Lcom/htc/store/activity/detail/DetailSimilar;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnBackPressed:Z

    return v0
.end method

.method static synthetic access$3300(Lcom/htc/store/activity/detail/DetailSimilar;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnDestroy:Z

    return v0
.end method

.method static synthetic access$3400(Lcom/htc/store/activity/detail/DetailSimilar;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnPause:Z

    return v0
.end method

.method static synthetic access$3500(Lcom/htc/store/activity/detail/DetailSimilar;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailSimilar;->isHtcAccountExisted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lcom/htc/store/activity/detail/DetailSimilar;)Lcom/htc/store/module/PreferenceManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/store/activity/BaseActivity;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/htc/store/activity/detail/DetailSimilar;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/htc/store/activity/detail/DetailSimilar;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnPause:Z

    return v0
.end method

.method static synthetic access$4500(Lcom/htc/store/activity/detail/DetailSimilar;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnPause:Z

    return v0
.end method

.method static synthetic access$4600(Lcom/htc/store/activity/detail/DetailSimilar;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailSimilar;->getContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4700(Lcom/htc/store/activity/detail/DetailSimilar;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/htc/store/activity/detail/DetailSimilar;->doShowAction(I)V

    return-void
.end method

.method static synthetic access$4800(Lcom/htc/store/activity/detail/DetailSimilar;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailSimilar;->getContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4900(Lcom/htc/store/activity/detail/DetailSimilar;)Lcom/htc/store/module/PreferenceManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/store/activity/BaseActivity;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/store/activity/detail/DetailSimilar;)Lcom/htc/store/provider/AccessHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/htc/store/activity/detail/DetailSimilar;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailSimilar;->isHtcAccountExisted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$502(Lcom/htc/store/activity/detail/DetailSimilar;Lcom/htc/store/provider/AccessHelper;)Lcom/htc/store/provider/AccessHelper;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    return-object p1
.end method

.method static synthetic access$5200(Lcom/htc/store/activity/detail/DetailSimilar;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailSimilar;->isHtcAccountExisted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5300(Lcom/htc/store/activity/detail/DetailSimilar;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailSimilar;->getContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5400()I
    .locals 1

    .prologue
    .line 57
    sget v0, Lcom/htc/store/activity/detail/DetailSimilar;->sStackActivityCount:I

    return v0
.end method

.method static synthetic access$5500(Lcom/htc/store/activity/detail/DetailSimilar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailSimilar;->showNoNetworkDialog()V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/store/activity/detail/DetailSimilar;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailSimilar;->getContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/store/activity/detail/DetailSimilar;)Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mSimilarItemAdapter:Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter;

    return-object v0
.end method

.method static synthetic access$702(Lcom/htc/store/activity/detail/DetailSimilar;Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter;)Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mSimilarItemAdapter:Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter;

    return-object p1
.end method

.method static synthetic access$800(Lcom/htc/store/activity/detail/DetailSimilar;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mItemOnlineId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/store/activity/detail/DetailSimilar;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailSimilar;->getContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method private doShowAction(I)V
    .locals 3
    .parameter "action"

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 395
    packed-switch p1, :pswitch_data_0

    .line 414
    :cond_0
    :goto_0
    return-void

    .line 397
    :pswitch_0
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mSimilarItemList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 398
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mSimilarItemList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListView;->setVisibility(I)V

    .line 400
    :cond_1
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mEmptyList:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 401
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mEmptyList:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 406
    :pswitch_1
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mEmptyList:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 407
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mEmptyList:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 409
    :cond_2
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mSimilarItemList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 410
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mSimilarItemList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setVisibility(I)V

    goto :goto_0

    .line 395
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private initMembers()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 313
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mIsTaskDoing:[Z

    aput-boolean v2, v0, v2

    .line 314
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mIsTaskDoing:[Z

    const/4 v1, 0x1

    aput-boolean v2, v0, v1

    .line 315
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mIsTaskDoing:[Z

    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    .line 316
    return-void
.end method

.method private initViews()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 296
    const v0, 0x7f0c0018

    invoke-virtual {p0, v0}, Lcom/htc/store/activity/detail/DetailSimilar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBar;

    iput-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    .line 297
    new-instance v0, Lcom/htc/widget/HeaderBarText;

    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailSimilar;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/widget/HeaderBarText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mHeaderBarTitle:Lcom/htc/widget/HeaderBarText;

    .line 298
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mHeaderBarTitle:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBar;->addCenterView(Landroid/view/View;)V

    .line 299
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/htc/store/activity/detail/DetailSimilar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListView;

    iput-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mSimilarItemList:Lcom/htc/widget/HtcListView;

    .line 302
    const v0, 0x1020004

    invoke-virtual {p0, v0}, Lcom/htc/store/activity/detail/DetailSimilar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mEmptyList:Landroid/view/View;

    .line 304
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mEmptyList:Landroid/view/View;

    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mOnEmptyListClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mEmptyList:Landroid/view/View;

    const v1, 0x7f0c002a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mEmptyListText:Landroid/widget/TextView;

    .line 306
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mEmptyListText:Landroid/widget/TextView;

    const v1, 0x7f0a002d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 307
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mEmptyList:Landroid/view/View;

    const v1, 0x7f0c0029

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mEmptyProgress:Landroid/widget/ProgressBar;

    .line 308
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mEmptyProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 309
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBar;->setProgressVisibility(I)V

    .line 310
    return-void
.end method

.method private isDownloadTaskRunning()Z
    .locals 2

    .prologue
    .line 264
    const/4 v0, 0x0

    .line 265
    .local v0, downloadingIcon:Z
    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mItemIconDownloader:Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mItemIconDownloader:Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;

    invoke-virtual {v1}, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->isIdle()Z

    move-result v1

    if-nez v1, :cond_0

    .line 266
    const/4 v0, 0x1

    .line 268
    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/htc/store/activity/detail/DetailSimilar;->isTaskRunning(I)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isGetTaskRunning()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 260
    invoke-direct {p0, v0}, Lcom/htc/store/activity/detail/DetailSimilar;->isTaskRunning(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v1}, Lcom/htc/store/activity/detail/DetailSimilar;->isTaskRunning(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method private isOkToDownloadCommentLikeInfo()Z
    .locals 3

    .prologue
    .line 425
    const/4 v0, 0x0

    .line 426
    .local v0, result:Z
    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mDownloadCommentLikeInfoTask:Lcom/htc/store/activity/detail/DetailSimilar$DownloadCommentLikeInfoTask;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mDownloadCommentLikeInfoTask:Lcom/htc/store/activity/detail/DetailSimilar$DownloadCommentLikeInfoTask;

    invoke-virtual {v1}, Lcom/htc/store/activity/detail/DetailSimilar$DownloadCommentLikeInfoTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mDownloadCommentLikeInfoTask:Lcom/htc/store/activity/detail/DetailSimilar$DownloadCommentLikeInfoTask;

    invoke-virtual {v1}, Lcom/htc/store/activity/detail/DetailSimilar$DownloadCommentLikeInfoTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 427
    :cond_0
    const/4 v0, 0x1

    .line 429
    :cond_1
    return v0
.end method

.method private isOkToDownloadIcon()Z
    .locals 2

    .prologue
    .line 417
    const/4 v0, 0x0

    .line 418
    .local v0, result:Z
    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mItemIconDownloader:Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mItemIconDownloader:Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;

    invoke-virtual {v1}, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->hasToDownload()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mItemIconDownloader:Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;

    invoke-virtual {v1}, Lcom/htc/store/activity/detail/DetailSimilar$ItemIconDownloader;->hasIdleTask()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 419
    const/4 v0, 0x1

    .line 421
    :cond_0
    return v0
.end method

.method private isOkToGetSimilar()Z
    .locals 3

    .prologue
    .line 434
    const/4 v0, 0x0

    .line 435
    .local v0, result:Z
    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mGetSimilarTask:Lcom/htc/store/activity/detail/DetailSimilar$GetSimilarTask;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mGetSimilarTask:Lcom/htc/store/activity/detail/DetailSimilar$GetSimilarTask;

    invoke-virtual {v1}, Lcom/htc/store/activity/detail/DetailSimilar$GetSimilarTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mGetSimilarTask:Lcom/htc/store/activity/detail/DetailSimilar$GetSimilarTask;

    invoke-virtual {v1}, Lcom/htc/store/activity/detail/DetailSimilar$GetSimilarTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 436
    :cond_0
    const/4 v0, 0x1

    .line 438
    :cond_1
    return v0
.end method

.method private isTaskRunning(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 272
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mIsTaskDoing:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method private retrieveInfo(Z)V
    .locals 1
    .parameter "isResumed"

    .prologue
    .line 244
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/store/activity/detail/DetailSimilar;->retrieveInfo(ZZ)V

    .line 245
    return-void
.end method

.method private retrieveInfo(ZZ)V
    .locals 4
    .parameter "isResumed"
    .parameter "isForceUpdate"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 248
    if-nez p1, :cond_0

    .line 249
    new-instance v0, Lcom/htc/store/activity/detail/DetailSimilar$InitializeAdapterTask;

    invoke-direct {v0, p0, p2}, Lcom/htc/store/activity/detail/DetailSimilar$InitializeAdapterTask;-><init>(Lcom/htc/store/activity/detail/DetailSimilar;Z)V

    iput-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mInitializeAdapterTask:Lcom/htc/store/activity/detail/DetailSimilar$InitializeAdapterTask;

    .line 250
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mInitializeAdapterTask:Lcom/htc/store/activity/detail/DetailSimilar$InitializeAdapterTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/htc/store/activity/detail/DetailSimilar$InitializeAdapterTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 255
    :goto_0
    invoke-direct {p0, v3}, Lcom/htc/store/activity/detail/DetailSimilar;->updateProgressBar(Z)V

    .line 256
    invoke-direct {p0, v3}, Lcom/htc/store/activity/detail/DetailSimilar;->updateEmptyList(Z)V

    .line 257
    return-void

    .line 252
    :cond_0
    new-instance v0, Lcom/htc/store/activity/detail/DetailSimilar$CheckContentTask;

    invoke-direct {v0, p0, p2}, Lcom/htc/store/activity/detail/DetailSimilar$CheckContentTask;-><init>(Lcom/htc/store/activity/detail/DetailSimilar;Z)V

    iput-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mCheckContentTask:Lcom/htc/store/activity/detail/DetailSimilar$CheckContentTask;

    .line 253
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mCheckContentTask:Lcom/htc/store/activity/detail/DetailSimilar$CheckContentTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/htc/store/activity/detail/DetailSimilar$CheckContentTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private setTitleText(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 331
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mHeaderBarTitle:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mHeaderBarTitle:Lcom/htc/widget/HeaderBarText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 333
    return-void
.end method

.method private stopAllDownloadTask()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 284
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mDownloadCommentLikeInfoTask:Lcom/htc/store/activity/detail/DetailSimilar$DownloadCommentLikeInfoTask;

    invoke-direct {p0, v0}, Lcom/htc/store/activity/detail/DetailSimilar;->stopRunningAsyncTask(Landroid/os/AsyncTask;)V

    .line 285
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mIsTaskDoing:[Z

    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    .line 286
    invoke-direct {p0, v2}, Lcom/htc/store/activity/detail/DetailSimilar;->updateProgressBar(Z)V

    .line 287
    return-void
.end method

.method private stopAllGetTask()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 276
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mInitializeAdapterTask:Lcom/htc/store/activity/detail/DetailSimilar$InitializeAdapterTask;

    invoke-direct {p0, v0}, Lcom/htc/store/activity/detail/DetailSimilar;->stopRunningAsyncTask(Landroid/os/AsyncTask;)V

    .line 277
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mCheckContentTask:Lcom/htc/store/activity/detail/DetailSimilar$CheckContentTask;

    invoke-direct {p0, v0}, Lcom/htc/store/activity/detail/DetailSimilar;->stopRunningAsyncTask(Landroid/os/AsyncTask;)V

    .line 278
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mIsTaskDoing:[Z

    aput-boolean v2, v0, v2

    .line 279
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mGetSimilarTask:Lcom/htc/store/activity/detail/DetailSimilar$GetSimilarTask;

    invoke-direct {p0, v0}, Lcom/htc/store/activity/detail/DetailSimilar;->stopRunningAsyncTask(Landroid/os/AsyncTask;)V

    .line 280
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mIsTaskDoing:[Z

    const/4 v1, 0x1

    aput-boolean v2, v0, v1

    .line 281
    return-void
.end method

.method private stopRunningAsyncTask(Landroid/os/AsyncTask;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask",
            "<***>;)V"
        }
    .end annotation

    .prologue
    .line 290
    .local p1, task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<***>;"
    if-eqz p1, :cond_0

    .line 291
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 293
    :cond_0
    return-void
.end method

.method private updateEmptyList(Z)V
    .locals 7
    .parameter "isUpdating"

    .prologue
    const/16 v6, 0xb

    const/16 v5, 0xa

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 358
    sget-object v0, Lcom/htc/store/activity/detail/DetailSimilar;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "update empty list "

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 359
    if-eqz p1, :cond_6

    .line 360
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mSimilarItemList:Lcom/htc/widget/HtcListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mSimilarItemList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->getCount()I

    move-result v0

    if-nez v0, :cond_5

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mSimilarItemAdapter:Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mSimilarItemAdapter:Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter;

    invoke-virtual {v0}, Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_4

    .line 362
    :cond_1
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mSimilarItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mSimilarItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 363
    :cond_2
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mEmptyListText:Landroid/widget/TextView;

    const v1, 0x7f0a0069

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 364
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mEmptyProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 365
    invoke-direct {p0, v6}, Lcom/htc/store/activity/detail/DetailSimilar;->doShowAction(I)V

    .line 392
    :goto_0
    return-void

    .line 367
    :cond_3
    sget-object v0, Lcom/htc/store/activity/detail/DetailSimilar;->TAG:Ljava/lang/String;

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "just a delay, items are fetched, dont have to show empty"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 370
    :cond_4
    sget-object v0, Lcom/htc/store/activity/detail/DetailSimilar;->TAG:Ljava/lang/String;

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "just a delay, adapter is updated, dont have to show empty"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 373
    :cond_5
    invoke-direct {p0, v5}, Lcom/htc/store/activity/detail/DetailSimilar;->doShowAction(I)V

    goto :goto_0

    .line 376
    :cond_6
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mSimilarItemList:Lcom/htc/widget/HtcListView;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mSimilarItemList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->getCount()I

    move-result v0

    if-nez v0, :cond_c

    .line 377
    :cond_7
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mSimilarItemAdapter:Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mSimilarItemAdapter:Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter;

    invoke-virtual {v0}, Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_b

    .line 378
    :cond_8
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mSimilarItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mSimilarItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_a

    .line 379
    :cond_9
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mEmptyListText:Landroid/widget/TextView;

    const v1, 0x7f0a002d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 380
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mEmptyProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 381
    invoke-direct {p0, v6}, Lcom/htc/store/activity/detail/DetailSimilar;->doShowAction(I)V

    goto :goto_0

    .line 383
    :cond_a
    sget-object v0, Lcom/htc/store/activity/detail/DetailSimilar;->TAG:Ljava/lang/String;

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "just a delay, items are fetched, dont have to show empty"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 386
    :cond_b
    sget-object v0, Lcom/htc/store/activity/detail/DetailSimilar;->TAG:Ljava/lang/String;

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "just a delay, adapter is updated, dont have to show empty"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 389
    :cond_c
    invoke-direct {p0, v5}, Lcom/htc/store/activity/detail/DetailSimilar;->doShowAction(I)V

    goto :goto_0
.end method

.method private updateMenuIsRefreshing(Z)V
    .locals 0
    .parameter "isRefreshing"

    .prologue
    .line 328
    return-void
.end method

.method private updateProgressBar()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 336
    invoke-direct {p0}, Lcom/htc/store/activity/detail/DetailSimilar;->isGetTaskRunning()Z

    move-result v1

    .line 337
    .local v1, isGetTaskRunning:Z
    invoke-direct {p0}, Lcom/htc/store/activity/detail/DetailSimilar;->isDownloadTaskRunning()Z

    move-result v0

    .line 338
    .local v0, isDownloadTaskRunning:Z
    sget-object v2, Lcom/htc/store/activity/detail/DetailSimilar;->TAG:Ljava/lang/String;

    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, "isGetTaskRunning: "

    aput-object v4, v3, v5

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 339
    sget-object v2, Lcom/htc/store/activity/detail/DetailSimilar;->TAG:Ljava/lang/String;

    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, "isDownloadTaskRunning: "

    aput-object v4, v3, v5

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 340
    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    .line 341
    :cond_0
    invoke-direct {p0, v6}, Lcom/htc/store/activity/detail/DetailSimilar;->updateProgressBar(Z)V

    .line 345
    :goto_0
    return-void

    .line 343
    :cond_1
    invoke-direct {p0, v5}, Lcom/htc/store/activity/detail/DetailSimilar;->updateProgressBar(Z)V

    goto :goto_0
.end method

.method private updateProgressBar(Z)V
    .locals 3
    .parameter "isEnabled"

    .prologue
    const/4 v2, 0x0

    .line 348
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailSimilar;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/store/util/CommonUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBar;->setProgressVisibility(I)V

    .line 350
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/store/activity/detail/DetailSimilar;->updateMenuIsRefreshing(Z)V

    .line 355
    :goto_0
    return-void

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBar;->setProgressVisibility(I)V

    .line 353
    invoke-direct {p0, v2}, Lcom/htc/store/activity/detail/DetailSimilar;->updateMenuIsRefreshing(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 97
    iput-boolean v5, p0, Lcom/htc/store/activity/BaseActivity;->mHasToSetBackground:Z

    .line 98
    invoke-super {p0, p1}, Lcom/htc/store/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 99
    const v2, 0x7f030010

    invoke-virtual {p0, v2}, Lcom/htc/store/activity/detail/DetailSimilar;->setContentView(I)V

    .line 100
    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailSimilar;->getParent()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 101
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "store_inside"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mIsFromInside:Z

    .line 102
    iget-boolean v2, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mIsFromInside:Z

    if-eqz v2, :cond_3

    .line 103
    const-string v2, "item_item"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/htc/store/module/vo/ItemItem;

    .line 104
    .local v1, item:Lcom/htc/store/module/vo/ItemItem;
    if-eqz v1, :cond_2

    .line 105
    invoke-virtual {v1}, Lcom/htc/store/module/vo/ItemItem;->getOnlineId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mItemOnlineId:Ljava/lang/String;

    .line 112
    .end local v1           #item:Lcom/htc/store/module/vo/ItemItem;
    :goto_0
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mItemOnlineId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 113
    sget-object v2, Lcom/htc/store/activity/detail/DetailSimilar;->TAG:Ljava/lang/String;

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, "item onlineId is null, finish this activity"

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailSimilar;->finish()V

    .line 117
    :cond_0
    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailSimilar;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "tab_title_resource"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mTabTitle:Ljava/lang/String;

    .line 120
    invoke-direct {p0}, Lcom/htc/store/activity/detail/DetailSimilar;->initMembers()V

    .line 121
    invoke-direct {p0}, Lcom/htc/store/activity/detail/DetailSimilar;->initViews()V

    .line 122
    sget v2, Lcom/htc/store/activity/detail/DetailSimilar;->sStackActivityCount:I

    if-gez v2, :cond_1

    .line 123
    sput v5, Lcom/htc/store/activity/detail/DetailSimilar;->sStackActivityCount:I

    .line 125
    :cond_1
    sget v2, Lcom/htc/store/activity/detail/DetailSimilar;->sStackActivityCount:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/htc/store/activity/detail/DetailSimilar;->sStackActivityCount:I

    .line 126
    sget-object v2, Lcom/htc/store/activity/detail/DetailSimilar;->TAG:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "activity is created, and stack count is "

    aput-object v4, v3, v5

    sget v4, Lcom/htc/store/activity/detail/DetailSimilar;->sStackActivityCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    return-void

    .line 107
    .restart local v1       #item:Lcom/htc/store/module/vo/ItemItem;
    :cond_2
    const-string v2, "online_item_id"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mItemOnlineId:Ljava/lang/String;

    goto :goto_0

    .line 110
    .end local v1           #item:Lcom/htc/store/module/vo/ItemItem;
    :cond_3
    const-string v2, "online_item_id"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mItemOnlineId:Ljava/lang/String;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 197
    const v0, 0x7f0a006f

    invoke-virtual {p0, v0}, Lcom/htc/store/activity/detail/DetailSimilar;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v2, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080336

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 199
    const v0, 0x7f0a001a

    invoke-virtual {p0, v0}, Lcom/htc/store/activity/detail/DetailSimilar;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v4, v4, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x208032f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 201
    return v2
.end method

.method protected onDestroy()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 159
    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mSimilarItemAdapter:Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter;

    if-eqz v1, :cond_0

    .line 160
    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mSimilarItemAdapter:Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter;

    invoke-virtual {v1}, Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 161
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 162
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 165
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_0
    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mImageCacheMapping:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    .line 166
    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mImageCacheMapping:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 168
    :cond_1
    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mSimilarItemList:Lcom/htc/widget/HtcListView;

    if-eqz v1, :cond_3

    .line 169
    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mSimilarItemList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1}, Lcom/htc/widget/HtcListView;->getOnItemClickListener()Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 170
    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mSimilarItemList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 172
    :cond_2
    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mSimilarItemList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 174
    :cond_3
    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mEmptyList:Landroid/view/View;

    if-eqz v1, :cond_4

    .line 175
    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mEmptyList:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    :cond_4
    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;

    if-eqz v1, :cond_5

    .line 178
    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;

    invoke-virtual {v1}, Lcom/htc/store/module/rest/RestHelper;->destroy()V

    .line 181
    :cond_5
    invoke-direct {p0}, Lcom/htc/store/activity/detail/DetailSimilar;->stopAllGetTask()V

    .line 182
    invoke-direct {p0}, Lcom/htc/store/activity/detail/DetailSimilar;->stopAllDownloadTask()V

    .line 184
    sget v1, Lcom/htc/store/activity/detail/DetailSimilar;->sStackActivityCount:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/htc/store/activity/detail/DetailSimilar;->sStackActivityCount:I

    .line 185
    sget-object v1, Lcom/htc/store/activity/detail/DetailSimilar;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "activity is destroyed, and stack count is "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget v4, Lcom/htc/store/activity/detail/DetailSimilar;->sStackActivityCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    invoke-super {p0}, Lcom/htc/store/activity/BaseActivity;->onDestroy()V

    .line 187
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v4, 0x1

    .line 222
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 223
    .local v0, itemId:I
    packed-switch v0, :pswitch_data_0

    .line 240
    :goto_0
    return v4

    .line 225
    :pswitch_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    const v2, 0x7f0a006c

    invoke-virtual {p0, v2}, Lcom/htc/store/activity/detail/DetailSimilar;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 227
    invoke-direct {p0, v4, v4}, Lcom/htc/store/activity/detail/DetailSimilar;->retrieveInfo(ZZ)V

    goto :goto_0

    .line 229
    :cond_0
    invoke-direct {p0}, Lcom/htc/store/activity/detail/DetailSimilar;->stopAllGetTask()V

    .line 230
    invoke-direct {p0}, Lcom/htc/store/activity/detail/DetailSimilar;->stopAllDownloadTask()V

    goto :goto_0

    .line 234
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailSimilar;->getContext()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/htc/store/activity/setting/SettingMain;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/htc/store/activity/detail/DetailSimilar;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 237
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailSimilar;->getParent()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/htc/store/activity/detail/DetailTab;

    invoke-virtual {v1}, Lcom/htc/store/activity/detail/DetailTab;->enterEditTab()V

    goto :goto_0

    .line 223
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/htc/store/activity/detail/DetailSimilar;->stopAllGetTask()V

    .line 153
    invoke-direct {p0}, Lcom/htc/store/activity/detail/DetailSimilar;->stopAllDownloadTask()V

    .line 154
    invoke-super {p0}, Lcom/htc/store/activity/BaseActivity;->onPause()V

    .line 155
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 131
    invoke-super {p0}, Lcom/htc/store/activity/BaseActivity;->onResume()V

    .line 133
    invoke-direct {p0}, Lcom/htc/store/activity/detail/DetailSimilar;->isDownloadTaskRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-direct {p0}, Lcom/htc/store/activity/detail/DetailSimilar;->updateProgressBar()V

    .line 139
    :goto_0
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mSimilarItemAdapter:Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mSimilarItemAdapter:Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter;

    invoke-virtual {v0}, Lcom/htc/store/activity/detail/DetailSimilar$SimilarItemAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 140
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/htc/store/activity/detail/DetailSimilar;->doShowAction(I)V

    .line 145
    :goto_1
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailSimilar;->mTabTitle:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/htc/store/activity/detail/DetailSimilar;->setTitleText(Ljava/lang/CharSequence;)V

    .line 147
    iput-boolean v1, p0, Lcom/htc/store/activity/BaseActivity;->mFirstCreate:Z

    .line 148
    return-void

    .line 136
    :cond_0
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mFirstCreate:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_2
    invoke-direct {p0, v0}, Lcom/htc/store/activity/detail/DetailSimilar;->retrieveInfo(Z)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_2

    .line 142
    :cond_2
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/htc/store/activity/detail/DetailSimilar;->doShowAction(I)V

    goto :goto_1
.end method
