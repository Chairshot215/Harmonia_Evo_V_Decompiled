.class public Lcom/htc/home/personalize/WallpaperPicker;
.super Landroid/app/Activity;
.source "WallpaperPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/home/personalize/WallpaperPicker$17;,
        Lcom/htc/home/personalize/WallpaperPicker$RetainNonConfigurationInstance;,
        Lcom/htc/home/personalize/WallpaperPicker$WallpaperType;,
        Lcom/htc/home/personalize/WallpaperPicker$PickerType;
    }
.end annotation


# static fields
.field static final ACTION_SET_WALLPAPER_DOCKMODE:Ljava/lang/String; = "com.htc.intent.ACTION_SET_WALLPAPER_DOCKMODE"

.field private static final CACHE_SIZE:I = 0x14

.field private static final DIALOG_NO_SPACE_MESSAGE:I = 0x0

.field private static final DIALOG_NO_WALLPAPER_MESSAGE:I = 0x1

.field static final EXTRA_CALL_FROM:Ljava/lang/String; = "EXTRA_CALL_FROM"

.field static final EXTRA_LIVE_WALLPAPER_INTENT:Ljava/lang/String; = "android.live_wallpaper.intent"

.field static final EXTRA_LIVE_WALLPAPER_PACKAGE:Ljava/lang/String; = "android.live_wallpaper.package"

.field static final EXTRA_LIVE_WALLPAPER_SETTINGS:Ljava/lang/String; = "android.live_wallpaper.settings"

.field static final EXTRA_WALLPAPER_PATH:Ljava/lang/String; = "EXTRA_WALLPAPER_PATH"

.field private static final EXTRA_WALLPAPER_POSITION:Ljava/lang/String; = "wallpaper_position"

