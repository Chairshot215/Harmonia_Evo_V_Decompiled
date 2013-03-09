.class public Lcom/htc/lmw/steps/ApplicationStorage;
.super Lcom/htc/lmw/WizardActivity;
.source "ApplicationStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/lmw/steps/ApplicationStorage$PhoneActivity;
    }
.end annotation


# instance fields
.field private MOVE_TO_SD_ID:I

.field private UNINSTALL_ID:I

.field private availableSpaceFormat:Ljava/lang/String;

.field private buttonsAdapter:Lcom/htc/lmw/BaseListAdapter;

.field private mIsBroatToBackground:Z

.field private uninstallBtn:Lcom/htc/lmw/ViewEntry$View1Text;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/htc/lmw/WizardActivity;-><init>(Landroid/app/Activity;)V

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lmw/steps/ApplicationStorage;->availableSpaceFormat:Ljava/lang/String;

    .line 29
    const/16 v0, 0x64

    iput v0, p0, Lcom/htc/lmw/steps/ApplicationStorage;->MOVE_TO_SD_ID:I

    .line 30
    const/16 v0, 0x65

    iput v0, p0, Lcom/htc/lmw/steps/ApplicationStorage;->UNINSTALL_ID:I

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lmw/steps/ApplicationStorage;->mIsBroatToBackground:Z

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/htc/lmw/steps/ApplicationStorage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Lcom/htc/lmw/steps/ApplicationStorage;->MOVE_TO_SD_ID:I

    return v0
.end method

