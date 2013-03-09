.class public Lcom/htc/dockmode/wallpaper/WallpaperControl;
.super Ljava/lang/Object;
.source "WallpaperControl.java"

# interfaces
.implements Lcom/htc/dockmode/utils/ControlInterface;


# static fields
.field private static final GALLERY_TMP_PNG_NAME:Ljava/lang/String; = "galleryTmp.png"

.field private static final TAG:Ljava/lang/String; = null

.field private static final TYPE_GALLERYWALLPAPER:Ljava/lang/String; = "gallery_wallpaper"

.field private static final TYPE_HTCWALLPAPER:Ljava/lang/String; = "htc_wallpaper"

.field private static final TYPE_LIVEWALLPAPER:Ljava/lang/String; = "live_wallpaper"

.field private static final localLOGV:Z

.field private static mHTCWallpaperPath:Ljava/lang/String;


# instance fields
.field l:Landroid/view/View$OnLongClickListener;

.field private mActivity:Landroid/app/Activity;

.field private mChangelive:Z

.field private mClassString:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mIntent:Landroid/content/Intent;

.field private mLayoutId:I

.field private mLiveWallPaperReceiver:Landroid/content/BroadcastReceiver;

.field private mLiveWallPaperReceiverRegistered:Z

.field private mNonUIHandler:Landroid/os/Handler;

.field private mPackageString:Ljava/lang/String;

.field private mPathString:Ljava/lang/String;

.field private mResume:Ljava/lang/Boolean;

.field private mTypeString:Ljava/lang/String;

.field private mUIHandler:Landroid/os/Handler;

.field private mView:Landroid/view/View;

.field private mWallPaperReceiver:Landroid/content/BroadcastReceiver;

.field private mWallPaperReceiverRegistered:Z

.field private mWallpaperConnection:Lcom/htc/dockmode/wallpaper/WallpaperConnection;

.field mWallpaper_content:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/htc/dockmode/wallpaper/WallpaperControl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;Landroid/os/Handler;I)V
    .locals 2
    .parameter "activity"
    .parameter "uiHander"
    .parameter "nonUIHandler"
    .parameter "layoutId"

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-boolean v1, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mWallPaperReceiverRegistered:Z

    .line 47
    iput-boolean v1, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mLiveWallPaperReceiverRegistered:Z

    .line 49
    iput-boolean v1, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mChangelive:Z

    .line 102
    new-instance v0, Lcom/htc/dockmode/wallpaper/WallpaperControl$1;

    invoke-direct {v0, p0}, Lcom/htc/dockmode/wallpaper/WallpaperControl$1;-><init>(Lcom/htc/dockmode/wallpaper/WallpaperControl;)V

    iput-object v0, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mWallPaperReceiver:Landroid/content/BroadcastReceiver;

    .line 115
    new-instance v0, Lcom/htc/dockmode/wallpaper/WallpaperControl$2;

    invoke-direct {v0, p0}, Lcom/htc/dockmode/wallpaper/WallpaperControl$2;-><init>(Lcom/htc/dockmode/wallpaper/WallpaperControl;)V

    iput-object v0, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mLiveWallPaperReceiver:Landroid/content/BroadcastReceiver;

    .line 150
    new-instance v0, Lcom/htc/dockmode/wallpaper/WallpaperControl$3;

    invoke-direct {v0, p0}, Lcom/htc/dockmode/wallpaper/WallpaperControl$3;-><init>(Lcom/htc/dockmode/wallpaper/WallpaperControl;)V

    iput-object v0, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->l:Landroid/view/View$OnLongClickListener;

    .line 157
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mResume:Ljava/lang/Boolean;

    .line 67
    iput-object p1, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mActivity:Landroid/app/Activity;

    iput-object p1, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mContext:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mUIHandler:Landroid/os/Handler;

    .line 69
    iput-object p3, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mNonUIHandler:Landroid/os/Handler;

    .line 70
    iput p4, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mLayoutId:I

    .line 71
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/dockmode/wallpaper/WallpaperControl;)Ljava/lang/Boolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mResume:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/dockmode/wallpaper/WallpaperControl;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mChangelive:Z

    return v0
.end method

