.class public Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;
.super Landroid/widget/BaseAdapter;
.source "MyAppsInstalledAdapter.java"

# interfaces
.implements Lcom/google/android/finsky/activities/myapps/MyAppsListAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$BucketsChangedListener;,
        Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionHeaderHolder;,
        Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DownloadingViewHolder;,
        Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$BaseViewHolder;,
        Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;,
        Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;,
        Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;
    }
.end annotation


# static fields
.field private static final sDocumentAbcCollator:Ljava/text/Collator;

.field private static final sDocumentAbcSorter:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAggregatedAdapter:Lcom/google/android/finsky/adapters/AggregatedAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/adapters/AggregatedAdapter",
            "<",
            "Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final mAppStates:Lcom/google/android/finsky/appstate/AppStates;

.field private final mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field private final mBucketsChangedListener:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$BucketsChangedListener;

.field protected mContext:Landroid/content/Context;

.field private final mDownloadingSectionAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;

.field private final mHasDocumentView:Z

.field private final mInstallPolicies:Lcom/google/android/finsky/installer/InstallPolicies;

.field private final mInstalledSectionAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;

.field private final mInstaller:Lcom/google/android/finsky/receivers/Installer;

.field protected final mLayoutInflater:Landroid/view/LayoutInflater;

.field protected mListView:Landroid/widget/ListView;

.field private final mManualUpdatesSectionAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private final mUnsortedDocuments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;"
        }
    .end annotation
.end field