.method static synthetic access$102(Lcom/htc/lmw/steps/ApplicationStorage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/htc/lmw/steps/ApplicationStorage;->mIsBroatToBackground:Z

    return p1
.end method

.method static synthetic access$200(Lcom/htc/lmw/steps/ApplicationStorage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/htc/lmw/steps/ApplicationStorage;->updateMoveToSdButton()V

    return-void
.end method

.method private setupMoveUninstallBtns()V
    .locals 7

    .prologue
    .line 61
    iget-object v2, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    const v3, 0x7f070007

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 62
    .local v1, hlv:Landroid/widget/ListView;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .local v0, buttons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/lmw/ViewEntry;>;"
    new-instance v2, Lcom/htc/lmw/ViewEntry$View1Text;

    iget-object v3, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    iget v4, p0, Lcom/htc/lmw/steps/ApplicationStorage;->MOVE_TO_SD_ID:I

    const v5, 0x7f050022

    invoke-static {v5}, Lcom/htc/lmw/Customize;->convertStringId(I)I

    move-result v5

    invoke-static {}, Lcom/htc/lmw/ExternalStorageObserver;->isMediaMounted()Z

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/htc/lmw/ViewEntry$View1Text;-><init>(Landroid/content/Context;IIZ)V

    iput-object v2, p0, Lcom/htc/lmw/steps/ApplicationStorage;->uninstallBtn:Lcom/htc/lmw/ViewEntry$View1Text;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    new-instance v2, Lcom/htc/lmw/ViewEntry$View1Text;

    iget-object v3, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    iget v4, p0, Lcom/htc/lmw/steps/ApplicationStorage;->UNINSTALL_ID:I

    const v5, 0x7f050023

    const/4 v6, 0x1

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/htc/lmw/ViewEntry$View1Text;-><init>(Landroid/content/Context;IIZ)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    new-instance v2, Lcom/htc/lmw/BaseListAdapter;

    invoke-direct {v2, v0}, Lcom/htc/lmw/BaseListAdapter;-><init>(Ljava/util/List;)V

    iput-object v2, p0, Lcom/htc/lmw/steps/ApplicationStorage;->buttonsAdapter:Lcom/htc/lmw/BaseListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 70
    new-instance v2, Lcom/htc/lmw/steps/ApplicationStorage$1;

    invoke-direct {v2, p0}, Lcom/htc/lmw/steps/ApplicationStorage$1;-><init>(Lcom/htc/lmw/steps/ApplicationStorage;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 83
    return-void
.end method

.method private updateMemoryIndicator()V
    .locals 9

    .prologue
    const-wide/32 v7, 0x100000

    .line 131
    invoke-static {}, Lcom/htc/lmw/AppManager;->getInstance()Lcom/htc/lmw/AppManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/lmw/AppManager;->getDataTotalBytes()J

    move-result-wide v5

    div-long v3, v5, v7

    .line 132
    .local v3, totalBytes:J
    invoke-static {}, Lcom/htc/lmw/AppManager;->getInstance()Lcom/htc/lmw/AppManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/lmw/AppManager;->getDataFreeBytes()J

    move-result-wide v5

    div-long v0, v5, v7

    .line 134
    .local v0, freeBytes:J
    iget-object v5, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    const v6, 0x7f070004

    invoke-virtual {v5, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 135
    .local v2, textView:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/htc/lmw/steps/ApplicationStorage;->availableSpaceFormat:Ljava/lang/String;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    return-void
.end method

.method private updateMoveToSdButton()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/htc/lmw/steps/ApplicationStorage;->uninstallBtn:Lcom/htc/lmw/ViewEntry$View1Text;

    invoke-static {}, Lcom/htc/lmw/ExternalStorageObserver;->isMediaMounted()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/lmw/ViewEntry$View1Text;->setEnabled(Z)V

    .line 141
    iget-object v0, p0, Lcom/htc/lmw/steps/ApplicationStorage;->buttonsAdapter:Lcom/htc/lmw/BaseListAdapter;

    invoke-virtual {v0}, Lcom/htc/lmw/BaseListAdapter;->notifyDataSetChanged()V

    .line 142
    return-void
.end method


# virtual methods
.method public handleBackPressed()V
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lmw/steps/ApplicationStorage;->mIsBroatToBackground:Z

    .line 126
    invoke-super {p0}, Lcom/htc/lmw/WizardActivity;->handleBackPressed()V

    .line 127
    return-void
.end method

.method public handleNextPressed()V
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lmw/steps/ApplicationStorage;->mIsBroatToBackground:Z

    .line 119
    invoke-super {p0}, Lcom/htc/lmw/WizardActivity;->handleNextPressed()V

    .line 120
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/htc/lmw/WizardActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    iget-object v0, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    const/high16 v1, 0x7f03

    invoke-static {v0, p0, v1}, Lcom/htc/lmw/Customize;->activityOnCreate(Landroid/app/Activity;Landroid/app/Activity;I)V

    .line 54
    iget-object v0, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/htc/lmw/Customize;->getAvailableSpaceStringId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lmw/steps/ApplicationStorage;->availableSpaceFormat:Ljava/lang/String;

    .line 56
    invoke-direct {p0}, Lcom/htc/lmw/steps/ApplicationStorage;->setupMoveUninstallBtns()V

    .line 57
    return-void
.end method

.method public onMoveToSdClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 146
    invoke-static {}, Lcom/htc/lmw/Wizard;->getInstance()Lcom/htc/lmw/Wizard;

    move-result-object v0

    const-class v1, Lcom/htc/lmw/steps/MoveToSdCard$PhoneActivity;

    invoke-virtual {v0, v1}, Lcom/htc/lmw/Wizard;->startSubActivity(Ljava/lang/Class;)V

    .line 147
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 104
    invoke-super {p0}, Lcom/htc/lmw/WizardActivity;->onPause()V

    .line 105
    invoke-static {}, Lcom/htc/lmw/ExternalStorageObserver;->unregister()V

    .line 107
    sget-boolean v0, Lcom/htc/lmw/MainActivity;->isLowMode:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/htc/lmw/Wizard;->getInstance()Lcom/htc/lmw/Wizard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/lmw/Wizard;->isLowMemory()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/lmw/steps/ApplicationStorage;->mIsBroatToBackground:Z

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/lmw/Customize;->removeNotification(Landroid/content/Context;)V

    .line 110
    iget-object v0, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/lmw/Customize;->raiseNotification(Landroid/content/Context;)V

    .line 111
    iget-object v0, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/htc/lmw/Settings;->setNotifyOnDeviceLowStorage(Landroid/content/Context;Z)V

    .line 113
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 88
    invoke-super {p0}, Lcom/htc/lmw/WizardActivity;->onResume()V

    .line 89
    invoke-direct {p0}, Lcom/htc/lmw/steps/ApplicationStorage;->updateMemoryIndicator()V

    .line 90
    iget-object v0, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/htc/lmw/steps/ApplicationStorage$2;

    invoke-direct {v1, p0}, Lcom/htc/lmw/steps/ApplicationStorage$2;-><init>(Lcom/htc/lmw/steps/ApplicationStorage;)V

    invoke-static {v0, v1}, Lcom/htc/lmw/ExternalStorageObserver;->register(Landroid/content/Context;Lcom/htc/lmw/ExternalStorageObserver$IStateListener;)V

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lmw/steps/ApplicationStorage;->mIsBroatToBackground:Z

    .line 99
    return-void
.end method

.method public onUninstallClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 151
    invoke-static {}, Lcom/htc/lmw/Wizard;->getInstance()Lcom/htc/lmw/Wizard;

    move-result-object v0

    const-class v1, Lcom/htc/lmw/steps/Uninstall$PhoneActivity;

    invoke-virtual {v0, v1}, Lcom/htc/lmw/Wizard;->startSubActivity(Ljava/lang/Class;)V

    .line 152
    return-void
.end method
