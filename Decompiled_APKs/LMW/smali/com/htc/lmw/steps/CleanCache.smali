.class public Lcom/htc/lmw/steps/CleanCache;
.super Lcom/htc/lmw/WizardActivity;
.source "CleanCache.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/lmw/steps/CleanCache$CleanCacheThread;,
        Lcom/htc/lmw/steps/CleanCache$AppsLoaderThread;,
        Lcom/htc/lmw/steps/CleanCache$PhoneActivity;
    }
.end annotation


# static fields
.field private static final CLEAN_CACHE_ALL_ID:I = 0x65

.field private static final CLEAN_RARELY_USED:Ljava/lang/String; = "clean_rarely_used"

.field private static final CLEAN_RARELY_USED_ID:I = 0x64


# instance fields
.field apps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/lmw/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private cleanRarelyUsed:Z

.field private cleaner:Lcom/htc/lmw/steps/CleanCache$CleanCacheThread;

.field private loader:Lcom/htc/lmw/steps/CleanCache$AppsLoaderThread;

.field private mIsBroatToBackground:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    const/4 v0, 0x1

    .line 50
    invoke-direct {p0, p1}, Lcom/htc/lmw/WizardActivity;-><init>(Landroid/app/Activity;)V

    .line 40
    iput-boolean v0, p0, Lcom/htc/lmw/steps/CleanCache;->cleanRarelyUsed:Z

    .line 46
    iput-boolean v0, p0, Lcom/htc/lmw/steps/CleanCache;->mIsBroatToBackground:Z

    .line 52
    iget-object v0, p0, Lcom/htc/lmw/WizardActivity;->packageWhiteList:Ljava/util/List;

    const-string v1, "com.htc.lmw"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/htc/lmw/steps/CleanCache;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/htc/lmw/steps/CleanCache;->dismissLoadingDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/lmw/steps/CleanCache;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/htc/lmw/steps/CleanCache;->setNextButtonEnabled(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/lmw/steps/CleanCache;)Lcom/htc/lmw/steps/CleanCache$AppsLoaderThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/lmw/steps/CleanCache;->loader:Lcom/htc/lmw/steps/CleanCache$AppsLoaderThread;

    return-object v0
.end method

.method static synthetic access$202(Lcom/htc/lmw/steps/CleanCache;Lcom/htc/lmw/steps/CleanCache$AppsLoaderThread;)Lcom/htc/lmw/steps/CleanCache$AppsLoaderThread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/htc/lmw/steps/CleanCache;->loader:Lcom/htc/lmw/steps/CleanCache$AppsLoaderThread;

    return-object p1
.end method

