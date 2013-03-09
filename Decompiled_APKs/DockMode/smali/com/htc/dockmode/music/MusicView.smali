.class public Lcom/htc/dockmode/music/MusicView;
.super Ljava/lang/Object;
.source "MusicView.java"


# static fields
.field protected static final BUTTON_DISABLED_ALPHA:I = 0x6e

.field protected static final BUTTON_ENABLED_ALPHA:I = 0xff

.field protected static final CMDNAME:Ljava/lang/String; = "command"

.field protected static final CMDNEXT:Ljava/lang/String; = "next"

.field protected static final CMDPAUSE:Ljava/lang/String; = "pause"

.field protected static final CMDPREVIOUS:Ljava/lang/String; = "previous"

.field protected static final REFRESH:I = 0x1

.field protected static final SERVICECMD:Ljava/lang/String; = "com.htc.music.musicservicecommand"

.field protected static final SET_ALBUMART:I = 0x3

.field protected static final SET_TEXTSCROLL:I = 0x2

.field private static final TAG:Ljava/lang/String;

.field private static final localLOGV:Z


# instance fields
.field audioManager:Landroid/media/AudioManager;

.field protected buttonClickListener:Landroid/view/View$OnClickListener;

.field private mAlbumArt:Landroid/widget/ImageView;

.field private mBackgroundTrafficLightReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field protected mHaveSongsInSD:Z

.field private mHostActivity:Landroid/app/Activity;

.field protected mIsNoMusic:Z

.field protected mIsRedTrafficLight:Z

.field protected mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

.field protected mMeidaRemoved:Z

.field private mMusicControl:Lcom/htc/dockmode/music/MusicControl;

.field private mNextButton:Landroid/widget/ImageView;

.field private mNonUIHandler:Landroid/os/Handler;

.field private mPlayPauseButton:Landroid/widget/CheckBox;

.field protected mPlaybackStatusReceiver:Landroid/content/BroadcastReceiver;

.field protected mPlaypauseDrawable:Landroid/graphics/drawable/Drawable;

.field private mPrevButton:Landroid/widget/ImageView;

.field private mRootView:Landroid/view/View;

.field protected mSDCardScanStatusReceiver:Landroid/content/BroadcastReceiver;

.field protected mServiceConnection:Landroid/content/ServiceConnection;

.field private mSoundButton:Landroid/widget/ImageView;

.field private mUIHandler:Landroid/os/Handler;

.field protected mVisible:Z

