.class public Lcom/htc/dockmode/shortcut/SelectAppActivity;
.super Landroid/app/Activity;
.source "SelectAppActivity.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/dockmode/shortcut/SelectAppActivity$MyApAdapter;
    }
.end annotation


# static fields
.field private static final LOG_PREFIX:Ljava/lang/String; = "SelectAppActivity"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final LOAD_APP_LIST:I

.field private final SET_APP_LIST:I

.field private isLaunchApp:Z

.field private mApAdapter:Lcom/htc/dockmode/shortcut/SelectAppActivity$MyApAdapter;

.field private mApListView:Lcom/htc/widget/HtcListView;

.field private final mDockReceiver:Landroid/content/BroadcastReceiver;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field mInflater:Landroid/view/LayoutInflater;

.field private mLooper:Landroid/os/Looper;

.field private mNonUIHandler:Landroid/os/Handler;

.field mPackageMng:Landroid/content/pm/PackageManager;

.field private mReceiverRegistered:Z

.field private final mUIHander:Landroid/os/Handler;

.field private mtitle:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-class v0, Lcom/htc/dockmode/utils/MultiInit;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/dockmode/shortcut/SelectAppActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 48
    iput-boolean v1, p0, Lcom/htc/dockmode/shortcut/SelectAppActivity;->isLaunchApp:Z

    .line 49
    iput-boolean v1, p0, Lcom/htc/dockmode/shortcut/SelectAppActivity;->mReceiverRegistered:Z

    .line 52
    iput-object v0, p0, Lcom/htc/dockmode/shortcut/SelectAppActivity;->mHandlerThread:Landroid/os/HandlerThread;

    .line 53
    iput-object v0, p0, Lcom/htc/dockmode/shortcut/SelectAppActivity;->mLooper:Landroid/os/Looper;

    .line 54
    iput-object v0, p0, Lcom/htc/dockmode/shortcut/SelectAppActivity;->mNonUIHandler:Landroid/os/Handler;

    .line 56
    const v0, 0x10001

    iput v0, p0, Lcom/htc/dockmode/shortcut/SelectAppActivity;->SET_APP_LIST:I

    .line 57
    const v0, 0x10002

    iput v0, p0, Lcom/htc/dockmode/shortcut/SelectAppActivity;->LOAD_APP_LIST:I

    .line 112
    new-instance v0, Lcom/htc/dockmode/shortcut/SelectAppActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/dockmode/shortcut/SelectAppActivity$2;-><init>(Lcom/htc/dockmode/shortcut/SelectAppActivity;)V

    iput-object v0, p0, Lcom/htc/dockmode/shortcut/SelectAppActivity;->mUIHander:Landroid/os/Handler;

    .line 138
    new-instance v0, Lcom/htc/dockmode/shortcut/SelectAppActivity$3;

    invoke-direct {v0, p0}, Lcom/htc/dockmode/shortcut/SelectAppActivity$3;-><init>(Lcom/htc/dockmode/shortcut/SelectAppActivity;)V

    iput-object v0, p0, Lcom/htc/dockmode/shortcut/SelectAppActivity;->mDockReceiver:Landroid/content/BroadcastReceiver;

    .line 163
    return-void
.end method

.method static synthetic access$000(Lcom/htc/dockmode/shortcut/SelectAppActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/htc/dockmode/shortcut/SelectAppActivity;->loadApplications()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/dockmode/shortcut/SelectAppActivity;)Lcom/htc/dockmode/shortcut/SelectAppActivity$MyApAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/htc/dockmode/shortcut/SelectAppActivity;->mApAdapter:Lcom/htc/dockmode/shortcut/SelectAppActivity$MyApAdapter;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/dockmode/shortcut/SelectAppActivity;Lcom/htc/dockmode/shortcut/SelectAppActivity$MyApAdapter;)Lcom/htc/dockmode/shortcut/SelectAppActivity$MyApAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/htc/dockmode/shortcut/SelectAppActivity;->mApAdapter:Lcom/htc/dockmode/shortcut/SelectAppActivity$MyApAdapter;

    return-object p1
.end method

