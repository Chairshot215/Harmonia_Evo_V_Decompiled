.class public Lcom/htc/home/personalize/WallpaperPreview;
.super Landroid/app/Activity;
.source "WallpaperPreview.java"


# static fields
.field private static final DIALOG_APPLY_WALLPAPER_FAIL:I = 0x2

.field private static final DIALOG_NO_SPACE_MESSAGE:I = 0x0

.field private static final DIALOG_NO_WALLPAPER_MESSAGE:I = 0x1

.field public static final PREVIEW_FILE_PATH:Ljava/lang/String; = "preview_file_path"

.field public static final PREVIEW_PICK_LOCKSCREEN:Ljava/lang/String; = "preview_pick_lockscreen"

.field public static final PREVIEW_RES_PATH:Ljava/lang/String; = "preview_res_path"

.field public static final PREVIEW_WALLPAPER_LABEL:Ljava/lang/String; = "preview_wallpaper_label"

.field private static final TAG:Ljava/lang/String; = "WallpaperPreview"

.field public static final WIDGET_PREVIEW_PATH:Ljava/lang/String; = "/data/data/com.htc.launcher/files/screen_cache.png"

.field public static final WIDGET_PREVIEW_PATH_LAND:Ljava/lang/String; = "/data/data/com.htc.launcher/files/screen_cache_land.png"

.field public static localLOGV:Z


# instance fields
.field private footerButtonLeft:Lcom/htc/widget/HtcFooterButton;

.field private footerButtonRight:Lcom/htc/widget/HtcFooterButton;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBtn1Click:Landroid/view/View$OnClickListener;

.field private mBtn2Click:Landroid/view/View$OnClickListener;

.field private mFilePath:Ljava/lang/String;

.field private mIsPickLockScreenWallpaper:Z

.field private mIsWallpaperSet:Z

.field private mResPath:I

.field private mWallpaperLabel:Ljava/lang/String;

.field private mWidgetPreview:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/home/personalize/WallpaperPreview;->localLOGV:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 61
    iput-object v0, p0, Lcom/htc/home/personalize/WallpaperPreview;->mBitmap:Landroid/graphics/Bitmap;

    .line 68
    iput-object v0, p0, Lcom/htc/home/personalize/WallpaperPreview;->footerButtonLeft:Lcom/htc/widget/HtcFooterButton;

    .line 69
    iput-object v0, p0, Lcom/htc/home/personalize/WallpaperPreview;->footerButtonRight:Lcom/htc/widget/HtcFooterButton;

    .line 150
    new-instance v0, Lcom/htc/home/personalize/WallpaperPreview$1;

    invoke-direct {v0, p0}, Lcom/htc/home/personalize/WallpaperPreview$1;-><init>(Lcom/htc/home/personalize/WallpaperPreview;)V

    iput-object v0, p0, Lcom/htc/home/personalize/WallpaperPreview;->mBtn1Click:Landroid/view/View$OnClickListener;

    .line 327
    new-instance v0, Lcom/htc/home/personalize/WallpaperPreview$5;

    invoke-direct {v0, p0}, Lcom/htc/home/personalize/WallpaperPreview$5;-><init>(Lcom/htc/home/personalize/WallpaperPreview;)V

    iput-object v0, p0, Lcom/htc/home/personalize/WallpaperPreview;->mBtn2Click:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private SetLockScreenWallPaper()V
    .locals 10

    .prologue
    .line 168
    const-string v0, "com.htc.launcher.lockscreen.WallpaperChanged"

    .line 169
    .local v0, INTENT_ACTION_WALLPAPER_CHANGED:Ljava/lang/String;
    const-string v1, "/data/misc/lockscreen"

    .line 170
    .local v1, LOCKSCREEN_ROOT_PATH:Ljava/lang/String;
    const-string v2, "/data/misc/lockscreen/lock_screen_port"

    .line 174
    .local v2, LOCKSCREEN_WALLPAPER_PORTRAIT:Ljava/lang/String;
    const-string v8, "window"

    invoke-virtual {p0, v8}, Lcom/htc/home/personalize/WallpaperPreview;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    .line 175
    .local v5, manager:Landroid/view/WindowManager;
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    .line 177
    .local v3, display:Landroid/view/Display;
    :try_start_0
    iget v8, p0, Lcom/htc/home/personalize/WallpaperPreview;->mResPath:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/htc/home/personalize/WallpaperPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget v9, p0, Lcom/htc/home/personalize/WallpaperPreview;->mResPath:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v6

    .line 185
    .local v6, stream:Ljava/io/InputStream;
    :goto_0
    new-instance v7, Lcom/htc/home/personalize/WallpaperPreview$2;

    const-string v8, "changeFirstLockscreenWallpaper"

    invoke-direct {v7, p0, v8, v6, v3}, Lcom/htc/home/personalize/WallpaperPreview$2;-><init>(Lcom/htc/home/personalize/WallpaperPreview;Ljava/lang/String;Ljava/io/InputStream;Landroid/view/Display;)V

    .line 236
    .local v7, thread:Ljava/lang/Thread;
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 241
    .end local v6           #stream:Ljava/io/InputStream;
    .end local v7           #thread:Ljava/lang/Thread;
    :goto_1
    return-void

    .line 182
    :cond_0
    new-instance v6, Ljava/io/BufferedInputStream;

    new-instance v8, Ljava/io/FileInputStream;

    iget-object v9, p0, Lcom/htc/home/personalize/WallpaperPreview;->mFilePath:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v6       #stream:Ljava/io/InputStream;
    goto :goto_0

    .line 237
    .end local v6           #stream:Ljava/io/InputStream;
    :catch_0
    move-exception v4

    .line 239
    .local v4, e1:Ljava/io/FileNotFoundException;
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/htc/home/personalize/WallpaperPreview;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/htc/home/personalize/WallpaperPreview;->mIsPickLockScreenWallpaper:Z

    return v0
