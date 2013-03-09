.class public abstract Lcom/htc/lmw/WizardListActivity;
.super Lcom/htc/lmw/WizardActivity;
.source "WizardListActivity.java"

# interfaces
.implements Lcom/htc/lmw/InstalledAppsObserver$IAppsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/lmw/WizardListActivity$ApplicationsLoadThread;
    }
.end annotation


# static fields
.field protected static final SELECTED_PACKAGES:Ljava/lang/String; = "selected_packages"

.field private static final SORT_ALPHA:I = 0x0

.field private static final SORT_SIZE:I = 0x1

.field private static isCreatingActivity:Z


# instance fields
.field protected apps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/lmw/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected availableSpaceFormat:Ljava/lang/String;

.field private currentSort:I

.field protected freeMemoryInfo:Landroid/widget/TextView;

.field protected listAdapter:Lcom/htc/lmw/AppAdapter;

.field protected listView:Lcom/htc/widget/HtcListView;

.field protected memoryInfo:Landroid/widget/TextView;

.field protected selectedPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private totalMemOfselectedApps:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/lmw/WizardListActivity;->isCreatingActivity:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/htc/lmw/WizardActivity;-><init>(Landroid/app/Activity;)V

    .line 29
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lmw/WizardListActivity;->apps:Ljava/util/List;

    .line 35
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lmw/WizardListActivity;->selectedPackages:Ljava/util/List;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lmw/WizardListActivity;->availableSpaceFormat:Ljava/lang/String;

    .line 38
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/lmw/WizardListActivity;->totalMemOfselectedApps:J

    .line 47
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/lmw/WizardListActivity;->currentSort:I

    .line 25
    return-void
.end method