.method static synthetic access$200(Lcom/htc/dockmode/shortcut/SelectAppActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/htc/dockmode/shortcut/SelectAppActivity;->mUIHander:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/dockmode/shortcut/SelectAppActivity;)Lcom/htc/widget/HtcListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/htc/dockmode/shortcut/SelectAppActivity;->mApListView:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method private initHandler()V
    .locals 3

    .prologue
    .line 94
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/htc/dockmode/shortcut/SelectAppActivity;->TAG:Ljava/lang/String;

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/htc/dockmode/shortcut/SelectAppActivity;->mHandlerThread:Landroid/os/HandlerThread;

    .line 96
    iget-object v0, p0, Lcom/htc/dockmode/shortcut/SelectAppActivity;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 97
    iget-object v0, p0, Lcom/htc/dockmode/shortcut/SelectAppActivity;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dockmode/shortcut/SelectAppActivity;->mLooper:Landroid/os/Looper;

    .line 98
    new-instance v0, Lcom/htc/dockmode/shortcut/SelectAppActivity$1;

    iget-object v1, p0, Lcom/htc/dockmode/shortcut/SelectAppActivity;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/htc/dockmode/shortcut/SelectAppActivity$1;-><init>(Lcom/htc/dockmode/shortcut/SelectAppActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/dockmode/shortcut/SelectAppActivity;->mNonUIHandler:Landroid/os/Handler;

    .line 110
    return-void
.end method

.method private initReceiver()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 124
    const-string v1, "uimode"

    invoke-virtual {p0, v1}, Lcom/htc/dockmode/shortcut/SelectAppActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/UiModeManager;

    invoke-virtual {v1}, Landroid/app/UiModeManager;->getDockState()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 126
    monitor-enter p0

    .line 127
    :try_start_0
    iget-boolean v1, p0, Lcom/htc/dockmode/shortcut/SelectAppActivity;->mReceiverRegistered:Z

    if-nez v1, :cond_0

    .line 129
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 130
    .local v0, dockfilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    iget-object v1, p0, Lcom/htc/dockmode/shortcut/SelectAppActivity;->mDockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/dockmode/shortcut/SelectAppActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 132
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/dockmode/shortcut/SelectAppActivity;->mReceiverRegistered:Z

    .line 134
    .end local v0           #dockfilter:Landroid/content/IntentFilter;
    :cond_0
    monitor-exit p0

    .line 136
    :cond_1
    return-void

    .line 134
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private loadApplications()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ActivityInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 234
    const-string v12, "SelectAppActivity"

    const-string v13, "loadApplications"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 236
    .local v1, appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ActivityInfo;>;"
    new-instance v7, Landroid/content/Intent;

    const-string v12, "android.intent.action.MAIN"

    const/4 v13, 0x0

    invoke-direct {v7, v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 237
    .local v7, mainIntent:Landroid/content/Intent;
    const-string v12, "android.intent.category.LAUNCHER"

    invoke-virtual {v7, v12}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    invoke-virtual {p0}, Lcom/htc/dockmode/shortcut/SelectAppActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v7, v13}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 241
    .local v5, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v4, Landroid/content/Intent;

    const-string v12, "android.intent.action.VIEW"

    invoke-direct {v4, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 242
    .local v4, intent:Landroid/content/Intent;
    const-string v12, "com.htc.HTCAlbum.action.LAUNCH_SLIDESHOW"

    invoke-virtual {v4, v12}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    const-string v12, "slideshow_setting_mode"

    const-string v13, "dock_mode"

    invoke-virtual {v4, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    invoke-virtual {p0}, Lcom/htc/dockmode/shortcut/SelectAppActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    const/high16 v13, 0x1

    invoke-virtual {v12, v4, v13}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v9

    .line 246
    .local v9, photo_frame_info:Landroid/content/pm/ResolveInfo;
    if-eqz v9, :cond_0

    .line 247
    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    :cond_0
    if-eqz v5, :cond_5

    .line 249
    new-instance v12, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    iget-object v13, p0, Lcom/htc/dockmode/shortcut/SelectAppActivity;->mPackageMng:Landroid/content/pm/PackageManager;

    invoke-direct {v12, v13}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v5, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 251
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 254
    .local v6, listSize:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v6, :cond_5

    .line 255
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 256
    .local v10, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 257
    .local v0, appInfo:Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_1

    .line 258
    iget-object v12, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v13, "com.htc.dockmode"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    iget-object v12, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v13, "com.android.camera"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    iget-object v12, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v13, "com.htc.HtcNaviPanel"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    iget-object v12, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v13, "com.htc.flashlight"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 254
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 264
    :cond_2
    iget-object v12, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v13, "com.htc.album.addons.slideshow.SlideShow"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 265
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v12

    add-int/lit8 v3, v12, -0x1

    .line 266
    .local v3, index:I
    invoke-virtual {p0}, Lcom/htc/dockmode/shortcut/SelectAppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f080011

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 270
    .local v8, photo_frame:Ljava/lang/String;
    :goto_2
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0}, Lcom/htc/dockmode/shortcut/SelectAppActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v12

    if-lez v12, :cond_3

    .line 271
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0}, Lcom/htc/dockmode/shortcut/SelectAppActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 273
    .local v11, s:Ljava/lang/String;
    add-int/lit8 v3, v3, -0x1

    .line 274
    goto :goto_2

    .line 275
    .end local v11           #s:Ljava/lang/String;
    :cond_3
    add-int/lit8 v12, v3, 0x1

    invoke-interface {v1, v12, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 277
    .end local v3           #index:I
    .end local v8           #photo_frame:Ljava/lang/String;
    :cond_4
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 286
    .end local v0           #appInfo:Landroid/content/pm/ActivityInfo;
    .end local v2           #i:I
    .end local v6           #listSize:I
    .end local v10           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_5
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 63
    const-string v1, "SelectAppActivity"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const v1, 0x7f030005

    invoke-virtual {p0, v1}, Lcom/htc/dockmode/shortcut/SelectAppActivity;->setContentView(I)V

    .line 66
    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Lcom/htc/dockmode/shortcut/SelectAppActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/htc/dockmode/shortcut/SelectAppActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 68
    invoke-virtual {p0}, Lcom/htc/dockmode/shortcut/SelectAppActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dockmode/shortcut/SelectAppActivity;->mPackageMng:Landroid/content/pm/PackageManager;

    .line 70
    const v1, 0x7f0a0046

    invoke-virtual {p0, v1}, Lcom/htc/dockmode/shortcut/SelectAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListView;

    iput-object v1, p0, Lcom/htc/dockmode/shortcut/SelectAppActivity;->mApListView:Lcom/htc/widget/HtcListView;

    .line 72
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x100

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 73
    .local v0, color:Landroid/graphics/drawable/ColorDrawable;
    iget-object v1, p0, Lcom/htc/dockmode/shortcut/SelectAppActivity;->mApListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcListView;->setListBackground(Landroid/graphics/drawable/Drawable;)V

    .line 79
    invoke-virtual {p0}, Lcom/htc/dockmode/shortcut/SelectAppActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "LAUNCH_APP"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/dockmode/shortcut/SelectAppActivity;->isLaunchApp:Z

    .line 80
    const v1, 0x7f0a0045

    invoke-virtual {p0, v1}, Lcom/htc/dockmode/shortcut/SelectAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/dockmode/shortcut/SelectAppActivity;->mtitle:Landroid/widget/TextView;

    .line 81
    iget-boolean v1, p0, Lcom/htc/dockmode/shortcut/SelectAppActivity;->isLaunchApp:Z

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/htc/dockmode/shortcut/SelectAppActivity;->mtitle:Landroid/widget/TextView;

    const v2, 0x7f08004d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 87
    :goto_0
    invoke-direct {p0}, Lcom/htc/dockmode/shortcut/SelectAppActivity;->initHandler()V

    .line 88
    invoke-direct {p0}, Lcom/htc/dockmode/shortcut/SelectAppActivity;->initReceiver()V

    .line 89
    iget-object v1, p0, Lcom/htc/dockmode/shortcut/SelectAppActivity;->mNonUIHandler:Landroid/os/Handler;

    const v2, 0x10002

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 90
    iget-object v1, p0, Lcom/htc/dockmode/shortcut/SelectAppActivity;->mApListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, p0}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 91
    return-void

    .line 84
    :cond_0
    iget-object v1, p0, Lcom/htc/dockmode/shortcut/SelectAppActivity;->mtitle:Landroid/widget/TextView;

    const v2, 0x7f08004a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/htc/dockmode/shortcut/SelectAppActivity;->releaseReceiver()V

    .line 328
    iget-object v0, p0, Lcom/htc/dockmode/shortcut/SelectAppActivity;->mNonUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/htc/dockmode/shortcut/SelectAppActivity;->mNonUIHandler:Landroid/os/Handler;

    const v1, 0x10002

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/htc/dockmode/shortcut/SelectAppActivity;->mUIHander:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 334
    iget-object v0, p0, Lcom/htc/dockmode/shortcut/SelectAppActivity;->mUIHander:Landroid/os/Handler;

    const v1, 0x10001

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 337
    :cond_1
    iget-object v0, p0, Lcom/htc/dockmode/shortcut/SelectAppActivity;->mLooper:Landroid/os/Looper;

    if-eqz v0, :cond_2

    .line 338
    iget-object v0, p0, Lcom/htc/dockmode/shortcut/SelectAppActivity;->mLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 339
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/dockmode/shortcut/SelectAppActivity;->mLooper:Landroid/os/Looper;

    .line 341
    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 342
    return-void
.end method

.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 292
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    iget-object v4, p0, Lcom/htc/dockmode/shortcut/SelectAppActivity;->mApAdapter:Lcom/htc/dockmode/shortcut/SelectAppActivity$MyApAdapter;

    invoke-virtual {v4, p3}, Lcom/htc/dockmode/shortcut/SelectAppActivity$MyApAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    .line 293
    .local v0, apInfo:Landroid/content/pm/ActivityInfo;
    iget-boolean v4, p0, Lcom/htc/dockmode/shortcut/SelectAppActivity;->isLaunchApp:Z

    if-eqz v4, :cond_1

    .line 294
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v5, "com.htc.album.addons.slideshow.SlideShow"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 296
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 297
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "com.htc.HTCAlbum.action.LAUNCH_SLIDESHOW"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    const-string v4, "slideshow_setting_mode"

    const-string v5, "dock_mode"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 299
    invoke-static {p0, v2}, Lcom/htc/dockmode/utils/ActivityUtil;->startActivitySafely(Landroid/content/Context;Landroid/content/Intent;)V

    .line 300
    invoke-virtual {p0}, Lcom/htc/dockmode/shortcut/SelectAppActivity;->finish()V

    .line 321
    .end local v2           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 304
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 306
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 307
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    .local v3, mCompName:Landroid/content/ComponentName;
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 311
    const/high16 v4, 0x1200

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 313
    invoke-static {p0, v2}, Lcom/htc/dockmode/utils/ActivityUtil;->startActivitySafely(Landroid/content/Context;Landroid/content/Intent;)V

    .line 314
    invoke-virtual {p0}, Lcom/htc/dockmode/shortcut/SelectAppActivity;->finish()V

    goto :goto_0

    .line 316
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #mCompName:Landroid/content/ComponentName;
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 317
    .local v1, data:Landroid/content/Intent;
    const-string v4, "appinfo"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 318
    const/4 v4, -0x1

    invoke-virtual {p0, v4, v1}, Lcom/htc/dockmode/shortcut/SelectAppActivity;->setResult(ILandroid/content/Intent;)V

    .line 319
    invoke-virtual {p0}, Lcom/htc/dockmode/shortcut/SelectAppActivity;->finish()V

    goto :goto_0
.end method

.method protected releaseReceiver()V
    .locals 1

    .prologue
    .line 155
    monitor-enter p0

    .line 156
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/dockmode/shortcut/SelectAppActivity;->mReceiverRegistered:Z

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/htc/dockmode/shortcut/SelectAppActivity;->mDockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/dockmode/shortcut/SelectAppActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/dockmode/shortcut/SelectAppActivity;->mReceiverRegistered:Z

    .line 160
    :cond_0
    monitor-exit p0

    .line 161
    return-void

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
