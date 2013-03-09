.class public Lcom/htc/appsharing/SelectToShareActivity;
.super Landroid/app/Activity;
.source "SelectToShareActivity.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AppSharing.SelectToShareActivity"

.field private static final REQUEST_CODE_SHARE:I = 0x1

.field private static final SINGLE_SELECTION:Z = true

.field private static final WHAT_APPINFO_LOADED:I = 0x1


# instance fields
.field private mEmptyText:Landroid/widget/TextView;

.field protected mHandler:Landroid/os/Handler;

.field private mLstContent:Lcom/htc/widget/HtcListView;

.field protected mPackageIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    new-instance v0, Lcom/htc/appsharing/SelectToShareActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/appsharing/SelectToShareActivity$1;-><init>(Lcom/htc/appsharing/SelectToShareActivity;)V

    iput-object v0, p0, Lcom/htc/appsharing/SelectToShareActivity;->mHandler:Landroid/os/Handler;

    .line 56
    new-instance v0, Lcom/htc/appsharing/SelectToShareActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/appsharing/SelectToShareActivity$2;-><init>(Lcom/htc/appsharing/SelectToShareActivity;)V

    iput-object v0, p0, Lcom/htc/appsharing/SelectToShareActivity;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/appsharing/SelectToShareActivity;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/htc/appsharing/SelectToShareActivity;->onAppInfoLoaded(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/appsharing/SelectToShareActivity;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/htc/appsharing/SelectToShareActivity;->onPackageChange(Landroid/content/Intent;)V

    return-void
.end method

.method private doCreateS(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 152
    const v2, 0x7f030002

    invoke-virtual {p0, v2}, Lcom/htc/appsharing/SelectToShareActivity;->setContentView(I)V

    .line 153
    const-string v2, "AppSharing.SelectToShareActivity"

    const-string v3, "doCreateS"

    invoke-static {v2, v3}, Lcom/htc/appsharing/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const v2, 0x7f080003

    invoke-virtual {p0, v2}, Lcom/htc/appsharing/SelectToShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HeaderBarShort;

    .line 156
    .local v1, titleBarView:Lcom/htc/widget/HeaderBarShort;
    if-eqz v1, :cond_0

    .line 157
    const/4 v0, 0x0

    .line 159
    .local v0, headerText:Lcom/htc/widget/HeaderBarText;
    const v2, 0x7f080004

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarShort;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #headerText:Lcom/htc/widget/HeaderBarText;
    check-cast v0, Lcom/htc/widget/HeaderBarText;

    .line 160
    .restart local v0       #headerText:Lcom/htc/widget/HeaderBarText;
    if-eqz v0, :cond_0

    .line 161
    const v2, 0x7f060001

    invoke-virtual {p0, v2}, Lcom/htc/appsharing/SelectToShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v0, v4}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 165
    .end local v0           #headerText:Lcom/htc/widget/HeaderBarText;
    :cond_0
    const v2, 0x102000a

    invoke-virtual {p0, v2}, Lcom/htc/appsharing/SelectToShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListView;

    iput-object v2, p0, Lcom/htc/appsharing/SelectToShareActivity;->mLstContent:Lcom/htc/widget/HtcListView;

    .line 166
    const/high16 v2, 0x7f08

    invoke-virtual {p0, v2}, Lcom/htc/appsharing/SelectToShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/htc/appsharing/SelectToShareActivity;->mEmptyText:Landroid/widget/TextView;

    .line 169
    iget-object v2, p0, Lcom/htc/appsharing/SelectToShareActivity;->mLstContent:Lcom/htc/widget/HtcListView;

    invoke-virtual {v2, p0}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 170
    iget-object v2, p0, Lcom/htc/appsharing/SelectToShareActivity;->mLstContent:Lcom/htc/widget/HtcListView;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcListView;->setItemsCanFocus(Z)V

    .line 171
    iget-object v2, p0, Lcom/htc/appsharing/SelectToShareActivity;->mLstContent:Lcom/htc/widget/HtcListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->setChoiceMode(I)V

    .line 173
    iget-object v2, p0, Lcom/htc/appsharing/SelectToShareActivity;->mLstContent:Lcom/htc/widget/HtcListView;

    new-instance v3, Lcom/htc/appsharing/AppInfoAdapterS;

    invoke-direct {v3, p0}, Lcom/htc/appsharing/AppInfoAdapterS;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 175
    return-void
.end method

.method private loadAppInfo()V
    .locals 3

    .prologue
    .line 193
    iget-object v0, p0, Lcom/htc/appsharing/SelectToShareActivity;->mLstContent:Lcom/htc/widget/HtcListView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lcom/htc/appsharing/SelectToShareActivity;->mEmptyText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lcom/htc/appsharing/SelectToShareActivity;->mEmptyText:Landroid/widget/TextView;

    const v1, 0x7f06000d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 196
    iget-object v0, p0, Lcom/htc/appsharing/SelectToShareActivity;->mEmptyText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 198
    invoke-static {}, Lcom/htc/appsharing/AppInfoManager;->GetInstance()Lcom/htc/appsharing/AppInfoManager;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/appsharing/SelectToShareActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lcom/htc/appsharing/AppInfoManager;->loadAppInfo_Async(Landroid/content/Context;Landroid/os/Handler;I)V

    .line 199
    return-void
.end method

.method private onAppInfoLoaded(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/appsharing/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 228
    .local p1, loadedAppInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/appsharing/AppInfo;>;"
    const-string v0, "AppSharing.SelectToShareActivity"

    const-string v1, "onAppInfoLoaded"

    invoke-static {v0, v1}, Lcom/htc/appsharing/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-static {}, Lcom/htc/appsharing/AppInfoManager;->GetInstance()Lcom/htc/appsharing/AppInfoManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/appsharing/AppInfoManager;->SetAppInfo(Ljava/util/ArrayList;)V

    .line 230
    invoke-direct {p0}, Lcom/htc/appsharing/SelectToShareActivity;->updateWidgetsOnAppLstUpdated()V

    .line 231
    return-void
.end method

.method private onPackageChange(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    .line 203
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, action:Ljava/lang/String;
    const-string v3, "AppSharing.SelectToShareActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPackageChange: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/appsharing/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const/4 v1, 0x0

    .line 207
    .local v1, lstUpdated:Z
    const-string v3, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 210
    :cond_0
    const-string v3, "android.intent.extra.changed_package_list"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 211
    .local v2, pkgList:[Ljava/lang/String;
    if-eqz v2, :cond_2

    array-length v3, v2

    if-lez v3, :cond_2

    .line 213
    const-string v3, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 214
    invoke-static {}, Lcom/htc/appsharing/AppInfoManager;->GetInstance()Lcom/htc/appsharing/AppInfoManager;

    move-result-object v3

    invoke-virtual {v3, p0, v2}, Lcom/htc/appsharing/AppInfoManager;->AddExternalAppInfo(Landroid/content/Context;[Ljava/lang/String;)V

    .line 218
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 222
    .end local v2           #pkgList:[Ljava/lang/String;
    :cond_2
    if-eqz v1, :cond_3

    .line 223
    invoke-direct {p0}, Lcom/htc/appsharing/SelectToShareActivity;->updateWidgetsOnAppLstUpdated()V

    .line 224
    :cond_3
    return-void

    .line 215
    .restart local v2       #pkgList:[Ljava/lang/String;
    :cond_4
    const-string v3, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 216
    invoke-static {}, Lcom/htc/appsharing/AppInfoManager;->GetInstance()Lcom/htc/appsharing/AppInfoManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/htc/appsharing/AppInfoManager;->RemoveExternalAppInfo([Ljava/lang/String;)V

    goto :goto_0
.end method

.method private registerMediaBroadcast()V
    .locals 2

    .prologue
    .line 186
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 187
    .local v0, intentFilterSD:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 188
    iget-object v1, p0, Lcom/htc/appsharing/SelectToShareActivity;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/appsharing/SelectToShareActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 189
    return-void
.end method

.method private updateWidgetsOnAppLstUpdated()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 235
    invoke-static {}, Lcom/htc/appsharing/AppInfoManager;->GetInstance()Lcom/htc/appsharing/AppInfoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/appsharing/AppInfoManager;->getAppCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/htc/appsharing/SelectToShareActivity;->mLstContent:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lcom/htc/appsharing/SelectToShareActivity;->mLstContent:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    .line 239
    iget-object v0, p0, Lcom/htc/appsharing/SelectToShareActivity;->mEmptyText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 247
    :goto_0
    return-void

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/htc/appsharing/SelectToShareActivity;->mLstContent:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListView;->setVisibility(I)V

    .line 244
    iget-object v0, p0, Lcom/htc/appsharing/SelectToShareActivity;->mEmptyText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lcom/htc/appsharing/SelectToShareActivity;->mEmptyText:Landroid/widget/TextView;

    const v1, 0x7f060005

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 142
    const-string v0, "AppSharing.SelectToShareActivity"

    const-string v1, "onActivityResult"

    invoke-static {v0, v1}, Lcom/htc/appsharing/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/htc/appsharing/SelectToShareActivity;->finish()V

    .line 148
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 251
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 252
    const-string v1, "common_app_bkg"

    const v2, 0x20806b7

    invoke-static {p0, v1, v2}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 253
    .local v0, bkgId:I
    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {p0}, Lcom/htc/appsharing/SelectToShareActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 255
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 68
    const-string v0, "AppSharing.SelectToShareActivity"

    const-string v1, "+++onCreate"

    invoke-static {v0, v1}, Lcom/htc/appsharing/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-direct {p0, p1}, Lcom/htc/appsharing/SelectToShareActivity;->doCreateS(Landroid/os/Bundle;)V

    .line 79
    invoke-direct {p0}, Lcom/htc/appsharing/SelectToShareActivity;->registerMediaBroadcast()V

    .line 80
    invoke-direct {p0}, Lcom/htc/appsharing/SelectToShareActivity;->loadAppInfo()V

    .line 82
    const-string v0, "AppSharing.SelectToShareActivity"

    const-string v1, "---onCreate"

    invoke-static {v0, v1}, Lcom/htc/appsharing/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 88
    const-string v0, "AppSharing.SelectToShareActivity"

    const-string v1, "+++onDestroy"

    invoke-static {v0, v1}, Lcom/htc/appsharing/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/htc/appsharing/SelectToShareActivity;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/appsharing/SelectToShareActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 91
    invoke-static {}, Lcom/htc/appsharing/AppInfoManager;->GetInstance()Lcom/htc/appsharing/AppInfoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/appsharing/AppInfoManager;->stopLoadAppInfo()V

    .line 92
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 94
    const-string v0, "AppSharing.SelectToShareActivity"

    const-string v1, "---onDestroy"

    invoke-static {v0, v1}, Lcom/htc/appsharing/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "arg1"
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
    .line 99
    .local p1, arg0:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    const-string v2, "AppSharing.SelectToShareActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onItemClick("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/appsharing/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-static {}, Lcom/htc/appsharing/AppInfoManager;->GetInstance()Lcom/htc/appsharing/AppInfoManager;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/htc/appsharing/AppInfoManager;->getAppInfo(I)Lcom/htc/appsharing/AppInfo;

    move-result-object v0

    .line 103
    .local v0, appInfo:Lcom/htc/appsharing/AppInfo;
    if-nez v0, :cond_0

    .line 113
    :goto_0
    return-void

    .line 110
    :cond_0
    new-instance v1, Lcom/htc/appsharing/ComposeMaterial;

    invoke-static {p0}, Lcom/htc/appsharing/util/ShareUtil;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/htc/appsharing/ComposeMaterial;-><init>(Lcom/htc/appsharing/AppInfo;Ljava/lang/String;)V

    .line 111
    .local v1, material:Lcom/htc/appsharing/ComposeMaterial;
    invoke-virtual {p0, v1}, Lcom/htc/appsharing/SelectToShareActivity;->shareApp(Lcom/htc/appsharing/ComposeMaterial;)V

    goto :goto_0
.end method

.method protected shareApp(Lcom/htc/appsharing/ComposeMaterial;)V
    .locals 6
    .parameter "material"

    .prologue
    const/4 v5, 0x0

    .line 117
    new-instance v0, Lcom/htc/appsharing/util/ShareContext;

    invoke-direct {v0}, Lcom/htc/appsharing/util/ShareContext;-><init>()V

    .line 118
    .local v0, shareContext:Lcom/htc/appsharing/util/ShareContext;
    invoke-virtual {p0}, Lcom/htc/appsharing/SelectToShareActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/appsharing/util/ShareContext;->invitationTitle:Ljava/lang/String;

    .line 119
    invoke-static {p0, p1}, Lcom/htc/appsharing/util/ShareUtil;->createComposeTitle(Landroid/content/Context;Lcom/htc/appsharing/ComposeMaterial;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/appsharing/util/ShareContext;->composeTitle:Ljava/lang/String;

    .line 120
    invoke-static {p0, p1}, Lcom/htc/appsharing/util/ShareUtil;->createComposeMessage(Landroid/content/Context;Lcom/htc/appsharing/ComposeMaterial;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/appsharing/util/ShareContext;->composeMessage:Ljava/lang/String;

    .line 121
    invoke-static {p0, p1}, Lcom/htc/appsharing/util/ShareUtil;->createComposeTitleForGmail(Landroid/content/Context;Lcom/htc/appsharing/ComposeMaterial;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/appsharing/util/ShareContext;->composeTitleForGmail:Ljava/lang/String;

    .line 122
    invoke-virtual {p1}, Lcom/htc/appsharing/ComposeMaterial;->getAppReferences()[Landroid/os/Parcelable;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/appsharing/util/ShareContext;->appReferences:[Landroid/os/Parcelable;

    .line 124
    const/4 v1, 0x0

    .line 125
    .local v1, str:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/appsharing/SelectToShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/htc/appsharing/SelectToShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "AppSharingShareVia"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 129
    :cond_0
    const-string v2, "AppSharing.SelectToShareActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getStringExtra:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/appsharing/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    if-eqz v1, :cond_1

    const-string v2, "friendstream"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 132
    const/4 v2, 0x1

    invoke-static {p0, v0, v5, v5, v2}, Lcom/htc/appsharing/util/ShareUtil;->sendSharedInvitation(Landroid/content/Context;Lcom/htc/appsharing/util/ShareContext;ZIZ)V

    .line 138
    :goto_0
    return-void

    .line 136
    :cond_1
    invoke-static {p0, v0, v5, v5, v5}, Lcom/htc/appsharing/util/ShareUtil;->sendSharedInvitation(Landroid/content/Context;Lcom/htc/appsharing/util/ShareContext;ZIZ)V

    goto :goto_0
.end method
