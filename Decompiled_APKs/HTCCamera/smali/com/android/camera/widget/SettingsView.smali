.class public Lcom/android/camera/widget/SettingsView;
.super Landroid/widget/FrameLayout;
.source "SettingsView.java"

# interfaces
.implements Lcom/android/camera/widget/IPopupMenuView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;,
        Lcom/android/camera/widget/SettingsView$OnSubMenuOpenedListener;,
        Lcom/android/camera/widget/SettingsView$OnPreferenceUpdatedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SettingsView"


# instance fields
.field private mCameraThread:Lcom/android/camera/CameraThread;

.field private mCollapse:I

.field private mCustomView:Landroid/view/View;

.field private mExpand:I

.field private mImagePropertyItem:[Lcom/android/camera/widget/ImagePropertyItem;

.field mInflater:Landroid/view/LayoutInflater;

.field private mIsVisible:Z

.field private mMainAdapter_exp:Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;

.field private mMainList_exp:Landroid/widget/ExpandableListView;

.field private mMainMenu:Landroid/widget/LinearLayout;

.field private mMenuHandler:Lcom/android/camera/MenuHandler;

.field private mPreferenceListener:Lcom/android/camera/widget/SettingsView$OnPreferenceUpdatedListener;

.field private mSubList:Landroid/widget/ListView;

.field private mSubMenu:Landroid/widget/LinearLayout;

.field private mSubMenuListener:Lcom/android/camera/widget/SettingsView$OnSubMenuOpenedListener;

.field private mSubPanel:Lcom/android/camera/widget/SlidingDrawer;

.field private m_Context:Landroid/content/Context;

.field private m_EventManager:Lcom/android/camera/EventManager;

.field private m_ImagePropertyItemHeight:I

.field private m_MenuChildHeight:I

.field private final m_MenuCloseEventHandler:Lcom/android/camera/IEventHandler;

.field private m_MenuItemHeight:I

.field private m_MenuParentHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/MenuHandler;Landroid/preference/PreferenceScreen;Lcom/android/camera/widget/SlidingDrawer;Lcom/android/camera/CameraThread;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/camera/widget/SettingsView$1;

    invoke-direct {v0, p0}, Lcom/android/camera/widget/SettingsView$1;-><init>(Lcom/android/camera/widget/SettingsView;)V

    iput-object v0, p0, Lcom/android/camera/widget/SettingsView;->m_MenuCloseEventHandler:Lcom/android/camera/IEventHandler;

    iput-boolean v1, p0, Lcom/android/camera/widget/SettingsView;->mIsVisible:Z

    iput-object v2, p0, Lcom/android/camera/widget/SettingsView;->mInflater:Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/android/camera/widget/SettingsView;->mCameraThread:Lcom/android/camera/CameraThread;

    iput v1, p0, Lcom/android/camera/widget/SettingsView;->m_MenuParentHeight:I

    iput v1, p0, Lcom/android/camera/widget/SettingsView;->m_MenuChildHeight:I

    iput v1, p0, Lcom/android/camera/widget/SettingsView;->m_MenuItemHeight:I

    iput v1, p0, Lcom/android/camera/widget/SettingsView;->m_ImagePropertyItemHeight:I

    const v0, 0x20801a4

    iput v0, p0, Lcom/android/camera/widget/SettingsView;->mExpand:I

    const v0, 0x2080024

    iput v0, p0, Lcom/android/camera/widget/SettingsView;->mCollapse:I

    iput-object p1, p0, Lcom/android/camera/widget/SettingsView;->m_Context:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/camera/widget/SettingsView;->mInflater:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/android/camera/widget/SettingsView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030047

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    iput-object p2, p0, Lcom/android/camera/widget/SettingsView;->mMenuHandler:Lcom/android/camera/MenuHandler;

    iput-object p5, p0, Lcom/android/camera/widget/SettingsView;->mCameraThread:Lcom/android/camera/CameraThread;

    const v0, 0x7f0800e9

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/SettingsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/widget/SettingsView;->mMainMenu:Landroid/widget/LinearLayout;

    const v0, 0x7f080196

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/SettingsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/android/camera/widget/SettingsView;->mMainList_exp:Landroid/widget/ExpandableListView;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/camera/widget/ImagePropertyItem;

    iput-object v0, p0, Lcom/android/camera/widget/SettingsView;->mImagePropertyItem:[Lcom/android/camera/widget/ImagePropertyItem;

    check-cast p1, Lcom/android/camera/HTCCamera;

    invoke-virtual {p1}, Lcom/android/camera/HTCCamera;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/widget/SettingsView;->m_EventManager:Lcom/android/camera/EventManager;

    iget-object v0, p0, Lcom/android/camera/widget/SettingsView;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v1, "Menu.Closed"

    iget-object v2, p0, Lcom/android/camera/widget/SettingsView;->m_MenuCloseEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    iget-object v0, p0, Lcom/android/camera/widget/SettingsView;->m_Context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00ec

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/widget/SettingsView;->m_MenuItemHeight:I

    iget-object v0, p0, Lcom/android/camera/widget/SettingsView;->m_Context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/widget/SettingsView;->m_ImagePropertyItemHeight:I

    iget-object v0, p0, Lcom/android/camera/widget/SettingsView;->mMainMenu:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setDrawingCacheEnabled(Z)V

    invoke-direct {p0, p3}, Lcom/android/camera/widget/SettingsView;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/widget/SettingsView;)Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/widget/SettingsView;->mMainAdapter_exp:Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/widget/SettingsView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/widget/SettingsView;->m_Context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/widget/SettingsView;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/widget/SettingsView;->mExpand:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/camera/widget/SettingsView;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/widget/SettingsView;->mCollapse:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/camera/widget/SettingsView;)Lcom/android/camera/MenuHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/widget/SettingsView;->mMenuHandler:Lcom/android/camera/MenuHandler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/camera/widget/SettingsView;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/widget/SettingsView;->setEnabledStateOnViews(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/camera/widget/SettingsView;Landroid/preference/Preference;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/widget/SettingsView;->updateCheckBoxPreference(Landroid/preference/Preference;Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/camera/widget/SettingsView;Landroid/preference/Preference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/widget/SettingsView;->updatePreference(Landroid/preference/Preference;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/camera/widget/SettingsView;)Lcom/android/camera/EventManager;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/widget/SettingsView;->m_EventManager:Lcom/android/camera/EventManager;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/camera/widget/SettingsView;Landroid/preference/Preference;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/widget/SettingsView;->updateListPreference(Landroid/preference/Preference;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/widget/SettingsView;)Landroid/widget/ExpandableListView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/widget/SettingsView;->mMainList_exp:Landroid/widget/ExpandableListView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/widget/SettingsView;Landroid/view/View;ILandroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/widget/SettingsView;->inflateIfNeed(Landroid/view/View;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/widget/SettingsView;)[Lcom/android/camera/widget/ImagePropertyItem;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/widget/SettingsView;->mImagePropertyItem:[Lcom/android/camera/widget/ImagePropertyItem;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/widget/SettingsView;)Lcom/android/camera/CameraThread;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/widget/SettingsView;->mCameraThread:Lcom/android/camera/CameraThread;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/camera/widget/SettingsView;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/widget/SettingsView;->m_MenuChildHeight:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/camera/widget/SettingsView;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/widget/SettingsView;->m_MenuItemHeight:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/camera/widget/SettingsView;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/widget/SettingsView;->m_ImagePropertyItemHeight:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/camera/widget/SettingsView;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/widget/SettingsView;->m_MenuParentHeight:I

    return p1
.end method

.method private addPreference(Landroid/preference/Preference;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/Preference;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/Preference;",
            ">;)V"
        }
    .end annotation

    instance-of v5, p1, Landroid/preference/PreferenceGroup;

    if-eqz v5, :cond_0

    move-object v1, p1

    check-cast v1, Landroid/preference/PreferenceGroup;

    const/4 v2, 0x0

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_1

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/camera/widget/SettingsView;->addPreference(Landroid/preference/Preference;Ljava/util/ArrayList;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "pref_camera_scene"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "pref_video_scene"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "pref_fast_fps"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string v5, "pref_set_resolution"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/camera/widget/SettingsView;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v5}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    :cond_3
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private inflateIfNeed(Landroid/view/View;ILandroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 1

    if-eqz p1, :cond_0

    :goto_0
    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/widget/SettingsView;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, p2, p3, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0
.end method

.method private setEnabledStateOnViews(Landroid/view/View;Z)V
    .locals 3

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/android/camera/widget/SettingsView;->setEnabledStateOnViews(Landroid/view/View;Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setPreferenceScreen(Landroid/preference/PreferenceScreen;)V
    .locals 6

    const/4 v5, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/android/camera/widget/SettingsView;->addPreference(Landroid/preference/Preference;Ljava/util/ArrayList;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;

    iget-object v4, p0, Lcom/android/camera/widget/SettingsView;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4, v1}, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;-><init>(Lcom/android/camera/widget/SettingsView;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v3, p0, Lcom/android/camera/widget/SettingsView;->mMainAdapter_exp:Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;

    iget-object v3, p0, Lcom/android/camera/widget/SettingsView;->mMainList_exp:Landroid/widget/ExpandableListView;

    iget-object v4, p0, Lcom/android/camera/widget/SettingsView;->mMainAdapter_exp:Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    iget-object v3, p0, Lcom/android/camera/widget/SettingsView;->mMainList_exp:Landroid/widget/ExpandableListView;

    iget-object v4, p0, Lcom/android/camera/widget/SettingsView;->mMainAdapter_exp:Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    iget-object v3, p0, Lcom/android/camera/widget/SettingsView;->mMainList_exp:Landroid/widget/ExpandableListView;

    iget-object v4, p0, Lcom/android/camera/widget/SettingsView;->mMainAdapter_exp:Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    iget-object v3, p0, Lcom/android/camera/widget/SettingsView;->mMainList_exp:Landroid/widget/ExpandableListView;

    invoke-virtual {v3, v5, v5}, Landroid/widget/ExpandableListView;->setIndicatorBounds(II)V

    iget-object v3, p0, Lcom/android/camera/widget/SettingsView;->mMainList_exp:Landroid/widget/ExpandableListView;

    new-instance v4, Lcom/android/camera/widget/SettingsView$2;

    invoke-direct {v4, p0}, Lcom/android/camera/widget/SettingsView$2;-><init>(Lcom/android/camera/widget/SettingsView;)V

    invoke-virtual {v3, v4}, Landroid/widget/ExpandableListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private setSubPanelVisible(Z)V
    .locals 0

    return-void
.end method

.method private showSubMenu()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/widget/SettingsView;->mSubPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/android/camera/widget/SlidingDrawer;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/SettingsView;->mSubPanel:Lcom/android/camera/widget/SlidingDrawer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/SlidingDrawer;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/widget/SettingsView;->mSubPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/android/camera/widget/SlidingDrawer;->animateOpen()V

    :cond_0
    return-void
.end method

.method private updateCheckBoxPreference(Landroid/preference/Preference;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/widget/SettingsView;->mPreferenceListener:Lcom/android/camera/widget/SettingsView$OnPreferenceUpdatedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/SettingsView;->mPreferenceListener:Lcom/android/camera/widget/SettingsView$OnPreferenceUpdatedListener;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/widget/SettingsView$OnPreferenceUpdatedListener;->onCheckBoxPreferenceUpdated(Landroid/preference/Preference;Z)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "SettingsView"

    const-string v1, "updateCheckBoxPreference - mPreferenceListener = null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateListPreference(Landroid/preference/Preference;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/widget/SettingsView;->mPreferenceListener:Lcom/android/camera/widget/SettingsView$OnPreferenceUpdatedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/SettingsView;->mPreferenceListener:Lcom/android/camera/widget/SettingsView$OnPreferenceUpdatedListener;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/widget/SettingsView$OnPreferenceUpdatedListener;->onListPreferenceUpdated(Landroid/preference/Preference;I)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "SettingsView"

    const-string v1, "updateListPreference - mPreferenceListener = null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updatePreference(Landroid/preference/Preference;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/widget/SettingsView;->mPreferenceListener:Lcom/android/camera/widget/SettingsView$OnPreferenceUpdatedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/SettingsView;->mPreferenceListener:Lcom/android/camera/widget/SettingsView$OnPreferenceUpdatedListener;

    invoke-interface {v0, p1}, Lcom/android/camera/widget/SettingsView$OnPreferenceUpdatedListener;->onPreferenceUpdated(Landroid/preference/Preference;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "SettingsView"

    const-string v1, "updateCheckBoxPreference - mPreferenceListener = null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public closeSubMenu(Z)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getListView()Landroid/widget/ExpandableListView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/widget/SettingsView;->mMainList_exp:Landroid/widget/ExpandableListView;

    return-object v0
.end method

.method public getViewHeight()I
    .locals 2

    iget v0, p0, Lcom/android/camera/widget/SettingsView;->m_MenuParentHeight:I

    iget v1, p0, Lcom/android/camera/widget/SettingsView;->m_MenuChildHeight:I

    add-int/2addr v0, v1

    return v0
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/widget/SettingsView;->mIsVisible:Z

    return v0
.end method

.method public notifyMainLayoutChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/widget/SettingsView;->mMainAdapter_exp:Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/SettingsView;->mMainAdapter_exp:Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;

    invoke-virtual {v0}, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public releaseOnScreenSettings()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/widget/SettingsView;->mMainMenu:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/widget/SettingsView;->mSubPanel:Lcom/android/camera/widget/SlidingDrawer;

    iput-object v0, p0, Lcom/android/camera/widget/SettingsView;->mSubMenu:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/widget/SettingsView;->mSubList:Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/camera/widget/SettingsView;->mCustomView:Landroid/view/View;

    iput-object v0, p0, Lcom/android/camera/widget/SettingsView;->mPreferenceListener:Lcom/android/camera/widget/SettingsView$OnPreferenceUpdatedListener;

    iput-object v0, p0, Lcom/android/camera/widget/SettingsView;->mSubMenuListener:Lcom/android/camera/widget/SettingsView$OnSubMenuOpenedListener;

    iput-object v0, p0, Lcom/android/camera/widget/SettingsView;->mMenuHandler:Lcom/android/camera/MenuHandler;

    iput-object v0, p0, Lcom/android/camera/widget/SettingsView;->mInflater:Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/camera/widget/SettingsView;->mMainList_exp:Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/android/camera/widget/SettingsView;->mMainAdapter_exp:Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;

    return-void
.end method

.method public setOnPreferenceUpdatedListener(Lcom/android/camera/widget/SettingsView$OnPreferenceUpdatedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/widget/SettingsView;->mPreferenceListener:Lcom/android/camera/widget/SettingsView$OnPreferenceUpdatedListener;

    return-void
.end method

.method public setOnSubMenuOpenedListenerListener(Lcom/android/camera/widget/SettingsView$OnSubMenuOpenedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/widget/SettingsView;->mSubMenuListener:Lcom/android/camera/widget/SettingsView$OnSubMenuOpenedListener;

    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/widget/SettingsView;->mIsVisible:Z

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/android/camera/widget/SettingsView;->mIsVisible:Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/SettingsView;->mMainAdapter_exp:Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/SettingsView;->mMainAdapter_exp:Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;

    invoke-virtual {v0}, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/android/camera/widget/SettingsView;->mMainList_exp:Landroid/widget/ExpandableListView;

    invoke-virtual {v0}, Landroid/widget/ExpandableListView;->setSelectionAfterHeaderView()V

    goto :goto_0
.end method

.method public updatePreferenceScreen(Landroid/preference/PreferenceScreen;)V
    .locals 5

    iget-object v3, p0, Lcom/android/camera/widget/SettingsView;->mMainAdapter_exp:Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;

    if-nez v3, :cond_0

    const-string v3, "SettingsView"

    const-string v4, "updatePreferenceScreen failed, mMainAdapter = null"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/camera/widget/SettingsView;->mMainMenu:Landroid/widget/LinearLayout;

    if-nez v3, :cond_1

    const-string v3, "SettingsView"

    const-string v4, "updatePreferenceScreen failed, mMainMenu = null"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    :goto_1
    if-ge v0, v2, :cond_2

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/android/camera/widget/SettingsView;->addPreference(Landroid/preference/Preference;Ljava/util/ArrayList;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/android/camera/widget/SettingsView;->mMainAdapter_exp:Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;

    invoke-virtual {v3, v1}, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->updateAdapter(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public updateSubMenuWidth(I)V
    .locals 2

    iget-object v1, p0, Lcom/android/camera/widget/SettingsView;->mSubMenu:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/widget/SettingsView;->mSubMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/android/camera/widget/SettingsView;->mSubMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
