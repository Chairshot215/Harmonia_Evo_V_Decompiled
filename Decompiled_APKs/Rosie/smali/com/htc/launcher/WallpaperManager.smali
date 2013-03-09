.class public Lcom/htc/launcher/WallpaperManager;
.super Ljava/lang/Object;
.source "WallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/launcher/WallpaperManager$1;,
        Lcom/htc/launcher/WallpaperManager$Receiver;,
        Lcom/htc/launcher/WallpaperManager$OnWallpaperChangedListener;,
        Lcom/htc/launcher/WallpaperManager$Engine;
    }
.end annotation


# static fields
.field public static final COMMAND_WALLPAPER_PAUSE:Ljava/lang/String; = "com.htc.launcher.COMMAND_WALLPAPER_PAUSE"

.field public static final COMMAND_WALLPAPER_RESUME:Ljava/lang/String; = "com.htc.launcher.COMMAND_WALLPAPER_RESUME"

.field private static final LOG_TAG:Ljava/lang/String; = "Local Wallpaper Manager"

.field static isOOBE:Z

.field private static mCircularWallpapers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mCustomPauseWallpapers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sWallpaperManager:Lcom/htc/launcher/WallpaperManager;


# instance fields
.field private mEngine:Lcom/htc/launcher/WallpaperManager$Engine;

.field private mIsCircularWallpaper:Z

.field private mIsCustomPauseWallpaper:Z

.field private mMyChanges:I

.field private mOnWallpaperChangedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/launcher/WallpaperManager$OnWallpaperChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mReceiver:Lcom/htc/launcher/WallpaperManager$Receiver;

.field private mRes:Landroid/content/res/Resources;

.field private mSys:Landroid/app/WallpaperManager;

.field private mWallpaperDrawable:Landroid/graphics/drawable/Drawable;

.field private mXOffset:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/launcher/WallpaperManager;->sWallpaperManager:Lcom/htc/launcher/WallpaperManager;

    .line 347
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/launcher/WallpaperManager;->isOOBE:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 58
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 202
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/launcher/WallpaperManager;->mMyChanges:I

    .line 290
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/htc/launcher/WallpaperManager;->mOnWallpaperChangedListeners:Ljava/util/List;

    .line 59
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/launcher/WallpaperManager;->mSys:Landroid/app/WallpaperManager;

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/launcher/WallpaperManager;->mRes:Landroid/content/res/Resources;

    .line 62
    sget-boolean v1, Lcom/htc/launcher/Launcher;->sUseWallpaperService:Z

    if-eqz v1, :cond_0

    .line 63
    invoke-direct {p0}, Lcom/htc/launcher/WallpaperManager;->getWallpaperImage()V

    .line 66
    :cond_0
    new-instance v1, Lcom/htc/launcher/WallpaperManager$Receiver;

    invoke-direct {v1, p0, v4}, Lcom/htc/launcher/WallpaperManager$Receiver;-><init>(Lcom/htc/launcher/WallpaperManager;Lcom/htc/launcher/WallpaperManager$1;)V

    iput-object v1, p0, Lcom/htc/launcher/WallpaperManager;->mReceiver:Lcom/htc/launcher/WallpaperManager$Receiver;

    .line 67
    iget-object v1, p0, Lcom/htc/launcher/WallpaperManager;->mReceiver:Lcom/htc/launcher/WallpaperManager$Receiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.WALLPAPER_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 70
    :try_start_0
    iget-object v1, p0, Lcom/htc/launcher/WallpaperManager;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f060010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/htc/launcher/WallpaperManager;->mCircularWallpapers:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/htc/launcher/WallpaperManager;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f060011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/htc/launcher/WallpaperManager;->mCustomPauseWallpapers:Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 81
    :goto_1
    invoke-virtual {p0}, Lcom/htc/launcher/WallpaperManager;->updateWallpaperInfo()Landroid/app/WallpaperInfo;

    .line 82
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Local Wallpaper Manager"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/launcher/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    sput-object v4, Lcom/htc/launcher/WallpaperManager;->mCircularWallpapers:Ljava/util/List;

    goto :goto_0

    .line 77
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 78
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "Local Wallpaper Manager"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/launcher/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    sput-object v4, Lcom/htc/launcher/WallpaperManager;->mCustomPauseWallpapers:Ljava/util/List;

    goto :goto_1
