.class public Lcom/htc/photowidget3d/grid/M10Operator;
.super Ljava/lang/Object;
.source "M10Operator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/photowidget3d/grid/M10Operator$ShowToastOnTapListener;,
        Lcom/htc/photowidget3d/grid/M10Operator$LaunchAlbumOnTapListener;,
        Lcom/htc/photowidget3d/grid/M10Operator$AppOnSwipeListener;,
        Lcom/htc/photowidget3d/grid/M10Operator$ListItemListener;,
        Lcom/htc/photowidget3d/grid/M10Operator$CubeTLListener;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final transitionOrder:[I


# instance fields
.field ControlNames:[Ljava/lang/String;

.field public CurrentBmp:[Lcom/htc/photowidget3d/grid/BitmapArray;

.field PageControlNames:[Ljava/lang/String;

.field public PreviousBmp:[Lcom/htc/photowidget3d/grid/BitmapArray;

.field public PreviousBmp_L:[Lcom/htc/photowidget3d/grid/BitmapArray;

.field public PreviousBmp_P:[Lcom/htc/photowidget3d/grid/BitmapArray;

.field listItemControlNames:[Ljava/lang/String;

.field public mAppOnSwipeListener:Lcom/htc/photowidget3d/grid/M10Operator$AppOnSwipeListener;

.field public mAppStr:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mBtnClickInfoListener:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public mContext:Landroid/content/Context;

.field public mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

.field public mLaunchAlbumOnTapListener:Lcom/htc/photowidget3d/grid/M10Operator$LaunchAlbumOnTapListener;

.field public mListItemListener_L:Lcom/htc/photowidget3d/grid/M10Operator$ListItemListener;

.field public mListItemListener_P:Lcom/htc/photowidget3d/grid/M10Operator$ListItemListener;

.field public mListItemScenePath:Ljava/lang/String;

.field public mPhotoErrorStr:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field public mShowToastOnTapListener:Lcom/htc/photowidget3d/grid/M10Operator$ShowToastOnTapListener;

.field public m_CurrentView:I

.field private m_CurrentView_L:I

.field private m_CurrentView_P:I

.field public m_ScrollDirection:I

.field private m_bCubeIsPlaying:Z

.field private m_bCubeIsPlaying_L:Z

.field private m_bCubeIsPlaying_P:Z

.field public m_fxBtnCenter:Lcom/htc/fusion/fx/controls/FxButton;

.field public m_index:I

.field private m_nCurrentFocus_L:I

.field private m_nCurrentFocus_P:I

.field private m_nOrientation:I

.field private m_nPageState:I

.field private m_nPlaybackCompleteCnt:I

.field private m_nTiltEndFrame:I

.field private m_nTiltStartFrame:I

.field public mfxAppHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

.field public mfxDIPhotoError:Lcom/htc/fusion/fx/controls/FxDynamicImage;

.field public mfxListViewCollection:Lcom/htc/fusion/fx/controls/FxListViewCollection;

.field private mfxScene:Lcom/htc/fusion/fx/FxScene;

.field public mfxlistView:Lcom/htc/fusion/fx/controls/FxListView;

.field public mfxtlButton:Lcom/htc/fusion/fx/FxTimelineControl;

.field public mfxtlMainPage:Lcom/htc/fusion/fx/FxTimelineControl;

.field public mfxtlTilt:Lcom/htc/fusion/fx/FxTimelineControl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/htc/photowidget3d/grid/M10Operator;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/htc/photowidget3d/grid/M10Operator;->$assertionsDisabled:Z

    .line 73
    const/16 v0, 0x14

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/photowidget3d/grid/M10Operator;->transitionOrder:[I

    return-void

    .line 33
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 73
    nop

    :array_0
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/16 v6, 0x14

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object v4, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mfxScene:Lcom/htc/fusion/fx/FxScene;

    .line 36
    iput-object v4, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mContext:Landroid/content/Context;

    .line 37
    iput-object v4, p0, Lcom/htc/photowidget3d/grid/M10Operator;->m_fxBtnCenter:Lcom/htc/fusion/fx/controls/FxButton;

    .line 38
    iput-object v4, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    .line 40
    iput-object v4, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mAppOnSwipeListener:Lcom/htc/photowidget3d/grid/M10Operator$AppOnSwipeListener;

    .line 41
    iput-object v4, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mLaunchAlbumOnTapListener:Lcom/htc/photowidget3d/grid/M10Operator$LaunchAlbumOnTapListener;

    .line 42
    iput-object v4, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mShowToastOnTapListener:Lcom/htc/photowidget3d/grid/M10Operator$ShowToastOnTapListener;

    .line 43
    iput-object v4, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mfxlistView:Lcom/htc/fusion/fx/controls/FxListView;

    .line 44
    iput-object v4, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mfxListViewCollection:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    .line 45
    new-instance v1, Lcom/htc/photowidget3d/grid/M10Operator$ListItemListener;

    invoke-direct {v1, p0}, Lcom/htc/photowidget3d/grid/M10Operator$ListItemListener;-><init>(Lcom/htc/photowidget3d/grid/M10Operator;)V

    iput-object v1, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mListItemListener_P:Lcom/htc/photowidget3d/grid/M10Operator$ListItemListener;

    .line 46
    new-instance v1, Lcom/htc/photowidget3d/grid/M10Operator$ListItemListener;

    invoke-direct {v1, p0}, Lcom/htc/photowidget3d/grid/M10Operator$ListItemListener;-><init>(Lcom/htc/photowidget3d/grid/M10Operator;)V

    iput-object v1, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mListItemListener_L:Lcom/htc/photowidget3d/grid/M10Operator$ListItemListener;

    .line 47
    iput-object v4, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mfxtlMainPage:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 48
    iput-object v4, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mfxtlButton:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 49
    iput-object v4, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mfxtlTilt:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 50
    iput-object v4, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mfxDIPhotoError:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 51
    new-array v1, v6, [Lcom/htc/photowidget3d/grid/BitmapArray;

    iput-object v1, p0, Lcom/htc/photowidget3d/grid/M10Operator;->CurrentBmp:[Lcom/htc/photowidget3d/grid/BitmapArray;

    .line 52
    new-array v1, v6, [Lcom/htc/photowidget3d/grid/BitmapArray;

    iput-object v1, p0, Lcom/htc/photowidget3d/grid/M10Operator;->PreviousBmp:[Lcom/htc/photowidget3d/grid/BitmapArray;

    .line 53
    new-array v1, v6, [Lcom/htc/photowidget3d/grid/BitmapArray;

    iput-object v1, p0, Lcom/htc/photowidget3d/grid/M10Operator;->PreviousBmp_P:[Lcom/htc/photowidget3d/grid/BitmapArray;

    .line 54
    new-array v1, v6, [Lcom/htc/photowidget3d/grid/BitmapArray;

    iput-object v1, p0, Lcom/htc/photowidget3d/grid/M10Operator;->PreviousBmp_L:[Lcom/htc/photowidget3d/grid/BitmapArray;

    .line 55
    iput-object v4, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mAppStr:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 56
    iput-object v4, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mPhotoErrorStr:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 57
    iput v5, p0, Lcom/htc/photowidget3d/grid/M10Operator;->m_index:I

    .line 58
    iput v5, p0, Lcom/htc/photowidget3d/grid/M10Operator;->m_CurrentView:I

    .line 59
    iput v5, p0, Lcom/htc/photowidget3d/grid/M10Operator;->m_CurrentView_P:I

    .line 60
    iput v5, p0, Lcom/htc/photowidget3d/grid/M10Operator;->m_CurrentView_L:I

    .line 61
    iput v5, p0, Lcom/htc/photowidget3d/grid/M10Operator;->m_ScrollDirection:I

    .line 62
    iput v5, p0, Lcom/htc/photowidget3d/grid/M10Operator;->m_nTiltStartFrame:I

    .line 63
    iput v5, p0, Lcom/htc/photowidget3d/grid/M10Operator;->m_nTiltEndFrame:I

    .line 64
    iput v5, p0, Lcom/htc/photowidget3d/grid/M10Operator;->m_nOrientation:I

    .line 65
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/photowidget3d/grid/M10Operator;->m_nCurrentFocus_P:I

    .line 66
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/photowidget3d/grid/M10Operator;->m_nCurrentFocus_L:I

    .line 67
    iput-object v4, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mListItemScenePath:Ljava/lang/String;

    .line 68
    iput v5, p0, Lcom/htc/photowidget3d/grid/M10Operator;->m_nPlaybackCompleteCnt:I

    .line 69
    iput-boolean v5, p0, Lcom/htc/photowidget3d/grid/M10Operator;->m_bCubeIsPlaying:Z

    .line 70
    iput-boolean v5, p0, Lcom/htc/photowidget3d/grid/M10Operator;->m_bCubeIsPlaying_P:Z

    .line 71
    iput-boolean v5, p0, Lcom/htc/photowidget3d/grid/M10Operator;->m_bCubeIsPlaying_L:Z

    .line 72
    const/4 v1, 0x5

    iput v1, p0, Lcom/htc/photowidget3d/grid/M10Operator;->m_nPageState:I

    .line 96
    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "ListViewViewPort"

    aput-object v2, v1, v5

    const-string v2, "timeline.main_page"

    aput-object v2, v1, v7

    const-string v2, "app.hitbox"

    aput-object v2, v1, v8

    const/4 v2, 0x3

    const-string v3, "button.common_center"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "timeline.btn_photo_icons"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "app.text"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "timeline.tiltanim"

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/htc/photowidget3d/grid/M10Operator;->ControlNames:[Ljava/lang/String;

    .line 106
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "listitem.timeline"

    aput-object v2, v1, v5

    const-string v2, "dynamicimage.thumb"

    aput-object v2, v1, v7

    const-string v2, "dynamicimage.thumb_t"

    aput-object v2, v1, v8

    iput-object v1, p0, Lcom/htc/photowidget3d/grid/M10Operator;->listItemControlNames:[Ljava/lang/String;

    .line 112
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "timeline.main_page"

    aput-object v2, v1, v5

    const-string v2, "button.common_center"

    aput-object v2, v1, v7

    const-string v2, "timeline.btn_photo_icons"

    aput-object v2, v1, v8

    const/4 v2, 0x3

    const-string v3, "dynamicimage.photo_error"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "textlabel.failed"

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/htc/photowidget3d/grid/M10Operator;->PageControlNames:[Ljava/lang/String;

    .line 959
    new-instance v1, Lcom/htc/photowidget3d/grid/M10Operator$1;

    invoke-direct {v1, p0}, Lcom/htc/photowidget3d/grid/M10Operator$1;-><init>(Lcom/htc/photowidget3d/grid/M10Operator;)V

    iput-object v1, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mBtnClickInfoListener:Lcom/htc/fusion/fx/MessageListener;

    .line 123
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v6, :cond_0

    .line 125
    iget-object v1, p0, Lcom/htc/photowidget3d/grid/M10Operator;->CurrentBmp:[Lcom/htc/photowidget3d/grid/BitmapArray;

    new-instance v2, Lcom/htc/photowidget3d/grid/BitmapArray;

    invoke-direct {v2, v4, v5}, Lcom/htc/photowidget3d/grid/BitmapArray;-><init>(Landroid/graphics/Bitmap;Z)V

    aput-object v2, v1, v0

    .line 126
    iget-object v1, p0, Lcom/htc/photowidget3d/grid/M10Operator;->PreviousBmp:[Lcom/htc/photowidget3d/grid/BitmapArray;

    new-instance v2, Lcom/htc/photowidget3d/grid/BitmapArray;

    invoke-direct {v2, v4, v5}, Lcom/htc/photowidget3d/grid/BitmapArray;-><init>(Landroid/graphics/Bitmap;Z)V

    aput-object v2, v1, v0

    .line 127
    iget-object v1, p0, Lcom/htc/photowidget3d/grid/M10Operator;->PreviousBmp_P:[Lcom/htc/photowidget3d/grid/BitmapArray;

    new-instance v2, Lcom/htc/photowidget3d/grid/BitmapArray;

    invoke-direct {v2, v4, v5}, Lcom/htc/photowidget3d/grid/BitmapArray;-><init>(Landroid/graphics/Bitmap;Z)V

    aput-object v2, v1, v0

    .line 128
    iget-object v1, p0, Lcom/htc/photowidget3d/grid/M10Operator;->PreviousBmp_L:[Lcom/htc/photowidget3d/grid/BitmapArray;

    new-instance v2, Lcom/htc/photowidget3d/grid/BitmapArray;

    invoke-direct {v2, v4, v5}, Lcom/htc/photowidget3d/grid/BitmapArray;-><init>(Landroid/graphics/Bitmap;Z)V

    aput-object v2, v1, v0

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    :cond_0
    return-void
.end method

.method static synthetic access$200(Lcom/htc/photowidget3d/grid/M10Operator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/htc/photowidget3d/grid/M10Operator;->addPlaybackCompleteCount()V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/photowidget3d/grid/M10Operator;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->m_bCubeIsPlaying:Z

    return v0
.end method

.method static synthetic access$500(Lcom/htc/photowidget3d/grid/M10Operator;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/htc/photowidget3d/grid/M10Operator;->onScrollPage(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/photowidget3d/grid/M10Operator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/htc/photowidget3d/grid/M10Operator;->onLaunchAlbumPicker()V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/photowidget3d/grid/M10Operator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/htc/photowidget3d/grid/M10Operator;->triggerGridView()V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/photowidget3d/grid/M10Operator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/htc/photowidget3d/grid/M10Operator;->launchAlbum()V

    return-void
.end method

.method private addPlaybackCompleteCount()V
    .locals 2

    .prologue
    .line 411
    iget v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->m_nPlaybackCompleteCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->m_nPlaybackCompleteCnt:I

    .line 412
    const/16 v0, 0x14

    iget v1, p0, Lcom/htc/photowidget3d/grid/M10Operator;->m_nPlaybackCompleteCnt:I

    if-gt v0, v1, :cond_0

    .line 414
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->m_bCubeIsPlaying:Z

    .line 415
    invoke-direct {p0}, Lcom/htc/photowidget3d/grid/M10Operator;->savePreviousBmp()V

    .line 417
    :cond_0
    return-void
.end method

.method private declared-synchronized cubeTransition()V
    .locals 4

    .prologue
    .line 718
    monitor-enter p0

    :try_start_0
    const-string v1, "cubeTransition"

    invoke-static {v1}, Lcom/htc/photowidget3d/grid/util/HtcLog;->log_d(Ljava/lang/String;)V

    .line 719
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    .line 721
    iget-object v1, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mfxListViewCollection:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    sget-object v2, Lcom/htc/photowidget3d/grid/M10Operator;->transitionOrder:[I

    aget v2, v2, v0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/htc/fusion/fx/controls/FxListViewCollection;->refreshItems(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 719
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 729
    :cond_0
    monitor-exit p0

    return-void

    .line 718
    .end local v0           #i:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private getPreviousBmp()V
    .locals 2

    .prologue
    .line 544
    const/4 v0, 0x2

    iget v1, p0, Lcom/htc/photowidget3d/grid/M10Operator;->m_nOrientation:I

    if-ne v0, v1, :cond_1

    .line 546
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->PreviousBmp_L:[Lcom/htc/photowidget3d/grid/BitmapArray;

    iput-object v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->PreviousBmp:[Lcom/htc/photowidget3d/grid/BitmapArray;

    .line 552
    :cond_0
    :goto_0
    return-void

    .line 548
    :cond_1
    const/4 v0, 0x1

    iget v1, p0, Lcom/htc/photowidget3d/grid/M10Operator;->m_nOrientation:I

    if-ne v0, v1, :cond_0

    .line 550
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->PreviousBmp_P:[Lcom/htc/photowidget3d/grid/BitmapArray;

    iput-object v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->PreviousBmp:[Lcom/htc/photowidget3d/grid/BitmapArray;

    goto :goto_0
.end method

.method private getPreviousFocus()I
    .locals 2

    .prologue
    .line 604
    const/4 v0, 0x2

    iget v1, p0, Lcom/htc/photowidget3d/grid/M10Operator;->m_nOrientation:I

    if-ne v0, v1, :cond_0

    .line 606
    iget v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->m_nCurrentFocus_L:I

    .line 610
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->m_nCurrentFocus_P:I

    goto :goto_0
.end method

.method private getPreviousView()I
    .locals 2

    .prologue
    .line 592
    const/4 v0, 0x2

    iget v1, p0, Lcom/htc/photowidget3d/grid/M10Operator;->m_nOrientation:I

    if-ne v0, v1, :cond_0

    .line 594
    iget v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->m_CurrentView_L:I

    .line 598
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->m_CurrentView_P:I

    goto :goto_0
.end method

.method private initControls()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 151
    sget-boolean v3, Lcom/htc/photowidget3d/grid/M10Operator;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mfxScene:Lcom/htc/fusion/fx/FxScene;

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 152
    :cond_0
    iget-object v3, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mfxScene:Lcom/htc/fusion/fx/FxScene;

    iget-object v4, p0, Lcom/htc/photowidget3d/grid/M10Operator;->ControlNames:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/FxScene;->getDescendants([Ljava/lang/String;)[Lcom/htc/fusion/fx/FxObject;

    move-result-object v0

    .line 156
    .local v0, controls:[Lcom/htc/fusion/fx/FxObject;
    const/4 v3, 0x0

    :try_start_0
    aget-object v3, v0, v3

    check-cast v3, Lcom/htc/fusion/fx/controls/FxListView;

    iput-object v3, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mfxlistView:Lcom/htc/fusion/fx/controls/FxListView;

    .line 157
    sget-boolean v3, Lcom/htc/photowidget3d/grid/M10Operator;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mfxlistView:Lcom/htc/fusion/fx/controls/FxListView;

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :catch_0
    move-exception v1

    .line 181
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v3, "initControls: failed"

    invoke-static {v3}, Lcom/htc/photowidget3d/grid/util/HtcLog;->log_d(Ljava/lang/String;)V

    .line 183
    .end local v1           #e:Ljava/lang/NullPointerException;
    :goto_0
    aget-object v3, v0, v6

    check-cast v3, Lcom/htc/fusion/fx/controls/FxHitbox;

    iput-object v3, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mfxAppHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    .line 184
    sget-boolean v3, Lcom/htc/photowidget3d/grid/M10Operator;->$assertionsDisabled:Z

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mfxAppHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    if-nez v3, :cond_6

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 158
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mfxlistView:Lcom/htc/fusion/fx/controls/FxListView;

    iget-object v4, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mListItemScenePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/controls/FxListView;->setDefaultItemPath(Ljava/lang/String;)V

    .line 160
    iget v3, p0, Lcom/htc/photowidget3d/grid/M10Operator;->m_nOrientation:I

    if-ne v5, v3, :cond_3

    .line 162
    iget-object v3, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mfxlistView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v3}, Lcom/htc/fusion/fx/controls/FxListView;->getListItemEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mListItemListener_P:Lcom/htc/photowidget3d/grid/M10Operator$ListItemListener;

    invoke-interface {v3, v4}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 169
    :cond_2
    :goto_1
    const/4 v3, 0x1

    aget-object v3, v0, v3

    check-cast v3, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v3, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mfxtlMainPage:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 170
    sget-boolean v3, Lcom/htc/photowidget3d/grid/M10Operator;->$assertionsDisabled:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mfxtlMainPage:Lcom/htc/fusion/fx/FxTimelineControl;

    if-nez v3, :cond_4

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 164
    :cond_3
    iget v3, p0, Lcom/htc/photowidget3d/grid/M10Operator;->m_nOrientation:I

    if-ne v6, v3, :cond_2

    .line 166
    iget-object v3, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mfxlistView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v3}, Lcom/htc/fusion/fx/controls/FxListView;->getListItemEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mListItemListener_L:Lcom/htc/photowidget3d/grid/M10Operator$ListItemListener;

    invoke-interface {v3, v4}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    goto :goto_1

    .line 172
    :cond_4
    iget-object v3, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mfxlistView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v3}, Lcom/htc/fusion/fx/controls/FxListView;->getCollectionCount()I

    move-result v3

    if-gtz v3, :cond_5

    .line 174
    const/16 v3, 0x14

    invoke-static {v3}, Lcom/htc/fusion/fx/controls/FxListViewCollection;->create(I)Lcom/htc/fusion/fx/controls/FxListViewCollection;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mfxListViewCollection:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    .line 175
    iget-object v3, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mfxlistView:Lcom/htc/fusion/fx/controls/FxListView;

    iget-object v4, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mfxListViewCollection:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/controls/FxListView;->setCollection(Lcom/htc/fusion/fx/controls/FxListViewCollection;)V

    .line 177
    :cond_5
    iget-object v3, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mfxlistView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v3}, Lcom/htc/fusion/fx/controls/FxListView;->getCollection()Lcom/htc/fusion/fx/controls/FxListViewCollection;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mfxListViewCollection:Lcom/htc/fusion/fx/controls/FxListViewCollection;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 186
    :cond_6
    const/4 v3, 0x3

    aget-object v3, v0, v3

    check-cast v3, Lcom/htc/fusion/fx/controls/FxButton;

    iput-object v3, p0, Lcom/htc/photowidget3d/grid/M10Operator;->m_fxBtnCenter:Lcom/htc/fusion/fx/controls/FxButton;

    .line 187
    sget-boolean v3, Lcom/htc/photowidget3d/grid/M10Operator;->$assertionsDisabled:Z

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/htc/photowidget3d/grid/M10Operator;->m_fxBtnCenter:Lcom/htc/fusion/fx/controls/FxButton;

    if-nez v3, :cond_7

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 189
    :cond_7
    const/4 v3, 0x4

    aget-object v3, v0, v3

    check-cast v3, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v3, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mfxtlButton:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 190
    sget-boolean v3, Lcom/htc/photowidget3d/grid/M10Operator;->$assertionsDisabled:Z

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mfxtlButton:Lcom/htc/fusion/fx/FxTimelineControl;

    if-nez v3, :cond_8

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 192
    :cond_8
    const/4 v3, 0x5

    aget-object v3, v0, v3

    check-cast v3, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v3, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mAppStr:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 193
    sget-boolean v3, Lcom/htc/photowidget3d/grid/M10Operator;->$assertionsDisabled:Z

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mAppStr:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-nez v3, :cond_9

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 194
    :cond_9
    iget-object v3, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mAppStr:Lcom/htc/fusion/fx/controls/FxTextLabel;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f05000d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f05000e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 197
    const/4 v3, 0x6

    aget-object v3, v0, v3

    check-cast v3, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v3, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mfxtlTilt:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 198
    sget-boolean v3, Lcom/htc/photowidget3d/grid/M10Operator;->$assertionsDisabled:Z

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mfxtlTilt:Lcom/htc/fusion/fx/FxTimelineControl;

    if-nez v3, :cond_a

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 199
    :cond_a
    iget-object v3, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mfxtlTilt:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v3, :cond_b

    .line 201
    iget-object v3, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mfxtlTilt:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v4, "tilt"

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v2

    .line 202
    .local v2, marker:Lcom/htc/fusion/fx/Marker;
    if-eqz v2, :cond_b

    .line 204
    iget v3, v2, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    iput v3, p0, Lcom/htc/photowidget3d/grid/M10Operator;->m_nTiltStartFrame:I

    .line 205
    iget v3, v2, Lcom/htc/fusion/fx/Marker;->EndFrame:I

    iput v3, p0, Lcom/htc/photowidget3d/grid/M10Operator;->m_nTiltEndFrame:I

    .line 208
    .end local v2           #marker:Lcom/htc/fusion/fx/Marker;
    :cond_b
    return-void
.end method

.method private initErrorPageListener(Z)V
    .locals 3
    .parameter "bShowToast"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 312
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mfxAppHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    if-nez v0, :cond_0

    .line 337
    :goto_0
    return-void

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mfxAppHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxHitbox;->getTapSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 319
    if-eqz p1, :cond_2

    .line 321
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mShowToastOnTapListener:Lcom/htc/photowidget3d/grid/M10Operator$ShowToastOnTapListener;

    if-nez v0, :cond_1

    .line 323
    new-instance v0, Lcom/htc/photowidget3d/grid/M10Operator$ShowToastOnTapListener;

    invoke-direct {v0, p0, v1}, Lcom/htc/photowidget3d/grid/M10Operator$ShowToastOnTapListener;-><init>(Lcom/htc/photowidget3d/grid/M10Operator;Lcom/htc/photowidget3d/grid/M10Operator$1;)V

    iput-object v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mShowToastOnTapListener:Lcom/htc/photowidget3d/grid/M10Operator$ShowToastOnTapListener;

    .line 325
    :cond_1
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mfxAppHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxHitbox;->getTapSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mShowToastOnTapListener:Lcom/htc/photowidget3d/grid/M10Operator$ShowToastOnTapListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 335
    :goto_1
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mfxAppHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/controls/FxHitbox;->setEnabledGestures(I)V

    .line 336
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mfxAppHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/controls/FxHitbox;->setEnabled(Z)V

    goto :goto_0

    .line 329
    :cond_2
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mLaunchAlbumOnTapListener:Lcom/htc/photowidget3d/grid/M10Operator$LaunchAlbumOnTapListener;

    if-nez v0, :cond_3

    .line 331
    new-instance v0, Lcom/htc/photowidget3d/grid/M10Operator$LaunchAlbumOnTapListener;

    invoke-direct {v0, p0, v1}, Lcom/htc/photowidget3d/grid/M10Operator$LaunchAlbumOnTapListener;-><init>(Lcom/htc/photowidget3d/grid/M10Operator;Lcom/htc/photowidget3d/grid/M10Operator$1;)V

    iput-object v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mLaunchAlbumOnTapListener:Lcom/htc/photowidget3d/grid/M10Operator$LaunchAlbumOnTapListener;

    .line 333
    :cond_3
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mfxAppHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxHitbox;->getTapSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mLaunchAlbumOnTapListener:Lcom/htc/photowidget3d/grid/M10Operator$LaunchAlbumOnTapListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    goto :goto_1
.end method

.method private initListener()V
    .locals 2

    .prologue
    .line 700
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->m_fxBtnCenter:Lcom/htc/fusion/fx/controls/FxButton;

    if-eqz v0, :cond_0

    .line 703
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->m_fxBtnCenter:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mBtnClickInfoListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 706
    :cond_0
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mfxAppHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxHitbox;->getSwipeSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 707
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mAppOnSwipeListener:Lcom/htc/photowidget3d/grid/M10Operator$AppOnSwipeListener;

    if-nez v0, :cond_1

    .line 709
    new-instance v0, Lcom/htc/photowidget3d/grid/M10Operator$AppOnSwipeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/photowidget3d/grid/M10Operator$AppOnSwipeListener;-><init>(Lcom/htc/photowidget3d/grid/M10Operator;Lcom/htc/photowidget3d/grid/M10Operator$1;)V

    iput-object v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mAppOnSwipeListener:Lcom/htc/photowidget3d/grid/M10Operator$AppOnSwipeListener;

    .line 711
    :cond_1
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mfxAppHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxHitbox;->getSwipeSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mAppOnSwipeListener:Lcom/htc/photowidget3d/grid/M10Operator$AppOnSwipeListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 712
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mfxAppHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxHitbox;->setEnabledGestures(I)V

    .line 713
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mfxAppHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxHitbox;->setEnabled(Z)V

    .line 714
    return-void
.end method

.method private initPageControls()V
    .locals 3

    .prologue
    .line 295
    sget-boolean v1, Lcom/htc/photowidget3d/grid/M10Operator;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mfxScene:Lcom/htc/fusion/fx/FxScene;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 296
    :cond_0
    iget-object v1, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mfxScene:Lcom/htc/fusion/fx/FxScene;

    iget-object v2, p0, Lcom/htc/photowidget3d/grid/M10Operator;->PageControlNames:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxScene;->getDescendants([Ljava/lang/String;)[Lcom/htc/fusion/fx/FxObject;

    move-result-object v0

    .line 298
    .local v0, controls:[Lcom/htc/fusion/fx/FxObject;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v1, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mfxtlMainPage:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 299
    sget-boolean v1, Lcom/htc/photowidget3d/grid/M10Operator;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mfxtlMainPage:Lcom/htc/fusion/fx/FxTimelineControl;

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 300
    :cond_1
    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxButton;

    iput-object v1, p0, Lcom/htc/photowidget3d/grid/M10Operator;->m_fxBtnCenter:Lcom/htc/fusion/fx/controls/FxButton;

    .line 301
    sget-boolean v1, Lcom/htc/photowidget3d/grid/M10Operator;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/htc/photowidget3d/grid/M10Operator;->m_fxBtnCenter:Lcom/htc/fusion/fx/controls/FxButton;

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 302
    :cond_2
    const/4 v1, 0x2

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v1, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mfxtlButton:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 303
    sget-boolean v1, Lcom/htc/photowidget3d/grid/M10Operator;->$assertionsDisabled:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mfxtlButton:Lcom/htc/fusion/fx/FxTimelineControl;

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 304
    :cond_3
    const/4 v1, 0x3

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iput-object v1, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mfxDIPhotoError:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 305
    sget-boolean v1, Lcom/htc/photowidget3d/grid/M10Operator;->$assertionsDisabled:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mfxDIPhotoError:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 306
    :cond_4
    const/4 v1, 0x4

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v1, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mPhotoErrorStr:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 307
    sget-boolean v1, Lcom/htc/photowidget3d/grid/M10Operator;->$assertionsDisabled:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mPhotoErrorStr:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-nez v1, :cond_5

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 308
    :cond_5
    return-void
.end method

.method private launchAlbum()V
    .locals 2

    .prologue
    const/4 v1, 0x7

    .line 839
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-virtual {p0, v0, v1}, Lcom/htc/photowidget3d/grid/M10Operator;->hasMessage(Lcom/htc/android/rosie/widget/Widget$Host$Worker;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 841
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-virtual {p0, v0, v1}, Lcom/htc/photowidget3d/grid/M10Operator;->sendMessage(Lcom/htc/android/rosie/widget/Widget$Host$Worker;I)V

    .line 843
    :cond_0
    return-void
.end method

.method private onLaunchAlbumPicker()V
    .locals 2

    .prologue
    .line 796
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/htc/photowidget3d/grid/M10Operator;->sendMessage(Lcom/htc/android/rosie/widget/Widget$Host$Worker;I)V

    .line 797
    return-void
.end method

.method private onScrollPage(I)V
    .locals 5
    .parameter "direction"

    .prologue
    .line 763
    const/4 v2, 0x4

    .line 764
    .local v2, what:I
    const/4 v0, 0x1

    .line 765
    .local v0, arg1:I
    const/4 v1, 0x0

    .line 767
    .local v1, arg2:I
    const/4 v3, 0x1

    if-ne v3, p1, :cond_1

    .line 769
    const/4 v0, 0x1

    .line 775
    :goto_0
    iget v3, p0, Lcom/htc/photowidget3d/grid/M10Operator;->m_CurrentView:I

    if-nez v3, :cond_2

    .line 777
    const/4 v1, 0x0

    .line 784
    :goto_1
    iget-object v3, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/4 v4, 0x4

    invoke-virtual {p0, v3, v4}, Lcom/htc/photowidget3d/grid/M10Operator;->hasMessage(Lcom/htc/android/rosie/widget/Widget$Host$Worker;I)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/4 v4, 0x5

    invoke-virtual {p0, v3, v4}, Lcom/htc/photowidget3d/grid/M10Operator;->hasMessage(Lcom/htc/android/rosie/widget/Widget$Host$Worker;I)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/4 v4, 0x6

    invoke-virtual {p0, v3, v4}, Lcom/htc/photowidget3d/grid/M10Operator;->hasMessage(Lcom/htc/android/rosie/widget/Widget$Host$Worker;I)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/4 v4, 0x7

    invoke-virtual {p0, v3, v4}, Lcom/htc/photowidget3d/grid/M10Operator;->hasMessage(Lcom/htc/android/rosie/widget/Widget$Host$Worker;I)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v4, 0x8

    invoke-virtual {p0, v3, v4}, Lcom/htc/photowidget3d/grid/M10Operator;->hasMessage(Lcom/htc/android/rosie/widget/Widget$Host$Worker;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 790
    iget-object v3, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-virtual {p0, v3, v2, v0, v1}, Lcom/htc/photowidget3d/grid/M10Operator;->sendMessage(Lcom/htc/android/rosie/widget/Widget$Host$Worker;III)V

    .line 792
    :cond_0
    return-void

    .line 773
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 781
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private releaseErrorPageListener()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 341
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mfxAppHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    if-nez v0, :cond_0

    .line 349
    :goto_0
    return-void

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mfxAppHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxHitbox;->getTapSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 347
    iput-object v1, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mLaunchAlbumOnTapListener:Lcom/htc/photowidget3d/grid/M10Operator$LaunchAlbumOnTapListener;

    .line 348
    iput-object v1, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mShowToastOnTapListener:Lcom/htc/photowidget3d/grid/M10Operator$ShowToastOnTapListener;

    goto :goto_0
.end method

.method private saveIsCubePlaying()V
    .locals 2

    .prologue
    .line 580
    const/4 v0, 0x2

    iget v1, p0, Lcom/htc/photowidget3d/grid/M10Operator;->m_nOrientation:I

    if-ne v0, v1, :cond_1

    .line 582
    iget-boolean v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->m_bCubeIsPlaying:Z

    iput-boolean v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->m_bCubeIsPlaying_L:Z

    .line 588
    :cond_0
    :goto_0
    return-void

    .line 584
    :cond_1
    const/4 v0, 0x1

    iget v1, p0, Lcom/htc/photowidget3d/grid/M10Operator;->m_nOrientation:I

    if-ne v0, v1, :cond_0

    .line 586
    iget-boolean v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->m_bCubeIsPlaying:Z

    iput-boolean v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->m_bCubeIsPlaying_P:Z

    goto :goto_0
.end method

.method private savePreviousBmp()V
    .locals 2

    .prologue
    .line 556
    const/4 v0, 0x2

    iget v1, p0, Lcom/htc/photowidget3d/grid/M10Operator;->m_nOrientation:I

    if-ne v0, v1, :cond_1

    .line 558
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->PreviousBmp:[Lcom/htc/photowidget3d/grid/BitmapArray;

    iput-object v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->PreviousBmp_L:[Lcom/htc/photowidget3d/grid/BitmapArray;

    .line 564
    :cond_0
    :goto_0
    return-void

    .line 560
    :cond_1
    const/4 v0, 0x1

    iget v1, p0, Lcom/htc/photowidget3d/grid/M10Operator;->m_nOrientation:I

    if-ne v0, v1, :cond_0

    .line 562
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->PreviousBmp:[Lcom/htc/photowidget3d/grid/BitmapArray;

    iput-object v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->PreviousBmp_P:[Lcom/htc/photowidget3d/grid/BitmapArray;

    goto :goto_0
.end method

.method private triggerGridView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 834
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/htc/photowidget3d/grid/M10Operator;->sendMessage(Lcom/htc/android/rosie/widget/Widget$Host$Worker;III)V

    .line 835
    return-void
.end method

.method private triggerPhotoView(I)V
    .locals 3
    .parameter "offset"

    .prologue
    const/4 v2, 0x6

    .line 821
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/htc/photowidget3d/grid/M10Operator;->hasMessage(Lcom/htc/android/rosie/widget/Widget$Host$Worker;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/htc/photowidget3d/grid/M10Operator;->hasMessage(Lcom/htc/android/rosie/widget/Widget$Host$Worker;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-virtual {p0, v0, v2}, Lcom/htc/photowidget3d/grid/M10Operator;->hasMessage(Lcom/htc/android/rosie/widget/Widget$Host$Worker;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Lcom/htc/photowidget3d/grid/M10Operator;->hasMessage(Lcom/htc/android/rosie/widget/Widget$Host$Worker;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/htc/photowidget3d/grid/M10Operator;->hasMessage(Lcom/htc/android/rosie/widget/Widget$Host$Worker;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 827
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->m_ScrollDirection:I

    .line 828
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, p1, v1}, Lcom/htc/photowidget3d/grid/M10Operator;->sendMessage(Lcom/htc/android/rosie/widget/Widget$Host$Worker;III)V

    .line 830
    :cond_0
    return-void
.end method


# virtual methods
.method public getCurrentView()I
    .locals 1

    .prologue
    .line 847
    iget v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->m_CurrentView:I

    return v0
.end method

.method public getIsCubePlaying()Z
    .locals 2

    .prologue
    .line 568
    const/4 v0, 0x2

    iget v1, p0, Lcom/htc/photowidget3d/grid/M10Operator;->m_nOrientation:I

    if-ne v0, v1, :cond_0

    .line 570
    iget-boolean v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->m_bCubeIsPlaying_L:Z

    .line 574
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->m_bCubeIsPlaying_P:Z

    goto :goto_0
.end method

.method public getPageState()I
    .locals 1

    .prologue
    .line 358
    iget v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->m_nPageState:I

    return v0
.end method

.method public handleGridClicked(I)V
    .locals 3
    .parameter "offset"

    .prologue
    const/16 v2, 0x8

    .line 801
    const/4 v0, 0x1

    iget v1, p0, Lcom/htc/photowidget3d/grid/M10Operator;->m_CurrentView:I

    if-ne v0, v1, :cond_1

    .line 803
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/htc/photowidget3d/grid/M10Operator;->hasMessage(Lcom/htc/android/rosie/widget/Widget$Host$Worker;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/htc/photowidget3d/grid/M10Operator;->hasMessage(Lcom/htc/android/rosie/widget/Widget$Host$Worker;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/htc/photowidget3d/grid/M10Operator;->hasMessage(Lcom/htc/android/rosie/widget/Widget$Host$Worker;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Lcom/htc/photowidget3d/grid/M10Operator;->hasMessage(Lcom/htc/android/rosie/widget/Widget$Host$Worker;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-virtual {p0, v0, v2}, Lcom/htc/photowidget3d/grid/M10Operator;->hasMessage(Lcom/htc/android/rosie/widget/Widget$Host$Worker;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 809
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->m_ScrollDirection:I

    .line 810
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-virtual {p0, v0, v2}, Lcom/htc/photowidget3d/grid/M10Operator;->sendMessage(Lcom/htc/android/rosie/widget/Widget$Host$Worker;I)V

    .line 817
    :cond_0
    :goto_0
    return-void

    .line 815
    :cond_1
    invoke-direct {p0, p1}, Lcom/htc/photowidget3d/grid/M10Operator;->triggerPhotoView(I)V

    goto :goto_0
.end method

.method public hasMessage(Lcom/htc/android/rosie/widget/Widget$Host$Worker;I)Z
    .locals 3
    .parameter "worker"
    .parameter "code"

    .prologue
    .line 916
    const/4 v0, 0x0

    .line 918
    .local v0, bRet:Z
    if-nez p1, :cond_0

    move v1, v0

    .line 928
    .end local v0           #bRet:Z
    .local v1, bRet:I
    :goto_0
    return v1

    .line 923
    .end local v1           #bRet:I
    .restart local v0       #bRet:Z
    :cond_0
    invoke-interface {p1, p2}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->hasMessage(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 925
    const/4 v0, 0x1

    :cond_1
    move v1, v0

    .line 928
    .restart local v1       #bRet:I
    goto :goto_0
.end method

.method public init(Landroid/content/Context;Lcom/htc/fusion/fx/FxScene;Ljava/lang/String;Lcom/htc/android/rosie/widget/Widget$Host$Worker;I)V
    .locals 1
    .parameter "Context"
    .parameter "fxScene"
    .parameter "ListItemScenePath"
    .parameter "Handler"
    .parameter "nOrientation"

    .prologue
    const/4 v0, 0x0

    .line 134
    iput-object p2, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mfxScene:Lcom/htc/fusion/fx/FxScene;

    .line 135
    iput-object p3, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mListItemScenePath:Ljava/lang/String;

    .line 136
    iput-object p1, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mContext:Landroid/content/Context;

    .line 137
    iput-object p4, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    .line 138
    invoke-direct {p0}, Lcom/htc/photowidget3d/grid/M10Operator;->savePreviousBmp()V

    .line 139
    invoke-direct {p0}, Lcom/htc/photowidget3d/grid/M10Operator;->saveIsCubePlaying()V

    .line 140
    iput p5, p0, Lcom/htc/photowidget3d/grid/M10Operator;->m_nOrientation:I

    .line 141
    invoke-direct {p0}, Lcom/htc/photowidget3d/grid/M10Operator;->getPreviousBmp()V

    .line 142
    iput v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->m_ScrollDirection:I

    .line 143
    iput-boolean v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->m_bCubeIsPlaying:Z

    .line 145
    invoke-direct {p0}, Lcom/htc/photowidget3d/grid/M10Operator;->initControls()V

    .line 146
    invoke-direct {p0}, Lcom/htc/photowidget3d/grid/M10Operator;->initListener()V

    .line 147
    return-void
.end method

.method public onTiltChanged(F)V
    .locals 3
    .parameter "fTilt"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mfxtlTilt:Lcom/htc/fusion/fx/FxTimelineControl;

    iget v1, p0, Lcom/htc/photowidget3d/grid/M10Operator;->m_nTiltStartFrame:I

    iget v2, p0, Lcom/htc/photowidget3d/grid/M10Operator;->m_nTiltEndFrame:I

    invoke-static {p1, v1, v2}, Lcom/htc/android/rosie/widget/WidgetHelper;->convertTiltAngleToFrame(FII)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 213
    return-void
.end method

.method public orientationSwitch(IIZ)V
    .locals 3
    .parameter "nCurrentFocus"
    .parameter "nCurrentView"
    .parameter "bRefresh"

    .prologue
    .line 852
    invoke-direct {p0}, Lcom/htc/photowidget3d/grid/M10Operator;->getPreviousView()I

    move-result v1

    .line 853
    .local v1, nPreviousView:I
    invoke-direct {p0}, Lcom/htc/photowidget3d/grid/M10Operator;->getPreviousFocus()I

    move-result v0

    .line 854
    .local v0, nPreviousFocus:I
    if-ne v0, p1, :cond_0

    if-ne v1, p2, :cond_0

    if-eqz p3, :cond_2

    .line 856
    :cond_0
    if-nez p2, :cond_3

    .line 858
    invoke-direct {p0}, Lcom/htc/photowidget3d/grid/M10Operator;->triggerGridView()V

    .line 865
    :cond_1
    :goto_0
    iput p2, p0, Lcom/htc/photowidget3d/grid/M10Operator;->m_CurrentView:I

    .line 866
    iget v2, p0, Lcom/htc/photowidget3d/grid/M10Operator;->m_CurrentView:I

    invoke-virtual {p0, v2, p1}, Lcom/htc/photowidget3d/grid/M10Operator;->savePreviousViewNFocus(II)V

    .line 868
    :cond_2
    return-void

    .line 860
    :cond_3
    const/4 v2, 0x1

    if-ne v2, p2, :cond_1

    .line 862
    const/4 v2, -0x1

    invoke-direct {p0, v2}, Lcom/htc/photowidget3d/grid/M10Operator;->triggerPhotoView(I)V

    goto :goto_0
.end method

.method public playAnim([Lcom/htc/photowidget3d/grid/BitmapArray;)Z
    .locals 2
    .parameter "ArrayDrawable"

    .prologue
    .line 749
    const/4 v0, 0x1

    .line 751
    .local v0, bRet:Z
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/photowidget3d/grid/M10Operator;->m_bCubeIsPlaying:Z

    .line 752
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/photowidget3d/grid/M10Operator;->m_nPlaybackCompleteCnt:I

    .line 753
    invoke-direct {p0}, Lcom/htc/photowidget3d/grid/M10Operator;->getPreviousBmp()V

    .line 754
    iput-object p1, p0, Lcom/htc/photowidget3d/grid/M10Operator;->CurrentBmp:[Lcom/htc/photowidget3d/grid/BitmapArray;

    .line 755
    invoke-direct {p0}, Lcom/htc/photowidget3d/grid/M10Operator;->cubeTransition()V

    .line 756
    iget v1, p0, Lcom/htc/photowidget3d/grid/M10Operator;->m_index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/photowidget3d/grid/M10Operator;->m_index:I

    .line 758
    return v0
.end method

.method public playBtnMarker(Ljava/lang/String;)V
    .locals 1
    .parameter "szMarker"

    .prologue
    .line 933
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mfxtlButton:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_0

    .line 935
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mfxtlButton:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 937
    :cond_0
    return-void
.end method

.method public refreshBmp()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 733
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x14

    if-ge v0, v1, :cond_2

    .line 735
    iget-object v1, p0, Lcom/htc/photowidget3d/grid/M10Operator;->PreviousBmp_P:[Lcom/htc/photowidget3d/grid/BitmapArray;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/htc/photowidget3d/grid/BitmapArray;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/photowidget3d/grid/M10Operator;->PreviousBmp_P:[Lcom/htc/photowidget3d/grid/BitmapArray;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/htc/photowidget3d/grid/BitmapArray;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 737
    iget-object v1, p0, Lcom/htc/photowidget3d/grid/M10Operator;->PreviousBmp_P:[Lcom/htc/photowidget3d/grid/BitmapArray;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/htc/photowidget3d/grid/BitmapArray;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    .line 740
    :cond_0
    iget-object v1, p0, Lcom/htc/photowidget3d/grid/M10Operator;->PreviousBmp_L:[Lcom/htc/photowidget3d/grid/BitmapArray;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/htc/photowidget3d/grid/BitmapArray;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/photowidget3d/grid/M10Operator;->PreviousBmp_L:[Lcom/htc/photowidget3d/grid/BitmapArray;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/htc/photowidget3d/grid/BitmapArray;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 742
    iget-object v1, p0, Lcom/htc/photowidget3d/grid/M10Operator;->PreviousBmp_L:[Lcom/htc/photowidget3d/grid/BitmapArray;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/htc/photowidget3d/grid/BitmapArray;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    .line 733
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 745
    :cond_2
    return-void
.end method

.method public releaseBmp()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 217
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x14

    if-ge v0, v1, :cond_4

    .line 219
    iget-object v1, p0, Lcom/htc/photowidget3d/grid/M10Operator;->CurrentBmp:[Lcom/htc/photowidget3d/grid/BitmapArray;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/htc/photowidget3d/grid/BitmapArray;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/photowidget3d/grid/M10Operator;->CurrentBmp:[Lcom/htc/photowidget3d/grid/BitmapArray;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/htc/photowidget3d/grid/BitmapArray;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 221
    iget-object v1, p0, Lcom/htc/photowidget3d/grid/M10Operator;->CurrentBmp:[Lcom/htc/photowidget3d/grid/BitmapArray;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/htc/photowidget3d/grid/BitmapArray;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 222
    iget-object v1, p0, Lcom/htc/photowidget3d/grid/M10Operator;->CurrentBmp:[Lcom/htc/photowidget3d/grid/BitmapArray;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/htc/photowidget3d/grid/BitmapArray;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 225
    :cond_0
    iget-object v1, p0, Lcom/htc/photowidget3d/grid/M10Operator;->PreviousBmp:[Lcom/htc/photowidget3d/grid/BitmapArray;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/htc/photowidget3d/grid/BitmapArray;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/photowidget3d/grid/M10Operator;->PreviousBmp:[Lcom/htc/photowidget3d/grid/BitmapArray;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/htc/photowidget3d/grid/BitmapArray;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 227
    iget-object v1, p0, Lcom/htc/photowidget3d/grid/M10Operator;->PreviousBmp:[Lcom/htc/photowidget3d/grid/BitmapArray;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/htc/photowidget3d/grid/BitmapArray;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 228
    iget-object v1, p0, Lcom/htc/photowidget3d/grid/M10Operator;->PreviousBmp:[Lcom/htc/photowidget3d/grid/BitmapArray;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/htc/photowidget3d/grid/BitmapArray;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 231
    :cond_1
    iget-object v1, p0, Lcom/htc/photowidget3d/grid/M10Operator;->PreviousBmp_P:[Lcom/htc/photowidget3d/grid/BitmapArray;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/htc/photowidget3d/grid/BitmapArray;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/photowidget3d/grid/M10Operator;->PreviousBmp_P:[Lcom/htc/photowidget3d/grid/BitmapArray;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/htc/photowidget3d/grid/BitmapArray;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 233
    iget-object v1, p0, Lcom/htc/photowidget3d/grid/M10Operator;->PreviousBmp_P:[Lcom/htc/photowidget3d/grid/BitmapArray;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/htc/photowidget3d/grid/BitmapArray;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 234
    iget-object v1, p0, Lcom/htc/photowidget3d/grid/M10Operator;->PreviousBmp_P:[Lcom/htc/photowidget3d/grid/BitmapArray;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/htc/photowidget3d/grid/BitmapArray;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 237
    :cond_2
    iget-object v1, p0, Lcom/htc/photowidget3d/grid/M10Operator;->PreviousBmp_L:[Lcom/htc/photowidget3d/grid/BitmapArray;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/htc/photowidget3d/grid/BitmapArray;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/photowidget3d/grid/M10Operator;->PreviousBmp_L:[Lcom/htc/photowidget3d/grid/BitmapArray;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/htc/photowidget3d/grid/BitmapArray;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 239
    iget-object v1, p0, Lcom/htc/photowidget3d/grid/M10Operator;->PreviousBmp_L:[Lcom/htc/photowidget3d/grid/BitmapArray;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/htc/photowidget3d/grid/BitmapArray;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 240
    iget-object v1, p0, Lcom/htc/photowidget3d/grid/M10Operator;->PreviousBmp_L:[Lcom/htc/photowidget3d/grid/BitmapArray;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/htc/photowidget3d/grid/BitmapArray;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 217
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 243
    :cond_4
    return-void
.end method

.method public releaseData()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 260
    iput-object v2, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mfxtlButton:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 261
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->m_fxBtnCenter:Lcom/htc/fusion/fx/controls/FxButton;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mBtnClickInfoListener:Lcom/htc/fusion/fx/MessageListener;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->m_fxBtnCenter:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mBtnClickInfoListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->unbind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mfxAppHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    if-eqz v0, :cond_1

    .line 275
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mfxAppHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxHitbox;->getSwipeSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 277
    :cond_1
    iput-object v2, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mAppOnSwipeListener:Lcom/htc/photowidget3d/grid/M10Operator$AppOnSwipeListener;

    .line 279
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mfxlistView:Lcom/htc/fusion/fx/controls/FxListView;

    if-eqz v0, :cond_2

    .line 281
    const/4 v0, 0x1

    iget v1, p0, Lcom/htc/photowidget3d/grid/M10Operator;->m_nOrientation:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mListItemListener_P:Lcom/htc/photowidget3d/grid/M10Operator$ListItemListener;

    if-eqz v0, :cond_3

    .line 283
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mfxlistView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxListView;->getListItemEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mListItemListener_P:Lcom/htc/photowidget3d/grid/M10Operator$ListItemListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->unbind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 290
    :cond_2
    :goto_0
    iput-object v2, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mfxlistView:Lcom/htc/fusion/fx/controls/FxListView;

    .line 291
    return-void

    .line 285
    :cond_3
    const/4 v0, 0x2

    iget v1, p0, Lcom/htc/photowidget3d/grid/M10Operator;->m_nOrientation:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mListItemListener_L:Lcom/htc/photowidget3d/grid/M10Operator$ListItemListener;

    if-eqz v0, :cond_2

    .line 287
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mfxlistView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxListView;->getListItemEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mListItemListener_L:Lcom/htc/photowidget3d/grid/M10Operator$ListItemListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->unbind(Lcom/htc/fusion/fx/IMessageListener;)V

    goto :goto_0
.end method

.method public resetPage()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 247
    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/htc/photowidget3d/grid/M10Operator;->getPreviousView()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 249
    const-string v0, "ap"

    invoke-virtual {p0, v0}, Lcom/htc/photowidget3d/grid/M10Operator;->playBtnMarker(Ljava/lang/String;)V

    .line 252
    :cond_0
    iput v2, p0, Lcom/htc/photowidget3d/grid/M10Operator;->m_nCurrentFocus_P:I

    .line 253
    iput v2, p0, Lcom/htc/photowidget3d/grid/M10Operator;->m_nCurrentFocus_L:I

    .line 254
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->m_CurrentView:I

    .line 255
    iget v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->m_CurrentView:I

    invoke-virtual {p0, v0, v2}, Lcom/htc/photowidget3d/grid/M10Operator;->savePreviousViewNFocus(II)V

    .line 256
    return-void
.end method

.method public savePreviousViewNFocus(II)V
    .locals 3
    .parameter "nView"
    .parameter "nFocus"

    .prologue
    const/4 v2, 0x1

    .line 616
    const/4 v0, 0x2

    iget v1, p0, Lcom/htc/photowidget3d/grid/M10Operator;->m_nOrientation:I

    if-ne v0, v1, :cond_2

    .line 618
    iget v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->m_CurrentView_L:I

    if-nez v0, :cond_1

    if-ne v2, p1, :cond_1

    .line 620
    const-string v0, "grid"

    invoke-virtual {p0, v0}, Lcom/htc/photowidget3d/grid/M10Operator;->playBtnMarker(Ljava/lang/String;)V

    .line 626
    :cond_0
    :goto_0
    iput p1, p0, Lcom/htc/photowidget3d/grid/M10Operator;->m_CurrentView_L:I

    iput p1, p0, Lcom/htc/photowidget3d/grid/M10Operator;->m_CurrentView:I

    .line 627
    iput p2, p0, Lcom/htc/photowidget3d/grid/M10Operator;->m_nCurrentFocus_L:I

    .line 642
    :goto_1
    return-void

    .line 622
    :cond_1
    iget v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->m_CurrentView_L:I

    if-ne v2, v0, :cond_0

    if-nez p1, :cond_0

    .line 624
    const-string v0, "ap"

    invoke-virtual {p0, v0}, Lcom/htc/photowidget3d/grid/M10Operator;->playBtnMarker(Ljava/lang/String;)V

    goto :goto_0

    .line 631
    :cond_2
    iget v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->m_CurrentView_P:I

    if-nez v0, :cond_4

    if-ne v2, p1, :cond_4

    .line 633
    const-string v0, "grid"

    invoke-virtual {p0, v0}, Lcom/htc/photowidget3d/grid/M10Operator;->playBtnMarker(Ljava/lang/String;)V

    .line 639
    :cond_3
    :goto_2
    iput p1, p0, Lcom/htc/photowidget3d/grid/M10Operator;->m_CurrentView_P:I

    iput p1, p0, Lcom/htc/photowidget3d/grid/M10Operator;->m_CurrentView:I

    .line 640
    iput p2, p0, Lcom/htc/photowidget3d/grid/M10Operator;->m_nCurrentFocus_P:I

    goto :goto_1

    .line 635
    :cond_4
    iget v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->m_CurrentView_P:I

    if-ne v2, v0, :cond_3

    if-nez p1, :cond_3

    .line 637
    const-string v0, "ap"

    invoke-virtual {p0, v0}, Lcom/htc/photowidget3d/grid/M10Operator;->playBtnMarker(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public sendMessage(Lcom/htc/android/rosie/widget/Widget$Host$Worker;I)V
    .locals 1
    .parameter "worker"
    .parameter "code"

    .prologue
    .line 877
    if-nez p1, :cond_0

    .line 885
    :goto_0
    return-void

    .line 882
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 883
    .local v0, m:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 884
    invoke-interface {p1, v0}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public sendMessage(Lcom/htc/android/rosie/widget/Widget$Host$Worker;II)V
    .locals 1
    .parameter "worker"
    .parameter "code"
    .parameter "arg1"

    .prologue
    .line 889
    if-nez p1, :cond_0

    .line 898
    :goto_0
    return-void

    .line 894
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 895
    .local v0, m:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 896
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 897
    invoke-interface {p1, v0}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public sendMessage(Lcom/htc/android/rosie/widget/Widget$Host$Worker;III)V
    .locals 1
    .parameter "worker"
    .parameter "code"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 902
    if-nez p1, :cond_0

    .line 912
    :goto_0
    return-void

    .line 907
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 908
    .local v0, m:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 909
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 910
    iput p4, v0, Landroid/os/Message;->arg2:I

    .line 911
    invoke-interface {p1, v0}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public setPageState(I)V
    .locals 0
    .parameter "nState"

    .prologue
    .line 353
    iput p1, p0, Lcom/htc/photowidget3d/grid/M10Operator;->m_nPageState:I

    .line 354
    return-void
.end method

.method public showAppText(Ljava/lang/String;)V
    .locals 1
    .parameter "szAppText"

    .prologue
    .line 872
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mAppStr:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 873
    return-void
.end method

.method public showErrorPage(IZZ)V
    .locals 2
    .parameter "nStringID"
    .parameter "bEnableListener"
    .parameter "bShowErrorToast"

    .prologue
    .line 380
    const/16 v0, 0xa

    iput v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->m_nPageState:I

    .line 381
    invoke-direct {p0}, Lcom/htc/photowidget3d/grid/M10Operator;->releaseErrorPageListener()V

    .line 382
    invoke-direct {p0}, Lcom/htc/photowidget3d/grid/M10Operator;->initPageControls()V

    .line 384
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mfxtlMainPage:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mfxtlMainPage:Lcom/htc/fusion/fx/FxTimelineControl;

    const/high16 v1, 0x4120

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->m_fxBtnCenter:Lcom/htc/fusion/fx/controls/FxButton;

    if-eqz v0, :cond_1

    .line 391
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->m_fxBtnCenter:Lcom/htc/fusion/fx/controls/FxButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxButton;->setEnabled(Z)V

    .line 394
    :cond_1
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mfxDIPhotoError:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    if-eqz v0, :cond_2

    .line 396
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mfxDIPhotoError:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setFailed()V

    .line 399
    :cond_2
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mPhotoErrorStr:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_3

    .line 401
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mPhotoErrorStr:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v1, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 404
    :cond_3
    invoke-virtual {p0}, Lcom/htc/photowidget3d/grid/M10Operator;->resetPage()V

    .line 405
    invoke-virtual {p0}, Lcom/htc/photowidget3d/grid/M10Operator;->releaseData()V

    .line 406
    invoke-direct {p0, p3}, Lcom/htc/photowidget3d/grid/M10Operator;->initErrorPageListener(Z)V

    .line 407
    return-void
.end method

.method public showNormalPage()V
    .locals 2

    .prologue
    .line 363
    const/4 v0, 0x5

    iput v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->m_nPageState:I

    .line 364
    invoke-direct {p0}, Lcom/htc/photowidget3d/grid/M10Operator;->releaseErrorPageListener()V

    .line 365
    invoke-direct {p0}, Lcom/htc/photowidget3d/grid/M10Operator;->initPageControls()V

    .line 367
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mfxtlMainPage:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->mfxtlMainPage:Lcom/htc/fusion/fx/FxTimelineControl;

    const/high16 v1, 0x40a0

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->m_fxBtnCenter:Lcom/htc/fusion/fx/controls/FxButton;

    if-eqz v0, :cond_1

    .line 374
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/M10Operator;->m_fxBtnCenter:Lcom/htc/fusion/fx/controls/FxButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxButton;->setEnabled(Z)V

    .line 376
    :cond_1
    return-void
.end method