.field private final mUpdatesSectionAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->sDocumentAbcCollator:Ljava/text/Collator;

    .line 83
    new-instance v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$1;

    invoke-direct {v0}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$1;-><init>()V

    sput-object v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->sDocumentAbcSorter:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/finsky/receivers/Installer;Lcom/google/android/finsky/installer/InstallPolicies;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/utils/BitmapLoader;Landroid/view/View$OnClickListener;ZLcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$BucketsChangedListener;)V
    .locals 5
    .parameter "context"
    .parameter "installer"
    .parameter "installThresholds"
    .parameter "appStates"
    .parameter "bitmapLoader"
    .parameter "onClickListener"
    .parameter "hasDocumentView"
    .parameter "bucketsChangedListener"

    .prologue
    const/4 v4, 0x0

    .line 316
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 59
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mUnsortedDocuments:Ljava/util/List;

    .line 317
    iput-object p1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mContext:Landroid/content/Context;

    .line 318
    iput-object p2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    .line 319
    iput-object p3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mInstallPolicies:Lcom/google/android/finsky/installer/InstallPolicies;

    .line 320
    iput-object p4, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    .line 321
    iput-object p6, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 322
    iput-object p5, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    .line 324
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 326
    iput-boolean p7, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mHasDocumentView:Z

    .line 328
    iput-object p8, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mBucketsChangedListener:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$BucketsChangedListener;

    .line 330
    new-instance v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;

    sget-object v1, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;->DOWNLOADING:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;

    const v2, 0x7f0700ea

    sget-object v3, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;->STOP_ALL_DOWNLOADS:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;-><init>(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;ILcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mDownloadingSectionAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;

    .line 332
    new-instance v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;

    sget-object v1, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;->UPDATE_AVAILABLE:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;

    const v2, 0x7f0700eb

    sget-object v3, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;->UPDATE_ALL:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;-><init>(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;ILcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mUpdatesSectionAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;

    .line 334
    new-instance v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;

    sget-object v1, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;->UPDATE_AVAILABLE:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;

    const v2, 0x7f0700ec

    invoke-direct {v0, p0, v1, v2, v4}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;-><init>(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;ILcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mManualUpdatesSectionAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;

    .line 336
    new-instance v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;

    sget-object v1, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;->INSTALLED:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;

    const v2, 0x7f0700ee

    invoke-direct {v0, p0, v1, v2, v4}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;-><init>(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;ILcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mInstalledSectionAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;

    .line 339
    new-instance v0, Lcom/google/android/finsky/adapters/AggregatedAdapter;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mDownloadingSectionAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mUpdatesSectionAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mManualUpdatesSectionAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mInstalledSectionAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lcom/google/android/finsky/adapters/AggregatedAdapter;-><init>([Landroid/widget/BaseAdapter;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mAggregatedAdapter:Lcom/google/android/finsky/adapters/AggregatedAdapter;

    .line 343
    return-void
.end method

.method static synthetic access$000()Ljava/text/Collator;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->sDocumentAbcCollator:Ljava/text/Collator;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->sDocumentAbcSorter:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mUnsortedDocuments:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;Lcom/google/android/finsky/api/model/Document;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->getDownloadingDocView(Lcom/google/android/finsky/api/model/Document;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;Lcom/google/android/finsky/api/model/Document;Landroid/view/View;Landroid/view/ViewGroup;Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;Z)Landroid/view/View;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 47
    invoke-direct/range {p0 .. p5}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->getDocView(Lcom/google/android/finsky/api/model/Document;Landroid/view/View;Landroid/view/ViewGroup;Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;ILandroid/view/View;Landroid/view/ViewGroup;Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;)Landroid/view/View;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;)Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mUpdatesSectionAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;)Lcom/google/android/finsky/receivers/Installer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;)Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mDownloadingSectionAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;

    return-object v0
.end method

.method private getDocView(Lcom/google/android/finsky/api/model/Document;Landroid/view/View;Landroid/view/ViewGroup;Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;Z)Landroid/view/View;
    .locals 7
    .parameter "doc"
    .parameter "convertView"
    .parameter "parent"
    .parameter "documentState"
    .parameter "isLastInSection"

    .prologue
    const/4 v3, 0x0

    .line 397
    if-nez p2, :cond_0

    .line 398
    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-boolean v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mHasDocumentView:Z

    if-eqz v1, :cond_2

    const v1, 0x7f040061

    :goto_0
    invoke-virtual {v2, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    move-object v0, p2

    .line 402
    check-cast v0, Lcom/google/android/finsky/layout/OverviewBucketEntry;

    .line 403
    .local v0, entry:Lcom/google/android/finsky/layout/OverviewBucketEntry;
    invoke-virtual {v0, v3}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->setRightSeparatorVisibility(Z)V

    .line 404
    const/4 v1, 0x0

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iget-object v5, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    move-object v2, p1

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->bind(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;ZLandroid/view/View$OnClickListener;)V

    .line 407
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$BaseViewHolder;

    .line 409
    .local v6, holder:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$BaseViewHolder;
    if-nez v6, :cond_1

    .line 410
    new-instance v6, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$BaseViewHolder;

    .end local v6           #holder:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$BaseViewHolder;
    invoke-direct {v6, p2}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 412
    .restart local v6       #holder:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$BaseViewHolder;
    :cond_1
    iput-object p1, v6, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$BaseViewHolder;->doc:Lcom/google/android/finsky/api/model/Document;

    .line 413
    invoke-virtual {v0, v6}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->setTag(Ljava/lang/Object;)V

    .line 415
    return-object p2

    .line 398
    .end local v0           #entry:Lcom/google/android/finsky/layout/OverviewBucketEntry;
    .end local v6           #holder:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$BaseViewHolder;
    :cond_2
    const v1, 0x7f040081

    goto :goto_0
.end method

.method private getDownloadingDocView(Lcom/google/android/finsky/api/model/Document;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "doc"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    .line 422
    if-nez p2, :cond_0

    .line 423
    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f040064

    invoke-virtual {v3, v4, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 427
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DownloadingViewHolder;

    .line 429
    .local v1, holder:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DownloadingViewHolder;
    if-nez v1, :cond_1

    .line 430
    new-instance v1, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DownloadingViewHolder;

    .end local v1           #holder:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DownloadingViewHolder;
    invoke-direct {v1, p2}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DownloadingViewHolder;-><init>(Landroid/view/View;)V

    .line 433
    .restart local v1       #holder:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DownloadingViewHolder;
    :cond_1
    iput-object p1, v1, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DownloadingViewHolder;->doc:Lcom/google/android/finsky/api/model/Document;

    .line 434
    iget-object v3, v1, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DownloadingViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 435
    iget-object v3, v1, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DownloadingViewHolder;->author:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getCreator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    iget-object v3, v1, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DownloadingViewHolder;->thumbnail:Lcom/google/android/finsky/layout/DocImageView;

    iget-object v4, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual {v3, p1, v4}, Lcom/google/android/finsky/layout/DocImageView;->bind(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;)V

    .line 439
    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/android/finsky/receivers/Installer;->getProgress(Ljava/lang/String;)Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;

    move-result-object v2

    .line 441
    .local v2, progress:Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;
    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mContext:Landroid/content/Context;

    iget-object v4, v1, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DownloadingViewHolder;->downloadingBytes:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DownloadingViewHolder;->downloadingPercentage:Landroid/widget/TextView;

    iget-object v6, v1, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DownloadingViewHolder;->progressBar:Landroid/widget/ProgressBar;

    invoke-static {v3, v2, v4, v5, v6}, Lcom/google/android/finsky/adapters/DownloadProgressHelper;->configureDownloadProgressUi(Landroid/content/Context;Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ProgressBar;)V

    .line 444
    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 447
    invoke-static {v8}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getCorpusCellContentLongDescriptionResource(I)I

    move-result v0

    .line 449
    .local v0, descriptionStringId:I
    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mContext:Landroid/content/Context;

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x1

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getCreator()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mContext:Landroid/content/Context;

    const v7, 0x7f0701a4

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 452
    return-object p2
.end method

.method private getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"
    .parameter "sectionAdapter"

    .prologue
    .line 457
    if-nez p2, :cond_0

    .line 458
    iget-object v6, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f0400a2

    const/4 v8, 0x0

    invoke-virtual {v6, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 461
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionHeaderHolder;

    .line 463
    .local v0, holder:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionHeaderHolder;
    if-nez v0, :cond_1

    .line 464
    new-instance v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionHeaderHolder;

    .end local v0           #holder:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionHeaderHolder;
    invoke-direct {v0, p2}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionHeaderHolder;-><init>(Landroid/view/View;)V

    .line 467
    .restart local v0       #holder:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionHeaderHolder;
    :cond_1
    iget-object v6, v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionHeaderHolder;->titleView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mContext:Landroid/content/Context;

    #getter for: Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->mHeaderTextId:I
    invoke-static/range {p4 .. p4}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->access$1100(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 470
    iget-object v6, v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionHeaderHolder;->bulkActionButton:Landroid/widget/Button;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 471
    iget-object v6, v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionHeaderHolder;->loadingProgress:Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 472
    iget-object v6, v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionHeaderHolder;->divider:Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 474
    #getter for: Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->mHeaderAction:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;
    invoke-static/range {p4 .. p4}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->access$1200(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;)Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;

    move-result-object v5

    .line 475
    .local v5, sectionAction:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;
    if-eqz v5, :cond_5

    invoke-virtual {v5, p0}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;->isVisible(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v2, 0x1

    .line 476
    .local v2, isActionVisible:Z
    :goto_0
    if-eqz v5, :cond_6

    invoke-virtual {v5, p0}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;->isWaiting(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v3, 0x1

    .line 478
    .local v3, isActionWaiting:Z
    :goto_1
    if-eqz v3, :cond_7

    .line 479
    iget-object v6, v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionHeaderHolder;->loadingProgress:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 495
    :cond_2
    :goto_2
    if-nez v3, :cond_3

    if-nez v2, :cond_8

    :cond_3
    const/4 v4, 0x1

    .line 496
    .local v4, isCountVisible:Z
    :goto_3
    iget-object v7, v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionHeaderHolder;->countView:Landroid/widget/TextView;

    if-eqz v4, :cond_9

    const/4 v6, 0x0

    :goto_4
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 497
    if-eqz v4, :cond_4

    .line 498
    iget-object v6, v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionHeaderHolder;->countView:Landroid/widget/TextView;

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->getCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 501
    :cond_4
    return-object p2

    .line 475
    .end local v2           #isActionVisible:Z
    .end local v3           #isActionWaiting:Z
    .end local v4           #isCountVisible:Z
    :cond_5
    const/4 v2, 0x0

    goto :goto_0

    .line 476
    .restart local v2       #isActionVisible:Z
    :cond_6
    const/4 v3, 0x0

    goto :goto_1

    .line 480
    .restart local v3       #isActionWaiting:Z
    :cond_7
    if-eqz v2, :cond_2

    .line 481
    iget-object v6, v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionHeaderHolder;->divider:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 482
    iget-object v6, v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionHeaderHolder;->bulkActionButton:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 483
    iget-object v6, v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionHeaderHolder;->bulkActionButton:Landroid/widget/Button;

    iget-object v7, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;->getLabelId()I

    move-result v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->getCount()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 485
    iget-object v6, v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionHeaderHolder;->bulkActionButton:Landroid/widget/Button;

    new-instance v7, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$2;

    invoke-direct {v7, p0, v5}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$2;-><init>(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 491
    iget-object v6, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;->getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 492
    .local v1, icon:Landroid/graphics/drawable/Drawable;
    iget-object v6, v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionHeaderHolder;->bulkActionButton:Landroid/widget/Button;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v1, v7, v8, v9}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 495
    .end local v1           #icon:Landroid/graphics/drawable/Drawable;
    :cond_8
    const/4 v4, 0x0

    goto :goto_3

    .line 496
    .restart local v4       #isCountVisible:Z
    :cond_9
    const/16 v6, 0x8

    goto :goto_4
.end method

.method public static getViewDoc(Landroid/view/View;)Lcom/google/android/finsky/api/model/Document;
    .locals 2
    .parameter "v"

    .prologue
    .line 593
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 594
    .local v0, tag:Ljava/lang/Object;
    instance-of v1, v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$BaseViewHolder;

    if-eqz v1, :cond_0

    .line 595
    check-cast v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$BaseViewHolder;

    .end local v0           #tag:Ljava/lang/Object;
    iget-object v1, v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$BaseViewHolder;->doc:Lcom/google/android/finsky/api/model/Document;

    .line 597
    :goto_0
    return-object v1

    .restart local v0       #tag:Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private putDocsInBuckets()V
    .locals 17

    .prologue
    .line 530
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mAggregatedAdapter:Lcom/google/android/finsky/adapters/AggregatedAdapter;

    invoke-virtual {v15}, Lcom/google/android/finsky/adapters/AggregatedAdapter;->getAdapters()[Landroid/widget/BaseAdapter;

    move-result-object v2

    check-cast v2, [Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;

    .line 531
    .local v2, adapters:[Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;
    move-object v4, v2

    .local v4, arr$:[Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;
    array-length v11, v4

    .local v11, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_0
    if-ge v9, v11, :cond_0

    aget-object v1, v4, v9

    .line 532
    .local v1, adapter:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;
    invoke-virtual {v1}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->clearDocs()V

    .line 531
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 535
    .end local v1           #adapter:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;
    :cond_0
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v14

    .line 536
    .local v14, skipped:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/finsky/api/model/Document;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 538
    .local v7, docsWithUpdates:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mUnsortedDocuments:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/finsky/api/model/Document;

    .line 539
    .local v5, doc:Lcom/google/android/finsky/api/model/Document;
    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v3

    .line 540
    .local v3, appDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 542
    .local v12, packageName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-virtual {v15}, Lcom/google/android/finsky/appstate/AppStates;->getPackageStateRepository()Lcom/google/android/finsky/appstate/PackageStateRepository;

    move-result-object v15

    invoke-interface {v15, v12}, Lcom/google/android/finsky/appstate/PackageStateRepository;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    move-result-object v13

    .line 543
    .local v13, packageState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    invoke-interface {v15, v12}, Lcom/google/android/finsky/receivers/Installer;->getState(Ljava/lang/String;)Lcom/google/android/finsky/receivers/Installer$InstallerState;

    move-result-object v10

    .line 544
    .local v10, installerState:Lcom/google/android/finsky/receivers/Installer$InstallerState;
    invoke-virtual {v10}, Lcom/google/android/finsky/receivers/Installer$InstallerState;->isDownloadingOrInstalling()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 546
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mDownloadingSectionAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;

    invoke-virtual {v15, v5}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->addDoc(Lcom/google/android/finsky/api/model/Document;)V

    goto :goto_1

    .line 547
    :cond_1
    if-eqz v13, :cond_2

    iget-boolean v15, v13, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->isDisabled:Z

    if-eqz v15, :cond_3

    .line 549
    :cond_2
    invoke-interface {v14, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 550
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mInstallPolicies:Lcom/google/android/finsky/installer/InstallPolicies;

    invoke-virtual {v15, v13, v5}, Lcom/google/android/finsky/installer/InstallPolicies;->canUpdateApp(Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;Lcom/google/android/finsky/api/model/Document;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 552
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 555
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mInstalledSectionAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;

    invoke-virtual {v15, v5}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->addDoc(Lcom/google/android/finsky/api/model/Document;)V

    goto :goto_1

    .line 561
    .end local v3           #appDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
    .end local v5           #doc:Lcom/google/android/finsky/api/model/Document;
    .end local v10           #installerState:Lcom/google/android/finsky/receivers/Installer$InstallerState;
    .end local v12           #packageName:Ljava/lang/String;
    .end local v13           #packageState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mInstallPolicies:Lcom/google/android/finsky/installer/InstallPolicies;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v15, v7, v0}, Lcom/google/android/finsky/installer/InstallPolicies;->getApplicationsEligibleForAutoUpdate(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v8

    .line 563
    .local v8, eligibleForBulkUpdate:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/finsky/api/model/Document;

    .line 564
    .local v6, docWithUpdate:Lcom/google/android/finsky/api/model/Document;
    invoke-interface {v8, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 565
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mUpdatesSectionAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;

    invoke-virtual {v15, v6}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->addDoc(Lcom/google/android/finsky/api/model/Document;)V

    goto :goto_2

    .line 567
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mManualUpdatesSectionAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;

    invoke-virtual {v15, v6}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->addDoc(Lcom/google/android/finsky/api/model/Document;)V

    goto :goto_2

    .line 573
    .end local v6           #docWithUpdate:Lcom/google/android/finsky/api/model/Document;
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mUnsortedDocuments:Ljava/util/List;

    invoke-interface {v15, v14}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 575
    move-object v4, v2

    array-length v11, v4

    const/4 v9, 0x0

    .local v9, i$:I
    :goto_3
    if-ge v9, v11, :cond_8

    aget-object v1, v4, v9

    .line 577
    .restart local v1       #adapter:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;
    invoke-virtual {v1}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->sortDocs()V

    .line 580
    invoke-virtual {v1}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->notifyDataSetChanged()V

    .line 575
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 582
    .end local v1           #adapter:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;
    :cond_8
    return-void
.end method


# virtual methods
.method public addDocs(Ljava/util/Collection;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 505
    .local p1, docs:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/finsky/api/model/Document;>;"
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mUnsortedDocuments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 506
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mUnsortedDocuments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 507
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->notifyDataSetChanged()V

    .line 508
    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mAggregatedAdapter:Lcom/google/android/finsky/adapters/AggregatedAdapter;

    invoke-virtual {v0}, Lcom/google/android/finsky/adapters/AggregatedAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mAggregatedAdapter:Lcom/google/android/finsky/adapters/AggregatedAdapter;

    invoke-virtual {v0}, Lcom/google/android/finsky/adapters/AggregatedAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getDocument(I)Lcom/google/android/finsky/api/model/Document;
    .locals 1
    .parameter "position"

    .prologue
    .line 586
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 386
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mAggregatedAdapter:Lcom/google/android/finsky/adapters/AggregatedAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/adapters/AggregatedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "index"

    .prologue
    .line 347
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 352
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mAggregatedAdapter:Lcom/google/android/finsky/adapters/AggregatedAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/adapters/AggregatedAdapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 379
    move-object v0, p3

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mListView:Landroid/widget/ListView;

    .line 381
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mAggregatedAdapter:Lcom/google/android/finsky/adapters/AggregatedAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/finsky/adapters/AggregatedAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 357
    const/4 v0, 0x3

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 367
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mAggregatedAdapter:Lcom/google/android/finsky/adapters/AggregatedAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/adapters/AggregatedAdapter;->isEnabled(I)Z

    move-result v0

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 512
    invoke-direct {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->putDocsInBuckets()V

    .line 513
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 514
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mBucketsChangedListener:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$BucketsChangedListener;

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mBucketsChangedListener:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$BucketsChangedListener;

    invoke-interface {v0}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$BucketsChangedListener;->bucketsChanged()V

    .line 517
    :cond_0
    return-void
.end method