.end method

.method static synthetic access$200(Lcom/htc/launcher/WallpaperManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/htc/launcher/WallpaperManager;->getWallpaperImage()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/launcher/WallpaperManager;)Landroid/app/WallpaperManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/htc/launcher/WallpaperManager;->mSys:Landroid/app/WallpaperManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/launcher/WallpaperManager;Landroid/app/WallpaperInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/htc/launcher/WallpaperManager;->notifyWallpaperChange(Landroid/app/WallpaperInfo;)V

    return-void
.end method

.method static synthetic access$510(Lcom/htc/launcher/WallpaperManager;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Lcom/htc/launcher/WallpaperManager;->mMyChanges:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/htc/launcher/WallpaperManager;->mMyChanges:I

    return v0
.end method

.method private deinit()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 100
    iget-object v0, p0, Lcom/htc/launcher/WallpaperManager;->mReceiver:Lcom/htc/launcher/WallpaperManager$Receiver;

    #calls: Lcom/htc/launcher/WallpaperManager$Receiver;->stop()V
    invoke-static {v0}, Lcom/htc/launcher/WallpaperManager$Receiver;->access$100(Lcom/htc/launcher/WallpaperManager$Receiver;)V

    .line 101
    iput-object v1, p0, Lcom/htc/launcher/WallpaperManager;->mEngine:Lcom/htc/launcher/WallpaperManager$Engine;

    .line 102
    iput-object v1, p0, Lcom/htc/launcher/WallpaperManager;->mRes:Landroid/content/res/Resources;

    .line 103
    iput-object v1, p0, Lcom/htc/launcher/WallpaperManager;->mSys:Landroid/app/WallpaperManager;

    .line 104
    iput-object v1, p0, Lcom/htc/launcher/WallpaperManager;->mWallpaperDrawable:Landroid/graphics/drawable/Drawable;

    .line 105
    iget-object v1, p0, Lcom/htc/launcher/WallpaperManager;->mOnWallpaperChangedListeners:Ljava/util/List;

    monitor-enter v1

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/htc/launcher/WallpaperManager;->mOnWallpaperChangedListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 107
    monitor-exit v1

    .line 108
    return-void

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getInstance()Lcom/htc/launcher/WallpaperManager;
    .locals 2

    .prologue
    .line 111
    sget-object v0, Lcom/htc/launcher/WallpaperManager;->sWallpaperManager:Lcom/htc/launcher/WallpaperManager;

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Wallpaper manager not initialized yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_0
    sget-object v0, Lcom/htc/launcher/WallpaperManager;->sWallpaperManager:Lcom/htc/launcher/WallpaperManager;

    return-object v0
.end method

.method private getWallpaperImage()V
    .locals 5

    .prologue
    .line 160
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->shouldDrawWallpaper()Z

    move-result v2

    if-nez v2, :cond_0

    .line 161
    const-string v2, "Local Wallpaper Manager"

    const-string v3, "Not going to load wallpaper image."

    invoke-static {v2, v3}, Lcom/htc/launcher/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :goto_0
    return-void

    .line 165
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/launcher/WallpaperManager;->mSys:Landroid/app/WallpaperManager;

    invoke-virtual {v2}, Landroid/app/WallpaperManager;->getFastDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 166
    .local v0, d:Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, v0}, Lcom/htc/launcher/WallpaperManager;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 167
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v1

    .line 168
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "Local Wallpaper Manager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail to set wallpaper image:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Clear image drawable."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/launcher/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/launcher/WallpaperManager;->setImage(Ljava/io/InputStream;)V

    goto :goto_0
.end method

