.class Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter;
.super Landroid/widget/BaseAdapter;
.source "AppPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/clockwidget/lpsense/AppPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppInfoAdapter"
.end annotation


# instance fields
.field checkArray:Landroid/util/SparseBooleanArray;

.field mAlphaComparator:Lfr/clockwidget/lpsense/AppPickerActivity$AlphaComparator;

.field private mAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lfr/clockwidget/lpsense/AppPickerActivity;


# direct methods
.method public constructor <init>(Lfr/clockwidget/lpsense/AppPickerActivity;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter "c"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 421
    .local p3, appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    iput-object p1, p0, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter;->this$0:Lfr/clockwidget/lpsense/AppPickerActivity;

    .line 419
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 385
    new-instance v0, Lfr/clockwidget/lpsense/AppPickerActivity$AlphaComparator;

    invoke-direct {v0, p1}, Lfr/clockwidget/lpsense/AppPickerActivity$AlphaComparator;-><init>(Lfr/clockwidget/lpsense/AppPickerActivity;)V

    iput-object v0, p0, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter;->mAlphaComparator:Lfr/clockwidget/lpsense/AppPickerActivity$AlphaComparator;

    .line 420
    iput-object p3, p0, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter;->mAppList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$0(Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter;)Lfr/clockwidget/lpsense/AppPickerActivity;
    .locals 1
    .parameter

    .prologue
    .line 383
    iget-object v0, p0, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter;->this$0:Lfr/clockwidget/lpsense/AppPickerActivity;

    return-object v0
.end method

.method private adjustIndex()V
    .locals 5

    .prologue
    .line 503
    iget-object v3, p0, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 504
    .local v1, imax:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 512
    return-void

    .line 505
    :cond_0
    iget-object v3, p0, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 507
    .local v2, info:Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget-object v3, p0, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter;->this$0:Lfr/clockwidget/lpsense/AppPickerActivity;

    #getter for: Lfr/clockwidget/lpsense/AppPickerActivity;->mCache:Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;
    invoke-static {v3}, Lfr/clockwidget/lpsense/AppPickerActivity;->access$6(Lfr/clockwidget/lpsense/AppPickerActivity;)Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;

    move-result-object v3

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #calls: Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;->getEntry(Ljava/lang/String;)Lfr/clockwidget/lpsense/AppPickerActivity$AppInfo;
    invoke-static {v3, v4}, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;->access$1(Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;Ljava/lang/String;)Lfr/clockwidget/lpsense/AppPickerActivity$AppInfo;

    move-result-object v3

    iput v0, v3, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfo;->index:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 504
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 508
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private removePkgBase(Ljava/lang/String;)V
    .locals 4
    .parameter "pkgName"

    .prologue
    .line 564
    iget-object v3, p0, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 565
    .local v2, imax:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 572
    :goto_1
    return-void

    .line 566
    :cond_0
    iget-object v3, p0, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 567
    .local v0, app:Landroid/content/pm/ApplicationInfo;
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 568
    iget-object v3, p0, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 565
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public bulkUpdateIcons(Ljava/util/Map;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 524
    .local p1, icons:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/graphics/drawable/Drawable;>;"
    if-nez p1, :cond_1

    .line 542
    :cond_0
    :goto_0
    return-void

    .line 527
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 528
    .local v4, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 529
    .local v1, changed:Z
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 539
    if-eqz v1, :cond_0

    .line 540
    invoke-virtual {p0}, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 529
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 530
    .local v3, key:Ljava/lang/String;
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    .line 531
    .local v2, ic:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_2

    .line 532
    iget-object v6, p0, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter;->this$0:Lfr/clockwidget/lpsense/AppPickerActivity;

    #getter for: Lfr/clockwidget/lpsense/AppPickerActivity;->mCache:Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;
    invoke-static {v6}, Lfr/clockwidget/lpsense/AppPickerActivity;->access$6(Lfr/clockwidget/lpsense/AppPickerActivity;)Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;

    move-result-object v6

    #calls: Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;->getEntry(Ljava/lang/String;)Lfr/clockwidget/lpsense/AppPickerActivity$AppInfo;
    invoke-static {v6, v3}, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;->access$1(Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;Ljava/lang/String;)Lfr/clockwidget/lpsense/AppPickerActivity$AppInfo;

    move-result-object v0

    .line 533
    .local v0, aInfo:Lfr/clockwidget/lpsense/AppPickerActivity$AppInfo;
    if-eqz v0, :cond_2

    .line 534
    invoke-virtual {v0, v2}, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfo;->refreshIcon(Landroid/graphics/drawable/Drawable;)V

    .line 535
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public bulkUpdateLabels(Ljava/util/Map;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lfr/clockwidget/lpsense/AppPickerActivity$AppLabel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 545
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lfr/clockwidget/lpsense/AppPickerActivity$AppLabel;>;"
    if-nez p1, :cond_1

    .line 561
    :cond_0
    :goto_0
    return-void

    .line 548
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 549
    .local v3, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 550
    .local v1, changed:Z
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 558
    if-eqz v1, :cond_0

    .line 559
    invoke-virtual {p0}, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 550
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 551
    .local v2, key:Ljava/lang/String;
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lfr/clockwidget/lpsense/AppPickerActivity$AppLabel;

    .line 552
    .local v4, label:Lfr/clockwidget/lpsense/AppPickerActivity$AppLabel;
    iget-object v6, p0, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter;->this$0:Lfr/clockwidget/lpsense/AppPickerActivity;

    #getter for: Lfr/clockwidget/lpsense/AppPickerActivity;->mCache:Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;
    invoke-static {v6}, Lfr/clockwidget/lpsense/AppPickerActivity;->access$6(Lfr/clockwidget/lpsense/AppPickerActivity;)Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;

    move-result-object v6

    #calls: Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;->getEntry(Ljava/lang/String;)Lfr/clockwidget/lpsense/AppPickerActivity$AppInfo;
    invoke-static {v6, v2}, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;->access$1(Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;Ljava/lang/String;)Lfr/clockwidget/lpsense/AppPickerActivity$AppInfo;

    move-result-object v0

    .line 553
    .local v0, aInfo:Lfr/clockwidget/lpsense/AppPickerActivity$AppInfo;
    if-eqz v0, :cond_2

    .line 554
    invoke-virtual {v0, v4}, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfo;->refreshLabel(Lfr/clockwidget/lpsense/AppPickerActivity$AppLabel;)V

    .line 555
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public getBaseAppList()Ljava/util/List;
    .locals 1
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
    .line 448
    iget-object v0, p0, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter;->mAppList:Ljava/util/List;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 428
    iget-object v1, p0, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 429
    .local v0, imax:I
    if-ltz p1, :cond_0

    if-lt p1, v0, :cond_1

    .line 430
    :cond_0
    const/4 v1, 0x0

    .line 432
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 6
    .parameter "position"

    .prologue
    const-wide/16 v4, -0x1

    .line 436
    iget-object v2, p0, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 437
    .local v1, imax:I
    if-ltz p1, :cond_0

    if-lt p1, v1, :cond_1

    :cond_0
    move-wide v2, v4

    .line 444
    .end local p0
    :goto_0
    return-wide v2

    .line 440
    .restart local p0
    :cond_1
    iget-object v2, p0, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter;->this$0:Lfr/clockwidget/lpsense/AppPickerActivity;

    #getter for: Lfr/clockwidget/lpsense/AppPickerActivity;->mCache:Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;
    invoke-static {v2}, Lfr/clockwidget/lpsense/AppPickerActivity;->access$6(Lfr/clockwidget/lpsense/AppPickerActivity;)Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;

    move-result-object v2

    iget-object v3, p0, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #calls: Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;->getEntry(Ljava/lang/String;)Lfr/clockwidget/lpsense/AppPickerActivity$AppInfo;
    invoke-static {v2, v3}, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;->access$1(Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;Ljava/lang/String;)Lfr/clockwidget/lpsense/AppPickerActivity$AppInfo;

    move-result-object v0

    .line 441
    .local v0, aInfo:Lfr/clockwidget/lpsense/AppPickerActivity$AppInfo;
    if-nez v0, :cond_2

    move-wide v2, v4

    .line 442
    goto :goto_0

    .line 444
    :cond_2
    iget v2, v0, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfo;->index:I

    int-to-long v2, v2

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    .line 452
    iget-object v3, p0, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt p1, v3, :cond_0

    move-object v3, v5

    .line 499
    :goto_0
    return-object v3

    .line 462
    :cond_0
    if-nez p2, :cond_5

    .line 463
    iget-object v3, p0, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter;->this$0:Lfr/clockwidget/lpsense/AppPickerActivity;

    #getter for: Lfr/clockwidget/lpsense/AppPickerActivity;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v3}, Lfr/clockwidget/lpsense/AppPickerActivity;->access$16(Lfr/clockwidget/lpsense/AppPickerActivity;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030001

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 467
    new-instance v1, Lfr/clockwidget/lpsense/AppPickerActivity$AppViewHolder;

    invoke-direct {v1}, Lfr/clockwidget/lpsense/AppPickerActivity$AppViewHolder;-><init>()V

    .line 468
    .local v1, holder:Lfr/clockwidget/lpsense/AppPickerActivity$AppViewHolder;
    const v3, 0x7f0a0004

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lfr/clockwidget/lpsense/AppPickerActivity$AppViewHolder;->appName:Landroid/widget/TextView;

    .line 469
    const v3, 0x7f0a0003

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lfr/clockwidget/lpsense/AppPickerActivity$AppViewHolder;->appIcon:Landroid/widget/ImageView;

    .line 470
    const v3, 0x7f0a0005

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, v1, Lfr/clockwidget/lpsense/AppPickerActivity$AppViewHolder;->appChecked:Landroid/widget/RadioButton;

    .line 471
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 479
    :goto_1
    iget-object v3, p0, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 480
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v3, p0, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter;->this$0:Lfr/clockwidget/lpsense/AppPickerActivity;

    #getter for: Lfr/clockwidget/lpsense/AppPickerActivity;->mCache:Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;
    invoke-static {v3}, Lfr/clockwidget/lpsense/AppPickerActivity;->access$6(Lfr/clockwidget/lpsense/AppPickerActivity;)Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;

    move-result-object v3

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #calls: Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;->getEntry(Ljava/lang/String;)Lfr/clockwidget/lpsense/AppPickerActivity$AppInfo;
    invoke-static {v3, v4}, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;->access$1(Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;Ljava/lang/String;)Lfr/clockwidget/lpsense/AppPickerActivity$AppInfo;

    move-result-object v2

    .line 481
    .local v2, mInfo:Lfr/clockwidget/lpsense/AppPickerActivity$AppInfo;
    if-eqz v2, :cond_4

    .line 482
    iget-object v3, v2, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfo;->appName:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    .line 483
    iget-object v3, v1, Lfr/clockwidget/lpsense/AppPickerActivity$AppViewHolder;->appName:Landroid/widget/TextView;

    iget-object v4, v2, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfo;->appName:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 485
    :cond_1
    iget-object v3, v2, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfo;->appIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    .line 486
    iget-object v3, v1, Lfr/clockwidget/lpsense/AppPickerActivity$AppViewHolder;->appIcon:Landroid/widget/ImageView;

    iget-object v4, v2, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfo;->appIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 488
    :cond_2
    iget-object v3, p0, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter;->this$0:Lfr/clockwidget/lpsense/AppPickerActivity;

    iget-object v3, v3, Lfr/clockwidget/lpsense/AppPickerActivity;->mCurrentPkgName:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter;->this$0:Lfr/clockwidget/lpsense/AppPickerActivity;

    iget-object v4, v4, Lfr/clockwidget/lpsense/AppPickerActivity;->mCurrentPkgName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 489
    iget-object v3, p0, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter;->checkArray:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 491
    :cond_3
    iget-object v3, v1, Lfr/clockwidget/lpsense/AppPickerActivity$AppViewHolder;->appChecked:Landroid/widget/RadioButton;

    iget-object v4, p0, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter;->checkArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 492
    iget-object v3, v1, Lfr/clockwidget/lpsense/AppPickerActivity$AppViewHolder;->appChecked:Landroid/widget/RadioButton;

    new-instance v4, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter$1;

    invoke-direct {v4, p0, p1}, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter$1;-><init>(Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter;I)V

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    move-object v3, p2

    .line 499
    goto/16 :goto_0

    .line 475
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v1           #holder:Lfr/clockwidget/lpsense/AppPickerActivity$AppViewHolder;
    .end local v2           #mInfo:Lfr/clockwidget/lpsense/AppPickerActivity$AppInfo;
    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfr/clockwidget/lpsense/AppPickerActivity$AppViewHolder;

    .restart local v1       #holder:Lfr/clockwidget/lpsense/AppPickerActivity$AppViewHolder;
    goto :goto_1
.end method

.method public initMapFromList(Ljava/util/List;)V
    .locals 8
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
    .line 391
    .local p1, pAppList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const/4 v5, 0x0

    .line 392
    .local v5, notify:Z
    const/4 v1, 0x0

    .line 393
    .local v1, appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-nez p1, :cond_1

    .line 395
    iget-object v1, p0, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter;->mAppList:Ljava/util/List;

    .line 402
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 403
    .local v3, imax:I
    new-instance v6, Landroid/util/SparseBooleanArray;

    invoke-direct {v6, v3}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v6, p0, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter;->checkArray:Landroid/util/SparseBooleanArray;

    .line 404
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-lt v2, v3, :cond_2

    .line 413
    invoke-virtual {p0}, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter;->sortList()V

    .line 414
    if-eqz v5, :cond_0

    .line 415
    invoke-virtual {p0}, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter;->notifyDataSetChanged()V

    .line 417
    :cond_0
    return-void

    .line 397
    .end local v2           #i:I
    .end local v3           #imax:I
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v6, p0, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter;->mAppList:Ljava/util/List;

    .line 398
    move-object v1, p1

    .line 399
    const/4 v5, 0x1

    goto :goto_0

    .line 405
    .restart local v2       #i:I
    .restart local v3       #imax:I
    :cond_2
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    .line 406
    .local v4, info:Landroid/content/pm/ApplicationInfo;
    iget-object v6, p0, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter;->this$0:Lfr/clockwidget/lpsense/AppPickerActivity;

    #getter for: Lfr/clockwidget/lpsense/AppPickerActivity;->mCache:Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;
    invoke-static {v6}, Lfr/clockwidget/lpsense/AppPickerActivity;->access$6(Lfr/clockwidget/lpsense/AppPickerActivity;)Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;

    move-result-object v6

    iget-object v7, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #calls: Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;->getEntry(Ljava/lang/String;)Lfr/clockwidget/lpsense/AppPickerActivity$AppInfo;
    invoke-static {v6, v7}, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;->access$1(Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;Ljava/lang/String;)Lfr/clockwidget/lpsense/AppPickerActivity$AppInfo;

    move-result-object v0

    .line 407
    .local v0, aInfo:Lfr/clockwidget/lpsense/AppPickerActivity$AppInfo;
    if-nez v0, :cond_3

    .line 408
    new-instance v0, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfo;

    .end local v0           #aInfo:Lfr/clockwidget/lpsense/AppPickerActivity$AppInfo;
    iget-object v6, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v7, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v0, v6, v2, v7}, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfo;-><init>(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 409
    .restart local v0       #aInfo:Lfr/clockwidget/lpsense/AppPickerActivity$AppInfo;
    iget-object v6, p0, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter;->this$0:Lfr/clockwidget/lpsense/AppPickerActivity;

    #getter for: Lfr/clockwidget/lpsense/AppPickerActivity;->mCache:Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;
    invoke-static {v6}, Lfr/clockwidget/lpsense/AppPickerActivity;->access$6(Lfr/clockwidget/lpsense/AppPickerActivity;)Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;

    move-result-object v6

    invoke-virtual {v6, v0}, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;->addEntry(Lfr/clockwidget/lpsense/AppPickerActivity$AppInfo;)V

    .line 411
    :cond_3
    iget-object v6, p0, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter;->checkArray:Landroid/util/SparseBooleanArray;

    const/4 v7, 0x0

    invoke-virtual {v6, v2, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 404
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public removeFromList(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 575
    .local p1, pkgNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 593
    :cond_0
    :goto_0
    return-void

    .line 578
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 581
    const/4 v0, 0x0

    .line 582
    .local v0, found:Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 589
    if-eqz v0, :cond_0

    .line 590
    invoke-direct {p0}, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter;->adjustIndex()V

    .line 591
    invoke-virtual {p0}, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 582
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 584
    .local v1, pkg:Ljava/lang/String;
    invoke-direct {p0, v1}, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter;->removePkgBase(Ljava/lang/String;)V

    .line 586
    iget-object v3, p0, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter;->this$0:Lfr/clockwidget/lpsense/AppPickerActivity;

    #getter for: Lfr/clockwidget/lpsense/AppPickerActivity;->mCache:Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;
    invoke-static {v3}, Lfr/clockwidget/lpsense/AppPickerActivity;->access$6(Lfr/clockwidget/lpsense/AppPickerActivity;)Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;

    move-result-object v3

    invoke-virtual {v3, v1}, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;->removeEntry(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public sortAppList(Ljava/util/List;)V
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
    .line 515
    .local p1, appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    iget-object v0, p0, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter;->mAlphaComparator:Lfr/clockwidget/lpsense/AppPickerActivity$AlphaComparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 516
    return-void
.end method

.method public sortList()V
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter;->mAppList:Ljava/util/List;

    invoke-virtual {p0, v0}, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter;->sortAppList(Ljava/util/List;)V

    .line 520
    invoke-direct {p0}, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter;->adjustIndex()V

    .line 521
    return-void
.end method
