.class public Lcom/htc/idlescreen/shortcut/WallpaperSetting;
.super Ljava/lang/Object;
.source "WallpaperSetting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/idlescreen/shortcut/WallpaperSetting$WallpaperMonitor;
    }
.end annotation


# static fields
.field public static final ACTION_WALLPAPER_UPDATE:Ljava/lang/String; = "idlescreen_wallpaper_update"

.field public static final EXTRA_WALLPAPER_TYPE:Ljava/lang/String; = "idlescreen_extra_wallpaper_type"

.field private static final KEY_WALLPAPER_TYPE:Ljava/lang/String; = "wallpaper_type"

.field private static final LOCKSCREEN_ROOT_PATH:Ljava/lang/String; = "/data/misc/lockscreen"

.field private static final LOCKSCREEN_WALLPAPER_PORTRAIT:Ljava/lang/String; = "/data/misc/lockscreen/lock_screen_port"

.field private static final TAG:Ljava/lang/String; = "WallpaperSetting"

.field public static final WALLPAPER_FILE_NAME:Ljava/lang/String; = "wallpaper"

.field public static final WALLPAPER_FILE_PATH:Ljava/lang/String; = "/data/data/com.htc.idlescreen.shortcut/files/wallpaper"

.field public static final WALLPAPER_ROOT_PATH:Ljava/lang/String; = "/data/data/com.htc.idlescreen.shortcut/files"

.field public static final WALLPAPER_TYPE_CUSTOM:I = 0x1

.field public static final WALLPAPER_TYPE_HOME:I = 0x0

.field private static final WHAT_ON_UPDATE_WALLPAPER:I = 0x10001

.field private static final WHAT_UI_NOTIFY:I = 0x20000

.field private static mInstance:Lcom/htc/idlescreen/shortcut/WallpaperSetting;


# instance fields
.field protected mHandlerThread:Landroid/os/HandlerThread;

.field protected mLooper:Landroid/os/Looper;

.field private mMonitor:Lcom/htc/idlescreen/shortcut/WallpaperSetting$WallpaperMonitor;

.field private mNonUiHandler:Landroid/os/Handler;

.field private mSync:Z

.field private mUiHandler:Landroid/os/Handler;

.field private mWallpaper:Landroid/graphics/Bitmap;

.field private mWallpaperType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/htc/idlescreen/shortcut/WallpaperSetting;

    invoke-direct {v0}, Lcom/htc/idlescreen/shortcut/WallpaperSetting;-><init>()V

    sput-object v0, Lcom/htc/idlescreen/shortcut/WallpaperSetting;->mInstance:Lcom/htc/idlescreen/shortcut/WallpaperSetting;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 62
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-boolean v1, p0, Lcom/htc/idlescreen/shortcut/WallpaperSetting;->mSync:Z

    .line 50
    iput-object v0, p0, Lcom/htc/idlescreen/shortcut/WallpaperSetting;->mWallpaper:Landroid/graphics/Bitmap;

    .line 51
    iput v1, p0, Lcom/htc/idlescreen/shortcut/WallpaperSetting;->mWallpaperType:I

    .line 53
    iput-object v0, p0, Lcom/htc/idlescreen/shortcut/WallpaperSetting;->mHandlerThread:Landroid/os/HandlerThread;

    .line 54
    iput-object v0, p0, Lcom/htc/idlescreen/shortcut/WallpaperSetting;->mLooper:Landroid/os/Looper;

    .line 55
    iput-object v0, p0, Lcom/htc/idlescreen/shortcut/WallpaperSetting;->mNonUiHandler:Landroid/os/Handler;

    .line 56
    iput-object v0, p0, Lcom/htc/idlescreen/shortcut/WallpaperSetting;->mUiHandler:Landroid/os/Handler;

    .line 57
    iput-object v0, p0, Lcom/htc/idlescreen/shortcut/WallpaperSetting;->mMonitor:Lcom/htc/idlescreen/shortcut/WallpaperSetting$WallpaperMonitor;

    .line 63
    invoke-direct {p0}, Lcom/htc/idlescreen/shortcut/WallpaperSetting;->init()V

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/htc/idlescreen/shortcut/WallpaperSetting;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/htc/idlescreen/shortcut/WallpaperSetting;->updateWallpaper()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/idlescreen/shortcut/WallpaperSetting;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/htc/idlescreen/shortcut/WallpaperSetting;->notifyMonitor()V

    return-void
