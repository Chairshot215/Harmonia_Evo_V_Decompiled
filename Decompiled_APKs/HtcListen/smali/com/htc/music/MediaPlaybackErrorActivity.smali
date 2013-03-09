.class public Lcom/htc/music/MediaPlaybackErrorActivity;
.super Landroid/app/Activity;
.source "MediaPlaybackErrorActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Lcom/htc/music/util/MusicUtils$Defs;
.implements Lcom/htc/music/widget/IDismissBubbleInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/MediaPlaybackErrorActivity$MyQueryHandler;
    }
.end annotation


# static fields
.field public static final ANIMATION_DURATION:I = 0x190

.field public static final FINISH_ERROR_ACTIVITY:Ljava/lang/String; = "com.htc.music.finisherroractivity"

.field private static final LOGTAG:Ljava/lang/String; = "[MediaPlaybackErrorActivity]"

.field public static final PRESENTATION_MODE:Ljava/lang/String; = "Presentation_Mode"

.field private static final SCANNER_FINISHED:I = 0x1

.field private static final SEARCHING:I = 0x0

.field private static final SET_DEFAULT_RESOURCE_TIMER:I = 0x1388


# instance fields
.field private final OPEN_FEATURED_AFTER_ROTATE:I

.field private mCursorCols:[Ljava/lang/String;

.field private mDisableLib:Z

.field private mErrorContent:Landroid/view/View;

.field private mErrorMessage:Ljava/lang/String;

.field private mFeaturedListExist:Z

.field public mGlanceDMPErrorIconTopMargin:I

.field public mGlanceErrorContentHeightOpen:I

.field public mGlanceErrorIconHeight:I

.field public mGlanceErrorIconHeightOpen:I

.field public mGlanceErrorIconLeftMarginOpen:I

.field public mGlanceErrorIconWidth:I

.field public mGlanceErrorIconWidthOpen:I

.field private mIndicateOrientation:I

.field private mIsMusicStoreEnable:Z

.field private mIsPluginMode:Z

.field private mIsPresentationMode:Z

.field private mIsSupportMMC:Z

.field private mLibraryButton:Landroid/view/View;

.field private mLossServerWarningStr:Ljava/lang/String;

.field private mMusicStoreBtnClickListener:Landroid/view/View$OnClickListener;

.field private mNextButton:Landroid/view/View;

.field private mOrientation:I

.field private mPauseButton:Landroid/view/View;

.field private mPluginErrorListener:Landroid/content/BroadcastReceiver;

.field private mPluginReScanHandler:Landroid/os/Handler;

.field private mPrevButton:Landroid/view/View;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mQueryHandler:Landroid/content/AsyncQueryHandler;

.field private mQueueLen:I

.field private mReScanHandler:Landroid/os/Handler;

.field private mRecommendButton:Landroid/view/View;

.field private mRepeatButton:Landroid/widget/ImageButton;

.field private mScanListener:Landroid/content/BroadcastReceiver;

.field private mSdIcon:Landroid/view/View;

.field private mSdMessage:Landroid/view/View;

.field private mSearchDialogVisible:Z

.field public mService:Lcom/htc/music/IMediaPlaybackService;

.field private mSetDefaultResourceHandler:Landroid/os/Handler;

.field private mSetDefaultResourceRunnable:Ljava/lang/Runnable;

.field private mShuffleButton:Landroid/widget/ImageButton;

.field private mSortOrder:Ljava/lang/String;

.field private mStoreItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

.field private mTaskBarExist:Z

.field private mTrackCursor:Landroid/database/Cursor;

.field private mTwoPanelBtn:Landroid/widget/ImageButton;

.field private osc:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mSearchDialogVisible:Z

    iput v2, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mQueueLen:I

    iput v2, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mOrientation:I

    iput v2, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mIndicateOrientation:I

    iput-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mTwoPanelBtn:Landroid/widget/ImageButton;

    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mIsMusicStoreEnable:Z

    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mIsPluginMode:Z

    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mDisableLib:Z

    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mTaskBarExist:Z

    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mFeaturedListExist:Z

    iput-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mErrorMessage:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mIsSupportMMC:Z

    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mIsPresentationMode:Z

    iput-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    iput-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mRepeatButton:Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mShuffleButton:Landroid/widget/ImageButton;

    iput v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->OPEN_FEATURED_AFTER_ROTATE:I

    iput-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mErrorContent:Landroid/view/View;

    iput-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mSdIcon:Landroid/view/View;

    iput-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mSdMessage:Landroid/view/View;

    iput v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mGlanceErrorContentHeightOpen:I

    iput v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mGlanceErrorIconWidth:I

    iput v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mGlanceErrorIconHeight:I

    iput v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mGlanceErrorIconLeftMarginOpen:I

    iput v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mGlanceErrorIconWidthOpen:I

    iput v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mGlanceErrorIconHeightOpen:I

    iput v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mGlanceDMPErrorIconTopMargin:I

    iput-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mLossServerWarningStr:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    iput-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mStoreItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    new-instance v0, Lcom/htc/music/MediaPlaybackErrorActivity$3;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackErrorActivity$3;-><init>(Lcom/htc/music/MediaPlaybackErrorActivity;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/htc/music/MediaPlaybackErrorActivity$4;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackErrorActivity$4;-><init>(Lcom/htc/music/MediaPlaybackErrorActivity;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mPluginErrorListener:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mSetDefaultResourceHandler:Landroid/os/Handler;

    new-instance v0, Lcom/htc/music/MediaPlaybackErrorActivity$5;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackErrorActivity$5;-><init>(Lcom/htc/music/MediaPlaybackErrorActivity;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mSetDefaultResourceRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/htc/music/MediaPlaybackErrorActivity$6;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackErrorActivity$6;-><init>(Lcom/htc/music/MediaPlaybackErrorActivity;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mReScanHandler:Landroid/os/Handler;

    new-instance v0, Lcom/htc/music/MediaPlaybackErrorActivity$7;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackErrorActivity$7;-><init>(Lcom/htc/music/MediaPlaybackErrorActivity;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mPluginReScanHandler:Landroid/os/Handler;

    new-instance v0, Lcom/htc/music/MediaPlaybackErrorActivity$9;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackErrorActivity$9;-><init>(Lcom/htc/music/MediaPlaybackErrorActivity;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mMusicStoreBtnClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/htc/music/MediaPlaybackErrorActivity$11;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackErrorActivity$11;-><init>(Lcom/htc/music/MediaPlaybackErrorActivity;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->osc:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/MediaPlaybackErrorActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->startBrowserTabActivity()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/music/MediaPlaybackErrorActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mReScanHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/music/MediaPlaybackErrorActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mIsPluginMode:Z

    return v0
.end method

.method static synthetic access$200(Lcom/htc/music/MediaPlaybackErrorActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->setDefaultResource()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/music/MediaPlaybackErrorActivity;)Landroid/content/AsyncQueryHandler;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/music/MediaPlaybackErrorActivity;Landroid/content/AsyncQueryHandler;)Landroid/database/Cursor;
    .locals 1

    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackErrorActivity;->getAlbumCursor(Landroid/content/AsyncQueryHandler;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/music/MediaPlaybackErrorActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/htc/music/MediaPlaybackErrorActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mErrorMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/htc/music/MediaPlaybackErrorActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mPluginReScanHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/music/MediaPlaybackErrorActivity;)Lcom/htc/music/widget/StoreSwitcherAdapter;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/music/MediaPlaybackErrorActivity;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mStoreItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/music/MediaPlaybackErrorActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->setPluginListListener()V

    return-void
.end method

.method private getAlbumCursor(Landroid/content/AsyncQueryHandler;)Landroid/database/Cursor;
    .locals 14

    const/4 v0, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/music/MediaPlaybackErrorActivity;->init(Landroid/database/Cursor;)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getQueueSize()I

    move-result v8

    if-gtz v8, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/music/MediaPlaybackErrorActivity;->init(Landroid/database/Cursor;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v9

    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_1
    move-object v0, v12

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->getQueue()[I

    move-result-object v11

    if-eqz v11, :cond_1

    const-string v0, "title_key"

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mSortOrder:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "title != \'\'"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AND _id IN ("

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x0

    :goto_2
    array-length v0, v11

    if-ge v10, v0, :cond_4

    aget v0, v11, v10

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    array-length v0, v11

    add-int/lit8 v0, v0, -0x1

    if-ge v10, v0, :cond_3

    const-string v0, ","

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_4
    const-string v0, ")"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AND is_music>=1"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_5

    const/4 v1, 0x0

    const/4 v2, 0x0

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mCursorCols:[Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mSortOrder:Ljava/lang/String;

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mCursorCols:[Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mSortOrder:Ljava/lang/String;

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v12

    goto :goto_1
.end method

.method private initConstant()V
    .locals 3

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    const/high16 v2, 0x7f0b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mGlanceErrorContentHeightOpen:I

    const v2, 0x7f0b0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mGlanceErrorIconWidth:I

    const v2, 0x7f0b0003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mGlanceErrorIconHeight:I

    const v2, 0x7f0b0005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mGlanceErrorIconWidthOpen:I

    const v2, 0x7f0b0006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mGlanceErrorIconHeightOpen:I

    const v2, 0x7f0b0004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mGlanceErrorIconLeftMarginOpen:I

    const v2, 0x7f0b0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mGlanceDMPErrorIconTopMargin:I

    return-void
.end method

.method private initTitleBar()V
    .locals 12

    const/4 v8, 0x0

    const/16 v11, 0x8

    const/4 v10, 0x1

    const v7, 0x7f0800ce

    invoke-virtual {p0, v7}, Lcom/htc/music/MediaPlaybackErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HeaderBar;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v10}, Lcom/htc/widget/HeaderBar;->enableSecondBackground(Z)V

    :cond_0
    const v7, 0x7f0800cf

    invoke-virtual {p0, v7}, Lcom/htc/music/MediaPlaybackErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HeaderBarText;

    const v7, 0x7f0800d0

    invoke-virtual {p0, v7}, Lcom/htc/music/MediaPlaybackErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HeaderBarImage;

    const v7, 0x7f0800d1

    invoke-virtual {p0, v7}, Lcom/htc/music/MediaPlaybackErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HeaderBarImage;

    const v7, 0x7f0800d3

    invoke-virtual {p0, v7}, Lcom/htc/music/MediaPlaybackErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HeaderBarImage;

    const v7, 0x7f0800d2

    invoke-virtual {p0, v7}, Lcom/htc/music/MediaPlaybackErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/htc/widget/HeaderBarImage;

    if-eqz v5, :cond_1

    const v7, 0x7f07001b

    invoke-virtual {v5, v7}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    invoke-virtual {v5, v8}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    invoke-virtual {v5, v11}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftVisibility(I)V

    :cond_1
    if-eqz v3, :cond_2

    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->CheckDLNAStatus(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v3, v10}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    invoke-virtual {v3, v8}, Lcom/htc/widget/HeaderBarImage;->setEnabled(Z)V

    const v7, 0x7f0700df

    invoke-virtual {v3, v7}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    const v7, 0x208090e

    invoke-virtual {v3, v7}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    invoke-virtual {v2, v10}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    const v7, 0x20808ea

    invoke-virtual {v2, v7}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    const v7, 0x7f0700e1

    invoke-virtual {v2, v7}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    new-instance v7, Lcom/htc/music/MediaPlaybackErrorActivity$1;

    invoke-direct {v7, p0}, Lcom/htc/music/MediaPlaybackErrorActivity$1;-><init>(Lcom/htc/music/MediaPlaybackErrorActivity;)V

    invoke-virtual {v2, v7}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    if-eqz v4, :cond_4

    new-instance v7, Lcom/htc/music/widget/StoreSwitcherAdapter;

    invoke-direct {v7, p0}, Lcom/htc/music/widget/StoreSwitcherAdapter;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    iget-object v7, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    invoke-virtual {v7}, Lcom/htc/music/widget/StoreSwitcherAdapter;->getCount()I

    move-result v7

    if-lez v7, :cond_7

    new-instance v7, Lcom/htc/music/widget/DismissBubbleItemClickListener;

    new-instance v8, Lcom/htc/music/widget/StoreSwitcherAdapter$OnStoreSwitcherItemClickListener;

    iget-object v9, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    invoke-direct {v8, p0, v9}, Lcom/htc/music/widget/StoreSwitcherAdapter$OnStoreSwitcherItemClickListener;-><init>(Landroid/app/Activity;Lcom/htc/music/widget/StoreSwitcherAdapter;)V

    invoke-direct {v7, p0, v8}, Lcom/htc/music/widget/DismissBubbleItemClickListener;-><init>(Lcom/htc/music/widget/IDismissBubbleInterface;Landroid/widget/AdapterView$OnItemClickListener;)V

    iput-object v7, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mStoreItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    :goto_1
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    if-eqz v7, :cond_8

    invoke-virtual {v4, v10}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    iget-object v7, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    invoke-virtual {v7}, Lcom/htc/music/widget/StoreSwitcherAdapter;->getSwitchTagResId()I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    iget-object v7, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    invoke-virtual {v7}, Lcom/htc/music/widget/StoreSwitcherAdapter;->getSwitchIconResId()I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    iget-object v7, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mMusicStoreBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v7}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    invoke-virtual {v4, v7}, Lcom/htc/widget/HeaderBarImage;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v7, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mStoreItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v4, v7}, Lcom/htc/widget/HeaderBarImage;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    if-eqz v6, :cond_4

    invoke-virtual {v6, v11}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    const/4 v6, 0x0

    :cond_4
    :goto_2
    if-eqz v6, :cond_5

    invoke-virtual {v6, v10}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    const v7, 0x2080971

    invoke-virtual {v6, v7}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    const v7, 0x7f0700e0

    invoke-virtual {v6, v7}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    new-instance v7, Lcom/htc/music/MediaPlaybackErrorActivity$2;

    invoke-direct {v7, p0}, Lcom/htc/music/MediaPlaybackErrorActivity$2;-><init>(Lcom/htc/music/MediaPlaybackErrorActivity;)V

    invoke-virtual {v6, v7}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    return-void

    :cond_6
    invoke-virtual {v3, v11}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    goto/16 :goto_0

    :cond_7
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    invoke-virtual {v7}, Lcom/htc/music/widget/StoreSwitcherAdapter;->releaseAdapter()V

    const/4 v7, 0x0

    iput-object v7, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    goto :goto_1

    :cond_8
    invoke-virtual {v4, v11}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    goto :goto_2
.end method

.method private setDefaultResource()V
    .locals 3

    const v2, 0x7f0800a2

    invoke-virtual {p0, v2}, Lcom/htc/music/MediaPlaybackErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_0

    const v2, 0x2080867

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_0
    const v2, 0x7f0800a3

    invoke-virtual {p0, v2}, Lcom/htc/music/MediaPlaybackErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    const v2, 0x20c00a1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    return-void
.end method

.method private setPluginListListener()V
    .locals 10

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v6}, Lcom/htc/music/IMediaPlaybackService;->refreshPlugin()V

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v6}, Lcom/htc/music/IMediaPlaybackService;->getPluginCount()I

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_3

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v6, v2}, Lcom/htc/music/IMediaPlaybackService;->getPluginDescription(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gtz v6, :cond_4

    const-string v6, "[MediaPlaybackErrorActivity]"

    const-string v7, "there is no plugin services with description shown"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_4
    :try_start_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget-object v7, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v7}, Lcom/htc/music/IMediaPlaybackService;->getExternalPluginCount()I

    move-result v7

    if-eq v6, v7, :cond_5

    const-string v6, "[MediaPlaybackErrorActivity]"

    const-string v7, "something error in setPluginListListener."

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v3, v6, [Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mRecommendButton:Landroid/view/View;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/view/View;->setEnabled(Z)V

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mRecommendButton:Landroid/view/View;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/view/View;->setFocusable(Z)V

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mRecommendButton:Landroid/view/View;

    instance-of v6, v6, Landroid/widget/ImageButton;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mRecommendButton:Landroid/view/View;

    check-cast v6, Landroid/widget/ImageView;

    const/16 v7, 0xff

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setAlpha(I)V

    :cond_6
    :goto_2
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mRecommendButton:Landroid/view/View;

    new-instance v7, Lcom/htc/music/MediaPlaybackErrorActivity$10;

    invoke-direct {v7, p0, v3}, Lcom/htc/music/MediaPlaybackErrorActivity$10;-><init>(Lcom/htc/music/MediaPlaybackErrorActivity;[Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_7
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mRecommendButton:Landroid/view/View;

    instance-of v6, v6, Landroid/widget/Button;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mRecommendButton:Landroid/view/View;

    const-string v7, "common_icon_glance_left_list_view"

    const v8, 0x2080030

    invoke-static {p0, v7, v8}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    const/16 v8, 0xff

    const v9, 0x7f0700e1

    invoke-static {v6, v7, v8, v9}, Lcom/htc/music/util/CustomizeLayoutHandler;->setButtonTopImageBottomLabel(Landroid/view/View;III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private startBrowserTabActivity()V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "KeepHistory"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "RemoveStoreHistory"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackErrorActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private startListenStore()V
    .locals 4

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.music.online.strorefont"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "InnerActivityType"

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/htc/music/MediaPlaybackErrorActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "[MediaPlaybackErrorActivity]"

    const-string v3, "Opps, we can\'t launch store activity!!"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private startPlayback()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_0

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/htc/music/MediaPlaybackErrorActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    :cond_1
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isSystemReady()Z

    move-result v1

    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isMusicLoaded()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    const-string v2, "[MediaPlaybackErrorActivity]"

    const-string v3, "isMusicLoaded and ready"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.music.PLAYBACK_VIEWER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackErrorActivity;->startActivity(Landroid/content/Intent;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/htc/music/MediaPlaybackErrorActivity;->overridePendingTransition(II)V

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->finish()V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    const-string v2, "[MediaPlaybackErrorActivity]"

    const-string v3, "startPlayback playAllNotRun"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.music.PLAYBACK_VIEWER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackErrorActivity;->startActivity(Landroid/content/Intent;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/htc/music/MediaPlaybackErrorActivity;->overridePendingTransition(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public dismissPopupBubble()V
    .locals 2

    const v1, 0x7f0800d3

    invoke-virtual {p0, v1}, Lcom/htc/music/MediaPlaybackErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/widget/HeaderBarImage;->dismiss()V

    :cond_0
    return-void
.end method

.method public hideDatabaseError()V
    .locals 3

    const/16 v2, 0x8

    const v1, 0x102000a

    invoke-virtual {p0, v1}, Lcom/htc/music/MediaPlaybackErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const v1, 0x7f0800a2

    invoke-virtual {p0, v1}, Lcom/htc/music/MediaPlaybackErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    const v1, 0x7f0800a3

    invoke-virtual {p0, v1}, Lcom/htc/music/MediaPlaybackErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method hideSearchDialog()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mSearchDialogVisible:Z

    if-nez v0, :cond_0

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mSearchDialogVisible:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackErrorActivity;->removeDialog(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public init(Landroid/database/Cursor;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mTrackCursor:Landroid/database/Cursor;

    :cond_0
    iput-object p1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getIsInternalEnough()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->hideSearchDialog()V

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->showDatabaseError()V

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mReScanHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void

    :cond_1
    const-string v1, "[MediaPlaybackErrorActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init, don\'t re-scan, isInternalEnough: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_6

    :cond_3
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->hideDatabaseError()V

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->showSearchDialog()V

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mReScanHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_4
    const-string v1, "[MediaPlaybackErrorActivity]"

    const-string v2, "This activity is finishing..."

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->hideSearchDialog()V

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->showDatabaseError()V

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->hideSearchDialog()V

    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->startPlayback()V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const-string v0, "[MediaPlaybackErrorActivity]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receive activity result, requestCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", resultCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0xc351

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->startListenStore()V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    const v5, 0x7f0800a1

    const-string v3, "[MediaPlaybackErrorActivity]"

    const-string v4, "onConfigurationChanged"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const v3, 0x7f030032

    invoke-virtual {p0, v3}, Lcom/htc/music/MediaPlaybackErrorActivity;->setContentView(I)V

    invoke-virtual {p0, v5}, Lcom/htc/music/MediaPlaybackErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mErrorContent:Landroid/view/View;

    const v3, 0x7f0800a2

    invoke-virtual {p0, v3}, Lcom/htc/music/MediaPlaybackErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mSdIcon:Landroid/view/View;

    const v3, 0x7f0800a3

    invoke-virtual {p0, v3}, Lcom/htc/music/MediaPlaybackErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mSdMessage:Landroid/view/View;

    iget v3, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mIndicateOrientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/htc/music/MediaPlaybackErrorActivity;->setRequestedOrientation(I)V

    :cond_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->initConstant()V

    iget-boolean v3, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mIsPluginMode:Z

    if-nez v3, :cond_5

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[MediaPlaybackErrorActivity]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onConfigurationChanged()...SD status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_3

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "mounted_ro"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "checking"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v3}, Lcom/htc/music/MediaPlaybackErrorActivity;->init(Landroid/database/Cursor;)V

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->initTitleBar()V

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->showDatabaseError()V

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "mounted_ro"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "checking"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_4
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    invoke-direct {p0, v3}, Lcom/htc/music/MediaPlaybackErrorActivity;->getAlbumCursor(Landroid/content/AsyncQueryHandler;)Landroid/database/Cursor;

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v5}, Lcom/htc/music/MediaPlaybackErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v1, :cond_6

    iget v3, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mGlanceDMPErrorIconTopMargin:I

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    :cond_6
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->showErrorFromPluginService()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13

    const v12, 0x7f0800a1

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v8, 0x0

    const-string v6, "[MediaPlaybackErrorActivity]"

    const-string v7, "onCreate +"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_5

    const-string v6, "queuelen"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mQueueLen:I

    const-string v6, "orientation"

    invoke-virtual {p1, v6, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mIndicateOrientation:I

    const-string v6, "pluginmode"

    invoke-virtual {p1, v6, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mIsPluginMode:Z

    const-string v6, "errorcause"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mErrorMessage:Ljava/lang/String;

    const-string v6, "disablelib"

    invoke-virtual {p1, v6, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mDisableLib:Z

    :goto_0
    const/4 v6, 0x5

    invoke-virtual {p0, v6}, Lcom/htc/music/MediaPlaybackErrorActivity;->requestWindowFeature(I)Z

    const/4 v6, 0x3

    invoke-virtual {p0, v6}, Lcom/htc/music/MediaPlaybackErrorActivity;->setVolumeControlStream(I)V

    invoke-virtual {p0, v10}, Lcom/htc/music/MediaPlaybackErrorActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    iput v6, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mOrientation:I

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->osc:Landroid/content/ServiceConnection;

    invoke-static {p0, v6, v7}, Lcom/htc/music/util/MusicUtils;->bindToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "[MediaPlaybackErrorActivity]"

    const-string v7, "fail to bind service..."

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const v6, 0x7f030032

    invoke-virtual {p0, v6}, Lcom/htc/music/MediaPlaybackErrorActivity;->setContentView(I)V

    invoke-virtual {p0, v12}, Lcom/htc/music/MediaPlaybackErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mErrorContent:Landroid/view/View;

    const v6, 0x7f0800a2

    invoke-virtual {p0, v6}, Lcom/htc/music/MediaPlaybackErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mSdIcon:Landroid/view/View;

    const v6, 0x7f0800a3

    invoke-virtual {p0, v6}, Lcom/htc/music/MediaPlaybackErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mSdMessage:Landroid/view/View;

    iget v6, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mIndicateOrientation:I

    if-ne v6, v11, :cond_1

    invoke-virtual {p0, v8}, Lcom/htc/music/MediaPlaybackErrorActivity;->setRequestedOrientation(I)V

    :cond_1
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->initConstant()V

    iget-boolean v6, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mIsPluginMode:Z

    if-nez v6, :cond_8

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "_id"

    aput-object v7, v6, v8

    const-string v7, "album_id"

    aput-object v7, v6, v10

    iput-object v6, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mCursorCols:[Ljava/lang/String;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v6, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v6, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v6, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v6, "file"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v1}, Lcom/htc/music/MediaPlaybackErrorActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    if-nez v6, :cond_2

    new-instance v6, Lcom/htc/music/MediaPlaybackErrorActivity$MyQueryHandler;

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Lcom/htc/music/MediaPlaybackErrorActivity$MyQueryHandler;-><init>(Lcom/htc/music/MediaPlaybackErrorActivity;Landroid/content/ContentResolver;)V

    iput-object v6, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    :cond_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    const-string v6, "[MediaPlaybackErrorActivity]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onCreate()...SD status: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v6, :cond_6

    const-string v6, "mounted"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "mounted_ro"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "checking"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v6}, Lcom/htc/music/MediaPlaybackErrorActivity;->init(Landroid/database/Cursor;)V

    :cond_4
    :goto_1
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v6, "com.htc.music.finisherroractivity"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mPluginErrorListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v3}, Lcom/htc/music/MediaPlaybackErrorActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->initTitleBar()V

    const-string v6, "[MediaPlaybackErrorActivity]"

    const-string v7, "onCreate -"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v6, "queuelen"

    invoke-virtual {v2, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mQueueLen:I

    const-string v6, "orientation"

    invoke-virtual {v2, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mIndicateOrientation:I

    const-string v6, "pluginmode"

    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mIsPluginMode:Z

    const-string v6, "errorcause"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mErrorMessage:Ljava/lang/String;

    const-string v6, "disablelib"

    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mDisableLib:Z

    const-string v6, "Presentation_Mode"

    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mIsPresentationMode:Z

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->showDatabaseError()V

    const-string v6, "mounted"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "mounted_ro"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "checking"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_7
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    invoke-direct {p0, v6}, Lcom/htc/music/MediaPlaybackErrorActivity;->getAlbumCursor(Landroid/content/AsyncQueryHandler;)Landroid/database/Cursor;

    goto :goto_1

    :cond_8
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0700c6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mLossServerWarningStr:Ljava/lang/String;

    invoke-virtual {p0, v12}, Lcom/htc/music/MediaPlaybackErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v4, :cond_9

    iget v6, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mGlanceDMPErrorIconTopMargin:I

    iput v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    :cond_9
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->showErrorFromPluginService()V

    goto/16 :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :sswitch_0
    invoke-static {p0}, Lcom/htc/music/util/OnlineMusicUtils;->createNoNetworkDialog(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f070037

    invoke-virtual {p0, v1}, Lcom/htc/music/MediaPlaybackErrorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/htc/music/MediaPlaybackErrorActivity$8;

    invoke-direct {v1, p0}, Lcom/htc/music/MediaPlaybackErrorActivity$8;-><init>(Lcom/htc/music/MediaPlaybackErrorActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0xaae61 -> :sswitch_0
    .end sparse-switch
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "[MediaPlaybackErrorActivity]"

    const-string v1, "onDestroy +"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mIsPluginMode:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    iput-object v2, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mTrackCursor:Landroid/database/Cursor;

    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackErrorActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    :cond_1
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mReScanHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mPluginReScanHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->hideSearchDialog()V

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mPluginErrorListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackErrorActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    invoke-virtual {v0}, Lcom/htc/music/widget/StoreSwitcherAdapter;->releaseAdapter()V

    iput-object v2, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    :cond_3
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const-string v0, "[MediaPlaybackErrorActivity]"

    const-string v1, "onDestroy -"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mReScanHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mPluginReScanHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mSetDefaultResourceHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mSetDefaultResourceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onResume()V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-boolean v2, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mIsPluginMode:Z

    if-nez v2, :cond_1

    const v2, 0x7f0800a2

    invoke-virtual {p0, v2}, Lcom/htc/music/MediaPlaybackErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v2, 0x7f0800a3

    invoke-virtual {p0, v2}, Lcom/htc/music/MediaPlaybackErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mPluginReScanHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "[MediaPlaybackErrorActivity]"

    const-string v3, "onResume()...mService is not null and no message in queue. Send message to queue."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mPluginReScanHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "[MediaPlaybackErrorActivity]"

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "queuelen"

    iget v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mQueueLen:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "orientation"

    iget v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mIndicateOrientation:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "pluginmode"

    iget-boolean v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mIsPluginMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "errorcause"

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "disablelib"

    iget-boolean v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mDisableLib:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public showDatabaseError()V
    .locals 11

    const v10, 0x7f0800a3

    const v9, 0x7f0800a2

    const/4 v8, 0x0

    const v7, 0x208086b

    const v6, 0x102000a

    invoke-virtual {p0, v6}, Lcom/htc/music/MediaPlaybackErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-virtual {p0, v9}, Lcom/htc/music/MediaPlaybackErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v10}, Lcom/htc/music/MediaPlaybackErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    const/4 v2, 0x0

    invoke-virtual {p0, v9}, Lcom/htc/music/MediaPlaybackErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getIsInternalEnough()Z

    move-result v6

    if-nez v6, :cond_6

    if-eqz v1, :cond_2

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_2
    const v2, 0x7f070040

    :cond_3
    :goto_0
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    :cond_4
    invoke-virtual {p0, v10}, Lcom/htc/music/MediaPlaybackErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_5

    if-eqz v2, :cond_5

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_5
    return-void

    :cond_6
    const-string v6, "shared"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsInternalStorage()Z

    move-result v6

    if-eqz v6, :cond_7

    const v2, 0x7f07003f

    if-eqz v1, :cond_3

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_7
    const v2, 0x7f07003e

    if-eqz v1, :cond_3

    const v6, 0x2080864

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_8
    const-string v6, "removed"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    const-string v6, "bad_removal"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    :cond_9
    const v2, 0x20c00a1

    if-eqz v1, :cond_a

    const v6, 0x2080867

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_a
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsInternalStorage()Z

    move-result v6

    if-eqz v6, :cond_3

    const v2, 0x7f07003f

    if-eqz v1, :cond_3

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_b
    const-string v6, "unmounted"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    const v2, 0x20c01e2

    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsInternalStorage()Z

    move-result v6

    if-eqz v6, :cond_3

    const v2, 0x7f07003f

    if-eqz v1, :cond_3

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    :cond_c
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-nez v6, :cond_3

    :cond_d
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/music/util/MusicUtils;->getAllSongs(Landroid/content/Context;)[I

    move-result-object v0

    if-eqz v0, :cond_e

    array-length v6, v0

    if-nez v6, :cond_f

    :cond_e
    const v2, 0x7f070029

    :goto_1
    if-eqz v1, :cond_3

    const v6, 0x2080866

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    :cond_f
    const v2, 0x7f070030

    goto :goto_1
.end method

.method public showErrorFromPluginService()V
    .locals 6

    const/4 v5, 0x0

    const v3, 0x102000a

    invoke-virtual {p0, v3}, Lcom/htc/music/MediaPlaybackErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const v3, 0x7f0800a2

    invoke-virtual {p0, v3}, Lcom/htc/music/MediaPlaybackErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mErrorMessage:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mLossServerWarningStr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const v3, 0x2080865

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    :cond_1
    const v3, 0x7f0800a3

    invoke-virtual {p0, v3}, Lcom/htc/music/MediaPlaybackErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mErrorMessage:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void

    :cond_3
    const v3, 0x208086a

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method showSearchDialog()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mSearchDialogVisible:Z

    if-eqz v1, :cond_0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, v1}, Lcom/htc/music/MediaPlaybackErrorActivity;->showDialog(I)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mSearchDialogVisible:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method
