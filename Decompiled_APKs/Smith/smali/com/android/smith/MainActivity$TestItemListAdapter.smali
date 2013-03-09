.class Lcom/android/smith/MainActivity$TestItemListAdapter;
.super Landroid/widget/BaseAdapter;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/smith/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TestItemListAdapter"
.end annotation


# instance fields
.field private mActivitiesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIntent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/android/smith/MainActivity;


# direct methods
.method public constructor <init>(Lcom/android/smith/MainActivity;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 345
    iput-object p1, p0, Lcom/android/smith/MainActivity$TestItemListAdapter;->this$0:Lcom/android/smith/MainActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 346
    iput-object p2, p0, Lcom/android/smith/MainActivity$TestItemListAdapter;->mContext:Landroid/content/Context;

    .line 347
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, p3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v5, p0, Lcom/android/smith/MainActivity$TestItemListAdapter;->mIntent:Landroid/content/Intent;

    .line 348
    iget-object v5, p0, Lcom/android/smith/MainActivity$TestItemListAdapter;->mIntent:Landroid/content/Intent;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 349
    const-string v5, "layout_inflater"

    invoke-virtual {p2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    iput-object v5, p0, Lcom/android/smith/MainActivity$TestItemListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 351
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 353
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    invoke-virtual {v3, p3, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/android/smith/MainActivity$TestItemListAdapter;->mActivitiesList:Ljava/util/List;

    .line 366
    iget-object v5, p0, Lcom/android/smith/MainActivity$TestItemListAdapter;->mActivitiesList:Ljava/util/List;

    if-eqz v5, :cond_7

    .line 368
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 370
    .local v2, newlist:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v5, p0, Lcom/android/smith/MainActivity$TestItemListAdapter;->mActivitiesList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 372
    iget-object v5, p0, Lcom/android/smith/MainActivity$TestItemListAdapter;->mActivitiesList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 374
    .local v4, ri:Landroid/content/pm/ResolveInfo;
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v5, :cond_2

    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 376
    .local v0, ci:Landroid/content/pm/ComponentInfo;
    :goto_1
    iget-object v5, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-class v7, Lcom/android/smith/MainActivity;

    invoke-virtual {v7}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 379
    iget-object v5, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    const-class v6, Lcom/android/smith/LoggerController;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/smith/Device;->isUserBuild()Z

    move-result v5

    if-nez v5, :cond_1

    .line 381
    :cond_0
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 374
    .end local v0           #ci:Landroid/content/pm/ComponentInfo;
    :cond_2
    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    goto :goto_1

    .line 386
    .end local v4           #ri:Landroid/content/pm/ResolveInfo;
    :cond_3
    const/4 v1, 0x0

    :goto_2
    iget-object v5, p0, Lcom/android/smith/MainActivity$TestItemListAdapter;->mActivitiesList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_6

    .line 388
    iget-object v5, p0, Lcom/android/smith/MainActivity$TestItemListAdapter;->mActivitiesList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 390
    .restart local v4       #ri:Landroid/content/pm/ResolveInfo;
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v5, :cond_5

    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 392
    .restart local v0       #ci:Landroid/content/pm/ComponentInfo;
    :goto_3
    iget-object v5, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-class v7, Lcom/android/smith/MainActivity;

    invoke-virtual {v7}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 394
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 390
    .end local v0           #ci:Landroid/content/pm/ComponentInfo;
    :cond_5
    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    goto :goto_3

    .line 398
    .end local v4           #ri:Landroid/content/pm/ResolveInfo;
    :cond_6
    iput-object v2, p0, Lcom/android/smith/MainActivity$TestItemListAdapter;->mActivitiesList:Ljava/util/List;

    .line 400
    .end local v1           #i:I
    .end local v2           #newlist:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_7
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/android/smith/MainActivity$TestItemListAdapter;->mActivitiesList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/smith/MainActivity$TestItemListAdapter;->mActivitiesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 436
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 441
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 448
    if-nez p2, :cond_1

    .line 450
    iget-object v7, p0, Lcom/android/smith/MainActivity$TestItemListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x1090004

    const/4 v9, 0x0

    invoke-virtual {v7, v8, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 457
    .local v6, view:Landroid/view/View;
    :goto_0
    const v7, 0x1020014

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 458
    .local v4, tv1:Landroid/widget/TextView;
    const v7, 0x1020015

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 460
    .local v5, tv2:Landroid/widget/TextView;
    iget-object v7, p0, Lcom/android/smith/MainActivity$TestItemListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 461
    .local v2, pm:Landroid/content/pm/PackageManager;
    iget-object v7, p0, Lcom/android/smith/MainActivity$TestItemListAdapter;->mActivitiesList:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 462
    .local v3, ri:Landroid/content/pm/ResolveInfo;
    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v7, :cond_2

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 464
    .local v0, ci:Landroid/content/pm/ComponentInfo;
    :goto_1
    invoke-virtual {v3, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 465
    .local v1, label:Ljava/lang/CharSequence;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    const-string v9, "com.android.smith."

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, ""

    :goto_2
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v1, :cond_4

    .end local v1           #label:Ljava/lang/CharSequence;
    :goto_3
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 467
    iget-object v7, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    if-eqz v7, :cond_0

    iget v7, v0, Landroid/content/pm/ComponentInfo;->labelRes:I

    if-eqz v7, :cond_0

    iget-object v7, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v7, :cond_0

    .line 469
    iget-object v7, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget v8, v0, Landroid/content/pm/ComponentInfo;->labelRes:I

    add-int/lit8 v8, v8, 0x1

    iget-object v9, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v7, v8, v9}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 472
    :cond_0
    return-object v6

    .line 454
    .end local v0           #ci:Landroid/content/pm/ComponentInfo;
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    .end local v3           #ri:Landroid/content/pm/ResolveInfo;
    .end local v4           #tv1:Landroid/widget/TextView;
    .end local v5           #tv2:Landroid/widget/TextView;
    .end local v6           #view:Landroid/view/View;
    :cond_1
    move-object v6, p2

    .restart local v6       #view:Landroid/view/View;
    goto :goto_0

    .line 462
    .restart local v2       #pm:Landroid/content/pm/PackageManager;
    .restart local v3       #ri:Landroid/content/pm/ResolveInfo;
    .restart local v4       #tv1:Landroid/widget/TextView;
    .restart local v5       #tv2:Landroid/widget/TextView;
    :cond_2
    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    goto :goto_1

    .line 465
    .restart local v0       #ci:Landroid/content/pm/ComponentInfo;
    .restart local v1       #label:Ljava/lang/CharSequence;
    :cond_3
    const-string v7, "* "

    goto :goto_2

    :cond_4
    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v8, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    goto :goto_3
.end method

.method public intentAtPosition(I)Landroid/content/Intent;
    .locals 5
    .parameter "position"

    .prologue
    .line 404
    iget-object v3, p0, Lcom/android/smith/MainActivity$TestItemListAdapter;->mActivitiesList:Ljava/util/List;

    if-nez v3, :cond_0

    .line 406
    const/4 v1, 0x0

    .line 414
    :goto_0
    return-object v1

    .line 409
    :cond_0
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/smith/MainActivity$TestItemListAdapter;->mIntent:Landroid/content/Intent;

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 411
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/smith/MainActivity$TestItemListAdapter;->mActivitiesList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 412
    .local v2, ri:Landroid/content/pm/ResolveInfo;
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_1

    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 413
    .local v0, ci:Landroid/content/pm/ComponentInfo;
    :goto_1
    iget-object v3, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 412
    .end local v0           #ci:Landroid/content/pm/ComponentInfo;
    :cond_1
    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    goto :goto_1
.end method