.method static synthetic access$014(Lcom/htc/lmw/WizardListActivity;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iget-wide v0, p0, Lcom/htc/lmw/WizardListActivity;->totalMemOfselectedApps:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/htc/lmw/WizardListActivity;->totalMemOfselectedApps:J

    return-wide v0
.end method

.method static synthetic access$022(Lcom/htc/lmw/WizardListActivity;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iget-wide v0, p0, Lcom/htc/lmw/WizardListActivity;->totalMemOfselectedApps:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/htc/lmw/WizardListActivity;->totalMemOfselectedApps:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/htc/lmw/WizardListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/htc/lmw/WizardListActivity;->changingNextButtonState()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/lmw/WizardListActivity;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/htc/lmw/WizardListActivity;->getSelectedPackages(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/lmw/WizardListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/htc/lmw/WizardListActivity;->prepareUinstallAppsForCriticalMode()V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/lmw/WizardListActivity;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/lmw/WizardListActivity;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/lmw/WizardListActivity;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/lmw/WizardListActivity;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/lmw/WizardListActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget v0, p0, Lcom/htc/lmw/WizardListActivity;->currentSort:I

    return v0
.end method

.method static synthetic access$900(Lcom/htc/lmw/WizardListActivity;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method private changingNextButtonState()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 452
    invoke-static {}, Lcom/htc/lmw/Wizard;->getInstance()Lcom/htc/lmw/Wizard;

    move-result-object v0

    .line 454
    .local v0, wizard:Lcom/htc/lmw/Wizard;
    invoke-virtual {v0}, Lcom/htc/lmw/Wizard;->isLowMemory()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 456
    instance-of v1, p0, Lcom/htc/lmw/steps/MoveToSdCard;

    if-eqz v1, :cond_0

    .line 458
    iget-wide v1, p0, Lcom/htc/lmw/WizardListActivity;->totalMemOfselectedApps:J

    invoke-virtual {p0, v1, v2}, Lcom/htc/lmw/WizardListActivity;->isNotEnoughMemory(J)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 460
    invoke-virtual {p0, v4}, Lcom/htc/lmw/WizardListActivity;->setNextButtonEnabled(Z)V

    .line 468
    :cond_0
    :goto_0
    instance-of v1, p0, Lcom/htc/lmw/steps/Uninstall;

    if-eqz v1, :cond_2

    .line 470
    invoke-static {}, Lcom/htc/lmw/ExternalStorageObserver;->isMediaMounted()Z

    move-result v1

    if-nez v1, :cond_5

    .line 472
    iget-wide v1, p0, Lcom/htc/lmw/WizardListActivity;->totalMemOfselectedApps:J

    invoke-virtual {p0, v1, v2}, Lcom/htc/lmw/WizardListActivity;->isNotEnoughMemory(J)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/htc/lmw/WizardListActivity;->getSelectedAppsCount()I

    move-result v1

    if-nez v1, :cond_4

    .line 474
    :cond_1
    invoke-virtual {p0, v4}, Lcom/htc/lmw/WizardListActivity;->setNextButtonEnabled(Z)V

    .line 498
    :cond_2
    :goto_1
    return-void

    .line 464
    :cond_3
    invoke-virtual {p0, v3}, Lcom/htc/lmw/WizardListActivity;->setNextButtonEnabled(Z)V

    goto :goto_0

    .line 478
    :cond_4
    invoke-virtual {p0, v3}, Lcom/htc/lmw/WizardListActivity;->setNextButtonEnabled(Z)V

    goto :goto_1

    .line 483
    :cond_5
    invoke-virtual {p0, v3}, Lcom/htc/lmw/WizardListActivity;->setNextButtonEnabled(Z)V

    goto :goto_1

    .line 489
    :cond_6
    invoke-virtual {p0}, Lcom/htc/lmw/WizardListActivity;->getSelectedAppsCount()I

    move-result v1

    if-lez v1, :cond_7

    .line 491
    invoke-virtual {p0, v3}, Lcom/htc/lmw/WizardListActivity;->setNextButtonEnabled(Z)V

    goto :goto_1

    .line 495
    :cond_7
    invoke-virtual {p0, v4}, Lcom/htc/lmw/WizardListActivity;->setNextButtonEnabled(Z)V

    goto :goto_1
.end method

.method private getSelectedPackages(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/lmw/AppInfo;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    .local p1, apps:Ljava/util/List;,"Ljava/util/List<Lcom/htc/lmw/AppInfo;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 123
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 124
    .local v2, selectedPackages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/lmw/AppInfo;

    .line 126
    .local v0, app:Lcom/htc/lmw/AppInfo;
    iget-boolean v3, v0, Lcom/htc/lmw/AppInfo;->checked:Z

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/htc/lmw/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 130
    .end local v0           #app:Lcom/htc/lmw/AppInfo;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #selectedPackages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    const/4 v2, 0x0

    :cond_2
    return-object v2
.end method

.method private prepareMoveToSDCardHintString()V
    .locals 12

    .prologue
    const v11, 0x7f050027

    const v10, 0x7f07000d

    .line 537
    const-wide/16 v0, 0x0

    .line 540
    .local v0, expectedSpace:J
    invoke-static {}, Lcom/htc/lmw/Wizard;->getInstance()Lcom/htc/lmw/Wizard;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/lmw/Wizard;->isLowMemory()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 542
    invoke-static {}, Lcom/htc/lmw/AppManager;->getInstance()Lcom/htc/lmw/AppManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/lmw/AppManager;->getDataFreeBytes()J

    move-result-wide v6

    const-wide/32 v8, 0x100000

    div-long v2, v6, v8

    .line 543
    .local v2, freeMemMB:J
    iget-object v6, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f050028

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 544
    .local v4, hintString:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    invoke-virtual {v6, v10}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 545
    .local v5, titleTextView:Landroid/widget/TextView;
    if-eqz v5, :cond_0

    .line 547
    const-wide/16 v6, 0x14

    sub-long v0, v6, v2

    .line 548
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-lez v6, :cond_1

    .line 550
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 564
    .end local v2           #freeMemMB:J
    :cond_0
    :goto_0
    return-void

    .line 554
    .restart local v2       #freeMemMB:J
    :cond_1
    iget-object v6, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 555
    iget-object v6, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    invoke-virtual {v6, v10}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5           #titleTextView:Landroid/widget/TextView;
    check-cast v5, Landroid/widget/TextView;

    .restart local v5       #titleTextView:Landroid/widget/TextView;
    goto :goto_0

    .line 561
    .end local v2           #freeMemMB:J
    .end local v4           #hintString:Ljava/lang/String;
    .end local v5           #titleTextView:Landroid/widget/TextView;
    :cond_2
    iget-object v6, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 562
    .restart local v4       #hintString:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    invoke-virtual {v6, v10}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .restart local v5       #titleTextView:Landroid/widget/TextView;
    goto :goto_0
.end method

.method private prepareUinstallAppsForCriticalMode()V
    .locals 6

    .prologue
    .line 570
    sget-boolean v2, Lcom/htc/lmw/WizardListActivity;->isCreatingActivity:Z

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/htc/lmw/Wizard;->getInstance()Lcom/htc/lmw/Wizard;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/lmw/Wizard;->isLowMemory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 572
    iget-object v2, p0, Lcom/htc/lmw/WizardListActivity;->apps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/lmw/AppInfo;

    .line 574
    .local v0, app:Lcom/htc/lmw/AppInfo;
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/htc/lmw/AppInfo;->checked:Z

    .line 575
    iget-wide v2, p0, Lcom/htc/lmw/WizardListActivity;->totalMemOfselectedApps:J

    iget-wide v4, v0, Lcom/htc/lmw/AppInfo;->size:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/htc/lmw/WizardListActivity;->totalMemOfselectedApps:J

    goto :goto_0

    .line 577
    .end local v0           #app:Lcom/htc/lmw/AppInfo;
    :cond_0
    const/4 v2, 0x0

    sput-boolean v2, Lcom/htc/lmw/WizardListActivity;->isCreatingActivity:Z

    .line 578
    iget-object v2, p0, Lcom/htc/lmw/WizardListActivity;->apps:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/htc/lmw/WizardListActivity;->getSelectedPackages(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/lmw/WizardListActivity;->selectedPackages:Ljava/util/List;

    .line 579
    iget-object v2, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    new-instance v3, Lcom/htc/lmw/WizardListActivity$2;

    invoke-direct {v3, p0}, Lcom/htc/lmw/WizardListActivity$2;-><init>(Lcom/htc/lmw/WizardListActivity;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 587
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private prepareUninsallHintString()V
    .locals 12

    .prologue
    const v11, 0x7f050035

    const v10, 0x7f07000d

    .line 504
    const-wide/16 v0, 0x0

    .line 507
    .local v0, expectedSpace:J
    invoke-static {}, Lcom/htc/lmw/Wizard;->getInstance()Lcom/htc/lmw/Wizard;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/lmw/Wizard;->isLowMemory()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 509
    invoke-static {}, Lcom/htc/lmw/AppManager;->getInstance()Lcom/htc/lmw/AppManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/lmw/AppManager;->getDataFreeBytes()J

    move-result-wide v6

    const-wide/32 v8, 0x100000

    div-long v2, v6, v8

    .line 510
    .local v2, freeMemMB:J
    iget-object v6, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f050036

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 511
    .local v4, hintString:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    invoke-virtual {v6, v10}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 512
    .local v5, titleTextView:Landroid/widget/TextView;
    if-eqz v5, :cond_0

    .line 514
    const-wide/16 v6, 0x14

    sub-long v0, v6, v2

    .line 515
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-lez v6, :cond_1

    .line 517
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 531
    .end local v2           #freeMemMB:J
    :cond_0
    :goto_0
    return-void

    .line 521
    .restart local v2       #freeMemMB:J
    :cond_1
    iget-object v6, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 522
    iget-object v6, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    invoke-virtual {v6, v10}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5           #titleTextView:Landroid/widget/TextView;
    check-cast v5, Landroid/widget/TextView;

    .restart local v5       #titleTextView:Landroid/widget/TextView;
    goto :goto_0

    .line 528
    .end local v2           #freeMemMB:J
    .end local v4           #hintString:Ljava/lang/String;
    .end local v5           #titleTextView:Landroid/widget/TextView;
    :cond_2
    iget-object v6, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 529
    .restart local v4       #hintString:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    invoke-virtual {v6, v10}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .restart local v5       #titleTextView:Landroid/widget/TextView;
    goto :goto_0
.end method


# virtual methods
.method protected finishActivity()V
    .locals 2

    .prologue
    .line 284
    invoke-static {}, Lcom/htc/lmw/Wizard;->getInstance()Lcom/htc/lmw/Wizard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/lmw/Wizard;->isLowMemory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 286
    invoke-static {}, Lcom/htc/lmw/Wizard;->getInstance()Lcom/htc/lmw/Wizard;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/htc/lmw/Wizard;->finishSubActivity(Landroid/app/Activity;)V

    .line 299
    :goto_0
    return-void

    .line 290
    :cond_0
    invoke-static {}, Lcom/htc/lmw/ExternalStorageObserver;->isMediaMounted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 292
    invoke-static {}, Lcom/htc/lmw/Wizard;->getInstance()Lcom/htc/lmw/Wizard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/lmw/Wizard;->next()V

    goto :goto_0

    .line 296
    :cond_1
    iget-object v0, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method protected abstract getCheckBoxDrawableId()I
.end method

.method protected getSelectedApps()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/lmw/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 188
    iget-object v3, p0, Lcom/htc/lmw/WizardListActivity;->apps:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/lmw/WizardListActivity;->apps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 189
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 196
    :cond_1
    return-object v2

    .line 190
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/htc/lmw/WizardListActivity;->apps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 191
    .local v2, selectedApps:Ljava/util/List;,"Ljava/util/List<Lcom/htc/lmw/AppInfo;>;"
    iget-object v3, p0, Lcom/htc/lmw/WizardListActivity;->apps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/lmw/AppInfo;

    .line 193
    .local v0, app:Lcom/htc/lmw/AppInfo;
    iget-boolean v3, v0, Lcom/htc/lmw/AppInfo;->checked:Z

    if-eqz v3, :cond_3

    .line 194
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected getSelectedAppsCount()I
    .locals 4

    .prologue
    .line 161
    const/4 v1, 0x0

    .line 162
    .local v1, count:I
    iget-object v3, p0, Lcom/htc/lmw/WizardListActivity;->apps:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 164
    iget-object v3, p0, Lcom/htc/lmw/WizardListActivity;->apps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/lmw/AppInfo;

    .line 166
    .local v0, app:Lcom/htc/lmw/AppInfo;
    iget-boolean v3, v0, Lcom/htc/lmw/AppInfo;->checked:Z

    if-eqz v3, :cond_0

    .line 167
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 170
    .end local v0           #app:Lcom/htc/lmw/AppInfo;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_1
    return v1
.end method

.method public handleBackPressed()V
    .locals 2

    .prologue
    .line 148
    invoke-static {}, Lcom/htc/lmw/Wizard;->getInstance()Lcom/htc/lmw/Wizard;

    move-result-object v0

    .line 149
    .local v0, wizard:Lcom/htc/lmw/Wizard;
    invoke-virtual {v0}, Lcom/htc/lmw/Wizard;->isLowMemory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    invoke-virtual {v0}, Lcom/htc/lmw/Wizard;->back()V

    .line 157
    :goto_0
    return-void

    .line 155
    :cond_0
    iget-object v1, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/htc/lmw/Wizard;->finishSubActivity(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method protected isNotEnoughMemory(J)Z
    .locals 12
    .parameter "selectedAppsMemory"

    .prologue
    .line 175
    invoke-static {}, Lcom/htc/lmw/Wizard;->getInstance()Lcom/htc/lmw/Wizard;

    move-result-object v7

    .line 176
    .local v7, wizard:Lcom/htc/lmw/Wizard;
    invoke-static {}, Lcom/htc/lmw/ExternalStorageObserver;->isMediaMounted()Z

    move-result v8

    if-eqz v8, :cond_0

    sget-object v8, Lcom/htc/lmw/Wizard;->PAGES:[Ljava/lang/Class;

    array-length v8, v8

    add-int/lit8 v3, v8, -0x1

    .line 178
    .local v3, lastStep:I
    :goto_0
    invoke-static {}, Lcom/htc/lmw/AppManager;->getInstance()Lcom/htc/lmw/AppManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/lmw/AppManager;->getDataFreeBytes()J

    move-result-wide v8

    const-wide/32 v10, 0x100000

    div-long v0, v8, v10

    .line 179
    .local v0, freeMemMB:J
    const-wide/16 v8, 0x14

    cmp-long v8, v0, v8

    if-gtz v8, :cond_1

    const/4 v2, 0x1

    .line 180
    .local v2, isNotEnoughFreeMem:Z
    :goto_1
    const-wide/32 v8, 0x100000

    div-long v8, p1, v8

    long-to-double v4, v8

    .line 181
    .local v4, selectedAppsMemoryInMB:D
    long-to-double v8, v0

    add-double/2addr v8, v4

    const-wide/high16 v10, 0x4034

    cmpg-double v8, v8, v10

    if-gtz v8, :cond_2

    const/4 v6, 0x1

    .line 183
    .local v6, willNotBeEnoughMem:Z
    :goto_2
    if-eqz v2, :cond_3

    if-eqz v6, :cond_3

    invoke-virtual {v7}, Lcom/htc/lmw/Wizard;->getCurrentStep()I

    move-result v8

    if-ne v8, v3, :cond_3

    const/4 v8, 0x1

    :goto_3
    return v8

    .line 176
    .end local v0           #freeMemMB:J
    .end local v2           #isNotEnoughFreeMem:Z
    .end local v3           #lastStep:I
    .end local v4           #selectedAppsMemoryInMB:D
    .end local v6           #willNotBeEnoughMem:Z
    :cond_0
    sget-object v8, Lcom/htc/lmw/Wizard;->PAGES:[Ljava/lang/Class;

    array-length v8, v8

    add-int/lit8 v3, v8, -0x2

    goto :goto_0

    .line 179
    .restart local v0       #freeMemMB:J
    .restart local v3       #lastStep:I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 181
    .restart local v2       #isNotEnoughFreeMem:Z
    .restart local v4       #selectedAppsMemoryInMB:D
    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    .line 183
    .restart local v6       #willNotBeEnoughMem:Z
    :cond_3
    const/4 v8, 0x0

    goto :goto_3
.end method

.method protected abstract loadApplications()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/lmw/AppInfo;",
            ">;"
        }
    .end annotation
.end method

.method public declared-synchronized onAppAdded(Lcom/htc/lmw/AppInfo;)V
    .locals 4
    .parameter "addedApp"

    .prologue
    .line 415
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/htc/lmw/WizardListActivity;->apps:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 430
    :goto_0
    monitor-exit p0

    return-void

    .line 416
    :cond_0
    :try_start_1
    iget v2, p0, Lcom/htc/lmw/WizardListActivity;->currentSort:I

    if-nez v2, :cond_2

    sget-object v0, Lcom/htc/lmw/AppInfo;->alphaComparator:Ljava/util/Comparator;

    .line 419
    .local v0, cmp:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/htc/lmw/AppInfo;>;"
    :goto_1
    const/4 v1, 0x0

    .local v1, insertPos:I
    :goto_2
    iget-object v2, p0, Lcom/htc/lmw/WizardListActivity;->apps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 421
    iget-object v2, p0, Lcom/htc/lmw/WizardListActivity;->apps:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_3

    .line 424
    :cond_1
    iget-object v2, p0, Lcom/htc/lmw/WizardListActivity;->apps:Ljava/util/List;

    invoke-interface {v2, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 426
    iget-object v2, p0, Lcom/htc/lmw/WizardListActivity;->listAdapter:Lcom/htc/lmw/AppAdapter;

    iget-object v3, p0, Lcom/htc/lmw/WizardListActivity;->apps:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/htc/lmw/AppAdapter;->setApplications(Ljava/util/List;)V

    .line 427
    iget-object v2, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/htc/lmw/Customize;->invalidateMenu(Landroid/app/Activity;)V

    .line 429
    iget-object v2, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    const v3, 0x7f07000f

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 415
    .end local v0           #cmp:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/htc/lmw/AppInfo;>;"
    .end local v1           #insertPos:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 416
    :cond_2
    :try_start_2
    sget-object v0, Lcom/htc/lmw/AppInfo;->sizeComparator:Ljava/util/Comparator;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 419
    .restart local v0       #cmp:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/htc/lmw/AppInfo;>;"
    .restart local v1       #insertPos:I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public declared-synchronized onAppChanged(Lcom/htc/lmw/AppInfo;)V
    .locals 1
    .parameter "changedApp"

    .prologue
    .line 407
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/lmw/WizardListActivity;->apps:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 410
    :goto_0
    monitor-exit p0

    return-void

    .line 408
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/htc/lmw/WizardListActivity;->apps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 409
    invoke-virtual {p0, p1}, Lcom/htc/lmw/WizardListActivity;->onAppAdded(Lcom/htc/lmw/AppInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 407
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onAppRemoved(Lcom/htc/lmw/AppInfo;)V
    .locals 2
    .parameter "removedApp"

    .prologue
    .line 391
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/lmw/WizardListActivity;->apps:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 402
    :goto_0
    monitor-exit p0

    return-void

    .line 392
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/htc/lmw/WizardListActivity;->apps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 394
    iget-object v0, p0, Lcom/htc/lmw/WizardListActivity;->apps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 396
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/lmw/WizardListActivity;->setNextButtonEnabled(Z)V

    .line 397
    iget-object v0, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    const v1, 0x7f07000f

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 400
    :cond_1
    iget-object v0, p0, Lcom/htc/lmw/WizardListActivity;->listAdapter:Lcom/htc/lmw/AppAdapter;

    iget-object v1, p0, Lcom/htc/lmw/WizardListActivity;->apps:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/htc/lmw/AppAdapter;->setApplications(Ljava/util/List;)V

    .line 401
    iget-object v0, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/htc/lmw/Customize;->invalidateMenu(Landroid/app/Activity;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 391
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 53
    invoke-super {p0, p1}, Lcom/htc/lmw/WizardActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    if-eqz p1, :cond_0

    .line 56
    const-string v0, "selected_packages"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lmw/WizardListActivity;->selectedPackages:Ljava/util/List;

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/htc/lmw/WizardListActivity;->selectedPackages:Ljava/util/List;

    if-nez v0, :cond_1

    .line 58
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lmw/WizardListActivity;->selectedPackages:Ljava/util/List;

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050050

    invoke-static {v1}, Lcom/htc/lmw/Customize;->convertStringId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lmw/WizardListActivity;->availableSpaceFormat:Ljava/lang/String;

    .line 61
    new-instance v0, Lcom/htc/lmw/AppAdapter;

    iget-object v1, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    const v2, 0x2090025

    invoke-virtual {p0}, Lcom/htc/lmw/WizardListActivity;->getCheckBoxDrawableId()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/lmw/AppAdapter;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/htc/lmw/WizardListActivity;->listAdapter:Lcom/htc/lmw/AppAdapter;

    .line 64
    iget-object v0, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    invoke-static {v0, v4}, Lcom/htc/lmw/Settings;->getSortOrder(Landroid/app/Activity;I)I

    move-result v0

    iput v0, p0, Lcom/htc/lmw/WizardListActivity;->currentSort:I

    .line 65
    sput-boolean v4, Lcom/htc/lmw/WizardListActivity;->isCreatingActivity:Z

    .line 66
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 230
    const v0, 0x7f050054

    invoke-static {v0}, Lcom/htc/lmw/Customize;->convertStringId(I)I

    move-result v0

    invoke-interface {p1, v2, v2, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-static {}, Lcom/htc/lmw/Customize;->getAlphaSortIcon()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 232
    const/4 v0, 0x2

    const v1, 0x7f050055

    invoke-static {v1}, Lcom/htc/lmw/Customize;->convertStringId(I)I

    move-result v1

    invoke-interface {p1, v2, v3, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-static {}, Lcom/htc/lmw/Customize;->getSizeSortIcon()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 235
    invoke-super {p0, p1}, Lcom/htc/lmw/WizardActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 265
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 266
    .local v0, menuId:I
    if-nez v0, :cond_0

    .line 268
    sget-object v1, Lcom/htc/lmw/AppInfo;->alphaComparator:Ljava/util/Comparator;

    invoke-virtual {p0, v1}, Lcom/htc/lmw/WizardListActivity;->sortList(Ljava/util/Comparator;)V

    .line 269
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/lmw/WizardListActivity;->currentSort:I

    .line 270
    iget-object v1, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    iget v2, p0, Lcom/htc/lmw/WizardListActivity;->currentSort:I

    invoke-static {v1, v2}, Lcom/htc/lmw/Settings;->setSortOrder(Landroid/app/Activity;I)V

    .line 279
    :goto_0
    return v3

    .line 274
    :cond_0
    sget-object v1, Lcom/htc/lmw/AppInfo;->sizeComparator:Ljava/util/Comparator;

    invoke-virtual {p0, v1}, Lcom/htc/lmw/WizardListActivity;->sortList(Ljava/util/Comparator;)V

    .line 275
    iput v3, p0, Lcom/htc/lmw/WizardListActivity;->currentSort:I

    .line 276
    iget-object v1, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    iget v2, p0, Lcom/htc/lmw/WizardListActivity;->currentSort:I

    invoke-static {v1, v2}, Lcom/htc/lmw/Settings;->setSortOrder(Landroid/app/Activity;I)V

    goto :goto_0
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/htc/lmw/WizardActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 73
    instance-of v0, p0, Lcom/htc/lmw/steps/Uninstall;

    if-eqz v0, :cond_0

    .line 74
    invoke-direct {p0}, Lcom/htc/lmw/WizardListActivity;->prepareUninsallHintString()V

    .line 76
    :cond_0
    instance-of v0, p0, Lcom/htc/lmw/steps/MoveToSdCard;

    if-eqz v0, :cond_1

    .line 77
    invoke-direct {p0}, Lcom/htc/lmw/WizardListActivity;->prepareMoveToSDCardHintString()V

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    const v1, 0x7f07000e

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListView;

    iput-object v0, p0, Lcom/htc/lmw/WizardListActivity;->listView:Lcom/htc/widget/HtcListView;

    .line 81
    iget-object v0, p0, Lcom/htc/lmw/WizardListActivity;->listView:Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/htc/lmw/WizardListActivity;->listAdapter:Lcom/htc/lmw/AppAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 82
    iget-object v0, p0, Lcom/htc/lmw/WizardListActivity;->listView:Lcom/htc/widget/HtcListView;

    new-instance v1, Lcom/htc/lmw/WizardListActivity$1;

    invoke-direct {v1, p0}, Lcom/htc/lmw/WizardListActivity$1;-><init>(Lcom/htc/lmw/WizardListActivity;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 105
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 245
    iget v5, p0, Lcom/htc/lmw/WizardListActivity;->currentSort:I

    if-ne v5, v3, :cond_0

    .line 246
    const/4 v0, 0x0

    .line 247
    .local v0, currentSortId:I
    const/4 v2, 0x1

    .line 253
    .local v2, otherSortId:I
    :goto_0
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 254
    .local v1, item:Landroid/view/MenuItem;
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 255
    iget-object v5, p0, Lcom/htc/lmw/WizardListActivity;->listAdapter:Lcom/htc/lmw/AppAdapter;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/htc/lmw/WizardListActivity;->listAdapter:Lcom/htc/lmw/AppAdapter;

    invoke-virtual {v5}, Lcom/htc/lmw/AppAdapter;->getCount()I

    move-result v5

    if-lez v5, :cond_1

    :goto_1
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 257
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 259
    invoke-super {p0, p1}, Lcom/htc/lmw/WizardActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v3

    return v3

    .line 249
    .end local v0           #currentSortId:I
    .end local v1           #item:Landroid/view/MenuItem;
    .end local v2           #otherSortId:I
    :cond_0
    const/4 v0, 0x1

    .line 250
    .restart local v0       #currentSortId:I
    const/4 v2, 0x0

    .restart local v2       #otherSortId:I
    goto :goto_0

    .restart local v1       #item:Landroid/view/MenuItem;
    :cond_1
    move v3, v4

    .line 255
    goto :goto_1
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 136
    invoke-super {p0}, Lcom/htc/lmw/WizardActivity;->onResume()V

    .line 138
    invoke-virtual {p0}, Lcom/htc/lmw/WizardListActivity;->dismissLoadingDialog()V

    .line 139
    const v0, 0x7f050053

    invoke-static {v0}, Lcom/htc/lmw/Customize;->convertStringId(I)I

    move-result v0

    invoke-static {v0}, Lcom/htc/lmw/Customize;->convertStringId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/lmw/WizardListActivity;->showLoadingDialog(I)V

    .line 140
    invoke-virtual {p0}, Lcom/htc/lmw/WizardListActivity;->updateMemoryInfo()V

    .line 142
    new-instance v0, Lcom/htc/lmw/WizardListActivity$ApplicationsLoadThread;

    invoke-direct {v0, p0}, Lcom/htc/lmw/WizardListActivity$ApplicationsLoadThread;-><init>(Lcom/htc/lmw/WizardListActivity;)V

    invoke-virtual {v0}, Lcom/htc/lmw/WizardListActivity$ApplicationsLoadThread;->start()V

    .line 143
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 110
    invoke-super {p0, p1}, Lcom/htc/lmw/WizardActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 113
    iget-object v0, p0, Lcom/htc/lmw/WizardListActivity;->apps:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lmw/WizardListActivity;->apps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 115
    const-string v0, "selected_packages"

    iget-object v1, p0, Lcom/htc/lmw/WizardListActivity;->apps:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/htc/lmw/WizardListActivity;->getSelectedPackages(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 117
    :cond_0
    return-void
.end method

.method protected selectedAppsSize()J
    .locals 8

    .prologue
    .line 434
    invoke-virtual {p0}, Lcom/htc/lmw/WizardListActivity;->getSelectedApps()Ljava/util/List;

    move-result-object v2

    .line 435
    .local v2, selectedApps:Ljava/util/List;,"Ljava/util/List<Lcom/htc/lmw/AppInfo;>;"
    const/4 v3, 0x0

    .line 436
    .local v3, selectedAppsSize:I
    if-nez v2, :cond_0

    .line 438
    int-to-long v4, v3

    .line 447
    :goto_0
    return-wide v4

    .line 440
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/lmw/AppInfo;

    .line 442
    .local v0, app:Lcom/htc/lmw/AppInfo;
    iget-boolean v4, v0, Lcom/htc/lmw/AppInfo;->checked:Z

    if-eqz v4, :cond_1

    .line 444
    int-to-long v4, v3

    iget-wide v6, v0, Lcom/htc/lmw/AppInfo;->size:J

    add-long/2addr v4, v6

    long-to-int v3, v4

    goto :goto_1

    .line 447
    .end local v0           #app:Lcom/htc/lmw/AppInfo;
    :cond_2
    int-to-long v4, v3

    goto :goto_0
.end method

.method protected sortList(Ljava/util/Comparator;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<",
            "Lcom/htc/lmw/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 220
    .local p1, cmp:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/htc/lmw/AppInfo;>;"
    iget-object v0, p0, Lcom/htc/lmw/WizardListActivity;->apps:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/htc/lmw/WizardListActivity;->apps:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 223
    iget-object v0, p0, Lcom/htc/lmw/WizardListActivity;->listAdapter:Lcom/htc/lmw/AppAdapter;

    iget-object v1, p0, Lcom/htc/lmw/WizardListActivity;->apps:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/htc/lmw/AppAdapter;->setApplications(Ljava/util/List;)V

    .line 225
    :cond_0
    return-void
.end method

.method protected updateMemoryInfo()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    const-wide/32 v10, 0x100000

    .line 201
    iget-object v5, p0, Lcom/htc/lmw/WizardListActivity;->memoryInfo:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 203
    invoke-static {}, Lcom/htc/lmw/AppManager;->getInstance()Lcom/htc/lmw/AppManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/lmw/AppManager;->getDataTotalBytes()J

    move-result-wide v3

    .line 204
    .local v3, totalBytes:J
    invoke-static {}, Lcom/htc/lmw/AppManager;->getInstance()Lcom/htc/lmw/AppManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/lmw/AppManager;->getDataFreeBytes()J

    move-result-wide v0

    .line 205
    .local v0, freeBytes:J
    iget-object v5, p0, Lcom/htc/lmw/WizardListActivity;->memoryInfo:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/htc/lmw/WizardListActivity;->availableSpaceFormat:Ljava/lang/String;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    div-long v8, v0, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v12

    div-long v8, v3, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v13

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iget-wide v5, p0, Lcom/htc/lmw/WizardListActivity;->totalMemOfselectedApps:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    .line 209
    iget-object v5, p0, Lcom/htc/lmw/WizardListActivity;->freeMemoryInfo:Landroid/widget/TextView;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    .end local v0           #freeBytes:J
    .end local v3           #totalBytes:J
    :cond_0
    :goto_0
    return-void

    .line 211
    .restart local v0       #freeBytes:J
    .restart local v3       #totalBytes:J
    :cond_1
    iget-object v5, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f05000e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v13, [Ljava/lang/Object;

    iget-wide v7, p0, Lcom/htc/lmw/WizardListActivity;->totalMemOfselectedApps:J

    div-long/2addr v7, v10

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v12

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 213
    .local v2, toFree:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/lmw/WizardListActivity;->freeMemoryInfo:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