.end method

.method static synthetic access$100(Lcom/htc/home/personalize/WallpaperPreview;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/htc/home/personalize/WallpaperPreview;->SetLockScreenWallPaper()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/home/personalize/WallpaperPreview;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/htc/home/personalize/WallpaperPreview;->selectWallpaper()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/home/personalize/WallpaperPreview;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperPreview;->mWallpaperLabel:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/home/personalize/WallpaperPreview;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/WallpaperPreview;->notifyWallpaperTitle(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$502(Lcom/htc/home/personalize/WallpaperPreview;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/htc/home/personalize/WallpaperPreview;->mIsWallpaperSet:Z

    return p1
.end method

.method private initialWidgetPreview(Ljava/lang/String;)V
    .locals 3
    .parameter "path"

    .prologue
    .line 334
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 335
    .local v0, imageSrc:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 336
    invoke-static {p1}, Lcom/htc/home/personalize/util/BitmapUtils;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/home/personalize/WallpaperPreview;->mBitmap:Landroid/graphics/Bitmap;

    .line 337
    iget-object v1, p0, Lcom/htc/home/personalize/WallpaperPreview;->mWidgetPreview:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/htc/home/personalize/WallpaperPreview;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 341
    :goto_0
    return-void

    .line 339
    :cond_0
    const-string v1, "WallpaperPreview"

    const-string v2, "cannot find the widget preview image."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private notifyWallpaperTitle(Ljava/lang/String;)V
    .locals 2
    .parameter "title"

    .prologue
    .line 162
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.intent.ACTION_PERSONALIZE_WALLPAPER_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 163
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.intent.EXTRA_SUMMARY"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/WallpaperPreview;->sendBroadcast(Landroid/content/Intent;)V

    .line 165
    return-void
.end method

.method private selectWallpaper()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v3, -0x1

    .line 249
    iget-boolean v2, p0, Lcom/htc/home/personalize/WallpaperPreview;->mIsWallpaperSet:Z

    if-eqz v2, :cond_0

    .line 279
    :goto_0
    return-void

    .line 253
    :cond_0
    iput-boolean v5, p0, Lcom/htc/home/personalize/WallpaperPreview;->mIsWallpaperSet:Z

    .line 258
    :try_start_0
    iget v2, p0, Lcom/htc/home/personalize/WallpaperPreview;->mResPath:I

    if-eq v2, v3, :cond_1

    .line 260
    invoke-virtual {p0}, Lcom/htc/home/personalize/WallpaperPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/htc/home/personalize/WallpaperPreview;->mResPath:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 267
    .local v1, stream:Ljava/io/InputStream;
    :goto_1
    invoke-virtual {p0, v1}, Lcom/htc/home/personalize/WallpaperPreview;->setWallpaper(Ljava/io/InputStream;)V

    .line 268
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/htc/home/personalize/WallpaperPreview;->setResult(I)V

    .line 269
    invoke-virtual {p0}, Lcom/htc/home/personalize/WallpaperPreview;->finish()V

    .line 270
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 271
    iget-object v2, p0, Lcom/htc/home/personalize/WallpaperPreview;->mWallpaperLabel:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/htc/home/personalize/WallpaperPreview;->notifyWallpaperTitle(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 272
    .end local v1           #stream:Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 273
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v2, "WallpaperPreview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No wallpaper: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-virtual {p0, v5}, Lcom/htc/home/personalize/WallpaperPreview;->showDialog(I)V

    goto :goto_0

    .line 263
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_1
    :try_start_1
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/htc/home/personalize/WallpaperPreview;->mFilePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v1       #stream:Ljava/io/InputStream;
    goto :goto_1

    .line 275
    .end local v1           #stream:Ljava/io/InputStream;
    :catch_1
    move-exception v0

    .line 276
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "WallpaperPreview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to set wallpaper: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/htc/home/personalize/WallpaperPreview;->showDialog(I)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "icicle"

    .prologue
    const/4 v13, -0x1

    .line 78
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    const v10, 0x7f030020

    invoke-virtual {p0, v10}, Lcom/htc/home/personalize/WallpaperPreview;->setContentView(I)V

    .line 80
    invoke-virtual {p0}, Lcom/htc/home/personalize/WallpaperPreview;->setupHeaderFooter()V

    .line 82
    invoke-virtual {p0}, Lcom/htc/home/personalize/WallpaperPreview;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 83
    .local v7, intent:Landroid/content/Intent;
    const-string v10, "preview_file_path"

    invoke-virtual {v7, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/home/personalize/WallpaperPreview;->mFilePath:Ljava/lang/String;

    .line 84
    const-string v10, "preview_res_path"

    invoke-virtual {v7, v10, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lcom/htc/home/personalize/WallpaperPreview;->mResPath:I

    .line 85
    const v10, 0x7f0b005c

    invoke-virtual {p0, v10}, Lcom/htc/home/personalize/WallpaperPreview;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 87
    .local v9, wallpaper_content:Landroid/widget/ImageView;
    const/4 v6, 0x1

    .local v6, i:I
    :goto_0
    const/4 v10, 0x4

    if-ge v6, v10, :cond_0

    .line 90
    :try_start_0
    iget v10, p0, Lcom/htc/home/personalize/WallpaperPreview;->mResPath:I

    if-eq v10, v13, :cond_1

    .line 91
    iget v10, p0, Lcom/htc/home/personalize/WallpaperPreview;->mResPath:I

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :cond_0
    :goto_1
    const-string v10, "preview_pick_lockscreen"

    const/4 v11, 0x0

    invoke-virtual {v7, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, p0, Lcom/htc/home/personalize/WallpaperPreview;->mIsPickLockScreenWallpaper:Z

    .line 105
    const-string v10, "preview_wallpaper_label"

    invoke-virtual {v7, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/home/personalize/WallpaperPreview;->mWallpaperLabel:Ljava/lang/String;

    .line 106
    iget-object v10, p0, Lcom/htc/home/personalize/WallpaperPreview;->footerButtonLeft:Lcom/htc/widget/HtcFooterButton;

    const v11, 0x7f090001

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 107
    iget-object v10, p0, Lcom/htc/home/personalize/WallpaperPreview;->footerButtonLeft:Lcom/htc/widget/HtcFooterButton;

    iget-object v11, p0, Lcom/htc/home/personalize/WallpaperPreview;->mBtn1Click:Landroid/view/View$OnClickListener;

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v10, p0, Lcom/htc/home/personalize/WallpaperPreview;->footerButtonRight:Lcom/htc/widget/HtcFooterButton;

    const v11, 0x7f090025

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 110
    iget-object v10, p0, Lcom/htc/home/personalize/WallpaperPreview;->footerButtonRight:Lcom/htc/widget/HtcFooterButton;

    iget-object v11, p0, Lcom/htc/home/personalize/WallpaperPreview;->mBtn2Click:Landroid/view/View$OnClickListener;

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v10, p0, Lcom/htc/home/personalize/WallpaperPreview;->footerButtonRight:Lcom/htc/widget/HtcFooterButton;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcFooterButton;->setVisibility(I)V

    .line 114
    const v10, 0x7f0b0021

    :try_start_1
    invoke-virtual {p0, v10}, Lcom/htc/home/personalize/WallpaperPreview;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, p0, Lcom/htc/home/personalize/WallpaperPreview;->mWidgetPreview:Landroid/widget/ImageView;

    .line 116
    invoke-virtual {p0}, Lcom/htc/home/personalize/WallpaperPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v10, v10, Landroid/content/res/Configuration;->orientation:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    .line 118
    const-string v10, "/data/data/com.htc.launcher/files/screen_cache.png"

    invoke-direct {p0, v10}, Lcom/htc/home/personalize/WallpaperPreview;->initialWidgetPreview(Ljava/lang/String;)V

    .line 123
    :goto_2
    const-string v10, "common_app_bkg"

    const v11, 0x20806b7

    invoke-static {p0, v10, v11}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 124
    .local v0, background:I
    const v10, 0x7f0b0022

    invoke-virtual {p0, v10}, Lcom/htc/home/personalize/WallpaperPreview;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 125
    .local v4, footerBackground:Landroid/widget/ImageView;
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 127
    const-string v10, "window"

    invoke-virtual {p0, v10}, Lcom/htc/home/personalize/WallpaperPreview;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/WindowManager;

    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 128
    .local v1, display:Landroid/view/Display;
    invoke-virtual {p0}, Lcom/htc/home/personalize/WallpaperPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x205017a

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 129
    .local v5, footerHeight:I
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 130
    .local v8, matrix:Landroid/graphics/Matrix;
    const/4 v10, 0x0

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v11

    sub-int/2addr v11, v5

    neg-int v11, v11

    int-to-float v11, v11

    invoke-virtual {v8, v10, v11}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 131
    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    .line 138
    .end local v0           #background:I
    .end local v1           #display:Landroid/view/Display;
    .end local v4           #footerBackground:Landroid/widget/ImageView;
    .end local v5           #footerHeight:I
    .end local v8           #matrix:Landroid/graphics/Matrix;
    :goto_3
    return-void

    .line 93
    :cond_1
    :try_start_2
    iget-object v10, p0, Lcom/htc/home/personalize/WallpaperPreview;->mFilePath:Ljava/lang/String;

    invoke-static {v10}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 96
    :catch_0
    move-exception v2

    .line 97
    .local v2, e:Ljava/lang/OutOfMemoryError;
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 98
    const-string v10, "WallpaperPreview"

    const-string v11, "decode wallpaper OutOfMemoryError"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const-string v10, "WallpaperPreview"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "retry times = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 120
    .end local v2           #e:Ljava/lang/OutOfMemoryError;
    :cond_2
    :try_start_3
    const-string v10, "/data/data/com.htc.launcher/files/screen_cache_land.png"

    invoke-direct {p0, v10}, Lcom/htc/home/personalize/WallpaperPreview;->initialWidgetPreview(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 132
    :catch_1
    move-exception v3

    .line 133
    .local v3, ex:Ljava/lang/OutOfMemoryError;
    const-string v10, "WallpaperPreview"

    const-string v11, "OutOfMemoryErrorr while in WallpaperPreview.onCreate()"

    invoke-static {v10, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 134
    invoke-virtual {v3}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 135
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 136
    invoke-virtual {p0}, Lcom/htc/home/personalize/WallpaperPreview;->finish()V

    goto :goto_3
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "id"

    .prologue
    const v2, 0x1080027

    const v4, 0x104000a

    const/4 v3, -0x3

    .line 283
    packed-switch p1, :pswitch_data_0

    .line 314
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 285
    :pswitch_0
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 286
    .local v0, err_no_space:Lcom/htc/widget/HtcAlertDialog;
    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog;->setIcon(I)V

    .line 287
    invoke-virtual {p0}, Lcom/htc/home/personalize/WallpaperPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20c00e3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 288
    invoke-virtual {p0}, Lcom/htc/home/personalize/WallpaperPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090031

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 289
    invoke-virtual {p0}, Lcom/htc/home/personalize/WallpaperPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/htc/home/personalize/WallpaperPreview$3;

    invoke-direct {v2, p0}, Lcom/htc/home/personalize/WallpaperPreview$3;-><init>(Lcom/htc/home/personalize/WallpaperPreview;)V

    invoke-virtual {v0, v3, v1, v2}, Lcom/htc/widget/HtcAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 299
    .end local v0           #err_no_space:Lcom/htc/widget/HtcAlertDialog;
    :pswitch_1
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 300
    .restart local v0       #err_no_space:Lcom/htc/widget/HtcAlertDialog;
    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog;->setIcon(I)V

    .line 301
    invoke-virtual {p0}, Lcom/htc/home/personalize/WallpaperPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090030

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 302
    invoke-virtual {p0}, Lcom/htc/home/personalize/WallpaperPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090033

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 303
    invoke-virtual {p0}, Lcom/htc/home/personalize/WallpaperPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/htc/home/personalize/WallpaperPreview$4;

    invoke-direct {v2, p0}, Lcom/htc/home/personalize/WallpaperPreview$4;-><init>(Lcom/htc/home/personalize/WallpaperPreview;)V

    invoke-virtual {v0, v3, v1, v2}, Lcom/htc/widget/HtcAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 283
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 143
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 144
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperPreview;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperPreview;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 146
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/home/personalize/WallpaperPreview;->mBitmap:Landroid/graphics/Bitmap;

    .line 147
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 148
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 0
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 319
    .line 325
    return-void
.end method

.method public setupHeaderFooter()V
    .locals 1

    .prologue
    .line 72
    const v0, 0x7f0b0002

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/WallpaperPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    iput-object v0, p0, Lcom/htc/home/personalize/WallpaperPreview;->footerButtonLeft:Lcom/htc/widget/HtcFooterButton;

    .line 73
    const v0, 0x7f0b0003

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/WallpaperPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    iput-object v0, p0, Lcom/htc/home/personalize/WallpaperPreview;->footerButtonRight:Lcom/htc/widget/HtcFooterButton;

    .line 74
    return-void
.end method