.end method

.method private getBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "context"
    .parameter "resId"

    .prologue
    const/4 v6, 0x0

    .line 244
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 246
    .local v3, src:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 247
    .local v4, width:I
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 248
    .local v0, height:I
    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v0, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 249
    .local v1, shadow:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 251
    .local v2, shadowCanvas:Landroid/graphics/Canvas;
    invoke-virtual {v3, v6, v6, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 252
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 253
    return-object v1
.end method

.method public static getInstance()Lcom/htc/idlescreen/shortcut/WallpaperSetting;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/htc/idlescreen/shortcut/WallpaperSetting;->mInstance:Lcom/htc/idlescreen/shortcut/WallpaperSetting;

    return-object v0
.end method

.method private getWallpaper()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 216
    const-string v1, "/data/data/com.htc.idlescreen.shortcut/files/wallpaper"

    invoke-direct {p0, v1}, Lcom/htc/idlescreen/shortcut/WallpaperSetting;->loadImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 217
    .local v0, wallpaper:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 218
    const-string v1, "/data/misc/lockscreen/lock_screen_port"

    invoke-direct {p0, v1}, Lcom/htc/idlescreen/shortcut/WallpaperSetting;->loadImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 220
    :cond_0
    return-object v0
.end method

.method private getWallpaperType(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 210
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 212
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v1, "wallpaper_type"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private init()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/idlescreen/shortcut/WallpaperSetting;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "WallpaperSetting"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/idlescreen/shortcut/WallpaperSetting;->mHandlerThread:Landroid/os/HandlerThread;

    .line 69
    iget-object v0, p0, Lcom/htc/idlescreen/shortcut/WallpaperSetting;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 70
    iget-object v0, p0, Lcom/htc/idlescreen/shortcut/WallpaperSetting;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/idlescreen/shortcut/WallpaperSetting;->mLooper:Landroid/os/Looper;

    .line 71
    new-instance v0, Lcom/htc/idlescreen/shortcut/WallpaperSetting$1;

    iget-object v1, p0, Lcom/htc/idlescreen/shortcut/WallpaperSetting;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/htc/idlescreen/shortcut/WallpaperSetting$1;-><init>(Lcom/htc/idlescreen/shortcut/WallpaperSetting;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/idlescreen/shortcut/WallpaperSetting;->mNonUiHandler:Landroid/os/Handler;

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/htc/idlescreen/shortcut/WallpaperSetting;->mUiHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 82
    new-instance v0, Lcom/htc/idlescreen/shortcut/WallpaperSetting$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/idlescreen/shortcut/WallpaperSetting$2;-><init>(Lcom/htc/idlescreen/shortcut/WallpaperSetting;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/idlescreen/shortcut/WallpaperSetting;->mUiHandler:Landroid/os/Handler;

    .line 92
    :cond_1
    return-void
.end method

.method private loadImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "filePath"

    .prologue
    .line 227
    const-string v3, "WallpaperSetting"

    invoke-static {v3, p1}, Lcom/htc/idlescreen/shortcut/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 229
    .local v1, bmpFile:Ljava/io/File;
    const/4 v0, 0x0

    .line 230
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 232
    const v3, 0x7fffffff

    const v4, 0x7fffffff

    :try_start_0
    invoke-static {p1, v3, v4}, Lcom/htc/util/media/ImageUtil;->loadBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 239
    :cond_0
    :goto_0
    return-object v0

    .line 233
    :catch_0
    move-exception v2

    .line 234
    .local v2, e:Ljava/util/NoSuchElementException;
    const-string v3, "WallpaperSetting"

    const-string v4, "this bitmap can\'t get canonical path"

    invoke-static {v3, v4}, Lcom/htc/idlescreen/shortcut/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 235
    .end local v2           #e:Ljava/util/NoSuchElementException;
    :catch_1
    move-exception v2

    .line 236
    .local v2, e:Ljava/lang/OutOfMemoryError;
    const-string v3, "WallpaperSetting"

    const-string v4, "this bitmap will cause OutOfMemory, so skip it"

    invoke-static {v3, v4}, Lcom/htc/idlescreen/shortcut/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private notifyMonitor()V
    .locals 3

    .prologue
    .line 130
    const-string v1, "WallpaperSetting"

    const-string v2, "notifyMonitor"

    invoke-static {v1, v2}, Lcom/htc/idlescreen/shortcut/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    monitor-enter p0

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/htc/idlescreen/shortcut/WallpaperSetting;->mMonitor:Lcom/htc/idlescreen/shortcut/WallpaperSetting$WallpaperMonitor;

    .line 133
    .local v0, monitor:Lcom/htc/idlescreen/shortcut/WallpaperSetting$WallpaperMonitor;
    if-eqz v0, :cond_0

    .line 134
    iget v1, p0, Lcom/htc/idlescreen/shortcut/WallpaperSetting;->mWallpaperType:I

    iget-object v2, p0, Lcom/htc/idlescreen/shortcut/WallpaperSetting;->mWallpaper:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1, v2}, Lcom/htc/idlescreen/shortcut/WallpaperSetting$WallpaperMonitor;->onWallpaperChangerd(ILandroid/graphics/Bitmap;)V

    .line 136
    :cond_0
    monitor-exit p0

    .line 137
    return-void

    .line 136
    .end local v0           #monitor:Lcom/htc/idlescreen/shortcut/WallpaperSetting$WallpaperMonitor;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private notifyPreview(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "type"

    .prologue
    .line 204
    new-instance v0, Landroid/content/Intent;

    const-string v1, "idlescreen_wallpaper_update"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 205
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "idlescreen_extra_wallpaper_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 206
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 207
    return-void
.end method

.method private updateWallpaper()V
    .locals 4

    .prologue
    const/high16 v3, 0x2

    .line 113
    const-string v1, "WallpaperSetting"

    const-string v2, "updateWallpaper"

    invoke-static {v1, v2}, Lcom/htc/idlescreen/shortcut/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-direct {p0}, Lcom/htc/idlescreen/shortcut/WallpaperSetting;->getWallpaper()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 115
    .local v0, bitmap:Landroid/graphics/Bitmap;
    monitor-enter p0

    .line 116
    :try_start_0
    iget v1, p0, Lcom/htc/idlescreen/shortcut/WallpaperSetting;->mWallpaperType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 117
    iput-object v0, p0, Lcom/htc/idlescreen/shortcut/WallpaperSetting;->mWallpaper:Landroid/graphics/Bitmap;

    .line 124
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    iget-object v1, p0, Lcom/htc/idlescreen/shortcut/WallpaperSetting;->mUiHandler:Landroid/os/Handler;

    invoke-static {v1, v3}, Lcom/htc/idlescreen/shortcut/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 126
    iget-object v1, p0, Lcom/htc/idlescreen/shortcut/WallpaperSetting;->mUiHandler:Landroid/os/Handler;

    invoke-static {v1, v3}, Lcom/htc/idlescreen/shortcut/MyUtil;->sendMessage(Landroid/os/Handler;I)V

    .line 127
    return-void

    .line 120
    :cond_0
    if-eqz v0, :cond_1

    .line 121
    :try_start_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 122
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/idlescreen/shortcut/WallpaperSetting;->mWallpaper:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 124
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public isCustomizeWallaper(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    .line 140
    iget-boolean v1, p0, Lcom/htc/idlescreen/shortcut/WallpaperSetting;->mSync:Z

    if-nez v1, :cond_0

    .line 141
    invoke-virtual {p0, p1}, Lcom/htc/idlescreen/shortcut/WallpaperSetting;->syncSetting(Landroid/content/Context;)V

    .line 144
    :cond_0
    iget v1, p0, Lcom/htc/idlescreen/shortcut/WallpaperSetting;->mWallpaperType:I

    if-ne v1, v0, :cond_1

    iget-object v1, p0, Lcom/htc/idlescreen/shortcut/WallpaperSetting;->mWallpaper:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 147
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public saveWallpaperType(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "type"

    .prologue
    .line 177
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/idlescreen/shortcut/WallpaperSetting;->saveWallpaperType(Landroid/content/Context;IZ)V

    .line 178
    return-void
.end method

.method public saveWallpaperType(Landroid/content/Context;IZ)V
    .locals 3
    .parameter "context"
    .parameter "type"
    .parameter "notifyPreview"

    .prologue
    const/4 v1, 0x1

    .line 181
    monitor-enter p0

    .line 182
    :try_start_0
    iput p2, p0, Lcom/htc/idlescreen/shortcut/WallpaperSetting;->mWallpaperType:I

    .line 183
    if-ne p2, v1, :cond_1

    .line 184
    iget-object v1, p0, Lcom/htc/idlescreen/shortcut/WallpaperSetting;->mNonUiHandler:Landroid/os/Handler;

    const v2, 0x10001

    invoke-static {v1, v2}, Lcom/htc/idlescreen/shortcut/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 185
    iget-object v1, p0, Lcom/htc/idlescreen/shortcut/WallpaperSetting;->mNonUiHandler:Landroid/os/Handler;

    const v2, 0x10001

    invoke-static {v1, v2}, Lcom/htc/idlescreen/shortcut/MyUtil;->sendMessage(Landroid/os/Handler;I)V

    .line 192
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/idlescreen/shortcut/WallpaperSetting;->mSync:Z

    .line 193
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 196
    .local v0, settings:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "wallpaper_type"

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 198
    if-eqz p3, :cond_0

    .line 199
    invoke-direct {p0, p1, p2}, Lcom/htc/idlescreen/shortcut/WallpaperSetting;->notifyPreview(Landroid/content/Context;I)V

    .line 201
    :cond_0
    return-void

    .line 188
    .end local v0           #settings:Landroid/content/SharedPreferences;
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, Lcom/htc/idlescreen/shortcut/WallpaperSetting;->mWallpaper:Landroid/graphics/Bitmap;

    .line 189
    iget-object v1, p0, Lcom/htc/idlescreen/shortcut/WallpaperSetting;->mUiHandler:Landroid/os/Handler;

    const/high16 v2, 0x2

    invoke-static {v1, v2}, Lcom/htc/idlescreen/shortcut/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 190
    iget-object v1, p0, Lcom/htc/idlescreen/shortcut/WallpaperSetting;->mUiHandler:Landroid/os/Handler;

    const/high16 v2, 0x2

    invoke-static {v1, v2}, Lcom/htc/idlescreen/shortcut/MyUtil;->sendMessage(Landroid/os/Handler;I)V

    goto :goto_0

    .line 193
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setMonitor(Lcom/htc/idlescreen/shortcut/WallpaperSetting$WallpaperMonitor;)V
    .locals 2
    .parameter "monitor"

    .prologue
    .line 100
    monitor-enter p0

    .line 101
    :try_start_0
    iput-object p1, p0, Lcom/htc/idlescreen/shortcut/WallpaperSetting;->mMonitor:Lcom/htc/idlescreen/shortcut/WallpaperSetting$WallpaperMonitor;

    .line 102
    iget-boolean v0, p0, Lcom/htc/idlescreen/shortcut/WallpaperSetting;->mSync:Z

    if-nez v0, :cond_0

    .line 109
    :goto_0
    monitor-exit p0

    .line 110
    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/htc/idlescreen/shortcut/WallpaperSetting;->mUiHandler:Landroid/os/Handler;

    const/high16 v1, 0x2

    invoke-static {v0, v1}, Lcom/htc/idlescreen/shortcut/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 107
    iget-object v0, p0, Lcom/htc/idlescreen/shortcut/WallpaperSetting;->mUiHandler:Landroid/os/Handler;

    const/high16 v1, 0x2

    invoke-static {v0, v1}, Lcom/htc/idlescreen/shortcut/MyUtil;->sendMessage(Landroid/os/Handler;I)V

    goto :goto_0

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public syncSetting(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 151
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/idlescreen/shortcut/WallpaperSetting;->syncSetting(Landroid/content/Context;Z)V

    .line 152
    return-void
.end method

.method public syncSetting(Landroid/content/Context;Z)V
    .locals 4
    .parameter "context"
    .parameter "force"

    .prologue
    const/4 v3, 0x1

    .line 155
    const-string v0, "WallpaperSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncSetting force:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/idlescreen/shortcut/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-boolean v0, p0, Lcom/htc/idlescreen/shortcut/WallpaperSetting;->mSync:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_3

    .line 157
    :cond_0
    monitor-enter p0

    .line 158
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/idlescreen/shortcut/WallpaperSetting;->mSync:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_2

    .line 159
    :cond_1
    invoke-direct {p0, p1}, Lcom/htc/idlescreen/shortcut/WallpaperSetting;->getWallpaperType(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/htc/idlescreen/shortcut/WallpaperSetting;->mWallpaperType:I

    .line 160
    const-string v0, "WallpaperSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncSetting mWallpaperType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/idlescreen/shortcut/WallpaperSetting;->mWallpaperType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/idlescreen/shortcut/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget v0, p0, Lcom/htc/idlescreen/shortcut/WallpaperSetting;->mWallpaperType:I

    if-ne v0, v3, :cond_4

    .line 162
    iget-object v0, p0, Lcom/htc/idlescreen/shortcut/WallpaperSetting;->mNonUiHandler:Landroid/os/Handler;

    const v1, 0x10001

    invoke-static {v0, v1}, Lcom/htc/idlescreen/shortcut/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 163
    iget-object v0, p0, Lcom/htc/idlescreen/shortcut/WallpaperSetting;->mNonUiHandler:Landroid/os/Handler;

    const v1, 0x10001

    invoke-static {v0, v1}, Lcom/htc/idlescreen/shortcut/MyUtil;->sendMessage(Landroid/os/Handler;I)V

    .line 170
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/idlescreen/shortcut/WallpaperSetting;->mSync:Z

    .line 172
    :cond_2
    monitor-exit p0

    .line 174
    :cond_3
    return-void

    .line 166
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/idlescreen/shortcut/WallpaperSetting;->mWallpaper:Landroid/graphics/Bitmap;

    .line 167
    iget-object v0, p0, Lcom/htc/idlescreen/shortcut/WallpaperSetting;->mUiHandler:Landroid/os/Handler;

    const/high16 v1, 0x2

    invoke-static {v0, v1}, Lcom/htc/idlescreen/shortcut/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 168
    iget-object v0, p0, Lcom/htc/idlescreen/shortcut/WallpaperSetting;->mUiHandler:Landroid/os/Handler;

    const/high16 v1, 0x2

    invoke-static {v0, v1}, Lcom/htc/idlescreen/shortcut/MyUtil;->sendMessage(Landroid/os/Handler;I)V

    goto :goto_0

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
