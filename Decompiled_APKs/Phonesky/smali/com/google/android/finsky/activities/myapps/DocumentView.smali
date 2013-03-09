.class public Lcom/google/android/finsky/activities/myapps/DocumentView;
.super Landroid/widget/LinearLayout;
.source "DocumentView.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;
.implements Lcom/google/android/finsky/api/model/OnDataChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/activities/myapps/DocumentView$WatchedInstallerListener;,
        Lcom/google/android/finsky/activities/myapps/DocumentView$DocumentActionHandler;
    }
.end annotation


# instance fields
.field private final mAppStates:Lcom/google/android/finsky/appstate/AppStates;

.field private final mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field private mDetails:Lcom/google/android/finsky/api/model/DfeDetails;

.field private final mDfeApi:Lcom/google/android/finsky/api/DfeApi;

.field private mDocId:Ljava/lang/String;

.field private mDocument:Lcom/google/android/finsky/api/model/Document;

.field private mFragment:Landroid/support/v4/app/Fragment;

.field private mHandler:Lcom/google/android/finsky/activities/myapps/DocumentView$DocumentActionHandler;

.field private mHasSubscriptions:Z

.field private final mInstaller:Lcom/google/android/finsky/receivers/Installer;

.field private mInstallerListener:Lcom/google/android/finsky/installer/InstallerListener;

.field private mIsSystemPackage:Z

.field private final mLibraries:Lcom/google/android/finsky/library/Libraries;

.field private mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field private final mRebindRunnable:Ljava/lang/Runnable;

.field private final mSubscriptionsViewBinder:Lcom/google/android/finsky/activities/SubscriptionsViewBinder;