.method static synthetic access$202(Lcom/htc/dockmode/wallpaper/WallpaperControl;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mChangelive:Z

    return p1
.end method

.method static synthetic access$302(Lcom/htc/dockmode/wallpaper/WallpaperControl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mPackageString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/htc/dockmode/wallpaper/WallpaperControl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mClassString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/htc/dockmode/wallpaper/WallpaperControl;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getWallpaper(Landroid/content/SharedPreferences;)V
    .locals 1
    .parameter "settings"

    .prologue
    .line 277
    const-string v0, "type"

    invoke-static {p1, v0}, Lcom/htc/dockmode/utils/Preference;->getSettingString(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mTypeString:Ljava/lang/String;

    .line 278
    const-string v0, "path"

    invoke-static {p1, v0}, Lcom/htc/dockmode/utils/Preference;->getSettingString(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mPathString:Ljava/lang/String;

    .line 279
    const-string v0, "package"

    invoke-static {p1, v0}, Lcom/htc/dockmode/utils/Preference;->getSettingString(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mPackageString:Ljava/lang/String;

    .line 281
    const-string v0, "class"

    invoke-static {p1, v0}, Lcom/htc/dockmode/utils/Preference;->getSettingString(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mClassString:Ljava/lang/String;

    .line 283
    return-void
.end method

.method private initWallpaper()V
    .locals 3

    .prologue
    .line 175
    sget-object v0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initWallpaper - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mTypeString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const-string v0, "htc_wallpaper"

    iget-object v1, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mTypeString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mPathString:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mPathString:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/dockmode/wallpaper/WallpaperControl;->setWallpaper(Ljava/lang/String;)V

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    const-string v0, "live_wallpaper"

    iget-object v1, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mTypeString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 181
    iget-object v0, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mPackageString:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mClassString:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mPackageString:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mClassString:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/htc/dockmode/wallpaper/WallpaperControl;->setLiveWallpaper(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 184
    :cond_2
    const-string v0, "gallery_wallpaper"

    iget-object v1, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mTypeString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 185
    iget-object v0, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mPathString:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/htc/dockmode/wallpaper/WallpaperControl;->setGalleryWallPaper()V

    goto :goto_0

    .line 189
    :cond_3
    invoke-virtual {p0}, Lcom/htc/dockmode/wallpaper/WallpaperControl;->setDefaultLiveWallpaper()V

    goto :goto_0
.end method

.method private loadPreference()V
    .locals 4

    .prologue
    .line 270
    iget-object v1, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/htc/dockmode/wallpaper/WallpaperPref;->TAG:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 272
    .local v0, settings:Landroid/content/SharedPreferences;
    invoke-direct {p0, v0}, Lcom/htc/dockmode/wallpaper/WallpaperControl;->getWallpaper(Landroid/content/SharedPreferences;)V

    .line 273
    return-void
.end method

.method private prepareSetLiveWallpaper()V
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mWallpaperConnection:Lcom/htc/dockmode/wallpaper/WallpaperConnection;

    if-eqz v0, :cond_0

    .line 301
    :try_start_0
    iget-object v0, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mWallpaperConnection:Lcom/htc/dockmode/wallpaper/WallpaperConnection;

    invoke-virtual {v0}, Lcom/htc/dockmode/wallpaper/WallpaperConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mWallpaperConnection:Lcom/htc/dockmode/wallpaper/WallpaperConnection;

    .line 307
    iget-object v0, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mWallpaper_content:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 308
    iget-object v0, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mWallpaper_content:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 310
    :cond_1
    return-void

    .line 302
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private prepareSetWallpaper()V
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mWallpaperConnection:Lcom/htc/dockmode/wallpaper/WallpaperConnection;

    if-eqz v0, :cond_0

    .line 316
    :try_start_0
    iget-object v0, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mWallpaperConnection:Lcom/htc/dockmode/wallpaper/WallpaperConnection;

    invoke-virtual {v0}, Lcom/htc/dockmode/wallpaper/WallpaperConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mWallpaperConnection:Lcom/htc/dockmode/wallpaper/WallpaperConnection;

    .line 322
    iget-object v0, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mWallpaper_content:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 323
    iget-object v0, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mWallpaper_content:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 325
    :cond_1
    return-void

    .line 317
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private savePreference()V
    .locals 4

    .prologue
    .line 236
    iget-object v1, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/htc/dockmode/wallpaper/WallpaperPref;->TAG:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 239
    .local v0, settings:Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mTypeString:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 240
    const-string v1, "type"

    iget-object v2, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mTypeString:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/htc/dockmode/utils/Preference;->setSettingString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Z

    .line 244
    :cond_0
    iget-object v1, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mPathString:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 245
    const-string v1, "path"

    iget-object v2, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mPathString:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/htc/dockmode/utils/Preference;->setSettingString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Z

    .line 249
    :cond_1
    iget-object v1, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mPackageString:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 250
    const-string v1, "package"

    iget-object v2, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mPackageString:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/htc/dockmode/utils/Preference;->setSettingString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Z

    .line 254
    :cond_2
    iget-object v1, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mClassString:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 255
    const-string v1, "class"

    iget-object v2, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mClassString:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/htc/dockmode/utils/Preference;->setSettingString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Z

    .line 259
    :cond_3
    return-void
.end method


# virtual methods
.method public copyGalleryWallPaper()V
    .locals 11

    .prologue
    .line 384
    :try_start_0
    iget-object v9, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 385
    .local v4, filePath:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "galleryTmp.png"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 386
    .local v8, tmpFilePath:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 387
    .local v2, dir:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    .line 388
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 389
    :cond_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 390
    .local v6, galleryFile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 391
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 394
    :cond_1
    const/4 v1, 0x0

    .line 396
    .local v1, count:I
    new-instance v5, Ljava/io/FileOutputStream;

    const/4 v9, 0x1

    invoke-direct {v5, v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 397
    .local v5, fos:Ljava/io/FileOutputStream;
    new-instance v7, Ljava/io/FileInputStream;

    const-string v9, "/mnt/sdcard/.data/dockmode/wallpaper.png"

    invoke-direct {v7, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 398
    .local v7, is:Ljava/io/FileInputStream;
    const/16 v9, 0x400

    new-array v0, v9, [B

    .line 399
    .local v0, buffer:[B
    :goto_0
    invoke-virtual {v7, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_2

    .line 400
    const/4 v9, 0x0

    invoke-virtual {v5, v0, v9, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 405
    .end local v0           #buffer:[B
    .end local v1           #count:I
    .end local v2           #dir:Ljava/io/File;
    .end local v4           #filePath:Ljava/lang/String;
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .end local v6           #galleryFile:Ljava/io/File;
    .end local v7           #is:Ljava/io/FileInputStream;
    .end local v8           #tmpFilePath:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 406
    .local v3, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 410
    .end local v3           #e:Ljava/io/FileNotFoundException;
    :goto_1
    return-void

    .line 402
    .restart local v0       #buffer:[B
    .restart local v1       #count:I
    .restart local v2       #dir:Ljava/io/File;
    .restart local v4       #filePath:Ljava/lang/String;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    .restart local v6       #galleryFile:Ljava/io/File;
    .restart local v7       #is:Ljava/io/FileInputStream;
    .restart local v8       #tmpFilePath:Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 403
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 407
    .end local v0           #buffer:[B
    .end local v1           #count:I
    .end local v2           #dir:Ljava/io/File;
    .end local v4           #filePath:Ljava/lang/String;
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .end local v6           #galleryFile:Ljava/io/File;
    .end local v7           #is:Ljava/io/FileInputStream;
    .end local v8           #tmpFilePath:Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 408
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method protected initReceiver()V
    .locals 4

    .prologue
    .line 83
    monitor-enter p0

    .line 84
    :try_start_0
    iget-boolean v2, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mWallPaperReceiverRegistered:Z

    if-nez v2, :cond_0

    .line 85
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 86
    .local v1, wpFilter:Landroid/content/IntentFilter;
    const-string v2, "com.htc.intent.ACTION_SET_WALLPAPER_DOCKMODE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    iget-object v2, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mWallPaperReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 88
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mWallPaperReceiverRegistered:Z

    .line 91
    .end local v1           #wpFilter:Landroid/content/IntentFilter;
    :cond_0
    iget-boolean v2, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mLiveWallPaperReceiverRegistered:Z

    if-nez v2, :cond_1

    .line 92
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 93
    .local v0, lwpFilter:Landroid/content/IntentFilter;
    const-string v2, "com.htc.intent.ACTION_SET_LIVEWALLPAPER_DOCKMODE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 94
    iget-object v2, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mLiveWallPaperReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 95
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mLiveWallPaperReceiverRegistered:Z

    .line 99
    .end local v0           #lwpFilter:Landroid/content/IntentFilter;
    :cond_1
    monitor-exit p0

    .line 100
    return-void

    .line 99
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public onDoDestroy()V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mWallpaperConnection:Lcom/htc/dockmode/wallpaper/WallpaperConnection;

    if-eqz v0, :cond_0

    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mWallpaperConnection:Lcom/htc/dockmode/wallpaper/WallpaperConnection;

    invoke-virtual {v0}, Lcom/htc/dockmode/wallpaper/WallpaperConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mWallpaperConnection:Lcom/htc/dockmode/wallpaper/WallpaperConnection;

    .line 221
    invoke-virtual {p0}, Lcom/htc/dockmode/wallpaper/WallpaperControl;->releaseReceiver()V

    .line 222
    return-void

    .line 215
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onDoInit1()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/htc/dockmode/wallpaper/WallpaperControl;->loadPreference()V

    .line 76
    return-void
.end method

.method public onDoInit2()V
    .locals 0

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/htc/dockmode/wallpaper/WallpaperControl;->initReceiver()V

    .line 80
    return-void
.end method

.method public onDoPause()V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mWallpaperConnection:Lcom/htc/dockmode/wallpaper/WallpaperConnection;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mWallpaperConnection:Lcom/htc/dockmode/wallpaper/WallpaperConnection;

    invoke-virtual {v0}, Lcom/htc/dockmode/wallpaper/WallpaperConnection;->doPause()V

    .line 197
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mResume:Ljava/lang/Boolean;

    .line 198
    return-void
.end method

.method public onDoRefresh1()V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mActivity:Landroid/app/Activity;

    iget v1, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mLayoutId:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mView:Landroid/view/View;

    .line 144
    iget-object v0, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->l:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 145
    iget-object v0, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0a0055

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mWallpaper_content:Landroid/widget/ImageView;

    .line 147
    invoke-direct {p0}, Lcom/htc/dockmode/wallpaper/WallpaperControl;->initWallpaper()V

    .line 148
    return-void
.end method

.method public onDoRemoveMessages()V
    .locals 0

    .prologue
    .line 209
    return-void
.end method

.method public onDoResume()V
    .locals 3

    .prologue
    .line 160
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mResume:Ljava/lang/Boolean;

    .line 161
    iget-boolean v0, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mChangelive:Z

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mPackageString:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mClassString:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mPackageString:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mClassString:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/htc/dockmode/wallpaper/WallpaperControl;->setLiveWallpaper(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mChangelive:Z

    .line 165
    sget-object v0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDoResume(): mChangelives = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mChangelive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mWallpaperConnection:Lcom/htc/dockmode/wallpaper/WallpaperConnection;

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mWallpaperConnection:Lcom/htc/dockmode/wallpaper/WallpaperConnection;

    invoke-virtual {v0}, Lcom/htc/dockmode/wallpaper/WallpaperConnection;->doResume()V

    .line 172
    :cond_1
    return-void
.end method

.method public onDoStop()V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mWallpaperConnection:Lcom/htc/dockmode/wallpaper/WallpaperConnection;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mWallpaperConnection:Lcom/htc/dockmode/wallpaper/WallpaperConnection;

    invoke-virtual {v0}, Lcom/htc/dockmode/wallpaper/WallpaperConnection;->doStop()V

    .line 204
    :cond_0
    invoke-direct {p0}, Lcom/htc/dockmode/wallpaper/WallpaperControl;->savePreference()V

    .line 206
    return-void
.end method

.method protected releaseReceiver()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 225
    iget-boolean v0, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mWallPaperReceiverRegistered:Z

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mWallPaperReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 227
    iput-boolean v2, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mWallPaperReceiverRegistered:Z

    .line 229
    :cond_0
    iget-boolean v0, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mLiveWallPaperReceiverRegistered:Z

    if-eqz v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mLiveWallPaperReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 231
    iput-boolean v2, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mLiveWallPaperReceiverRegistered:Z

    .line 233
    :cond_1
    return-void
.end method

.method public resetLayout()V
    .locals 0

    .prologue
    .line 267
    return-void
.end method

.method public setDefaultLiveWallpaper()V
    .locals 4

    .prologue
    .line 346
    invoke-direct {p0}, Lcom/htc/dockmode/wallpaper/WallpaperControl;->prepareSetLiveWallpaper()V

    .line 347
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.wallpaper.WallpaperService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mIntent:Landroid/content/Intent;

    .line 348
    iget-object v0, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mIntent:Landroid/content/Intent;

    const-string v1, "com.htc.android.WeatherLiveWallpaper"

    const-string v2, "com.htc.android.WeatherLiveWallpaper.service.WeatherLoopingService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 351
    new-instance v0, Lcom/htc/dockmode/wallpaper/WallpaperConnection;

    iget-object v1, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mView:Landroid/view/View;

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/dockmode/wallpaper/WallpaperConnection;-><init>(Landroid/content/Intent;Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mWallpaperConnection:Lcom/htc/dockmode/wallpaper/WallpaperConnection;

    .line 352
    iget-object v0, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mWallpaperConnection:Lcom/htc/dockmode/wallpaper/WallpaperConnection;

    invoke-virtual {v0}, Lcom/htc/dockmode/wallpaper/WallpaperConnection;->connect()Z

    move-result v0

    if-nez v0, :cond_0

    .line 353
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mWallpaperConnection:Lcom/htc/dockmode/wallpaper/WallpaperConnection;

    .line 356
    :cond_0
    return-void
.end method

.method public setGalleryWallPaper()V
    .locals 7

    .prologue
    .line 360
    iget-object v5, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mWallpaper_content:Landroid/widget/ImageView;

    if-nez v5, :cond_0

    .line 361
    sget-object v5, Lcom/htc/dockmode/wallpaper/WallpaperControl;->TAG:Ljava/lang/String;

    const-string v6, "mWallpaper_content is null. don\'t need to set wall paper now"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :goto_0
    return-void

    .line 364
    :cond_0
    invoke-direct {p0}, Lcom/htc/dockmode/wallpaper/WallpaperControl;->prepareSetWallpaper()V

    .line 366
    iget-object v5, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 367
    .local v3, filePath:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "galleryTmp.png"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 368
    .local v4, tmpFilePath:Ljava/lang/String;
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 370
    .local v0, bmp:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 372
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget-object v5, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mWallpaper_content:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    :goto_1
    const-string v5, "gallery_wallpaper"

    iput-object v5, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mTypeString:Ljava/lang/String;

    .line 378
    iput-object v4, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mPathString:Ljava/lang/String;

    goto :goto_0

    .line 373
    :catch_0
    move-exception v2

    .line 374
    .local v2, e:Ljava/lang/OutOfMemoryError;
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_1
.end method

.method public setLiveWallpaper(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "packageName"
    .parameter "className"

    .prologue
    .line 329
    invoke-direct {p0}, Lcom/htc/dockmode/wallpaper/WallpaperControl;->prepareSetLiveWallpaper()V

    .line 330
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.wallpaper.WallpaperService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mIntent:Landroid/content/Intent;

    .line 331
    iget-object v0, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 333
    new-instance v0, Lcom/htc/dockmode/wallpaper/WallpaperConnection;

    iget-object v1, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mView:Landroid/view/View;

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/dockmode/wallpaper/WallpaperConnection;-><init>(Landroid/content/Intent;Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mWallpaperConnection:Lcom/htc/dockmode/wallpaper/WallpaperConnection;

    .line 334
    iget-object v0, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mWallpaperConnection:Lcom/htc/dockmode/wallpaper/WallpaperConnection;

    invoke-virtual {v0}, Lcom/htc/dockmode/wallpaper/WallpaperConnection;->connect()Z

    move-result v0

    if-nez v0, :cond_0

    .line 335
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mWallpaperConnection:Lcom/htc/dockmode/wallpaper/WallpaperConnection;

    .line 338
    :cond_0
    const-string v0, "live_wallpaper"

    iput-object v0, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mTypeString:Ljava/lang/String;

    .line 339
    iput-object p1, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mPackageString:Ljava/lang/String;

    .line 340
    iput-object p2, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mClassString:Ljava/lang/String;

    .line 342
    return-void
.end method

.method public setWallpaper(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 286
    invoke-direct {p0}, Lcom/htc/dockmode/wallpaper/WallpaperControl;->prepareSetWallpaper()V

    .line 288
    :try_start_0
    sput-object p1, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mHTCWallpaperPath:Ljava/lang/String;

    .line 289
    iget-object v1, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mWallpaper_content:Landroid/widget/ImageView;

    invoke-static {p1}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    :goto_0
    const-string v1, "htc_wallpaper"

    iput-object v1, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mTypeString:Ljava/lang/String;

    .line 295
    iput-object p1, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl;->mPathString:Ljava/lang/String;

    .line 296
    return-void

    .line 290
    :catch_0
    move-exception v0

    .line 291
    .local v0, e:Ljava/lang/OutOfMemoryError;
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_0
.end method
