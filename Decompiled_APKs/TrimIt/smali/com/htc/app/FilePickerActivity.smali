.class public abstract Lcom/htc/app/FilePickerActivity;
.super Landroid/app/Activity;
.source "FilePickerActivity.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/app/FilePickerActivity$LaunchIMEReceiver;
    }
.end annotation


# static fields
.field private static final DEFAULT_SORT_ORDER:I = 0x0

.field private static final DEFAULT_SORT_TYPE:I = 0x0

.field private static final DEFAULT_VIEW_TYPE:I = 0x0

.field public static final DRM_AUDIO:Ljava/lang/String; = "drm_audio"

.field public static final DRM_IMAGE:Ljava/lang/String; = "drm_image"

.field public static final DRM_VIDEO:Ljava/lang/String; = "drm_video"

.field public static EMPTY_FOLDER:Ljava/lang/String; = null

.field static final FLAT_MODE_OF_FOLDER_VIEW:I = 0x1

.field private static final FOLDER_LIST_SWITCH:I = 0x5

.field static final FOLDER_MODE_OF_FOLDER_VIEW:I = 0x0

.field public static final FOLDER_VIEW_TYPE:I = 0x2

.field public static final GRID_VIEW_TYPE:I = 0x1

.field private static final INIT_TAG:Ljava/lang/String; = "initial"

.field public static final KEY_APP_NAME:Ljava/lang/String; = "application_name"

.field public static final KEY_DRM_FILTER:Ljava/lang/String; = "drm_filter"

.field public static final KEY_FILTER:Ljava/lang/String; = "filter"

.field public static final KEY_FOLDER_FILE_SWITCH_MENU_ITEM:Ljava/lang/String; = "enabledFolderFileSwitchMenuItem"

.field public static final KEY_GROUP_BY_PATH:Ljava/lang/String; = "showPath"

.field public static final KEY_MODE_TYPE_OF_FOLDER_VIEW:Ljava/lang/String; = "ModeTypeOfFolderView"

.field public static final KEY_NO_FILE_FOUND_TEXT:Ljava/lang/String; = "no_file_found_text"

.field public static final KEY_ORIENTATION:Ljava/lang/String; = "orientation"

.field public static final KEY_REMOVE_FILE_MODE:Ljava/lang/String; = "remove_file_mode"

.field public static final KEY_ROOT_PATH:Ljava/lang/String; = "root_path"

.field public static final KEY_SEARCH_HINT_TEXT:Ljava/lang/String; = "hint_search_text"

.field public static final KEY_SELECTION_TYPE:Ljava/lang/String; = "selectionType"

.field public static final KEY_SORT_ORDER:Ljava/lang/String; = "sort_order"

.field public static final KEY_SORT_TYPE:Ljava/lang/String; = "sort_type"

.field public static final KEY_TITLE:Ljava/lang/String; = "title"

.field public static final KEY_VIEW_TYPE:Ljava/lang/String; = "viewType"

.field public static final KEY_VIEW_TYPE_USER_PREFER:Ljava/lang/String; = "pref_key_filepicker_view_type"

.field static final LIST_MODE_OF_FOLDER_VIEW:I = 0x2

.field public static final LIST_VIEW_TYPE:I = 0x0

.field public static LOADING:Ljava/lang/String; = null

.field public static final MULTIPLE_SELECTION:I = 0x1

.field private static final NON_USER_PREFERENCES:I = -0x1

.field private static final SEARCH_ID:I = 0x2

.field private static final SELECT_ALL_ID:I = 0x3

.field public static final SINGLE_SELECTION:I = 0x0

.field static final SORT_BY_DATE:I = 0x1

.field static final SORT_BY_NAME:I = 0x0

.field private static final SORT_ID:I = 0x1

.field static final SORT_ORDER_ASCENDING:I = 0x0

.field static final SORT_ORDER_DESCENDING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "FilePickerActivity"

.field private static final UNSELECT_ALL_ID:I = 0x4

.field private static final initLog:Z = false

.field private static isFolderFileMenuItemEnabled:Z = false

.field private static final localLOGV:Z = false

.field private static final mFilePickerLayout_MainView:I = 0x209003f

.field private static final mFilePickerLayout_ViewHeader:I = 0x209003e


# instance fields
.field private handler:Landroid/os/Handler;

.field private isEnableOptionMenu:Z

.field private isMultiPath:Z

.field private isRemoveMode:Z

.field private isSDCard:Z

.field private isSdcardRoot:Z

.field private mActivityCreated:Z

.field mActivityStarted:Z

.field private mAdapter:Lcom/htc/app/FilePickerListAdapter;

.field private mBottomBar:Landroid/view/View;

.field private mCurrentViewType:I

.field private mDataSetChangedListener:Lcom/htc/app/FilePickerListAdapter$onDataSetChangedListener;

.field private mEditor:Landroid/widget/EditText;

.field private mEmptyView:Landroid/widget/TextView;

.field private mFileListHeader:Landroid/view/View;

.field private mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

.field private mFileSorter:Lcom/htc/app/FileSorter;

