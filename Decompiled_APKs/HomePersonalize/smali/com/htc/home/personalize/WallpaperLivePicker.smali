.class public Lcom/htc/home/personalize/WallpaperLivePicker;
.super Landroid/app/Activity;
.source "WallpaperLivePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/home/personalize/WallpaperLivePicker$12;,
        Lcom/htc/home/personalize/WallpaperLivePicker$RetainNonConfigurationInstance;,
        Lcom/htc/home/personalize/WallpaperLivePicker$PickerType;
    }
.end annotation


# static fields
.field static final ACTION_SET_LIVEWALLPAPER_DOCKMODE:Ljava/lang/String; = "com.htc.intent.ACTION_SET_LIVEWALLPAPER_DOCKMODE"

.field private static final CACHE_SIZE:I = 0x14

.field private static final DEFAULT_WALLPAPER_POSITION:I = -0x1

.field static final EXTRA_CALL_FROM:Ljava/lang/String; = "EXTRA_CALL_FROM"

.field static final EXTRA_WALLPAPER_COMPONENT:Ljava/lang/String; = "EXTRA_WALLPAPER_COMPONENT"

.field private static final EXTRA_WALLPAPER_POSITION:Ljava/lang/String; = "wallpaper_position"

.field private static final IDLE_SCREEN_PANEL_TYPE:Ljava/lang/String; = "idle_screen_panel_type"

.field private static final LIVE_WALLPAPER_PREVIEW_CLASS_NAME:Ljava/lang/String; = "com.htc.home.personalize.LiveWallpaperPreview"

.field private static final LOCK_SCREEN_PREVIEW_CLASS_NAME:Ljava/lang/String; = "com.htc.home.personalize.IdleScreenPreview"

.field private static final MENU_GRID_ID:I = 0x1

.field private static final PANEL_TYPE:Ljava/lang/String; = "panel_type"

.field private static final PERSONALIZE_PACKAGE_NAME:Ljava/lang/String; = "com.htc.home.personalize"

.field private static final REQUEST_ADD_WALLPAPER:I = 0x100

.field private static final REQUEST_IDLESCREEN_SETTING:I = 0x102

.field private static final REQUEST_PREVIEW:I = 0x101

.field static final STR_EXTRA_CALL_FROM:Ljava/lang/String; = "dock_mode"

.field private static final TAG:Ljava/lang/String; = "WallpaperLivePicker"

.field public static localLOGV:Z


# instance fields
.field private isUiInit:Z

.field private mBackgroundId:I

.field private mBtn1Click:Landroid/view/View$OnClickListener;

.field private mBtn2Click:Landroid/view/View$OnClickListener;

.field private mCurrentLabel:Ljava/lang/String;

.field private mCustomized:Z

.field private mDeckControl:Lcom/htc/widget/DeckControl;

.field private mDeckControlView:Lcom/htc/widget/DeckControlView;

.field private mDockMode:Z

