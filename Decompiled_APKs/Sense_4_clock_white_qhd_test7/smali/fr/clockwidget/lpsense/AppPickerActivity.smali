.class public Lfr/clockwidget/lpsense/AppPickerActivity;
.super Landroid/app/ListActivity;
.source "AppPickerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/clockwidget/lpsense/AppPickerActivity$AlphaComparator;,
        Lfr/clockwidget/lpsense/AppPickerActivity$AppInfo;,
        Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter;,
        Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;,
        Lfr/clockwidget/lpsense/AppPickerActivity$AppLabel;,
        Lfr/clockwidget/lpsense/AppPickerActivity$AppViewHolder;,
        Lfr/clockwidget/lpsense/AppPickerActivity$ResourceLoaderThread;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/ListActivity;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/content/DialogInterface$OnCancelListener;"
    }
.end annotation


# static fields
.field private static final DLG_BASE:I = 0x0

.field private static final DLG_LOADING:I = 0x1

.field private static final HANDLER_MESSAGE_BASE:I = 0x0

.field private static final INIT_PKG_INFO:I = 0x1

.field private static final NEXT_LOAD_STEP:I = 0x9

.field private static final PREFS_NAME:Ljava/lang/String; = "AppListInfo.prefs"

.field private static final PREF_DISABLE_CACHE:Ljava/lang/String; = "disableCache"

.field private static final REFRESH_DONE:I = 0x8

.field private static final REFRESH_ICONS:I = 0xb

.field private static final REFRESH_LABELS:I = 0x7

.field private static mDefaultAppIcon:Landroid/graphics/drawable/Drawable;


# instance fields
.field private final cancelListener:Landroid/view/View$OnClickListener;

.field private final clearListener:Landroid/view/View$OnClickListener;

.field private mAppInfoAdapter:Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter;

.field private mCache:Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;

.field mCurrentAppName:Ljava/lang/String;

.field mCurrentPkgName:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mJustCreated:Z

.field private mListView:Landroid/widget/ListView;

.field private mLoadLabels:Z

.field private mPm:Landroid/content/pm/PackageManager;

.field mResourceThread:Lfr/clockwidget/lpsense/AppPickerActivity$ResourceLoaderThread;

.field private mSetListViewLater:Z

.field mTapActKey:Ljava/lang/String;

.field mTapAppKey:Ljava/lang/String;

.field mTapPkgKey:Ljava/lang/String;

.field private final selectListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 102
    iput-object v0, p0, Lfr/clockwidget/lpsense/AppPickerActivity;->mTapAppKey:Ljava/lang/String;

    .line 103
    iput-object v0, p0, Lfr/clockwidget/lpsense/AppPickerActivity;->mTapPkgKey:Ljava/lang/String;

    .line 104
    iput-object v0, p0, Lfr/clockwidget/lpsense/AppPickerActivity;->mTapActKey:Ljava/lang/String;

    .line 105
    iput-object v0, p0, Lfr/clockwidget/lpsense/AppPickerActivity;->mCurrentAppName:Ljava/lang/String;

    .line 106
    iput-object v0, p0, Lfr/clockwidget/lpsense/AppPickerActivity;->mCurrentPkgName:Ljava/lang/String;

    .line 109
    new-instance v0, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;

    invoke-direct {v0, p0}, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;-><init>(Lfr/clockwidget/lpsense/AppPickerActivity;)V

    iput-object v0, p0, Lfr/clockwidget/lpsense/AppPickerActivity;->mCache:Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/clockwidget/lpsense/AppPickerActivity;->mLoadLabels:Z

    .line 117
    iput-boolean v1, p0, Lfr/clockwidget/lpsense/AppPickerActivity;->mJustCreated:Z

    .line 118
    iput-boolean v1, p0, Lfr/clockwidget/lpsense/AppPickerActivity;->mSetListViewLater:Z

    .line 124
    new-instance v0, Lfr/clockwidget/lpsense/AppPickerActivity$1;

    invoke-direct {v0, p0}, Lfr/clockwidget/lpsense/AppPickerActivity$1;-><init>(Lfr/clockwidget/lpsense/AppPickerActivity;)V

    iput-object v0, p0, Lfr/clockwidget/lpsense/AppPickerActivity;->mHandler:Landroid/os/Handler;

    .line 929
    new-instance v0, Lfr/clockwidget/lpsense/AppPickerActivity$2;

    invoke-direct {v0, p0}, Lfr/clockwidget/lpsense/AppPickerActivity$2;-><init>(Lfr/clockwidget/lpsense/AppPickerActivity;)V

    iput-object v0, p0, Lfr/clockwidget/lpsense/AppPickerActivity;->selectListener:Landroid/view/View$OnClickListener;

    .line 964
    new-instance v0, Lfr/clockwidget/lpsense/AppPickerActivity$3;

    invoke-direct {v0, p0}, Lfr/clockwidget/lpsense/AppPickerActivity$3;-><init>(Lfr/clockwidget/lpsense/AppPickerActivity;)V

    iput-object v0, p0, Lfr/clockwidget/lpsense/AppPickerActivity;->clearListener:Landroid/view/View$OnClickListener;

    .line 971
    new-instance v0, Lfr/clockwidget/lpsense/AppPickerActivity$4;

    invoke-direct {v0, p0}, Lfr/clockwidget/lpsense/AppPickerActivity$4;-><init>(Lfr/clockwidget/lpsense/AppPickerActivity;)V

    iput-object v0, p0, Lfr/clockwidget/lpsense/AppPickerActivity;->cancelListener:Landroid/view/View$OnClickListener;

    .line 68
    return-void