.field private rootListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/htc/dockmode/music/MusicView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/dockmode/music/MusicView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;Lcom/htc/dockmode/music/MusicControl;)V
    .locals 2
    .parameter "view"
    .parameter "activity"
    .parameter "context"
    .parameter "uiHandler"
    .parameter "NonUiHandler"
    .parameter "musicControl"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 92
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-boolean v0, p0, Lcom/htc/dockmode/music/MusicView;->mIsRedTrafficLight:Z

    .line 77
    iput-boolean v0, p0, Lcom/htc/dockmode/music/MusicView;->mVisible:Z

    .line 78
    iput-boolean v1, p0, Lcom/htc/dockmode/music/MusicView;->mIsNoMusic:Z

    .line 79
    iput-boolean v0, p0, Lcom/htc/dockmode/music/MusicView;->mMeidaRemoved:Z

    .line 80
    iput-boolean v1, p0, Lcom/htc/dockmode/music/MusicView;->mHaveSongsInSD:Z

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/dockmode/music/MusicView;->mPlaypauseDrawable:Landroid/graphics/drawable/Drawable;

    .line 301
    new-instance v0, Lcom/htc/dockmode/music/MusicView$3;

    invoke-direct {v0, p0}, Lcom/htc/dockmode/music/MusicView$3;-><init>(Lcom/htc/dockmode/music/MusicView;)V

    iput-object v0, p0, Lcom/htc/dockmode/music/MusicView;->mSDCardScanStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 342
    new-instance v0, Lcom/htc/dockmode/music/MusicView$4;

    invoke-direct {v0, p0}, Lcom/htc/dockmode/music/MusicView$4;-><init>(Lcom/htc/dockmode/music/MusicView;)V

    iput-object v0, p0, Lcom/htc/dockmode/music/MusicView;->mBackgroundTrafficLightReceiver:Landroid/content/BroadcastReceiver;

    .line 460
    new-instance v0, Lcom/htc/dockmode/music/MusicView$5;

    invoke-direct {v0, p0}, Lcom/htc/dockmode/music/MusicView$5;-><init>(Lcom/htc/dockmode/music/MusicView;)V

    iput-object v0, p0, Lcom/htc/dockmode/music/MusicView;->rootListener:Landroid/view/View$OnClickListener;

    .line 724
    new-instance v0, Lcom/htc/dockmode/music/MusicView$7;

    invoke-direct {v0, p0}, Lcom/htc/dockmode/music/MusicView$7;-><init>(Lcom/htc/dockmode/music/MusicView;)V

    iput-object v0, p0, Lcom/htc/dockmode/music/MusicView;->buttonClickListener:Landroid/view/View$OnClickListener;

    .line 93
    iput-object p1, p0, Lcom/htc/dockmode/music/MusicView;->mRootView:Landroid/view/View;

    .line 94
    iput-object p2, p0, Lcom/htc/dockmode/music/MusicView;->mHostActivity:Landroid/app/Activity;

    .line 95
    iput-object p6, p0, Lcom/htc/dockmode/music/MusicView;->mMusicControl:Lcom/htc/dockmode/music/MusicControl;

    .line 96
    iput-object p3, p0, Lcom/htc/dockmode/music/MusicView;->mContext:Landroid/content/Context;

    .line 97
    iput-object p4, p0, Lcom/htc/dockmode/music/MusicView;->mUIHandler:Landroid/os/Handler;

    .line 98
    iput-object p5, p0, Lcom/htc/dockmode/music/MusicView;->mNonUIHandler:Landroid/os/Handler;

    .line 100
    invoke-virtual {p0}, Lcom/htc/dockmode/music/MusicView;->initView()V

    .line 101
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/htc/dockmode/music/MusicView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/dockmode/music/MusicView;)Lcom/htc/dockmode/music/MusicControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/dockmode/music/MusicView;->mMusicControl:Lcom/htc/dockmode/music/MusicControl;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/dockmode/music/MusicView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/dockmode/music/MusicView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/dockmode/music/MusicView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/dockmode/music/MusicView;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/dockmode/music/MusicView;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/dockmode/music/MusicView;->mHostActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/dockmode/music/MusicView;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/htc/dockmode/music/MusicView;->getTrackCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/dockmode/music/MusicView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/htc/dockmode/music/MusicView;->launchMusic()V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/dockmode/music/MusicView;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/dockmode/music/MusicView;->mPrevButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/dockmode/music/MusicView;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/dockmode/music/MusicView;->mPlayPauseButton:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/dockmode/music/MusicView;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/dockmode/music/MusicView;->mNextButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/dockmode/music/MusicView;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/dockmode/music/MusicView;->mSoundButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method private getTrackCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12
    .parameter "filterstring"

    .prologue
    const/16 v3, 0x25

    const/4 v1, 0x0

    .line 360
    const/4 v9, 0x0

    .line 361
    .local v9, ret:Landroid/database/Cursor;
    const-string v5, "title_key"

    .line 362
    .local v5, sortOrder:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v1

    .line 363
    .local v2, cursorCols:[Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 364
    .local v11, where:Ljava/lang/StringBuilder;
    const-string v0, "title != \'\'"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    const/4 v4, 0x0

    .line 368
    .local v4, keywords:[Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 369
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 370
    .local v10, searchWords:[Ljava/lang/String;
    array-length v0, v10

    new-array v4, v0, [Ljava/lang/String;

    .line 371
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v6

    .line 372
    .local v6, col:Ljava/text/Collator;
    invoke-virtual {v6, v1}, Ljava/text/Collator;->setStrength(I)V

    .line 373
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    array-length v0, v10

    if-ge v8, v0, :cond_0

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v10, v8

    invoke-static {v1}, Landroid/provider/MediaStore$Audio;->keyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    .line 373
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 376
    :cond_0
    const/4 v8, 0x0

    :goto_1
    array-length v0, v10

    if-ge v8, v0, :cond_1

    .line 377
    const-string v0, " AND "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    const-string v0, "artist_key||"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    const-string v0, "album_key||"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    const-string v0, "title_key LIKE ?"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 384
    .end local v6           #col:Ljava/text/Collator;
    .end local v8           #i:I
    .end local v10           #searchWords:[Ljava/lang/String;
    :cond_1
    const-string v0, " AND is_music=1"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    :try_start_0
    iget-object v0, p0, Lcom/htc/dockmode/music/MusicView;->mHostActivity:Landroid/app/Activity;

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static/range {v0 .. v5}, Lcom/htc/dockmode/music/MusicView;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 393
    :goto_2
    return-object v9

    .line 389
    :catch_0
    move-exception v7

    .line 390
    .local v7, e:Ljava/lang/Exception;
    const/4 v9, 0x0

    .line 391
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private launchMusic()V
    .locals 2

    .prologue
    .line 453
    iget-object v1, p0, Lcom/htc/dockmode/music/MusicView;->mHostActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 454
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.BROWSE_VIEWER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 456
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/dockmode/music/MusicView;->mHostActivity:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/htc/dockmode/utils/ActivityUtil;->startActivitySafely(Landroid/content/Context;Landroid/content/Intent;)V

    .line 458
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "context"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v7, 0x0

    .line 399
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 400
    .local v0, resolver:Landroid/content/ContentResolver;
    if-nez v0, :cond_0

    move-object v1, v7

    .line 412
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :goto_0
    return-object v1

    .restart local v0       #resolver:Landroid/content/ContentResolver;
    :cond_0
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 403
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    goto :goto_0

    .line 405
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :catch_0
    move-exception v6

    .local v6, ex:Ljava/lang/UnsupportedOperationException;
    move-object v1, v7

    .line 406
    goto :goto_0

    .line 407
    .end local v6           #ex:Ljava/lang/UnsupportedOperationException;
    :catch_1
    move-exception v6

    .line 408
    .local v6, ex:Landroid/database/sqlite/SQLiteException;
    sget-object v1, Lcom/htc/dockmode/music/MusicView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "query failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v7

    .line 409
    goto :goto_0

    .line 410
    .end local v6           #ex:Landroid/database/sqlite/SQLiteException;
    :catch_2
    move-exception v6

    .line 411
    .local v6, ex:Ljava/lang/Exception;
    sget-object v1, Lcom/htc/dockmode/music/MusicView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "query failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v7

    .line 412
    goto :goto_0
.end method


# virtual methods
.method bindMusicPlaybackService()V
    .locals 6

    .prologue
    .line 211
    iget-object v3, p0, Lcom/htc/dockmode/music/MusicView;->mServiceConnection:Landroid/content/ServiceConnection;

    if-nez v3, :cond_0

    .line 212
    new-instance v3, Lcom/htc/dockmode/music/MusicView$1;

    invoke-direct {v3, p0}, Lcom/htc/dockmode/music/MusicView$1;-><init>(Lcom/htc/dockmode/music/MusicView;)V

    iput-object v3, p0, Lcom/htc/dockmode/music/MusicView;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 238
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 239
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "com.htc.music"

    const-string v4, "com.htc.music.MediaPlaybackService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    iget-object v3, p0, Lcom/htc/dockmode/music/MusicView;->mHostActivity:Landroid/app/Activity;

    invoke-virtual {v3, v2}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 245
    iget-object v3, p0, Lcom/htc/dockmode/music/MusicView;->mHostActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/htc/dockmode/music/MusicView;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v3, v2, v4, v5}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 248
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/dockmode/music/MusicView;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 252
    .end local v2           #intent:Landroid/content/Intent;
    :cond_0
    iget-object v3, p0, Lcom/htc/dockmode/music/MusicView;->mPlaybackStatusReceiver:Landroid/content/BroadcastReceiver;

    if-nez v3, :cond_1

    .line 253
    new-instance v3, Lcom/htc/dockmode/music/MusicView$2;

    invoke-direct {v3, p0}, Lcom/htc/dockmode/music/MusicView$2;-><init>(Lcom/htc/dockmode/music/MusicView;)V

    iput-object v3, p0, Lcom/htc/dockmode/music/MusicView;->mPlaybackStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 272
    iget-object v3, p0, Lcom/htc/dockmode/music/MusicView;->mPlaybackStatusReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/dockmode/music/MusicView;->mHostActivity:Landroid/app/Activity;

    if-eqz v3, :cond_1

    .line 273
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 274
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v3, "com.htc.music.playstatechanged"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 275
    const-string v3, "com.htc.music.metachanged"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 276
    const-string v3, "com.htc.music.playbackcomplete"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 277
    iget-object v3, p0, Lcom/htc/dockmode/music/MusicView;->mHostActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/htc/dockmode/music/MusicView;->mPlaybackStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 279
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 281
    .local v0, f:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 282
    const-string v3, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 283
    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 284
    const-string v3, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 285
    const-string v3, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 286
    const-string v3, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 287
    const-string v3, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 288
    const-string v3, "file"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 289
    iget-object v3, p0, Lcom/htc/dockmode/music/MusicView;->mHostActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/htc/dockmode/music/MusicView;->mSDCardScanStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 291
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #f:Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 292
    .restart local v0       #f:Landroid/content/IntentFilter;
    const-string v3, "com.htc.content.Intent.ACTION_BACKGROUND_OP_STOP"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 293
    const-string v3, "com.htc.content.Intent.ACTION_BACKGROUND_OP_GO"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 294
    iget-object v3, p0, Lcom/htc/dockmode/music/MusicView;->mHostActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/htc/dockmode/music/MusicView;->mBackgroundTrafficLightReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 299
    .end local v0           #f:Landroid/content/IntentFilter;
    .end local v1           #filter:Landroid/content/IntentFilter;
    :cond_1
    return-void
.end method

.method protected handleButtonClick(Landroid/view/View$OnClickListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0xff

    const/16 v2, 0x6e

    .line 682
    const/4 v0, 0x0

    .line 683
    .local v0, enabled:Z
    if-eqz p1, :cond_0

    .line 684
    const/4 v0, 0x1

    .line 685
    :cond_0
    iget-object v1, p0, Lcom/htc/dockmode/music/MusicView;->mPrevButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 686
    iget-object v1, p0, Lcom/htc/dockmode/music/MusicView;->mPrevButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 687
    if-eqz v0, :cond_5

    .line 688
    iget-object v1, p0, Lcom/htc/dockmode/music/MusicView;->mPrevButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 691
    :goto_0
    iget-object v1, p0, Lcom/htc/dockmode/music/MusicView;->mPrevButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 692
    iget-object v1, p0, Lcom/htc/dockmode/music/MusicView;->mPrevButton:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 694
    :cond_1
    iget-object v1, p0, Lcom/htc/dockmode/music/MusicView;->mPlayPauseButton:Landroid/widget/CheckBox;

    if-eqz v1, :cond_2

    .line 695
    iget-object v1, p0, Lcom/htc/dockmode/music/MusicView;->mPlayPauseButton:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 696
    if-eqz v0, :cond_6

    .line 697
    iget-object v1, p0, Lcom/htc/dockmode/music/MusicView;->mPlaypauseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 700
    :goto_1
    iget-object v1, p0, Lcom/htc/dockmode/music/MusicView;->mPlayPauseButton:Landroid/widget/CheckBox;

    invoke-virtual {v1, p1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 702
    :cond_2
    iget-object v1, p0, Lcom/htc/dockmode/music/MusicView;->mNextButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    .line 703
    iget-object v1, p0, Lcom/htc/dockmode/music/MusicView;->mNextButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 704
    if-eqz v0, :cond_7

    .line 705
    iget-object v1, p0, Lcom/htc/dockmode/music/MusicView;->mNextButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 708
    :goto_2
    iget-object v1, p0, Lcom/htc/dockmode/music/MusicView;->mNextButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 709
    iget-object v1, p0, Lcom/htc/dockmode/music/MusicView;->mNextButton:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 711
    :cond_3
    iget-object v1, p0, Lcom/htc/dockmode/music/MusicView;->mSoundButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_4

    .line 712
    iget-object v1, p0, Lcom/htc/dockmode/music/MusicView;->mSoundButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 713
    if-eqz v0, :cond_8

    .line 714
    iget-object v1, p0, Lcom/htc/dockmode/music/MusicView;->mSoundButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 717
    :goto_3
    iget-object v1, p0, Lcom/htc/dockmode/music/MusicView;->mSoundButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 718
    iget-object v1, p0, Lcom/htc/dockmode/music/MusicView;->mSoundButton:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 722
    :cond_4
    return-void

    .line 690
    :cond_5
    iget-object v1, p0, Lcom/htc/dockmode/music/MusicView;->mPrevButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(I)V

    goto :goto_0

    .line 699
    :cond_6
    iget-object v1, p0, Lcom/htc/dockmode/music/MusicView;->mPlaypauseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_1

    .line 707
    :cond_7
    iget-object v1, p0, Lcom/htc/dockmode/music/MusicView;->mNextButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(I)V

    goto :goto_2

    .line 716
    :cond_8
    iget-object v1, p0, Lcom/htc/dockmode/music/MusicView;->mSoundButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(I)V

    goto :goto_3
.end method

.method protected handleNoMusic(Ljava/lang/String;)V
    .locals 6
    .parameter "errorText"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 598
    iget-object v2, p0, Lcom/htc/dockmode/music/MusicView;->mRootView:Landroid/view/View;

    const v3, 0x7f0a000d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 600
    .local v1, noMusic:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/htc/dockmode/music/MusicView;->mRootView:Landroid/view/View;

    const v3, 0x7f0a000e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 601
    .local v0, albumView:Landroid/view/View;
    iget-boolean v2, p0, Lcom/htc/dockmode/music/MusicView;->mIsNoMusic:Z

    if-eqz v2, :cond_2

    .line 602
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 603
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 604
    new-instance v2, Lcom/htc/dockmode/music/MusicView$6;

    invoke-direct {v2, p0}, Lcom/htc/dockmode/music/MusicView$6;-><init>(Lcom/htc/dockmode/music/MusicView;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 609
    if-nez p1, :cond_1

    .line 610
    invoke-virtual {p0, v1}, Lcom/htc/dockmode/music/MusicView;->setErrorText(Landroid/widget/TextView;)V

    .line 629
    :cond_0
    :goto_0
    return-void

    .line 612
    :cond_1
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 614
    :cond_2
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 615
    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 616
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 617
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 618
    iget-object v2, p0, Lcom/htc/dockmode/music/MusicView;->mPlayPauseButton:Landroid/widget/CheckBox;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/dockmode/music/MusicView;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_0

    .line 620
    :try_start_0
    iget-object v2, p0, Lcom/htc/dockmode/music/MusicView;->mPlayPauseButton:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/htc/dockmode/music/MusicView;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 623
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method protected initView()V
    .locals 3

    .prologue
    .line 104
    iget-object v1, p0, Lcom/htc/dockmode/music/MusicView;->mRootView:Landroid/view/View;

    const v2, 0x7f0a0010

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/htc/dockmode/music/MusicView;->mAlbumArt:Landroid/widget/ImageView;

    .line 105
    iget-object v1, p0, Lcom/htc/dockmode/music/MusicView;->mRootView:Landroid/view/View;

    const v2, 0x7f0a0014

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/htc/dockmode/music/MusicView;->mPrevButton:Landroid/widget/ImageView;

    .line 106
    iget-object v1, p0, Lcom/htc/dockmode/music/MusicView;->mRootView:Landroid/view/View;

    const v2, 0x7f0a0016

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/htc/dockmode/music/MusicView;->mNextButton:Landroid/widget/ImageView;

    .line 107
    iget-object v1, p0, Lcom/htc/dockmode/music/MusicView;->mRootView:Landroid/view/View;

    const v2, 0x7f0a0017

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/htc/dockmode/music/MusicView;->mSoundButton:Landroid/widget/ImageView;

    .line 108
    iget-object v1, p0, Lcom/htc/dockmode/music/MusicView;->mRootView:Landroid/view/View;

    const v2, 0x7f0a0015

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/dockmode/widget/ImageCheckBox;

    iput-object v1, p0, Lcom/htc/dockmode/music/MusicView;->mPlayPauseButton:Landroid/widget/CheckBox;

    .line 110
    iget-object v1, p0, Lcom/htc/dockmode/music/MusicView;->mPlayPauseButton:Landroid/widget/CheckBox;

    if-eqz v1, :cond_0

    .line 111
    iget-object v0, p0, Lcom/htc/dockmode/music/MusicView;->mPlayPauseButton:Landroid/widget/CheckBox;

    check-cast v0, Lcom/htc/dockmode/widget/ImageCheckBox;

    .line 112
    .local v0, derived:Lcom/htc/dockmode/widget/ImageCheckBox;
    const v1, 0x7f02002b

    invoke-virtual {v0, v1}, Lcom/htc/dockmode/widget/ImageCheckBox;->setButtonDrawable(I)V

    .line 113
    iget-object v1, p0, Lcom/htc/dockmode/music/MusicView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02003f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dockmode/music/MusicView;->mPlaypauseDrawable:Landroid/graphics/drawable/Drawable;

    .line 115
    iget-object v1, p0, Lcom/htc/dockmode/music/MusicView;->mPlaypauseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/htc/dockmode/widget/ImageCheckBox;->setCheckBoxImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 122
    .end local v0           #derived:Lcom/htc/dockmode/widget/ImageCheckBox;
    :cond_0
    iget-object v1, p0, Lcom/htc/dockmode/music/MusicView;->mRootView:Landroid/view/View;

    iget-object v2, p0, Lcom/htc/dockmode/music/MusicView;->rootListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    invoke-virtual {p0}, Lcom/htc/dockmode/music/MusicView;->setStateList()V

    .line 125
    return-void
.end method

.method public isRedTrafficLight()Z
    .locals 1

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/htc/dockmode/music/MusicView;->mIsRedTrafficLight:Z

    return v0
.end method

.method public isServiceConnected()Z
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/htc/dockmode/music/MusicView;->mServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 203
    iget-boolean v0, p0, Lcom/htc/dockmode/music/MusicView;->mVisible:Z

    return v0
.end method

.method protected setErrorText(Landroid/widget/TextView;)V
    .locals 7
    .parameter "view"

    .prologue
    const/4 v6, 0x0

    .line 633
    const/4 v3, 0x0

    .line 635
    .local v3, isReady:Z
    :try_start_0
    iget-object v4, p0, Lcom/htc/dockmode/music/MusicView;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v4, :cond_0

    .line 636
    iget-object v4, p0, Lcom/htc/dockmode/music/MusicView;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-ltz v4, :cond_2

    const/4 v3, 0x1

    .line 645
    :cond_0
    :goto_0
    if-nez v3, :cond_4

    .line 646
    iget-boolean v4, p0, Lcom/htc/dockmode/music/MusicView;->mHaveSongsInSD:Z

    if-nez v4, :cond_3

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mounted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 649
    iget-object v4, p0, Lcom/htc/dockmode/music/MusicView;->mHostActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080050

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 678
    :cond_1
    :goto_1
    return-void

    .line 636
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 639
    :catch_0
    move-exception v1

    .line 640
    .local v1, e:Landroid/os/RemoteException;
    sget-object v4, Lcom/htc/dockmode/music/MusicView;->TAG:Ljava/lang/String;

    const-string v5, "MediaPlaybackService throws a remote exception"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 641
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 642
    .local v2, ex:Ljava/lang/NullPointerException;
    sget-object v4, Lcom/htc/dockmode/music/MusicView;->TAG:Ljava/lang/String;

    const-string v5, "mMediaPlaybackService becomes null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    const/4 v3, 0x0

    goto :goto_0

    .line 652
    .end local v2           #ex:Ljava/lang/NullPointerException;
    :cond_3
    invoke-direct {p0, v6}, Lcom/htc/dockmode/music/MusicView;->getTrackCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 653
    .local v0, cursor:Landroid/database/Cursor;
    iget-object v4, p0, Lcom/htc/dockmode/music/MusicView;->mHostActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/htc/dockmode/music/MusicUtils;->getDatabaseErrorStr(Landroid/content/res/Resources;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 655
    if-eqz v0, :cond_1

    .line 657
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 658
    :catch_2
    move-exception v1

    .line 659
    .local v1, e:Ljava/lang/Exception;
    sget-object v4, Lcom/htc/dockmode/music/MusicView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setErrorText, (!isReady), e:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 667
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v1           #e:Ljava/lang/Exception;
    :cond_4
    invoke-direct {p0, v6}, Lcom/htc/dockmode/music/MusicView;->getTrackCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 668
    .restart local v0       #cursor:Landroid/database/Cursor;
    iget-object v4, p0, Lcom/htc/dockmode/music/MusicView;->mHostActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/htc/dockmode/music/MusicUtils;->getDatabaseErrorStr(Landroid/content/res/Resources;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 670
    if-eqz v0, :cond_1

    .line 672
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    .line 673
    :catch_3
    move-exception v1

    .line 674
    .restart local v1       #e:Ljava/lang/Exception;
    sget-object v4, Lcom/htc/dockmode/music/MusicView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setErrorText, else, e:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected setStateList()V
    .locals 5

    .prologue
    const v4, 0x7f02001e

    .line 167
    iget-object v0, p0, Lcom/htc/dockmode/music/MusicView;->mRootView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 196
    :goto_0
    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/htc/dockmode/music/MusicView;->mPrevButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/dockmode/music/MusicView;->mRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "dock_mode_music_btn_left"

    const v3, 0x7f020022

    invoke-static {v1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 175
    iget-object v0, p0, Lcom/htc/dockmode/music/MusicView;->mPrevButton:Landroid/widget/ImageView;

    const v1, 0x7f020047

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 177
    iget-object v0, p0, Lcom/htc/dockmode/music/MusicView;->mNextButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/dockmode/music/MusicView;->mRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "dock_mode_music_btn_center"

    invoke-static {v1, v2, v4}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 182
    iget-object v0, p0, Lcom/htc/dockmode/music/MusicView;->mNextButton:Landroid/widget/ImageView;

    const v1, 0x7f020044

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 184
    iget-object v0, p0, Lcom/htc/dockmode/music/MusicView;->mSoundButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/dockmode/music/MusicView;->mRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "dock_mode_music_btn_right"

    const v3, 0x7f020026

    invoke-static {v1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 189
    iget-object v0, p0, Lcom/htc/dockmode/music/MusicView;->mSoundButton:Landroid/widget/ImageView;

    const v1, 0x7f020048

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 191
    iget-object v0, p0, Lcom/htc/dockmode/music/MusicView;->mPlayPauseButton:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/htc/dockmode/music/MusicView;->mRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "dock_mode_music_btn_center"

    invoke-static {v1, v2, v4}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method unbindMusicPlaybackService()V
    .locals 2

    .prologue
    .line 418
    sget-object v0, Lcom/htc/dockmode/music/MusicView;->TAG:Ljava/lang/String;

    const-string v1, "unbindMusicPlaybackService()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    monitor-enter p0

    .line 423
    :try_start_0
    iget-object v0, p0, Lcom/htc/dockmode/music/MusicView;->mHostActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/dockmode/music/MusicView;->mServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/dockmode/music/MusicView;->mPlaybackStatusReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 425
    iget-object v0, p0, Lcom/htc/dockmode/music/MusicView;->mSDCardScanStatusReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 431
    :try_start_1
    iget-object v0, p0, Lcom/htc/dockmode/music/MusicView;->mHostActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/htc/dockmode/music/MusicView;->mSDCardScanStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 439
    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/htc/dockmode/music/MusicView;->mHostActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/htc/dockmode/music/MusicView;->mPlaybackStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 440
    iget-object v0, p0, Lcom/htc/dockmode/music/MusicView;->mHostActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/htc/dockmode/music/MusicView;->mBackgroundTrafficLightReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 442
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/dockmode/music/MusicView;->mPlaybackStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 443
    iget-object v0, p0, Lcom/htc/dockmode/music/MusicView;->mHostActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/htc/dockmode/music/MusicView;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 444
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/dockmode/music/MusicView;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 445
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/dockmode/music/MusicView;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    .line 446
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/dockmode/music/MusicView;->mIsRedTrafficLight:Z

    .line 448
    :cond_1
    monitor-exit p0

    .line 449
    return-void

    .line 448
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 433
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected updateMusicInfo()V
    .locals 8

    .prologue
    .line 470
    :try_start_0
    iget-object v6, p0, Lcom/htc/dockmode/music/MusicView;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v6, :cond_7

    .line 471
    sget-object v6, Lcom/htc/dockmode/music/MusicView;->TAG:Ljava/lang/String;

    const-string v7, "updateMusicInfo start"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget-object v6, p0, Lcom/htc/dockmode/music/MusicView;->mPlayPauseButton:Landroid/widget/CheckBox;

    iget-object v7, p0, Lcom/htc/dockmode/music/MusicView;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v7}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 474
    iget-object v6, p0, Lcom/htc/dockmode/music/MusicView;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v6}, Lcom/htc/music/IMediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v5

    .line 475
    .local v5, title:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/dockmode/music/MusicView;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v6}, Lcom/htc/music/IMediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v3

    .line 477
    .local v3, name:Ljava/lang/String;
    const/4 v1, 0x0

    .line 478
    .local v1, albumArtPath:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/dockmode/music/MusicView;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v6}, Lcom/htc/music/IMediaPlaybackService;->isSystemReady()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 479
    iget-object v6, p0, Lcom/htc/dockmode/music/MusicView;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v6}, Lcom/htc/music/IMediaPlaybackService;->getAlbumArtPath()Ljava/lang/String;

    move-result-object v1

    .line 488
    :cond_0
    iget-object v6, p0, Lcom/htc/dockmode/music/MusicView;->mAlbumArt:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v7, p0, Lcom/htc/dockmode/music/MusicView;->mAlbumArt:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v1, v6, v7}, Lcom/htc/dockmode/music/MusicUtils;->getArtworkFromFilePath(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 494
    .local v0, album:Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    .line 495
    .local v4, status:Ljava/lang/String;
    const-string v6, "mounted"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "mounted_ro"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_1
    if-nez v5, :cond_3

    if-nez v3, :cond_3

    if-nez v1, :cond_3

    .line 500
    sget-object v6, Lcom/htc/dockmode/music/MusicView;->TAG:Ljava/lang/String;

    const-string v7, "updateMusicInfo()... No information, try to reload queue..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iget-object v6, p0, Lcom/htc/dockmode/music/MusicView;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v6}, Lcom/htc/music/IMediaPlaybackService;->reloadQueue()V

    .line 504
    iget-object v6, p0, Lcom/htc/dockmode/music/MusicView;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v6}, Lcom/htc/music/IMediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v5

    .line 505
    iget-object v6, p0, Lcom/htc/dockmode/music/MusicView;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v6}, Lcom/htc/music/IMediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v3

    .line 507
    const/4 v1, 0x0

    .line 508
    iget-object v6, p0, Lcom/htc/dockmode/music/MusicView;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v6}, Lcom/htc/music/IMediaPlaybackService;->isSystemReady()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 509
    iget-object v6, p0, Lcom/htc/dockmode/music/MusicView;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v6}, Lcom/htc/music/IMediaPlaybackService;->getAlbumArtPath()Ljava/lang/String;

    move-result-object v1

    .line 517
    :cond_2
    iget-object v6, p0, Lcom/htc/dockmode/music/MusicView;->mAlbumArt:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v7, p0, Lcom/htc/dockmode/music/MusicView;->mAlbumArt:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v1, v6, v7}, Lcom/htc/dockmode/music/MusicUtils;->getArtworkFromFilePath(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 522
    :cond_3
    if-nez v5, :cond_4

    if-nez v3, :cond_4

    if-nez v1, :cond_4

    .line 524
    sget-object v6, Lcom/htc/dockmode/music/MusicView;->TAG:Ljava/lang/String;

    const-string v7, "updateMusicInfo()...(title==null && name==null && albumArtPath==null)..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/htc/dockmode/music/MusicView;->mIsNoMusic:Z

    .line 527
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/htc/dockmode/music/MusicView;->handleNoMusic(Ljava/lang/String;)V

    .line 528
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/htc/dockmode/music/MusicView;->handleButtonClick(Landroid/view/View$OnClickListener;)V

    .line 546
    :goto_0
    sget-object v6, Lcom/htc/dockmode/music/MusicView;->TAG:Ljava/lang/String;

    const-string v7, "updateMusicInfo end"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    .end local v0           #album:Landroid/graphics/Bitmap;
    .end local v1           #albumArtPath:Ljava/lang/String;
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #status:Ljava/lang/String;
    .end local v5           #title:Ljava/lang/String;
    :goto_1
    return-void

    .line 530
    .restart local v0       #album:Landroid/graphics/Bitmap;
    .restart local v1       #albumArtPath:Ljava/lang/String;
    .restart local v3       #name:Ljava/lang/String;
    .restart local v4       #status:Ljava/lang/String;
    .restart local v5       #title:Ljava/lang/String;
    :cond_4
    sget-object v6, Lcom/htc/dockmode/music/MusicView;->TAG:Ljava/lang/String;

    const-string v7, "Got Music..."

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    iget-boolean v6, p0, Lcom/htc/dockmode/music/MusicView;->mIsNoMusic:Z

    if-eqz v6, :cond_5

    .line 532
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/htc/dockmode/music/MusicView;->mIsNoMusic:Z

    .line 533
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/htc/dockmode/music/MusicView;->handleNoMusic(Ljava/lang/String;)V

    .line 534
    iget-object v6, p0, Lcom/htc/dockmode/music/MusicView;->buttonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v6}, Lcom/htc/dockmode/music/MusicView;->handleButtonClick(Landroid/view/View$OnClickListener;)V

    .line 536
    :cond_5
    if-eqz v0, :cond_6

    .line 538
    iget-object v6, p0, Lcom/htc/dockmode/music/MusicView;->mAlbumArt:Landroid/widget/ImageView;

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 562
    .end local v0           #album:Landroid/graphics/Bitmap;
    .end local v1           #albumArtPath:Ljava/lang/String;
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #status:Ljava/lang/String;
    .end local v5           #title:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 563
    .local v2, e:Landroid/os/RemoteException;
    sget-object v6, Lcom/htc/dockmode/music/MusicView;->TAG:Ljava/lang/String;

    const-string v7, "Access service: IHtcMediaPlaybackService failed in setupContentView()"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 541
    .end local v2           #e:Landroid/os/RemoteException;
    .restart local v0       #album:Landroid/graphics/Bitmap;
    .restart local v1       #albumArtPath:Ljava/lang/String;
    .restart local v3       #name:Ljava/lang/String;
    .restart local v4       #status:Ljava/lang/String;
    .restart local v5       #title:Ljava/lang/String;
    :cond_6
    :try_start_1
    iget-object v6, p0, Lcom/htc/dockmode/music/MusicView;->mAlbumArt:Landroid/widget/ImageView;

    const/high16 v7, 0x7f02

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 548
    .end local v0           #album:Landroid/graphics/Bitmap;
    .end local v1           #albumArtPath:Ljava/lang/String;
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #status:Ljava/lang/String;
    .end local v5           #title:Ljava/lang/String;
    :cond_7
    sget-object v6, Lcom/htc/dockmode/music/MusicView;->TAG:Ljava/lang/String;

    const-string v7, "updateMusicInfo(), mMediaPlaybackService is null..."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    iget-object v6, p0, Lcom/htc/dockmode/music/MusicView;->mAlbumArt:Landroid/widget/ImageView;

    const/high16 v7, 0x7f02

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 552
    iget-object v6, p0, Lcom/htc/dockmode/music/MusicView;->mPlayPauseButton:Landroid/widget/CheckBox;

    if-eqz v6, :cond_8

    .line 553
    iget-object v6, p0, Lcom/htc/dockmode/music/MusicView;->mPlayPauseButton:Landroid/widget/CheckBox;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 558
    :cond_8
    iget-object v6, p0, Lcom/htc/dockmode/music/MusicView;->mMusicControl:Lcom/htc/dockmode/music/MusicControl;

    invoke-virtual {v6}, Lcom/htc/dockmode/music/MusicControl;->sendBindService()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method updatePlaybackPanel()V
    .locals 4

    .prologue
    .line 571
    monitor-enter p0

    .line 573
    :try_start_0
    iget-object v2, p0, Lcom/htc/dockmode/music/MusicView;->mPlayPauseButton:Landroid/widget/CheckBox;

    if-nez v2, :cond_0

    .line 574
    monitor-exit p0

    .line 595
    :goto_0
    return-void

    .line 577
    :cond_0
    iget-object v2, p0, Lcom/htc/dockmode/music/MusicView;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 579
    :try_start_1
    iget-object v2, p0, Lcom/htc/dockmode/music/MusicView;->mPlayPauseButton:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/htc/dockmode/music/MusicView;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 594
    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 585
    :catch_0
    move-exception v0

    .line 586
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    sget-object v2, Lcom/htc/dockmode/music/MusicView;->TAG:Ljava/lang/String;

    const-string v3, "Access service: IHtcMediaPlaybackService failed in updatePlaybackPanel()"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 588
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 589
    .local v1, e1:Ljava/lang/NullPointerException;
    sget-object v2, Lcom/htc/dockmode/music/MusicView;->TAG:Ljava/lang/String;

    const-string v3, "updatePlaybackPanel has NullPointerException!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 592
    .end local v1           #e1:Ljava/lang/NullPointerException;
    :cond_1
    iget-object v2, p0, Lcom/htc/dockmode/music/MusicView;->mPlayPauseButton:Landroid/widget/CheckBox;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method