.field private mDockModeSettingLiveWallpapers:[Ljava/lang/String;

.field private mFooterBar:Lcom/htc/widget/HtcFooter;

.field private mFooterButtonLeft:Lcom/htc/widget/HtcFooterButton;

.field private mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

.field private mGalleryClick:Lcom/htc/widget/DeckControl$OnItemClickListener;

.field private mGallerySelected:Lcom/htc/widget/DeckControl$OnItemSelectedListener;

.field private mGallerySelectedPosition:I

.field private mGalleryTouch:Landroid/view/View$OnTouchListener;

.field private mGridItemClick:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

.field private final mHandler:Landroid/os/Handler;

.field private mHeaderCountText:Ljava/lang/String;

.field private mHeaderImageRight:Lcom/htc/widget/HeaderBarImage;

.field private mHeaderText:Lcom/htc/widget/HeaderBarText;

.field private mHeaderTitleText:Ljava/lang/String;

.field private mHideLiveWallpapers:[Ljava/lang/String;

.field private mIdleScreenPicker:Z

.field private mIsFinish:Z

.field private mItemDescription:Landroid/widget/TextView;

.field private mItemLabel:Landroid/widget/TextView;

.field private mItemSelected:Z

.field private mListAdapter:Lcom/htc/home/personalize/widget/LiveWallpaperListAdapter;

.field protected mListView:Lcom/htc/widget/HtcListView;

.field private mLiveData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mMapDownloaded:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mPanelAdapter:Lcom/htc/home/personalize/widget/LiveWallpaperPanelAdapter;

.field private mPickerType:Lcom/htc/home/personalize/WallpaperLivePicker$PickerType;

.field private mPickerTypeChanged:Z

.field mPreloadBackground:Landroid/graphics/Bitmap;

.field private mRemoveAll:Z

.field private mScrolling:[Z

.field private mSelectedPosition:I

.field private mSpecialWallpapers:[Ljava/lang/String;

.field private mStartingSetting:Z

.field private mTitlePosition:I

.field private mTouching:Z

.field private mUiHandler:Landroid/os/Handler;

.field private mUpdateCallback:Lcom/htc/home/personalize/WallpaperLoader$UIUpdateCallback;

.field private final mUpdateTitle:Ljava/lang/Runnable;

.field private final mUpdateWallpaper:Ljava/lang/Runnable;

.field private mWallpaperLoader:Lcom/htc/home/personalize/WallpaperLoader;

.field private mWallpaperPosition:I

.field private mWallpaperPreviewed:Z

.field private mWallpaperUpdateCallback:Lcom/htc/home/personalize/widget/LiveWallpaperPanelAdapter$WallpaperUpdateCallback;

.field private midlescreenPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/home/personalize/WallpaperLivePicker;->localLOGV:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 98
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mLiveData:Ljava/util/ArrayList;

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mMapDownloaded:Ljava/util/Map;

    .line 110
    iput-boolean v2, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mCustomized:Z

    .line 127
    iput-object v1, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    .line 128
    iput-object v1, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mDeckControlView:Lcom/htc/widget/DeckControlView;

    .line 133
    iput-object v1, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    .line 134
    iput-object v1, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mHeaderImageRight:Lcom/htc/widget/HeaderBarImage;

    .line 135
    iput-object v1, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mFooterBar:Lcom/htc/widget/HtcFooter;

    .line 136
    iput-object v1, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mFooterButtonLeft:Lcom/htc/widget/HtcFooterButton;

    .line 137
    iput-object v1, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

    .line 138
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mHeaderTitleText:Ljava/lang/String;

    .line 139
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mHeaderCountText:Ljava/lang/String;

    .line 144
    iput v4, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mSelectedPosition:I

    .line 146
    iput v2, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mTitlePosition:I

    .line 147
    iput v2, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mGallerySelectedPosition:I

    .line 148
    iput v4, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mWallpaperPosition:I

    .line 149
    iput v4, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->midlescreenPosition:I

    .line 150
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mUiHandler:Landroid/os/Handler;

    .line 157
    sget-object v0, Lcom/htc/home/personalize/WallpaperLivePicker$PickerType;->PANEL:Lcom/htc/home/personalize/WallpaperLivePicker$PickerType;

    iput-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mPickerType:Lcom/htc/home/personalize/WallpaperLivePicker$PickerType;

    .line 158
    iput-boolean v2, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mPickerTypeChanged:Z

    .line 163
    iput-boolean v2, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mWallpaperPreviewed:Z

    .line 170
    new-array v0, v3, [Z

    aput-boolean v2, v0, v2

    iput-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mScrolling:[Z

    .line 171
    iput-boolean v2, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mTouching:Z

    .line 172
    iput-boolean v2, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mItemSelected:Z

    .line 173
    iput-boolean v3, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mRemoveAll:Z

    .line 174
    iput-boolean v2, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mIsFinish:Z

    .line 176
    iput-boolean v2, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mIdleScreenPicker:Z

    .line 177
    iput-boolean v2, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mDockMode:Z

    .line 178
    iput-boolean v2, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mStartingSetting:Z

    .line 180
    iput-boolean v2, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->isUiInit:Z

    .line 183
    iput-object v1, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mPreloadBackground:Landroid/graphics/Bitmap;

    .line 185
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "com.htc.android.image_wallpaper.Wallpaper"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mDockModeSettingLiveWallpapers:[Ljava/lang/String;

    .line 187
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "com.google.googlenav.wallpaper.MapWallpaper"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mHideLiveWallpapers:[Ljava/lang/String;

    .line 194
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.htc.android.wallpaper.bokeh.BokehWallpaper"

    aput-object v1, v0, v2

    const-string v1, "com.htc.android.image_wallpaper.Wallpaper"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "com.htc.android.WeatherLiveWallpaper.Weather"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.htc.livewallpaper.streak.StreakLiveWallpaperService"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mSpecialWallpapers:[Ljava/lang/String;

    .line 743
    new-instance v0, Lcom/htc/home/personalize/WallpaperLivePicker$2;

    invoke-direct {v0, p0}, Lcom/htc/home/personalize/WallpaperLivePicker$2;-><init>(Lcom/htc/home/personalize/WallpaperLivePicker;)V

    iput-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mGallerySelected:Lcom/htc/widget/DeckControl$OnItemSelectedListener;

    .line 758
    new-instance v0, Lcom/htc/home/personalize/WallpaperLivePicker$3;

    invoke-direct {v0, p0}, Lcom/htc/home/personalize/WallpaperLivePicker$3;-><init>(Lcom/htc/home/personalize/WallpaperLivePicker;)V

    iput-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mUpdateCallback:Lcom/htc/home/personalize/WallpaperLoader$UIUpdateCallback;

    .line 764
    new-instance v0, Lcom/htc/home/personalize/WallpaperLivePicker$4;

    invoke-direct {v0, p0}, Lcom/htc/home/personalize/WallpaperLivePicker$4;-><init>(Lcom/htc/home/personalize/WallpaperLivePicker;)V

    iput-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mWallpaperUpdateCallback:Lcom/htc/home/personalize/widget/LiveWallpaperPanelAdapter$WallpaperUpdateCallback;

    .line 779
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mHandler:Landroid/os/Handler;

    .line 780
    new-instance v0, Lcom/htc/home/personalize/WallpaperLivePicker$5;

    invoke-direct {v0, p0}, Lcom/htc/home/personalize/WallpaperLivePicker$5;-><init>(Lcom/htc/home/personalize/WallpaperLivePicker;)V

    iput-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mUpdateWallpaper:Ljava/lang/Runnable;

    .line 792
    new-instance v0, Lcom/htc/home/personalize/WallpaperLivePicker$6;

    invoke-direct {v0, p0}, Lcom/htc/home/personalize/WallpaperLivePicker$6;-><init>(Lcom/htc/home/personalize/WallpaperLivePicker;)V

    iput-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mUpdateTitle:Ljava/lang/Runnable;

    .line 812
    new-instance v0, Lcom/htc/home/personalize/WallpaperLivePicker$7;

    invoke-direct {v0, p0}, Lcom/htc/home/personalize/WallpaperLivePicker$7;-><init>(Lcom/htc/home/personalize/WallpaperLivePicker;)V

    iput-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mGalleryClick:Lcom/htc/widget/DeckControl$OnItemClickListener;

    .line 831
    new-instance v0, Lcom/htc/home/personalize/WallpaperLivePicker$8;

    invoke-direct {v0, p0}, Lcom/htc/home/personalize/WallpaperLivePicker$8;-><init>(Lcom/htc/home/personalize/WallpaperLivePicker;)V

    iput-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mGalleryTouch:Landroid/view/View$OnTouchListener;

    .line 856
    new-instance v0, Lcom/htc/home/personalize/WallpaperLivePicker$9;

    invoke-direct {v0, p0}, Lcom/htc/home/personalize/WallpaperLivePicker$9;-><init>(Lcom/htc/home/personalize/WallpaperLivePicker;)V

    iput-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mGridItemClick:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 869
    new-instance v0, Lcom/htc/home/personalize/WallpaperLivePicker$10;

    invoke-direct {v0, p0}, Lcom/htc/home/personalize/WallpaperLivePicker$10;-><init>(Lcom/htc/home/personalize/WallpaperLivePicker;)V

    iput-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mBtn1Click:Landroid/view/View$OnClickListener;

    .line 888
    new-instance v0, Lcom/htc/home/personalize/WallpaperLivePicker$11;

    invoke-direct {v0, p0}, Lcom/htc/home/personalize/WallpaperLivePicker$11;-><init>(Lcom/htc/home/personalize/WallpaperLivePicker;)V

    iput-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mBtn2Click:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private NonUiInit()V
    .locals 4

    .prologue
    .line 273
    iget-boolean v3, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mIdleScreenPicker:Z

    if-eqz v3, :cond_0

    .line 274
    const-string v3, "keyguard"

    invoke-virtual {p0, v3}, Lcom/htc/home/personalize/WallpaperLivePicker;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/HtcIfKeyguardManager;

    .line 276
    .local v0, keyguardManager:Landroid/app/HtcIfKeyguardManager;
    invoke-interface {v0}, Landroid/app/HtcIfKeyguardManager;->getIdleScreenLabel()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mCurrentLabel:Ljava/lang/String;

    .line 279
    .end local v0           #keyguardManager:Landroid/app/HtcIfKeyguardManager;
    :cond_0
    invoke-direct {p0}, Lcom/htc/home/personalize/WallpaperLivePicker;->loadAllWallpapers()V

    .line 280
    new-instance v3, Lcom/htc/home/personalize/WallpaperLoader;

    invoke-direct {v3, p0}, Lcom/htc/home/personalize/WallpaperLoader;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mWallpaperLoader:Lcom/htc/home/personalize/WallpaperLoader;

    .line 281
    invoke-static {}, Lcom/htc/home/personalize/util/BitmapUtils;->getWallpaperOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    .line 283
    .local v1, opts:Landroid/graphics/BitmapFactory$Options;
    invoke-direct {p0, p0}, Lcom/htc/home/personalize/WallpaperLivePicker;->getPanelType(Landroid/content/Context;)Z

    move-result v2

    .line 284
    .local v2, panelType:Z
    if-nez v2, :cond_1

    .line 285
    sget-object v3, Lcom/htc/home/personalize/WallpaperLivePicker$PickerType;->LIST:Lcom/htc/home/personalize/WallpaperLivePicker$PickerType;

    iput-object v3, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mPickerType:Lcom/htc/home/personalize/WallpaperLivePicker$PickerType;

    .line 288
    :cond_1
    invoke-direct {p0}, Lcom/htc/home/personalize/WallpaperLivePicker;->UiInit()V

    .line 289
    return-void
.end method

.method private UiInit()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 292
    const v0, 0x7f030016

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/WallpaperLivePicker;->setContentView(I)V

    .line 293
    invoke-virtual {p0}, Lcom/htc/home/personalize/WallpaperLivePicker;->setupHeaderFooter()V

    .line 295
    invoke-virtual {p0}, Lcom/htc/home/personalize/WallpaperLivePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-boolean v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mIdleScreenPicker:Z

    if-eqz v0, :cond_1

    const v0, 0x7f09006d

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mHeaderTitleText:Ljava/lang/String;

    .line 296
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mHeaderTitleText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mHeaderCountText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 298
    const v0, 0x7f0b0035

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/WallpaperLivePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mItemDescription:Landroid/widget/TextView;

    .line 299
    const v0, 0x7f0b0034

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/WallpaperLivePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mItemLabel:Landroid/widget/TextView;

    .line 302
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

    const v1, 0x7f090001

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 303
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

    iget-object v1, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mBtn1Click:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    iget-object v1, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mFooterButtonLeft:Lcom/htc/widget/HtcFooterButton;

    iget-boolean v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mIdleScreenPicker:Z

    if-eqz v0, :cond_2

    const v0, 0x7f09000a

    :goto_1
    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 306
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mFooterButtonLeft:Lcom/htc/widget/HtcFooterButton;

    iget-object v1, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mBtn2Click:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    iget-boolean v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mDockMode:Z

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mFooterButtonLeft:Lcom/htc/widget/HtcFooterButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setVisibility(I)V

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mWallpaperLoader:Lcom/htc/home/personalize/WallpaperLoader;

    iget-boolean v1, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mCustomized:Z

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/WallpaperLoader;->setCustomized(Z)V

    .line 315
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mWallpaperLoader:Lcom/htc/home/personalize/WallpaperLoader;

    iget-object v1, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mLiveData:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/WallpaperLoader;->setLiveData(Ljava/util/ArrayList;)V

    .line 316
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mWallpaperLoader:Lcom/htc/home/personalize/WallpaperLoader;

    iget-object v1, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mUpdateCallback:Lcom/htc/home/personalize/WallpaperLoader$UIUpdateCallback;

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/WallpaperLoader;->setUIUpdateCallback(Lcom/htc/home/personalize/WallpaperLoader$UIUpdateCallback;)V

    .line 317
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mWallpaperLoader:Lcom/htc/home/personalize/WallpaperLoader;

    iget-object v1, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mScrolling:[Z

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/WallpaperLoader;->setScrolling([Z)V

    .line 318
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mWallpaperLoader:Lcom/htc/home/personalize/WallpaperLoader;

    invoke-virtual {v0}, Lcom/htc/home/personalize/WallpaperLoader;->initHandler()V

    .line 319
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mWallpaperLoader:Lcom/htc/home/personalize/WallpaperLoader;

    iget-boolean v1, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mDockMode:Z

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/WallpaperLoader;->setDockMod(Z)V

    .line 321
    invoke-direct {p0}, Lcom/htc/home/personalize/WallpaperLivePicker;->initListView()V

    .line 322
    invoke-direct {p0}, Lcom/htc/home/personalize/WallpaperLivePicker;->initPanelView()V

    .line 325
    iput-boolean v3, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mPickerTypeChanged:Z

    .line 326
    invoke-direct {p0}, Lcom/htc/home/personalize/WallpaperLivePicker;->goToWallpaperMain()V

    .line 328
    iput-boolean v3, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->isUiInit:Z

    .line 329
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mPanelAdapter:Lcom/htc/home/personalize/widget/LiveWallpaperPanelAdapter;

    invoke-virtual {v0}, Lcom/htc/home/personalize/widget/LiveWallpaperPanelAdapter;->notifyDataSetChanged()V

    .line 330
    return-void

    .line 295
    :cond_1
    const v0, 0x7f090027

    goto/16 :goto_0

    .line 305
    :cond_2
    const v0, 0x7f090023

    goto :goto_1
.end method

.method static synthetic access$100(Lcom/htc/home/personalize/WallpaperLivePicker;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mMapDownloaded:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/home/personalize/WallpaperLivePicker;)Lcom/htc/home/personalize/widget/LiveWallpaperPanelAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mPanelAdapter:Lcom/htc/home/personalize/widget/LiveWallpaperPanelAdapter;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/home/personalize/WallpaperLivePicker;)Lcom/htc/home/personalize/WallpaperLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mWallpaperLoader:Lcom/htc/home/personalize/WallpaperLoader;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/home/personalize/WallpaperLivePicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mIsFinish:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/htc/home/personalize/WallpaperLivePicker;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mUpdateWallpaper:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/home/personalize/WallpaperLivePicker;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/home/personalize/WallpaperLivePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/htc/home/personalize/WallpaperLivePicker;->checkUpdateTitleButtons()V

    return-void
.end method

.method static synthetic access$1600(Lcom/htc/home/personalize/WallpaperLivePicker;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mUpdateTitle:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/home/personalize/WallpaperLivePicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mDockMode:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/htc/home/personalize/WallpaperLivePicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/htc/home/personalize/WallpaperLivePicker;->checkIsNeedToSetting()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/htc/home/personalize/WallpaperLivePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/htc/home/personalize/WallpaperLivePicker;->setupLiveWallpaper()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/home/personalize/WallpaperLivePicker;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mSpecialWallpapers:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/home/personalize/WallpaperLivePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/htc/home/personalize/WallpaperLivePicker;->returnToDockMode()V

    return-void
.end method

.method static synthetic access$2100(Lcom/htc/home/personalize/WallpaperLivePicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mIdleScreenPicker:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/htc/home/personalize/WallpaperLivePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/htc/home/personalize/WallpaperLivePicker;->goToIdleScreenPreview()V

    return-void
.end method

.method static synthetic access$2300(Lcom/htc/home/personalize/WallpaperLivePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/htc/home/personalize/WallpaperLivePicker;->goToWallpaperPreview()V

    return-void
.end method

.method static synthetic access$2400(Lcom/htc/home/personalize/WallpaperLivePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/htc/home/personalize/WallpaperLivePicker;->selectIdleScreen()V

    return-void
.end method

.method static synthetic access$2500(Lcom/htc/home/personalize/WallpaperLivePicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mWallpaperPreviewed:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/htc/home/personalize/WallpaperLivePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/htc/home/personalize/WallpaperLivePicker;->goToWallpaperMain()V

    return-void
.end method

.method static synthetic access$2700(Lcom/htc/home/personalize/WallpaperLivePicker;Landroid/view/View;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lcom/htc/home/personalize/WallpaperLivePicker;->selectWallpaper(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$2800(Lcom/htc/home/personalize/WallpaperLivePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/htc/home/personalize/WallpaperLivePicker;->setupIdleScreen()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/home/personalize/WallpaperLivePicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mGallerySelectedPosition:I

    return v0
.end method

.method static synthetic access$302(Lcom/htc/home/personalize/WallpaperLivePicker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput p1, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mGallerySelectedPosition:I

    return p1
.end method

.method static synthetic access$400(Lcom/htc/home/personalize/WallpaperLivePicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mSelectedPosition:I

    return v0
.end method

.method static synthetic access$402(Lcom/htc/home/personalize/WallpaperLivePicker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput p1, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mSelectedPosition:I

    return p1
.end method

.method static synthetic access$500(Lcom/htc/home/personalize/WallpaperLivePicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mItemSelected:Z

    return v0
.end method

.method static synthetic access$502(Lcom/htc/home/personalize/WallpaperLivePicker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mItemSelected:Z

    return p1
.end method

.method static synthetic access$600(Lcom/htc/home/personalize/WallpaperLivePicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mTouching:Z

    return v0
.end method

.method static synthetic access$602(Lcom/htc/home/personalize/WallpaperLivePicker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mTouching:Z

    return p1
.end method

.method static synthetic access$700(Lcom/htc/home/personalize/WallpaperLivePicker;)[Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mScrolling:[Z

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/home/personalize/WallpaperLivePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/htc/home/personalize/WallpaperLivePicker;->updateButtons()V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/home/personalize/WallpaperLivePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/htc/home/personalize/WallpaperLivePicker;->updateTitle()V

    return-void
.end method

.method private checkIsNeedToSetting()Z
    .locals 7

    .prologue
    .line 1005
    const/4 v0, 0x0

    .line 1006
    .local v0, bResult:Z
    iget-object v4, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mLiveData:Ljava/util/ArrayList;

    if-nez v4, :cond_0

    .line 1007
    const-string v4, "WallpaperLivePicker"

    const-string v5, "mLiveData == null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 1026
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 1010
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_0
    iget v4, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mSelectedPosition:I

    if-ltz v4, :cond_1

    iget v4, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mSelectedPosition:I

    iget-object v5, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mLiveData:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v4, v5, :cond_2

    .line 1011
    :cond_1
    const-string v4, "WallpaperLivePicker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Incorrect mSelectedPosition = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mSelectedPosition:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mLiveData.size() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mLiveData:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 1012
    .restart local v1       #bResult:I
    goto :goto_0

    .line 1014
    .end local v1           #bResult:I
    :cond_2
    iget-object v4, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mLiveData:Ljava/util/ArrayList;

    iget v5, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mSelectedPosition:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;

    if-eqz v4, :cond_3

    move v1, v0

    .line 1015
    .restart local v1       #bResult:I
    goto :goto_0

    .line 1018
    .end local v1           #bResult:I
    :cond_3
    iget-object v4, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mLiveData:Ljava/util/ArrayList;

    iget v5, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mSelectedPosition:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/WallpaperInfo;

    .line 1020
    .local v3, info:Landroid/app/WallpaperInfo;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v4, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mDockModeSettingLiveWallpapers:[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_4

    .line 1021
    invoke-virtual {v3}, Landroid/app/WallpaperInfo;->getServiceName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mDockModeSettingLiveWallpapers:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1022
    const/4 v0, 0x1

    :cond_4
    move v1, v0

    .line 1026
    .restart local v1       #bResult:I
    goto :goto_0

    .line 1020
    .end local v1           #bResult:I
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private checkUpdateTitleButtons()V
    .locals 2

    .prologue
    .line 804
    iget-object v1, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    invoke-virtual {v1}, Lcom/htc/widget/DeckControl;->getSelection()I

    move-result v0

    .line 805
    .local v0, position:I
    iget v1, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mTitlePosition:I

    if-eq v0, v1, :cond_0

    .line 806
    iput v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mTitlePosition:I

    iput v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mSelectedPosition:I

    .line 807
    invoke-direct {p0}, Lcom/htc/home/personalize/WallpaperLivePicker;->updateButtons()V

    .line 808
    invoke-direct {p0}, Lcom/htc/home/personalize/WallpaperLivePicker;->updateTitle()V

    .line 810
    :cond_0
    return-void
.end method

.method private cleanWallpaperMain()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 1136
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mDeckControlView:Lcom/htc/widget/DeckControlView;

    invoke-virtual {v0, v1}, Lcom/htc/widget/DeckControlView;->setVisibility(I)V

    .line 1137
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mFooterBar:Lcom/htc/widget/HtcFooter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooter;->setVisibility(I)V

    .line 1138
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setVisibility(I)V

    .line 1139
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mItemLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1140
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mItemDescription:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1141
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mWallpaperLoader:Lcom/htc/home/personalize/WallpaperLoader;

    invoke-virtual {v0}, Lcom/htc/home/personalize/WallpaperLoader;->removeCaches()V

    .line 1142
    return-void
.end method

.method private getPanelType(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    .line 410
    const/4 v2, 0x1

    .line 413
    .local v2, value:Z
    iget-boolean v3, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mIdleScreenPicker:Z

    if-eqz v3, :cond_1

    .line 414
    const-string v0, "idle_screen_panel_type"

    .line 419
    .local v0, panelType:Ljava/lang/String;
    :goto_0
    const-string v3, "WallpaperLivePicker"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 420
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 421
    const/4 v3, 0x1

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 422
    :cond_0
    return v2

    .line 416
    .end local v0           #panelType:Ljava/lang/String;
    .end local v1           #settings:Landroid/content/SharedPreferences;
    :cond_1
    const-string v0, "panel_type"

    .restart local v0       #panelType:Ljava/lang/String;
    goto :goto_0
.end method

.method private goToIdleScreenPreview()V
    .locals 9

    .prologue
    .line 1180
    iget-object v6, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mPickerType:Lcom/htc/home/personalize/WallpaperLivePicker$PickerType;

    sget-object v7, Lcom/htc/home/personalize/WallpaperLivePicker$PickerType;->PANEL:Lcom/htc/home/personalize/WallpaperLivePicker$PickerType;

    if-ne v6, v7, :cond_0

    .line 1181
    iget-object v6, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    invoke-virtual {v6}, Lcom/htc/widget/DeckControl;->getSelection()I

    move-result v6

    iput v6, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mSelectedPosition:I

    .line 1184
    :cond_0
    iget-object v6, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mLiveData:Ljava/util/ArrayList;

    if-nez v6, :cond_2

    .line 1185
    const-string v6, "WallpaperLivePicker"

    const-string v7, "mLiveData == null"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    :cond_1
    :goto_0
    return-void

    .line 1188
    :cond_2
    iget v6, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mSelectedPosition:I

    if-ltz v6, :cond_3

    iget v6, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mSelectedPosition:I

    iget-object v7, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mLiveData:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v6, v7, :cond_4

    .line 1189
    :cond_3
    const-string v6, "WallpaperLivePicker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Incorrect mSelectedPosition = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mSelectedPosition:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mLiveData.size() = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mLiveData:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1192
    :cond_4
    iget-object v6, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mLiveData:Ljava/util/ArrayList;

    iget v7, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mSelectedPosition:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Landroid/app/WallpaperInfo;

    if-nez v6, :cond_1

    .line 1196
    iget-object v6, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mLiveData:Ljava/util/ArrayList;

    iget v7, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mSelectedPosition:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;

    .line 1198
    .local v1, info:Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.htc.lockscreen.idlescreen.IdleScreenService"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1199
    .local v5, serviceIntent:Landroid/content/Intent;
    invoke-virtual {v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->getServiceName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1202
    invoke-virtual {v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->getPreviewService()Ljava/lang/String;

    move-result-object v3

    .line 1204
    .local v3, previewService:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 1205
    const-string v6, "WallpaperLivePicker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Lock screen previewService = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    new-instance v4, Landroid/content/Intent;

    const-string v6, "com.htc.lockscreen.idlescreen.preview.IdleScreenService"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1207
    .local v4, previewServiceIntent:Landroid/content/Intent;
    invoke-virtual {v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1212
    :goto_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1213
    .local v2, previewIntent:Landroid/content/Intent;
    const-string v6, "com.htc.home.personalize"

    const-string v7, "com.htc.home.personalize.IdleScreenPreview"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1214
    const-string v6, "android.idle_screen.intent"

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1215
    const-string v6, "android.idle_screen.preview.intent"

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1216
    const-string v6, "android.idle_screen.settings"

    invoke-virtual {v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1217
    const-string v6, "android.idle_screen.package"

    invoke-virtual {v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1218
    const-string v6, "android.idle_screen.label"

    invoke-virtual {p0}, Lcom/htc/home/personalize/WallpaperLivePicker;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 1220
    const/16 v6, 0x101

    :try_start_0
    invoke-virtual {p0, v2, v6}, Lcom/htc/home/personalize/WallpaperLivePicker;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1221
    :catch_0
    move-exception v0

    .line 1222
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "WallpaperLivePicker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "start preview activity fail. e = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1209
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #previewIntent:Landroid/content/Intent;
    .end local v4           #previewServiceIntent:Landroid/content/Intent;
    :cond_5
    move-object v4, v5

    .restart local v4       #previewServiceIntent:Landroid/content/Intent;
    goto :goto_1
.end method

.method private goToWallpaperMain()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v5, 0x0

    .line 1090
    iput-boolean v5, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mWallpaperPreviewed:Z

    .line 1092
    const v4, 0x7f0b0044

    invoke-virtual {p0, v4}, Lcom/htc/home/personalize/WallpaperLivePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1093
    .local v2, panel_picker:Landroid/view/View;
    const v4, 0x7f0b0046

    invoke-virtual {p0, v4}, Lcom/htc/home/personalize/WallpaperLivePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1095
    .local v0, list_picker:Landroid/view/View;
    iget-boolean v4, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mDockMode:Z

    if-eqz v4, :cond_0

    sget-object v3, Lcom/htc/home/personalize/WallpaperLivePicker$PickerType;->PANEL:Lcom/htc/home/personalize/WallpaperLivePicker$PickerType;

    .line 1097
    .local v3, tmpPickerType:Lcom/htc/home/personalize/WallpaperLivePicker$PickerType;
    :goto_0
    sget-object v4, Lcom/htc/home/personalize/WallpaperLivePicker$12;->$SwitchMap$com$htc$home$personalize$WallpaperLivePicker$PickerType:[I

    invoke-virtual {v3}, Lcom/htc/home/personalize/WallpaperLivePicker$PickerType;->ordinal()I

    move-result v6

    aget v4, v4, v6

    packed-switch v4, :pswitch_data_0

    .line 1133
    :goto_1
    return-void

    .line 1095
    .end local v3           #tmpPickerType:Lcom/htc/home/personalize/WallpaperLivePicker$PickerType;
    :cond_0
    iget-object v3, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mPickerType:Lcom/htc/home/personalize/WallpaperLivePicker$PickerType;

    goto :goto_0

    .line 1099
    .restart local v3       #tmpPickerType:Lcom/htc/home/personalize/WallpaperLivePicker$PickerType;
    :pswitch_0
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1100
    iget-object v4, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mDeckControlView:Lcom/htc/widget/DeckControlView;

    invoke-virtual {v4, v5}, Lcom/htc/widget/DeckControlView;->setVisibility(I)V

    .line 1101
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1102
    iget-object v4, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v4, v7}, Lcom/htc/widget/HtcListView;->setVisibility(I)V

    .line 1104
    iget-object v4, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mLiveData:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1105
    .local v1, nSize:I
    iget-object v6, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

    if-lez v1, :cond_3

    const/4 v4, 0x1

    :goto_2
    invoke-virtual {v6, v4}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 1107
    iget v4, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mSelectedPosition:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_1

    .line 1108
    iget-object v4, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    invoke-virtual {v4}, Lcom/htc/widget/DeckControl;->getSelection()I

    move-result v4

    iput v4, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mSelectedPosition:I

    .line 1110
    :cond_1
    iget v4, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mSelectedPosition:I

    if-lt v4, v1, :cond_2

    .line 1111
    if-lez v1, :cond_4

    add-int/lit8 v4, v1, -0x1

    :goto_3
    iput v4, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mSelectedPosition:I

    .line 1114
    :cond_2
    invoke-direct {p0}, Lcom/htc/home/personalize/WallpaperLivePicker;->updateButtons()V

    .line 1115
    iget-object v4, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mFooterBar:Lcom/htc/widget/HtcFooter;

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcFooter;->setVisibility(I)V

    .line 1116
    invoke-direct {p0}, Lcom/htc/home/personalize/WallpaperLivePicker;->updateTitle()V

    .line 1117
    iget-object v4, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mItemLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1118
    iget-object v4, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mItemDescription:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1119
    iget-object v4, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    invoke-virtual {v4}, Lcom/htc/widget/DeckControl;->resume()V

    goto :goto_1

    :cond_3
    move v4, v5

    .line 1105
    goto :goto_2

    :cond_4
    move v4, v5

    .line 1111
    goto :goto_3

    .line 1122
    .end local v1           #nSize:I
    :pswitch_1
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1123
    iget-object v4, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mDeckControlView:Lcom/htc/widget/DeckControlView;

    invoke-virtual {v4, v7}, Lcom/htc/widget/DeckControlView;->setVisibility(I)V

    .line 1124
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1125
    iget-object v4, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mFooterBar:Lcom/htc/widget/HtcFooter;

    invoke-virtual {v4, v7}, Lcom/htc/widget/HtcFooter;->setVisibility(I)V

    .line 1126
    iget-object v4, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListView;->setVisibility(I)V

    .line 1127
    invoke-direct {p0}, Lcom/htc/home/personalize/WallpaperLivePicker;->updateTitle()V

    .line 1128
    iget-object v4, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mItemLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1129
    iget-object v4, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mItemDescription:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1130
    iget-object v4, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    invoke-virtual {v4}, Lcom/htc/widget/DeckControl;->pause()V

    goto :goto_1

    .line 1097
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private goToWallpaperPreview()V
    .locals 7

    .prologue
    .line 1145
    iget-object v4, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mPickerType:Lcom/htc/home/personalize/WallpaperLivePicker$PickerType;

    sget-object v5, Lcom/htc/home/personalize/WallpaperLivePicker$PickerType;->PANEL:Lcom/htc/home/personalize/WallpaperLivePicker$PickerType;

    if-ne v4, v5, :cond_0

    .line 1146
    iget-object v4, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    invoke-virtual {v4}, Lcom/htc/widget/DeckControl;->getSelection()I

    move-result v4

    iput v4, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mSelectedPosition:I

    .line 1149
    :cond_0
    iget-object v4, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mLiveData:Ljava/util/ArrayList;

    if-nez v4, :cond_2

    .line 1150
    const-string v4, "WallpaperLivePicker"

    const-string v5, "mLiveData == null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    :cond_1
    :goto_0
    return-void

    .line 1153
    :cond_2
    iget v4, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mSelectedPosition:I

    if-ltz v4, :cond_3

    iget v4, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mSelectedPosition:I

    iget-object v5, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mLiveData:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v4, v5, :cond_4

    .line 1154
    :cond_3
    const-string v4, "WallpaperLivePicker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Incorrect mSelectedPosition = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mSelectedPosition:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mLiveData.size() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mLiveData:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1157
    :cond_4
    iget-object v4, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mLiveData:Ljava/util/ArrayList;

    iget v5, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mSelectedPosition:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;

    if-nez v4, :cond_1

    .line 1161
    iget-object v4, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mLiveData:Ljava/util/ArrayList;

    iget v5, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mSelectedPosition:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/WallpaperInfo;

    .line 1163
    .local v1, info:Landroid/app/WallpaperInfo;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.service.wallpaper.WallpaperService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1164
    .local v3, serviceIntent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Landroid/app/WallpaperInfo;->getServiceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1166
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1167
    .local v2, previewIntent:Landroid/content/Intent;
    const-string v4, "com.htc.home.personalize"

    const-string v5, "com.htc.home.personalize.LiveWallpaperPreview"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1168
    const-string v4, "android.live_wallpaper.intent"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1169
    const-string v4, "android.live_wallpaper.settings"

    invoke-virtual {v1}, Landroid/app/WallpaperInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1170
    const-string v4, "android.live_wallpaper.package"

    invoke-virtual {v1}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1171
    const-string v4, "android.live_wallpaper.label"

    invoke-virtual {p0}, Lcom/htc/home/personalize/WallpaperLivePicker;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/WallpaperInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 1173
    const/16 v4, 0x101

    :try_start_0
    invoke-virtual {p0, v2, v4}, Lcom/htc/home/personalize/WallpaperLivePicker;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1174
    :catch_0
    move-exception v0

    .line 1175
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "WallpaperLivePicker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "start preview activity fail. e = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private initDefaultView()V
    .locals 5

    .prologue
    .line 389
    invoke-virtual {p0}, Lcom/htc/home/personalize/WallpaperLivePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02000f

    invoke-static {}, Lcom/htc/home/personalize/util/BitmapUtils;->getWallpaperOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mPreloadBackground:Landroid/graphics/Bitmap;

    .line 391
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030010

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 392
    .local v0, layout:Landroid/view/View;
    const v2, 0x7f0b0037

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 393
    .local v1, wallpaper:Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mPreloadBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 395
    iget-object v2, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    invoke-virtual {v2, v0}, Lcom/htc/widget/DeckControl;->setDefaultView(Landroid/view/View;)V

    .line 396
    return-void
.end method

.method private initListView()V
    .locals 2

    .prologue
    .line 400
    new-instance v0, Lcom/htc/home/personalize/widget/LiveWallpaperListAdapter;

    invoke-direct {v0, p0}, Lcom/htc/home/personalize/widget/LiveWallpaperListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mListAdapter:Lcom/htc/home/personalize/widget/LiveWallpaperListAdapter;

    .line 401
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mListAdapter:Lcom/htc/home/personalize/widget/LiveWallpaperListAdapter;

    iget-object v1, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mLiveData:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/widget/LiveWallpaperListAdapter;->setLiveData(Ljava/util/ArrayList;)V

    .line 402
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mListAdapter:Lcom/htc/home/personalize/widget/LiveWallpaperListAdapter;

    const v1, 0x7f03001f

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/widget/LiveWallpaperListAdapter;->setItemResource(I)V

    .line 403
    const v0, 0x7f0b0014

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/WallpaperLivePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListView;

    iput-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mListView:Lcom/htc/widget/HtcListView;

    .line 404
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mListView:Lcom/htc/widget/HtcListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setVisibility(I)V

    .line 405
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mListAdapter:Lcom/htc/home/personalize/widget/LiveWallpaperListAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 406
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mGridItemClick:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 407
    return-void
.end method

.method private initPanelView()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 346
    new-instance v4, Lcom/htc/home/personalize/widget/LiveWallpaperPanelAdapter;

    invoke-direct {v4, p0}, Lcom/htc/home/personalize/widget/LiveWallpaperPanelAdapter;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mPanelAdapter:Lcom/htc/home/personalize/widget/LiveWallpaperPanelAdapter;

    .line 347
    iget-object v4, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mPanelAdapter:Lcom/htc/home/personalize/widget/LiveWallpaperPanelAdapter;

    iget-object v5, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mLiveData:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Lcom/htc/home/personalize/widget/LiveWallpaperPanelAdapter;->setLiveData(Ljava/util/ArrayList;)V

    .line 349
    iget-object v4, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mPanelAdapter:Lcom/htc/home/personalize/widget/LiveWallpaperPanelAdapter;

    iget-object v5, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mWallpaperLoader:Lcom/htc/home/personalize/WallpaperLoader;

    iget-object v5, v5, Lcom/htc/home/personalize/WallpaperLoader;->mImageCaches:Ljava/util/Map;

    invoke-virtual {v4, v5}, Lcom/htc/home/personalize/widget/LiveWallpaperPanelAdapter;->setImageCache(Ljava/util/Map;)V

    .line 350
    iget-object v4, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mPanelAdapter:Lcom/htc/home/personalize/widget/LiveWallpaperPanelAdapter;

    const v5, 0x7f030010

    invoke-virtual {v4, v5}, Lcom/htc/home/personalize/widget/LiveWallpaperPanelAdapter;->setItemResource(I)V

    .line 351
    iget-object v4, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mPanelAdapter:Lcom/htc/home/personalize/widget/LiveWallpaperPanelAdapter;

    iget-object v5, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mWallpaperUpdateCallback:Lcom/htc/home/personalize/widget/LiveWallpaperPanelAdapter$WallpaperUpdateCallback;

    invoke-virtual {v4, v5}, Lcom/htc/home/personalize/widget/LiveWallpaperPanelAdapter;->setWallpaperUpdateCallback(Lcom/htc/home/personalize/widget/LiveWallpaperPanelAdapter$WallpaperUpdateCallback;)V

    .line 352
    iget-object v4, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mPanelAdapter:Lcom/htc/home/personalize/widget/LiveWallpaperPanelAdapter;

    iget-object v5, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mScrolling:[Z

    invoke-virtual {v4, v5}, Lcom/htc/home/personalize/widget/LiveWallpaperPanelAdapter;->setScrolling([Z)V

    .line 354
    invoke-virtual {p0}, Lcom/htc/home/personalize/WallpaperLivePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070008

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 355
    .local v1, itemWidth:I
    invoke-virtual {p0}, Lcom/htc/home/personalize/WallpaperLivePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07000a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 356
    .local v0, itemHeight:I
    invoke-virtual {p0}, Lcom/htc/home/personalize/WallpaperLivePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07000b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 358
    .local v3, reflectionHeight:I
    const v4, 0x7f0b0030

    invoke-virtual {p0, v4}, Lcom/htc/home/personalize/WallpaperLivePicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/DeckControlView;

    iput-object v4, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mDeckControlView:Lcom/htc/widget/DeckControlView;

    .line 359
    new-instance v4, Lcom/htc/widget/DeckControl;

    iget-object v5, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mDeckControlView:Lcom/htc/widget/DeckControlView;

    const/16 v6, 0x14

    invoke-direct {v4, p0, v5, v6}, Lcom/htc/widget/DeckControl;-><init>(Landroid/content/Context;Lcom/htc/widget/DeckControlView;I)V

    iput-object v4, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    .line 360
    iget-object v4, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mDeckControlView:Lcom/htc/widget/DeckControlView;

    iget-object v5, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    invoke-virtual {v4, v5}, Lcom/htc/widget/DeckControlView;->addView(Lcom/htc/sunny/SView;)V

    .line 361
    invoke-virtual {p0}, Lcom/htc/home/personalize/WallpaperLivePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080007

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 362
    .local v2, refColor:I
    iget-object v4, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    invoke-virtual {v4, v2, v2, v2}, Lcom/htc/widget/DeckControl;->setReflectionColor(III)V

    .line 363
    iget-object v4, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    invoke-virtual {v4, v3}, Lcom/htc/widget/DeckControl;->setReflectionHeight(I)V

    .line 364
    iget-object v4, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    invoke-virtual {v4, v1, v0}, Lcom/htc/widget/DeckControl;->setItemSize(II)V

    .line 365
    iget-object v4, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    invoke-virtual {p0}, Lcom/htc/home/personalize/WallpaperLivePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070003

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/DeckControl;->setYOffset(F)V

    .line 367
    iget-object v4, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    iget-object v5, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mPanelAdapter:Lcom/htc/home/personalize/widget/LiveWallpaperPanelAdapter;

    invoke-virtual {v4, v5}, Lcom/htc/widget/DeckControl;->setAdapter(Lcom/htc/widget/DeckControlAdapter;)V

    .line 368
    iget-object v4, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    iget-object v5, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mGallerySelected:Lcom/htc/widget/DeckControl$OnItemSelectedListener;

    invoke-virtual {v4, v5}, Lcom/htc/widget/DeckControl;->setOnItemSelectedListener(Lcom/htc/widget/DeckControl$OnItemSelectedListener;)V

    .line 369
    iget-object v4, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    iget-object v5, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mGalleryClick:Lcom/htc/widget/DeckControl$OnItemClickListener;

    invoke-virtual {v4, v5}, Lcom/htc/widget/DeckControl;->setOnItemClickListener(Lcom/htc/widget/DeckControl$OnItemClickListener;)V

    .line 370
    invoke-direct {p0}, Lcom/htc/home/personalize/WallpaperLivePicker;->initDefaultView()V

    .line 371
    iget-object v4, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    invoke-virtual {p0}, Lcom/htc/home/personalize/WallpaperLivePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060005

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/DeckControl;->setBackground(I)V

    .line 373
    iget-boolean v4, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mIdleScreenPicker:Z

    if-eqz v4, :cond_1

    .line 374
    iget v4, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->midlescreenPosition:I

    iget-object v5, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mPanelAdapter:Lcom/htc/home/personalize/widget/LiveWallpaperPanelAdapter;

    invoke-virtual {v5}, Lcom/htc/home/personalize/widget/LiveWallpaperPanelAdapter;->getCount()I

    move-result v5

    if-ge v4, v5, :cond_0

    iget v4, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->midlescreenPosition:I

    if-ltz v4, :cond_0

    .line 375
    iget v4, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->midlescreenPosition:I

    iput v4, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mSelectedPosition:I

    .line 376
    iget-object v4, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    iget v5, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mSelectedPosition:I

    invoke-virtual {v4, v5, v7}, Lcom/htc/widget/DeckControl;->setSelection(IZ)V

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 379
    :cond_1
    iget v4, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mWallpaperPosition:I

    iget-object v5, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mPanelAdapter:Lcom/htc/home/personalize/widget/LiveWallpaperPanelAdapter;

    invoke-virtual {v5}, Lcom/htc/home/personalize/widget/LiveWallpaperPanelAdapter;->getCount()I

    move-result v5

    if-ge v4, v5, :cond_0

    iget v4, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mWallpaperPosition:I

    if-ltz v4, :cond_0

    .line 380
    iget v4, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mWallpaperPosition:I

    iput v4, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mSelectedPosition:I

    .line 381
    iget-object v4, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    iget v5, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mSelectedPosition:I

    invoke-virtual {v4, v5, v7}, Lcom/htc/widget/DeckControl;->setSelection(IZ)V

    goto :goto_0
.end method

.method public static isSystemApk(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .parameter "context"
    .parameter "packageName"

    .prologue
    const/4 v3, 0x0

    .line 595
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 598
    .local v2, pm:Landroid/content/pm/PackageManager;
    const/16 v4, 0x2000

    :try_start_0
    invoke-virtual {v2, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 604
    .local v1, pkgInfo:Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v4, :cond_1

    .line 611
    .end local v1           #pkgInfo:Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return v3

    .line 599
    :catch_0
    move-exception v0

    .line 600
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "WallpaperLivePicker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No such skin package matches the given name "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 608
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1       #pkgInfo:Landroid/content/pm/PackageInfo;
    :cond_1
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    .line 609
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private loadAllWallpapers()V
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mLiveData:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mLiveData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 442
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mLiveData:Ljava/util/ArrayList;

    .line 444
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mLiveData:Ljava/util/ArrayList;

    .line 445
    iget-boolean v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mIdleScreenPicker:Z

    if-eqz v0, :cond_1

    .line 446
    invoke-direct {p0}, Lcom/htc/home/personalize/WallpaperLivePicker;->loadIdleScreen()V

    .line 450
    :goto_0
    return-void

    .line 448
    :cond_1
    invoke-direct {p0}, Lcom/htc/home/personalize/WallpaperLivePicker;->loadLiveWallpapers()V

    goto :goto_0
.end method

.method private loadIdleScreen()V
    .locals 10

    .prologue
    .line 615
    invoke-virtual {p0}, Lcom/htc/home/personalize/WallpaperLivePicker;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.htc.lockscreen.idlescreen.IdleScreenService"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v9, 0x80

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 618
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 620
    .local v5, listSize:I
    add-int/lit8 v2, v5, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_1

    .line 621
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 622
    .local v6, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v0, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 625
    .local v0, ci:Landroid/content/pm/ComponentInfo;
    :try_start_0
    new-instance v3, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;

    invoke-direct {v3, p0, v6}, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 635
    .local v3, info:Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;
    iget-object v7, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mLiveData:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 636
    iget v7, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->midlescreenPosition:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_0

    invoke-virtual {p0}, Lcom/htc/home/personalize/WallpaperLivePicker;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mCurrentLabel:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 639
    add-int/lit8 v7, v5, -0x1

    sub-int/2addr v7, v2

    iput v7, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->midlescreenPosition:I

    .line 620
    .end local v3           #info:Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 627
    :catch_0
    move-exception v1

    .line 628
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v7, "WallpaperLivePicker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipping idleScreen "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 631
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v1

    .line 632
    .local v1, e:Ljava/io/IOException;
    const-string v7, "WallpaperLivePicker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipping idleScreen "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 642
    .end local v0           #ci:Landroid/content/pm/ComponentInfo;
    .end local v1           #e:Ljava/io/IOException;
    .end local v6           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_1
    return-void
.end method

.method private loadLiveWallpapers()V
    .locals 17

    .prologue
    .line 453
    invoke-virtual/range {p0 .. p0}, Lcom/htc/home/personalize/WallpaperLivePicker;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    new-instance v15, Landroid/content/Intent;

    const-string v16, "android.service.wallpaper.WallpaperService"

    invoke-direct/range {v15 .. v16}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v16, 0x80

    invoke-virtual/range {v14 .. v16}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 482
    .local v7, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v14

    if-ge v3, v14, :cond_4

    .line 483
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 484
    .local v11, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v1, v11, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 487
    .local v1, ci:Landroid/content/pm/ComponentInfo;
    :try_start_0
    new-instance v4, Landroid/app/WallpaperInfo;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v11}, Landroid/app/WallpaperInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 496
    .local v4, info:Landroid/app/WallpaperInfo;
    sget-short v14, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v15, 0xe

    if-eq v14, v15, :cond_0

    sget-short v14, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v15, 0xf

    if-eq v14, v15, :cond_0

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/home/personalize/WallpaperLivePicker;->mDockMode:Z

    if-eqz v14, :cond_3

    .line 500
    :cond_0
    const/4 v9, 0x0

    .line 501
    .local v9, needSkip:Z
    invoke-virtual {v4}, Landroid/app/WallpaperInfo;->getServiceName()Ljava/lang/String;

    move-result-object v13

    .line 502
    .local v13, wallpaperName:Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, j:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/home/personalize/WallpaperLivePicker;->mHideLiveWallpapers:[Ljava/lang/String;

    array-length v14, v14

    if-ge v6, v14, :cond_1

    .line 503
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/home/personalize/WallpaperLivePicker;->mHideLiveWallpapers:[Ljava/lang/String;

    aget-object v14, v14, v6

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 504
    const/4 v9, 0x1

    .line 508
    :cond_1
    if-eqz v9, :cond_3

    .line 509
    const-string v14, "WallpaperLivePicker"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "loadLiveWallpapers: skip "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    .end local v4           #info:Landroid/app/WallpaperInfo;
    .end local v6           #j:I
    .end local v9           #needSkip:Z
    .end local v13           #wallpaperName:Ljava/lang/String;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 488
    :catch_0
    move-exception v2

    .line 489
    .local v2, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v14, "WallpaperLivePicker"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Skipping wallpaper "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 491
    .end local v2           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v2

    .line 492
    .local v2, e:Ljava/io/IOException;
    const-string v14, "WallpaperLivePicker"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Skipping wallpaper "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 502
    .end local v2           #e:Ljava/io/IOException;
    .restart local v4       #info:Landroid/app/WallpaperInfo;
    .restart local v6       #j:I
    .restart local v9       #needSkip:Z
    .restart local v13       #wallpaperName:Ljava/lang/String;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 513
    .end local v6           #j:I
    .end local v9           #needSkip:Z
    .end local v13           #wallpaperName:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/home/personalize/WallpaperLivePicker;->mLiveData:Ljava/util/ArrayList;

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 517
    .end local v1           #ci:Landroid/content/pm/ComponentInfo;
    .end local v4           #info:Landroid/app/WallpaperInfo;
    .end local v11           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_4
    const/4 v3, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/home/personalize/WallpaperLivePicker;->mLiveData:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v3, v14, :cond_6

    .line 518
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/home/personalize/WallpaperLivePicker;->mLiveData:Ljava/util/ArrayList;

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/WallpaperInfo;

    invoke-virtual {v14}, Landroid/app/WallpaperInfo;->getServiceName()Ljava/lang/String;

    move-result-object v8

    .line 519
    .local v8, liveWallpaperName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/home/personalize/WallpaperLivePicker;->mLiveData:Ljava/util/ArrayList;

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/WallpaperInfo;

    invoke-virtual {v14}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 520
    .local v10, packageName:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/htc/home/personalize/WallpaperLivePicker;->isSystemApk(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_5

    const/4 v5, 0x1

    .line 521
    .local v5, isDownLoadedLiveWallpaper:Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/home/personalize/WallpaperLivePicker;->mLiveData:Ljava/util/ArrayList;

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/WallpaperInfo;

    invoke-virtual {v14}, Landroid/app/WallpaperInfo;->getServiceName()Ljava/lang/String;

    move-result-object v12

    .line 523
    .local v12, serviceName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/home/personalize/WallpaperLivePicker;->mMapDownloaded:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-interface {v14, v12, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 520
    .end local v5           #isDownLoadedLiveWallpaper:Z
    .end local v12           #serviceName:Ljava/lang/String;
    :cond_5
    const/4 v5, 0x0

    goto :goto_4

    .line 527
    .end local v8           #liveWallpaperName:Ljava/lang/String;
    .end local v10           #packageName:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/home/personalize/WallpaperLivePicker;->mLiveData:Ljava/util/ArrayList;

    new-instance v15, Lcom/htc/home/personalize/WallpaperLivePicker$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/htc/home/personalize/WallpaperLivePicker$1;-><init>(Lcom/htc/home/personalize/WallpaperLivePicker;)V

    invoke-static {v14, v15}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 592
    return-void
.end method

.method private notifyIdleScreenTitle(Ljava/lang/String;)V
    .locals 2
    .parameter "title"

    .prologue
    .line 909
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.intent.ACTION_PERSONALIZE_IDLESCREEN_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 910
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.intent.EXTRA_SUMMARY"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 911
    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/WallpaperLivePicker;->sendBroadcast(Landroid/content/Intent;)V

    .line 912
    return-void
.end method

.method private notifyWallpaperTitle(Ljava/lang/String;)V
    .locals 2
    .parameter "title"

    .prologue
    .line 903
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.intent.ACTION_PERSONALIZE_WALLPAPER_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 904
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.intent.EXTRA_SUMMARY"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 905
    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/WallpaperLivePicker;->sendBroadcast(Landroid/content/Intent;)V

    .line 906
    return-void
.end method

.method private returnToDockMode()V
    .locals 7

    .prologue
    .line 1227
    const-string v2, "WallpaperLivePicker"

    const-string v3, "returnToDockMode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    iget-object v2, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mLiveData:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 1229
    const-string v2, "WallpaperLivePicker"

    const-string v3, "mLiveData == null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    :cond_0
    :goto_0
    return-void

    .line 1232
    :cond_1
    iget v2, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mSelectedPosition:I

    if-ltz v2, :cond_2

    iget v2, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mSelectedPosition:I

    iget-object v3, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mLiveData:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_3

    .line 1233
    :cond_2
    const-string v2, "WallpaperLivePicker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Incorrect mSelectedPosition = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mSelectedPosition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mLiveData.size() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mLiveData:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1236
    :cond_3
    iget-object v2, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mLiveData:Ljava/util/ArrayList;

    iget v3, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mSelectedPosition:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;

    if-nez v2, :cond_0

    .line 1240
    iget-object v2, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mLiveData:Ljava/util/ArrayList;

    iget v3, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mSelectedPosition:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/WallpaperInfo;

    .line 1242
    .local v1, info:Landroid/app/WallpaperInfo;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1243
    .local v0, dockmode:Landroid/content/Intent;
    const-string v2, "com.htc.intent.ACTION_SET_LIVEWALLPAPER_DOCKMODE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1244
    const-string v2, "EXTRA_WALLPAPER_COMPONENT"

    const-string v3, "%s/%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v1}, Landroid/app/WallpaperInfo;->getServiceName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1245
    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/WallpaperLivePicker;->sendBroadcast(Landroid/content/Intent;)V

    .line 1246
    invoke-virtual {p0}, Lcom/htc/home/personalize/WallpaperLivePicker;->finish()V

    goto :goto_0
.end method

.method private selectIdleScreen()V
    .locals 10

    .prologue
    .line 958
    iget-object v7, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mLiveData:Ljava/util/ArrayList;

    if-nez v7, :cond_1

    .line 959
    const-string v7, "WallpaperLivePicker"

    const-string v8, "mLiveData == null"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    :cond_0
    :goto_0
    return-void

    .line 962
    :cond_1
    iget v7, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mSelectedPosition:I

    if-ltz v7, :cond_2

    iget v7, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mSelectedPosition:I

    iget-object v8, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mLiveData:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v7, v8, :cond_3

    .line 963
    :cond_2
    const-string v7, "WallpaperLivePicker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Incorrect mSelectedPosition = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mSelectedPosition:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mLiveData.size() = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mLiveData:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 966
    :cond_3
    iget-object v7, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mLiveData:Ljava/util/ArrayList;

    iget v8, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mSelectedPosition:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Landroid/app/WallpaperInfo;

    if-nez v7, :cond_0

    .line 970
    iget-object v7, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mLiveData:Ljava/util/ArrayList;

    iget v8, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mSelectedPosition:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;

    .line 971
    .local v1, info:Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;
    const-string v7, "keyguard"

    invoke-virtual {p0, v7}, Lcom/htc/home/personalize/WallpaperLivePicker;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/HtcIfKeyguardManager;

    .line 974
    .local v3, keyguardManager:Landroid/app/HtcIfKeyguardManager;
    if-eqz v1, :cond_0

    .line 975
    :try_start_0
    invoke-virtual {v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v5

    .line 976
    .local v5, setting:Ljava/lang/String;
    invoke-virtual {v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 977
    .local v4, packageName:Ljava/lang/String;
    const-string v7, "WallpaperLivePicker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onItemClick setting:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    const-string v7, "WallpaperLivePicker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onItemClick getPackageName:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 981
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 982
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 983
    const-string v7, "is_apply"

    const/4 v8, 0x1

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 984
    const/16 v7, 0x102

    invoke-virtual {p0, v2, v7}, Lcom/htc/home/personalize/WallpaperLivePicker;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 999
    .end local v2           #intent:Landroid/content/Intent;
    .end local v4           #packageName:Ljava/lang/String;
    .end local v5           #setting:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1000
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "WallpaperLivePicker"

    const-string v8, "onItemClick exception"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 987
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v4       #packageName:Ljava/lang/String;
    .restart local v5       #setting:Ljava/lang/String;
    :cond_4
    :try_start_1
    invoke-virtual {v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-interface {v3, v7}, Landroid/app/HtcIfKeyguardManager;->setIdleScreen(Landroid/content/ComponentName;)V

    .line 988
    invoke-virtual {p0}, Lcom/htc/home/personalize/WallpaperLivePicker;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 989
    .local v6, title:Ljava/lang/String;
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mIsFinish:Z

    .line 990
    iget-object v7, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mScrolling:[Z

    const/4 v8, 0x0

    const/4 v9, 0x0

    aput-boolean v9, v7, v8

    .line 991
    invoke-static {p0}, Lcom/htc/home/personalize/PersonalizeCarousel;->launchHome(Landroid/content/Context;)V

    .line 992
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.htc.home.personalize.ACTION_FINISH_AND_LAUNCH_HOME"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/htc/home/personalize/WallpaperLivePicker;->sendBroadcast(Landroid/content/Intent;)V

    .line 993
    invoke-virtual {p0}, Lcom/htc/home/personalize/WallpaperLivePicker;->finish()V

    .line 994
    invoke-direct {p0, v6}, Lcom/htc/home/personalize/WallpaperLivePicker;->notifyIdleScreenTitle(Ljava/lang/String;)V

    .line 995
    invoke-direct {p0, v6}, Lcom/htc/home/personalize/WallpaperLivePicker;->showApplyToast(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private selectWallpaper(Landroid/view/View;I)V
    .locals 8
    .parameter "v"
    .parameter "position"

    .prologue
    .line 921
    iget-object v5, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mLiveData:Ljava/util/ArrayList;

    if-nez v5, :cond_1

    .line 922
    const-string v5, "WallpaperLivePicker"

    const-string v6, "mLiveData == null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    :cond_0
    :goto_0
    return-void

    .line 925
    :cond_1
    iget v5, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mSelectedPosition:I

    if-ltz v5, :cond_2

    iget v5, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mSelectedPosition:I

    iget-object v6, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mLiveData:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v5, v6, :cond_3

    .line 926
    :cond_2
    const-string v5, "WallpaperLivePicker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Incorrect mSelectedPosition = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mSelectedPosition:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mLiveData.size() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mLiveData:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 929
    :cond_3
    iget-object v5, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mLiveData:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;

    if-nez v5, :cond_0

    .line 933
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v4

    .line 935
    .local v4, wallpaperManager:Landroid/app/WallpaperManager;
    :try_start_0
    iget-object v5, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mLiveData:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/WallpaperInfo;

    .line 936
    .local v2, info:Landroid/app/WallpaperInfo;
    invoke-virtual {v2}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 937
    .local v0, component:Landroid/content/ComponentName;
    invoke-virtual {p0}, Lcom/htc/home/personalize/WallpaperLivePicker;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/WallpaperInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 939
    .local v3, title:Ljava/lang/String;
    invoke-virtual {v4}, Landroid/app/WallpaperManager;->getIWallpaperManager()Landroid/app/IWallpaperManager;

    move-result-object v5

    invoke-interface {v5, v0}, Landroid/app/IWallpaperManager;->setWallpaperComponent(Landroid/content/ComponentName;)V

    .line 941
    const/high16 v5, 0x3f00

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/WallpaperManager;->setWallpaperOffsetSteps(FF)V

    .line 942
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    const/high16 v6, 0x3f00

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/app/WallpaperManager;->setWallpaperOffsets(Landroid/os/IBinder;FF)V

    .line 943
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mIsFinish:Z

    .line 944
    iget-object v5, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mScrolling:[Z

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput-boolean v7, v5, v6

    .line 945
    invoke-static {p0}, Lcom/htc/home/personalize/PersonalizeCarousel;->launchHome(Landroid/content/Context;)V

    .line 946
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.htc.home.personalize.ACTION_FINISH_AND_LAUNCH_HOME"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/htc/home/personalize/WallpaperLivePicker;->sendBroadcast(Landroid/content/Intent;)V

    .line 947
    invoke-virtual {p0}, Lcom/htc/home/personalize/WallpaperLivePicker;->finish()V

    .line 948
    invoke-direct {p0, v3}, Lcom/htc/home/personalize/WallpaperLivePicker;->notifyWallpaperTitle(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    .line 949
    .end local v0           #component:Landroid/content/ComponentName;
    .end local v2           #info:Landroid/app/WallpaperInfo;
    .end local v3           #title:Ljava/lang/String;
    :catch_0
    move-exception v5

    goto/16 :goto_0

    .line 951
    :catch_1
    move-exception v1

    .line 952
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v5, "WallpaperLivePicker"

    const-string v6, "Failure setting wallpaper"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 953
    .end local v1           #e:Ljava/lang/RuntimeException;
    :catch_2
    move-exception v5

    goto/16 :goto_0
.end method

.method private setPanelType(Landroid/content/Context;Z)V
    .locals 5
    .parameter "context"
    .parameter "panel"

    .prologue
    .line 428
    iget-boolean v3, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mIdleScreenPicker:Z

    if-eqz v3, :cond_0

    .line 429
    const-string v1, "idle_screen_panel_type"

    .line 434
    .local v1, panelType:Ljava/lang/String;
    :goto_0
    const-string v3, "WallpaperLivePicker"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 435
    .local v2, settings:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 436
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 437
    return-void

    .line 431
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #panelType:Ljava/lang/String;
    .end local v2           #settings:Landroid/content/SharedPreferences;
    :cond_0
    const-string v1, "panel_type"

    .restart local v1       #panelType:Ljava/lang/String;
    goto :goto_0
.end method

.method private setupIdleScreen()V
    .locals 9

    .prologue
    .line 1056
    iget-object v6, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mLiveData:Ljava/util/ArrayList;

    if-nez v6, :cond_1

    .line 1057
    const-string v6, "WallpaperLivePicker"

    const-string v7, "mLiveData == null"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    :cond_0
    :goto_0
    return-void

    .line 1060
    :cond_1
    iget v6, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mSelectedPosition:I

    if-ltz v6, :cond_2

    iget v6, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mSelectedPosition:I

    iget-object v7, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mLiveData:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v6, v7, :cond_3

    .line 1061
    :cond_2
    const-string v6, "WallpaperLivePicker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Incorrect mSelectedPosition = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mSelectedPosition:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mLiveData.size() = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mLiveData:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1064
    :cond_3
    iget-object v6, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mLiveData:Ljava/util/ArrayList;

    iget v7, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mSelectedPosition:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Landroid/app/WallpaperInfo;

    if-nez v6, :cond_0

    .line 1068
    iget-object v6, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mLiveData:Ljava/util/ArrayList;

    iget v7, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mSelectedPosition:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;

    .line 1069
    .local v1, info:Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;
    const-string v6, "keyguard"

    invoke-virtual {p0, v6}, Lcom/htc/home/personalize/WallpaperLivePicker;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/HtcIfKeyguardManager;

    .line 1071
    .local v3, keyguardManager:Landroid/app/HtcIfKeyguardManager;
    if-eqz v1, :cond_0

    .line 1072
    :try_start_0
    invoke-virtual {v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v5

    .line 1073
    .local v5, setting:Ljava/lang/String;
    invoke-virtual {v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1074
    .local v4, packageName:Ljava/lang/String;
    const-string v6, "WallpaperLivePicker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onItemClick setting:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    const-string v6, "WallpaperLivePicker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onItemClick getPackageName:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1078
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1079
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1080
    invoke-virtual {p0, v2}, Lcom/htc/home/personalize/WallpaperLivePicker;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1084
    .end local v2           #intent:Landroid/content/Intent;
    .end local v4           #packageName:Ljava/lang/String;
    .end local v5           #setting:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1085
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "WallpaperLivePicker"

    const-string v7, "onItemClick exception"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method private setupLiveWallpaper()V
    .locals 6

    .prologue
    .line 1030
    iget-object v3, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mLiveData:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 1031
    const-string v3, "WallpaperLivePicker"

    const-string v4, "mLiveData == null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    :cond_0
    :goto_0
    return-void

    .line 1034
    :cond_1
    iget v3, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mSelectedPosition:I

    if-ltz v3, :cond_2

    iget v3, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mSelectedPosition:I

    iget-object v4, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mLiveData:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_3

    .line 1035
    :cond_2
    const-string v3, "WallpaperLivePicker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Incorrect mSelectedPosition = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mSelectedPosition:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mLiveData.size() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mLiveData:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1038
    :cond_3
    iget-object v3, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mLiveData:Ljava/util/ArrayList;

    iget v4, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mSelectedPosition:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;

    if-nez v3, :cond_0

    .line 1042
    iget-object v3, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mLiveData:Ljava/util/ArrayList;

    iget v4, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mSelectedPosition:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/WallpaperInfo;

    .line 1044
    .local v1, info:Landroid/app/WallpaperInfo;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1045
    .local v2, intent:Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Landroid/app/WallpaperInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1046
    const-string v3, "android.service.wallpaper.PREVIEW_MODE"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1048
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/htc/home/personalize/WallpaperLivePicker;->startActivity(Landroid/content/Intent;)V

    .line 1049
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mStartingSetting:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1050
    :catch_0
    move-exception v0

    .line 1051
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "WallpaperLivePicker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start setting activity fail. e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private showApplyToast(Ljava/lang/String;)V
    .locals 5
    .parameter "title"

    .prologue
    .line 915
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/home/personalize/WallpaperLivePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090026

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 916
    .local v0, message:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 917
    .local v1, toast:Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 918
    return-void
.end method

.method private updateButtons()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1250
    iget-boolean v2, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mIdleScreenPicker:Z

    if-eqz v2, :cond_3

    .line 1251
    iget-object v2, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mLiveData:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mLiveData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    iget v2, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mSelectedPosition:I

    if-ltz v2, :cond_2

    iget v2, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mSelectedPosition:I

    iget-object v3, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mLiveData:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v2, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mLiveData:Ljava/util/ArrayList;

    iget v3, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mSelectedPosition:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;

    if-eqz v2, :cond_2

    .line 1255
    iget-object v2, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mLiveData:Ljava/util/ArrayList;

    iget v3, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mSelectedPosition:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;

    .line 1256
    .local v0, info:Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;
    iget-object v2, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mFooterButtonLeft:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 1260
    .end local v0           #info:Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;
    :goto_0
    iget-object v1, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mFooterButtonLeft:Lcom/htc/widget/HtcFooterButton;

    const v2, 0x7f09000a

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 1264
    :cond_1
    :goto_1
    return-void

    .line 1258
    :cond_2
    iget-object v2, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mFooterButtonLeft:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    goto :goto_0

    .line 1261
    :cond_3
    iget-boolean v1, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mDockMode:Z

    if-nez v1, :cond_1

    .line 1262
    iget-object v1, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mFooterButtonLeft:Lcom/htc/widget/HtcFooterButton;

    const v2, 0x7f090023

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    goto :goto_1
.end method

.method private updateTitle()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1269
    invoke-virtual {p0}, Lcom/htc/home/personalize/WallpaperLivePicker;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 1271
    .local v5, pm:Landroid/content/pm/PackageManager;
    iget-boolean v8, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mDockMode:Z

    if-eqz v8, :cond_1

    sget-object v7, Lcom/htc/home/personalize/WallpaperLivePicker$PickerType;->PANEL:Lcom/htc/home/personalize/WallpaperLivePicker$PickerType;

    .line 1272
    .local v7, tmpPickerType:Lcom/htc/home/personalize/WallpaperLivePicker$PickerType;
    :goto_0
    sget-object v8, Lcom/htc/home/personalize/WallpaperLivePicker$PickerType;->PANEL:Lcom/htc/home/personalize/WallpaperLivePicker$PickerType;

    if-ne v7, v8, :cond_3

    .line 1273
    iget-object v8, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mLiveData:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eqz v8, :cond_2

    .line 1274
    const-string v8, "(%d/%d)"

    new-array v9, v13, [Ljava/lang/Object;

    iget v10, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mSelectedPosition:I

    add-int/lit8 v10, v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    iget-object v10, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mLiveData:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mHeaderCountText:Ljava/lang/String;

    .line 1280
    :goto_1
    const-string v8, "%s %s"

    new-array v9, v13, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mHeaderTitleText:Ljava/lang/String;

    aput-object v10, v9, v11

    iget-object v10, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mHeaderCountText:Ljava/lang/String;

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1281
    .local v6, strHeaderText:Ljava/lang/String;
    iget-object v8, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v8, v6}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 1283
    iget-object v8, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mLiveData:Ljava/util/ArrayList;

    if-eqz v8, :cond_5

    iget v8, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mSelectedPosition:I

    if-ltz v8, :cond_5

    iget v8, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mSelectedPosition:I

    iget-object v9, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mLiveData:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_5

    .line 1284
    const-string v4, ""

    .line 1285
    .local v4, label:Ljava/lang/CharSequence;
    const-string v0, ""

    .line 1289
    .local v0, desc:Ljava/lang/String;
    :try_start_0
    iget-object v8, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mLiveData:Ljava/util/ArrayList;

    iget v9, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mSelectedPosition:I

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Landroid/app/WallpaperInfo;

    if-eqz v8, :cond_4

    .line 1290
    iget-object v8, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mLiveData:Ljava/util/ArrayList;

    iget v9, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mSelectedPosition:I

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/WallpaperInfo;

    .line 1291
    .local v3, info:Landroid/app/WallpaperInfo;
    invoke-virtual {v3, v5}, Landroid/app/WallpaperInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 1292
    invoke-virtual {v3, v5}, Landroid/app/WallpaperInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1307
    .end local v3           #info:Landroid/app/WallpaperInfo;
    :cond_0
    :goto_2
    iget-object v8, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mItemLabel:Landroid/widget/TextView;

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1309
    :try_start_1
    const-string v8, "<br>"

    const-string v9, ""

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1310
    .local v1, descStr:Ljava/lang/String;
    iget-object v8, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mItemDescription:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1318
    .end local v0           #desc:Ljava/lang/String;
    .end local v1           #descStr:Ljava/lang/String;
    .end local v4           #label:Ljava/lang/CharSequence;
    :goto_3
    return-void

    .line 1271
    .end local v6           #strHeaderText:Ljava/lang/String;
    .end local v7           #tmpPickerType:Lcom/htc/home/personalize/WallpaperLivePicker$PickerType;
    :cond_1
    iget-object v7, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mPickerType:Lcom/htc/home/personalize/WallpaperLivePicker$PickerType;

    goto/16 :goto_0

    .line 1276
    .restart local v7       #tmpPickerType:Lcom/htc/home/personalize/WallpaperLivePicker$PickerType;
    :cond_2
    const-string v8, "(%d/%d)"

    new-array v9, v13, [Ljava/lang/Object;

    iget v10, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mSelectedPosition:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    iget-object v10, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mLiveData:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mHeaderCountText:Ljava/lang/String;

    goto/16 :goto_1

    .line 1278
    :cond_3
    const-string v8, ""

    iput-object v8, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mHeaderCountText:Ljava/lang/String;

    goto/16 :goto_1

    .line 1293
    .restart local v0       #desc:Ljava/lang/String;
    .restart local v4       #label:Ljava/lang/CharSequence;
    .restart local v6       #strHeaderText:Ljava/lang/String;
    :cond_4
    :try_start_2
    iget-object v8, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mLiveData:Ljava/util/ArrayList;

    iget v9, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mSelectedPosition:I

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;

    if-eqz v8, :cond_0

    .line 1294
    iget-object v8, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mLiveData:Ljava/util/ArrayList;

    iget v9, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mSelectedPosition:I

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;

    .line 1295
    .local v3, info:Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;
    invoke-virtual {v3, v5}, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 1296
    invoke-virtual {v3, v5}, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1298
    iget-object v8, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mCurrentLabel:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1299
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const v9, 0x7f09001f

    invoke-virtual {p0, v9}, Lcom/htc/home/personalize/WallpaperLivePicker;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v4

    goto/16 :goto_2

    .line 1302
    .end local v3           #info:Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;
    :catch_0
    move-exception v2

    .line 1303
    .local v2, e:Ljava/lang/Exception;
    const-string v8, "WallpaperLivePicker"

    const-string v9, "error while loading info"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 1311
    .end local v2           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 1312
    .restart local v2       #e:Ljava/lang/Exception;
    iget-object v8, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mItemDescription:Landroid/widget/TextView;

    const-string v9, ""

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 1315
    .end local v0           #desc:Ljava/lang/String;
    .end local v2           #e:Ljava/lang/Exception;
    .end local v4           #label:Ljava/lang/CharSequence;
    :cond_5
    iget-object v8, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mItemLabel:Landroid/widget/TextView;

    const-string v9, ""

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1316
    iget-object v8, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mItemDescription:Landroid/widget/TextView;

    const-string v9, ""

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 1323
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1334
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 1325
    :sswitch_0
    iget-boolean v1, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mWallpaperPreviewed:Z

    if-eqz v1, :cond_1

    .line 1326
    invoke-direct {p0}, Lcom/htc/home/personalize/WallpaperLivePicker;->goToWallpaperMain()V

    goto :goto_0

    .line 1331
    :cond_1
    :sswitch_1
    iget-boolean v1, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mWallpaperPreviewed:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1323
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
    const/4 v6, 0x1

    const/4 v3, -0x1

    const/4 v5, 0x0

    .line 1375
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1376
    packed-switch p1, :pswitch_data_0

    .line 1428
    :cond_0
    :goto_0
    return-void

    .line 1378
    :pswitch_0
    sget-object v3, Lcom/htc/home/personalize/WallpaperLivePicker$12;->$SwitchMap$com$htc$home$personalize$WallpaperLivePicker$PickerType:[I

    iget-object v4, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mPickerType:Lcom/htc/home/personalize/WallpaperLivePicker$PickerType;

    invoke-virtual {v4}, Lcom/htc/home/personalize/WallpaperLivePicker$PickerType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    goto :goto_0

    .line 1380
    :pswitch_1
    iget-object v3, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mPanelAdapter:Lcom/htc/home/personalize/widget/LiveWallpaperPanelAdapter;

    if-eqz v3, :cond_0

    .line 1381
    iget-object v3, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mPanelAdapter:Lcom/htc/home/personalize/widget/LiveWallpaperPanelAdapter;

    invoke-virtual {v3}, Lcom/htc/home/personalize/widget/LiveWallpaperPanelAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1385
    :pswitch_2
    iget-object v3, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mListAdapter:Lcom/htc/home/personalize/widget/LiveWallpaperListAdapter;

    if-eqz v3, :cond_0

    .line 1386
    iget-object v3, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mListAdapter:Lcom/htc/home/personalize/widget/LiveWallpaperListAdapter;

    invoke-virtual {v3}, Lcom/htc/home/personalize/widget/LiveWallpaperListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1392
    :pswitch_3
    if-ne p2, v3, :cond_0

    .line 1393
    iput-boolean v6, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mIsFinish:Z

    .line 1394
    iget-object v3, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mScrolling:[Z

    aput-boolean v5, v3, v5

    .line 1395
    invoke-static {p0}, Lcom/htc/home/personalize/PersonalizeCarousel;->launchHome(Landroid/content/Context;)V

    .line 1396
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.htc.home.personalize.ACTION_FINISH_AND_LAUNCH_HOME"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/htc/home/personalize/WallpaperLivePicker;->sendBroadcast(Landroid/content/Intent;)V

    .line 1397
    invoke-virtual {p0}, Lcom/htc/home/personalize/WallpaperLivePicker;->finish()V

    goto :goto_0

    .line 1401
    :pswitch_4
    if-ne p2, v3, :cond_0

    .line 1402
    iget-object v3, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mLiveData:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 1403
    const-string v3, "WallpaperLivePicker"

    const-string v4, "mLiveData == null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1406
    :cond_1
    iget v3, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mSelectedPosition:I

    if-ltz v3, :cond_2

    iget v3, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mSelectedPosition:I

    iget-object v4, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mLiveData:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_3

    .line 1407
    :cond_2
    const-string v3, "WallpaperLivePicker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Incorrect mSelectedPosition = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mSelectedPosition:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mLiveData.size() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mLiveData:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1410
    :cond_3
    iget-object v3, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mLiveData:Ljava/util/ArrayList;

    iget v4, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mSelectedPosition:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Landroid/app/WallpaperInfo;

    if-nez v3, :cond_0

    .line 1414
    iget-object v3, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mLiveData:Ljava/util/ArrayList;

    iget v4, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mSelectedPosition:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;

    .line 1415
    .local v0, info:Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;
    const-string v3, "keyguard"

    invoke-virtual {p0, v3}, Lcom/htc/home/personalize/WallpaperLivePicker;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/HtcIfKeyguardManager;

    .line 1416
    .local v1, keyguardManager:Landroid/app/HtcIfKeyguardManager;
    invoke-virtual {v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/app/HtcIfKeyguardManager;->setIdleScreen(Landroid/content/ComponentName;)V

    .line 1417
    invoke-virtual {p0}, Lcom/htc/home/personalize/WallpaperLivePicker;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1418
    .local v2, title:Ljava/lang/String;
    iput-boolean v6, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mIsFinish:Z

    .line 1419
    iget-object v3, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mScrolling:[Z

    aput-boolean v5, v3, v5

    .line 1420
    invoke-static {p0}, Lcom/htc/home/personalize/PersonalizeCarousel;->launchHome(Landroid/content/Context;)V

    .line 1421
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.htc.home.personalize.ACTION_FINISH_AND_LAUNCH_HOME"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/htc/home/personalize/WallpaperLivePicker;->sendBroadcast(Landroid/content/Intent;)V

    .line 1422
    invoke-virtual {p0}, Lcom/htc/home/personalize/WallpaperLivePicker;->finish()V

    .line 1423
    invoke-direct {p0, v2}, Lcom/htc/home/personalize/WallpaperLivePicker;->notifyIdleScreenTitle(Ljava/lang/String;)V

    .line 1424
    invoke-direct {p0, v2}, Lcom/htc/home/personalize/WallpaperLivePicker;->showApplyToast(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1376
    :pswitch_data_0
    .packed-switch 0x100
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 1378
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/4 v5, -0x1

    .line 201
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 203
    invoke-virtual {p0}, Lcom/htc/home/personalize/WallpaperLivePicker;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 204
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.htc.intent.ACTION_PERSONALIZE_IDLESCREEN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mIdleScreenPicker:Z

    .line 206
    if-eqz p1, :cond_0

    .line 207
    const-string v3, "wallpaper_position"

    invoke-virtual {p1, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mWallpaperPosition:I

    .line 210
    :cond_0
    iget-boolean v3, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mIdleScreenPicker:Z

    if-nez v3, :cond_1

    .line 212
    :try_start_0
    const-string v3, "EXTRA_CALL_FROM"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 213
    const-string v3, "WallpaperLivePicker"

    const-string v4, "Live picker set dock mode"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const-string v3, "EXTRA_CALL_FROM"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "dock_mode"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mDockMode:Z

    .line 215
    iget-boolean v3, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mDockMode:Z

    if-eqz v3, :cond_1

    .line 216
    const/4 v3, -0x1

    iput v3, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mWallpaperPosition:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/htc/home/personalize/WallpaperLivePicker;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/home/personalize/WallpaperLivePicker$RetainNonConfigurationInstance;

    .line 225
    .local v1, instance:Lcom/htc/home/personalize/WallpaperLivePicker$RetainNonConfigurationInstance;
    if-eqz v1, :cond_2

    .line 226
    iget-boolean v3, v1, Lcom/htc/home/personalize/WallpaperLivePicker$RetainNonConfigurationInstance;->dockMode:Z

    iput-boolean v3, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mDockMode:Z

    .line 227
    iget v3, v1, Lcom/htc/home/personalize/WallpaperLivePicker$RetainNonConfigurationInstance;->selectPosition:I

    iput v3, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mWallpaperPosition:I

    .line 228
    iget-boolean v3, v1, Lcom/htc/home/personalize/WallpaperLivePicker$RetainNonConfigurationInstance;->startingSetting:Z

    iput-boolean v3, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mStartingSetting:Z

    .line 231
    :cond_2
    iget-boolean v3, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mDockMode:Z

    if-eqz v3, :cond_3

    .line 232
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/htc/home/personalize/WallpaperLivePicker;->setRequestedOrientation(I)V

    .line 237
    :goto_1
    invoke-direct {p0}, Lcom/htc/home/personalize/WallpaperLivePicker;->NonUiInit()V

    .line 239
    const-string v3, "common_app_bkg"

    const v4, 0x20806b7

    invoke-static {p0, v3, v4}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mBackgroundId:I

    .line 240
    invoke-virtual {p0}, Lcom/htc/home/personalize/WallpaperLivePicker;->getWindow()Landroid/view/Window;

    move-result-object v3

    iget v4, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mBackgroundId:I

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 241
    return-void

    .line 218
    .end local v1           #instance:Lcom/htc/home/personalize/WallpaperLivePicker$RetainNonConfigurationInstance;
    :catch_0
    move-exception v0

    .line 219
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 234
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #instance:Lcom/htc/home/personalize/WallpaperLivePicker$RetainNonConfigurationInstance;
    :cond_3
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/htc/home/personalize/WallpaperLivePicker;->setRequestedOrientation(I)V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v1, 0x0

    .line 1339
    iget-boolean v2, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mDockMode:Z

    if-eqz v2, :cond_0

    .line 1347
    :goto_0
    return v1

    .line 1344
    :cond_0
    const/4 v2, 0x1

    const v3, 0x7f090004

    invoke-interface {p1, v1, v2, v1, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 1345
    .local v0, item:Landroid/view/MenuItem;
    const v1, 0x208032a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1347
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 725
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mListView:Lcom/htc/widget/HtcListView;

    if-eqz v0, :cond_0

    .line 726
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mListView:Lcom/htc/widget/HtcListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 728
    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mPanelAdapter:Lcom/htc/home/personalize/widget/LiveWallpaperPanelAdapter;

    invoke-virtual {v0}, Lcom/htc/home/personalize/widget/LiveWallpaperPanelAdapter;->deInit()V

    .line 729
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mWallpaperLoader:Lcom/htc/home/personalize/WallpaperLoader;

    if-eqz v0, :cond_1

    .line 730
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mWallpaperLoader:Lcom/htc/home/personalize/WallpaperLoader;

    invoke-virtual {v0}, Lcom/htc/home/personalize/WallpaperLoader;->removeCaches()V

    .line 731
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mWallpaperLoader:Lcom/htc/home/personalize/WallpaperLoader;

    invoke-virtual {v0}, Lcom/htc/home/personalize/WallpaperLoader;->unInitHandler()V

    .line 734
    :cond_1
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    invoke-virtual {v0}, Lcom/htc/widget/DeckControl;->destroy()V

    .line 735
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mDeckControlView:Lcom/htc/widget/DeckControlView;

    invoke-virtual {v0}, Lcom/htc/widget/DeckControlView;->release()V

    .line 736
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mPreloadBackground:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 737
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mPreloadBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 740
    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 741
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 8
    .parameter "intent"

    .prologue
    const/4 v7, -0x1

    .line 647
    const-string v4, "WallpaperLivePicker"

    const-string v5, "onNewIntent call"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    const-string v4, "WallpaperLivePicker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "new intent act"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.htc.intent.ACTION_PERSONALIZE_IDLESCREEN"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 650
    .local v1, mIdleScreenPickerNew:Z
    iget-boolean v4, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mIdleScreenPicker:Z

    if-eq v1, v4, :cond_4

    .line 651
    iput-boolean v1, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mIdleScreenPicker:Z

    .line 653
    sget-object v4, Lcom/htc/home/personalize/WallpaperLivePicker$PickerType;->PANEL:Lcom/htc/home/personalize/WallpaperLivePicker$PickerType;

    iput-object v4, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mPickerType:Lcom/htc/home/personalize/WallpaperLivePicker$PickerType;

    .line 655
    invoke-direct {p0, p0}, Lcom/htc/home/personalize/WallpaperLivePicker;->getPanelType(Landroid/content/Context;)Z

    move-result v2

    .line 656
    .local v2, panelType:Z
    iget-boolean v4, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->isUiInit:Z

    if-eqz v4, :cond_0

    .line 657
    invoke-direct {p0}, Lcom/htc/home/personalize/WallpaperLivePicker;->cleanWallpaperMain()V

    .line 660
    :cond_0
    :try_start_0
    const-string v4, "EXTRA_CALL_FROM"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 661
    const-string v4, "WallpaperLivePicker"

    const-string v5, "Live picker set dock mode"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    const-string v4, "EXTRA_CALL_FROM"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "dock_mode"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mDockMode:Z

    .line 663
    iget-boolean v4, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mDockMode:Z

    if-eqz v4, :cond_1

    .line 664
    const/4 v4, -0x1

    iput v4, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mWallpaperPosition:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 671
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/htc/home/personalize/WallpaperLivePicker;->NonUiInit()V

    .line 693
    .end local v2           #panelType:Z
    :cond_2
    :goto_1
    return-void

    .line 666
    .restart local v2       #panelType:Z
    :cond_3
    const/4 v4, 0x0

    :try_start_1
    iput-boolean v4, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mDockMode:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 668
    :catch_0
    move-exception v0

    .line 669
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 674
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #panelType:Z
    :cond_4
    const/4 v3, 0x0

    .line 676
    .local v3, tmpDockMode:Z
    :try_start_2
    const-string v4, "EXTRA_CALL_FROM"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 677
    const-string v4, "EXTRA_CALL_FROM"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "dock_mode"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v3

    .line 682
    :cond_5
    :goto_2
    iget-boolean v4, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mDockMode:Z

    if-eq v4, v3, :cond_2

    .line 683
    iput-boolean v3, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mDockMode:Z

    .line 684
    iget-boolean v4, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mDockMode:Z

    if-eqz v4, :cond_6

    .line 685
    iput v7, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mWallpaperPosition:I

    .line 686
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lcom/htc/home/personalize/WallpaperLivePicker;->setRequestedOrientation(I)V

    .line 690
    :goto_3
    invoke-direct {p0}, Lcom/htc/home/personalize/WallpaperLivePicker;->NonUiInit()V

    goto :goto_1

    .line 679
    :catch_1
    move-exception v0

    .line 680
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 688
    .end local v0           #e:Ljava/lang/Exception;
    :cond_6
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/htc/home/personalize/WallpaperLivePicker;->setRequestedOrientation(I)V

    goto :goto_3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 1432
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1453
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 1434
    :pswitch_0
    sget-object v0, Lcom/htc/home/personalize/WallpaperLivePicker$12;->$SwitchMap$com$htc$home$personalize$WallpaperLivePicker$PickerType:[I

    iget-object v1, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mPickerType:Lcom/htc/home/personalize/WallpaperLivePicker$PickerType;

    invoke-virtual {v1}, Lcom/htc/home/personalize/WallpaperLivePicker$PickerType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 1436
    :pswitch_1
    sget-object v0, Lcom/htc/home/personalize/WallpaperLivePicker$PickerType;->LIST:Lcom/htc/home/personalize/WallpaperLivePicker$PickerType;

    iput-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mPickerType:Lcom/htc/home/personalize/WallpaperLivePicker$PickerType;

    .line 1437
    iput-boolean v2, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mPickerTypeChanged:Z

    .line 1438
    const/4 v0, 0x0

    invoke-direct {p0, p0, v0}, Lcom/htc/home/personalize/WallpaperLivePicker;->setPanelType(Landroid/content/Context;Z)V

    .line 1439
    invoke-direct {p0}, Lcom/htc/home/personalize/WallpaperLivePicker;->goToWallpaperMain()V

    goto :goto_0

    .line 1443
    :pswitch_2
    sget-object v0, Lcom/htc/home/personalize/WallpaperLivePicker$PickerType;->PANEL:Lcom/htc/home/personalize/WallpaperLivePicker$PickerType;

    iput-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mPickerType:Lcom/htc/home/personalize/WallpaperLivePicker$PickerType;

    .line 1444
    iput-boolean v2, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mPickerTypeChanged:Z

    .line 1445
    invoke-direct {p0, p0, v2}, Lcom/htc/home/personalize/WallpaperLivePicker;->setPanelType(Landroid/content/Context;Z)V

    .line 1446
    invoke-direct {p0}, Lcom/htc/home/personalize/WallpaperLivePicker;->goToWallpaperMain()V

    goto :goto_0

    .line 1432
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 1434
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 711
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 712
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v1, 0x0

    .line 1352
    iget-boolean v2, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mDockMode:Z

    if-eqz v2, :cond_0

    .line 1370
    :goto_0
    return v1

    .line 1355
    :cond_0
    iget-boolean v2, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mPickerTypeChanged:Z

    if-nez v2, :cond_1

    .line 1356
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    goto :goto_0

    .line 1358
    :cond_1
    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1359
    .local v0, item:Landroid/view/MenuItem;
    sget-object v2, Lcom/htc/home/personalize/WallpaperLivePicker$12;->$SwitchMap$com$htc$home$personalize$WallpaperLivePicker$PickerType:[I

    iget-object v3, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mPickerType:Lcom/htc/home/personalize/WallpaperLivePicker$PickerType;

    invoke-virtual {v3}, Lcom/htc/home/personalize/WallpaperLivePicker$PickerType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1369
    :goto_1
    iput-boolean v1, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mPickerTypeChanged:Z

    .line 1370
    const/4 v1, 0x1

    goto :goto_0

    .line 1361
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/home/personalize/WallpaperLivePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1362
    const v2, 0x208032a

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_1

    .line 1365
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/home/personalize/WallpaperLivePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09001a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1366
    const v2, 0x20809b9

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_1

    .line 1359
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 696
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 698
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    if-eqz v0, :cond_0

    .line 699
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    iget v1, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mSelectedPosition:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/DeckControl;->setSelection(IZ)V

    .line 702
    :cond_0
    iget-boolean v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mDockMode:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mStartingSetting:Z

    if-eqz v0, :cond_1

    .line 703
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mStartingSetting:Z

    .line 704
    invoke-direct {p0}, Lcom/htc/home/personalize/WallpaperLivePicker;->returnToDockMode()V

    .line 706
    :cond_1
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 259
    new-instance v0, Lcom/htc/home/personalize/WallpaperLivePicker$RetainNonConfigurationInstance;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/home/personalize/WallpaperLivePicker$RetainNonConfigurationInstance;-><init>(Lcom/htc/home/personalize/WallpaperLivePicker;Lcom/htc/home/personalize/WallpaperLivePicker$1;)V

    .line 260
    .local v0, instance:Lcom/htc/home/personalize/WallpaperLivePicker$RetainNonConfigurationInstance;
    iget-boolean v1, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mDockMode:Z

    iput-boolean v1, v0, Lcom/htc/home/personalize/WallpaperLivePicker$RetainNonConfigurationInstance;->dockMode:Z

    .line 261
    iget v1, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mSelectedPosition:I

    iput v1, v0, Lcom/htc/home/personalize/WallpaperLivePicker$RetainNonConfigurationInstance;->selectPosition:I

    .line 262
    iget-boolean v1, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mStartingSetting:Z

    iput-boolean v1, v0, Lcom/htc/home/personalize/WallpaperLivePicker$RetainNonConfigurationInstance;->startingSetting:Z

    .line 263
    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mIdleScreenPicker:Z

    if-eqz v0, :cond_2

    .line 246
    iget v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mSelectedPosition:I

    iput v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->midlescreenPosition:I

    .line 250
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mDockMode:Z

    if-nez v0, :cond_1

    .line 251
    const-string v0, "wallpaper_position"

    iget v1, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mSelectedPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 253
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 254
    return-void

    .line 247
    :cond_2
    iget-boolean v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mDockMode:Z

    if-nez v0, :cond_0

    .line 248
    iget v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mSelectedPosition:I

    iput v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mWallpaperPosition:I

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 719
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 720
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mRemoveAll:Z

    .line 721
    return-void
.end method

.method public setupHeaderFooter()V
    .locals 2

    .prologue
    .line 333
    const v0, 0x7f0b000e

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/WallpaperLivePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarText;

    iput-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    .line 334
    const v0, 0x7f0b000f

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/WallpaperLivePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarImage;

    iput-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mHeaderImageRight:Lcom/htc/widget/HeaderBarImage;

    .line 336
    const v0, 0x7f0b0045

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/WallpaperLivePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooter;

    iput-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mFooterBar:Lcom/htc/widget/HtcFooter;

    .line 337
    const v0, 0x7f0b0002

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/WallpaperLivePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    iput-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mFooterButtonLeft:Lcom/htc/widget/HtcFooterButton;

    .line 338
    const v0, 0x7f0b0003

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/WallpaperLivePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    iput-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

    .line 340
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 341
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLivePicker;->mHeaderImageRight:Lcom/htc/widget/HeaderBarImage;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    .line 342
    return-void
.end method