.field private static IMAGE_IDS:[Ljava/lang/Integer; = null

.field private static final MENU_DELETE_ID:I = 0x2

.field private static final MENU_GRID_ID:I = 0x1

.field private static final PANEL_TYPE:Ljava/lang/String; = "panel_type"

.field private static PREVIEW_IDS:[Ljava/lang/Integer; = null

.field private static final REQUEST_ADD_WALLPAPER:I = 0x100

.field private static final REQUEST_SET_WALLPAPER:I = 0x101

.field static final STR_EXTRA_CALL_FROM:Ljava/lang/String; = "dock_mode"

.field private static final TAG:Ljava/lang/String; = "WallpaperPicker"

.field private static THUMB_IDS:[Ljava/lang/Integer;

.field public static localLOGV:Z


# instance fields
.field private gotoGuid:Ljava/lang/String;

.field private final localWallpaperStatusMonitor:Landroid/content/BroadcastReceiver;

.field private mApplyListener:Landroid/view/View$OnClickListener;

.field private mBackgroundId:I

.field public mCSPackageInstalled:Z

.field private mCustomized:Z

.field private mDeckControl:Lcom/htc/widget/DeckControl;

.field private mDeckControlView:Lcom/htc/widget/DeckControlView;

.field private mDefaultConfigPath:Ljava/lang/String;

.field private mDefaultGalleryReader:Lcom/htc/home/personalize/config/GalleryReader;

.field private mDeleteMode:Z

.field private mDeleteNumber:I

.field private mDeleteString:Ljava/lang/String;

.field protected mDeletedIndex:[Z

.field private mDockMode:Z

.field private mFooterBar:Lcom/htc/widget/HtcFooter;

.field private mFooterButtonLeft:Lcom/htc/widget/HtcFooterButton;

.field private mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

.field private mGalleryClick:Lcom/htc/widget/DeckControl$OnItemClickListener;

.field private mGalleryData:Lcom/htc/home/personalize/config/GalleryData;

.field private mGalleryMovement:Lcom/htc/widget/DeckControl$OnMovementListener;

.field private mGallerySelected:Lcom/htc/widget/DeckControl$OnItemSelectedListener;

.field private mGallerySelectedPosition:I

.field private mGalleryTouch:Landroid/view/View$OnTouchListener;

.field private mGetMoreListener:Landroid/view/View$OnClickListener;

.field private mGridAdapter:Lcom/htc/home/personalize/widget/WallpaperGridAdapter;

.field private mGridItemClick:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

.field private mGridView:Lcom/htc/widget/HtcGridView;

.field private final mHandler:Landroid/os/Handler;

.field private mHeaderCountText:Ljava/lang/String;

.field private mHeaderImageRight:Lcom/htc/widget/HeaderBarImage;

.field private mHeaderText:Lcom/htc/widget/HeaderBarText;

.field private mHeaderTitleText:Ljava/lang/String;

.field private mImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mInitProgressDialog:Landroid/app/ProgressDialog;

.field private mIsPickLockScreenWallpaper:Z

.field private mIsWallpaperSet:Z

.field private mItemLabel:Landroid/widget/TextView;

.field private mItemSelected:Z

.field private mNetworkData:Lcom/htc/home/personalize/config/GalleryData;

.field private mPanelAdapter:Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;

.field private mPickerType:Lcom/htc/home/personalize/WallpaperPicker$PickerType;

.field private mPickerTypeChanged:Z

.field mPreloadBackground:Landroid/graphics/Bitmap;

.field private mPreviewListener:Landroid/view/View$OnClickListener;

.field private mPreviews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoveAll:Z

.field private mScrolling:[Z

.field private mSelectedPosition:I

.field private mThumbs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTitlePosition:I

.field private mTouching:Z

.field private mUiHandler:Landroid/os/Handler;

.field private mUpdateCallback:Lcom/htc/home/personalize/WallpaperLoader$UIUpdateCallback;

.field private final mUpdateTitle:Ljava/lang/Runnable;

.field private final mUpdateWallpaper:Ljava/lang/Runnable;

.field private mWallpaperLoader:Lcom/htc/home/personalize/WallpaperLoader;

.field private mWallpaperPosition:I

.field private mWallpaperPreviewed:Z

.field private mWallpaperUpdateCallback:Lcom/htc/home/personalize/widget/WallpaperPanelAdapter$WallpaperUpdateCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 111
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/home/personalize/WallpaperPicker;->localLOGV:Z

    .line 113
    sput-object v1, Lcom/htc/home/personalize/WallpaperPicker;->THUMB_IDS:[Ljava/lang/Integer;

    .line 114
    sput-object v1, Lcom/htc/home/personalize/WallpaperPicker;->PREVIEW_IDS:[Ljava/lang/Integer;

    .line 115
    sput-object v1, Lcom/htc/home/personalize/WallpaperPicker;->IMAGE_IDS:[Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 109
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 133
    const-string v0, "/system/etc/launcher/android"

    iput-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDefaultConfigPath:Ljava/lang/String;

    .line 136
    new-instance v0, Lcom/htc/home/personalize/config/GalleryData;

    invoke-direct {v0}, Lcom/htc/home/personalize/config/GalleryData;-><init>()V

    iput-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker;->mNetworkData:Lcom/htc/home/personalize/config/GalleryData;

    .line 139
    iput-boolean v1, p0, Lcom/htc/home/personalize/WallpaperPicker;->mCustomized:Z

    .line 140
    iput-boolean v1, p0, Lcom/htc/home/personalize/WallpaperPicker;->mIsPickLockScreenWallpaper:Z

    .line 149
    iput-object v2, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    .line 150
    iput-object v2, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDeckControlView:Lcom/htc/widget/DeckControlView;

    .line 155
    iput-object v2, p0, Lcom/htc/home/personalize/WallpaperPicker;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    .line 156
    iput-object v2, p0, Lcom/htc/home/personalize/WallpaperPicker;->mHeaderImageRight:Lcom/htc/widget/HeaderBarImage;

    .line 157
    iput-object v2, p0, Lcom/htc/home/personalize/WallpaperPicker;->mFooterBar:Lcom/htc/widget/HtcFooter;

    .line 158
    iput-object v2, p0, Lcom/htc/home/personalize/WallpaperPicker;->mFooterButtonLeft:Lcom/htc/widget/HtcFooterButton;

    .line 159
    iput-object v2, p0, Lcom/htc/home/personalize/WallpaperPicker;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

    .line 160
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker;->mHeaderTitleText:Ljava/lang/String;

    .line 161
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker;->mHeaderCountText:Ljava/lang/String;

    .line 165
    iput-object v2, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDeletedIndex:[Z

    .line 166
    iput v1, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDeleteNumber:I

    .line 175
    iput v3, p0, Lcom/htc/home/personalize/WallpaperPicker;->mSelectedPosition:I

    .line 177
    iput v3, p0, Lcom/htc/home/personalize/WallpaperPicker;->mWallpaperPosition:I

    .line 178
    iput v1, p0, Lcom/htc/home/personalize/WallpaperPicker;->mTitlePosition:I

    .line 179
    iput v1, p0, Lcom/htc/home/personalize/WallpaperPicker;->mGallerySelectedPosition:I

    .line 181
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker;->mUiHandler:Landroid/os/Handler;

    .line 194
    sget-object v0, Lcom/htc/home/personalize/WallpaperPicker$PickerType;->PANEL:Lcom/htc/home/personalize/WallpaperPicker$PickerType;

    iput-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker;->mPickerType:Lcom/htc/home/personalize/WallpaperPicker$PickerType;

    .line 195
    iput-boolean v1, p0, Lcom/htc/home/personalize/WallpaperPicker;->mPickerTypeChanged:Z

    .line 196
    iput-boolean v1, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDeleteMode:Z

    .line 197
    iput-boolean v1, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDockMode:Z

    .line 203
    iput-boolean v1, p0, Lcom/htc/home/personalize/WallpaperPicker;->mWallpaperPreviewed:Z

    .line 211
    const/4 v0, 0x1

    new-array v0, v0, [Z

    aput-boolean v1, v0, v1

    iput-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker;->mScrolling:[Z

    .line 212
    iput-boolean v1, p0, Lcom/htc/home/personalize/WallpaperPicker;->mTouching:Z

    .line 213
    iput-boolean v1, p0, Lcom/htc/home/personalize/WallpaperPicker;->mItemSelected:Z

    .line 215
    iput-object v2, p0, Lcom/htc/home/personalize/WallpaperPicker;->gotoGuid:Ljava/lang/String;

    .line 216
    iput-boolean v1, p0, Lcom/htc/home/personalize/WallpaperPicker;->mRemoveAll:Z

    .line 218
    iput-object v2, p0, Lcom/htc/home/personalize/WallpaperPicker;->mInitProgressDialog:Landroid/app/ProgressDialog;

    .line 221
    iput-object v2, p0, Lcom/htc/home/personalize/WallpaperPicker;->mPreloadBackground:Landroid/graphics/Bitmap;

    .line 523
    new-instance v0, Lcom/htc/home/personalize/WallpaperPicker$1;

    invoke-direct {v0, p0}, Lcom/htc/home/personalize/WallpaperPicker$1;-><init>(Lcom/htc/home/personalize/WallpaperPicker;)V

    iput-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker;->localWallpaperStatusMonitor:Landroid/content/BroadcastReceiver;

    .line 801
    new-instance v0, Lcom/htc/home/personalize/WallpaperPicker$2;

    invoke-direct {v0, p0}, Lcom/htc/home/personalize/WallpaperPicker$2;-><init>(Lcom/htc/home/personalize/WallpaperPicker;)V

    iput-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker;->mGallerySelected:Lcom/htc/widget/DeckControl$OnItemSelectedListener;

    .line 816
    new-instance v0, Lcom/htc/home/personalize/WallpaperPicker$3;

    invoke-direct {v0, p0}, Lcom/htc/home/personalize/WallpaperPicker$3;-><init>(Lcom/htc/home/personalize/WallpaperPicker;)V

    iput-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker;->mUpdateCallback:Lcom/htc/home/personalize/WallpaperLoader$UIUpdateCallback;

    .line 822
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker;->mHandler:Landroid/os/Handler;

    .line 823
    new-instance v0, Lcom/htc/home/personalize/WallpaperPicker$4;

    invoke-direct {v0, p0}, Lcom/htc/home/personalize/WallpaperPicker$4;-><init>(Lcom/htc/home/personalize/WallpaperPicker;)V

    iput-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker;->mUpdateWallpaper:Ljava/lang/Runnable;

    .line 833
    new-instance v0, Lcom/htc/home/personalize/WallpaperPicker$5;

    invoke-direct {v0, p0}, Lcom/htc/home/personalize/WallpaperPicker$5;-><init>(Lcom/htc/home/personalize/WallpaperPicker;)V

    iput-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker;->mUpdateTitle:Ljava/lang/Runnable;

    .line 850
    new-instance v0, Lcom/htc/home/personalize/WallpaperPicker$6;

    invoke-direct {v0, p0}, Lcom/htc/home/personalize/WallpaperPicker$6;-><init>(Lcom/htc/home/personalize/WallpaperPicker;)V

    iput-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker;->mGalleryClick:Lcom/htc/widget/DeckControl$OnItemClickListener;

    .line 871
    new-instance v0, Lcom/htc/home/personalize/WallpaperPicker$7;

    invoke-direct {v0, p0}, Lcom/htc/home/personalize/WallpaperPicker$7;-><init>(Lcom/htc/home/personalize/WallpaperPicker;)V

    iput-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker;->mGalleryTouch:Landroid/view/View$OnTouchListener;

    .line 897
    new-instance v0, Lcom/htc/home/personalize/WallpaperPicker$8;

    invoke-direct {v0, p0}, Lcom/htc/home/personalize/WallpaperPicker$8;-><init>(Lcom/htc/home/personalize/WallpaperPicker;)V

    iput-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker;->mGalleryMovement:Lcom/htc/widget/DeckControl$OnMovementListener;

    .line 941
    new-instance v0, Lcom/htc/home/personalize/WallpaperPicker$9;

    invoke-direct {v0, p0}, Lcom/htc/home/personalize/WallpaperPicker$9;-><init>(Lcom/htc/home/personalize/WallpaperPicker;)V

    iput-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker;->mGridItemClick:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 1129
    new-instance v0, Lcom/htc/home/personalize/WallpaperPicker$11;

    invoke-direct {v0, p0}, Lcom/htc/home/personalize/WallpaperPicker$11;-><init>(Lcom/htc/home/personalize/WallpaperPicker;)V

    iput-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker;->mApplyListener:Landroid/view/View$OnClickListener;

    .line 1140
    new-instance v0, Lcom/htc/home/personalize/WallpaperPicker$12;

    invoke-direct {v0, p0}, Lcom/htc/home/personalize/WallpaperPicker$12;-><init>(Lcom/htc/home/personalize/WallpaperPicker;)V

    iput-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker;->mPreviewListener:Landroid/view/View$OnClickListener;

    .line 1172
    new-instance v0, Lcom/htc/home/personalize/WallpaperPicker$13;

    invoke-direct {v0, p0}, Lcom/htc/home/personalize/WallpaperPicker$13;-><init>(Lcom/htc/home/personalize/WallpaperPicker;)V

    iput-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker;->mGetMoreListener:Landroid/view/View$OnClickListener;

    .line 1644
    new-instance v0, Lcom/htc/home/personalize/WallpaperPicker$16;

    invoke-direct {v0, p0}, Lcom/htc/home/personalize/WallpaperPicker$16;-><init>(Lcom/htc/home/personalize/WallpaperPicker;)V

    iput-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker;->mWallpaperUpdateCallback:Lcom/htc/home/personalize/widget/WallpaperPanelAdapter$WallpaperUpdateCallback;

    return-void
.end method

.method private SetLockScreenWallPaper(I)V
    .locals 13
    .parameter "position"

    .prologue
    .line 985
    const-string v0, "com.htc.launcher.lockscreen.WallpaperChanged"

    .line 986
    .local v0, INTENT_ACTION_WALLPAPER_CHANGED:Ljava/lang/String;
    const-string v1, "/data/misc/lockscreen"

    .line 987
    .local v1, LOCKSCREEN_ROOT_PATH:Ljava/lang/String;
    const-string v2, "/data/misc/lockscreen/lock_screen_port"

    .line 991
    .local v2, LOCKSCREEN_WALLPAPER_PORTRAIT:Ljava/lang/String;
    const-string v10, "window"

    invoke-virtual {p0, v10}, Lcom/htc/home/personalize/WallpaperPicker;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    .line 992
    .local v6, manager:Landroid/view/WindowManager;
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    .line 994
    .local v3, display:Landroid/view/Display;
    :try_start_0
    iget-object v10, p0, Lcom/htc/home/personalize/WallpaperPicker;->mPickerType:Lcom/htc/home/personalize/WallpaperPicker$PickerType;

    sget-object v11, Lcom/htc/home/personalize/WallpaperPicker$PickerType;->GRID:Lcom/htc/home/personalize/WallpaperPicker$PickerType;

    if-ne v10, v11, :cond_0

    add-int/lit8 v5, p1, -0x1

    .line 995
    .local v5, index:I
    :goto_0
    iget-object v10, p0, Lcom/htc/home/personalize/WallpaperPicker;->mNetworkData:Lcom/htc/home/personalize/config/GalleryData;

    invoke-virtual {v10}, Lcom/htc/home/personalize/config/GalleryData;->size()I

    move-result v7

    .line 997
    .local v7, networkSize:I
    if-ge v5, v7, :cond_1

    .line 998
    new-instance v8, Ljava/io/BufferedInputStream;

    new-instance v10, Ljava/io/FileInputStream;

    iget-object v11, p0, Lcom/htc/home/personalize/WallpaperPicker;->mNetworkData:Lcom/htc/home/personalize/config/GalleryData;

    invoke-virtual {v11, v5}, Lcom/htc/home/personalize/config/GalleryData;->getImagePath(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1008
    .local v8, stream:Ljava/io/InputStream;
    :goto_1
    new-instance v9, Lcom/htc/home/personalize/WallpaperPicker$10;

    const-string v10, "changeFirstLockscreenWallpaper"

    invoke-direct {v9, p0, v10, v8, v3}, Lcom/htc/home/personalize/WallpaperPicker$10;-><init>(Lcom/htc/home/personalize/WallpaperPicker;Ljava/lang/String;Ljava/io/InputStream;Landroid/view/Display;)V

    .line 1056
    .local v9, thread:Ljava/lang/Thread;
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1062
    .end local v5           #index:I
    .end local v7           #networkSize:I
    .end local v8           #stream:Ljava/io/InputStream;
    .end local v9           #thread:Ljava/lang/Thread;
    :goto_2
    invoke-static {p0}, Lcom/htc/home/personalize/PersonalizeCarousel;->launchHome(Landroid/content/Context;)V

    .line 1063
    new-instance v10, Landroid/content/Intent;

    const-string v11, "com.htc.home.personalize.ACTION_FINISH_AND_LAUNCH_HOME"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v10}, Lcom/htc/home/personalize/WallpaperPicker;->sendBroadcast(Landroid/content/Intent;)V

    .line 1064
    invoke-virtual {p0}, Lcom/htc/home/personalize/WallpaperPicker;->finish()V

    .line 1065
    return-void

    :cond_0
    move v5, p1

    .line 994
    goto :goto_0

    .line 1001
    .restart local v5       #index:I
    .restart local v7       #networkSize:I
    :cond_1
    :try_start_1
    iget-boolean v10, p0, Lcom/htc/home/personalize/WallpaperPicker;->mCustomized:Z

    if-eqz v10, :cond_2

    .line 1002
    new-instance v8, Ljava/io/BufferedInputStream;

    new-instance v10, Ljava/io/FileInputStream;

    iget-object v11, p0, Lcom/htc/home/personalize/WallpaperPicker;->mGalleryData:Lcom/htc/home/personalize/config/GalleryData;

    sub-int v12, v5, v7

    invoke-virtual {v11, v12}, Lcom/htc/home/personalize/config/GalleryData;->getImagePath(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .restart local v8       #stream:Ljava/io/InputStream;
    goto :goto_1

    .line 1005
    .end local v8           #stream:Ljava/io/InputStream;
    :cond_2
    invoke-virtual {p0}, Lcom/htc/home/personalize/WallpaperPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    iget-object v10, p0, Lcom/htc/home/personalize/WallpaperPicker;->mImages:Ljava/util/ArrayList;

    sub-int v12, v5, v7

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v11, v10}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v8

    .restart local v8       #stream:Ljava/io/InputStream;
    goto :goto_1

    .line 1057
    .end local v5           #index:I
    .end local v7           #networkSize:I
    .end local v8           #stream:Ljava/io/InputStream;
    :catch_0
    move-exception v4

    .line 1059
    .local v4, e1:Ljava/io/FileNotFoundException;
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_2
.end method

.method static synthetic access$100(Lcom/htc/home/personalize/WallpaperPicker;)Lcom/htc/home/personalize/config/GalleryData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker;->mNetworkData:Lcom/htc/home/personalize/config/GalleryData;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/home/personalize/WallpaperPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget v0, p0, Lcom/htc/home/personalize/WallpaperPicker;->mGallerySelectedPosition:I

    return v0
.end method

.method static synthetic access$1002(Lcom/htc/home/personalize/WallpaperPicker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput p1, p0, Lcom/htc/home/personalize/WallpaperPicker;->mGallerySelectedPosition:I

    return p1
.end method

.method static synthetic access$1100(Lcom/htc/home/personalize/WallpaperPicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/htc/home/personalize/WallpaperPicker;->mItemSelected:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/htc/home/personalize/WallpaperPicker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/htc/home/personalize/WallpaperPicker;->mItemSelected:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/htc/home/personalize/WallpaperPicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/htc/home/personalize/WallpaperPicker;->mTouching:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/htc/home/personalize/WallpaperPicker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/htc/home/personalize/WallpaperPicker;->mTouching:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/htc/home/personalize/WallpaperPicker;)[Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker;->mScrolling:[Z

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/home/personalize/WallpaperPicker;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/WallpaperPicker;->updateButtons(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/htc/home/personalize/WallpaperPicker;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker;->mUpdateWallpaper:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/home/personalize/WallpaperPicker;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/home/personalize/WallpaperPicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/htc/home/personalize/WallpaperPicker;->checkUpdateTitle()V

    return-void
.end method

.method static synthetic access$1800(Lcom/htc/home/personalize/WallpaperPicker;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker;->mUpdateTitle:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/htc/home/personalize/WallpaperPicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDeleteMode:Z

    return v0
.end method

.method static synthetic access$200(Lcom/htc/home/personalize/WallpaperPicker;)Lcom/htc/home/personalize/WallpaperLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker;->mWallpaperLoader:Lcom/htc/home/personalize/WallpaperLoader;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/home/personalize/WallpaperPicker;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/WallpaperPicker;->handleDeleteCount(Z)V

    return-void
.end method

.method static synthetic access$2100(Lcom/htc/home/personalize/WallpaperPicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/htc/home/personalize/WallpaperPicker;->mIsPickLockScreenWallpaper:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/htc/home/personalize/WallpaperPicker;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/WallpaperPicker;->SetLockScreenWallPaper(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/htc/home/personalize/WallpaperPicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/htc/home/personalize/WallpaperPicker;->goToWallpaperPreview()V

    return-void
.end method

.method static synthetic access$2400(Lcom/htc/home/personalize/WallpaperPicker;)Lcom/htc/widget/DeckControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/htc/home/personalize/WallpaperPicker;Landroid/view/View;Landroid/view/animation/Animation;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 109
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/home/personalize/WallpaperPicker;->safeStartAnimation(Landroid/view/View;Landroid/view/animation/Animation;IZ)V

    return-void
.end method

.method static synthetic access$2600(Lcom/htc/home/personalize/WallpaperPicker;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/WallpaperPicker;->selectWallpaper(I)V

    return-void
.end method

.method static synthetic access$2700(Lcom/htc/home/personalize/WallpaperPicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/htc/home/personalize/WallpaperPicker;->deleteWallpaper()V

    return-void
.end method

.method static synthetic access$2800(Lcom/htc/home/personalize/WallpaperPicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/htc/home/personalize/WallpaperPicker;->mWallpaperPreviewed:Z

    return v0
.end method

.method static synthetic access$2900(Lcom/htc/home/personalize/WallpaperPicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/htc/home/personalize/WallpaperPicker;->goToWallpaperMain()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/home/personalize/WallpaperPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget v0, p0, Lcom/htc/home/personalize/WallpaperPicker;->mSelectedPosition:I

    return v0
.end method

.method static synthetic access$3000(Lcom/htc/home/personalize/WallpaperPicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/htc/home/personalize/WallpaperPicker;->showAddWallpaper()V

    return-void
.end method

.method static synthetic access$302(Lcom/htc/home/personalize/WallpaperPicker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput p1, p0, Lcom/htc/home/personalize/WallpaperPicker;->mSelectedPosition:I

    return p1
.end method

.method static synthetic access$3102(Lcom/htc/home/personalize/WallpaperPicker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/htc/home/personalize/WallpaperPicker;->mIsWallpaperSet:Z

    return p1
.end method

.method static synthetic access$400(Lcom/htc/home/personalize/WallpaperPicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDockMode:Z

    return v0
.end method

.method static synthetic access$500(Lcom/htc/home/personalize/WallpaperPicker;)Lcom/htc/home/personalize/WallpaperPicker$PickerType;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker;->mPickerType:Lcom/htc/home/personalize/WallpaperPicker$PickerType;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/home/personalize/WallpaperPicker;)Lcom/htc/home/personalize/widget/WallpaperGridAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker;->mGridAdapter:Lcom/htc/home/personalize/widget/WallpaperGridAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/home/personalize/WallpaperPicker;)Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker;->mPanelAdapter:Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/home/personalize/WallpaperPicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/htc/home/personalize/WallpaperPicker;->updateTitle()V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/home/personalize/WallpaperPicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/htc/home/personalize/WallpaperPicker;->loadNetworkWallpapers()V

    return-void
.end method

.method private checkUpdateTitle()V
    .locals 2

    .prologue
    .line 843
    iget-object v1, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    invoke-virtual {v1}, Lcom/htc/widget/DeckControl;->getSelection()I

    move-result v0

    .line 844
    .local v0, position:I
    iget v1, p0, Lcom/htc/home/personalize/WallpaperPicker;->mTitlePosition:I

    if-eq v0, v1, :cond_0

    .line 845
    iput v0, p0, Lcom/htc/home/personalize/WallpaperPicker;->mTitlePosition:I

    iput v0, p0, Lcom/htc/home/personalize/WallpaperPicker;->mSelectedPosition:I

    .line 846
    invoke-direct {p0}, Lcom/htc/home/personalize/WallpaperPicker;->updateTitle()V

    .line 848
    :cond_0
    return-void
.end method

.method private deleteWallpaper()V
    .locals 5

    .prologue
    .line 1160
    iget-object v3, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDeletedIndex:[Z

    array-length v3, v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    .line 1161
    iget-object v3, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDeletedIndex:[Z

    aget-boolean v3, v3, v1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1162
    move v2, v1

    .line 1163
    .local v2, index:I
    iget-object v3, p0, Lcom/htc/home/personalize/WallpaperPicker;->mNetworkData:Lcom/htc/home/personalize/config/GalleryData;

    invoke-virtual {v3, v2}, Lcom/htc/home/personalize/config/GalleryData;->get(I)Lcom/htc/home/personalize/config/WallpaperData;

    move-result-object v0

    .line 1164
    .local v0, data:Lcom/htc/home/personalize/config/WallpaperData;
    iget-object v3, p0, Lcom/htc/home/personalize/WallpaperPicker;->mNetworkData:Lcom/htc/home/personalize/config/GalleryData;

    invoke-virtual {v3, v2}, Lcom/htc/home/personalize/config/GalleryData;->delete(I)V

    .line 1165
    iget-object v3, v0, Lcom/htc/home/personalize/config/WallpaperData;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/htc/home/personalize/localresource/LocalResource;

    invoke-virtual {v3}, Lcom/htc/home/personalize/localresource/LocalResource;->removeOrCancel()V

    .line 1160
    .end local v0           #data:Lcom/htc/home/personalize/config/WallpaperData;
    .end local v2           #index:I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1168
    :cond_1
    invoke-direct {p0}, Lcom/htc/home/personalize/WallpaperPicker;->goToWallpaperMain()V

    .line 1169
    iget-object v3, p0, Lcom/htc/home/personalize/WallpaperPicker;->mPanelAdapter:Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;

    invoke-virtual {v3}, Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;->notifyDataSetChanged()V

    .line 1170
    return-void
.end method

.method private findWallpapers()V
    .locals 12

    .prologue
    .line 637
    invoke-direct {p0}, Lcom/htc/home/personalize/WallpaperPicker;->initWallpapers()V

    .line 639
    new-instance v10, Ljava/util/ArrayList;

    sget-object v11, Lcom/htc/home/personalize/WallpaperPicker;->THUMB_IDS:[Ljava/lang/Integer;

    array-length v11, v11

    add-int/lit8 v11, v11, 0x4

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v10, p0, Lcom/htc/home/personalize/WallpaperPicker;->mThumbs:Ljava/util/ArrayList;

    .line 640
    iget-object v10, p0, Lcom/htc/home/personalize/WallpaperPicker;->mThumbs:Ljava/util/ArrayList;

    sget-object v11, Lcom/htc/home/personalize/WallpaperPicker;->THUMB_IDS:[Ljava/lang/Integer;

    invoke-static {v10, v11}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 642
    new-instance v10, Ljava/util/ArrayList;

    sget-object v11, Lcom/htc/home/personalize/WallpaperPicker;->IMAGE_IDS:[Ljava/lang/Integer;

    array-length v11, v11

    add-int/lit8 v11, v11, 0x4

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v10, p0, Lcom/htc/home/personalize/WallpaperPicker;->mImages:Ljava/util/ArrayList;

    .line 643
    iget-object v10, p0, Lcom/htc/home/personalize/WallpaperPicker;->mImages:Ljava/util/ArrayList;

    sget-object v11, Lcom/htc/home/personalize/WallpaperPicker;->IMAGE_IDS:[Ljava/lang/Integer;

    invoke-static {v10, v11}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 645
    new-instance v10, Ljava/util/ArrayList;

    sget-object v11, Lcom/htc/home/personalize/WallpaperPicker;->PREVIEW_IDS:[Ljava/lang/Integer;

    array-length v11, v11

    add-int/lit8 v11, v11, 0x4

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v10, p0, Lcom/htc/home/personalize/WallpaperPicker;->mPreviews:Ljava/util/ArrayList;

    .line 646
    iget-object v10, p0, Lcom/htc/home/personalize/WallpaperPicker;->mPreviews:Ljava/util/ArrayList;

    sget-object v11, Lcom/htc/home/personalize/WallpaperPicker;->PREVIEW_IDS:[Ljava/lang/Integer;

    invoke-static {v10, v11}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 648
    invoke-virtual {p0}, Lcom/htc/home/personalize/WallpaperPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 649
    .local v8, resources:Landroid/content/res/Resources;
    const v10, 0x7f050006

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 650
    .local v2, extras:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/home/personalize/WallpaperPicker;->getApplication()Landroid/app/Application;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 652
    .local v5, packageName:Ljava/lang/String;
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 653
    .local v1, extra:Ljava/lang/String;
    const-string v10, "drawable"

    invoke-virtual {v8, v1, v10, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 654
    .local v7, res:I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_small"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "drawable"

    invoke-virtual {v8, v10, v11, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 655
    .local v9, thumbRes:I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_preview"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "drawable"

    invoke-virtual {v8, v10, v11, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 657
    .local v6, previewRes:I
    if-eqz v7, :cond_0

    if-eqz v9, :cond_0

    if-eqz v6, :cond_0

    .line 658
    iget-object v10, p0, Lcom/htc/home/personalize/WallpaperPicker;->mImages:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 659
    iget-object v10, p0, Lcom/htc/home/personalize/WallpaperPicker;->mThumbs:Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 660
    iget-object v10, p0, Lcom/htc/home/personalize/WallpaperPicker;->mPreviews:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 652
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 663
    .end local v1           #extra:Ljava/lang/String;
    .end local v6           #previewRes:I
    .end local v7           #res:I
    .end local v9           #thumbRes:I
    :cond_1
    return-void
.end method

.method private getAdapterSize()I
    .locals 2

    .prologue
    .line 1610
    const/4 v0, 0x0

    .line 1611
    .local v0, size:I
    iget-boolean v1, p0, Lcom/htc/home/personalize/WallpaperPicker;->mCustomized:Z

    if-eqz v1, :cond_2

    .line 1612
    iget-object v1, p0, Lcom/htc/home/personalize/WallpaperPicker;->mNetworkData:Lcom/htc/home/personalize/config/GalleryData;

    if-eqz v1, :cond_0

    .line 1613
    iget-object v1, p0, Lcom/htc/home/personalize/WallpaperPicker;->mNetworkData:Lcom/htc/home/personalize/config/GalleryData;

    invoke-virtual {v1}, Lcom/htc/home/personalize/config/GalleryData;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 1615
    :cond_0
    iget-object v1, p0, Lcom/htc/home/personalize/WallpaperPicker;->mGalleryData:Lcom/htc/home/personalize/config/GalleryData;

    if-eqz v1, :cond_1

    .line 1616
    iget-object v1, p0, Lcom/htc/home/personalize/WallpaperPicker;->mGalleryData:Lcom/htc/home/personalize/config/GalleryData;

    invoke-virtual {v1}, Lcom/htc/home/personalize/config/GalleryData;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 1626
    :cond_1
    :goto_0
    return v0

    .line 1619
    :cond_2
    iget-object v1, p0, Lcom/htc/home/personalize/WallpaperPicker;->mNetworkData:Lcom/htc/home/personalize/config/GalleryData;

    if-eqz v1, :cond_3

    .line 1620
    iget-object v1, p0, Lcom/htc/home/personalize/WallpaperPicker;->mNetworkData:Lcom/htc/home/personalize/config/GalleryData;

    invoke-virtual {v1}, Lcom/htc/home/personalize/config/GalleryData;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 1622
    :cond_3
    iget-object v1, p0, Lcom/htc/home/personalize/WallpaperPicker;->mThumbs:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 1623
    iget-object v1, p0, Lcom/htc/home/personalize/WallpaperPicker;->mThumbs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private getIndexByGuid(Lcom/htc/home/personalize/localresource/LocalResource;)I
    .locals 3
    .parameter "res"

    .prologue
    .line 1525
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/home/personalize/WallpaperPicker;->mNetworkData:Lcom/htc/home/personalize/config/GalleryData;

    invoke-virtual {v1}, Lcom/htc/home/personalize/config/GalleryData;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1526
    iget-object v1, p0, Lcom/htc/home/personalize/WallpaperPicker;->mNetworkData:Lcom/htc/home/personalize/config/GalleryData;

    invoke-virtual {v1, v0}, Lcom/htc/home/personalize/config/GalleryData;->getImagePath(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/home/personalize/localresource/LocalResource;->getResourcePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1530
    .end local v0           #i:I
    :goto_1
    return v0

    .line 1525
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1530
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getLabel(I)Ljava/lang/String;
    .locals 3
    .parameter "position"

    .prologue
    .line 1308
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/WallpaperPicker;->getWallpaperTypeByPosition(I)Lcom/htc/home/personalize/WallpaperPicker$WallpaperType;

    move-result-object v1

    .line 1310
    .local v1, wallpaperType:Lcom/htc/home/personalize/WallpaperPicker$WallpaperType;
    sget-object v2, Lcom/htc/home/personalize/WallpaperPicker$WallpaperType;->NETWORK:Lcom/htc/home/personalize/WallpaperPicker$WallpaperType;

    if-ne v1, v2, :cond_0

    .line 1311
    iget-object v2, p0, Lcom/htc/home/personalize/WallpaperPicker;->mNetworkData:Lcom/htc/home/personalize/config/GalleryData;

    invoke-virtual {v2, p1}, Lcom/htc/home/personalize/config/GalleryData;->get(I)Lcom/htc/home/personalize/config/WallpaperData;

    move-result-object v0

    .line 1312
    .local v0, data:Lcom/htc/home/personalize/config/WallpaperData;
    iget-object v2, v0, Lcom/htc/home/personalize/config/WallpaperData;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/htc/home/personalize/abstractresource/Resource;

    invoke-virtual {v2}, Lcom/htc/home/personalize/abstractresource/Resource;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    .line 1317
    .end local v0           #data:Lcom/htc/home/personalize/config/WallpaperData;
    :goto_0
    return-object v2

    .line 1314
    :cond_0
    sget-object v2, Lcom/htc/home/personalize/WallpaperPicker$WallpaperType;->BUILDIN:Lcom/htc/home/personalize/WallpaperPicker$WallpaperType;

    if-ne v1, v2, :cond_1

    .line 1315
    const-string v2, ""

    goto :goto_0

    .line 1317
    :cond_1
    const-string v2, ""

    goto :goto_0
.end method

.method public static getPanelType(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 484
    const/4 v1, 0x1

    .line 485
    .local v1, value:Z
    const-string v2, "WallpaperPicker"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 486
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v2, "panel_type"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 487
    const-string v2, "panel_type"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 488
    :cond_0
    return v1
.end method

.method private getTotalWallpaperCount()I
    .locals 2

    .prologue
    .line 1332
    iget-boolean v0, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDeleteMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker;->mNetworkData:Lcom/htc/home/personalize/config/GalleryData;

    invoke-virtual {v0}, Lcom/htc/home/personalize/config/GalleryData;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker;->mNetworkData:Lcom/htc/home/personalize/config/GalleryData;

    invoke-virtual {v0}, Lcom/htc/home/personalize/config/GalleryData;->size()I

    move-result v1

    iget-boolean v0, p0, Lcom/htc/home/personalize/WallpaperPicker;->mCustomized:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker;->mGalleryData:Lcom/htc/home/personalize/config/GalleryData;

    invoke-virtual {v0}, Lcom/htc/home/personalize/config/GalleryData;->size()I

    move-result v0

    :goto_1
    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker;->mThumbs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_1
.end method

.method private getWallpaperTypeByPosition(I)Lcom/htc/home/personalize/WallpaperPicker$WallpaperType;
    .locals 1
    .parameter "position"

    .prologue
    .line 1322
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker;->mNetworkData:Lcom/htc/home/personalize/config/GalleryData;

    invoke-virtual {v0}, Lcom/htc/home/personalize/config/GalleryData;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 1323
    sget-object v0, Lcom/htc/home/personalize/WallpaperPicker$WallpaperType;->NETWORK:Lcom/htc/home/personalize/WallpaperPicker$WallpaperType;

    .line 1327
    :goto_0
    return-object v0

    .line 1324
    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker;->mNetworkData:Lcom/htc/home/personalize/config/GalleryData;

    invoke-virtual {v0}, Lcom/htc/home/personalize/config/GalleryData;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    invoke-direct {p0}, Lcom/htc/home/personalize/WallpaperPicker;->getTotalWallpaperCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 1325
    sget-object v0, Lcom/htc/home/personalize/WallpaperPicker$WallpaperType;->BUILDIN:Lcom/htc/home/personalize/WallpaperPicker$WallpaperType;

    goto :goto_0

    .line 1327
    :cond_1
    sget-object v0, Lcom/htc/home/personalize/WallpaperPicker$WallpaperType;->INVALID:Lcom/htc/home/personalize/WallpaperPicker$WallpaperType;

    goto :goto_0
.end method

.method private goToWallpaperMain()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 1185
    iput-boolean v5, p0, Lcom/htc/home/personalize/WallpaperPicker;->mWallpaperPreviewed:Z

    .line 1186
    iput-boolean v5, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDeleteMode:Z

    .line 1187
    iput v5, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDeleteNumber:I

    .line 1188
    iget-object v3, p0, Lcom/htc/home/personalize/WallpaperPicker;->mWallpaperLoader:Lcom/htc/home/personalize/WallpaperLoader;

    invoke-virtual {v3, v5}, Lcom/htc/home/personalize/WallpaperLoader;->setDeleteMode(Z)V

    .line 1189
    const v3, 0x7f0b0044

    invoke-virtual {p0, v3}, Lcom/htc/home/personalize/WallpaperPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1190
    .local v1, panel_layout:Landroid/view/View;
    const v3, 0x7f0b0047

    invoke-virtual {p0, v3}, Lcom/htc/home/personalize/WallpaperPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1192
    .local v0, grid_layout:Landroid/view/View;
    iget-boolean v3, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDockMode:Z

    if-eqz v3, :cond_0

    sget-object v2, Lcom/htc/home/personalize/WallpaperPicker$PickerType;->PANEL:Lcom/htc/home/personalize/WallpaperPicker$PickerType;

    .line 1193
    .local v2, tmpPickerType:Lcom/htc/home/personalize/WallpaperPicker$PickerType;
    :goto_0
    sget-object v3, Lcom/htc/home/personalize/WallpaperPicker$17;->$SwitchMap$com$htc$home$personalize$WallpaperPicker$PickerType:[I

    invoke-virtual {v2}, Lcom/htc/home/personalize/WallpaperPicker$PickerType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1237
    :goto_1
    return-void

    .line 1192
    .end local v2           #tmpPickerType:Lcom/htc/home/personalize/WallpaperPicker$PickerType;
    :cond_0
    iget-object v2, p0, Lcom/htc/home/personalize/WallpaperPicker;->mPickerType:Lcom/htc/home/personalize/WallpaperPicker$PickerType;

    goto :goto_0

    .line 1195
    .restart local v2       #tmpPickerType:Lcom/htc/home/personalize/WallpaperPicker$PickerType;
    :pswitch_0
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1196
    iget-object v3, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDeckControlView:Lcom/htc/widget/DeckControlView;

    invoke-virtual {v3, v5}, Lcom/htc/widget/DeckControlView;->setVisibility(I)V

    .line 1197
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1198
    iget-object v3, p0, Lcom/htc/home/personalize/WallpaperPicker;->mGridView:Lcom/htc/widget/HtcGridView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcGridView;->setVisibility(I)V

    .line 1199
    iget-object v3, p0, Lcom/htc/home/personalize/WallpaperPicker;->mPanelAdapter:Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;

    invoke-virtual {v3, v5}, Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;->setDeleteMode(Z)V

    .line 1200
    iget-object v3, p0, Lcom/htc/home/personalize/WallpaperPicker;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v3, v7}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 1201
    iget-boolean v3, p0, Lcom/htc/home/personalize/WallpaperPicker;->mCSPackageInstalled:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDockMode:Z

    if-nez v3, :cond_1

    .line 1202
    iget-object v3, p0, Lcom/htc/home/personalize/WallpaperPicker;->mHeaderImageRight:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v3, v5}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    .line 1206
    :goto_2
    iget-object v3, p0, Lcom/htc/home/personalize/WallpaperPicker;->mFooterButtonLeft:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcFooterButton;->setVisibility(I)V

    .line 1209
    iget-object v3, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    invoke-virtual {v3}, Lcom/htc/widget/DeckControl;->resume()V

    .line 1210
    invoke-direct {p0, v7}, Lcom/htc/home/personalize/WallpaperPicker;->updateButtons(Z)V

    .line 1211
    iget-object v3, p0, Lcom/htc/home/personalize/WallpaperPicker;->mFooterBar:Lcom/htc/widget/HtcFooter;

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcFooter;->setVisibility(I)V

    .line 1212
    iget-object v3, p0, Lcom/htc/home/personalize/WallpaperPicker;->mItemLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1213
    iget-object v3, p0, Lcom/htc/home/personalize/WallpaperPicker;->mPanelAdapter:Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;

    invoke-virtual {v3}, Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;->notifyDataSetChanged()V

    .line 1214
    iget-object v3, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    invoke-virtual {v3}, Lcom/htc/widget/DeckControl;->getSelection()I

    move-result v3

    iput v3, p0, Lcom/htc/home/personalize/WallpaperPicker;->mSelectedPosition:I

    .line 1215
    invoke-direct {p0}, Lcom/htc/home/personalize/WallpaperPicker;->updateTitle()V

    goto :goto_1

    .line 1204
    :cond_1
    iget-object v3, p0, Lcom/htc/home/personalize/WallpaperPicker;->mHeaderImageRight:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v3, v6}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    goto :goto_2

    .line 1218
    :pswitch_1
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1219
    iget-object v3, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDeckControlView:Lcom/htc/widget/DeckControlView;

    invoke-virtual {v3, v6}, Lcom/htc/widget/DeckControlView;->setVisibility(I)V

    .line 1220
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1221
    iget-object v3, p0, Lcom/htc/home/personalize/WallpaperPicker;->mFooterBar:Lcom/htc/widget/HtcFooter;

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcFooter;->setVisibility(I)V

    .line 1222
    iget-boolean v3, p0, Lcom/htc/home/personalize/WallpaperPicker;->mCSPackageInstalled:Z

    if-eqz v3, :cond_2

    .line 1223
    iget-object v3, p0, Lcom/htc/home/personalize/WallpaperPicker;->mHeaderImageRight:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v3, v5}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    .line 1227
    :goto_3
    iget-object v3, p0, Lcom/htc/home/personalize/WallpaperPicker;->mFooterButtonLeft:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcFooterButton;->setVisibility(I)V

    .line 1228
    iget-object v3, p0, Lcom/htc/home/personalize/WallpaperPicker;->mGridAdapter:Lcom/htc/home/personalize/widget/WallpaperGridAdapter;

    invoke-virtual {v3, v5}, Lcom/htc/home/personalize/widget/WallpaperGridAdapter;->setDeleteMode(Z)V

    .line 1229
    iget-object v3, p0, Lcom/htc/home/personalize/WallpaperPicker;->mGridView:Lcom/htc/widget/HtcGridView;

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcGridView;->setVisibility(I)V

    .line 1230
    iget-object v3, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    invoke-virtual {v3}, Lcom/htc/widget/DeckControl;->pause()V

    .line 1231
    invoke-direct {p0}, Lcom/htc/home/personalize/WallpaperPicker;->updateTitle()V

    .line 1232
    iget-object v3, p0, Lcom/htc/home/personalize/WallpaperPicker;->mItemLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1234
    iget-object v3, p0, Lcom/htc/home/personalize/WallpaperPicker;->mGridAdapter:Lcom/htc/home/personalize/widget/WallpaperGridAdapter;

    invoke-virtual {v3}, Lcom/htc/home/personalize/widget/WallpaperGridAdapter;->notifyDataSetChanged()V

    goto/16 :goto_1

    .line 1225
    :cond_2
    iget-object v3, p0, Lcom/htc/home/personalize/WallpaperPicker;->mHeaderImageRight:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v3, v6}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    goto :goto_3

    .line 1193
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private goToWallpaperPreview()V
    .locals 4

    .prologue
    .line 1240
    iget-object v1, p0, Lcom/htc/home/personalize/WallpaperPicker;->mNetworkData:Lcom/htc/home/personalize/config/GalleryData;

    invoke-virtual {v1}, Lcom/htc/home/personalize/config/GalleryData;->size()I

    move-result v2

    iget-boolean v1, p0, Lcom/htc/home/personalize/WallpaperPicker;->mCustomized:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/home/personalize/WallpaperPicker;->mGalleryData:Lcom/htc/home/personalize/config/GalleryData;

    invoke-virtual {v1}, Lcom/htc/home/personalize/config/GalleryData;->size()I

    move-result v1

    :goto_0
    add-int v0, v2, v1

    .line 1242
    .local v0, network_buildInSize:I
    iget-object v1, p0, Lcom/htc/home/personalize/WallpaperPicker;->mPickerType:Lcom/htc/home/personalize/WallpaperPicker$PickerType;

    sget-object v2, Lcom/htc/home/personalize/WallpaperPicker$PickerType;->PANEL:Lcom/htc/home/personalize/WallpaperPicker$PickerType;

    if-ne v1, v2, :cond_0

    .line 1243
    iget-object v1, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    invoke-virtual {v1}, Lcom/htc/widget/DeckControl;->getSelection()I

    move-result v1

    iput v1, p0, Lcom/htc/home/personalize/WallpaperPicker;->mSelectedPosition:I

    .line 1246
    :cond_0
    iget v1, p0, Lcom/htc/home/personalize/WallpaperPicker;->mSelectedPosition:I

    if-lt v1, v0, :cond_2

    .line 1247
    const-string v1, "WallpaperPicker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wrong mSelectedPosition :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/home/personalize/WallpaperPicker;->mSelectedPosition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    :goto_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDeleteNumber:I

    .line 1255
    return-void

    .line 1240
    .end local v0           #network_buildInSize:I
    :cond_1
    iget-object v1, p0, Lcom/htc/home/personalize/WallpaperPicker;->mThumbs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_0

    .line 1248
    .restart local v0       #network_buildInSize:I
    :cond_2
    iget-boolean v1, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDockMode:Z

    if-eqz v1, :cond_3

    .line 1249
    iget v1, p0, Lcom/htc/home/personalize/WallpaperPicker;->mSelectedPosition:I

    invoke-direct {p0, v1}, Lcom/htc/home/personalize/WallpaperPicker;->returnToDockMode(I)V

    goto :goto_1

    .line 1251
    :cond_3
    iget v1, p0, Lcom/htc/home/personalize/WallpaperPicker;->mSelectedPosition:I

    invoke-direct {p0, v1}, Lcom/htc/home/personalize/WallpaperPicker;->setImageView(I)V

    goto :goto_1
.end method

.method private handleDeleteCount(Z)V
    .locals 6
    .parameter "isChecked"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 969
    if-eqz p1, :cond_1

    .line 970
    iget v1, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDeleteNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDeleteNumber:I

    .line 971
    iget v1, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDeleteNumber:I

    if-ne v1, v4, :cond_0

    .line 972
    iget-object v1, p0, Lcom/htc/home/personalize/WallpaperPicker;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 980
    :cond_0
    :goto_0
    const-string v1, "%s (%d)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDeleteString:Ljava/lang/String;

    aput-object v3, v2, v5

    iget v3, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDeleteNumber:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 981
    .local v0, strFooterButtonRightText:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/home/personalize/WallpaperPicker;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    .line 982
    return-void

    .line 975
    .end local v0           #strFooterButtonRightText:Ljava/lang/String;
    :cond_1
    iget v1, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDeleteNumber:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDeleteNumber:I

    .line 976
    iget v1, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDeleteNumber:I

    if-nez v1, :cond_0

    .line 977
    iget-object v1, p0, Lcom/htc/home/personalize/WallpaperPicker;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v1, v5}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    goto :goto_0
.end method

.method private initDefaultView()V
    .locals 5

    .prologue
    .line 463
    invoke-virtual {p0}, Lcom/htc/home/personalize/WallpaperPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02000f

    invoke-static {}, Lcom/htc/home/personalize/util/BitmapUtils;->getWallpaperOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/home/personalize/WallpaperPicker;->mPreloadBackground:Landroid/graphics/Bitmap;

    .line 465
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030010

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 466
    .local v0, layout:Landroid/view/View;
    const v2, 0x7f0b0037

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 467
    .local v1, wallpaper:Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/htc/home/personalize/WallpaperPicker;->mPreloadBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 469
    iget-object v2, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    invoke-virtual {v2, v0}, Lcom/htc/widget/DeckControl;->setDefaultView(Landroid/view/View;)V

    .line 470
    return-void
.end method

.method private initWallpapers()V
    .locals 15

    .prologue
    const/16 v14, 0xa

    const/4 v13, 0x0

    .line 666
    sget-object v11, Lcom/htc/home/personalize/WallpaperPicker;->THUMB_IDS:[Ljava/lang/Integer;

    if-eqz v11, :cond_0

    sget-object v11, Lcom/htc/home/personalize/WallpaperPicker;->IMAGE_IDS:[Ljava/lang/Integer;

    if-eqz v11, :cond_0

    sget-object v11, Lcom/htc/home/personalize/WallpaperPicker;->PREVIEW_IDS:[Ljava/lang/Integer;

    if-eqz v11, :cond_0

    .line 719
    :goto_0
    return-void

    .line 669
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 670
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 671
    .local v6, listSmall:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 673
    .local v5, listPreview:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/htc/home/personalize/WallpaperPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 674
    .local v10, res:Landroid/content/res/Resources;
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    const/16 v11, 0x1e

    if-ge v0, v11, :cond_5

    .line 676
    const-string v7, "htc_wallpaper_"

    .line 677
    .local v7, name:Ljava/lang/String;
    if-ge v0, v14, :cond_2

    .line 678
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "0"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 683
    :goto_2
    const-string v11, "drawable"

    const-string v12, "com.htc.home.personalize"

    invoke-virtual {v10, v7, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 687
    .local v1, id:I
    const-string v9, "htc_wallpaper_small_"

    .line 688
    .local v9, nameSmall:Ljava/lang/String;
    if-ge v0, v14, :cond_3

    .line 689
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "0"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 694
    :goto_3
    const-string v11, "drawable"

    const-string v12, "com.htc.home.personalize"

    invoke-virtual {v10, v9, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 698
    .local v3, idSmall:I
    const-string v8, "htc_wallpaper_preview_"

    .line 699
    .local v8, namePreview:Ljava/lang/String;
    if-ge v0, v14, :cond_4

    .line 700
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "0"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 705
    :goto_4
    const-string v11, "drawable"

    const-string v12, "com.htc.home.personalize"

    invoke-virtual {v10, v8, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 709
    .local v2, idPreview:I
    if-lez v1, :cond_1

    if-lez v3, :cond_1

    if-lez v2, :cond_1

    .line 710
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 711
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 712
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 674
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 680
    .end local v1           #id:I
    .end local v2           #idPreview:I
    .end local v3           #idSmall:I
    .end local v8           #namePreview:Ljava/lang/String;
    .end local v9           #nameSmall:Ljava/lang/String;
    :cond_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 691
    .restart local v1       #id:I
    .restart local v9       #nameSmall:Ljava/lang/String;
    :cond_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    .line 702
    .restart local v3       #idSmall:I
    .restart local v8       #namePreview:Ljava/lang/String;
    :cond_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    .line 716
    .end local v1           #id:I
    .end local v3           #idSmall:I
    .end local v7           #name:Ljava/lang/String;
    .end local v8           #namePreview:Ljava/lang/String;
    .end local v9           #nameSmall:Ljava/lang/String;
    :cond_5
    new-array v11, v13, [Ljava/lang/Integer;

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/Integer;

    sput-object v11, Lcom/htc/home/personalize/WallpaperPicker;->IMAGE_IDS:[Ljava/lang/Integer;

    .line 717
    new-array v11, v13, [Ljava/lang/Integer;

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/Integer;

    sput-object v11, Lcom/htc/home/personalize/WallpaperPicker;->THUMB_IDS:[Ljava/lang/Integer;

    .line 718
    new-array v11, v13, [Ljava/lang/Integer;

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/Integer;

    sput-object v11, Lcom/htc/home/personalize/WallpaperPicker;->PREVIEW_IDS:[Ljava/lang/Integer;

    goto/16 :goto_0
.end method

.method private loadAllWallpapers()V
    .locals 0

    .prologue
    .line 502
    invoke-direct {p0}, Lcom/htc/home/personalize/WallpaperPicker;->loadBuildInWallpapers()V

    .line 503
    invoke-direct {p0}, Lcom/htc/home/personalize/WallpaperPicker;->loadNetworkWallpapers()V

    .line 504
    return-void
.end method

.method private loadBuildInWallpapers()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 507
    invoke-direct {p0}, Lcom/htc/home/personalize/WallpaperPicker;->loadCustomize()Z

    move-result v0

    if-ne v0, v1, :cond_0

    .line 508
    iput-boolean v1, p0, Lcom/htc/home/personalize/WallpaperPicker;->mCustomized:Z

    .line 511
    :goto_0
    return-void

    .line 510
    :cond_0
    invoke-direct {p0}, Lcom/htc/home/personalize/WallpaperPicker;->findWallpapers()V

    goto :goto_0
.end method

.method private loadCustomize()Z
    .locals 3

    .prologue
    .line 514
    invoke-virtual {p0}, Lcom/htc/home/personalize/WallpaperPicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 515
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v1, Lcom/htc/home/personalize/config/GalleryReader;

    invoke-virtual {p0}, Lcom/htc/home/personalize/WallpaperPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {v1, v0, v2, p0}, Lcom/htc/home/personalize/config/GalleryReader;-><init>(Landroid/content/ContentResolver;ILandroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDefaultGalleryReader:Lcom/htc/home/personalize/config/GalleryReader;

    .line 516
    iget-object v1, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDefaultGalleryReader:Lcom/htc/home/personalize/config/GalleryReader;

    invoke-virtual {v1}, Lcom/htc/home/personalize/config/GalleryReader;->getGalleryData()Lcom/htc/home/personalize/config/GalleryData;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/home/personalize/WallpaperPicker;->mGalleryData:Lcom/htc/home/personalize/config/GalleryData;

    .line 517
    iget-object v1, p0, Lcom/htc/home/personalize/WallpaperPicker;->mGalleryData:Lcom/htc/home/personalize/config/GalleryData;

    invoke-virtual {v1}, Lcom/htc/home/personalize/config/GalleryData;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 518
    const/4 v1, 0x1

    .line 520
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadNetworkWallpapers()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    .line 615
    iget-object v7, p0, Lcom/htc/home/personalize/WallpaperPicker;->mNetworkData:Lcom/htc/home/personalize/config/GalleryData;

    invoke-virtual {v7}, Lcom/htc/home/personalize/config/GalleryData;->clear()V

    .line 616
    invoke-static {v8, p0}, Lcom/htc/home/personalize/localresource/LocalResourceList;->getInstance2(ILandroid/content/Context;)Lcom/htc/home/personalize/localresource/LocalResourceList;

    move-result-object v5

    .line 617
    .local v5, list:Lcom/htc/home/personalize/localresource/LocalResourceList;
    invoke-virtual {p0}, Lcom/htc/home/personalize/WallpaperPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 618
    .local v0, conf:Landroid/content/res/Configuration;
    sget-object v3, Lcom/htc/home/personalize/abstractresource/Resource$Const;->ICON_PORTRAIT:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    .line 619
    .local v3, icon:Lcom/htc/home/personalize/abstractresource/Resource$Const;
    sget-object v6, Lcom/htc/home/personalize/abstractresource/Resource$Const;->THUMBNAIL_PORTRAIT:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    .line 620
    .local v6, thumb:Lcom/htc/home/personalize/abstractresource/Resource$Const;
    iget v7, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v8, v7, :cond_0

    .line 621
    sget-object v6, Lcom/htc/home/personalize/abstractresource/Resource$Const;->THUMBNAIL_LANDSCAPE:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    .line 623
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v5}, Lcom/htc/home/personalize/localresource/LocalResourceList;->size()I

    move-result v7

    if-ge v2, v7, :cond_2

    .line 624
    invoke-virtual {v5, v2}, Lcom/htc/home/personalize/localresource/LocalResourceList;->get(I)Lcom/htc/home/personalize/localresource/LocalResource;

    move-result-object v4

    .line 625
    .local v4, info:Lcom/htc/home/personalize/abstractresource/Resource;
    invoke-virtual {v4}, Lcom/htc/home/personalize/localresource/LocalResource;->getStatus()Lcom/htc/home/personalize/abstractresource/Resource$Const;

    move-result-object v7

    sget-object v8, Lcom/htc/home/personalize/abstractresource/Resource$Const;->DOWNLOADED:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    if-ne v7, v8, :cond_1

    .line 626
    new-instance v1, Lcom/htc/home/personalize/config/WallpaperData;

    invoke-direct {v1}, Lcom/htc/home/personalize/config/WallpaperData;-><init>()V

    .line 627
    .local v1, data:Lcom/htc/home/personalize/config/WallpaperData;
    invoke-virtual {v4, v3}, Lcom/htc/home/personalize/localresource/LocalResource;->getPreviewPath(Lcom/htc/home/personalize/abstractresource/Resource$Const;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/htc/home/personalize/config/WallpaperData;->thumb:Ljava/lang/String;

    .line 628
    invoke-virtual {v4, v6}, Lcom/htc/home/personalize/localresource/LocalResource;->getPreviewPath(Lcom/htc/home/personalize/abstractresource/Resource$Const;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/htc/home/personalize/config/WallpaperData;->preview:Ljava/lang/String;

    .line 629
    invoke-virtual {v4}, Lcom/htc/home/personalize/localresource/LocalResource;->getResourcePath()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/htc/home/personalize/config/WallpaperData;->image:Ljava/lang/String;

    .line 630
    iput-object v4, v1, Lcom/htc/home/personalize/config/WallpaperData;->obj:Ljava/lang/Object;

    .line 631
    iget-object v7, p0, Lcom/htc/home/personalize/WallpaperPicker;->mNetworkData:Lcom/htc/home/personalize/config/GalleryData;

    invoke-virtual {v7, v1}, Lcom/htc/home/personalize/config/GalleryData;->add(Lcom/htc/home/personalize/config/WallpaperData;)V

    .line 623
    .end local v1           #data:Lcom/htc/home/personalize/config/WallpaperData;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 634
    .end local v4           #info:Lcom/htc/home/personalize/abstractresource/Resource;
    :cond_2
    return-void
.end method

.method private notifyWallpaperTitle(Ljava/lang/String;)V
    .locals 2
    .parameter "title"

    .prologue
    .line 1124
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.intent.ACTION_PERSONALIZE_WALLPAPER_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1125
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.intent.EXTRA_SUMMARY"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1126
    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/WallpaperPicker;->sendBroadcast(Landroid/content/Intent;)V

    .line 1127
    return-void
.end method

.method private returnToDockMode(I)V
    .locals 7
    .parameter "position"

    .prologue
    .line 1258
    const-string v4, "WallpaperPicker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "returnToDockMode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    if-ltz p1, :cond_0

    .line 1260
    iget-object v4, p0, Lcom/htc/home/personalize/WallpaperPicker;->mNetworkData:Lcom/htc/home/personalize/config/GalleryData;

    invoke-virtual {v4}, Lcom/htc/home/personalize/config/GalleryData;->size()I

    move-result v2

    .line 1261
    .local v2, networkSize:I
    const/4 v1, 0x0

    .line 1262
    .local v1, filePath:Ljava/lang/String;
    const/4 v3, -0x1

    .line 1264
    .local v3, resPath:I
    if-ge p1, v2, :cond_1

    .line 1265
    iget-object v4, p0, Lcom/htc/home/personalize/WallpaperPicker;->mNetworkData:Lcom/htc/home/personalize/config/GalleryData;

    invoke-virtual {v4, p1}, Lcom/htc/home/personalize/config/GalleryData;->getImagePath(I)Ljava/lang/String;

    move-result-object v1

    .line 1272
    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1273
    .local v0, dockmode:Landroid/content/Intent;
    const-string v4, "com.htc.intent.ACTION_SET_WALLPAPER_DOCKMODE"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1274
    const-string v4, "EXTRA_WALLPAPER_PATH"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1275
    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/WallpaperPicker;->sendBroadcast(Landroid/content/Intent;)V

    .line 1276
    invoke-virtual {p0}, Lcom/htc/home/personalize/WallpaperPicker;->finish()V

    .line 1278
    .end local v0           #dockmode:Landroid/content/Intent;
    .end local v1           #filePath:Ljava/lang/String;
    .end local v2           #networkSize:I
    .end local v3           #resPath:I
    :cond_0
    return-void

    .line 1266
    .restart local v1       #filePath:Ljava/lang/String;
    .restart local v2       #networkSize:I
    .restart local v3       #resPath:I
    :cond_1
    iget-boolean v4, p0, Lcom/htc/home/personalize/WallpaperPicker;->mCustomized:Z

    if-eqz v4, :cond_2

    .line 1267
    iget-object v4, p0, Lcom/htc/home/personalize/WallpaperPicker;->mGalleryData:Lcom/htc/home/personalize/config/GalleryData;

    sub-int v5, p1, v2

    invoke-virtual {v4, v5}, Lcom/htc/home/personalize/config/GalleryData;->getImagePath(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1269
    :cond_2
    iget-object v4, p0, Lcom/htc/home/personalize/WallpaperPicker;->mImages:Ljava/util/ArrayList;

    sub-int v5, p1, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0
.end method

.method private safeStartAnimation(Landroid/view/View;Landroid/view/animation/Animation;IZ)V
    .locals 0
    .parameter "view"
    .parameter "anim"
    .parameter "duration"
    .parameter "startNow"

    .prologue
    .line 1637
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1642
    :cond_0
    :goto_0
    return-void

    .line 1638
    :cond_1
    if-eqz p4, :cond_2

    .line 1639
    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 1641
    :cond_2
    invoke-virtual {p1, p2}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private selectWallpaper(I)V
    .locals 11
    .parameter "position"

    .prologue
    const/4 v10, 0x1

    .line 1072
    iget-boolean v6, p0, Lcom/htc/home/personalize/WallpaperPicker;->mIsWallpaperSet:Z

    if-eqz v6, :cond_0

    .line 1121
    :goto_0
    return-void

    .line 1076
    :cond_0
    iput-boolean v10, p0, Lcom/htc/home/personalize/WallpaperPicker;->mIsWallpaperSet:Z

    .line 1077
    const-string v5, ""

    .line 1082
    .local v5, title:Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/htc/home/personalize/WallpaperPicker;->mPickerType:Lcom/htc/home/personalize/WallpaperPicker$PickerType;

    sget-object v7, Lcom/htc/home/personalize/WallpaperPicker$PickerType;->GRID:Lcom/htc/home/personalize/WallpaperPicker$PickerType;

    if-ne v6, v7, :cond_2

    add-int/lit8 v2, p1, -0x1

    .line 1083
    .local v2, index:I
    :goto_1
    iget-object v6, p0, Lcom/htc/home/personalize/WallpaperPicker;->mNetworkData:Lcom/htc/home/personalize/config/GalleryData;

    invoke-virtual {v6}, Lcom/htc/home/personalize/config/GalleryData;->size()I

    move-result v3

    .line 1085
    .local v3, networkSize:I
    if-ge v2, v3, :cond_3

    .line 1086
    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    iget-object v7, p0, Lcom/htc/home/personalize/WallpaperPicker;->mNetworkData:Lcom/htc/home/personalize/config/GalleryData;

    invoke-virtual {v7, v2}, Lcom/htc/home/personalize/config/GalleryData;->getImagePath(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1088
    .local v4, stream:Ljava/io/InputStream;
    sget-boolean v6, Lcom/htc/home/personalize/WallpaperPicker;->localLOGV:Z

    if-eqz v6, :cond_1

    .line 1089
    const-class v6, Lcom/htc/home/personalize/WallpaperPicker;

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "selectWallpaper("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") from download wallpaper - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/home/personalize/WallpaperPicker;->mNetworkData:Lcom/htc/home/personalize/config/GalleryData;

    invoke-virtual {v8, v2}, Lcom/htc/home/personalize/config/GalleryData;->getImagePath(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    :cond_1
    iget-object v6, p0, Lcom/htc/home/personalize/WallpaperPicker;->mNetworkData:Lcom/htc/home/personalize/config/GalleryData;

    invoke-virtual {v6, v2}, Lcom/htc/home/personalize/config/GalleryData;->get(I)Lcom/htc/home/personalize/config/WallpaperData;

    move-result-object v0

    .line 1092
    .local v0, data:Lcom/htc/home/personalize/config/WallpaperData;
    iget-object v6, v0, Lcom/htc/home/personalize/config/WallpaperData;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/htc/home/personalize/abstractresource/Resource;

    invoke-virtual {v6}, Lcom/htc/home/personalize/abstractresource/Resource;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    .line 1107
    .end local v0           #data:Lcom/htc/home/personalize/config/WallpaperData;
    :goto_2
    invoke-virtual {p0, v4}, Lcom/htc/home/personalize/WallpaperPicker;->setWallpaper(Ljava/io/InputStream;)V

    .line 1108
    const/4 v6, -0x1

    invoke-virtual {p0, v6}, Lcom/htc/home/personalize/WallpaperPicker;->setResult(I)V

    .line 1109
    invoke-static {p0}, Lcom/htc/home/personalize/PersonalizeCarousel;->launchHome(Landroid/content/Context;)V

    .line 1110
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.htc.home.personalize.ACTION_FINISH_AND_LAUNCH_HOME"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/htc/home/personalize/WallpaperPicker;->sendBroadcast(Landroid/content/Intent;)V

    .line 1111
    invoke-virtual {p0}, Lcom/htc/home/personalize/WallpaperPicker;->finish()V

    .line 1112
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 1113
    invoke-direct {p0, v5}, Lcom/htc/home/personalize/WallpaperPicker;->notifyWallpaperTitle(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 1114
    .end local v2           #index:I
    .end local v3           #networkSize:I
    .end local v4           #stream:Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 1115
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v6, "WallpaperPicker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No wallpaper: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    invoke-virtual {p0, v10}, Lcom/htc/home/personalize/WallpaperPicker;->showDialog(I)V

    goto/16 :goto_0

    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_2
    move v2, p1

    .line 1082
    goto/16 :goto_1

    .line 1094
    .restart local v2       #index:I
    .restart local v3       #networkSize:I
    :cond_3
    :try_start_1
    iget-boolean v6, p0, Lcom/htc/home/personalize/WallpaperPicker;->mCustomized:Z

    if-eqz v6, :cond_4

    .line 1095
    const-class v6, Lcom/htc/home/personalize/WallpaperPicker;

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "selectWallpaper("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") from Customized - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/home/personalize/WallpaperPicker;->mGalleryData:Lcom/htc/home/personalize/config/GalleryData;

    sub-int v9, v2, v3

    invoke-virtual {v8, v9}, Lcom/htc/home/personalize/config/GalleryData;->getImagePath(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    iget-object v7, p0, Lcom/htc/home/personalize/WallpaperPicker;->mGalleryData:Lcom/htc/home/personalize/config/GalleryData;

    sub-int v8, v2, v3

    invoke-virtual {v7, v8}, Lcom/htc/home/personalize/config/GalleryData;->getImagePath(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .restart local v4       #stream:Ljava/io/InputStream;
    goto/16 :goto_2

    .line 1100
    .end local v4           #stream:Ljava/io/InputStream;
    :cond_4
    invoke-virtual {p0}, Lcom/htc/home/personalize/WallpaperPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v6, p0, Lcom/htc/home/personalize/WallpaperPicker;->mImages:Ljava/util/ArrayList;

    sub-int v8, v2, v3

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    .line 1101
    .restart local v4       #stream:Ljava/io/InputStream;
    const-class v6, Lcom/htc/home/personalize/WallpaperPicker;

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "selectWallpaper("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") from Resources - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/home/personalize/WallpaperPicker;->mImages:Ljava/util/ArrayList;

    sub-int v9, v2, v3

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 1117
    .end local v2           #index:I
    .end local v3           #networkSize:I
    .end local v4           #stream:Ljava/io/InputStream;
    :catch_1
    move-exception v1

    .line 1118
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "WallpaperPicker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to set wallpaper: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/htc/home/personalize/WallpaperPicker;->showDialog(I)V

    goto/16 :goto_0
.end method

.method private setImageView(I)V
    .locals 6
    .parameter "position"

    .prologue
    .line 773
    if-ltz p1, :cond_0

    .line 774
    iget-object v4, p0, Lcom/htc/home/personalize/WallpaperPicker;->mNetworkData:Lcom/htc/home/personalize/config/GalleryData;

    invoke-virtual {v4}, Lcom/htc/home/personalize/config/GalleryData;->size()I

    move-result v1

    .line 775
    .local v1, networkSize:I
    const/4 v0, 0x0

    .line 776
    .local v0, filePath:Ljava/lang/String;
    const/4 v3, -0x1

    .line 778
    .local v3, resPath:I
    if-ge p1, v1, :cond_1

    .line 779
    iget-object v4, p0, Lcom/htc/home/personalize/WallpaperPicker;->mNetworkData:Lcom/htc/home/personalize/config/GalleryData;

    invoke-virtual {v4, p1}, Lcom/htc/home/personalize/config/GalleryData;->getImagePath(I)Ljava/lang/String;

    move-result-object v0

    .line 787
    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/htc/home/personalize/WallpaperPreview;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 788
    .local v2, preview:Landroid/content/Intent;
    const-string v4, "preview_file_path"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 789
    const-string v4, "preview_res_path"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 790
    const-string v4, "preview_pick_lockscreen"

    iget-boolean v5, p0, Lcom/htc/home/personalize/WallpaperPicker;->mIsPickLockScreenWallpaper:Z

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 791
    const-string v4, "preview_wallpaper_label"

    invoke-direct {p0, p1}, Lcom/htc/home/personalize/WallpaperPicker;->getLabel(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 794
    const/16 v4, 0x101

    :try_start_0
    invoke-virtual {p0, v2, v4}, Lcom/htc/home/personalize/WallpaperPicker;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 798
    .end local v0           #filePath:Ljava/lang/String;
    .end local v1           #networkSize:I
    .end local v2           #preview:Landroid/content/Intent;
    .end local v3           #resPath:I
    :cond_0
    :goto_1
    return-void

    .line 780
    .restart local v0       #filePath:Ljava/lang/String;
    .restart local v1       #networkSize:I
    .restart local v3       #resPath:I
    :cond_1
    iget-boolean v4, p0, Lcom/htc/home/personalize/WallpaperPicker;->mCustomized:Z

    if-eqz v4, :cond_2

    .line 781
    iget-object v4, p0, Lcom/htc/home/personalize/WallpaperPicker;->mGalleryData:Lcom/htc/home/personalize/config/GalleryData;

    sub-int v5, p1, v1

    invoke-virtual {v4, v5}, Lcom/htc/home/personalize/config/GalleryData;->getImagePath(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 783
    :cond_2
    iget-object v4, p0, Lcom/htc/home/personalize/WallpaperPicker;->mImages:Ljava/util/ArrayList;

    sub-int v5, p1, v1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0

    .line 795
    .restart local v2       #preview:Landroid/content/Intent;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public static setPanelType(Landroid/content/Context;Z)Z
    .locals 6
    .parameter "context"
    .parameter "panel"

    .prologue
    .line 492
    const-string v3, "WallpaperPicker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setPanelType+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    const-string v3, "WallpaperPicker"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 494
    .local v2, settings:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "panel_type"

    invoke-interface {v3, v4, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 495
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 496
    const/4 v0, 0x1

    .line 497
    .local v0, bool:Z
    const-string v3, "WallpaperPicker"

    const-string v4, "setPanelType-"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    return v0
.end method

.method private showAddWallpaper()V
    .locals 2

    .prologue
    .line 1454
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1456
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1457
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.personalize.action.ONLINE_WALLPAPER_CATEGORY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1458
    const/16 v1, 0x100

    invoke-virtual {p0, v0, v1}, Lcom/htc/home/personalize/WallpaperPicker;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1461
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 1459
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private updateButtons(Z)V
    .locals 2
    .parameter "force"

    .prologue
    .line 1281
    iget-boolean v0, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDeleteMode:Z

    if-eqz v0, :cond_0

    .line 1286
    :goto_0
    return-void

    .line 1284
    :cond_0
    iget-object v1, p0, Lcom/htc/home/personalize/WallpaperPicker;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

    iget-boolean v0, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDockMode:Z

    if-eqz v0, :cond_1

    const v0, 0x7f090001

    :goto_1
    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 1285
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker;->mHeaderImageRight:Lcom/htc/widget/HeaderBarImage;

    const v1, 0x7f090006

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    goto :goto_0

    .line 1284
    :cond_1
    const v0, 0x7f090023

    goto :goto_1
.end method

.method private updateDeletedIndex()V
    .locals 4

    .prologue
    .line 1594
    invoke-direct {p0}, Lcom/htc/home/personalize/WallpaperPicker;->getAdapterSize()I

    move-result v1

    .line 1595
    .local v1, size:I
    if-lez v1, :cond_1

    .line 1596
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDeletedIndex:[Z

    .line 1597
    new-array v2, v1, [Z

    iput-object v2, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDeletedIndex:[Z

    .line 1600
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDeletedIndex:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1601
    iget-object v2, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDeletedIndex:[Z

    const/4 v3, 0x0

    aput-boolean v3, v2, v0

    .line 1600
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1604
    :cond_0
    iget-object v2, p0, Lcom/htc/home/personalize/WallpaperPicker;->mPanelAdapter:Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;

    iget-object v3, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDeletedIndex:[Z

    invoke-virtual {v2, v3}, Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;->setDeletedIndex([Z)V

    .line 1605
    iget-object v2, p0, Lcom/htc/home/personalize/WallpaperPicker;->mGridAdapter:Lcom/htc/home/personalize/widget/WallpaperGridAdapter;

    iget-object v3, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDeletedIndex:[Z

    invoke-virtual {v2, v3}, Lcom/htc/home/personalize/widget/WallpaperGridAdapter;->setDeletedIndex([Z)V

    .line 1607
    .end local v0           #i:I
    :cond_1
    return-void
.end method

.method private updateTitle()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1289
    iget v0, p0, Lcom/htc/home/personalize/WallpaperPicker;->mSelectedPosition:I

    .line 1291
    .local v0, index:I
    iget-boolean v3, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDockMode:Z

    if-eqz v3, :cond_0

    sget-object v2, Lcom/htc/home/personalize/WallpaperPicker$PickerType;->PANEL:Lcom/htc/home/personalize/WallpaperPicker$PickerType;

    .line 1292
    .local v2, tmpPickerType:Lcom/htc/home/personalize/WallpaperPicker$PickerType;
    :goto_0
    sget-object v3, Lcom/htc/home/personalize/WallpaperPicker$PickerType;->PANEL:Lcom/htc/home/personalize/WallpaperPicker$PickerType;

    if-ne v2, v3, :cond_2

    .line 1293
    invoke-direct {p0}, Lcom/htc/home/personalize/WallpaperPicker;->getTotalWallpaperCount()I

    move-result v3

    if-eqz v3, :cond_1

    .line 1294
    const-string v3, "(%d/%d)"

    new-array v4, v8, [Ljava/lang/Object;

    iget v5, p0, Lcom/htc/home/personalize/WallpaperPicker;->mSelectedPosition:I

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-direct {p0}, Lcom/htc/home/personalize/WallpaperPicker;->getTotalWallpaperCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/home/personalize/WallpaperPicker;->mHeaderCountText:Ljava/lang/String;

    .line 1301
    :goto_1
    const-string v3, "%s %s"

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/htc/home/personalize/WallpaperPicker;->mHeaderTitleText:Ljava/lang/String;

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/htc/home/personalize/WallpaperPicker;->mHeaderCountText:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1302
    .local v1, strHeaderText:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/home/personalize/WallpaperPicker;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v3, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 1304
    iget-object v3, p0, Lcom/htc/home/personalize/WallpaperPicker;->mItemLabel:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/htc/home/personalize/WallpaperPicker;->getLabel(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1305
    return-void

    .line 1291
    .end local v1           #strHeaderText:Ljava/lang/String;
    .end local v2           #tmpPickerType:Lcom/htc/home/personalize/WallpaperPicker$PickerType;
    :cond_0
    iget-object v2, p0, Lcom/htc/home/personalize/WallpaperPicker;->mPickerType:Lcom/htc/home/personalize/WallpaperPicker$PickerType;

    goto :goto_0

    .line 1296
    .restart local v2       #tmpPickerType:Lcom/htc/home/personalize/WallpaperPicker$PickerType;
    :cond_1
    const-string v3, "(%d/%d)"

    new-array v4, v8, [Ljava/lang/Object;

    iget v5, p0, Lcom/htc/home/personalize/WallpaperPicker;->mSelectedPosition:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-direct {p0}, Lcom/htc/home/personalize/WallpaperPicker;->getTotalWallpaperCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/home/personalize/WallpaperPicker;->mHeaderCountText:Ljava/lang/String;

    goto :goto_1

    .line 1298
    :cond_2
    const-string v3, ""

    iput-object v3, p0, Lcom/htc/home/personalize/WallpaperPicker;->mHeaderCountText:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public NonUiInit()V
    .locals 4

    .prologue
    .line 325
    invoke-static {p0}, Lcom/htc/cscore/util/CSUtil;->isCSPackageInstalled(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/home/personalize/WallpaperPicker;->mCSPackageInstalled:Z

    .line 326
    invoke-direct {p0}, Lcom/htc/home/personalize/WallpaperPicker;->loadAllWallpapers()V

    .line 331
    sget-boolean v1, Lcom/htc/home/personalize/WallpaperPicker;->localLOGV:Z

    if-eqz v1, :cond_0

    const-string v1, "WallpaperPicker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadCustomize finished, mCustomized = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/htc/home/personalize/WallpaperPicker;->mCustomized:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_0
    new-instance v1, Lcom/htc/home/personalize/WallpaperLoader;

    invoke-direct {v1, p0}, Lcom/htc/home/personalize/WallpaperLoader;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/home/personalize/WallpaperPicker;->mWallpaperLoader:Lcom/htc/home/personalize/WallpaperLoader;

    .line 334
    invoke-static {p0}, Lcom/htc/home/personalize/WallpaperPicker;->getPanelType(Landroid/content/Context;)Z

    move-result v0

    .line 335
    .local v0, panelType:Z
    if-nez v0, :cond_1

    .line 336
    sget-object v1, Lcom/htc/home/personalize/WallpaperPicker$PickerType;->GRID:Lcom/htc/home/personalize/WallpaperPicker$PickerType;

    iput-object v1, p0, Lcom/htc/home/personalize/WallpaperPicker;->mPickerType:Lcom/htc/home/personalize/WallpaperPicker$PickerType;

    .line 339
    :cond_1
    invoke-virtual {p0}, Lcom/htc/home/personalize/WallpaperPicker;->UiInit()V

    .line 340
    return-void
.end method

.method public UiInit()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 343
    iget-boolean v6, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDockMode:Z

    if-eqz v6, :cond_2

    .line 344
    const/4 v6, 0x4

    invoke-virtual {p0, v6}, Lcom/htc/home/personalize/WallpaperPicker;->setRequestedOrientation(I)V

    .line 348
    :goto_0
    const v6, 0x7f030016

    invoke-virtual {p0, v6}, Lcom/htc/home/personalize/WallpaperPicker;->setContentView(I)V

    .line 349
    invoke-virtual {p0}, Lcom/htc/home/personalize/WallpaperPicker;->setupHeaderFooter()V

    .line 351
    invoke-virtual {p0}, Lcom/htc/home/personalize/WallpaperPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09002a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/home/personalize/WallpaperPicker;->mHeaderTitleText:Ljava/lang/String;

    .line 352
    iget-object v6, p0, Lcom/htc/home/personalize/WallpaperPicker;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/htc/home/personalize/WallpaperPicker;->mHeaderTitleText:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/home/personalize/WallpaperPicker;->mHeaderCountText:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 354
    const v6, 0x7f0b0034

    invoke-virtual {p0, v6}, Lcom/htc/home/personalize/WallpaperPicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/htc/home/personalize/WallpaperPicker;->mItemLabel:Landroid/widget/TextView;

    .line 356
    iget-object v7, p0, Lcom/htc/home/personalize/WallpaperPicker;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

    iget-boolean v6, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDockMode:Z

    if-eqz v6, :cond_3

    const v6, 0x7f090001

    :goto_1
    invoke-virtual {v7, v6}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 357
    iget-object v6, p0, Lcom/htc/home/personalize/WallpaperPicker;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

    iget-object v7, p0, Lcom/htc/home/personalize/WallpaperPicker;->mPreviewListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 359
    iget-object v6, p0, Lcom/htc/home/personalize/WallpaperPicker;->mFooterButtonLeft:Lcom/htc/widget/HtcFooterButton;

    iget-object v7, p0, Lcom/htc/home/personalize/WallpaperPicker;->mGetMoreListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    iget-object v6, p0, Lcom/htc/home/personalize/WallpaperPicker;->mHeaderImageRight:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v6, v9}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 363
    iget-object v6, p0, Lcom/htc/home/personalize/WallpaperPicker;->mHeaderImageRight:Lcom/htc/widget/HeaderBarImage;

    const v7, 0x20808d9

    invoke-virtual {v6, v7}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 364
    iget-object v6, p0, Lcom/htc/home/personalize/WallpaperPicker;->mHeaderImageRight:Lcom/htc/widget/HeaderBarImage;

    const v7, 0x7f090006

    invoke-virtual {v6, v7}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    .line 365
    iget-object v6, p0, Lcom/htc/home/personalize/WallpaperPicker;->mHeaderImageRight:Lcom/htc/widget/HeaderBarImage;

    iget-object v7, p0, Lcom/htc/home/personalize/WallpaperPicker;->mGetMoreListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    iget-object v6, p0, Lcom/htc/home/personalize/WallpaperPicker;->mWallpaperLoader:Lcom/htc/home/personalize/WallpaperLoader;

    iget-boolean v7, p0, Lcom/htc/home/personalize/WallpaperPicker;->mCustomized:Z

    invoke-virtual {v6, v7}, Lcom/htc/home/personalize/WallpaperLoader;->setCustomized(Z)V

    .line 368
    iget-object v6, p0, Lcom/htc/home/personalize/WallpaperPicker;->mWallpaperLoader:Lcom/htc/home/personalize/WallpaperLoader;

    iget-object v7, p0, Lcom/htc/home/personalize/WallpaperPicker;->mGalleryData:Lcom/htc/home/personalize/config/GalleryData;

    invoke-virtual {v6, v7}, Lcom/htc/home/personalize/WallpaperLoader;->setGalleryData(Lcom/htc/home/personalize/config/GalleryData;)V

    .line 369
    iget-object v6, p0, Lcom/htc/home/personalize/WallpaperPicker;->mWallpaperLoader:Lcom/htc/home/personalize/WallpaperLoader;

    iget-object v7, p0, Lcom/htc/home/personalize/WallpaperPicker;->mNetworkData:Lcom/htc/home/personalize/config/GalleryData;

    invoke-virtual {v6, v7}, Lcom/htc/home/personalize/WallpaperLoader;->setNetworkData(Lcom/htc/home/personalize/config/GalleryData;)V

    .line 370
    iget-object v6, p0, Lcom/htc/home/personalize/WallpaperPicker;->mWallpaperLoader:Lcom/htc/home/personalize/WallpaperLoader;

    iget-object v7, p0, Lcom/htc/home/personalize/WallpaperPicker;->mPreviews:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Lcom/htc/home/personalize/WallpaperLoader;->setWallpaperData(Ljava/util/ArrayList;)V

    .line 371
    iget-object v6, p0, Lcom/htc/home/personalize/WallpaperPicker;->mWallpaperLoader:Lcom/htc/home/personalize/WallpaperLoader;

    iget-object v7, p0, Lcom/htc/home/personalize/WallpaperPicker;->mUpdateCallback:Lcom/htc/home/personalize/WallpaperLoader$UIUpdateCallback;

    invoke-virtual {v6, v7}, Lcom/htc/home/personalize/WallpaperLoader;->setUIUpdateCallback(Lcom/htc/home/personalize/WallpaperLoader$UIUpdateCallback;)V

    .line 372
    iget-object v6, p0, Lcom/htc/home/personalize/WallpaperPicker;->mWallpaperLoader:Lcom/htc/home/personalize/WallpaperLoader;

    iget-object v7, p0, Lcom/htc/home/personalize/WallpaperPicker;->mScrolling:[Z

    invoke-virtual {v6, v7}, Lcom/htc/home/personalize/WallpaperLoader;->setScrolling([Z)V

    .line 373
    iget-object v6, p0, Lcom/htc/home/personalize/WallpaperPicker;->mWallpaperLoader:Lcom/htc/home/personalize/WallpaperLoader;

    invoke-virtual {v6}, Lcom/htc/home/personalize/WallpaperLoader;->initHandler()V

    .line 374
    iget-object v6, p0, Lcom/htc/home/personalize/WallpaperPicker;->mWallpaperLoader:Lcom/htc/home/personalize/WallpaperLoader;

    iget-boolean v7, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDockMode:Z

    invoke-virtual {v6, v7}, Lcom/htc/home/personalize/WallpaperLoader;->setDockMod(Z)V

    .line 377
    new-instance v6, Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;

    invoke-direct {v6, p0}, Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;-><init>(Lcom/htc/home/personalize/WallpaperPicker;)V

    iput-object v6, p0, Lcom/htc/home/personalize/WallpaperPicker;->mPanelAdapter:Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;

    .line 378
    iget-object v6, p0, Lcom/htc/home/personalize/WallpaperPicker;->mPanelAdapter:Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;

    iget-boolean v7, p0, Lcom/htc/home/personalize/WallpaperPicker;->mCustomized:Z

    invoke-virtual {v6, v7}, Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;->setCustomized(Z)V

    .line 379
    iget-object v6, p0, Lcom/htc/home/personalize/WallpaperPicker;->mPanelAdapter:Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;

    iget-object v7, p0, Lcom/htc/home/personalize/WallpaperPicker;->mGalleryData:Lcom/htc/home/personalize/config/GalleryData;

    invoke-virtual {v6, v7}, Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;->setGalleryData(Lcom/htc/home/personalize/config/GalleryData;)V

    .line 380
    iget-object v6, p0, Lcom/htc/home/personalize/WallpaperPicker;->mPanelAdapter:Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;

    iget-object v7, p0, Lcom/htc/home/personalize/WallpaperPicker;->mNetworkData:Lcom/htc/home/personalize/config/GalleryData;

    invoke-virtual {v6, v7}, Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;->setNetworkData(Lcom/htc/home/personalize/config/GalleryData;)V

    .line 382
    iget-object v6, p0, Lcom/htc/home/personalize/WallpaperPicker;->mPanelAdapter:Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;

    iget-object v7, p0, Lcom/htc/home/personalize/WallpaperPicker;->mPreviews:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;->setWallpaperData(Ljava/util/ArrayList;)V

    .line 383
    iget-object v6, p0, Lcom/htc/home/personalize/WallpaperPicker;->mPanelAdapter:Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;

    iget-object v7, p0, Lcom/htc/home/personalize/WallpaperPicker;->mWallpaperLoader:Lcom/htc/home/personalize/WallpaperLoader;

    iget-object v7, v7, Lcom/htc/home/personalize/WallpaperLoader;->mImageCaches:Ljava/util/Map;

    invoke-virtual {v6, v7}, Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;->setImageCache(Ljava/util/Map;)V

    .line 384
    iget-object v6, p0, Lcom/htc/home/personalize/WallpaperPicker;->mPanelAdapter:Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;

    const v7, 0x7f030010

    invoke-virtual {v6, v7}, Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;->setItemResource(I)V

    .line 385
    iget-object v6, p0, Lcom/htc/home/personalize/WallpaperPicker;->mPanelAdapter:Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;

    iget-object v7, p0, Lcom/htc/home/personalize/WallpaperPicker;->mScrolling:[Z

    invoke-virtual {v6, v7}, Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;->setScrolling([Z)V

    .line 386
    iget-object v6, p0, Lcom/htc/home/personalize/WallpaperPicker;->mPanelAdapter:Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;

    iget-object v7, p0, Lcom/htc/home/personalize/WallpaperPicker;->mWallpaperUpdateCallback:Lcom/htc/home/personalize/widget/WallpaperPanelAdapter$WallpaperUpdateCallback;

    invoke-virtual {v6, v7}, Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;->setWallpaperUpdateCallback(Lcom/htc/home/personalize/widget/WallpaperPanelAdapter$WallpaperUpdateCallback;)V

    .line 388
    invoke-virtual {p0}, Lcom/htc/home/personalize/WallpaperPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070008

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 389
    .local v2, itemWidth:I
    invoke-virtual {p0}, Lcom/htc/home/personalize/WallpaperPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f07000a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 390
    .local v1, itemHeight:I
    invoke-virtual {p0}, Lcom/htc/home/personalize/WallpaperPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f07000b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 392
    .local v5, reflectionHeight:I
    const v6, 0x7f0b0030

    invoke-virtual {p0, v6}, Lcom/htc/home/personalize/WallpaperPicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/htc/widget/DeckControlView;

    iput-object v6, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDeckControlView:Lcom/htc/widget/DeckControlView;

    .line 393
    iget-object v6, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDeckControlView:Lcom/htc/widget/DeckControlView;

    invoke-virtual {v6, v9}, Lcom/htc/widget/DeckControlView;->enableManualRelease(Z)V

    .line 394
    new-instance v6, Lcom/htc/widget/DeckControl;

    iget-object v7, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDeckControlView:Lcom/htc/widget/DeckControlView;

    const/16 v8, 0x14

    invoke-direct {v6, p0, v7, v8}, Lcom/htc/widget/DeckControl;-><init>(Landroid/content/Context;Lcom/htc/widget/DeckControlView;I)V

    iput-object v6, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    .line 395
    iget-object v6, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDeckControlView:Lcom/htc/widget/DeckControlView;

    iget-object v7, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    invoke-virtual {v6, v7}, Lcom/htc/widget/DeckControlView;->addView(Lcom/htc/sunny/SView;)V

    .line 396
    invoke-virtual {p0}, Lcom/htc/home/personalize/WallpaperPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080007

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 397
    .local v4, refColor:I
    iget-object v6, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    invoke-virtual {v6, v4, v4, v4}, Lcom/htc/widget/DeckControl;->setReflectionColor(III)V

    .line 398
    iget-object v6, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    invoke-virtual {v6, v5}, Lcom/htc/widget/DeckControl;->setReflectionHeight(I)V

    .line 399
    iget-object v6, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    invoke-virtual {v6, v2, v1}, Lcom/htc/widget/DeckControl;->setItemSize(II)V

    .line 400
    iget-object v6, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    invoke-virtual {p0}, Lcom/htc/home/personalize/WallpaperPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070003

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    invoke-virtual {v6, v7}, Lcom/htc/widget/DeckControl;->setYOffset(F)V

    .line 402
    iget-object v6, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    iget-object v7, p0, Lcom/htc/home/personalize/WallpaperPicker;->mPanelAdapter:Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;

    invoke-virtual {v6, v7}, Lcom/htc/widget/DeckControl;->setAdapter(Lcom/htc/widget/DeckControlAdapter;)V

    .line 403
    iget-object v6, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    iget-object v7, p0, Lcom/htc/home/personalize/WallpaperPicker;->mGallerySelected:Lcom/htc/widget/DeckControl$OnItemSelectedListener;

    invoke-virtual {v6, v7}, Lcom/htc/widget/DeckControl;->setOnItemSelectedListener(Lcom/htc/widget/DeckControl$OnItemSelectedListener;)V

    .line 404
    iget-object v6, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    iget-object v7, p0, Lcom/htc/home/personalize/WallpaperPicker;->mGalleryClick:Lcom/htc/widget/DeckControl$OnItemClickListener;

    invoke-virtual {v6, v7}, Lcom/htc/widget/DeckControl;->setOnItemClickListener(Lcom/htc/widget/DeckControl$OnItemClickListener;)V

    .line 405
    iget-object v6, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    iget-object v7, p0, Lcom/htc/home/personalize/WallpaperPicker;->mGalleryMovement:Lcom/htc/widget/DeckControl$OnMovementListener;

    invoke-virtual {v6, v7}, Lcom/htc/widget/DeckControl;->setOnMovementListener(Lcom/htc/widget/DeckControl$OnMovementListener;)V

    .line 406
    invoke-direct {p0}, Lcom/htc/home/personalize/WallpaperPicker;->initDefaultView()V

    .line 407
    iget-object v6, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    invoke-virtual {p0}, Lcom/htc/home/personalize/WallpaperPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f060005

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/htc/widget/DeckControl;->setBackground(I)V

    .line 409
    iget v6, p0, Lcom/htc/home/personalize/WallpaperPicker;->mWallpaperPosition:I

    invoke-direct {p0}, Lcom/htc/home/personalize/WallpaperPicker;->getAdapterSize()I

    move-result v7

    if-ge v6, v7, :cond_4

    iget v6, p0, Lcom/htc/home/personalize/WallpaperPicker;->mWallpaperPosition:I

    if-ltz v6, :cond_4

    .line 410
    iget v6, p0, Lcom/htc/home/personalize/WallpaperPicker;->mWallpaperPosition:I

    iput v6, p0, Lcom/htc/home/personalize/WallpaperPicker;->mSelectedPosition:I

    .line 411
    iget-object v6, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    iget v7, p0, Lcom/htc/home/personalize/WallpaperPicker;->mSelectedPosition:I

    invoke-virtual {v6, v7, v9}, Lcom/htc/widget/DeckControl;->setSelection(IZ)V

    .line 425
    :cond_0
    :goto_2
    new-instance v6, Lcom/htc/home/personalize/widget/WallpaperGridAdapter;

    invoke-direct {v6, p0}, Lcom/htc/home/personalize/widget/WallpaperGridAdapter;-><init>(Lcom/htc/home/personalize/WallpaperPicker;)V

    iput-object v6, p0, Lcom/htc/home/personalize/WallpaperPicker;->mGridAdapter:Lcom/htc/home/personalize/widget/WallpaperGridAdapter;

    .line 426
    iget-object v6, p0, Lcom/htc/home/personalize/WallpaperPicker;->mGridAdapter:Lcom/htc/home/personalize/widget/WallpaperGridAdapter;

    iget-boolean v7, p0, Lcom/htc/home/personalize/WallpaperPicker;->mCustomized:Z

    invoke-virtual {v6, v7}, Lcom/htc/home/personalize/widget/WallpaperGridAdapter;->setCustomized(Z)V

    .line 427
    iget-object v6, p0, Lcom/htc/home/personalize/WallpaperPicker;->mGridAdapter:Lcom/htc/home/personalize/widget/WallpaperGridAdapter;

    iget-object v7, p0, Lcom/htc/home/personalize/WallpaperPicker;->mGalleryData:Lcom/htc/home/personalize/config/GalleryData;

    invoke-virtual {v6, v7}, Lcom/htc/home/personalize/widget/WallpaperGridAdapter;->setGalleryData(Lcom/htc/home/personalize/config/GalleryData;)V

    .line 428
    iget-object v6, p0, Lcom/htc/home/personalize/WallpaperPicker;->mGridAdapter:Lcom/htc/home/personalize/widget/WallpaperGridAdapter;

    iget-object v7, p0, Lcom/htc/home/personalize/WallpaperPicker;->mNetworkData:Lcom/htc/home/personalize/config/GalleryData;

    invoke-virtual {v6, v7}, Lcom/htc/home/personalize/widget/WallpaperGridAdapter;->setNetworkData(Lcom/htc/home/personalize/config/GalleryData;)V

    .line 429
    iget-object v6, p0, Lcom/htc/home/personalize/WallpaperPicker;->mGridAdapter:Lcom/htc/home/personalize/widget/WallpaperGridAdapter;

    invoke-virtual {v6, v9}, Lcom/htc/home/personalize/widget/WallpaperGridAdapter;->setDeleteAnimation(Z)V

    .line 431
    iget-object v6, p0, Lcom/htc/home/personalize/WallpaperPicker;->mGridAdapter:Lcom/htc/home/personalize/widget/WallpaperGridAdapter;

    iget-object v7, p0, Lcom/htc/home/personalize/WallpaperPicker;->mThumbs:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Lcom/htc/home/personalize/widget/WallpaperGridAdapter;->setWallpaperData(Ljava/util/ArrayList;)V

    .line 432
    iget-object v6, p0, Lcom/htc/home/personalize/WallpaperPicker;->mGridAdapter:Lcom/htc/home/personalize/widget/WallpaperGridAdapter;

    invoke-virtual {v6, v9}, Lcom/htc/home/personalize/widget/WallpaperGridAdapter;->setGridMode(Z)V

    .line 434
    iget-object v6, p0, Lcom/htc/home/personalize/WallpaperPicker;->mGridAdapter:Lcom/htc/home/personalize/widget/WallpaperGridAdapter;

    const v7, 0x7f03001e

    invoke-virtual {v6, v7}, Lcom/htc/home/personalize/widget/WallpaperGridAdapter;->setItemResource(I)V

    .line 435
    const v6, 0x7f0b000d

    invoke-virtual {p0, v6}, Lcom/htc/home/personalize/WallpaperPicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/htc/widget/HtcGridView;

    iput-object v6, p0, Lcom/htc/home/personalize/WallpaperPicker;->mGridView:Lcom/htc/widget/HtcGridView;

    .line 436
    iget-object v6, p0, Lcom/htc/home/personalize/WallpaperPicker;->mGridView:Lcom/htc/widget/HtcGridView;

    iget-object v7, p0, Lcom/htc/home/personalize/WallpaperPicker;->mGridAdapter:Lcom/htc/home/personalize/widget/WallpaperGridAdapter;

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 437
    iget-object v6, p0, Lcom/htc/home/personalize/WallpaperPicker;->mGridView:Lcom/htc/widget/HtcGridView;

    iget-object v7, p0, Lcom/htc/home/personalize/WallpaperPicker;->mGridItemClick:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcGridView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 438
    iget-object v6, p0, Lcom/htc/home/personalize/WallpaperPicker;->mGridView:Lcom/htc/widget/HtcGridView;

    invoke-virtual {v6, v9}, Lcom/htc/widget/HtcGridView;->setDrawSelectorOnTop(Z)V

    .line 439
    iget-object v6, p0, Lcom/htc/home/personalize/WallpaperPicker;->mGridView:Lcom/htc/widget/HtcGridView;

    const v7, 0x7f020007

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcGridView;->setSelector(I)V

    .line 440
    iget-object v6, p0, Lcom/htc/home/personalize/WallpaperPicker;->mGridView:Lcom/htc/widget/HtcGridView;

    invoke-virtual {v6, v9}, Lcom/htc/widget/HtcGridView;->setVerticalScrollBarEnabled(Z)V

    .line 441
    iget-object v6, p0, Lcom/htc/home/personalize/WallpaperPicker;->mGridView:Lcom/htc/widget/HtcGridView;

    invoke-virtual {v6, v10}, Lcom/htc/widget/HtcGridView;->setTopRound(Landroid/graphics/drawable/Drawable;)V

    .line 442
    iget-object v6, p0, Lcom/htc/home/personalize/WallpaperPicker;->mGridView:Lcom/htc/widget/HtcGridView;

    invoke-virtual {v6, v10}, Lcom/htc/widget/HtcGridView;->setBottomRound(Landroid/graphics/drawable/Drawable;)V

    .line 445
    iput-boolean v9, p0, Lcom/htc/home/personalize/WallpaperPicker;->mPickerTypeChanged:Z

    .line 446
    invoke-direct {p0}, Lcom/htc/home/personalize/WallpaperPicker;->goToWallpaperMain()V

    .line 454
    iget-object v6, p0, Lcom/htc/home/personalize/WallpaperPicker;->mInitProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v6, :cond_1

    .line 455
    iget-object v6, p0, Lcom/htc/home/personalize/WallpaperPicker;->mInitProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->dismiss()V

    .line 456
    iput-object v10, p0, Lcom/htc/home/personalize/WallpaperPicker;->mInitProgressDialog:Landroid/app/ProgressDialog;

    .line 458
    :cond_1
    return-void

    .line 346
    .end local v1           #itemHeight:I
    .end local v2           #itemWidth:I
    .end local v4           #refColor:I
    .end local v5           #reflectionHeight:I
    :cond_2
    invoke-virtual {p0, v9}, Lcom/htc/home/personalize/WallpaperPicker;->setRequestedOrientation(I)V

    goto/16 :goto_0

    .line 356
    :cond_3
    const v6, 0x7f090023

    goto/16 :goto_1

    .line 412
    .restart local v1       #itemHeight:I
    .restart local v2       #itemWidth:I
    .restart local v4       #refColor:I
    .restart local v5       #reflectionHeight:I
    :cond_4
    iget-object v6, p0, Lcom/htc/home/personalize/WallpaperPicker;->gotoGuid:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 413
    const/4 v6, 0x2

    invoke-static {v6, p0}, Lcom/htc/home/personalize/localresource/LocalResourceList;->getInstance2(ILandroid/content/Context;)Lcom/htc/home/personalize/localresource/LocalResourceList;

    move-result-object v3

    .line 414
    .local v3, list:Lcom/htc/home/personalize/localresource/LocalResourceList;
    if-eqz v3, :cond_5

    .line 415
    iget-object v6, p0, Lcom/htc/home/personalize/WallpaperPicker;->gotoGuid:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/htc/home/personalize/localresource/LocalResourceList;->getByGuid(Ljava/lang/String;)Lcom/htc/home/personalize/localresource/LocalResource;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/htc/home/personalize/WallpaperPicker;->getIndexByGuid(Lcom/htc/home/personalize/localresource/LocalResource;)I

    move-result v0

    .line 416
    .local v0, i:I
    if-ltz v0, :cond_5

    invoke-direct {p0}, Lcom/htc/home/personalize/WallpaperPicker;->getAdapterSize()I

    move-result v6

    if-ge v0, v6, :cond_5

    .line 417
    iput v0, p0, Lcom/htc/home/personalize/WallpaperPicker;->mSelectedPosition:I

    .line 418
    iget-object v6, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    iget v7, p0, Lcom/htc/home/personalize/WallpaperPicker;->mSelectedPosition:I

    invoke-virtual {v6, v7, v9}, Lcom/htc/widget/DeckControl;->setSelection(IZ)V

    .line 421
    .end local v0           #i:I
    :cond_5
    iput-object v10, p0, Lcom/htc/home/personalize/WallpaperPicker;->gotoGuid:Ljava/lang/String;

    goto/16 :goto_2
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 1382
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1397
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :cond_1
    :goto_0
    return v0

    .line 1385
    :sswitch_0
    iget-boolean v1, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDeleteMode:Z

    if-eqz v1, :cond_2

    .line 1386
    invoke-direct {p0}, Lcom/htc/home/personalize/WallpaperPicker;->goToWallpaperMain()V

    goto :goto_0

    .line 1388
    :cond_2
    iget-boolean v1, p0, Lcom/htc/home/personalize/WallpaperPicker;->mWallpaperPreviewed:Z

    if-eqz v1, :cond_3

    .line 1389
    invoke-direct {p0}, Lcom/htc/home/personalize/WallpaperPicker;->goToWallpaperMain()V

    goto :goto_0

    .line 1394
    :cond_3
    :sswitch_1
    iget-boolean v1, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDeleteMode:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/htc/home/personalize/WallpaperPicker;->mWallpaperPreviewed:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1382
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x52 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v6, -0x1

    .line 1465
    const-string v3, "WallpaperPicker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wallpaper picker onActivityResult : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1467
    packed-switch p1, :pswitch_data_0

    .line 1522
    :cond_0
    :goto_0
    return-void

    .line 1469
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/home/personalize/WallpaperPicker;->loadNetworkWallpapers()V

    .line 1470
    sget-object v3, Lcom/htc/home/personalize/WallpaperPicker$17;->$SwitchMap$com$htc$home$personalize$WallpaperPicker$PickerType:[I

    iget-object v4, p0, Lcom/htc/home/personalize/WallpaperPicker;->mPickerType:Lcom/htc/home/personalize/WallpaperPicker$PickerType;

    invoke-virtual {v4}, Lcom/htc/home/personalize/WallpaperPicker$PickerType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    .line 1483
    :cond_1
    :goto_1
    if-ne p2, v6, :cond_0

    .line 1484
    const-string v3, "GUID"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1485
    .local v1, guid:Ljava/lang/String;
    const/4 v3, 0x2

    invoke-static {v3, p0}, Lcom/htc/home/personalize/localresource/LocalResourceList;->getInstance2(ILandroid/content/Context;)Lcom/htc/home/personalize/localresource/LocalResourceList;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/htc/home/personalize/localresource/LocalResourceList;->getByGuid(Ljava/lang/String;)Lcom/htc/home/personalize/localresource/LocalResource;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/htc/home/personalize/WallpaperPicker;->getIndexByGuid(Lcom/htc/home/personalize/localresource/LocalResource;)I

    move-result v2

    .line 1487
    .local v2, index:I
    :try_start_0
    iput v2, p0, Lcom/htc/home/personalize/WallpaperPicker;->mWallpaperPosition:I

    iput v2, p0, Lcom/htc/home/personalize/WallpaperPicker;->mSelectedPosition:I

    .line 1488
    const-string v3, "WallpaperPicker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onActivityResult mWallpaperPosition : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/home/personalize/WallpaperPicker;->mWallpaperPosition:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    iget-object v3, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    iget v4, p0, Lcom/htc/home/personalize/WallpaperPicker;->mSelectedPosition:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/DeckControl;->setSelection(IZ)V

    .line 1492
    iget-object v3, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    iget v4, p0, Lcom/htc/home/personalize/WallpaperPicker;->mSelectedPosition:I

    invoke-virtual {v3, v4}, Lcom/htc/widget/DeckControl;->notifyDataSetChanged(I)V

    .line 1493
    const-string v3, "WallpaperPicker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onActivityResult getSelection : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    invoke-virtual {v5}, Lcom/htc/widget/DeckControl;->getSelection()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    invoke-direct {p0}, Lcom/htc/home/personalize/WallpaperPicker;->updateTitle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1498
    :catch_0
    move-exception v0

    .line 1503
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "WallpaperPicker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onActivityResult: e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1472
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #guid:Ljava/lang/String;
    .end local v2           #index:I
    :pswitch_1
    iget-object v3, p0, Lcom/htc/home/personalize/WallpaperPicker;->mPanelAdapter:Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;

    if-eqz v3, :cond_1

    .line 1473
    iget-object v3, p0, Lcom/htc/home/personalize/WallpaperPicker;->mPanelAdapter:Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;

    invoke-virtual {v3}, Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;->notifyDataSetChanged()V

    goto/16 :goto_1

    .line 1477
    :pswitch_2
    iget-object v3, p0, Lcom/htc/home/personalize/WallpaperPicker;->mGridAdapter:Lcom/htc/home/personalize/widget/WallpaperGridAdapter;

    if-eqz v3, :cond_1

    .line 1478
    iget-object v3, p0, Lcom/htc/home/personalize/WallpaperPicker;->mGridAdapter:Lcom/htc/home/personalize/widget/WallpaperGridAdapter;

    invoke-virtual {v3}, Lcom/htc/home/personalize/widget/WallpaperGridAdapter;->notifyDataSetChanged()V

    goto/16 :goto_1

    .line 1508
    :pswitch_3
    if-ne p2, v6, :cond_0

    .line 1515
    invoke-static {p0}, Lcom/htc/home/personalize/PersonalizeCarousel;->launchHome(Landroid/content/Context;)V

    .line 1516
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.htc.home.personalize.ACTION_FINISH_AND_LAUNCH_HOME"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/htc/home/personalize/WallpaperPicker;->sendBroadcast(Landroid/content/Intent;)V

    .line 1517
    invoke-virtual {p0}, Lcom/htc/home/personalize/WallpaperPicker;->finish()V

    goto/16 :goto_0

    .line 1467
    nop

    :pswitch_data_0
    .packed-switch 0x100
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 1470
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const/4 v6, 0x1

    .line 225
    const-string v4, "WallpaperPicker"

    const-string v5, "Wallpaper picker onCreate"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-virtual {p0}, Lcom/htc/home/personalize/WallpaperPicker;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 228
    .local v3, intent:Landroid/content/Intent;
    :try_start_0
    const-string v4, "IS_SELECT_LOCKSCREEN"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/home/personalize/WallpaperPicker;->mIsPickLockScreenWallpaper:Z

    .line 229
    if-eqz p1, :cond_1

    .line 230
    const-string v4, "wallpaper_position"

    const/4 v5, -0x1

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/htc/home/personalize/WallpaperPicker;->mWallpaperPosition:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    :goto_0
    invoke-virtual {p0}, Lcom/htc/home/personalize/WallpaperPicker;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 240
    invoke-virtual {p0}, Lcom/htc/home/personalize/WallpaperPicker;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/home/personalize/WallpaperPicker$RetainNonConfigurationInstance;

    .line 241
    .local v0, configInstance:Lcom/htc/home/personalize/WallpaperPicker$RetainNonConfigurationInstance;
    iget-boolean v4, v0, Lcom/htc/home/personalize/WallpaperPicker$RetainNonConfigurationInstance;->dockMode:Z

    iput-boolean v4, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDockMode:Z

    .line 242
    iget v4, v0, Lcom/htc/home/personalize/WallpaperPicker$RetainNonConfigurationInstance;->selectPosition:I

    iput v4, p0, Lcom/htc/home/personalize/WallpaperPicker;->mWallpaperPosition:I

    .line 245
    .end local v0           #configInstance:Lcom/htc/home/personalize/WallpaperPicker$RetainNonConfigurationInstance;
    :cond_0
    iget-boolean v4, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDockMode:Z

    if-eqz v4, :cond_3

    .line 246
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lcom/htc/home/personalize/WallpaperPicker;->setRequestedOrientation(I)V

    .line 250
    :goto_1
    const-string v4, ""

    const v5, 0x20c00a3

    invoke-virtual {p0, v5}, Lcom/htc/home/personalize/WallpaperPicker;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v4, v5, v6, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/home/personalize/WallpaperPicker;->mInitProgressDialog:Landroid/app/ProgressDialog;

    .line 252
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 254
    invoke-virtual {p0}, Lcom/htc/home/personalize/WallpaperPicker;->NonUiInit()V

    .line 256
    new-instance v2, Landroid/content/IntentFilter;

    sget-object v4, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->ACTION_RES_STATUSCHANGED:Ljava/lang/String;

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 257
    .local v2, filter:Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/htc/home/personalize/WallpaperPicker;->localWallpaperStatusMonitor:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v2}, Lcom/htc/home/personalize/WallpaperPicker;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 259
    const-string v4, "common_app_bkg"

    const v5, 0x20806b7

    invoke-static {p0, v4, v5}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/htc/home/personalize/WallpaperPicker;->mBackgroundId:I

    .line 260
    invoke-virtual {p0}, Lcom/htc/home/personalize/WallpaperPicker;->getWindow()Landroid/view/Window;

    move-result-object v4

    iget v5, p0, Lcom/htc/home/personalize/WallpaperPicker;->mBackgroundId:I

    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 261
    return-void

    .line 231
    .end local v2           #filter:Landroid/content/IntentFilter;
    :cond_1
    :try_start_1
    const-string v4, "EXTRA_CALL_FROM"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 232
    const-string v4, "EXTRA_CALL_FROM"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "dock_mode"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDockMode:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 236
    :catch_0
    move-exception v1

    .line 237
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 234
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_2
    const-string v4, "GUID"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/home/personalize/WallpaperPicker;->gotoGuid:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 248
    :cond_3
    invoke-virtual {p0, v6}, Lcom/htc/home/personalize/WallpaperPicker;->setRequestedOrientation(I)V

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .parameter "id"

    .prologue
    const v5, 0x7f090030

    const v2, 0x1080027

    const v4, 0x104000a

    const/4 v3, -0x3

    .line 1337
    packed-switch p1, :pswitch_data_0

    .line 1368
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1339
    :pswitch_0
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 1340
    .local v0, err_no_space:Lcom/htc/widget/HtcAlertDialog;
    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog;->setIcon(I)V

    .line 1341
    invoke-virtual {p0}, Lcom/htc/home/personalize/WallpaperPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1342
    invoke-virtual {p0}, Lcom/htc/home/personalize/WallpaperPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090032

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1343
    invoke-virtual {p0}, Lcom/htc/home/personalize/WallpaperPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/htc/home/personalize/WallpaperPicker$14;

    invoke-direct {v2, p0}, Lcom/htc/home/personalize/WallpaperPicker$14;-><init>(Lcom/htc/home/personalize/WallpaperPicker;)V

    invoke-virtual {v0, v3, v1, v2}, Lcom/htc/widget/HtcAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 1353
    .end local v0           #err_no_space:Lcom/htc/widget/HtcAlertDialog;
    :pswitch_1
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 1354
    .restart local v0       #err_no_space:Lcom/htc/widget/HtcAlertDialog;
    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog;->setIcon(I)V

    .line 1355
    invoke-virtual {p0}, Lcom/htc/home/personalize/WallpaperPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1356
    invoke-virtual {p0}, Lcom/htc/home/personalize/WallpaperPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090033

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1357
    invoke-virtual {p0}, Lcom/htc/home/personalize/WallpaperPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/htc/home/personalize/WallpaperPicker$15;

    invoke-direct {v2, p0}, Lcom/htc/home/personalize/WallpaperPicker$15;-><init>(Lcom/htc/home/personalize/WallpaperPicker;)V

    invoke-virtual {v0, v3, v1, v2}, Lcom/htc/widget/HtcAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 1337
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v1, 0x0

    .line 1402
    const-string v2, "WallpaperPicker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreateOptionsMenu : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDockMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    iget-boolean v2, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDockMode:Z

    if-eqz v2, :cond_0

    .line 1418
    :goto_0
    return v1

    .line 1409
    :cond_0
    const/4 v2, 0x1

    const v3, 0x7f090024

    invoke-interface {p1, v1, v2, v1, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 1410
    .local v0, item:Landroid/view/MenuItem;
    const v2, 0x2080326

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1413
    iget-boolean v2, p0, Lcom/htc/home/personalize/WallpaperPicker;->mCSPackageInstalled:Z

    if-eqz v2, :cond_1

    .line 1414
    const/4 v2, 0x2

    const v3, 0x7f090005

    invoke-interface {p1, v1, v2, v1, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 1415
    const v1, 0x2080323

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1418
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 753
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker;->mPanelAdapter:Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;

    invoke-virtual {v0}, Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;->deInit()V

    .line 754
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker;->localWallpaperStatusMonitor:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/WallpaperPicker;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 755
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker;->mWallpaperLoader:Lcom/htc/home/personalize/WallpaperLoader;

    if-eqz v0, :cond_0

    .line 756
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker;->mWallpaperLoader:Lcom/htc/home/personalize/WallpaperLoader;

    invoke-virtual {v0}, Lcom/htc/home/personalize/WallpaperLoader;->removeCaches()V

    .line 757
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker;->mWallpaperLoader:Lcom/htc/home/personalize/WallpaperLoader;

    invoke-virtual {v0}, Lcom/htc/home/personalize/WallpaperLoader;->unInitHandler()V

    .line 759
    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker;->mInitProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 760
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker;->mInitProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 761
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker;->mInitProgressDialog:Landroid/app/ProgressDialog;

    .line 763
    :cond_1
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    invoke-virtual {v0}, Lcom/htc/widget/DeckControl;->destroy()V

    .line 764
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDeckControlView:Lcom/htc/widget/DeckControlView;

    invoke-virtual {v0}, Lcom/htc/widget/DeckControlView;->release()V

    .line 765
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker;->mPreloadBackground:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 766
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker;->mPreloadBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 768
    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 769
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    .line 274
    const-string v4, "WallpaperPicker"

    const-string v5, "Wallpaper picker onNewIntent"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :try_start_0
    const-string v4, "EXTRA_CALL_FROM"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 278
    const-string v4, "EXTRA_CALL_FROM"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "dock_mode"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 279
    .local v3, tmpDockMode:Z
    iget-boolean v4, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDockMode:Z

    if-eq v3, v4, :cond_1

    .line 280
    iput-boolean v3, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDockMode:Z

    .line 281
    iget-boolean v4, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDockMode:Z

    if-eqz v4, :cond_0

    .line 282
    const/4 v4, -0x1

    iput v4, p0, Lcom/htc/home/personalize/WallpaperPicker;->mWallpaperPosition:I

    .line 283
    :cond_0
    invoke-virtual {p0}, Lcom/htc/home/personalize/WallpaperPicker;->UiInit()V

    .line 290
    .end local v3           #tmpDockMode:Z
    :cond_1
    :goto_0
    const-string v4, "GUID"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/home/personalize/WallpaperPicker;->gotoGuid:Ljava/lang/String;

    .line 291
    iget-object v4, p0, Lcom/htc/home/personalize/WallpaperPicker;->gotoGuid:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/htc/home/personalize/WallpaperPicker;->mPickerType:Lcom/htc/home/personalize/WallpaperPicker$PickerType;

    sget-object v5, Lcom/htc/home/personalize/WallpaperPicker$PickerType;->PANEL:Lcom/htc/home/personalize/WallpaperPicker$PickerType;

    if-ne v4, v5, :cond_3

    .line 292
    const/4 v4, 0x2

    invoke-static {v4, p0}, Lcom/htc/home/personalize/localresource/LocalResourceList;->getInstance2(ILandroid/content/Context;)Lcom/htc/home/personalize/localresource/LocalResourceList;

    move-result-object v2

    .line 293
    .local v2, list:Lcom/htc/home/personalize/localresource/LocalResourceList;
    if-eqz v2, :cond_2

    .line 294
    iget-object v4, p0, Lcom/htc/home/personalize/WallpaperPicker;->gotoGuid:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/htc/home/personalize/localresource/LocalResourceList;->getByGuid(Ljava/lang/String;)Lcom/htc/home/personalize/localresource/LocalResource;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/htc/home/personalize/WallpaperPicker;->getIndexByGuid(Lcom/htc/home/personalize/localresource/LocalResource;)I

    move-result v1

    .line 295
    .local v1, i:I
    if-ltz v1, :cond_2

    invoke-direct {p0}, Lcom/htc/home/personalize/WallpaperPicker;->getAdapterSize()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 296
    iput v1, p0, Lcom/htc/home/personalize/WallpaperPicker;->mSelectedPosition:I

    .line 297
    iget-object v4, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    iget v5, p0, Lcom/htc/home/personalize/WallpaperPicker;->mSelectedPosition:I

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/htc/widget/DeckControl;->setSelection(IZ)V

    .line 300
    .end local v1           #i:I
    :cond_2
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/htc/home/personalize/WallpaperPicker;->gotoGuid:Ljava/lang/String;

    .line 307
    .end local v2           #list:Lcom/htc/home/personalize/localresource/LocalResourceList;
    :cond_3
    :goto_1
    return-void

    .line 286
    :cond_4
    iget-boolean v4, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDockMode:Z

    if-eqz v4, :cond_1

    .line 287
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDockMode:Z

    .line 288
    invoke-virtual {p0}, Lcom/htc/home/personalize/WallpaperPicker;->UiInit()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 302
    :catch_0
    move-exception v0

    .line 303
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "item"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1535
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 1590
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    :goto_0
    return v4

    .line 1537
    :pswitch_0
    sget-object v5, Lcom/htc/home/personalize/WallpaperPicker$17;->$SwitchMap$com$htc$home$personalize$WallpaperPicker$PickerType:[I

    iget-object v6, p0, Lcom/htc/home/personalize/WallpaperPicker;->mPickerType:Lcom/htc/home/personalize/WallpaperPicker$PickerType;

    invoke-virtual {v6}, Lcom/htc/home/personalize/WallpaperPicker$PickerType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_1

    goto :goto_0

    .line 1545
    :pswitch_1
    sget-object v3, Lcom/htc/home/personalize/WallpaperPicker$PickerType;->PANEL:Lcom/htc/home/personalize/WallpaperPicker$PickerType;

    iput-object v3, p0, Lcom/htc/home/personalize/WallpaperPicker;->mPickerType:Lcom/htc/home/personalize/WallpaperPicker$PickerType;

    .line 1546
    iput-boolean v4, p0, Lcom/htc/home/personalize/WallpaperPicker;->mPickerTypeChanged:Z

    .line 1547
    invoke-static {p0, v4}, Lcom/htc/home/personalize/WallpaperPicker;->setPanelType(Landroid/content/Context;Z)Z

    .line 1548
    invoke-direct {p0}, Lcom/htc/home/personalize/WallpaperPicker;->goToWallpaperMain()V

    goto :goto_0

    .line 1539
    :pswitch_2
    sget-object v5, Lcom/htc/home/personalize/WallpaperPicker$PickerType;->GRID:Lcom/htc/home/personalize/WallpaperPicker$PickerType;

    iput-object v5, p0, Lcom/htc/home/personalize/WallpaperPicker;->mPickerType:Lcom/htc/home/personalize/WallpaperPicker$PickerType;

    .line 1540
    iput-boolean v4, p0, Lcom/htc/home/personalize/WallpaperPicker;->mPickerTypeChanged:Z

    .line 1541
    invoke-static {p0, v3}, Lcom/htc/home/personalize/WallpaperPicker;->setPanelType(Landroid/content/Context;Z)Z

    .line 1542
    invoke-direct {p0}, Lcom/htc/home/personalize/WallpaperPicker;->goToWallpaperMain()V

    goto :goto_0

    .line 1553
    :pswitch_3
    iget v0, p0, Lcom/htc/home/personalize/WallpaperPicker;->mSelectedPosition:I

    .line 1554
    .local v0, normalModeFocusWallpaperPosition:I
    invoke-direct {p0, v0}, Lcom/htc/home/personalize/WallpaperPicker;->getWallpaperTypeByPosition(I)Lcom/htc/home/personalize/WallpaperPicker$WallpaperType;

    move-result-object v1

    .line 1556
    .local v1, normalModeSelectedWallpaperType:Lcom/htc/home/personalize/WallpaperPicker$WallpaperType;
    invoke-virtual {p0}, Lcom/htc/home/personalize/WallpaperPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090005

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDeleteString:Ljava/lang/String;

    .line 1557
    const-string v5, "%s (%d)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDeleteString:Ljava/lang/String;

    aput-object v7, v6, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1558
    .local v2, strFooterButtonRightText:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/home/personalize/WallpaperPicker;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v5, v2}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    .line 1559
    iget-object v5, p0, Lcom/htc/home/personalize/WallpaperPicker;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v5, v3}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 1560
    iget-object v5, p0, Lcom/htc/home/personalize/WallpaperPicker;->mFooterButtonLeft:Lcom/htc/widget/HtcFooterButton;

    const v6, 0x7f090025

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 1561
    iget-object v5, p0, Lcom/htc/home/personalize/WallpaperPicker;->mFooterButtonLeft:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v5, v4}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 1562
    iget-object v5, p0, Lcom/htc/home/personalize/WallpaperPicker;->mFooterBar:Lcom/htc/widget/HtcFooter;

    invoke-virtual {v5, v3}, Lcom/htc/widget/HtcFooter;->setVisibility(I)V

    .line 1563
    iget-object v5, p0, Lcom/htc/home/personalize/WallpaperPicker;->mHeaderImageRight:Lcom/htc/widget/HeaderBarImage;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    .line 1564
    iget-object v5, p0, Lcom/htc/home/personalize/WallpaperPicker;->mFooterButtonLeft:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v5, v3}, Lcom/htc/widget/HtcFooterButton;->setVisibility(I)V

    .line 1566
    invoke-direct {p0}, Lcom/htc/home/personalize/WallpaperPicker;->updateDeletedIndex()V

    .line 1567
    iput-boolean v4, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDeleteMode:Z

    .line 1568
    iget-object v5, p0, Lcom/htc/home/personalize/WallpaperPicker;->mWallpaperLoader:Lcom/htc/home/personalize/WallpaperLoader;

    invoke-virtual {v5, v4}, Lcom/htc/home/personalize/WallpaperLoader;->setDeleteMode(Z)V

    .line 1569
    sget-object v5, Lcom/htc/home/personalize/WallpaperPicker$17;->$SwitchMap$com$htc$home$personalize$WallpaperPicker$PickerType:[I

    iget-object v6, p0, Lcom/htc/home/personalize/WallpaperPicker;->mPickerType:Lcom/htc/home/personalize/WallpaperPicker$PickerType;

    invoke-virtual {v6}, Lcom/htc/home/personalize/WallpaperPicker$PickerType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_2

    goto/16 :goto_0

    .line 1583
    :pswitch_4
    iget-object v3, p0, Lcom/htc/home/personalize/WallpaperPicker;->mGridAdapter:Lcom/htc/home/personalize/widget/WallpaperGridAdapter;

    invoke-virtual {v3, v4}, Lcom/htc/home/personalize/widget/WallpaperGridAdapter;->setDeleteMode(Z)V

    .line 1584
    iget-object v3, p0, Lcom/htc/home/personalize/WallpaperPicker;->mGridAdapter:Lcom/htc/home/personalize/widget/WallpaperGridAdapter;

    invoke-virtual {v3}, Lcom/htc/home/personalize/widget/WallpaperGridAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 1571
    :pswitch_5
    iget-object v5, p0, Lcom/htc/home/personalize/WallpaperPicker;->mPanelAdapter:Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;

    invoke-virtual {v5, v4}, Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;->setDeleteMode(Z)V

    .line 1572
    iget-object v5, p0, Lcom/htc/home/personalize/WallpaperPicker;->mPanelAdapter:Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;

    iget-object v6, p0, Lcom/htc/home/personalize/WallpaperPicker;->mNetworkData:Lcom/htc/home/personalize/config/GalleryData;

    invoke-virtual {v6}, Lcom/htc/home/personalize/config/GalleryData;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;->notifyDataSetChanged(I)V

    .line 1573
    iget-object v5, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    invoke-virtual {v5}, Lcom/htc/widget/DeckControl;->getSelection()I

    move-result v5

    iput v5, p0, Lcom/htc/home/personalize/WallpaperPicker;->mSelectedPosition:I

    .line 1574
    sget-object v5, Lcom/htc/home/personalize/WallpaperPicker$WallpaperType;->NETWORK:Lcom/htc/home/personalize/WallpaperPicker$WallpaperType;

    if-ne v1, v5, :cond_1

    .line 1576
    iget-object v5, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDeletedIndex:[Z

    iget-object v6, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDeletedIndex:[Z

    aget-boolean v6, v6, v0

    if-nez v6, :cond_0

    move v3, v4

    :cond_0
    aput-boolean v3, v5, v0

    .line 1577
    iget-object v3, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDeletedIndex:[Z

    aget-boolean v3, v3, v0

    invoke-direct {p0, v3}, Lcom/htc/home/personalize/WallpaperPicker;->handleDeleteCount(Z)V

    .line 1578
    iget-object v3, p0, Lcom/htc/home/personalize/WallpaperPicker;->mPanelAdapter:Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;

    invoke-virtual {v3, v0}, Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;->notifyUpdateItem(I)V

    .line 1580
    :cond_1
    invoke-direct {p0}, Lcom/htc/home/personalize/WallpaperPicker;->updateTitle()V

    goto/16 :goto_0

    .line 1535
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 1537
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1569
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 736
    const-string v0, "WallpaperPicker"

    const-string v1, "Wallpaper picker onPause+"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 739
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 0
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 1373
    .line 1378
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter "menu"

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1423
    const-string v3, "WallpaperPicker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPrepareOptionsMenu : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDockMode:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    iget-boolean v3, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDockMode:Z

    if-eqz v3, :cond_0

    .line 1450
    :goto_0
    return v1

    .line 1427
    :cond_0
    iget-boolean v3, p0, Lcom/htc/home/personalize/WallpaperPicker;->mCSPackageInstalled:Z

    if-eqz v3, :cond_1

    .line 1428
    iget-object v3, p0, Lcom/htc/home/personalize/WallpaperPicker;->mNetworkData:Lcom/htc/home/personalize/config/GalleryData;

    invoke-virtual {v3}, Lcom/htc/home/personalize/config/GalleryData;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 1429
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1435
    :cond_1
    :goto_1
    iget-boolean v3, p0, Lcom/htc/home/personalize/WallpaperPicker;->mPickerTypeChanged:Z

    if-nez v3, :cond_3

    .line 1436
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    goto :goto_0

    .line 1431
    :cond_2
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 1438
    :cond_3
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1439
    .local v0, item:Landroid/view/MenuItem;
    sget-object v3, Lcom/htc/home/personalize/WallpaperPicker$17;->$SwitchMap$com$htc$home$personalize$WallpaperPicker$PickerType:[I

    iget-object v4, p0, Lcom/htc/home/personalize/WallpaperPicker;->mPickerType:Lcom/htc/home/personalize/WallpaperPicker$PickerType;

    invoke-virtual {v4}, Lcom/htc/home/personalize/WallpaperPicker$PickerType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1449
    :goto_2
    iput-boolean v1, p0, Lcom/htc/home/personalize/WallpaperPicker;->mPickerTypeChanged:Z

    move v1, v2

    .line 1450
    goto :goto_0

    .line 1441
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/home/personalize/WallpaperPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090024

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1442
    const v3, 0x2080326

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_2

    .line 1445
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/home/personalize/WallpaperPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09001a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1446
    const v3, 0x20809b9

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_2

    .line 1439
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 723
    const-string v0, "WallpaperPicker"

    const-string v1, "Wallpaper picker onResume+"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 726
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/home/personalize/WallpaperPicker;->mIsWallpaperSet:Z

    .line 728
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    if-eqz v0, :cond_0

    .line 729
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    iget v1, p0, Lcom/htc/home/personalize/WallpaperPicker;->mSelectedPosition:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/DeckControl;->setSelection(IZ)V

    .line 731
    :cond_0
    const-string v0, "WallpaperPicker"

    const-string v1, "Wallpaper picker onResume-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 312
    new-instance v0, Lcom/htc/home/personalize/WallpaperPicker$RetainNonConfigurationInstance;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/home/personalize/WallpaperPicker$RetainNonConfigurationInstance;-><init>(Lcom/htc/home/personalize/WallpaperPicker;Lcom/htc/home/personalize/WallpaperPicker$1;)V

    .line 313
    .local v0, instance:Lcom/htc/home/personalize/WallpaperPicker$RetainNonConfigurationInstance;
    iget-boolean v1, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDockMode:Z

    iput-boolean v1, v0, Lcom/htc/home/personalize/WallpaperPicker$RetainNonConfigurationInstance;->dockMode:Z

    .line 314
    iget v1, p0, Lcom/htc/home/personalize/WallpaperPicker;->mSelectedPosition:I

    iput v1, v0, Lcom/htc/home/personalize/WallpaperPicker$RetainNonConfigurationInstance;->selectPosition:I

    .line 315
    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 265
    iget-boolean v0, p0, Lcom/htc/home/personalize/WallpaperPicker;->mDockMode:Z

    if-nez v0, :cond_0

    .line 266
    iget v0, p0, Lcom/htc/home/personalize/WallpaperPicker;->mSelectedPosition:I

    iput v0, p0, Lcom/htc/home/personalize/WallpaperPicker;->mWallpaperPosition:I

    .line 267
    const-string v0, "wallpaper_position"

    iget v1, p0, Lcom/htc/home/personalize/WallpaperPicker;->mSelectedPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 269
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 270
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 743
    const-string v0, "WallpaperPicker"

    const-string v1, "Wallpaper picker onStop+"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker;->mWallpaperLoader:Lcom/htc/home/personalize/WallpaperLoader;

    if-eqz v0, :cond_0

    .line 745
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker;->mWallpaperLoader:Lcom/htc/home/personalize/WallpaperLoader;

    invoke-virtual {v0}, Lcom/htc/home/personalize/WallpaperLoader;->removeCaches()V

    .line 747
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 748
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/home/personalize/WallpaperPicker;->mRemoveAll:Z

    .line 749
    return-void
.end method

.method public setupHeaderFooter()V
    .locals 2

    .prologue
    .line 473
    const v0, 0x7f0b000e

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/WallpaperPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarText;

    iput-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    .line 474
    const v0, 0x7f0b000f

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/WallpaperPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarImage;

    iput-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker;->mHeaderImageRight:Lcom/htc/widget/HeaderBarImage;

    .line 476
    const v0, 0x7f0b0045

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/WallpaperPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooter;

    iput-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker;->mFooterBar:Lcom/htc/widget/HtcFooter;

    .line 477
    const v0, 0x7f0b0002

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/WallpaperPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    iput-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker;->mFooterButtonLeft:Lcom/htc/widget/HtcFooterButton;

    .line 478
    const v0, 0x7f0b0003

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/WallpaperPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    iput-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

    .line 480
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 481
    return-void
.end method