.field private mFilter:[Ljava/lang/String;

.field private mGroupMode:Z

.field private mHandler:Landroid/os/Handler;

.field private mHeaderBar:Lcom/htc/widget/HeaderBarMiddle;

.field private mHtcContext:Landroid/content/Context;

.field private mInitialTime:J

.field private mInputManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIsShowDialog:Z

.field private mIsShowSearchBar:Z

.field private mIsStopScan:Z

.field private mItemCountTextPrefix:Landroid/widget/TextView;

.field private mItemCountTextSubfix:Landroid/widget/TextView;

.field private mItemList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/app/FolderItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLaunchIMEReceiver:Lcom/htc/app/FilePickerActivity$LaunchIMEReceiver;

.field private mListView:Lcom/htc/app/FilePickerListView;

.field private mMenu:Landroid/view/Menu;

.field private mModeTypeOfFolderView:I

.field private mMoreExListView:Lcom/htc/widget/MoreExpandableHtcListView;

.field mNeedLoadFiles:Z

.field private mNeedLoadFolders:Z

.field private mNoFileFoundText:Ljava/lang/String;

.field private mOnChildClickListener:Lcom/htc/widget/MoreExpandableHtcListView$OnChildClickListener;

.field private mOnGroupCollapseListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupCollapseListener;

.field private mOnGroupExpandListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupExpandListener;

.field private mOrientation:I

.field private mRootPath:Ljava/lang/String;

.field private mSdcardListener:Landroid/content/BroadcastReceiver;

.field private mSdcardWarningMessage:Landroid/widget/TextView;

.field private mSearchBar:Lcom/htc/widget/SearchBoxView;

.field mSelectedFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectionType:I

.field private mSortOrder:I

.field private mSortSelectedItem:I

.field private mSortType:I

.field private mTitleBar:Landroid/widget/RelativeLayout;

.field private moreExAdapter:Lcom/htc/app/FilePickerFolderAdapter;

.field private noSdcardView:Landroid/widget/LinearLayout;

.field private onTouchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/app/FilePickerActivity;->isFolderFileMenuItemEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 77
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 112
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/app/FilePickerActivity;->handler:Landroid/os/Handler;

    .line 114
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/app/FilePickerActivity;->mNoFileFoundText:Ljava/lang/String;

    .line 121
    iput-boolean v1, p0, Lcom/htc/app/FilePickerActivity;->isSdcardRoot:Z

    .line 122
    iput-boolean v2, p0, Lcom/htc/app/FilePickerActivity;->isMultiPath:Z

    .line 123
    iput-boolean v2, p0, Lcom/htc/app/FilePickerActivity;->isRemoveMode:Z

    .line 127
    iput-boolean v2, p0, Lcom/htc/app/FilePickerActivity;->mActivityCreated:Z

    .line 134
    iput-boolean v2, p0, Lcom/htc/app/FilePickerActivity;->mActivityStarted:Z

    .line 135
    iput-boolean v1, p0, Lcom/htc/app/FilePickerActivity;->mNeedLoadFiles:Z

    .line 137
    iput-boolean v2, p0, Lcom/htc/app/FilePickerActivity;->isEnableOptionMenu:Z

    .line 141
    iput v2, p0, Lcom/htc/app/FilePickerActivity;->mSortSelectedItem:I

    .line 144
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/app/FilePickerActivity;->mInitialTime:J

    .line 151
    iput-object v3, p0, Lcom/htc/app/FilePickerActivity;->mHeaderBar:Lcom/htc/widget/HeaderBarMiddle;

    .line 156
    iput-object v3, p0, Lcom/htc/app/FilePickerActivity;->mMoreExListView:Lcom/htc/widget/MoreExpandableHtcListView;

    .line 157
    iput-object v3, p0, Lcom/htc/app/FilePickerActivity;->mItemList:Ljava/util/LinkedList;

    .line 158
    iput-object v3, p0, Lcom/htc/app/FilePickerActivity;->moreExAdapter:Lcom/htc/app/FilePickerFolderAdapter;

    .line 159
    iput-object v3, p0, Lcom/htc/app/FilePickerActivity;->mFilter:[Ljava/lang/String;

    .line 185
    new-instance v0, Lcom/htc/app/FilePickerActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/app/FilePickerActivity$1;-><init>(Lcom/htc/app/FilePickerActivity;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerActivity;->onTouchListener:Landroid/view/View$OnTouchListener;

    .line 195
    new-instance v0, Lcom/htc/app/FilePickerActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/app/FilePickerActivity$2;-><init>(Lcom/htc/app/FilePickerActivity;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerActivity;->mOnGroupExpandListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupExpandListener;

    .line 207
    new-instance v0, Lcom/htc/app/FilePickerActivity$3;

    invoke-direct {v0, p0}, Lcom/htc/app/FilePickerActivity$3;-><init>(Lcom/htc/app/FilePickerActivity;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerActivity;->mOnGroupCollapseListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupCollapseListener;

    .line 216
    new-instance v0, Lcom/htc/app/FilePickerActivity$4;

    invoke-direct {v0, p0}, Lcom/htc/app/FilePickerActivity$4;-><init>(Lcom/htc/app/FilePickerActivity;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerActivity;->mOnChildClickListener:Lcom/htc/widget/MoreExpandableHtcListView$OnChildClickListener;

    .line 1031
    new-instance v0, Lcom/htc/app/FilePickerActivity$10;

    invoke-direct {v0, p0}, Lcom/htc/app/FilePickerActivity$10;-><init>(Lcom/htc/app/FilePickerActivity;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerActivity;->mSdcardListener:Landroid/content/BroadcastReceiver;

    .line 1119
    iput-boolean v2, p0, Lcom/htc/app/FilePickerActivity;->mNeedLoadFolders:Z

    .line 1361
    iput-boolean v2, p0, Lcom/htc/app/FilePickerActivity;->mIsStopScan:Z

    .line 1362
    new-instance v0, Lcom/htc/app/FilePickerActivity$11;

    invoke-direct {v0, p0}, Lcom/htc/app/FilePickerActivity$11;-><init>(Lcom/htc/app/FilePickerActivity;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerActivity;->mDataSetChangedListener:Lcom/htc/app/FilePickerListAdapter$onDataSetChangedListener;

    .line 1477
    iput-boolean v2, p0, Lcom/htc/app/FilePickerActivity;->mIsShowDialog:Z

    .line 1834
    iput-boolean v2, p0, Lcom/htc/app/FilePickerActivity;->mIsShowSearchBar:Z

    return-void
.end method

.method private ListViewOnStart()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 974
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    .line 977
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mHeaderBar:Lcom/htc/widget/HeaderBarMiddle;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarMiddle;->setFocusable(Z)V

    .line 978
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mHeaderBar:Lcom/htc/widget/HeaderBarMiddle;

    invoke-virtual {v0}, Lcom/htc/widget/HeaderBarMiddle;->requestFocus()Z

    .line 981
    iget-boolean v0, p0, Lcom/htc/app/FilePickerActivity;->mActivityCreated:Z

    if-eqz v0, :cond_1

    .line 982
    iput-boolean v1, p0, Lcom/htc/app/FilePickerActivity;->mActivityStarted:Z

    .line 987
    iget v0, p0, Lcom/htc/app/FilePickerActivity;->mCurrentViewType:I

    if-nez v0, :cond_0

    .line 988
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v0}, Lcom/htc/app/FilePickerListAdapter;->notifyDataSetInvalidated()V

    .line 989
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v0, v2}, Lcom/htc/app/FilePickerListAdapter;->setScanThreadMinPriority(Z)V

    .line 994
    :cond_0
    iget-boolean v0, p0, Lcom/htc/app/FilePickerActivity;->mNeedLoadFiles:Z

    if-eqz v0, :cond_1

    .line 995
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mListView:Lcom/htc/app/FilePickerListView;

    new-instance v1, Lcom/htc/app/FilePickerActivity$9;

    invoke-direct {v1, p0}, Lcom/htc/app/FilePickerActivity$9;-><init>(Lcom/htc/app/FilePickerActivity;)V

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerListView;->post(Ljava/lang/Runnable;)Z

    .line 1009
    :cond_1
    invoke-virtual {p0}, Lcom/htc/app/FilePickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    .line 1011
    iget v0, p0, Lcom/htc/app/FilePickerActivity;->mOrientation:I

    invoke-virtual {p0, v0}, Lcom/htc/app/FilePickerActivity;->setRequestedOrientation(I)V

    .line 1015
    :goto_0
    return-void

    .line 1013
    :cond_2
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/htc/app/FilePickerActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/htc/app/FilePickerActivity;)Lcom/htc/app/FilePickerFolderAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->moreExAdapter:Lcom/htc/app/FilePickerFolderAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/app/FilePickerActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Lcom/htc/app/FilePickerActivity;->mSelectionType:I

    return v0
.end method

.method static synthetic access$1000(Lcom/htc/app/FilePickerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/htc/app/FilePickerActivity;->loadFiles()V

    return-void
.end method

.method static synthetic access$1100(Lcom/htc/app/FilePickerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/htc/app/FilePickerActivity;->hideNoSdCard()V

    return-void
.end method

.method static synthetic access$1202(Lcom/htc/app/FilePickerActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/htc/app/FilePickerActivity;->isSDCard:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/htc/app/FilePickerActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Lcom/htc/app/FilePickerActivity;->mCurrentViewType:I

    return v0
.end method

.method static synthetic access$1402(Lcom/htc/app/FilePickerActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/htc/app/FilePickerActivity;->mNeedLoadFolders:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/htc/app/FilePickerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/htc/app/FilePickerActivity;->loadFolders()V

    return-void
.end method

.method static synthetic access$1600(Lcom/htc/app/FilePickerActivity;)Landroid/view/Menu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mMenu:Landroid/view/Menu;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/app/FilePickerActivity;Landroid/view/Menu;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerActivity;->initOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/htc/app/FilePickerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/htc/app/FilePickerActivity;->hideSearchBar()V

    return-void
.end method

.method static synthetic access$1900(Lcom/htc/app/FilePickerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/htc/app/FilePickerActivity;->hideDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/app/FilePickerActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Lcom/htc/app/FilePickerActivity;->mSortType:I

    return v0
.end method

.method static synthetic access$2000(Lcom/htc/app/FilePickerActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/htc/app/FilePickerActivity;->isMultiPath:Z

    return v0
.end method

.method static synthetic access$202(Lcom/htc/app/FilePickerActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput p1, p0, Lcom/htc/app/FilePickerActivity;->mSortType:I

    return p1
.end method

.method static synthetic access$2100(Lcom/htc/app/FilePickerActivity;)Lcom/htc/app/FilePickerListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/app/FilePickerActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mEmptyView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/htc/app/FilePickerActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/htc/app/FilePickerActivity;->isSdcardRoot:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/htc/app/FilePickerActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mHtcContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/htc/app/FilePickerActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerActivity;->showNoSdCard(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/htc/app/FilePickerActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mItemCountTextPrefix:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/htc/app/FilePickerActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mItemCountTextSubfix:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/htc/app/FilePickerActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/htc/app/FilePickerActivity;->mIsStopScan:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/htc/app/FilePickerActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/htc/app/FilePickerActivity;->mIsStopScan:Z

    return p1
.end method

.method static synthetic access$2902(Lcom/htc/app/FilePickerActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/htc/app/FilePickerActivity;->isEnableOptionMenu:Z

    return p1
.end method

.method static synthetic access$300(Lcom/htc/app/FilePickerActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Lcom/htc/app/FilePickerActivity;->mSortOrder:I

    return v0
.end method

.method static synthetic access$3000(Lcom/htc/app/FilePickerActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerActivity;->hideView(I)V

    return-void
.end method

.method static synthetic access$302(Lcom/htc/app/FilePickerActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput p1, p0, Lcom/htc/app/FilePickerActivity;->mSortOrder:I

    return p1
.end method

.method static synthetic access$3100(Lcom/htc/app/FilePickerActivity;)Lcom/htc/app/FilePickerListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mListView:Lcom/htc/app/FilePickerListView;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/htc/app/FilePickerActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mBottomBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/htc/app/FilePickerActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mNoFileFoundText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/htc/app/FilePickerActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mFileListHeader:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/htc/app/FilePickerActivity;)Lcom/htc/app/FileSorter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mFileSorter:Lcom/htc/app/FileSorter;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/htc/app/FilePickerActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/htc/app/FilePickerActivity;->mIsShowDialog:Z

    return p1
.end method

.method static synthetic access$3702(Lcom/htc/app/FilePickerActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput p1, p0, Lcom/htc/app/FilePickerActivity;->mSortSelectedItem:I

    return p1
.end method

.method static synthetic access$3900(Lcom/htc/app/FilePickerActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/app/FilePickerActivity;)Lcom/htc/app/FilePickerUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/app/FilePickerActivity;)Lcom/htc/widget/HeaderBarMiddle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mHeaderBar:Lcom/htc/widget/HeaderBarMiddle;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/app/FilePickerActivity;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$602(Lcom/htc/app/FilePickerActivity;Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/htc/app/FilePickerActivity;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    return-object p1
.end method

.method static synthetic access$700(Lcom/htc/app/FilePickerActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mEditor:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/app/FilePickerActivity;)Lcom/htc/app/FilePickerActivity$LaunchIMEReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mLaunchIMEReceiver:Lcom/htc/app/FilePickerActivity$LaunchIMEReceiver;

    return-object v0
.end method

.method static synthetic access$802(Lcom/htc/app/FilePickerActivity;Lcom/htc/app/FilePickerActivity$LaunchIMEReceiver;)Lcom/htc/app/FilePickerActivity$LaunchIMEReceiver;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/htc/app/FilePickerActivity;->mLaunchIMEReceiver:Lcom/htc/app/FilePickerActivity$LaunchIMEReceiver;

    return-object p1
.end method

.method static synthetic access$900(Lcom/htc/app/FilePickerActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private changeCurrentView(I)V
    .locals 7
    .parameter "changeToView"

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 294
    iget v1, p0, Lcom/htc/app/FilePickerActivity;->mCurrentViewType:I

    if-nez v1, :cond_0

    .line 295
    invoke-direct {p0, v3}, Lcom/htc/app/FilePickerActivity;->hideView(I)V

    .line 296
    :cond_0
    iget v1, p0, Lcom/htc/app/FilePickerActivity;->mCurrentViewType:I

    if-ne v1, v2, :cond_1

    .line 297
    invoke-direct {p0, v2}, Lcom/htc/app/FilePickerActivity;->hideView(I)V

    .line 299
    :cond_1
    iget v1, p0, Lcom/htc/app/FilePickerActivity;->mCurrentViewType:I

    if-eq v1, p1, :cond_2

    .line 301
    iput p1, p0, Lcom/htc/app/FilePickerActivity;->mCurrentViewType:I

    .line 302
    iget-object v1, p0, Lcom/htc/app/FilePickerActivity;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v1, p1}, Lcom/htc/app/FilePickerUtil;->setMCurrentViewType(I)V

    .line 303
    invoke-direct {p0}, Lcom/htc/app/FilePickerActivity;->hideSearchBar()V

    .line 305
    :cond_2
    iget v1, p0, Lcom/htc/app/FilePickerActivity;->mCurrentViewType:I

    if-ne v1, v2, :cond_3

    .line 306
    invoke-direct {p0}, Lcom/htc/app/FilePickerActivity;->loadFolders()V

    .line 308
    :cond_3
    iget v1, p0, Lcom/htc/app/FilePickerActivity;->mCurrentViewType:I

    invoke-direct {p0, v1}, Lcom/htc/app/FilePickerActivity;->showView(I)V

    .line 312
    iget v1, p0, Lcom/htc/app/FilePickerActivity;->mCurrentViewType:I

    if-ne v1, v2, :cond_5

    .line 313
    iget-object v1, p0, Lcom/htc/app/FilePickerActivity;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    if-eqz v1, :cond_4

    .line 314
    iget-object v1, p0, Lcom/htc/app/FilePickerActivity;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v1, v4}, Lcom/htc/app/FilePickerListAdapter;->setScanThreadMinPriority(Z)V

    .line 315
    :cond_4
    iget-object v1, p0, Lcom/htc/app/FilePickerActivity;->moreExAdapter:Lcom/htc/app/FilePickerFolderAdapter;

    invoke-virtual {v1, v3}, Lcom/htc/app/FilePickerFolderAdapter;->setScanThreadMinPriority(Z)V

    .line 316
    iget-object v1, p0, Lcom/htc/app/FilePickerActivity;->moreExAdapter:Lcom/htc/app/FilePickerFolderAdapter;

    invoke-virtual {v1}, Lcom/htc/app/FilePickerFolderAdapter;->getFirstLevelFileCount()I

    move-result v1

    if-lez v1, :cond_9

    .line 317
    iget-object v1, p0, Lcom/htc/app/FilePickerActivity;->mMoreExListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v1, v6}, Lcom/htc/widget/MoreExpandableHtcListView;->setEmptyView(Landroid/view/View;)V

    .line 318
    iget-object v1, p0, Lcom/htc/app/FilePickerActivity;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 326
    :cond_5
    :goto_0
    iget v1, p0, Lcom/htc/app/FilePickerActivity;->mCurrentViewType:I

    if-nez v1, :cond_8

    .line 327
    iget-object v1, p0, Lcom/htc/app/FilePickerActivity;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    if-eqz v1, :cond_6

    .line 328
    iget-object v1, p0, Lcom/htc/app/FilePickerActivity;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v1, v3}, Lcom/htc/app/FilePickerListAdapter;->setScanThreadMinPriority(Z)V

    .line 329
    :cond_6
    iget-object v1, p0, Lcom/htc/app/FilePickerActivity;->moreExAdapter:Lcom/htc/app/FilePickerFolderAdapter;

    invoke-virtual {v1, v4}, Lcom/htc/app/FilePickerFolderAdapter;->setScanThreadMinPriority(Z)V

    .line 330
    const/4 v0, 0x0

    .line 331
    .local v0, fileCount:I
    iget-object v1, p0, Lcom/htc/app/FilePickerActivity;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    if-eqz v1, :cond_7

    .line 332
    iget-object v1, p0, Lcom/htc/app/FilePickerActivity;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v1}, Lcom/htc/app/FilePickerListAdapter;->getFileCount()I

    move-result v0

    .line 333
    :cond_7
    if-gtz v0, :cond_b

    .line 334
    iget-boolean v1, p0, Lcom/htc/app/FilePickerActivity;->mIsStopScan:Z

    if-eqz v1, :cond_a

    .line 335
    iget-object v1, p0, Lcom/htc/app/FilePickerActivity;->mListView:Lcom/htc/app/FilePickerListView;

    iget-object v2, p0, Lcom/htc/app/FilePickerActivity;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Lcom/htc/app/FilePickerListView;->setEmptyView(Landroid/view/View;)V

    .line 336
    iget-object v1, p0, Lcom/htc/app/FilePickerActivity;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 353
    .end local v0           #fileCount:I
    :cond_8
    :goto_1
    return-void

    .line 320
    :cond_9
    iget-object v1, p0, Lcom/htc/app/FilePickerActivity;->mMoreExListView:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v2, p0, Lcom/htc/app/FilePickerActivity;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Lcom/htc/widget/MoreExpandableHtcListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_0

    .line 339
    .restart local v0       #fileCount:I
    :cond_a
    iget-object v1, p0, Lcom/htc/app/FilePickerActivity;->mListView:Lcom/htc/app/FilePickerListView;

    invoke-virtual {v1, v6}, Lcom/htc/app/FilePickerListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_1

    .line 342
    :cond_b
    iget-object v1, p0, Lcom/htc/app/FilePickerActivity;->mListView:Lcom/htc/app/FilePickerListView;

    iget-object v2, p0, Lcom/htc/app/FilePickerActivity;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Lcom/htc/app/FilePickerListView;->setEmptyView(Landroid/view/View;)V

    .line 343
    iget-object v1, p0, Lcom/htc/app/FilePickerActivity;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private getFileCount()I
    .locals 2

    .prologue
    .line 1901
    const/4 v0, 0x0

    .line 1902
    .local v0, fileCount:I
    iget-object v1, p0, Lcom/htc/app/FilePickerActivity;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    if-eqz v1, :cond_0

    .line 1903
    iget-object v1, p0, Lcom/htc/app/FilePickerActivity;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v1}, Lcom/htc/app/FilePickerListAdapter;->getCurrentFileCount()I

    move-result v0

    .line 1905
    :cond_0
    return v0
.end method

.method private hideDialog()V
    .locals 1

    .prologue
    .line 1222
    iget-boolean v0, p0, Lcom/htc/app/FilePickerActivity;->mIsShowDialog:Z

    if-eqz v0, :cond_0

    .line 1223
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/app/FilePickerActivity;->dismissDialog(I)V

    .line 1224
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/app/FilePickerActivity;->mIsShowDialog:Z

    .line 1226
    :cond_0
    return-void
.end method

.method private hideNoSdCard()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1735
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->noSdcardView:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1736
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mItemCountTextPrefix:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1737
    iget v0, p0, Lcom/htc/app/FilePickerActivity;->mSelectionType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1738
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mBottomBar:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1741
    :cond_0
    return-void
.end method

.method private hideSearchBar()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1656
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mSearchBar:Lcom/htc/widget/SearchBoxView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/SearchBoxView;->setVisibility(I)V

    .line 1657
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mEditor:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1658
    iput-boolean v2, p0, Lcom/htc/app/FilePickerActivity;->mIsShowSearchBar:Z

    .line 1659
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    .line 1663
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mHeaderBar:Lcom/htc/widget/HeaderBarMiddle;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBarMiddle;->setVisibility(I)V

    .line 1665
    return-void
.end method

.method private hideView(I)V
    .locals 2
    .parameter "viewType"

    .prologue
    const/16 v1, 0x8

    .line 260
    packed-switch p1, :pswitch_data_0

    .line 273
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 262
    :pswitch_1
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mListView:Lcom/htc/app/FilePickerListView;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mListView:Lcom/htc/app/FilePickerListView;

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerListView;->setVisibility(I)V

    goto :goto_0

    .line 269
    :pswitch_2
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mMoreExListView:Lcom/htc/widget/MoreExpandableHtcListView;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mMoreExListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v0, v1}, Lcom/htc/widget/MoreExpandableHtcListView;->setVisibility(I)V

    goto :goto_0

    .line 260
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private final initCreate(Landroid/content/Context;)V
    .locals 1
    .parameter "mHtcContext"

    .prologue
    .line 464
    invoke-direct {p0}, Lcom/htc/app/FilePickerActivity;->setBackgroundDrawable()V

    .line 465
    const v0, 0x20c0222

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/app/FilePickerActivity;->EMPTY_FOLDER:Ljava/lang/String;

    .line 467
    const v0, 0x20c0223

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/app/FilePickerActivity;->LOADING:Ljava/lang/String;

    .line 469
    return-void
.end method

.method private initOptionsMenu(Landroid/view/Menu;)V
    .locals 6
    .parameter "menu"

    .prologue
    const/4 v5, 0x3

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1246
    if-nez p1, :cond_0

    .line 1270
    :goto_0
    return-void

    .line 1248
    :cond_0
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mHtcContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20c0137

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v4, v3, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080338

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1251
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mHtcContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20c0138

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v2, v3, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080333

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1255
    sget-boolean v0, Lcom/htc/app/FilePickerActivity;->isFolderFileMenuItemEnabled:Z

    if-eqz v0, :cond_1

    .line 1256
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/htc/app/FilePickerActivity;->mHtcContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20c0221

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v5, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x208032a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1264
    :cond_1
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mHtcContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20c013a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v4, v5, v3, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080334

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1267
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/htc/app/FilePickerActivity;->mHtcContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20c013b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x208033c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private initialFilePicker(Ljava/lang/String;IZII[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIILjava/lang/String;[Ljava/lang/String;I)V
    .locals 27
    .parameter "applicationName"
    .parameter "viewType"
    .parameter "isShowPath"
    .parameter "modeTypeOfFolderView"
    .parameter "selectionType"
    .parameter "filter"
    .parameter "title"
    .parameter "noFileFoundText"
    .parameter "isEnabledFolderFileSwitchMenuItem"
    .parameter "rootPath"
    .parameter "isRemoveMode"
    .parameter "sortType"
    .parameter "sortOrder"
    .parameter "hintText"
    .parameter "drmFilter"
    .parameter "orientation"

    .prologue
    .line 531
    new-instance v24, Landroid/content/IntentFilter;

    invoke-direct/range {v24 .. v24}, Landroid/content/IntentFilter;-><init>()V

    .line 532
    .local v24, sdFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_BAD_REMOVAL"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 533
    const-string v2, "android.intent.action.MEDIA_BUTTON"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 534
    const-string v2, "android.intent.action.MEDIA_EJECT"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 535
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 536
    const-string v2, "android.intent.action.MEDIA_REMOVED"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 537
    const-string v2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 538
    const-string v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 539
    const-string v2, "android.intent.action.MEDIA_SCANNER_STARTED"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 540
    const-string v2, "android.intent.action.MEDIA_SHARED"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 541
    const-string v2, "android.intent.action.MEDIA_UNMOUNTABLE"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 542
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 543
    const-string v2, "file"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 544
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/FilePickerActivity;->mSdcardListener:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v2, v1}, Lcom/htc/app/FilePickerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 553
    sput-boolean p9, Lcom/htc/app/FilePickerActivity;->isFolderFileMenuItemEnabled:Z

    .line 554
    if-eqz p6, :cond_1

    .line 555
    move-object/from16 v8, p6

    .local v8, arr$:[Ljava/lang/String;
    array-length v0, v8

    move/from16 v20, v0

    .local v20, len$:I
    const/16 v19, 0x0

    .local v19, i$:I
    :goto_0
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_1

    aget-object v12, v8, v19

    .line 556
    .local v12, extension:Ljava/lang/String;
    if-eqz v12, :cond_0

    .line 557
    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 555
    :cond_0
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 560
    .end local v8           #arr$:[Ljava/lang/String;
    .end local v12           #extension:Ljava/lang/String;
    .end local v19           #i$:I
    .end local v20           #len$:I
    :cond_1
    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/app/FilePickerActivity;->mFilter:[Ljava/lang/String;

    .line 561
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/app/FilePickerActivity;->mSelectionType:I

    .line 564
    invoke-direct/range {p0 .. p0}, Lcom/htc/app/FilePickerActivity;->loadViewTypePreferences()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/app/FilePickerActivity;->mCurrentViewType:I

    .line 565
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/app/FilePickerActivity;->mCurrentViewType:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 570
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/app/FilePickerActivity;->mCurrentViewType:I

    .line 573
    :cond_2
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/app/FilePickerActivity;->mModeTypeOfFolderView:I

    .line 574
    move/from16 v0, p11

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/app/FilePickerActivity;->isRemoveMode:Z

    .line 576
    const-string v2, "FilePickerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initialFilePicker()->the Path which AP provides:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p10

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    invoke-virtual/range {p0 .. p0}, Lcom/htc/app/FilePickerActivity;->isChild()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 579
    const-string v2, "FilePickerActivity"

    const-string v3, "initialFilePicker()->this activity embedded inside of another activity"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    :cond_3
    new-instance v2, Lcom/htc/app/FilePickerUtil;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/app/FilePickerActivity;->mHtcContext:Landroid/content/Context;

    move-object/from16 v0, p10

    move-object/from16 v1, p15

    invoke-direct {v2, v0, v1, v3}, Lcom/htc/app/FilePickerUtil;-><init>(Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/app/FilePickerActivity;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    .line 584
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/FilePickerActivity;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/app/FilePickerActivity;->mCurrentViewType:I

    invoke-virtual {v2, v3}, Lcom/htc/app/FilePickerUtil;->setMCurrentViewType(I)V

    .line 585
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/FilePickerActivity;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v2}, Lcom/htc/app/FilePickerUtil;->getRootPath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/app/FilePickerActivity;->mRootPath:Ljava/lang/String;

    .line 587
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/FilePickerActivity;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/app/FilePickerActivity;->mRootPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/app/FilePickerUtil;->IsSDcardPath(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/app/FilePickerActivity;->isSdcardRoot:Z

    .line 589
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/FilePickerActivity;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/app/FilePickerActivity;->mRootPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/app/FilePickerUtil;->IsMultiPath(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/app/FilePickerActivity;->isMultiPath:Z

    .line 592
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/FilePickerActivity;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/app/FilePickerActivity;->mRootPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/app/FilePickerUtil;->getPathArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 594
    .local v10, dirs:[Ljava/lang/String;
    const/16 v18, 0x0

    .local v18, i:I
    :goto_1
    array-length v2, v10

    move/from16 v0, v18

    if-ge v0, v2, :cond_5

    .line 596
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/FilePickerActivity;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    aget-object v3, v10, v18

    invoke-virtual {v2, v3}, Lcom/htc/app/FilePickerUtil;->IsSDcardPath(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 597
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/app/FilePickerActivity;->isSdcardRoot:Z

    .line 594
    :cond_4
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 601
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/app/FilePickerActivity;->mCurrentViewType:I

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/app/FilePickerActivity;->mCurrentViewType:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_6

    .line 603
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Not support GridView Type"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 606
    :cond_6
    new-instance v2, Lcom/htc/app/FilePickerListAdapter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/app/FilePickerActivity;->handler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/app/FilePickerActivity;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    move-object/from16 v3, p0

    move/from16 v5, p5

    move-object/from16 v6, p0

    invoke-direct/range {v2 .. v7}, Lcom/htc/app/FilePickerListAdapter;-><init>(Landroid/content/Context;Landroid/os/Handler;ILcom/htc/app/FilePickerActivity;Lcom/htc/app/FilePickerUtil;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/app/FilePickerActivity;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    .line 608
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/FilePickerActivity;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    move/from16 v0, p11

    invoke-virtual {v2, v0}, Lcom/htc/app/FilePickerListAdapter;->setCheckBoxMode(Z)V

    .line 621
    const v2, 0x209003f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/htc/res/HtcResources;->inflateLayout(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v21

    .line 623
    .local v21, mFilePickerLayoutView:Landroid/view/View;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerActivity;->setContentView(Landroid/view/View;)V

    .line 630
    const v2, 0x20200f0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/SearchBoxView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/app/FilePickerActivity;->mSearchBar:Lcom/htc/widget/SearchBoxView;

    .line 633
    const v2, 0x202025f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/app/FilePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HeaderBarMiddle;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/app/FilePickerActivity;->mHeaderBar:Lcom/htc/widget/HeaderBarMiddle;

    .line 634
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/FilePickerActivity;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    sget-boolean v2, Lcom/htc/app/FilePickerUtil;->IsEnabledTranparentBckground:Z

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/FilePickerActivity;->mHeaderBar:Lcom/htc/widget/HeaderBarMiddle;

    invoke-virtual {v2}, Lcom/htc/widget/HeaderBarMiddle;->enableTranparentBckground()V

    .line 637
    :cond_7
    const v2, 0x202016b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/app/FilePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Lcom/htc/widget/HeaderBarText;

    .line 639
    .local v26, titleBarHeaderText:Lcom/htc/widget/HeaderBarText;
    const/4 v2, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 643
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/FilePickerActivity;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    .line 654
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerActivity;->setContentView(Landroid/view/View;)V

    .line 655
    const/4 v2, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 658
    const v2, 0x2020219

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/MoreExpandableHtcListView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/app/FilePickerActivity;->mMoreExListView:Lcom/htc/widget/MoreExpandableHtcListView;

    .line 661
    const v2, 0x20200f2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/app/FilePickerListView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/app/FilePickerActivity;->mListView:Lcom/htc/app/FilePickerListView;

    .line 664
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/FilePickerActivity;->mHtcContext:Landroid/content/Context;

    const-string v3, "list_selector_background"

    const v4, 0x1080062

    invoke-static {v2, v3, v4}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v9

    .line 667
    .local v9, bkgId:I
    if-eqz v9, :cond_8

    .line 668
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/FilePickerActivity;->mMoreExListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v2, v9}, Lcom/htc/widget/MoreExpandableHtcListView;->setSelector(I)V

    .line 669
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/FilePickerActivity;->mListView:Lcom/htc/app/FilePickerListView;

    invoke-virtual {v2, v9}, Lcom/htc/app/FilePickerListView;->setSelector(I)V

    .line 672
    :cond_8
    const v2, 0x2020053

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 674
    .local v13, filePickerTitle:Landroid/widget/TextView;
    const v2, 0x2020054

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 682
    .local v14, filePickerTitleShadow:Landroid/widget/TextView;
    const v2, 0x209003e

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/htc/res/HtcResources;->inflateLayout(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/app/FilePickerActivity;->mFileListHeader:Landroid/view/View;

    .line 684
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/FilePickerActivity;->mFileListHeader:Landroid/view/View;

    const v3, 0x20200ee

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/app/FilePickerActivity;->mItemCountTextPrefix:Landroid/widget/TextView;

    .line 686
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/FilePickerActivity;->mFileListHeader:Landroid/view/View;

    const v3, 0x20200ef

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/app/FilePickerActivity;->mItemCountTextSubfix:Landroid/widget/TextView;

    .line 688
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/FilePickerActivity;->mFileListHeader:Landroid/view/View;

    const v3, 0x20200ec

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 690
    .local v16, headerTextView:Landroid/widget/TextView;
    if-eqz p3, :cond_11

    const/4 v2, 0x0

    :goto_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 691
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/FilePickerActivity;->mFileListHeader:Landroid/view/View;

    new-instance v3, Lcom/htc/app/FilePickerListItemSeparable;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/htc/app/FilePickerListItemSeparable;-><init>(Z)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 692
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/FilePickerActivity;->mFileListHeader:Landroid/view/View;

    const v3, 0x20200ed

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Lcom/htc/app/AnimatedImageView;

    .line 694
    .local v23, refreshIcon:Lcom/htc/app/AnimatedImageView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/FilePickerActivity;->mHtcContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x2080527

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/htc/app/AnimatedImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 696
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/FilePickerActivity;->mListView:Lcom/htc/app/FilePickerListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/app/FilePickerActivity;->mFileListHeader:Landroid/view/View;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/app/FilePickerListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 697
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/FilePickerActivity;->mListView:Lcom/htc/app/FilePickerListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/app/FilePickerListView;->setTopBorderHeight(I)V

    .line 703
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x30

    if-eq v2, v3, :cond_9

    .line 704
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/FilePickerActivity;->mListView:Lcom/htc/app/FilePickerListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/app/FilePickerActivity;->mHtcContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x2080669

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/app/FilePickerListView;->setSeperatorDiver(Landroid/graphics/drawable/Drawable;)V

    .line 707
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/FilePickerActivity;->mListView:Lcom/htc/app/FilePickerListView;

    new-instance v3, Lcom/htc/app/FilePickerActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/htc/app/FilePickerActivity$5;-><init>(Lcom/htc/app/FilePickerActivity;)V

    invoke-virtual {v2, v3}, Lcom/htc/app/FilePickerListView;->setLayoutChangedListener(Lcom/htc/app/FilePickerListView$LayoutChangeListener;)V

    .line 713
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/FilePickerActivity;->mListView:Lcom/htc/app/FilePickerListView;

    new-instance v3, Lcom/htc/app/FilePickerActivity$6;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/htc/app/FilePickerActivity$6;-><init>(Lcom/htc/app/FilePickerActivity;)V

    invoke-virtual {v2, v3}, Lcom/htc/app/FilePickerListView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 730
    const v2, 0x20200f3

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/app/FilePickerActivity;->mEmptyView:Landroid/widget/TextView;

    .line 732
    const v2, 0x20200f4

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/app/FilePickerActivity;->noSdcardView:Landroid/widget/LinearLayout;

    .line 734
    const v2, 0x20200f5

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/app/FilePickerActivity;->mSdcardWarningMessage:Landroid/widget/TextView;

    .line 736
    const v2, 0x20200f6

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/app/FilePickerActivity;->mBottomBar:Landroid/view/View;

    .line 738
    const v2, 0x20200f7

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    .line 740
    .local v11, doneButton:Landroid/widget/Button;
    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 743
    if-eqz p7, :cond_12

    .line 744
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/FilePickerActivity;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    .line 750
    move-object/from16 v0, v26

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 770
    :goto_3
    if-eqz p8, :cond_14

    .line 771
    move-object/from16 v0, p8

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/app/FilePickerActivity;->mNoFileFoundText:Ljava/lang/String;

    .line 788
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/app/FilePickerActivity;->mBottomBar:Landroid/view/View;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/app/FilePickerActivity;->mSelectionType:I

    if-nez v2, :cond_17

    const/16 v2, 0x8

    :goto_5
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 792
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/FilePickerActivity;->mSearchBar:Lcom/htc/widget/SearchBoxView;

    invoke-virtual {v2}, Lcom/htc/widget/SearchBoxView;->getTextField()Landroid/widget/EditText;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/app/FilePickerActivity;->mEditor:Landroid/widget/EditText;

    .line 793
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/FilePickerActivity;->mEditor:Landroid/widget/EditText;

    new-instance v3, Lcom/htc/app/FilePickerActivity$7;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/htc/app/FilePickerActivity$7;-><init>(Lcom/htc/app/FilePickerActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 820
    if-eqz p14, :cond_18

    .line 821
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/FilePickerActivity;->mEditor:Landroid/widget/EditText;

    move-object/from16 v0, p14

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 825
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/FilePickerActivity;->mEditor:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/app/FilePickerActivity;->mListView:Lcom/htc/app/FilePickerListView;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 826
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/FilePickerActivity;->mEditor:Landroid/widget/EditText;

    new-instance v3, Lcom/htc/app/FilePickerActivity$8;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/htc/app/FilePickerActivity$8;-><init>(Lcom/htc/app/FilePickerActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 847
    new-instance v15, Lcom/htc/app/FileScanner;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/FilePickerActivity;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/app/FilePickerActivity;->mFilter:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v2, v3}, Lcom/htc/app/FileScanner;-><init>(Landroid/content/Context;Lcom/htc/app/FilePickerListAdapter;[Ljava/lang/String;)V

    .line 848
    .local v15, fileScanner:Lcom/htc/app/FileScanner;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/FilePickerActivity;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v15, v2}, Lcom/htc/app/FileScanner;->setFilePickerUtil(Lcom/htc/app/FilePickerUtil;)V

    .line 850
    if-eqz v10, :cond_a

    .line 851
    invoke-virtual {v15, v10}, Lcom/htc/app/FileScanner;->setDirs([Ljava/lang/String;)V

    .line 855
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/FilePickerActivity;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v2, v15}, Lcom/htc/app/FilePickerListAdapter;->setFileScanner(Lcom/htc/app/FileScanner;)V

    .line 857
    new-instance v2, Lcom/htc/app/FileSorter;

    invoke-direct {v2}, Lcom/htc/app/FileSorter;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/app/FilePickerActivity;->mFileSorter:Lcom/htc/app/FileSorter;

    .line 860
    invoke-direct/range {p0 .. p0}, Lcom/htc/app/FilePickerActivity;->loadSortTypePreferences()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/app/FilePickerActivity;->mSortType:I

    .line 861
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/app/FilePickerActivity;->mSortType:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_b

    .line 866
    move/from16 v0, p12

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/app/FilePickerActivity;->mSortType:I

    .line 869
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/htc/app/FilePickerActivity;->loadSortOrderPreferences()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/app/FilePickerActivity;->mSortOrder:I

    .line 870
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/app/FilePickerActivity;->mSortOrder:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_c

    .line 875
    move/from16 v0, p13

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/app/FilePickerActivity;->mSortOrder:I

    .line 878
    :cond_c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/app/FilePickerActivity;->mSortType:I

    if-nez v2, :cond_1a

    .line 879
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/app/FilePickerActivity;->mSortOrder:I

    if-nez v2, :cond_19

    .line 880
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/app/FilePickerActivity;->mSortSelectedItem:I

    .line 892
    :cond_d
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/FilePickerActivity;->mFileSorter:Lcom/htc/app/FileSorter;

    move/from16 v0, p12

    invoke-virtual {v2, v0}, Lcom/htc/app/FileSorter;->setSortBy(I)V

    .line 893
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/FilePickerActivity;->mFileSorter:Lcom/htc/app/FileSorter;

    move/from16 v0, p13

    invoke-virtual {v2, v0}, Lcom/htc/app/FileSorter;->setSortOrder(I)V

    .line 894
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/FilePickerActivity;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/app/FilePickerActivity;->mFileSorter:Lcom/htc/app/FileSorter;

    invoke-virtual {v2, v3}, Lcom/htc/app/FilePickerListAdapter;->setFileSorter(Lcom/htc/app/FileSorter;)V

    .line 895
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/FilePickerActivity;->mFileSorter:Lcom/htc/app/FileSorter;

    invoke-virtual {v15, v2}, Lcom/htc/app/FileScanner;->setFileSorter(Lcom/htc/app/FileSorter;)V

    .line 897
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/FilePickerActivity;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/htc/app/FilePickerListAdapter;->groupByPath(Z)V

    .line 898
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/FilePickerActivity;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/app/FilePickerActivity;->mDataSetChangedListener:Lcom/htc/app/FilePickerListAdapter$onDataSetChangedListener;

    invoke-virtual {v2, v3}, Lcom/htc/app/FilePickerListAdapter;->setDataSetChangedListener(Lcom/htc/app/FilePickerListAdapter$onDataSetChangedListener;)V

    .line 902
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/FilePickerActivity;->mListView:Lcom/htc/app/FilePickerListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/app/FilePickerActivity;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v2, v3}, Lcom/htc/app/FilePickerListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 903
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/FilePickerActivity;->mListView:Lcom/htc/app/FilePickerListView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/htc/app/FilePickerListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 904
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/app/FilePickerActivity;->mSelectionType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_e

    .line 905
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/FilePickerActivity;->mListView:Lcom/htc/app/FilePickerListView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/htc/app/FilePickerListView;->setChoiceMode(I)V

    .line 908
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/htc/app/FilePickerActivity;->initialFilePickerFolderView()V

    .line 910
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/FilePickerActivity;->mListView:Lcom/htc/app/FilePickerListView;

    invoke-virtual {v2}, Lcom/htc/app/FilePickerListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v17

    check-cast v17, Lcom/htc/widget/HtcHeaderViewListAdapter;

    .line 911
    .local v17, htcHeaderViewListAdapter:Lcom/htc/widget/HtcHeaderViewListAdapter;
    new-instance v22, Landroid/view/View;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 912
    .local v22, nullCheckView:Landroid/view/View;
    const/16 v2, 0x8

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 913
    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcHeaderViewListAdapter;->setNullCheckView(Landroid/view/View;)V

    .line 916
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/app/FilePickerActivity;->isSdcardRoot:Z

    if-eqz v2, :cond_f

    .line 917
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/app/FilePickerActivity;->isSDCard:Z

    .line 918
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v25

    .line 921
    .local v25, status:Ljava/lang/String;
    const-string v2, "unmounted"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 922
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/FilePickerActivity;->mHtcContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20c00a1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/app/FilePickerActivity;->showNoSdCard(Ljava/lang/String;)V

    .line 949
    .end local v25           #status:Ljava/lang/String;
    :cond_f
    :goto_8
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/app/FilePickerActivity;->mActivityCreated:Z

    .line 952
    invoke-virtual/range {p0 .. p0}, Lcom/htc/app/FilePickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accelerometer_rotation"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_10

    .line 954
    move-object/from16 v0, p0

    move/from16 v1, p16

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerActivity;->setRequestedOrientation(I)V

    .line 960
    :cond_10
    move/from16 v0, p16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/app/FilePickerActivity;->mOrientation:I

    .line 961
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/app/FilePickerActivity;->mCurrentViewType:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/app/FilePickerActivity;->changeCurrentView(I)V

    .line 962
    return-void

    .line 690
    .end local v11           #doneButton:Landroid/widget/Button;
    .end local v15           #fileScanner:Lcom/htc/app/FileScanner;
    .end local v17           #htcHeaderViewListAdapter:Lcom/htc/widget/HtcHeaderViewListAdapter;
    .end local v22           #nullCheckView:Landroid/view/View;
    .end local v23           #refreshIcon:Lcom/htc/app/AnimatedImageView;
    :cond_11
    const/16 v2, 0x8

    goto/16 :goto_2

    .line 753
    .restart local v11       #doneButton:Landroid/widget/Button;
    .restart local v23       #refreshIcon:Lcom/htc/app/AnimatedImageView;
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/FilePickerActivity;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    .line 760
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/app/FilePickerActivity;->mSelectionType:I

    if-nez v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/FilePickerActivity;->mHtcContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20c0131

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_9
    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/FilePickerActivity;->mHtcContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20c0132

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    .line 772
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/app/FilePickerActivity;->isSdcardRoot:Z

    if-eqz v2, :cond_16

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/app/FilePickerActivity;->isMultiPath:Z

    if-nez v2, :cond_16

    .line 774
    sget-boolean v2, Lcom/htc/app/FilePickerUtil;->IsSupportInternalStorage:Z

    if-eqz v2, :cond_15

    .line 775
    invoke-virtual/range {p0 .. p0}, Lcom/htc/app/FilePickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20c0134

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/app/FilePickerActivity;->mNoFileFoundText:Ljava/lang/String;

    goto/16 :goto_4

    .line 778
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/htc/app/FilePickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20c0144

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/app/FilePickerActivity;->mNoFileFoundText:Ljava/lang/String;

    goto/16 :goto_4

    .line 783
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/htc/app/FilePickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20c0134

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/app/FilePickerActivity;->mNoFileFoundText:Ljava/lang/String;

    goto/16 :goto_4

    .line 788
    :cond_17
    const/4 v2, 0x0

    goto/16 :goto_5

    .line 823
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/FilePickerActivity;->mEditor:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/app/FilePickerActivity;->mHtcContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x20c0146

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 882
    .restart local v15       #fileScanner:Lcom/htc/app/FileScanner;
    :cond_19
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/app/FilePickerActivity;->mSortSelectedItem:I

    goto/16 :goto_7

    .line 884
    :cond_1a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/app/FilePickerActivity;->mSortType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_d

    .line 885
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/app/FilePickerActivity;->mSortOrder:I

    if-nez v2, :cond_1b

    .line 886
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/app/FilePickerActivity;->mSortSelectedItem:I

    goto/16 :goto_7

    .line 888
    :cond_1b
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/app/FilePickerActivity;->mSortSelectedItem:I

    goto/16 :goto_7

    .line 924
    .restart local v17       #htcHeaderViewListAdapter:Lcom/htc/widget/HtcHeaderViewListAdapter;
    .restart local v22       #nullCheckView:Landroid/view/View;
    .restart local v25       #status:Ljava/lang/String;
    :cond_1c
    const-string v2, "bad_removal"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 925
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/FilePickerActivity;->mHtcContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20c00a1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/app/FilePickerActivity;->showNoSdCard(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 927
    :cond_1d
    const-string v2, "mounted"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 929
    const-string v2, "mounted_ro"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 931
    const-string v2, "shared"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 932
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/FilePickerActivity;->mHtcContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20c0145

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/app/FilePickerActivity;->showNoSdCard(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 934
    :cond_1e
    const-string v2, "unmountable"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 935
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/FilePickerActivity;->mHtcContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20c0145

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/app/FilePickerActivity;->showNoSdCard(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 937
    :cond_1f
    const-string v2, "removed"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 938
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/FilePickerActivity;->mHtcContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20c00a1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/app/FilePickerActivity;->showNoSdCard(Ljava/lang/String;)V

    goto/16 :goto_8
.end method

.method private initialFilePickerFolderView()V
    .locals 7

    .prologue
    .line 164
    new-instance v0, Lcom/htc/app/FilePickerFolderAdapter;

    iget-object v1, p0, Lcom/htc/app/FilePickerActivity;->mHtcContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/app/FilePickerActivity;->mFilter:[Ljava/lang/String;

    iget v3, p0, Lcom/htc/app/FilePickerActivity;->mSelectionType:I

    iget-object v4, p0, Lcom/htc/app/FilePickerActivity;->mMoreExListView:Lcom/htc/widget/MoreExpandableHtcListView;

    iget v5, p0, Lcom/htc/app/FilePickerActivity;->mModeTypeOfFolderView:I

    iget-object v6, p0, Lcom/htc/app/FilePickerActivity;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-direct/range {v0 .. v6}, Lcom/htc/app/FilePickerFolderAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;ILcom/htc/widget/MoreExpandableHtcListView;ILcom/htc/app/FilePickerUtil;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerActivity;->moreExAdapter:Lcom/htc/app/FilePickerFolderAdapter;

    .line 167
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->moreExAdapter:Lcom/htc/app/FilePickerFolderAdapter;

    iget v1, p0, Lcom/htc/app/FilePickerActivity;->mSortOrder:I

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerFolderAdapter;->setSortOrder(I)V

    .line 168
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->moreExAdapter:Lcom/htc/app/FilePickerFolderAdapter;

    iget v1, p0, Lcom/htc/app/FilePickerActivity;->mSortType:I

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerFolderAdapter;->setSortBy(I)V

    .line 169
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->moreExAdapter:Lcom/htc/app/FilePickerFolderAdapter;

    iget-boolean v1, p0, Lcom/htc/app/FilePickerActivity;->isRemoveMode:Z

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerFolderAdapter;->setCheckBoxMode(Z)V

    .line 170
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mMoreExListView:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v1, p0, Lcom/htc/app/FilePickerActivity;->moreExAdapter:Lcom/htc/app/FilePickerFolderAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/MoreExpandableHtcListView;->setAdapter(Lcom/htc/widget/MoreExpandableBaseAdapter;)V

    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/app/FilePickerActivity;->mNeedLoadFolders:Z

    .line 177
    invoke-direct {p0}, Lcom/htc/app/FilePickerActivity;->loadFolders()V

    .line 178
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mMoreExListView:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v1, p0, Lcom/htc/app/FilePickerActivity;->mOnGroupExpandListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupExpandListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/MoreExpandableHtcListView;->setOnGroupExpandListener(Lcom/htc/widget/MoreExpandableHtcListView$OnGroupExpandListener;)V

    .line 179
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mMoreExListView:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v1, p0, Lcom/htc/app/FilePickerActivity;->mOnGroupCollapseListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupCollapseListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/MoreExpandableHtcListView;->setOnGroupCollapseListener(Lcom/htc/widget/MoreExpandableHtcListView$OnGroupCollapseListener;)V

    .line 180
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mMoreExListView:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v1, p0, Lcom/htc/app/FilePickerActivity;->mOnChildClickListener:Lcom/htc/widget/MoreExpandableHtcListView$OnChildClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/MoreExpandableHtcListView;->setOnChildClickListener(Lcom/htc/widget/MoreExpandableHtcListView$OnChildClickListener;)V

    .line 181
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mMoreExListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v0, p0}, Lcom/htc/widget/MoreExpandableHtcListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 182
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mMoreExListView:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v1, p0, Lcom/htc/app/FilePickerActivity;->onTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/MoreExpandableHtcListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 183
    return-void
.end method

.method private loadFiles()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1137
    iput-boolean v3, p0, Lcom/htc/app/FilePickerActivity;->isEnableOptionMenu:Z

    .line 1138
    iput-boolean v3, p0, Lcom/htc/app/FilePickerActivity;->mNeedLoadFiles:Z

    .line 1140
    iget-object v1, p0, Lcom/htc/app/FilePickerActivity;->mFileListHeader:Landroid/view/View;

    const v2, 0x20200ed

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/app/AnimatedImageView;

    .line 1142
    .local v0, refreshIcon:Lcom/htc/app/AnimatedImageView;
    invoke-virtual {v0, v3}, Lcom/htc/app/AnimatedImageView;->setVisibility(I)V

    .line 1143
    invoke-virtual {v0}, Lcom/htc/app/AnimatedImageView;->startAnimation()V

    .line 1146
    iput-boolean v3, p0, Lcom/htc/app/FilePickerActivity;->mIsStopScan:Z

    .line 1147
    iget-object v1, p0, Lcom/htc/app/FilePickerActivity;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    if-eqz v1, :cond_0

    .line 1148
    iget-object v1, p0, Lcom/htc/app/FilePickerActivity;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v1}, Lcom/htc/app/FilePickerListAdapter;->startScanFiles()V

    .line 1149
    :cond_0
    iget-object v1, p0, Lcom/htc/app/FilePickerActivity;->mEmptyView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1150
    iget v1, p0, Lcom/htc/app/FilePickerActivity;->mCurrentViewType:I

    invoke-direct {p0, v1}, Lcom/htc/app/FilePickerActivity;->showView(I)V

    .line 1152
    return-void
.end method

.method private loadFolders()V
    .locals 2

    .prologue
    .line 1125
    iget-boolean v0, p0, Lcom/htc/app/FilePickerActivity;->mNeedLoadFolders:Z

    if-eqz v0, :cond_0

    .line 1126
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->moreExAdapter:Lcom/htc/app/FilePickerFolderAdapter;

    iget-object v1, p0, Lcom/htc/app/FilePickerActivity;->mRootPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerFolderAdapter;->doScanTask(Ljava/lang/String;)V

    .line 1127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/app/FilePickerActivity;->mNeedLoadFolders:Z

    .line 1132
    :goto_0
    return-void

    .line 1129
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/app/FilePickerActivity;->mNeedLoadFolders:Z

    goto :goto_0
.end method

.method private loadSortOrderPreferences()I
    .locals 4

    .prologue
    .line 390
    const-string v2, "FilePickerPreference"

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Lcom/htc/app/FilePickerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 392
    .local v0, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v2, "sort_order"

    const/4 v3, -0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 394
    .local v1, sortOrder:I
    return v1
.end method

.method private loadSortTypePreferences()I
    .locals 4

    .prologue
    .line 381
    const-string v2, "FilePickerPreference"

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Lcom/htc/app/FilePickerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 383
    .local v0, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v2, "sort_type"

    const/4 v3, -0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 386
    .local v1, sortType:I
    return v1
.end method

.method private loadViewTypePreferences()I
    .locals 4

    .prologue
    .line 364
    const-string v2, "FilePickerPreference"

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Lcom/htc/app/FilePickerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 366
    .local v0, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v2, "pref_key_filepicker_view_type"

    const/4 v3, -0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 368
    .local v1, viewType:I
    return v1
.end method

.method private saveSortPreferences(II)V
    .locals 4
    .parameter "sortType"
    .parameter "sortOrder"

    .prologue
    .line 372
    const-string v2, "FilePickerPreference"

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Lcom/htc/app/FilePickerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 374
    .local v1, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 375
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "sort_type"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 376
    const-string v2, "sort_order"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 377
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 378
    return-void
.end method

.method private saveViewTypePreferences(I)V
    .locals 4
    .parameter "viewType"

    .prologue
    .line 356
    const-string v2, "FilePickerPreference"

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Lcom/htc/app/FilePickerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 358
    .local v1, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 359
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_key_filepicker_view_type"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 360
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 361
    return-void
.end method

.method private selectAll(Z)V
    .locals 4
    .parameter "markall"

    .prologue
    const/4 v3, 0x1

    .line 1633
    iget v2, p0, Lcom/htc/app/FilePickerActivity;->mSelectionType:I

    if-ne v2, v3, :cond_3

    .line 1634
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/htc/app/FilePickerActivity;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v2}, Lcom/htc/app/FilePickerListAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1635
    iget-object v2, p0, Lcom/htc/app/FilePickerActivity;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v2, v0}, Lcom/htc/app/FilePickerListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/app/ItemInfo;

    .line 1636
    .local v1, item:Lcom/htc/app/ItemInfo;
    invoke-virtual {v1}, Lcom/htc/app/ItemInfo;->isFolder()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1637
    if-eqz p1, :cond_1

    .line 1638
    invoke-virtual {v1, v3}, Lcom/htc/app/ItemInfo;->setChecked(Z)V

    .line 1634
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1640
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/app/ItemInfo;->setChecked(Z)V

    goto :goto_1

    .line 1646
    .end local v1           #item:Lcom/htc/app/ItemInfo;
    :cond_2
    iget v2, p0, Lcom/htc/app/FilePickerActivity;->mCurrentViewType:I

    if-nez v2, :cond_3

    .line 1647
    iget-object v2, p0, Lcom/htc/app/FilePickerActivity;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v2}, Lcom/htc/app/FilePickerListAdapter;->notifyDataSetChanged()V

    .line 1649
    .end local v0           #i:I
    :cond_3
    return-void
.end method

.method private setBackgroundDrawable()V
    .locals 5

    .prologue
    const v4, 0x20801c1

    .line 447
    sget-object v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v3, "3.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v3, "3.5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 449
    :cond_0
    invoke-virtual {p0}, Lcom/htc/app/FilePickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-nez v2, :cond_1

    const/4 v1, 0x1

    .line 450
    .local v1, isLandscape:Z
    :goto_0
    invoke-virtual {p0, p0, v1}, Lcom/htc/app/FilePickerActivity;->getBlurWallpaper(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 452
    .local v0, backgroundDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    .line 453
    invoke-virtual {p0}, Lcom/htc/app/FilePickerActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 461
    .end local v0           #backgroundDrawable:Landroid/graphics/drawable/Drawable;
    .end local v1           #isLandscape:Z
    :goto_1
    return-void

    .line 449
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 455
    .restart local v0       #backgroundDrawable:Landroid/graphics/drawable/Drawable;
    .restart local v1       #isLandscape:Z
    :cond_2
    invoke-virtual {p0}, Lcom/htc/app/FilePickerActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    goto :goto_1

    .line 460
    .end local v0           #backgroundDrawable:Landroid/graphics/drawable/Drawable;
    .end local v1           #isLandscape:Z
    :cond_3
    invoke-virtual {p0}, Lcom/htc/app/FilePickerActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    goto :goto_1
.end method

.method private showNoSdCard(Ljava/lang/String;)V
    .locals 6
    .parameter "message"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1701
    iget-object v1, p0, Lcom/htc/app/FilePickerActivity;->mHtcContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20c0145

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-ne p1, v1, :cond_1

    .line 1703
    iget-object v1, p0, Lcom/htc/app/FilePickerActivity;->noSdcardView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x2080864

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1709
    :goto_0
    iput-boolean v3, p0, Lcom/htc/app/FilePickerActivity;->isSDCard:Z

    .line 1710
    iget-object v1, p0, Lcom/htc/app/FilePickerActivity;->noSdcardView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1711
    iget-object v1, p0, Lcom/htc/app/FilePickerActivity;->mSdcardWarningMessage:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1712
    iget-object v1, p0, Lcom/htc/app/FilePickerActivity;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1714
    iget v1, p0, Lcom/htc/app/FilePickerActivity;->mCurrentViewType:I

    invoke-direct {p0, v1}, Lcom/htc/app/FilePickerActivity;->hideView(I)V

    .line 1716
    iget-object v1, p0, Lcom/htc/app/FilePickerActivity;->mItemCountTextPrefix:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1717
    iget-object v1, p0, Lcom/htc/app/FilePickerActivity;->mBottomBar:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1718
    iput-boolean v3, p0, Lcom/htc/app/FilePickerActivity;->isEnableOptionMenu:Z

    .line 1722
    const-string v0, ""

    .line 1726
    .local v0, status:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/htc/app/FilePickerActivity;->isMultiPath:Z

    if-eqz v1, :cond_0

    .line 1727
    invoke-direct {p0}, Lcom/htc/app/FilePickerActivity;->hideNoSdCard()V

    .line 1728
    iput-boolean v4, p0, Lcom/htc/app/FilePickerActivity;->isSDCard:Z

    .line 1729
    iput-boolean v4, p0, Lcom/htc/app/FilePickerActivity;->isEnableOptionMenu:Z

    .line 1731
    :cond_0
    return-void

    .line 1706
    .end local v0           #status:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/htc/app/FilePickerActivity;->noSdcardView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x2080867

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private showSearchBar()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1613
    iget v0, p0, Lcom/htc/app/FilePickerActivity;->mCurrentViewType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1614
    invoke-direct {p0, v2}, Lcom/htc/app/FilePickerActivity;->changeCurrentView(I)V

    .line 1615
    :cond_0
    iget-boolean v0, p0, Lcom/htc/app/FilePickerActivity;->mIsStopScan:Z

    if-eqz v0, :cond_1

    .line 1616
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mListView:Lcom/htc/app/FilePickerListView;

    iget-object v1, p0, Lcom/htc/app/FilePickerActivity;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerListView;->setEmptyView(Landroid/view/View;)V

    .line 1617
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mSearchBar:Lcom/htc/widget/SearchBoxView;

    invoke-virtual {v0, v2}, Lcom/htc/widget/SearchBoxView;->setVisibility(I)V

    .line 1618
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    .line 1619
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mHeaderBar:Lcom/htc/widget/HeaderBarMiddle;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarMiddle;->setVisibility(I)V

    .line 1620
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1621
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/app/FilePickerActivity;->mIsShowSearchBar:Z

    .line 1624
    :cond_1
    return-void
.end method

.method private showView(I)V
    .locals 2
    .parameter "viewType"

    .prologue
    const/4 v1, 0x0

    .line 277
    packed-switch p1, :pswitch_data_0

    .line 289
    :goto_0
    :pswitch_0
    return-void

    .line 279
    :pswitch_1
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mListView:Lcom/htc/app/FilePickerListView;

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerListView;->setVisibility(I)V

    goto :goto_0

    .line 285
    :pswitch_2
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mMoreExListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v0, v1}, Lcom/htc/widget/MoreExpandableHtcListView;->setVisibility(I)V

    goto :goto_0

    .line 277
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 1890
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mSearchBar:Lcom/htc/widget/SearchBoxView;

    invoke-virtual {v0}, Lcom/htc/widget/SearchBoxView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 1893
    const/4 v0, 0x0

    iget v1, p0, Lcom/htc/app/FilePickerActivity;->mSortType:I

    iget v2, p0, Lcom/htc/app/FilePickerActivity;->mSortOrder:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/app/FilePickerActivity;->onResult([Ljava/lang/String;II)V

    .line 1895
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method dispatchSearchKey(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 1652
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerListAdapter;->setSearchString(Ljava/lang/String;)V

    .line 1653
    return-void
.end method

.method public getBlurWallpaper(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "context"
    .parameter "isLandscape"

    .prologue
    .line 437
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "common_app_bkg"

    const-string v3, "drawable"

    const-string v4, "com.htc"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 439
    .local v0, resId:I
    if-nez v0, :cond_0

    .line 440
    const/4 v1, 0x0

    .line 441
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "common_app_bkg"

    invoke-static {p1, v2, v0}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 1746
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 1747
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/app/FilePickerActivity;->mHandler:Landroid/os/Handler;

    .line 1749
    :cond_0
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getMCurrentViewType()I
    .locals 1

    .prologue
    .line 400
    iget v0, p0, Lcom/htc/app/FilePickerActivity;->mCurrentViewType:I

    return v0
.end method

.method protected final initialFilePicker(Landroid/content/Intent;)V
    .locals 19
    .parameter "intent"

    .prologue
    .line 500
    const-string v2, "application_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "viewType"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v2, "showPath"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    const-string v2, "ModeTypeOfFolderView"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const-string v2, "selectionType"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const-string v2, "filter"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const-string v2, "title"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v2, "no_file_found_text"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v2, "enabledFolderFileSwitchMenuItem"

    const/4 v11, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    const-string v2, "root_path"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v2, "remove_file_mode"

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    const-string v2, "sort_type"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    const-string v2, "sort_order"

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    const-string v2, "hint_search_text"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v2, "drm_filter"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    const-string v2, "orientation"

    const/16 v18, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v18}, Lcom/htc/app/FilePickerActivity;->initialFilePicker(Ljava/lang/String;IZII[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIILjava/lang/String;[Ljava/lang/String;I)V

    .line 519
    return-void
.end method

.method protected final initialFilePicker(Landroid/os/Bundle;)V
    .locals 19
    .parameter "bundle"

    .prologue
    .line 475
    const-string v2, "application_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "viewType"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string v2, "showPath"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    const-string v2, "ModeTypeOfFolderView"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    const-string v2, "selectionType"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    const-string v2, "filter"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const-string v2, "title"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v2, "no_file_found_text"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v2, "enabledFolderFileSwitchMenuItem"

    const/4 v11, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    const-string v2, "root_path"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v2, "remove_file_mode"

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    const-string v2, "sort_type"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    const-string v2, "sort_order"

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v15

    const-string v2, "hint_search_text"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v2, "drm_filter"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    const-string v2, "orientation"

    const/16 v18, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v18

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v18}, Lcom/htc/app/FilePickerActivity;->initialFilePicker(Ljava/lang/String;IZII[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIILjava/lang/String;[Ljava/lang/String;I)V

    .line 494
    return-void
.end method

.method public listViewOnLayout()V
    .locals 3

    .prologue
    .line 1914
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mItemCountTextPrefix:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1915
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mItemCountTextPrefix:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/htc/app/FilePickerActivity;->getFileCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1917
    :cond_0
    return-void
.end method

.method public notifyTextChanged()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1688
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mListView:Lcom/htc/app/FilePickerListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 1689
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mListView:Lcom/htc/app/FilePickerListView;

    iget-object v1, p0, Lcom/htc/app/FilePickerActivity;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/htc/app/FilePickerListView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 1691
    :cond_0
    return-void
.end method

.method public notifyTextChanged(I)V
    .locals 1
    .parameter "viewType"

    .prologue
    .line 1671
    packed-switch p1, :pswitch_data_0

    .line 1685
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1673
    :pswitch_1
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    if-eqz v0, :cond_0

    .line 1674
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v0}, Lcom/htc/app/FilePickerListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1680
    :pswitch_2
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->moreExAdapter:Lcom/htc/app/FilePickerFolderAdapter;

    if-eqz v0, :cond_0

    .line 1681
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->moreExAdapter:Lcom/htc/app/FilePickerFolderAdapter;

    invoke-virtual {v0}, Lcom/htc/app/FilePickerFolderAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1671
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public notifyTextChanged(Ljava/lang/String;)V
    .locals 2
    .parameter "prefix"

    .prologue
    const/4 v1, 0x0

    .line 1697
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mListView:Lcom/htc/app/FilePickerListView;

    invoke-virtual {v0, p1, v1, v1, v1}, Lcom/htc/app/FilePickerListView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 1698
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x2

    .line 1196
    iget v2, p0, Lcom/htc/app/FilePickerActivity;->mSelectionType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 1197
    iget v2, p0, Lcom/htc/app/FilePickerActivity;->mCurrentViewType:I

    if-nez v2, :cond_0

    .line 1198
    iget-object v2, p0, Lcom/htc/app/FilePickerActivity;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v2}, Lcom/htc/app/FilePickerListAdapter;->getSelectFiles()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/app/FilePickerActivity;->mSelectedFiles:Ljava/util/ArrayList;

    .line 1199
    :cond_0
    iget v2, p0, Lcom/htc/app/FilePickerActivity;->mCurrentViewType:I

    if-ne v2, v4, :cond_1

    .line 1200
    iget-object v2, p0, Lcom/htc/app/FilePickerActivity;->moreExAdapter:Lcom/htc/app/FilePickerFolderAdapter;

    invoke-virtual {v2}, Lcom/htc/app/FilePickerFolderAdapter;->getSelectFiles()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/app/FilePickerActivity;->mSelectedFiles:Ljava/util/ArrayList;

    .line 1204
    :cond_1
    iget-object v2, p0, Lcom/htc/app/FilePickerActivity;->mSelectedFiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    .line 1205
    .local v1, output:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 1206
    iget-object v2, p0, Lcom/htc/app/FilePickerActivity;->mSelectedFiles:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 1205
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1212
    :cond_2
    iget-object v2, p0, Lcom/htc/app/FilePickerActivity;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v2}, Lcom/htc/app/FilePickerListAdapter;->stopScan()V

    .line 1213
    iget v2, p0, Lcom/htc/app/FilePickerActivity;->mSortType:I

    iget v3, p0, Lcom/htc/app/FilePickerActivity;->mSortOrder:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/app/FilePickerActivity;->onResult([Ljava/lang/String;II)V

    .line 1214
    iget-object v2, p0, Lcom/htc/app/FilePickerActivity;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v2}, Lcom/htc/app/FilePickerListAdapter;->resetAllChecked()V

    .line 1215
    iget v2, p0, Lcom/htc/app/FilePickerActivity;->mCurrentViewType:I

    if-ne v2, v4, :cond_3

    .line 1216
    iget-object v2, p0, Lcom/htc/app/FilePickerActivity;->moreExAdapter:Lcom/htc/app/FilePickerFolderAdapter;

    invoke-virtual {v2}, Lcom/htc/app/FilePickerFolderAdapter;->resetAllChecked()V

    .line 1218
    .end local v0           #i:I
    .end local v1           #output:[Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/htc/app/FilePickerActivity;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/app/FilePickerListAdapter;->NotifyListChanged(I)V

    .line 1219
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 1469
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1470
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mHtcContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/htc/app/FilePickerActivity;->initCreate(Landroid/content/Context;)V

    .line 1471
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 414
    iget-object v1, p0, Lcom/htc/app/FilePickerActivity;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    .line 417
    invoke-virtual {p0}, Lcom/htc/app/FilePickerActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 419
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/app/FilePickerActivity;->mInitialTime:J

    .line 421
    :try_start_0
    invoke-static {p0}, Lcom/htc/res/HtcResources;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/app/FilePickerActivity;->mHtcContext:Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/app/FilePickerActivity;->requestWindowFeature(I)Z

    .line 427
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 428
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/app/FilePickerActivity;->mSelectedFiles:Ljava/util/ArrayList;

    .line 429
    iget-object v1, p0, Lcom/htc/app/FilePickerActivity;->mHtcContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/htc/app/FilePickerActivity;->initCreate(Landroid/content/Context;)V

    .line 434
    return-void

    .line 422
    :catch_0
    move-exception v0

    .line 423
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "FilePickerActivity"

    const-string v2, "Get HtcResource context failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    .line 1482
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/htc/app/FilePickerActivity;->mHtcContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20c0139

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/app/FilePickerActivity;->mHtcContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x207000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/htc/app/FilePickerActivity;->mSortSelectedItem:I

    new-instance v3, Lcom/htc/app/FilePickerActivity$13;

    invoke-direct {v3, p0}, Lcom/htc/app/FilePickerActivity$13;-><init>(Lcom/htc/app/FilePickerActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/app/FilePickerActivity;->mHtcContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20c013d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/htc/app/FilePickerActivity$12;

    invoke-direct {v2, p0}, Lcom/htc/app/FilePickerActivity$12;-><init>(Lcom/htc/app/FilePickerActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 1238
    iput-object p1, p0, Lcom/htc/app/FilePickerActivity;->mMenu:Landroid/view/Menu;

    .line 1239
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mMenu:Landroid/view/Menu;

    invoke-direct {p0, v0}, Lcom/htc/app/FilePickerActivity;->initOptionsMenu(Landroid/view/Menu;)V

    .line 1241
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1437
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mSdcardListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/app/FilePickerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1439
    iget v0, p0, Lcom/htc/app/FilePickerActivity;->mCurrentViewType:I

    invoke-direct {p0, v0}, Lcom/htc/app/FilePickerActivity;->saveViewTypePreferences(I)V

    .line 1440
    iget v0, p0, Lcom/htc/app/FilePickerActivity;->mSortType:I

    iget v1, p0, Lcom/htc/app/FilePickerActivity;->mSortOrder:I

    invoke-direct {p0, v0, v1}, Lcom/htc/app/FilePickerActivity;->saveSortPreferences(II)V

    .line 1441
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v0}, Lcom/htc/app/FilePickerListAdapter;->stopScan()V

    .line 1443
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->moreExAdapter:Lcom/htc/app/FilePickerFolderAdapter;

    if-eqz v0, :cond_0

    .line 1444
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->moreExAdapter:Lcom/htc/app/FilePickerFolderAdapter;

    invoke-virtual {v0}, Lcom/htc/app/FilePickerFolderAdapter;->close()V

    .line 1447
    :cond_0
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    if-eqz v0, :cond_1

    .line 1448
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v0}, Lcom/htc/app/FilePickerListAdapter;->close()V

    .line 1450
    :cond_1
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    if-eqz v0, :cond_2

    .line 1451
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v0}, Lcom/htc/app/FilePickerUtil;->close()V

    .line 1453
    :cond_2
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mListView:Lcom/htc/app/FilePickerListView;

    if-eqz v0, :cond_3

    .line 1454
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mListView:Lcom/htc/app/FilePickerListView;

    invoke-virtual {v0}, Lcom/htc/app/FilePickerListView;->close()V

    .line 1458
    :cond_3
    iput-object v2, p0, Lcom/htc/app/FilePickerActivity;->mFilter:[Ljava/lang/String;

    .line 1459
    iput-object v2, p0, Lcom/htc/app/FilePickerActivity;->mFileSorter:Lcom/htc/app/FileSorter;

    .line 1460
    iput-object v2, p0, Lcom/htc/app/FilePickerActivity;->mRootPath:Ljava/lang/String;

    .line 1461
    iput-object v2, p0, Lcom/htc/app/FilePickerActivity;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    .line 1462
    iput-object v2, p0, Lcom/htc/app/FilePickerActivity;->mHtcContext:Landroid/content/Context;

    .line 1463
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1464
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1465
    return-void
.end method

.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 8
    .parameter
    .parameter "view"
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
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1157
    if-eqz p3, :cond_0

    iget-object v4, p0, Lcom/htc/app/FilePickerActivity;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v4}, Lcom/htc/app/FilePickerListAdapter;->getCount()I

    move-result v4

    if-le p3, v4, :cond_2

    .line 1158
    :cond_0
    const-string v4, "FilePickerActivity"

    const-string v5, "Click at out of index item"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    :cond_1
    :goto_0
    return-void

    .line 1162
    :cond_2
    iget-object v4, p0, Lcom/htc/app/FilePickerActivity;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    add-int/lit8 v5, p3, -0x1

    invoke-virtual {v4, v5}, Lcom/htc/app/FilePickerListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/app/ItemInfo;

    .line 1163
    .local v3, selectedItem:Lcom/htc/app/ItemInfo;
    invoke-virtual {v3}, Lcom/htc/app/ItemInfo;->isFolder()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1165
    iget v4, p0, Lcom/htc/app/FilePickerActivity;->mSelectionType:I

    if-nez v4, :cond_5

    .line 1167
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/htc/app/FilePickerActivity;->mSelectedFiles:Ljava/util/ArrayList;

    .line 1168
    iget-object v4, p0, Lcom/htc/app/FilePickerActivity;->mSelectedFiles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Lcom/htc/app/ItemInfo;->getFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1170
    invoke-virtual {p0}, Lcom/htc/app/FilePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1172
    .local v1, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/htc/app/FilePickerActivity;->mSelectedFiles:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v2, v4, [Ljava/lang/String;

    .line 1173
    .local v2, output:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v4, v2

    if-ge v0, v4, :cond_3

    .line 1174
    iget-object v4, p0, Lcom/htc/app/FilePickerActivity;->mSelectedFiles:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    .line 1173
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1180
    :cond_3
    iget-object v4, p0, Lcom/htc/app/FilePickerActivity;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v4}, Lcom/htc/app/FilePickerListAdapter;->stopScan()V

    .line 1181
    iget v4, p0, Lcom/htc/app/FilePickerActivity;->mSortType:I

    iget v5, p0, Lcom/htc/app/FilePickerActivity;->mSortOrder:I

    invoke-virtual {p0, v2, v4, v5}, Lcom/htc/app/FilePickerActivity;->onResult([Ljava/lang/String;II)V

    .line 1190
    .end local v0           #i:I
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #output:[Ljava/lang/String;
    :cond_4
    :goto_2
    iget-object v4, p0, Lcom/htc/app/FilePickerActivity;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v4, v6}, Lcom/htc/app/FilePickerListAdapter;->NotifyListChanged(I)V

    goto :goto_0

    .line 1182
    :cond_5
    iget v4, p0, Lcom/htc/app/FilePickerActivity;->mSelectionType:I

    if-ne v4, v7, :cond_4

    .line 1184
    invoke-virtual {v3}, Lcom/htc/app/ItemInfo;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1185
    invoke-virtual {v3, v6}, Lcom/htc/app/ItemInfo;->setChecked(Z)V

    goto :goto_2

    .line 1187
    :cond_6
    invoke-virtual {v3, v7}, Lcom/htc/app/ItemInfo;->setChecked(Z)V

    goto :goto_2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 1838
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 1839
    iget-boolean v1, p0, Lcom/htc/app/FilePickerActivity;->mIsShowSearchBar:Z

    if-ne v1, v0, :cond_0

    .line 1840
    invoke-direct {p0}, Lcom/htc/app/FilePickerActivity;->hideSearchBar()V

    .line 1844
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1800
    const/4 v1, 0x0

    .line 1801
    .local v1, fileCount:I
    const/4 v2, 0x0

    .line 1806
    .local v2, firstLevelFileCount:I
    const/4 v0, 0x0

    .line 1807
    .local v0, enableSearchOptionMenu:Z
    iget-object v5, p0, Lcom/htc/app/FilePickerActivity;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    if-eqz v5, :cond_0

    .line 1808
    iget-object v5, p0, Lcom/htc/app/FilePickerActivity;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v5}, Lcom/htc/app/FilePickerListAdapter;->getFileCount()I

    move-result v1

    .line 1809
    :cond_0
    iget-object v5, p0, Lcom/htc/app/FilePickerActivity;->moreExAdapter:Lcom/htc/app/FilePickerFolderAdapter;

    if-eqz v5, :cond_1

    .line 1810
    iget-object v5, p0, Lcom/htc/app/FilePickerActivity;->moreExAdapter:Lcom/htc/app/FilePickerFolderAdapter;

    invoke-virtual {v5}, Lcom/htc/app/FilePickerFolderAdapter;->getFirstLevelFileCount()I

    move-result v2

    .line 1812
    :cond_1
    iget v5, p0, Lcom/htc/app/FilePickerActivity;->mCurrentViewType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 1813
    iget-boolean v5, p0, Lcom/htc/app/FilePickerActivity;->mIsStopScan:Z

    if-eqz v5, :cond_5

    if-le v2, v3, :cond_5

    move v0, v3

    .line 1815
    :cond_2
    :goto_0
    iget v5, p0, Lcom/htc/app/FilePickerActivity;->mCurrentViewType:I

    if-nez v5, :cond_3

    .line 1816
    iget-boolean v5, p0, Lcom/htc/app/FilePickerActivity;->mIsStopScan:Z

    if-eqz v5, :cond_6

    if-lez v1, :cond_6

    move v0, v3

    .line 1821
    :cond_3
    :goto_1
    const/16 v4, 0x54

    if-ne p1, v4, :cond_8

    .line 1822
    iget-boolean v4, p0, Lcom/htc/app/FilePickerActivity;->mIsShowSearchBar:Z

    if-nez v4, :cond_7

    .line 1823
    if-eqz v0, :cond_4

    .line 1824
    invoke-direct {p0}, Lcom/htc/app/FilePickerActivity;->showSearchBar()V

    .line 1831
    :cond_4
    :goto_2
    return v3

    :cond_5
    move v0, v4

    .line 1813
    goto :goto_0

    :cond_6
    move v0, v4

    .line 1816
    goto :goto_1

    .line 1826
    :cond_7
    invoke-direct {p0}, Lcom/htc/app/FilePickerActivity;->hideSearchBar()V

    goto :goto_2

    .line 1831
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_2
.end method

.method public onLowMemory()V
    .locals 2

    .prologue
    .line 1274
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    .line 1275
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1276
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    if-eqz v0, :cond_0

    .line 1277
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v0}, Lcom/htc/app/FilePickerListAdapter;->stopScan()V

    .line 1278
    :cond_0
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mDataSetChangedListener:Lcom/htc/app/FilePickerListAdapter$onDataSetChangedListener;

    if-eqz v0, :cond_1

    .line 1279
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mDataSetChangedListener:Lcom/htc/app/FilePickerListAdapter$onDataSetChangedListener;

    invoke-interface {v0}, Lcom/htc/app/FilePickerListAdapter$onDataSetChangedListener;->onFileScanEnd()V

    .line 1281
    :cond_1
    const-string v0, "FilePickerActivity"

    const-string v1, "FilePicker->onLowMemory()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 3
    .parameter "featureId"
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1336
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 1337
    .local v0, id:I
    packed-switch v0, :pswitch_data_0

    .line 1358
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 1339
    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/htc/app/FilePickerActivity;->showDialog(I)V

    goto :goto_0

    .line 1342
    :pswitch_1
    iget-object v1, p0, Lcom/htc/app/FilePickerActivity;->mSearchBar:Lcom/htc/widget/SearchBoxView;

    invoke-virtual {v1}, Lcom/htc/widget/SearchBoxView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1343
    invoke-direct {p0}, Lcom/htc/app/FilePickerActivity;->showSearchBar()V

    goto :goto_0

    .line 1345
    :cond_0
    invoke-direct {p0}, Lcom/htc/app/FilePickerActivity;->hideSearchBar()V

    goto :goto_0

    .line 1348
    :pswitch_2
    iget v2, p0, Lcom/htc/app/FilePickerActivity;->mCurrentViewType:I

    if-nez v2, :cond_1

    const/4 v1, 0x2

    :cond_1
    invoke-direct {p0, v1}, Lcom/htc/app/FilePickerActivity;->changeCurrentView(I)V

    goto :goto_0

    .line 1352
    :pswitch_3
    invoke-direct {p0, v2}, Lcom/htc/app/FilePickerActivity;->selectAll(Z)V

    goto :goto_0

    .line 1355
    :pswitch_4
    invoke-direct {p0, v1}, Lcom/htc/app/FilePickerActivity;->selectAll(Z)V

    goto :goto_0

    .line 1337
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 406
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 408
    invoke-virtual {p0, p1}, Lcom/htc/app/FilePickerActivity;->setIntent(Landroid/content/Intent;)V

    .line 410
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 1
    .parameter "id"
    .parameter "dialog"
    .parameter "args"

    .prologue
    .line 1474
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/app/FilePickerActivity;->mIsShowDialog:Z

    .line 1475
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 12
    .parameter "menu"

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1286
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 1287
    iget-boolean v0, p0, Lcom/htc/app/FilePickerActivity;->isEnableOptionMenu:Z

    .line 1288
    .local v0, enableOptionMenu:Z
    const/4 v1, 0x0

    .line 1290
    .local v1, enableSearchOptionMenu:Z
    const/4 v3, 0x0

    .line 1291
    .local v3, fileCount:I
    const/4 v6, 0x0

    .line 1296
    .local v6, listCount:I
    const/4 v4, 0x0

    .line 1297
    .local v4, firstLevelFileCount:I
    iget-object v9, p0, Lcom/htc/app/FilePickerActivity;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    if-eqz v9, :cond_0

    .line 1298
    iget-object v9, p0, Lcom/htc/app/FilePickerActivity;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v9}, Lcom/htc/app/FilePickerListAdapter;->getFileCount()I

    move-result v3

    .line 1299
    iget-object v9, p0, Lcom/htc/app/FilePickerActivity;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v9}, Lcom/htc/app/FilePickerListAdapter;->getCount()I

    move-result v6

    .line 1301
    :cond_0
    iget-object v9, p0, Lcom/htc/app/FilePickerActivity;->moreExAdapter:Lcom/htc/app/FilePickerFolderAdapter;

    if-eqz v9, :cond_1

    .line 1302
    iget-object v9, p0, Lcom/htc/app/FilePickerActivity;->moreExAdapter:Lcom/htc/app/FilePickerFolderAdapter;

    invoke-virtual {v9}, Lcom/htc/app/FilePickerFolderAdapter;->getFirstLevelFileCount()I

    move-result v4

    .line 1304
    :cond_1
    iget v9, p0, Lcom/htc/app/FilePickerActivity;->mCurrentViewType:I

    if-ne v9, v10, :cond_2

    .line 1305
    iget-object v9, p0, Lcom/htc/app/FilePickerActivity;->moreExAdapter:Lcom/htc/app/FilePickerFolderAdapter;

    invoke-virtual {v9}, Lcom/htc/app/FilePickerFolderAdapter;->isCanSort()Z

    move-result v9

    if-eqz v9, :cond_8

    if-le v4, v7, :cond_8

    move v0, v7

    .line 1307
    :goto_0
    iget-boolean v9, p0, Lcom/htc/app/FilePickerActivity;->mIsStopScan:Z

    if-eqz v9, :cond_9

    if-le v4, v7, :cond_9

    move v1, v7

    .line 1309
    :cond_2
    :goto_1
    iget v9, p0, Lcom/htc/app/FilePickerActivity;->mCurrentViewType:I

    if-nez v9, :cond_3

    .line 1310
    iget-boolean v9, p0, Lcom/htc/app/FilePickerActivity;->mIsStopScan:Z

    if-eqz v9, :cond_a

    if-lez v6, :cond_a

    move v0, v7

    .line 1311
    :goto_2
    iget-boolean v9, p0, Lcom/htc/app/FilePickerActivity;->mIsStopScan:Z

    if-eqz v9, :cond_b

    if-lez v3, :cond_b

    move v1, v7

    .line 1314
    :cond_3
    :goto_3
    iget-boolean v9, p0, Lcom/htc/app/FilePickerActivity;->isSdcardRoot:Z

    if-eqz v9, :cond_4

    iget-boolean v9, p0, Lcom/htc/app/FilePickerActivity;->isSDCard:Z

    if-eqz v9, :cond_c

    :cond_4
    move v5, v7

    .line 1315
    .local v5, isVisibleOptionMenu:Z
    :goto_4
    sget-boolean v9, Lcom/htc/app/FilePickerUtil;->IsSupportInternalStorage:Z

    if-eqz v9, :cond_5

    .line 1316
    const/4 v5, 0x1

    .line 1317
    :cond_5
    sget-boolean v9, Lcom/htc/app/FilePickerActivity;->isFolderFileMenuItemEnabled:Z

    if-eqz v9, :cond_d

    if-le v4, v7, :cond_d

    move v2, v7

    .line 1320
    .local v2, enabledFolderFileMenuItem:Z
    :goto_5
    invoke-interface {p1, v8, v1}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 1321
    invoke-interface {p1, v10, v0}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 1322
    iget-boolean v9, p0, Lcom/htc/app/FilePickerActivity;->isEnableOptionMenu:Z

    invoke-interface {p1, v7, v9}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 1323
    invoke-interface {p1, v11, v2}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 1324
    invoke-interface {p1, v8, v5}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1325
    if-eqz v5, :cond_6

    iget v9, p0, Lcom/htc/app/FilePickerActivity;->mSelectionType:I

    if-ne v9, v7, :cond_6

    iget v9, p0, Lcom/htc/app/FilePickerActivity;->mCurrentViewType:I

    if-nez v9, :cond_6

    move v8, v7

    :cond_6
    invoke-interface {p1, v7, v8}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1328
    sget-boolean v8, Lcom/htc/app/FilePickerActivity;->isFolderFileMenuItemEnabled:Z

    if-eqz v8, :cond_7

    .line 1329
    invoke-interface {p1, v11, v5}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1330
    :cond_7
    invoke-interface {p1, v10, v5}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1331
    return v7

    .end local v2           #enabledFolderFileMenuItem:Z
    .end local v5           #isVisibleOptionMenu:Z
    :cond_8
    move v0, v8

    .line 1305
    goto :goto_0

    :cond_9
    move v1, v8

    .line 1307
    goto :goto_1

    :cond_a
    move v0, v8

    .line 1310
    goto :goto_2

    :cond_b
    move v1, v8

    .line 1311
    goto :goto_3

    :cond_c
    move v5, v8

    .line 1314
    goto :goto_4

    .restart local v5       #isVisibleOptionMenu:Z
    :cond_d
    move v2, v8

    .line 1317
    goto :goto_5
.end method

.method public abstract onResult([Ljava/lang/String;II)V
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 966
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 967
    iget v0, p0, Lcom/htc/app/FilePickerActivity;->mCurrentViewType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->moreExAdapter:Lcom/htc/app/FilePickerFolderAdapter;

    if-eqz v0, :cond_0

    .line 968
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->moreExAdapter:Lcom/htc/app/FilePickerFolderAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerFolderAdapter;->setScanThreadMinPriority(Z)V

    .line 969
    :cond_0
    invoke-direct {p0}, Lcom/htc/app/FilePickerActivity;->ListViewOnStart()V

    .line 970
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1022
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    if-eqz v0, :cond_0

    .line 1023
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerListAdapter;->setScanThreadMinPriority(Z)V

    .line 1024
    :cond_0
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->moreExAdapter:Lcom/htc/app/FilePickerFolderAdapter;

    if-eqz v0, :cond_1

    .line 1025
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity;->moreExAdapter:Lcom/htc/app/FilePickerFolderAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerFolderAdapter;->setScanThreadMinPriority(Z)V

    .line 1026
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1028
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/app/FilePickerActivity;->mActivityStarted:Z

    .line 1029
    return-void
.end method

.method setHeaderViewText(Ljava/lang/String;)V
    .locals 9
    .parameter "headerViewText"

    .prologue
    const/16 v8, 0xb

    const/4 v7, 0x7

    .line 1848
    iget-object v5, p0, Lcom/htc/app/FilePickerActivity;->mFileListHeader:Landroid/view/View;

    const v6, 0x20200ec

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1852
    .local v4, headerTitle:Landroid/widget/TextView;
    move-object v3, p1

    .line 1853
    .local v3, filePath:Ljava/lang/String;
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v6, 0x1b

    if-eq v5, v6, :cond_0

    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 1856
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 1857
    .local v0, am:Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 1858
    .local v1, config:Landroid/content/res/Configuration;
    iget-object v5, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sget-object v6, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1859
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v7, :cond_2

    const-string v5, "/sdcard"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1860
    const-string v3, "/\u5b58\u50a8\u5361"
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1879
    .end local v0           #am:Landroid/app/IActivityManager;
    .end local v1           #config:Landroid/content/res/Configuration;
    :cond_1
    :goto_0
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1883
    return-void

    .line 1861
    .restart local v0       #am:Landroid/app/IActivityManager;
    .restart local v1       #config:Landroid/content/res/Configuration;
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v7, :cond_3

    const-string v5, "/sdcard/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_3

    .line 1863
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/\u5b58\u50a8\u5361/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1865
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v8, :cond_4

    const-string v5, "/mnt/sdcard"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1867
    const-string v3, "/mnt/\u5b58\u50a8\u5361"

    goto :goto_0

    .line 1868
    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v8, :cond_1

    const-string v5, "/mnt/sdcard/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    .line 1870
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/mnt/\u5b58\u50a8\u5361/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0xc

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_0

    .line 1873
    .end local v0           #am:Landroid/app/IActivityManager;
    .end local v1           #config:Landroid/content/res/Configuration;
    :catch_0
    move-exception v2

    .line 1875
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
