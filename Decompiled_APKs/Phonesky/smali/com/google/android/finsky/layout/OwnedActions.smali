.class public Lcom/google/android/finsky/layout/OwnedActions;
.super Landroid/widget/LinearLayout;
.source "OwnedActions.java"


# instance fields
.field private final mAppStates:Lcom/google/android/finsky/appstate/AppStates;

.field private mAutoUpdateSection:Lcom/google/android/finsky/layout/AutoUpdateSection;

.field private mDocument:Lcom/google/android/finsky/api/model/Document;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mInstaller:Lcom/google/android/finsky/receivers/Installer;

.field private final mLibraries:Lcom/google/android/finsky/library/Libraries;

.field private mRateReviewSection:Lcom/google/android/finsky/layout/RateReviewSection;

.field private mSeparator:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/OwnedActions;->mInflater:Landroid/view/LayoutInflater;

    .line 39
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getInstaller()Lcom/google/android/finsky/receivers/Installer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/OwnedActions;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    .line 40
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/OwnedActions;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    .line 41
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getAppStates()Lcom/google/android/finsky/appstate/AppStates;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/OwnedActions;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    .line 42
    return-void
.end method

.method private configureAutoUpdateSection(Landroid/support/v4/app/Fragment;)V
    .locals 6
    .parameter "fragment"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/finsky/layout/OwnedActions;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040007

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/AutoUpdateSection;

    iput-object v0, p0, Lcom/google/android/finsky/layout/OwnedActions;->mAutoUpdateSection:Lcom/google/android/finsky/layout/AutoUpdateSection;

    .line 95
    iget-object v0, p0, Lcom/google/android/finsky/layout/OwnedActions;->mAutoUpdateSection:Lcom/google/android/finsky/layout/AutoUpdateSection;

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/OwnedActions;->addView(Landroid/view/View;)V

    .line 96
    iget-object v0, p0, Lcom/google/android/finsky/layout/OwnedActions;->mAutoUpdateSection:Lcom/google/android/finsky/layout/AutoUpdateSection;

    invoke-direct {p0}, Lcom/google/android/finsky/layout/OwnedActions;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/finsky/layout/OwnedActions;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    iget-object v4, p0, Lcom/google/android/finsky/layout/OwnedActions;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    iget-object v5, p0, Lcom/google/android/finsky/layout/OwnedActions;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/layout/AutoUpdateSection;->bind(Ljava/lang/String;Landroid/support/v4/app/Fragment;Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/receivers/Installer;)V

    .line 97
    return-void
.end method

.method private configureRateReviewSection(Lcom/google/android/finsky/api/model/DfeDetails;Lcom/google/android/finsky/navigationmanager/NavigationManager;Landroid/support/v4/app/Fragment;Z)V
    .locals 4
    .parameter "detailsData"
    .parameter "navigationManager"
    .parameter "fragment"
    .parameter "isLoaded"

    .prologue
    .line 107
    iget-object v1, p0, Lcom/google/android/finsky/layout/OwnedActions;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0400e5

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/layout/RateReviewSection;

    iput-object v1, p0, Lcom/google/android/finsky/layout/OwnedActions;->mRateReviewSection:Lcom/google/android/finsky/layout/RateReviewSection;

    .line 109
    iget-object v1, p0, Lcom/google/android/finsky/layout/OwnedActions;->mRateReviewSection:Lcom/google/android/finsky/layout/RateReviewSection;

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/OwnedActions;->addView(Landroid/view/View;)V

    .line 111
    const/4 v0, 0x0

    .line 112
    .local v0, review:Lcom/google/android/finsky/remoting/protos/Rev$Review;
    if-eqz p4, :cond_0

    .line 113
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/DfeDetails;->getUserReview()Lcom/google/android/finsky/remoting/protos/Rev$Review;

    move-result-object v0

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/layout/OwnedActions;->mRateReviewSection:Lcom/google/android/finsky/layout/RateReviewSection;

    iget-object v2, p0, Lcom/google/android/finsky/layout/OwnedActions;->mDocument:Lcom/google/android/finsky/api/model/Document;

    iget-object v3, p0, Lcom/google/android/finsky/layout/OwnedActions;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-virtual {v1, v2, v0, p3, v3}, Lcom/google/android/finsky/layout/RateReviewSection;->configure(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/remoting/protos/Rev$Review;Landroid/support/v4/app/Fragment;Lcom/google/android/finsky/library/Libraries;)V

    .line 116
    return-void
.end method

.method private configureSeparator()V
    .locals 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/finsky/layout/OwnedActions;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04004a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/OwnedActions;->mSeparator:Landroid/view/View;

    .line 102
    iget-object v0, p0, Lcom/google/android/finsky/layout/OwnedActions;->mSeparator:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/OwnedActions;->addView(Landroid/view/View;)V

    .line 103
    return-void
.end method