.field private final mUiHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/activities/myapps/DocumentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    new-instance v0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;

    invoke-direct {v0}, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mSubscriptionsViewBinder:Lcom/google/android/finsky/activities/SubscriptionsViewBinder;

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mInstallerListener:Lcom/google/android/finsky/installer/InstallerListener;

    .line 78
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mUiHandler:Landroid/os/Handler;

    .line 80
    new-instance v0, Lcom/google/android/finsky/activities/myapps/DocumentView$1;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/activities/myapps/DocumentView$1;-><init>(Lcom/google/android/finsky/activities/myapps/DocumentView;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mRebindRunnable:Ljava/lang/Runnable;

    .line 104
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getInstaller()Lcom/google/android/finsky/receivers/Installer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    .line 105
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    .line 106
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getAppStates()Lcom/google/android/finsky/appstate/AppStates;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    .line 107
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getBitmapLoader()Lcom/google/android/finsky/utils/BitmapLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    .line 108
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    .line 110
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mSubscriptionsViewBinder:Lcom/google/android/finsky/activities/SubscriptionsViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v3

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/library/Libraries;)V

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/myapps/DocumentView;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/myapps/DocumentView;->bind(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/finsky/activities/myapps/DocumentView;)Lcom/google/android/finsky/activities/myapps/DocumentView$DocumentActionHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mHandler:Lcom/google/android/finsky/activities/myapps/DocumentView$DocumentActionHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/activities/myapps/DocumentView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mIsSystemPackage:Z

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/activities/myapps/DocumentView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mHasSubscriptions:Z

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/finsky/activities/myapps/DocumentView;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mRebindRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/finsky/activities/myapps/DocumentView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private bind(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/google/android/finsky/activities/myapps/DocumentView;->resetViewState()V

    .line 157
    new-instance v0, Lcom/google/android/finsky/activities/AppActionAnalyzer;

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDocId:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/activities/AppActionAnalyzer;-><init>(Ljava/lang/String;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/library/Libraries;)V

    .line 158
    .local v0, actions:Lcom/google/android/finsky/activities/AppActionAnalyzer;
    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/myapps/DocumentView;->showButtons(Lcom/google/android/finsky/activities/AppActionAnalyzer;)V

    .line 159
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/google/android/finsky/activities/myapps/DocumentView;->bindPermissions(Landroid/support/v4/app/FragmentManager;Landroid/os/Bundle;)V

    .line 160
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/myapps/DocumentView;->bindSubscriptions(Landroid/os/Bundle;)V

    .line 161
    invoke-direct {p0}, Lcom/google/android/finsky/activities/myapps/DocumentView;->bindAvailabilityRestrictions()V

    .line 162
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-direct {p0, v1}, Lcom/google/android/finsky/activities/myapps/DocumentView;->bindAutoUpdate(Landroid/support/v4/app/Fragment;)V

    .line 163
    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/myapps/DocumentView;->bindButtons(Lcom/google/android/finsky/activities/AppActionAnalyzer;)V

    .line 164
    invoke-direct {p0}, Lcom/google/android/finsky/activities/myapps/DocumentView;->bindHeader()V

    .line 165
    return-void
.end method

.method private bindAutoUpdate(Landroid/support/v4/app/Fragment;)V
    .locals 6
    .parameter "fragment"

    .prologue
    .line 304
    const v1, 0x7f080019

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/myapps/DocumentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/AutoUpdateSection;

    .line 305
    .local v0, section:Lcom/google/android/finsky/layout/AutoUpdateSection;
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDocId:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    iget-object v4, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    iget-object v5, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/layout/AutoUpdateSection;->bind(Ljava/lang/String;Landroid/support/v4/app/Fragment;Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/receivers/Installer;)V

    .line 306
    return-void
.end method

.method private bindAvailabilityRestrictions()V
    .locals 6

    .prologue
    .line 339
    const v1, 0x7f0800be

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/myapps/DocumentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/WarningMessageSection;

    .line 342
    .local v0, warningMessagePanel:Lcom/google/android/finsky/layout/WarningMessageSection;
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDocument:Lcom/google/android/finsky/api/model/Document;

    const/4 v2, 0x0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    iget-object v5, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-interface {v5}, Lcom/google/android/finsky/api/DfeApi;->getAccount()Landroid/accounts/Account;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/layout/WarningMessageSection;->bind(Lcom/google/android/finsky/api/model/Document;Landroid/widget/ImageView;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/library/Libraries;Landroid/accounts/Account;)V

    .line 344
    return-void
.end method

.method private bindButtons(Lcom/google/android/finsky/activities/AppActionAnalyzer;)V
    .locals 2
    .parameter "actions"

    .prologue
    .line 169
    const v0, 0x7f0800b4

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/myapps/DocumentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/google/android/finsky/activities/myapps/DocumentView$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/finsky/activities/myapps/DocumentView$2;-><init>(Lcom/google/android/finsky/activities/myapps/DocumentView;Lcom/google/android/finsky/activities/AppActionAnalyzer;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    const v0, 0x7f0800b5

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/myapps/DocumentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/google/android/finsky/activities/myapps/DocumentView$3;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/myapps/DocumentView$3;-><init>(Lcom/google/android/finsky/activities/myapps/DocumentView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    const v0, 0x7f0800b8

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/myapps/DocumentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/google/android/finsky/activities/myapps/DocumentView$4;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/myapps/DocumentView$4;-><init>(Lcom/google/android/finsky/activities/myapps/DocumentView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    const v0, 0x7f080103

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/myapps/DocumentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/google/android/finsky/activities/myapps/DocumentView$5;

    invoke-direct {v1, p0, p1}, Lcom/google/android/finsky/activities/myapps/DocumentView$5;-><init>(Lcom/google/android/finsky/activities/myapps/DocumentView;Lcom/google/android/finsky/activities/AppActionAnalyzer;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    const v0, 0x7f0800b6

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/myapps/DocumentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/google/android/finsky/activities/myapps/DocumentView$6;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/myapps/DocumentView$6;-><init>(Lcom/google/android/finsky/activities/myapps/DocumentView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    return-void
.end method

.method private bindHeader()V
    .locals 5

    .prologue
    .line 210
    const v2, 0x7f0800ed

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/myapps/DocumentView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    const v2, 0x7f0800ee

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/myapps/DocumentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 212
    .local v0, creator:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getCreator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    const v2, 0x7f08009f

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/myapps/DocumentView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/DocumentView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getBackendHintColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 216
    const v2, 0x7f0800bd

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/myapps/DocumentView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/layout/DocImageView;

    .line 217
    .local v1, thumbnailView:Lcom/google/android/finsky/layout/DocImageView;
    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDocument:Lcom/google/android/finsky/api/model/Document;

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/finsky/layout/DocImageView;->bind(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;)V

    .line 218
    const v2, 0x7f080102

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/myapps/DocumentView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/google/android/finsky/activities/myapps/DocumentView$7;

    invoke-direct {v3, p0}, Lcom/google/android/finsky/activities/myapps/DocumentView$7;-><init>(Lcom/google/android/finsky/activities/myapps/DocumentView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    return-void
.end method

.method private bindPermissions(Landroid/support/v4/app/FragmentManager;Landroid/os/Bundle;)V
    .locals 8
    .parameter "fragmentManager"
    .parameter "savedInstanceState"

    .prologue
    .line 309
    iget-object v6, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v6}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v0

    .line 310
    .local v0, appDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
    if-nez v0, :cond_0

    .line 327
    :goto_0
    return-void

    .line 314
    :cond_0
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 315
    .local v5, permissionInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getPermissionList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 317
    .local v3, permission:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/finsky/FinskyApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v3, v7}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v4

    .line 319
    .local v4, permissionInfo:Landroid/content/pm/PermissionInfo;
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 320
    .end local v4           #permissionInfo:Landroid/content/pm/PermissionInfo;
    :catch_0
    move-exception v6

    goto :goto_1

    .line 324
    .end local v3           #permission:Ljava/lang/String;
    :cond_1
    const v6, 0x7f080104

    invoke-virtual {p0, v6}, Lcom/google/android/finsky/activities/myapps/DocumentView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/layout/AppSecurityPermissions;

    .line 326
    .local v1, asp:Lcom/google/android/finsky/layout/AppSecurityPermissions;
    iget-object v6, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDocId:Ljava/lang/String;

    invoke-virtual {v1, p1, v6, v5, p2}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->bindInfo(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private bindSubscriptions(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 330
    const v0, 0x7f0800bf

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/myapps/DocumentView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/layout/SubscriptionsSection;

    .line 332
    .local v2, subscriptionsSection:Lcom/google/android/finsky/layout/SubscriptionsSection;
    if-eqz v2, :cond_0

    .line 333
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mSubscriptionsViewBinder:Lcom/google/android/finsky/activities/SubscriptionsViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDocument:Lcom/google/android/finsky/api/model/Document;

    const v4, 0x7f04009c

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->bind(Landroid/support/v4/app/Fragment;Lcom/google/android/finsky/layout/SubscriptionsSection;Lcom/google/android/finsky/api/model/Document;ILandroid/os/Bundle;)V

    .line 336
    :cond_0
    return-void
.end method

.method private resetViewState()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 295
    const v0, 0x7f0800c8

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/myapps/DocumentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 296
    const v0, 0x7f0800b4

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/myapps/DocumentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 297
    const v0, 0x7f080103

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/myapps/DocumentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 298
    const v0, 0x7f0800b6

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/myapps/DocumentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 299
    const v0, 0x7f0800b5

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/myapps/DocumentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 300
    const v0, 0x7f0800b8

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/myapps/DocumentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 301
    return-void
.end method

.method private showButtons(Lcom/google/android/finsky/activities/AppActionAnalyzer;)V
    .locals 13
    .parameter "actions"

    .prologue
    const v12, 0x7f0800c8

    const v11, 0x7f0800b4

    const/4 v10, 0x0

    .line 229
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/finsky/FinskyApp;->getInstaller()Lcom/google/android/finsky/receivers/Installer;

    move-result-object v3

    .line 230
    .local v3, installer:Lcom/google/android/finsky/receivers/Installer;
    iget-object v7, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDocId:Ljava/lang/String;

    invoke-interface {v3, v7}, Lcom/google/android/finsky/receivers/Installer;->getState(Ljava/lang/String;)Lcom/google/android/finsky/receivers/Installer$InstallerState;

    move-result-object v4

    .line 233
    .local v4, installerState:Lcom/google/android/finsky/receivers/Installer$InstallerState;
    sget-object v7, Lcom/google/android/finsky/receivers/Installer$InstallerState;->NOT_TRACKED:Lcom/google/android/finsky/receivers/Installer$InstallerState;

    if-eq v4, v7, :cond_1

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    invoke-virtual {p0, v12}, Lcom/google/android/finsky/activities/myapps/DocumentView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 240
    iget-boolean v7, p1, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isInstalledSystemApp:Z

    iput-boolean v7, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mIsSystemPackage:Z

    .line 242
    iget-boolean v7, p1, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isRefundable:Z

    if-eqz v7, :cond_6

    .line 243
    const v7, 0x7f080103

    invoke-virtual {p0, v7}, Lcom/google/android/finsky/activities/myapps/DocumentView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 249
    :cond_2
    :goto_1
    iget-object v7, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-static {v7, v8, v9}, Lcom/google/android/finsky/utils/LibraryUtils;->isAvailable(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/library/Library;)Z

    move-result v5

    .line 251
    .local v5, isAvailable:Z
    if-eqz v5, :cond_3

    iget-boolean v7, p1, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isDisabled:Z

    if-nez v7, :cond_3

    .line 252
    iget v7, p1, Lcom/google/android/finsky/activities/AppActionAnalyzer;->installedVersion:I

    if-ltz v7, :cond_7

    iget v7, p1, Lcom/google/android/finsky/activities/AppActionAnalyzer;->installedVersion:I

    iget-object v8, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v8}, Lcom/google/android/finsky/api/model/Document;->getVersionCode()I

    move-result v8

    if-ge v7, v8, :cond_7

    .line 254
    const v7, 0x7f0800b5

    invoke-virtual {p0, v7}, Lcom/google/android/finsky/activities/myapps/DocumentView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 265
    :cond_3
    :goto_2
    iget-boolean v7, p1, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isLaunchable:Z

    if-eqz v7, :cond_4

    .line 266
    invoke-virtual {p0, v11}, Lcom/google/android/finsky/activities/myapps/DocumentView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 268
    .local v6, launchButton:Landroid/widget/Button;
    iget-boolean v7, p1, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isContinueLaunch:Z

    if-eqz v7, :cond_8

    .line 269
    const v7, 0x7f070130

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    .line 273
    :goto_3
    invoke-virtual {v6, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 277
    .end local v6           #launchButton:Landroid/widget/Button;
    :cond_4
    iget-boolean v7, p1, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isDisabled:Z

    if-eqz v7, :cond_5

    .line 278
    invoke-virtual {p0, v11}, Lcom/google/android/finsky/activities/myapps/DocumentView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 279
    .restart local v6       #launchButton:Landroid/widget/Button;
    const v7, 0x7f070132

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    .line 280
    invoke-virtual {v6, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 283
    .end local v6           #launchButton:Landroid/widget/Button;
    :cond_5
    invoke-virtual {p0, v12}, Lcom/google/android/finsky/activities/myapps/DocumentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 284
    .local v0, buttonContainer:Landroid/view/ViewGroup;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_4
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-ge v2, v7, :cond_0

    .line 285
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 286
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_9

    .line 284
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 244
    .end local v0           #buttonContainer:Landroid/view/ViewGroup;
    .end local v1           #child:Landroid/view/View;
    .end local v2           #i:I
    .end local v5           #isAvailable:Z
    :cond_6
    iget-boolean v7, p1, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isUninstallable:Z

    if-eqz v7, :cond_2

    .line 245
    const v7, 0x7f0800b6

    invoke-virtual {p0, v7}, Lcom/google/android/finsky/activities/myapps/DocumentView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 255
    .restart local v5       #isAvailable:Z
    :cond_7
    iget-boolean v7, p1, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isInstalled:Z

    if-nez v7, :cond_3

    .line 260
    const v7, 0x7f0800b8

    invoke-virtual {p0, v7}, Lcom/google/android/finsky/activities/myapps/DocumentView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 271
    .restart local v6       #launchButton:Landroid/widget/Button;
    :cond_8
    const v7, 0x7f07012f

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    goto :goto_3

    .line 289
    .end local v6           #launchButton:Landroid/widget/Button;
    .restart local v0       #buttonContainer:Landroid/view/ViewGroup;
    .restart local v1       #child:Landroid/view/View;
    .restart local v2       #i:I
    :cond_9
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_0
.end method


# virtual methods
.method public bind(Landroid/support/v4/app/Fragment;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/activities/myapps/DocumentView$DocumentActionHandler;Landroid/os/Bundle;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V
    .locals 3
    .parameter "fragment"
    .parameter "doc"
    .parameter "handler"
    .parameter "savedInstanceState"
    .parameter "navigationManager"

    .prologue
    .line 129
    iput-object p2, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDocument:Lcom/google/android/finsky/api/model/Document;

    .line 130
    iput-object p3, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mHandler:Lcom/google/android/finsky/activities/myapps/DocumentView$DocumentActionHandler;

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mIsSystemPackage:Z

    .line 132
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-static {v0, p2}, Lcom/google/android/finsky/utils/DocUtils;->hasAutoRenewingSubscriptions(Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/api/model/Document;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mHasSubscriptions:Z

    .line 133
    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDocId:Ljava/lang/String;

    .line 134
    iput-object p1, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mFragment:Landroid/support/v4/app/Fragment;

    .line 135
    iput-object p5, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    .line 137
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeDetails;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 139
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeDetails;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 141
    :cond_0
    new-instance v0, Lcom/google/android/finsky/api/model/DfeDetails;

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getDetailsUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/api/model/DfeDetails;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    .line 142
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeDetails;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 143
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeDetails;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 145
    invoke-direct {p0, p4}, Lcom/google/android/finsky/activities/myapps/DocumentView;->bind(Landroid/os/Bundle;)V

    .line 147
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mInstallerListener:Lcom/google/android/finsky/installer/InstallerListener;

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mInstallerListener:Lcom/google/android/finsky/installer/InstallerListener;

    invoke-interface {v0, v1}, Lcom/google/android/finsky/receivers/Installer;->removeListener(Lcom/google/android/finsky/installer/InstallerListener;)V

    .line 151
    :cond_1
    new-instance v0, Lcom/google/android/finsky/activities/myapps/DocumentView$WatchedInstallerListener;

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDocId:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/google/android/finsky/activities/myapps/DocumentView$WatchedInstallerListener;-><init>(Lcom/google/android/finsky/activities/myapps/DocumentView;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mInstallerListener:Lcom/google/android/finsky/installer/InstallerListener;

    .line 152
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mInstallerListener:Lcom/google/android/finsky/installer/InstallerListener;

    invoke-interface {v0, v1}, Lcom/google/android/finsky/receivers/Installer;->addListener(Lcom/google/android/finsky/installer/InstallerListener;)V

    .line 153
    return-void
.end method

.method public onDataChanged()V
    .locals 2

    .prologue
    .line 364
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeDetails;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDocument:Lcom/google/android/finsky/api/model/Document;

    .line 365
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/DocUtils;->hasAutoRenewingSubscriptions(Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/api/model/Document;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mHasSubscriptions:Z

    .line 366
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/myapps/DocumentView;->bind(Landroid/os/Bundle;)V

    .line 367
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mSubscriptionsViewBinder:Lcom/google/android/finsky/activities/SubscriptionsViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->onDestroyView()V

    .line 118
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mInstallerListener:Lcom/google/android/finsky/installer/InstallerListener;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mInstallerListener:Lcom/google/android/finsky/installer/InstallerListener;

    invoke-interface {v0, v1}, Lcom/google/android/finsky/receivers/Installer;->removeListener(Lcom/google/android/finsky/installer/InstallerListener;)V

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mUiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mRebindRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 124
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 125
    return-void
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 360
    return-void
.end method

.method public onNegativeClick(ILandroid/os/Bundle;)V
    .locals 1
    .parameter "requestCode"
    .parameter "extraArguments"

    .prologue
    .line 376
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mSubscriptionsViewBinder:Lcom/google/android/finsky/activities/SubscriptionsViewBinder;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->onNegativeClick(ILandroid/os/Bundle;)V

    .line 379
    :cond_0
    return-void
.end method

.method public onPositiveClick(ILandroid/os/Bundle;)V
    .locals 1
    .parameter "requestCode"
    .parameter "extraArguments"

    .prologue
    .line 370
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mSubscriptionsViewBinder:Lcom/google/android/finsky/activities/SubscriptionsViewBinder;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->onPositiveClick(ILandroid/os/Bundle;)V

    .line 373
    :cond_0
    return-void
.end method
