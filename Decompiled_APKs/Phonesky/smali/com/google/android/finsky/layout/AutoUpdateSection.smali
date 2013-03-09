.class public Lcom/google/android/finsky/layout/AutoUpdateSection;
.super Landroid/widget/LinearLayout;
.source "AutoUpdateSection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/layout/AutoUpdateSection$AutoUpdateDialog;
    }
.end annotation


# instance fields
.field private mCheckBox:Landroid/widget/CheckBox;

.field private mLabel:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/layout/AutoUpdateSection;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/finsky/layout/AutoUpdateSection;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method


# virtual methods
.method public bind(Ljava/lang/String;Landroid/support/v4/app/Fragment;Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/receivers/Installer;)V
    .locals 10
    .parameter "packageName"
    .parameter "fragment"
    .parameter "libraries"
    .parameter "appStates"
    .parameter "installer"

    .prologue
    const/4 v8, 0x1

    .line 97
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/AutoUpdateSection;->removeAllViews()V

    .line 98
    new-instance v6, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/AutoUpdateSection;->getContext()Landroid/content/Context;

    move-result-object v7

    const v9, 0x7f0e0046

    invoke-direct {v6, v7, v9}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 100
    .local v6, themedWrapper:Landroid/view/ContextThemeWrapper;
    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 101
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v7, 0x7f040008

    invoke-virtual {v3, v7, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 103
    const v7, 0x7f08001a

    invoke-virtual {p0, v7}, Lcom/google/android/finsky/layout/AutoUpdateSection;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    iput-object v7, p0, Lcom/google/android/finsky/layout/AutoUpdateSection;->mCheckBox:Landroid/widget/CheckBox;

    .line 104
    const v7, 0x7f08001b

    invoke-virtual {p0, v7}, Lcom/google/android/finsky/layout/AutoUpdateSection;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/google/android/finsky/layout/AutoUpdateSection;->mLabel:Landroid/widget/TextView;

    .line 106
    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    .line 108
    .local v2, fragmentManager:Landroid/support/v4/app/FragmentManager;
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/google/android/finsky/layout/AutoUpdateSection;->updateVisibility(Ljava/lang/String;Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/receivers/Installer;)V

    .line 109
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/AutoUpdateSection;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_0

    .line 169
    :goto_0
    return-void

    .line 113
    :cond_0
    invoke-virtual {p4, p1}, Lcom/google/android/finsky/appstate/AppStates;->getApp(Ljava/lang/String;)Lcom/google/android/finsky/appstate/AppStates$AppState;

    move-result-object v0

    .line 114
    .local v0, appState:Lcom/google/android/finsky/appstate/AppStates$AppState;
    iget-object v7, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    if-eqz v7, :cond_1

    iget-object v7, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    invoke-virtual {v7}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getAutoUpdate()Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

    move-result-object v1

    .line 117
    .local v1, autoUpdateState:Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;
    :goto_1
    sget-object v7, Lcom/google/android/finsky/utils/VendingPreferences;->AUTO_UPDATE_BY_DEFAULT:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v7}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 118
    .local v5, stickyAutoUpdateState:Z
    sget-object v7, Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;->DEFAULT:Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

    if-ne v1, v7, :cond_2

    .line 120
    move v4, v5

    .line 131
    .local v4, isAutoUpdateEnabled:Z
    :goto_2
    iget-object v7, p0, Lcom/google/android/finsky/layout/AutoUpdateSection;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v7, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 132
    new-instance v7, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/AutoUpdateSection;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-direct {v7, v9}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v9, Lcom/google/android/finsky/layout/AutoUpdateSection$1;

    invoke-direct {v9, p0, v4}, Lcom/google/android/finsky/layout/AutoUpdateSection$1;-><init>(Lcom/google/android/finsky/layout/AutoUpdateSection;Z)V

    invoke-virtual {v7, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 139
    iget-object v7, p0, Lcom/google/android/finsky/layout/AutoUpdateSection;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 140
    iget-object v7, p0, Lcom/google/android/finsky/layout/AutoUpdateSection;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 144
    new-instance v7, Lcom/google/android/finsky/layout/AutoUpdateSection$2;

    invoke-direct {v7, p0, p4, p1, v2}, Lcom/google/android/finsky/layout/AutoUpdateSection$2;-><init>(Lcom/google/android/finsky/layout/AutoUpdateSection;Lcom/google/android/finsky/appstate/AppStates;Ljava/lang/String;Landroid/support/v4/app/FragmentManager;)V

    invoke-virtual {p0, v7}, Lcom/google/android/finsky/layout/AutoUpdateSection;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 114
    .end local v1           #autoUpdateState:Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;
    .end local v4           #isAutoUpdateEnabled:Z
    .end local v5           #stickyAutoUpdateState:Z
    :cond_1
    sget-object v1, Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;->DEFAULT:Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

    goto :goto_1

    .line 123
    .restart local v1       #autoUpdateState:Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;
    .restart local v5       #stickyAutoUpdateState:Z
    :cond_2
    sget-object v7, Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;->ENABLED:Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

    if-ne v1, v7, :cond_3

    move v4, v8

    .restart local v4       #isAutoUpdateEnabled:Z
    :goto_3
    goto :goto_2

    .end local v4           #isAutoUpdateEnabled:Z
    :cond_3
    const/4 v4, 0x0

    goto :goto_3
.end method

.method public updateVisibility(Ljava/lang/String;Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/receivers/Installer;)V
    .locals 6
    .parameter "packageName"
    .parameter "libraries"
    .parameter "appStates"
    .parameter "installer"

    .prologue
    const/4 v3, 0x0

    const/16 v5, 0x8

    .line 50
    if-nez p1, :cond_0

    .line 51
    invoke-virtual {p0, v5}, Lcom/google/android/finsky/layout/AutoUpdateSection;->setVisibility(I)V

    .line 84
    :goto_0
    return-void

    .line 56
    :cond_0
    invoke-virtual {p2, p1}, Lcom/google/android/finsky/library/Libraries;->getAppOwners(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 57
    invoke-virtual {p0, v5}, Lcom/google/android/finsky/layout/AutoUpdateSection;->setVisibility(I)V

    goto :goto_0

    .line 63
    :cond_1
    invoke-virtual {p3, p1}, Lcom/google/android/finsky/appstate/AppStates;->getApp(Ljava/lang/String;)Lcom/google/android/finsky/appstate/AppStates$AppState;

    move-result-object v0

    .line 64
    .local v0, appState:Lcom/google/android/finsky/appstate/AppStates$AppState;
    if-nez v0, :cond_2

    .line 65
    invoke-virtual {p0, v5}, Lcom/google/android/finsky/layout/AutoUpdateSection;->setVisibility(I)V

    goto :goto_0

    .line 70
    :cond_2
    iget-object v4, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    if-eqz v4, :cond_3

    const/4 v2, 0x1

    .line 71
    .local v2, isInstalled:Z
    :goto_1
    invoke-interface {p4, p1}, Lcom/google/android/finsky/receivers/Installer;->getState(Ljava/lang/String;)Lcom/google/android/finsky/receivers/Installer$InstallerState;

    move-result-object v1

    .line 72
    .local v1, installerState:Lcom/google/android/finsky/receivers/Installer$InstallerState;
    if-nez v2, :cond_4

    invoke-virtual {v1}, Lcom/google/android/finsky/receivers/Installer$InstallerState;->isDownloadingOrInstalling()Z

    move-result v4

    if-nez v4, :cond_4

    .line 73
    invoke-virtual {p0, v5}, Lcom/google/android/finsky/layout/AutoUpdateSection;->setVisibility(I)V

    goto :goto_0

    .end local v1           #installerState:Lcom/google/android/finsky/receivers/Installer$InstallerState;
    .end local v2           #isInstalled:Z
    :cond_3
    move v2, v3

    .line 70
    goto :goto_1

    .line 78
    .restart local v1       #installerState:Lcom/google/android/finsky/receivers/Installer$InstallerState;
    .restart local v2       #isInstalled:Z
    :cond_4
    if-eqz v2, :cond_5

    iget-object v4, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    iget-boolean v4, v4, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->isDisabled:Z

    if-eqz v4, :cond_5

    .line 79
    invoke-virtual {p0, v5}, Lcom/google/android/finsky/layout/AutoUpdateSection;->setVisibility(I)V

    goto :goto_0

    .line 83
    :cond_5
    invoke-virtual {p0, v3}, Lcom/google/android/finsky/layout/AutoUpdateSection;->setVisibility(I)V

    goto :goto_0
.end method