.end method

.method static synthetic access$0(Lfr/clockwidget/lpsense/AppPickerActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 117
    iget-boolean v0, p0, Lfr/clockwidget/lpsense/AppPickerActivity;->mJustCreated:Z

    return v0
.end method

.method static synthetic access$1(Lfr/clockwidget/lpsense/AppPickerActivity;Ljava/util/List;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 194
    invoke-direct {p0, p1}, Lfr/clockwidget/lpsense/AppPickerActivity;->updateAppList(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$10(Lfr/clockwidget/lpsense/AppPickerActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 112
    iget-boolean v0, p0, Lfr/clockwidget/lpsense/AppPickerActivity;->mLoadLabels:Z

    return v0
.end method

.method static synthetic access$11(Lfr/clockwidget/lpsense/AppPickerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 232
    invoke-direct {p0}, Lfr/clockwidget/lpsense/AppPickerActivity;->doneLoadingData()V

    return-void
.end method

.method static synthetic access$12(Lfr/clockwidget/lpsense/AppPickerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 268
    invoke-direct {p0}, Lfr/clockwidget/lpsense/AppPickerActivity;->initResourceThread()V

    return-void
.end method

.method static synthetic access$13(Lfr/clockwidget/lpsense/AppPickerActivity;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lfr/clockwidget/lpsense/AppPickerActivity;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$14(Lfr/clockwidget/lpsense/AppPickerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 901
    invoke-direct {p0}, Lfr/clockwidget/lpsense/AppPickerActivity;->clearApplication()V

    return-void
.end method

.method static synthetic access$15()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lfr/clockwidget/lpsense/AppPickerActivity;->mDefaultAppIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$16(Lfr/clockwidget/lpsense/AppPickerActivity;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lfr/clockwidget/lpsense/AppPickerActivity;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$17(Lfr/clockwidget/lpsense/AppPickerActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 916
    invoke-direct {p0, p1}, Lfr/clockwidget/lpsense/AppPickerActivity;->selectApplication(I)V

    return-void
.end method

.method static synthetic access$2(Lfr/clockwidget/lpsense/AppPickerActivity;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 260
    invoke-direct {p0, p1}, Lfr/clockwidget/lpsense/AppPickerActivity;->initAppList(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$3(Lfr/clockwidget/lpsense/AppPickerActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 124
    iget-object v0, p0, Lfr/clockwidget/lpsense/AppPickerActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4(Lfr/clockwidget/lpsense/AppPickerActivity;)Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lfr/clockwidget/lpsense/AppPickerActivity;->mAppInfoAdapter:Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter;

    return-object v0
.end method

.method static synthetic access$5(Lfr/clockwidget/lpsense/AppPickerActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 112
    iput-boolean p1, p0, Lfr/clockwidget/lpsense/AppPickerActivity;->mLoadLabels:Z

    return-void
.end method

.method static synthetic access$6(Lfr/clockwidget/lpsense/AppPickerActivity;)Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;
    .locals 1
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lfr/clockwidget/lpsense/AppPickerActivity;->mCache:Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;

    return-object v0
.end method

.method static synthetic access$7(Lfr/clockwidget/lpsense/AppPickerActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 118
    iget-boolean v0, p0, Lfr/clockwidget/lpsense/AppPickerActivity;->mSetListViewLater:Z

    return v0
.end method

.method static synthetic access$8(Lfr/clockwidget/lpsense/AppPickerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 176
    invoke-direct {p0}, Lfr/clockwidget/lpsense/AppPickerActivity;->initListView()V

    return-void
.end method

.method static synthetic access$9(Lfr/clockwidget/lpsense/AppPickerActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 118
    iput-boolean p1, p0, Lfr/clockwidget/lpsense/AppPickerActivity;->mSetListViewLater:Z

    return-void
.end method

.method private clearApplication()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 902
    iput-object v1, p0, Lfr/clockwidget/lpsense/AppPickerActivity;->mCurrentAppName:Ljava/lang/String;

    .line 903
    iput-object v1, p0, Lfr/clockwidget/lpsense/AppPickerActivity;->mCurrentPkgName:Ljava/lang/String;

    .line 905
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lfr/clockwidget/lpsense/AppPickerActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 913
    return-void

    .line 906
    :cond_0
    iget-object v1, p0, Lfr/clockwidget/lpsense/AppPickerActivity;->mAppInfoAdapter:Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter;

    iget-object v1, v1, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter;->checkArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 907
    iget-object v1, p0, Lfr/clockwidget/lpsense/AppPickerActivity;->mAppInfoAdapter:Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter;

    iget-object v1, v1, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter;->checkArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 909
    :cond_1
    iget-object v1, p0, Lfr/clockwidget/lpsense/AppPickerActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 910
    iget-object v1, p0, Lfr/clockwidget/lpsense/AppPickerActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0005

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 905
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private clearMessagesInHandler()V
    .locals 2

    .prologue
    .line 603
    iget-object v0, p0, Lfr/clockwidget/lpsense/AppPickerActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 604
    iget-object v0, p0, Lfr/clockwidget/lpsense/AppPickerActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 605
    iget-object v0, p0, Lfr/clockwidget/lpsense/AppPickerActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 606
    iget-object v0, p0, Lfr/clockwidget/lpsense/AppPickerActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 607
    return-void
.end method

.method private dismissLoadingMsg()V
    .locals 1

    .prologue
    .line 690
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lfr/clockwidget/lpsense/AppPickerActivity;->dismissDialog(I)V

    .line 691
    return-void
.end method

.method private doneLoadingData()V
    .locals 1

    .prologue
    .line 233
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lfr/clockwidget/lpsense/AppPickerActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 234
    return-void
.end method

.method private initAppList(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 261
    .local p1, appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lfr/clockwidget/lpsense/AppPickerActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 262
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/clockwidget/lpsense/AppPickerActivity;->mLoadLabels:Z

    .line 264
    iget-object v0, p0, Lfr/clockwidget/lpsense/AppPickerActivity;->mAppInfoAdapter:Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter;

    invoke-virtual {v0, p1}, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter;->initMapFromList(Ljava/util/List;)V

    .line 265
    return-void
.end method

.method private initListView()V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lfr/clockwidget/lpsense/AppPickerActivity;->mAppInfoAdapter:Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter;

    invoke-virtual {v0}, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter;->sortList()V

    .line 181
    iget-boolean v0, p0, Lfr/clockwidget/lpsense/AppPickerActivity;->mJustCreated:Z

    if-eqz v0, :cond_0

    .line 183
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/clockwidget/lpsense/AppPickerActivity;->mJustCreated:Z

    .line 184
    iget-object v0, p0, Lfr/clockwidget/lpsense/AppPickerActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lfr/clockwidget/lpsense/AppPickerActivity;->mAppInfoAdapter:Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 185
    invoke-direct {p0}, Lfr/clockwidget/lpsense/AppPickerActivity;->dismissLoadingMsg()V

    .line 187
    :cond_0
    return-void
.end method

.method private initResourceThread()V
    .locals 2

    .prologue
    .line 269
    iget-object v1, p0, Lfr/clockwidget/lpsense/AppPickerActivity;->mResourceThread:Lfr/clockwidget/lpsense/AppPickerActivity$ResourceLoaderThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lfr/clockwidget/lpsense/AppPickerActivity;->mResourceThread:Lfr/clockwidget/lpsense/AppPickerActivity$ResourceLoaderThread;

    invoke-virtual {v1}, Lfr/clockwidget/lpsense/AppPickerActivity$ResourceLoaderThread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 270
    iget-object v1, p0, Lfr/clockwidget/lpsense/AppPickerActivity;->mResourceThread:Lfr/clockwidget/lpsense/AppPickerActivity$ResourceLoaderThread;

    invoke-virtual {v1}, Lfr/clockwidget/lpsense/AppPickerActivity$ResourceLoaderThread;->setAbort()V

    .line 272
    :cond_0
    new-instance v1, Lfr/clockwidget/lpsense/AppPickerActivity$ResourceLoaderThread;

    invoke-direct {v1, p0}, Lfr/clockwidget/lpsense/AppPickerActivity$ResourceLoaderThread;-><init>(Lfr/clockwidget/lpsense/AppPickerActivity;)V

    iput-object v1, p0, Lfr/clockwidget/lpsense/AppPickerActivity;->mResourceThread:Lfr/clockwidget/lpsense/AppPickerActivity$ResourceLoaderThread;

    .line 273
    iget-object v1, p0, Lfr/clockwidget/lpsense/AppPickerActivity;->mAppInfoAdapter:Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter;

    invoke-virtual {v1}, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter;->getBaseAppList()Ljava/util/List;

    move-result-object v0

    .line 274
    .local v0, appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 275
    iget-object v1, p0, Lfr/clockwidget/lpsense/AppPickerActivity;->mResourceThread:Lfr/clockwidget/lpsense/AppPickerActivity$ResourceLoaderThread;

    invoke-virtual {v1, v0}, Lfr/clockwidget/lpsense/AppPickerActivity$ResourceLoaderThread;->loadAllResources(Ljava/util/List;)V

    .line 277
    :cond_1
    return-void
.end method

.method private selectApplication(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 917
    invoke-direct {p0}, Lfr/clockwidget/lpsense/AppPickerActivity;->clearApplication()V

    .line 919
    iget-object v1, p0, Lfr/clockwidget/lpsense/AppPickerActivity;->mAppInfoAdapter:Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter;

    invoke-virtual {v1, p1}, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 920
    .local v0, info:Landroid/content/pm/ApplicationInfo;
    iget-object v1, p0, Lfr/clockwidget/lpsense/AppPickerActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lfr/clockwidget/lpsense/AppPickerActivity;->mCurrentAppName:Ljava/lang/String;

    .line 921
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lfr/clockwidget/lpsense/AppPickerActivity;->mCurrentPkgName:Ljava/lang/String;

    .line 924
    iget-object v1, p0, Lfr/clockwidget/lpsense/AppPickerActivity;->mAppInfoAdapter:Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter;

    iget-object v1, v1, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter;->checkArray:Landroid/util/SparseBooleanArray;

    iget-object v2, p0, Lfr/clockwidget/lpsense/AppPickerActivity;->mAppInfoAdapter:Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter;

    iget-object v2, v2, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter;->checkArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 926
    return-void

    .line 924
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private sendMessageToHandler(I)V
    .locals 1
    .parameter "msgId"

    .prologue
    .line 610
    iget-object v0, p0, Lfr/clockwidget/lpsense/AppPickerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 611
    return-void
.end method

.method private showLoadingMsg()V
    .locals 1

    .prologue
    .line 686
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lfr/clockwidget/lpsense/AppPickerActivity;->showDialog(I)V

    .line 687
    return-void
.end method

.method private updateAppList(Ljava/util/List;)Z
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 195
    .local p1, newList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz p1, :cond_0

    iget-object v9, p0, Lfr/clockwidget/lpsense/AppPickerActivity;->mCache:Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;

    #calls: Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;->isEmpty()Z
    invoke-static {v9}, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;->access$0(Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 196
    :cond_0
    const/4 v9, 0x0

    .line 229
    :goto_0
    return v9

    .line 198
    :cond_1
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 199
    .local v3, existingList:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 201
    .local v7, ret:Z
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 202
    .local v0, N:I
    const/4 v9, 0x1

    sub-int v4, v0, v9

    .local v4, i:I
    :goto_1
    if-gez v4, :cond_4

    .line 214
    const/4 v2, 0x0

    .line 215
    .local v2, deletedList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v9, p0, Lfr/clockwidget/lpsense/AppPickerActivity;->mCache:Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;

    #calls: Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;->getPkgList()Ljava/util/Set;
    invoke-static {v9}, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;->access$2(Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;)Ljava/util/Set;

    move-result-object v8

    .line 216
    .local v8, staleList:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_6

    .line 226
    if-eqz v2, :cond_3

    .line 227
    iget-object v9, p0, Lfr/clockwidget/lpsense/AppPickerActivity;->mAppInfoAdapter:Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter;

    invoke-virtual {v9, v2}, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter;->removeFromList(Ljava/util/List;)V

    :cond_3
    move v9, v7

    .line 229
    goto :goto_0

    .line 203
    .end local v2           #deletedList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v8           #staleList:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_4
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    .line 204
    .local v5, info:Landroid/content/pm/ApplicationInfo;
    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 205
    .local v6, pkgName:Ljava/lang/String;
    iget-object v9, p0, Lfr/clockwidget/lpsense/AppPickerActivity;->mCache:Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;

    #calls: Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;->getEntry(Ljava/lang/String;)Lfr/clockwidget/lpsense/AppPickerActivity$AppInfo;
    invoke-static {v9, v6}, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;->access$1(Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;Ljava/lang/String;)Lfr/clockwidget/lpsense/AppPickerActivity$AppInfo;

    move-result-object v1

    .line 206
    .local v1, aInfo:Lfr/clockwidget/lpsense/AppPickerActivity$AppInfo;
    if-eqz v1, :cond_5

    .line 207
    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 202
    :goto_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 209
    :cond_5
    const/4 v7, 0x1

    goto :goto_3

    .line 216
    .end local v1           #aInfo:Lfr/clockwidget/lpsense/AppPickerActivity$AppInfo;
    .end local v5           #info:Landroid/content/pm/ApplicationInfo;
    .end local v6           #pkgName:Ljava/lang/String;
    .restart local v2       #deletedList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8       #staleList:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_6
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 217
    .restart local v6       #pkgName:Ljava/lang/String;
    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 218
    if-nez v2, :cond_7

    .line 219
    new-instance v2, Ljava/util/ArrayList;

    .end local v2           #deletedList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 220
    .restart local v2       #deletedList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    :cond_7
    const/4 v7, 0x1

    goto :goto_2
.end method


# virtual methods
.method getInstalledApps()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 237
    iget-object v6, p0, Lfr/clockwidget/lpsense/AppPickerActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v4

    .line 238
    .local v4, installedAppList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-nez v4, :cond_0

    .line 239
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 256
    :goto_0
    return-object v6

    .line 241
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 243
    .local v3, appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 244
    .local v5, intent:Landroid/content/Intent;
    const/high16 v6, 0x1000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 245
    const-string v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    iget-object v6, p0, Lfr/clockwidget/lpsense/AppPickerActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v5, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 248
    .local v0, activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    move-object v6, v3

    .line 256
    goto :goto_0

    .line 248
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 249
    .local v2, appInfo:Landroid/content/pm/ApplicationInfo;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 250
    .local v1, activity:Landroid/content/pm/ResolveInfo;
    iget-object v8, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 251
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 979
    invoke-virtual {p0}, Lfr/clockwidget/lpsense/AppPickerActivity;->finish()V

    .line 980
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 873
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 874
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    .line 615
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 616
    const-string v4, "http://lpsense.allo-mobile.fr"

    invoke-static {p0, v4}, Lfr/nullwire/trace/ExceptionHandler;->register(Landroid/content/Context;Ljava/lang/String;)V

    .line 617
    invoke-virtual {p0}, Lfr/clockwidget/lpsense/AppPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 618
    .local v1, intent:Landroid/content/Intent;
    if-nez v1, :cond_0

    .line 619
    invoke-virtual {p0}, Lfr/clockwidget/lpsense/AppPickerActivity;->finish()V

    .line 621
    :cond_0
    const-string v4, "prefs_app_picker_type"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 622
    .local v3, type:Ljava/lang/String;
    const-string v4, "prefs_app_picker_clock"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 623
    const-string v4, "prefs_clock_tap_app"

    iput-object v4, p0, Lfr/clockwidget/lpsense/AppPickerActivity;->mTapAppKey:Ljava/lang/String;

    .line 624
    const-string v4, "prefs_clock_tap_pkg"

    iput-object v4, p0, Lfr/clockwidget/lpsense/AppPickerActivity;->mTapPkgKey:Ljava/lang/String;

    .line 625
    const-string v4, "prefs_clock_tap_act"

    iput-object v4, p0, Lfr/clockwidget/lpsense/AppPickerActivity;->mTapActKey:Ljava/lang/String;

    .line 637
    :goto_0
    invoke-static {p0}, Lfr/clockwidget/lpsense/PreferencesActivity;->initPreferences(Landroid/content/Context;)V

    .line 638
    iget-object v4, p0, Lfr/clockwidget/lpsense/AppPickerActivity;->mTapAppKey:Ljava/lang/String;

    invoke-static {v4}, Lfr/clockwidget/lpsense/PreferencesActivity;->getTapApp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lfr/clockwidget/lpsense/AppPickerActivity;->mCurrentAppName:Ljava/lang/String;

    .line 639
    iget-object v4, p0, Lfr/clockwidget/lpsense/AppPickerActivity;->mTapPkgKey:Ljava/lang/String;

    invoke-static {v4}, Lfr/clockwidget/lpsense/PreferencesActivity;->getTapPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lfr/clockwidget/lpsense/AppPickerActivity;->mCurrentPkgName:Ljava/lang/String;

    .line 641
    invoke-virtual {p0}, Lfr/clockwidget/lpsense/AppPickerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iput-object v4, p0, Lfr/clockwidget/lpsense/AppPickerActivity;->mPm:Landroid/content/pm/PackageManager;

    .line 643
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lfr/clockwidget/lpsense/AppPickerActivity;->requestWindowFeature(I)Z

    .line 644
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lfr/clockwidget/lpsense/AppPickerActivity;->requestWindowFeature(I)Z

    .line 645
    const/4 v4, 0x5

    invoke-virtual {p0, v4}, Lfr/clockwidget/lpsense/AppPickerActivity;->requestWindowFeature(I)Z

    .line 646
    const/high16 v4, 0x7f03

    invoke-virtual {p0, v4}, Lfr/clockwidget/lpsense/AppPickerActivity;->setContentView(I)V

    .line 647
    invoke-direct {p0}, Lfr/clockwidget/lpsense/AppPickerActivity;->showLoadingMsg()V

    .line 648
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1080093

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sput-object v4, Lfr/clockwidget/lpsense/AppPickerActivity;->mDefaultAppIcon:Landroid/graphics/drawable/Drawable;

    .line 650
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lfr/clockwidget/lpsense/AppPickerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    iput-object v4, p0, Lfr/clockwidget/lpsense/AppPickerActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 652
    invoke-virtual {p0}, Lfr/clockwidget/lpsense/AppPickerActivity;->getInstalledApps()Ljava/util/List;

    move-result-object v0

    .line 653
    .local v0, appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    new-instance v4, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter;

    invoke-direct {v4, p0, p0, v0}, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter;-><init>(Lfr/clockwidget/lpsense/AppPickerActivity;Landroid/content/Context;Ljava/util/List;)V

    iput-object v4, p0, Lfr/clockwidget/lpsense/AppPickerActivity;->mAppInfoAdapter:Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter;

    .line 654
    const v4, 0x102000a

    invoke-virtual {p0, v4}, Lfr/clockwidget/lpsense/AppPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 655
    .local v2, lv:Landroid/widget/ListView;
    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 656
    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setSaveEnabled(Z)V

    .line 657
    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 658
    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 659
    iput-object v2, p0, Lfr/clockwidget/lpsense/AppPickerActivity;->mListView:Landroid/widget/ListView;

    .line 660
    iget-object v4, p0, Lfr/clockwidget/lpsense/AppPickerActivity;->mCache:Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;

    #calls: Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;->loadCache()V
    invoke-static {v4}, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;->access$3(Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;)V

    .line 661
    const/high16 v4, 0x7f0a

    invoke-virtual {p0, v4}, Lfr/clockwidget/lpsense/AppPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lfr/clockwidget/lpsense/AppPickerActivity;->selectListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 662
    const v4, 0x7f0a0001

    invoke-virtual {p0, v4}, Lfr/clockwidget/lpsense/AppPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lfr/clockwidget/lpsense/AppPickerActivity;->clearListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 663
    const v4, 0x7f0a0002

    invoke-virtual {p0, v4}, Lfr/clockwidget/lpsense/AppPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lfr/clockwidget/lpsense/AppPickerActivity;->cancelListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 664
    return-void

    .line 626
    .end local v0           #appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v2           #lv:Landroid/widget/ListView;
    :cond_1
    const-string v4, "prefs_app_picker_date"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 627
    const-string v4, "prefs_date_tap_app"

    iput-object v4, p0, Lfr/clockwidget/lpsense/AppPickerActivity;->mTapAppKey:Ljava/lang/String;

    .line 628
    const-string v4, "prefs_date_tap_pkg"

    iput-object v4, p0, Lfr/clockwidget/lpsense/AppPickerActivity;->mTapPkgKey:Ljava/lang/String;

    .line 629
    const-string v4, "prefs_date_tap_act"

    iput-object v4, p0, Lfr/clockwidget/lpsense/AppPickerActivity;->mTapActKey:Ljava/lang/String;

    goto/16 :goto_0

    .line 630
    :cond_2
    const-string v4, "prefs_app_picker_weather"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 631
    const-string v4, "prefs_weather_tap_app"

    iput-object v4, p0, Lfr/clockwidget/lpsense/AppPickerActivity;->mTapAppKey:Ljava/lang/String;

    .line 632
    const-string v4, "prefs_weather_tap_pkg"

    iput-object v4, p0, Lfr/clockwidget/lpsense/AppPickerActivity;->mTapPkgKey:Ljava/lang/String;

    .line 633
    const-string v4, "prefs_weather_tap_act"

    iput-object v4, p0, Lfr/clockwidget/lpsense/AppPickerActivity;->mTapActKey:Ljava/lang/String;

    goto/16 :goto_0

    .line 635
    :cond_3
    invoke-virtual {p0}, Lfr/clockwidget/lpsense/AppPickerActivity;->finish()V

    goto/16 :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    const/4 v2, 0x1

    .line 674
    if-ne p1, v2, :cond_0

    .line 675
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 676
    .local v0, dlg:Landroid/app/ProgressDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 677
    const v1, 0x7f08001e

    invoke-virtual {p0, v1}, Lfr/clockwidget/lpsense/AppPickerActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 678
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 679
    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    move-object v1, v0

    .line 682
    .end local v0           #dlg:Landroid/app/ProgressDialog;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 668
    iget-object v0, p0, Lfr/clockwidget/lpsense/AppPickerActivity;->mCache:Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;

    #calls: Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;->updateCache()V
    invoke-static {v0}, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;->access$4(Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;)V

    .line 669
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 670
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 894
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    if-ltz p3, :cond_0

    iget-object v0, p0, Lfr/clockwidget/lpsense/AppPickerActivity;->mAppInfoAdapter:Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter;

    invoke-virtual {v0}, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter;->getCount()I

    move-result v0

    if-ge p3, v0, :cond_0

    .line 895
    invoke-direct {p0, p3}, Lfr/clockwidget/lpsense/AppPickerActivity;->selectApplication(I)V

    .line 896
    const v0, 0x7f0a0005

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/RadioButton;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 898
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 853
    invoke-super {p0}, Landroid/app/ListActivity;->onStart()V

    .line 854
    const-string v0, "A2UKWUCUC9K3KHMFZMCB"

    invoke-static {p0, v0}, Lfr/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 855
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lfr/clockwidget/lpsense/AppPickerActivity;->sendMessageToHandler(I)V

    .line 856
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 860
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 862
    iget-object v0, p0, Lfr/clockwidget/lpsense/AppPickerActivity;->mResourceThread:Lfr/clockwidget/lpsense/AppPickerActivity$ResourceLoaderThread;

    if-eqz v0, :cond_0

    .line 863
    iget-object v0, p0, Lfr/clockwidget/lpsense/AppPickerActivity;->mResourceThread:Lfr/clockwidget/lpsense/AppPickerActivity$ResourceLoaderThread;

    invoke-virtual {v0}, Lfr/clockwidget/lpsense/AppPickerActivity$ResourceLoaderThread;->setAbort()V

    .line 866
    :cond_0
    invoke-direct {p0}, Lfr/clockwidget/lpsense/AppPickerActivity;->clearMessagesInHandler()V

    .line 867
    invoke-static {p0}, Lfr/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 868
    return-void
.end method