.method static synthetic access$300(Lcom/htc/lmw/steps/CleanCache;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/htc/lmw/steps/CleanCache;->dismissLoadingDialog()V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/lmw/steps/CleanCache;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/lmw/WizardActivity;->packageWhiteList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/lmw/steps/CleanCache;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/lmw/WizardActivity;->packageWhiteList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/lmw/steps/CleanCache;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/htc/lmw/steps/CleanCache;->onAppsLoaded(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/lmw/steps/CleanCache;IIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 34
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/htc/lmw/steps/CleanCache;->updateProgressDialog(IIII)V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/lmw/steps/CleanCache;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/htc/lmw/steps/CleanCache;->onChachesCleaned()V

    return-void
.end method

.method private finishActivity()V
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/htc/lmw/steps/CleanCache$4;

    invoke-direct {v1, p0}, Lcom/htc/lmw/steps/CleanCache$4;-><init>(Lcom/htc/lmw/steps/CleanCache;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 316
    return-void
.end method

.method private onAppsLoaded(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/lmw/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 251
    .local p1, apps:Ljava/util/List;,"Ljava/util/List<Lcom/htc/lmw/AppInfo;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lmw/steps/CleanCache;->loader:Lcom/htc/lmw/steps/CleanCache$AppsLoaderThread;

    .line 252
    iput-object p1, p0, Lcom/htc/lmw/steps/CleanCache;->apps:Ljava/util/List;

    .line 254
    iget-object v0, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/htc/lmw/steps/CleanCache$2;

    invoke-direct {v1, p0}, Lcom/htc/lmw/steps/CleanCache$2;-><init>(Lcom/htc/lmw/steps/CleanCache;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 263
    sget-object v0, Lcom/htc/lmw/Customize;->loadingTime:Lcom/htc/lmw/CustomizeBase$LoadingTime;

    sget-object v1, Lcom/htc/lmw/CustomizeBase$LoadingTime;->LOAD_AFTER_CACHE:Lcom/htc/lmw/CustomizeBase$LoadingTime;

    if-ne v0, v1, :cond_0

    .line 264
    new-instance v0, Lcom/htc/lmw/steps/CleanCache$CleanCacheThread;

    invoke-direct {v0, p0, p1, p0}, Lcom/htc/lmw/steps/CleanCache$CleanCacheThread;-><init>(Lcom/htc/lmw/steps/CleanCache;Ljava/util/List;Lcom/htc/lmw/steps/CleanCache;)V

    iput-object v0, p0, Lcom/htc/lmw/steps/CleanCache;->cleaner:Lcom/htc/lmw/steps/CleanCache$CleanCacheThread;

    .line 265
    iget-object v0, p0, Lcom/htc/lmw/steps/CleanCache;->cleaner:Lcom/htc/lmw/steps/CleanCache$CleanCacheThread;

    invoke-virtual {v0}, Lcom/htc/lmw/steps/CleanCache$CleanCacheThread;->start()V

    .line 267
    :cond_0
    return-void
.end method

.method private onChachesCleaned()V
    .locals 1

    .prologue
    .line 271
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lmw/steps/CleanCache;->cleaner:Lcom/htc/lmw/steps/CleanCache$CleanCacheThread;

    .line 272
    invoke-virtual {p0}, Lcom/htc/lmw/steps/CleanCache;->dismissProgressDialog()V

    .line 273
    invoke-direct {p0}, Lcom/htc/lmw/steps/CleanCache;->finishActivity()V

    .line 274
    return-void
.end method

.method private setRadioItemChecked(IZ)V
    .locals 3
    .parameter "radioItemHolderId"
    .parameter "checked"

    .prologue
    .line 201
    iget-object v2, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    invoke-virtual {v2, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 202
    .local v1, view:Landroid/view/View;
    const v2, 0x20200fc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 203
    .local v0, radioButton:Landroid/widget/RadioButton;
    invoke-virtual {v0, p2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 204
    return-void
.end method

.method private setupCleanBtns()V
    .locals 8

    .prologue
    .line 134
    iget-object v0, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    const v1, 0x7f070007

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ListView;

    .line 135
    .local v7, hlv:Landroid/widget/ListView;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .local v6, buttons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/lmw/ViewEntry;>;"
    new-instance v0, Lcom/htc/lmw/ViewEntry$View2TextRadio;

    iget-object v1, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    const/16 v2, 0x64

    const v3, 0x7f050013

    invoke-static {v3}, Lcom/htc/lmw/Customize;->convertStringId(I)I

    move-result v3

    const v4, 0x7f050014

    invoke-static {v4}, Lcom/htc/lmw/Customize;->convertStringId(I)I

    move-result v4

    iget-boolean v5, p0, Lcom/htc/lmw/steps/CleanCache;->cleanRarelyUsed:Z

    invoke-direct/range {v0 .. v5}, Lcom/htc/lmw/ViewEntry$View2TextRadio;-><init>(Landroid/content/Context;IIIZ)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    new-instance v0, Lcom/htc/lmw/ViewEntry$View2TextRadio;

    iget-object v1, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    const/16 v2, 0x65

    const v3, 0x7f050015

    invoke-static {v3}, Lcom/htc/lmw/Customize;->convertStringId(I)I

    move-result v3

    const v4, 0x7f050016

    invoke-static {v4}, Lcom/htc/lmw/Customize;->convertStringId(I)I

    move-result v4

    iget-boolean v5, p0, Lcom/htc/lmw/steps/CleanCache;->cleanRarelyUsed:Z

    if-nez v5, :cond_1

    const/4 v5, 0x1

    :goto_0
    invoke-direct/range {v0 .. v5}, Lcom/htc/lmw/ViewEntry$View2TextRadio;-><init>(Landroid/content/Context;IIIZ)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    new-instance v0, Lcom/htc/lmw/BaseListAdapter;

    invoke-direct {v0, v6}, Lcom/htc/lmw/BaseListAdapter;-><init>(Ljava/util/List;)V

    invoke-virtual {v7, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 146
    new-instance v0, Lcom/htc/lmw/steps/CleanCache$1;

    invoke-direct {v0, p0}, Lcom/htc/lmw/steps/CleanCache$1;-><init>(Lcom/htc/lmw/steps/CleanCache;)V

    invoke-virtual {v7, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 151
    invoke-static {}, Lcom/htc/lmw/Wizard;->getInstance()Lcom/htc/lmw/Wizard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/lmw/Wizard;->isLowMemory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    const/16 v0, 0x8

    invoke-virtual {v7, v0}, Landroid/widget/ListView;->setVisibility(I)V

    .line 154
    :cond_0
    return-void

    .line 140
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private showAppsLoadingDialog()V
    .locals 3

    .prologue
    .line 278
    const/4 v0, 0x0

    .line 280
    .local v0, listener:Landroid/content/DialogInterface$OnCancelListener;
    sget-object v1, Lcom/htc/lmw/Customize;->loadingTime:Lcom/htc/lmw/CustomizeBase$LoadingTime;

    sget-object v2, Lcom/htc/lmw/CustomizeBase$LoadingTime;->LOAD_BEFORE_CACHE:Lcom/htc/lmw/CustomizeBase$LoadingTime;

    if-ne v1, v2, :cond_0

    .line 281
    new-instance v0, Lcom/htc/lmw/steps/CleanCache$3;

    .end local v0           #listener:Landroid/content/DialogInterface$OnCancelListener;
    invoke-direct {v0, p0}, Lcom/htc/lmw/steps/CleanCache$3;-><init>(Lcom/htc/lmw/steps/CleanCache;)V

    .line 295
    .restart local v0       #listener:Landroid/content/DialogInterface$OnCancelListener;
    :cond_0
    const v1, 0x7f050053

    invoke-static {v1}, Lcom/htc/lmw/Customize;->convertStringId(I)I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/htc/lmw/steps/CleanCache;->showLoadingDialog(ILandroid/content/DialogInterface$OnCancelListener;)V

    .line 298
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/lmw/steps/CleanCache;->setNextButtonEnabled(Z)V

    .line 299
    return-void
.end method


# virtual methods
.method public handleBackPressed()V
    .locals 1

    .prologue
    .line 242
    invoke-static {}, Lcom/htc/lmw/Wizard;->getInstance()Lcom/htc/lmw/Wizard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/lmw/Wizard;->isLowMemory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lmw/steps/CleanCache;->mIsBroatToBackground:Z

    .line 246
    :cond_0
    invoke-super {p0}, Lcom/htc/lmw/WizardActivity;->handleBackPressed()V

    .line 247
    return-void
.end method

.method public handleNextPressed()V
    .locals 2

    .prologue
    .line 217
    invoke-static {}, Lcom/htc/lmw/Wizard;->getInstance()Lcom/htc/lmw/Wizard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/lmw/Wizard;->isLowMemory()Z

    move-result v0

    if-nez v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/htc/lmw/steps/CleanCache;->loader:Lcom/htc/lmw/steps/CleanCache$AppsLoaderThread;

    if-nez v0, :cond_0

    sget-object v0, Lcom/htc/lmw/Customize;->loadingTime:Lcom/htc/lmw/CustomizeBase$LoadingTime;

    sget-object v1, Lcom/htc/lmw/CustomizeBase$LoadingTime;->LOAD_AFTER_CACHE:Lcom/htc/lmw/CustomizeBase$LoadingTime;

    if-ne v0, v1, :cond_0

    .line 221
    invoke-direct {p0}, Lcom/htc/lmw/steps/CleanCache;->showAppsLoadingDialog()V

    .line 224
    new-instance v0, Lcom/htc/lmw/steps/CleanCache$AppsLoaderThread;

    iget-boolean v1, p0, Lcom/htc/lmw/steps/CleanCache;->cleanRarelyUsed:Z

    invoke-direct {v0, p0, v1, p0}, Lcom/htc/lmw/steps/CleanCache$AppsLoaderThread;-><init>(Lcom/htc/lmw/steps/CleanCache;ZLcom/htc/lmw/steps/CleanCache;)V

    iput-object v0, p0, Lcom/htc/lmw/steps/CleanCache;->loader:Lcom/htc/lmw/steps/CleanCache$AppsLoaderThread;

    .line 225
    iget-object v0, p0, Lcom/htc/lmw/steps/CleanCache;->loader:Lcom/htc/lmw/steps/CleanCache$AppsLoaderThread;

    invoke-virtual {v0}, Lcom/htc/lmw/steps/CleanCache$AppsLoaderThread;->start()V

    .line 236
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lmw/steps/CleanCache;->mIsBroatToBackground:Z

    .line 237
    return-void

    .line 227
    :cond_0
    new-instance v0, Lcom/htc/lmw/steps/CleanCache$CleanCacheThread;

    iget-object v1, p0, Lcom/htc/lmw/steps/CleanCache;->apps:Ljava/util/List;

    invoke-direct {v0, p0, v1, p0}, Lcom/htc/lmw/steps/CleanCache$CleanCacheThread;-><init>(Lcom/htc/lmw/steps/CleanCache;Ljava/util/List;Lcom/htc/lmw/steps/CleanCache;)V

    iput-object v0, p0, Lcom/htc/lmw/steps/CleanCache;->cleaner:Lcom/htc/lmw/steps/CleanCache$CleanCacheThread;

    .line 228
    iget-object v0, p0, Lcom/htc/lmw/steps/CleanCache;->cleaner:Lcom/htc/lmw/steps/CleanCache$CleanCacheThread;

    invoke-virtual {v0}, Lcom/htc/lmw/steps/CleanCache$CleanCacheThread;->start()V

    goto :goto_0

    .line 233
    :cond_1
    new-instance v0, Lcom/htc/lmw/steps/CleanCache$CleanCacheThread;

    iget-object v1, p0, Lcom/htc/lmw/steps/CleanCache;->apps:Ljava/util/List;

    invoke-direct {v0, p0, v1, p0}, Lcom/htc/lmw/steps/CleanCache$CleanCacheThread;-><init>(Lcom/htc/lmw/steps/CleanCache;Ljava/util/List;Lcom/htc/lmw/steps/CleanCache;)V

    iput-object v0, p0, Lcom/htc/lmw/steps/CleanCache;->cleaner:Lcom/htc/lmw/steps/CleanCache$CleanCacheThread;

    .line 234
    iget-object v0, p0, Lcom/htc/lmw/steps/CleanCache;->cleaner:Lcom/htc/lmw/steps/CleanCache$CleanCacheThread;

    invoke-virtual {v0}, Lcom/htc/lmw/steps/CleanCache$CleanCacheThread;->start()V

    goto :goto_0
.end method

.method public makeListItemMultiline(Landroid/view/View;)V
    .locals 8
    .parameter "view"

    .prologue
    .line 161
    const v7, 0x2020010

    :try_start_0
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 162
    .local v5, text1:Landroid/widget/TextView;
    const v7, 0x2020014

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 164
    .local v6, text2:Landroid/widget/TextView;
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 166
    invoke-virtual {v5}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 167
    .local v3, parent:Landroid/view/ViewParent;
    const/4 v2, 0x0

    .line 168
    .local v2, params:Landroid/view/ViewGroup$LayoutParams;
    :goto_0
    if-eqz v3, :cond_2

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 170
    instance-of v7, v3, Landroid/view/View;

    if-eqz v7, :cond_1

    .line 172
    move-object v0, v3

    check-cast v0, Landroid/view/View;

    move-object v4, v0

    .line 173
    .local v4, parentView:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 174
    iget v7, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v7, :cond_0

    .line 176
    iget v7, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, v7}, Landroid/view/View;->setMinimumHeight(I)V

    .line 178
    :cond_0
    const/4 v7, -0x2

    iput v7, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 179
    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    .end local v4           #parentView:Landroid/view/View;
    :cond_1
    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    goto :goto_0

    .line 184
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 185
    iget v7, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v7, :cond_3

    .line 187
    iget v7, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, v7}, Landroid/view/View;->setMinimumHeight(I)V

    .line 189
    :cond_3
    const/4 v7, -0x2

    iput v7, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 190
    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    .end local v2           #params:Landroid/view/ViewGroup$LayoutParams;
    .end local v3           #parent:Landroid/view/ViewParent;
    .end local v5           #text1:Landroid/widget/TextView;
    .end local v6           #text2:Landroid/widget/TextView;
    :goto_1
    return-void

    .line 193
    :catch_0
    move-exception v1

    .line 195
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    const/16 v3, 0x64

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 208
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/lmw/steps/CleanCache;->cleanRarelyUsed:Z

    .line 209
    iget-boolean v0, p0, Lcom/htc/lmw/steps/CleanCache;->cleanRarelyUsed:Z

    invoke-direct {p0, v3, v0}, Lcom/htc/lmw/steps/CleanCache;->setRadioItemChecked(IZ)V

    .line 210
    const/16 v0, 0x65

    iget-boolean v3, p0, Lcom/htc/lmw/steps/CleanCache;->cleanRarelyUsed:Z

    if-nez v3, :cond_1

    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/htc/lmw/steps/CleanCache;->setRadioItemChecked(IZ)V

    .line 211
    return-void

    :cond_0
    move v0, v2

    .line 208
    goto :goto_0

    :cond_1
    move v1, v2

    .line 210
    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 85
    invoke-super {p0, p1}, Lcom/htc/lmw/WizardActivity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    invoke-static {}, Lcom/htc/lmw/Wizard;->getInstance()Lcom/htc/lmw/Wizard;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/lmw/Wizard;->isLowMemory()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 89
    iget-object v2, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    const v3, 0x7f050019

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setTitle(I)V

    .line 96
    :goto_0
    iget-object v2, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    const v3, 0x7f030001

    invoke-static {v2, p0, v3}, Lcom/htc/lmw/Customize;->activityOnCreate(Landroid/app/Activity;Landroid/app/Activity;I)V

    .line 98
    invoke-virtual {p0}, Lcom/htc/lmw/steps/CleanCache;->dismissLoadingDialog()V

    .line 101
    iget-object v2, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "clean_rarely_used"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/lmw/steps/CleanCache;->cleanRarelyUsed:Z

    .line 106
    invoke-virtual {p0}, Lcom/htc/lmw/steps/CleanCache;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    .line 108
    .local v1, workers:[Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 109
    aget-object v2, v1, v4

    check-cast v2, Lcom/htc/lmw/steps/CleanCache$AppsLoaderThread;

    iput-object v2, p0, Lcom/htc/lmw/steps/CleanCache;->loader:Lcom/htc/lmw/steps/CleanCache$AppsLoaderThread;

    .line 110
    aget-object v2, v1, v5

    check-cast v2, Lcom/htc/lmw/steps/CleanCache$CleanCacheThread;

    iput-object v2, p0, Lcom/htc/lmw/steps/CleanCache;->cleaner:Lcom/htc/lmw/steps/CleanCache$CleanCacheThread;

    .line 113
    :cond_0
    iget-object v2, p0, Lcom/htc/lmw/steps/CleanCache;->loader:Lcom/htc/lmw/steps/CleanCache$AppsLoaderThread;

    if-eqz v2, :cond_4

    .line 114
    iget-object v2, p0, Lcom/htc/lmw/steps/CleanCache;->loader:Lcom/htc/lmw/steps/CleanCache$AppsLoaderThread;

    iput-object p0, v2, Lcom/htc/lmw/steps/CleanCache$AppsLoaderThread;->owner:Lcom/htc/lmw/steps/CleanCache;

    .line 116
    iget-object v2, p0, Lcom/htc/lmw/steps/CleanCache;->loader:Lcom/htc/lmw/steps/CleanCache$AppsLoaderThread;

    invoke-virtual {v2}, Lcom/htc/lmw/steps/CleanCache$AppsLoaderThread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 117
    invoke-direct {p0}, Lcom/htc/lmw/steps/CleanCache;->showAppsLoadingDialog()V

    .line 125
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/htc/lmw/steps/CleanCache;->setupCleanBtns()V

    .line 126
    invoke-static {}, Lcom/htc/lmw/Wizard;->getInstance()Lcom/htc/lmw/Wizard;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/lmw/Wizard;->isLowMemory()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 128
    iget-object v2, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    const v3, 0x7f070005

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 129
    .local v0, hint:Landroid/widget/TextView;
    const v2, 0x7f050018

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 131
    .end local v0           #hint:Landroid/widget/TextView;
    :cond_2
    return-void

    .line 93
    .end local v1           #workers:[Ljava/lang/Object;
    :cond_3
    iget-object v2, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    const v3, 0x7f050011

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setTitle(I)V

    goto :goto_0

    .line 118
    .restart local v1       #workers:[Ljava/lang/Object;
    :cond_4
    sget-object v2, Lcom/htc/lmw/Customize;->loadingTime:Lcom/htc/lmw/CustomizeBase$LoadingTime;

    sget-object v3, Lcom/htc/lmw/CustomizeBase$LoadingTime;->LOAD_BEFORE_CACHE:Lcom/htc/lmw/CustomizeBase$LoadingTime;

    if-ne v2, v3, :cond_1

    .line 119
    invoke-direct {p0}, Lcom/htc/lmw/steps/CleanCache;->showAppsLoadingDialog()V

    .line 122
    new-instance v2, Lcom/htc/lmw/steps/CleanCache$AppsLoaderThread;

    iget-boolean v3, p0, Lcom/htc/lmw/steps/CleanCache;->cleanRarelyUsed:Z

    invoke-direct {v2, p0, v3, p0}, Lcom/htc/lmw/steps/CleanCache$AppsLoaderThread;-><init>(Lcom/htc/lmw/steps/CleanCache;ZLcom/htc/lmw/steps/CleanCache;)V

    iput-object v2, p0, Lcom/htc/lmw/steps/CleanCache;->loader:Lcom/htc/lmw/steps/CleanCache$AppsLoaderThread;

    .line 123
    iget-object v2, p0, Lcom/htc/lmw/steps/CleanCache;->loader:Lcom/htc/lmw/steps/CleanCache$AppsLoaderThread;

    invoke-virtual {v2}, Lcom/htc/lmw/steps/CleanCache$AppsLoaderThread;->start()V

    goto :goto_1
.end method

.method public onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 64
    invoke-super {p0}, Lcom/htc/lmw/WizardActivity;->onPause()V

    .line 66
    invoke-static {}, Lcom/htc/lmw/Wizard;->getInstance()Lcom/htc/lmw/Wizard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/lmw/Wizard;->isLowMemory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 68
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "clean_rarely_used"

    iget-boolean v2, p0, Lcom/htc/lmw/steps/CleanCache;->cleanRarelyUsed:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 69
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 72
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    sget-boolean v1, Lcom/htc/lmw/MainActivity;->isLowMode:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/htc/lmw/Wizard;->getInstance()Lcom/htc/lmw/Wizard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/lmw/Wizard;->isLowMemory()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/htc/lmw/steps/CleanCache;->mIsBroatToBackground:Z

    if-nez v1, :cond_2

    :cond_1
    invoke-static {}, Lcom/htc/lmw/Wizard;->getInstance()Lcom/htc/lmw/Wizard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/lmw/Wizard;->isLowMemory()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/htc/lmw/steps/CleanCache;->mIsBroatToBackground:Z

    if-eqz v1, :cond_3

    .line 75
    :cond_2
    iget-object v1, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/lmw/Customize;->removeNotification(Landroid/content/Context;)V

    .line 76
    iget-object v1, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/lmw/Customize;->raiseNotification(Landroid/content/Context;)V

    .line 77
    iget-object v1, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/htc/lmw/Settings;->setNotifyOnDeviceLowStorage(Landroid/content/Context;Z)V

    .line 79
    :cond_3
    return-void
.end method

.method public bridge synthetic onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/htc/lmw/steps/CleanCache;->onRetainNonConfigurationInstance()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onRetainNonConfigurationInstance()[Ljava/lang/Object;
    .locals 3

    .prologue
    .line 304
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/lmw/steps/CleanCache;->loader:Lcom/htc/lmw/steps/CleanCache$AppsLoaderThread;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/lmw/steps/CleanCache;->cleaner:Lcom/htc/lmw/steps/CleanCache$CleanCacheThread;

    aput-object v2, v0, v1

    return-object v0
.end method