.method public static initWithAppContext(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 92
    sget-object v0, Lcom/htc/launcher/WallpaperManager;->sWallpaperManager:Lcom/htc/launcher/WallpaperManager;

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Lcom/htc/launcher/WallpaperManager;

    invoke-direct {v0, p0}, Lcom/htc/launcher/WallpaperManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/htc/launcher/WallpaperManager;->sWallpaperManager:Lcom/htc/launcher/WallpaperManager;

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_0
    const-string v0, "Local Wallpaper Manager"

    const-string v1, "already initialized"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private notifyWallpaperChange(Landroid/app/WallpaperInfo;)V
    .locals 4
    .parameter "info"

    .prologue
    .line 303
    iget-object v3, p0, Lcom/htc/launcher/WallpaperManager;->mOnWallpaperChangedListeners:Ljava/util/List;

    monitor-enter v3

    .line 304
    :try_start_0
    iget-object v2, p0, Lcom/htc/launcher/WallpaperManager;->mOnWallpaperChangedListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/launcher/WallpaperManager$OnWallpaperChangedListener;

    .line 305
    .local v1, l:Lcom/htc/launcher/WallpaperManager$OnWallpaperChangedListener;
    invoke-interface {v1, p1}, Lcom/htc/launcher/WallpaperManager$OnWallpaperChangedListener;->onWallpaperChanged(Landroid/app/WallpaperInfo;)V

    goto :goto_0

    .line 306
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #l:Lcom/htc/launcher/WallpaperManager$OnWallpaperChangedListener;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 307
    return-void
.end method

.method private setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "wallpaper"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/htc/launcher/WallpaperManager;->mWallpaperDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    .line 181
    :goto_0
    return-void

    .line 180
    :cond_0
    iput-object p1, p0, Lcom/htc/launcher/WallpaperManager;->mWallpaperDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method


# virtual methods
.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 274
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->shouldDrawWallpaper()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/launcher/WallpaperManager;->mWallpaperDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 275
    const-string v0, "Local Wallpaper Manager"

    const-string v1, "Should draw wallpaper but we don\'t have the drawable."

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/WallpaperManager;->mWallpaperDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getWallpaperInfo()Landroid/app/WallpaperInfo;
    .locals 1

    .prologue
    .line 267
    sget-boolean v0, Lcom/htc/launcher/Launcher;->sUseWallpaperService:Z

    if-nez v0, :cond_0

    .line 268
    const/4 v0, 0x0

    .line 269
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/WallpaperManager;->mSys:Landroid/app/WallpaperManager;

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public isCircularWallpaper()Z
    .locals 1

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/htc/launcher/WallpaperManager;->mIsCircularWallpaper:Z

    return v0
.end method

.method public isCustomPauseWallpaper()Z
    .locals 1

    .prologue
    .line 238
    iget-boolean v0, p0, Lcom/htc/launcher/WallpaperManager;->mIsCustomPauseWallpaper:Z

    return v0
.end method

.method isImageWallpaper()Z
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/htc/launcher/WallpaperManager;->mSys:Landroid/app/WallpaperManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/launcher/WallpaperManager;->mSys:Landroid/app/WallpaperManager;

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMyChange()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 205
    const-string v0, "Local Wallpaper Manager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "my change? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/launcher/WallpaperManager;->mMyChanges:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget v0, p0, Lcom/htc/launcher/WallpaperManager;->mMyChanges:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pauseWallpaper(Landroid/os/IBinder;Z)V
    .locals 7
    .parameter "binder"
    .parameter "pauseOrResume"

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 217
    const-string v0, "Local Wallpaper Manager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pauseWallpaper: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->shouldFreezeWallpaper()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/htc/launcher/Launcher;->sUseWallpaperService:Z

    if-nez v0, :cond_1

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    invoke-virtual {p0}, Lcom/htc/launcher/WallpaperManager;->isCustomPauseWallpaper()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 221
    if-eqz p2, :cond_2

    const-string v2, "com.htc.launcher.COMMAND_WALLPAPER_PAUSE"

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/htc/launcher/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    const-string v2, "com.htc.launcher.COMMAND_WALLPAPER_RESUME"

    goto :goto_1

    .line 227
    :cond_3
    if-eqz p2, :cond_4

    const-string v2, "android.wallpaper.stop.render"

    :goto_2
    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/htc/launcher/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    goto :goto_0

    :cond_4
    const-string v2, "android.wallpaper.resume.render"

    goto :goto_2
.end method

.method public registerOnWallpaperChangedListener(Lcom/htc/launcher/WallpaperManager$OnWallpaperChangedListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 293
    const-string v0, "Local Wallpaper Manager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "register listener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/htc/launcher/WallpaperManager;->mOnWallpaperChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    return-void
.end method

.method public sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V
    .locals 7
    .parameter "windowToken"
    .parameter "action"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "extras"

    .prologue
    .line 147
    sget-boolean v0, Lcom/htc/launcher/Launcher;->sUseWallpaperService:Z

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/htc/launcher/WallpaperManager;->mSys:Landroid/app/WallpaperManager;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/htc/launcher/WallpaperManager;->mEngine:Lcom/htc/launcher/WallpaperManager$Engine;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/htc/launcher/WallpaperManager;->mEngine:Lcom/htc/launcher/WallpaperManager$Engine;

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-interface/range {v0 .. v5}, Lcom/htc/launcher/WallpaperManager$Engine;->sendWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method public setEngine(Lcom/htc/launcher/WallpaperManager$Engine;)V
    .locals 0
    .parameter "engine"

    .prologue
    .line 174
    iput-object p1, p0, Lcom/htc/launcher/WallpaperManager;->mEngine:Lcom/htc/launcher/WallpaperManager$Engine;

    .line 175
    return-void
.end method

.method public setImage(Ljava/io/InputStream;)V
    .locals 4
    .parameter "wallpaper"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 185
    iget-object v1, p0, Lcom/htc/launcher/WallpaperManager;->mSys:Landroid/app/WallpaperManager;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 187
    :try_start_0
    iget-object v1, p0, Lcom/htc/launcher/WallpaperManager;->mSys:Landroid/app/WallpaperManager;

    invoke-virtual {v1, p1}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V

    .line 188
    invoke-direct {p0}, Lcom/htc/launcher/WallpaperManager;->getWallpaperImage()V

    .line 189
    iget v1, p0, Lcom/htc/launcher/WallpaperManager;->mMyChanges:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/launcher/WallpaperManager;->mMyChanges:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, e:Ljava/io/IOException;
    const-string v1, "Local Wallpaper Manager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to set wallpaper image:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/launcher/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setWallpaperComponent(Ljava/lang/String;)V
    .locals 1
    .parameter "wallpaper"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 199
    iget v0, p0, Lcom/htc/launcher/WallpaperManager;->mMyChanges:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/launcher/WallpaperManager;->mMyChanges:I

    .line 200
    return-void
.end method

.method public setWallpaperOffsetSteps(FF)V
    .locals 1
    .parameter "xSteps"
    .parameter "ySteps"

    .prologue
    .line 122
    sget-boolean v0, Lcom/htc/launcher/Launcher;->sUseWallpaperService:Z

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/htc/launcher/WallpaperManager;->mSys:Landroid/app/WallpaperManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/WallpaperManager;->setWallpaperOffsetSteps(FF)V

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/htc/launcher/WallpaperManager;->mEngine:Lcom/htc/launcher/WallpaperManager$Engine;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/htc/launcher/WallpaperManager;->mEngine:Lcom/htc/launcher/WallpaperManager$Engine;

    invoke-interface {v0, p1, p2}, Lcom/htc/launcher/WallpaperManager$Engine;->setWallpaperOffsetSteps(FF)V

    goto :goto_0
.end method

.method public setWallpaperOffsets(Landroid/os/IBinder;FF)V
    .locals 1
    .parameter "token"
    .parameter "xOffset"
    .parameter "yOffset"

    .prologue
    .line 130
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->usesRingSlide()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    invoke-virtual {p0}, Lcom/htc/launcher/WallpaperManager;->isCircularWallpaper()Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    const/high16 p2, 0x3f00

    .line 134
    :cond_0
    const/high16 p3, 0x3f00

    .line 137
    :cond_1
    sget-boolean v0, Lcom/htc/launcher/Launcher;->sUseWallpaperService:Z

    if-eqz v0, :cond_3

    .line 138
    iget-object v0, p0, Lcom/htc/launcher/WallpaperManager;->mSys:Landroid/app/WallpaperManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/WallpaperManager;->setWallpaperOffsets(Landroid/os/IBinder;FF)V

    .line 143
    :cond_2
    :goto_0
    iput p2, p0, Lcom/htc/launcher/WallpaperManager;->mXOffset:F

    .line 144
    return-void

    .line 139
    :cond_3
    iget-object v0, p0, Lcom/htc/launcher/WallpaperManager;->mEngine:Lcom/htc/launcher/WallpaperManager$Engine;

    if-eqz v0, :cond_2

    .line 140
    iget-object v0, p0, Lcom/htc/launcher/WallpaperManager;->mEngine:Lcom/htc/launcher/WallpaperManager$Engine;

    invoke-interface {v0, p2, p3}, Lcom/htc/launcher/WallpaperManager$Engine;->setWallpaperOffsets(FF)V

    goto :goto_0
.end method

.method public suggestDesiredDimensions(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/htc/launcher/WallpaperManager;->mSys:Landroid/app/WallpaperManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/WallpaperManager;->suggestDesiredDimensions(II)V

    .line 119
    return-void
.end method

.method public unregisterOnWallpaperChangedListener(Lcom/htc/launcher/WallpaperManager$OnWallpaperChangedListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 298
    const-string v0, "Local Wallpaper Manager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregister listener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/htc/launcher/WallpaperManager;->mOnWallpaperChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 300
    return-void
.end method

.method public updateWallpaperInfo()Landroid/app/WallpaperInfo;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 242
    sget-boolean v1, Lcom/htc/launcher/Launcher;->sUseWallpaperService:Z

    if-nez v1, :cond_0

    .line 243
    const/4 v0, 0x0

    .line 259
    :goto_0
    return-object v0

    .line 245
    :cond_0
    iget-object v1, p0, Lcom/htc/launcher/WallpaperManager;->mSys:Landroid/app/WallpaperManager;

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v0

    .line 246
    .local v0, info:Landroid/app/WallpaperInfo;
    if-eqz v0, :cond_1

    sget-object v1, Lcom/htc/launcher/WallpaperManager;->mCircularWallpapers:Ljava/util/List;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/htc/launcher/WallpaperManager;->mCircularWallpapers:Ljava/util/List;

    invoke-virtual {v0}, Landroid/app/WallpaperInfo;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 247
    iput-boolean v4, p0, Lcom/htc/launcher/WallpaperManager;->mIsCircularWallpaper:Z

    .line 251
    :goto_1
    if-eqz v0, :cond_2

    sget-object v1, Lcom/htc/launcher/WallpaperManager;->mCustomPauseWallpapers:Ljava/util/List;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/htc/launcher/WallpaperManager;->mCustomPauseWallpapers:Ljava/util/List;

    invoke-virtual {v0}, Landroid/app/WallpaperInfo;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 252
    iput-boolean v4, p0, Lcom/htc/launcher/WallpaperManager;->mIsCustomPauseWallpaper:Z

    .line 256
    :goto_2
    const-string v2, "Wallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "info: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/WallpaperInfo;->getServiceName()Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", circular? "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/htc/launcher/WallpaperManager;->mIsCircularWallpaper:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", customPause? "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/htc/launcher/WallpaperManager;->mIsCustomPauseWallpaper:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 249
    :cond_1
    iput-boolean v3, p0, Lcom/htc/launcher/WallpaperManager;->mIsCircularWallpaper:Z

    goto :goto_1

    .line 254
    :cond_2
    iput-boolean v3, p0, Lcom/htc/launcher/WallpaperManager;->mIsCustomPauseWallpaper:Z

    goto :goto_2

    .line 256
    :cond_3
    const-string v1, "null"

    goto :goto_3
.end method