.method private getPackageName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 119
    iget-object v1, p0, Lcom/google/android/finsky/layout/OwnedActions;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v0

    .line 120
    .local v0, appDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private shouldShowAutoUpdateSection()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 88
    iget-object v1, p0, Lcom/google/android/finsky/layout/OwnedActions;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateVisibility()V
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 67
    const/4 v0, 0x0

    .line 69
    .local v0, autoUpdateAdded:Z
    invoke-direct {p0}, Lcom/google/android/finsky/layout/OwnedActions;->shouldShowAutoUpdateSection()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 70
    iget-object v4, p0, Lcom/google/android/finsky/layout/OwnedActions;->mAutoUpdateSection:Lcom/google/android/finsky/layout/AutoUpdateSection;

    invoke-direct {p0}, Lcom/google/android/finsky/layout/OwnedActions;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/finsky/layout/OwnedActions;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    iget-object v7, p0, Lcom/google/android/finsky/layout/OwnedActions;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    iget-object v8, p0, Lcom/google/android/finsky/layout/OwnedActions;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/android/finsky/layout/AutoUpdateSection;->updateVisibility(Ljava/lang/String;Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/receivers/Installer;)V

    .line 73
    iget-object v4, p0, Lcom/google/android/finsky/layout/OwnedActions;->mAutoUpdateSection:Lcom/google/android/finsky/layout/AutoUpdateSection;

    invoke-virtual {v4}, Lcom/google/android/finsky/layout/AutoUpdateSection;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    move v0, v2

    .line 75
    :goto_0
    iget-object v4, p0, Lcom/google/android/finsky/layout/OwnedActions;->mSeparator:Landroid/view/View;

    iget-object v5, p0, Lcom/google/android/finsky/layout/OwnedActions;->mAutoUpdateSection:Lcom/google/android/finsky/layout/AutoUpdateSection;

    invoke-virtual {v5}, Lcom/google/android/finsky/layout/AutoUpdateSection;->getVisibility()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 78
    :cond_0
    iget-object v4, p0, Lcom/google/android/finsky/layout/OwnedActions;->mRateReviewSection:Lcom/google/android/finsky/layout/RateReviewSection;

    iget-object v5, p0, Lcom/google/android/finsky/layout/OwnedActions;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    iget-object v6, p0, Lcom/google/android/finsky/layout/OwnedActions;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v4, v5, v6}, Lcom/google/android/finsky/layout/RateReviewSection;->updateVisibility(Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/api/model/Document;)V

    .line 79
    iget-object v4, p0, Lcom/google/android/finsky/layout/OwnedActions;->mRateReviewSection:Lcom/google/android/finsky/layout/RateReviewSection;

    invoke-virtual {v4}, Lcom/google/android/finsky/layout/RateReviewSection;->getVisibility()I

    move-result v4

    if-nez v4, :cond_3

    move v1, v2

    .line 82
    .local v1, rateReviewAdded:Z
    :goto_1
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 83
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/layout/OwnedActions;->setVisibility(I)V

    .line 85
    :cond_1
    return-void

    .end local v1           #rateReviewAdded:Z
    :cond_2
    move v0, v3

    .line 73
    goto :goto_0

    :cond_3
    move v1, v3

    .line 79
    goto :goto_1
.end method


# virtual methods
.method public setDocument(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeDetails;Lcom/google/android/finsky/navigationmanager/NavigationManager;Landroid/support/v4/app/Fragment;Z)V
    .locals 1
    .parameter "document"
    .parameter "detailsData"
    .parameter "navigationManager"
    .parameter "fragment"
    .parameter "isLoaded"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/google/android/finsky/layout/OwnedActions;->mDocument:Lcom/google/android/finsky/api/model/Document;

    .line 48
    if-eqz p5, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/OwnedActions;->setVisibility(I)V

    .line 49
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/OwnedActions;->removeAllViews()V

    .line 51
    invoke-direct {p0}, Lcom/google/android/finsky/layout/OwnedActions;->shouldShowAutoUpdateSection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-direct {p0, p4}, Lcom/google/android/finsky/layout/OwnedActions;->configureAutoUpdateSection(Landroid/support/v4/app/Fragment;)V

    .line 54
    invoke-direct {p0}, Lcom/google/android/finsky/layout/OwnedActions;->configureSeparator()V

    .line 56
    :cond_0
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/google/android/finsky/layout/OwnedActions;->configureRateReviewSection(Lcom/google/android/finsky/api/model/DfeDetails;Lcom/google/android/finsky/navigationmanager/NavigationManager;Landroid/support/v4/app/Fragment;Z)V

    .line 59
    invoke-direct {p0}, Lcom/google/android/finsky/layout/OwnedActions;->updateVisibility()V

    .line 60
    return-void

    .line 48
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public updateRating(I)V
    .locals 1
    .parameter "newRating"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/finsky/layout/OwnedActions;->mRateReviewSection:Lcom/google/android/finsky/layout/RateReviewSection;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/layout/RateReviewSection;->updateRating(I)V

    .line 64
    return-void
.end method
