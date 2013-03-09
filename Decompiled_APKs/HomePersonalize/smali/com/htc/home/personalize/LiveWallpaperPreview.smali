.class public Lcom/htc/home/personalize/LiveWallpaperPreview;
.super Landroid/app/Activity;
.source "LiveWallpaperPreview.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/home/personalize/LiveWallpaperPreview$WallpaperConnection;
    }
.end annotation


# static fields
.field static final EXTRA_LIVE_WALLPAPER_INTENT:Ljava/lang/String; = "android.live_wallpaper.intent"

.field static final EXTRA_LIVE_WALLPAPER_LABEL:Ljava/lang/String; = "android.live_wallpaper.label"

.field static final EXTRA_LIVE_WALLPAPER_PACKAGE:Ljava/lang/String; = "android.live_wallpaper.package"

.field static final EXTRA_LIVE_WALLPAPER_SETTINGS:Ljava/lang/String; = "android.live_wallpaper.settings"

.field private static final LOG_TAG:Ljava/lang/String; = "LiveWallpaperPreview"

.field public static final WIDGET_PREVIEW_PATH:Ljava/lang/String; = "/data/data/com.htc.launcher/files/screen_cache.png"

.field public static final WIDGET_PREVIEW_PATH_LAND:Ljava/lang/String; = "/data/data/com.htc.launcher/files/screen_cache_land.png"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBtn1Click:Landroid/view/View$OnClickListener;

.field private mBtn2Click:Landroid/view/View$OnClickListener;

.field private mDialog:Landroid/app/Dialog;

.field private mFooterBar:Lcom/htc/widget/HtcFooter;

.field private mFooterButtonLeft:Lcom/htc/widget/HtcFooterButton;

.field private mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

.field private mPackageName:Ljava/lang/String;

.field private mSettings:Ljava/lang/String;

.field private mWallpaperConnection:Lcom/htc/home/personalize/LiveWallpaperPreview$WallpaperConnection;

.field private mWallpaperIntent:Landroid/content/Intent;

.field private mWallpaperLabel:Ljava/lang/String;

.field private mWallpaperManager:Landroid/app/WallpaperManager;

.field private mWidgetPreview:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 75
    iput-object v1, p0, Lcom/htc/home/personalize/LiveWallpaperPreview;->mBitmap:Landroid/graphics/Bitmap;

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/home/personalize/LiveWallpaperPreview;->mWallpaperLabel:Ljava/lang/String;

    .line 78
    iput-object v1, p0, Lcom/htc/home/personalize/LiveWallpaperPreview;->mFooterBar:Lcom/htc/widget/HtcFooter;

    .line 79
    iput-object v1, p0, Lcom/htc/home/personalize/LiveWallpaperPreview;->mFooterButtonLeft:Lcom/htc/widget/HtcFooterButton;

    .line 80
    iput-object v1, p0, Lcom/htc/home/personalize/LiveWallpaperPreview;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

    .line 293
    new-instance v0, Lcom/htc/home/personalize/LiveWallpaperPreview$2;

    invoke-direct {v0, p0}, Lcom/htc/home/personalize/LiveWallpaperPreview$2;-><init>(Lcom/htc/home/personalize/LiveWallpaperPreview;)V

    iput-object v0, p0, Lcom/htc/home/personalize/LiveWallpaperPreview;->mBtn1Click:Landroid/view/View$OnClickListener;

    .line 299
    new-instance v0, Lcom/htc/home/personalize/LiveWallpaperPreview$3;

    invoke-direct {v0, p0}, Lcom/htc/home/personalize/LiveWallpaperPreview$3;-><init>(Lcom/htc/home/personalize/LiveWallpaperPreview;)V

    iput-object v0, p0, Lcom/htc/home/personalize/LiveWallpaperPreview;->mBtn2Click:Landroid/view/View$OnClickListener;

    .line 305
    return-void
.end method

.method static synthetic access$000(Lcom/htc/home/personalize/LiveWallpaperPreview;)Lcom/htc/home/personalize/LiveWallpaperPreview$WallpaperConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/home/personalize/LiveWallpaperPreview;->mWallpaperConnection:Lcom/htc/home/personalize/LiveWallpaperPreview$WallpaperConnection;

    return-object v0
.end method

.method static synthetic access$002(Lcom/htc/home/personalize/LiveWallpaperPreview;Lcom/htc/home/personalize/LiveWallpaperPreview$WallpaperConnection;)Lcom/htc/home/personalize/LiveWallpaperPreview$WallpaperConnection;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/htc/home/personalize/LiveWallpaperPreview;->mWallpaperConnection:Lcom/htc/home/personalize/LiveWallpaperPreview$WallpaperConnection;

    return-object p1
.end method

.method static synthetic access$100(Lcom/htc/home/personalize/LiveWallpaperPreview;)Lcom/htc/widget/HtcFooter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/home/personalize/LiveWallpaperPreview;->mFooterBar:Lcom/htc/widget/HtcFooter;

    return-object v0
.end method

.method private initialWidgetPreview(Ljava/lang/String;)V
    .locals 3
    .parameter "path"

    .prologue
    .line 389
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 390
    .local v0, imageSrc:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 391
    invoke-static {p1}, Lcom/htc/home/personalize/util/BitmapUtils;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/home/personalize/LiveWallpaperPreview;->mBitmap:Landroid/graphics/Bitmap;

    .line 392
    iget-object v1, p0, Lcom/htc/home/personalize/LiveWallpaperPreview;->mWidgetPreview:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/htc/home/personalize/LiveWallpaperPreview;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 396
    :goto_0
    return-void

    .line 394
    :cond_0
    const-string v1, "LiveWallpaperPreview"

    const-string v2, "cannot find the widget preview image."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private notifyWallpaperTitle(Ljava/lang/String;)V
    .locals 2
    .parameter "title"

    .prologue
    .line 174
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.intent.ACTION_PERSONALIZE_WALLPAPER_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 175
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.intent.EXTRA_SUMMARY"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/LiveWallpaperPreview;->sendBroadcast(Landroid/content/Intent;)V

    .line 177
    return-void
.end method

.method private showLoading()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 241
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 242
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f03000a

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 244
    .local v0, content:Landroid/widget/TextView;
    new-instance v4, Landroid/app/Dialog;

    const v5, 0x1030008

    invoke-direct {v4, p0, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/htc/home/personalize/LiveWallpaperPreview;->mDialog:Landroid/app/Dialog;

    .line 246
    iget-object v4, p0, Lcom/htc/home/personalize/LiveWallpaperPreview;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 247
    .local v3, window:Landroid/view/Window;
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 249
    .local v2, lp:Landroid/view/WindowManager$LayoutParams;
    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 250
    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 251
    const/16 v4, 0x3e9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 253
    iget-object v4, p0, Lcom/htc/home/personalize/LiveWallpaperPreview;->mDialog:Landroid/app/Dialog;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v0, v5}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 256
    iget-object v4, p0, Lcom/htc/home/personalize/LiveWallpaperPreview;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 257
    return-void
.end method

.method static showPreview(Landroid/app/Activity;ILandroid/content/Intent;Landroid/app/WallpaperInfo;)V
    .locals 3
    .parameter "activity"
    .parameter "code"
    .parameter "intent"
    .parameter "info"

    .prologue
    .line 83
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/htc/home/personalize/LiveWallpaperPreview;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 84
    .local v0, preview:Landroid/content/Intent;
    const-string v1, "android.live_wallpaper.intent"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 85
    const-string v1, "android.live_wallpaper.settings"

    invoke-virtual {p3}, Landroid/app/WallpaperInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    const-string v1, "android.live_wallpaper.package"

    invoke-virtual {p3}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    const-string v1, "android.live_wallpaper.label"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/app/WallpaperInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 88
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 89
    return-void
.end method


# virtual methods
.method public configureLiveWallpaper(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 181
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 182
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/htc/home/personalize/LiveWallpaperPreview;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/home/personalize/LiveWallpaperPreview;->mSettings:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 183
    const-string v1, "android.service.wallpaper.PREVIEW_MODE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 184
    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/LiveWallpaperPreview;->startActivity(Landroid/content/Intent;)V

    .line 185
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 276
    iget-object v1, p0, Lcom/htc/home/personalize/LiveWallpaperPreview;->mWallpaperConnection:Lcom/htc/home/personalize/LiveWallpaperPreview$WallpaperConnection;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/home/personalize/LiveWallpaperPreview;->mWallpaperConnection:Lcom/htc/home/personalize/LiveWallpaperPreview$WallpaperConnection;

    iget-object v1, v1, Lcom/htc/home/personalize/LiveWallpaperPreview$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v1, :cond_0

    .line 277
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 279
    .local v0, dup:Landroid/view/MotionEvent;
    :try_start_0
    iget-object v1, p0, Lcom/htc/home/personalize/LiveWallpaperPreview;->mWallpaperConnection:Lcom/htc/home/personalize/LiveWallpaperPreview$WallpaperConnection;

    iget-object v1, v1, Lcom/htc/home/personalize/LiveWallpaperPreview$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-interface {v1, v0}, Landroid/service/wallpaper/IWallpaperEngine;->dispatchPointer(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    .end local v0           #dup:Landroid/view/MotionEvent;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 285
    invoke-virtual {p0}, Lcom/htc/home/personalize/LiveWallpaperPreview;->onUserInteraction()V

    .line 287
    :cond_1
    invoke-virtual {p0}, Lcom/htc/home/personalize/LiveWallpaperPreview;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/Window;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 288
    const/4 v1, 0x1

    .line 290
    :goto_1
    return v1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/htc/home/personalize/LiveWallpaperPreview;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_1

    .line 280
    .restart local v0       #dup:Landroid/view/MotionEvent;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 223
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 225
    invoke-direct {p0}, Lcom/htc/home/personalize/LiveWallpaperPreview;->showLoading()V

    .line 227
    iget-object v0, p0, Lcom/htc/home/personalize/LiveWallpaperPreview;->mFooterBar:Lcom/htc/widget/HtcFooter;

    new-instance v1, Lcom/htc/home/personalize/LiveWallpaperPreview$1;

    invoke-direct {v1, p0}, Lcom/htc/home/personalize/LiveWallpaperPreview$1;-><init>(Lcom/htc/home/personalize/LiveWallpaperPreview;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooter;->post(Ljava/lang/Runnable;)Z

    .line 238
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const v8, 0x7f090001

    .line 99
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 101
    invoke-virtual {p0}, Lcom/htc/home/personalize/LiveWallpaperPreview;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 102
    .local v3, extras:Landroid/os/Bundle;
    const-string v7, "android.live_wallpaper.intent"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    iput-object v7, p0, Lcom/htc/home/personalize/LiveWallpaperPreview;->mWallpaperIntent:Landroid/content/Intent;

    .line 104
    :try_start_0
    const-string v7, "android.live_wallpaper.label"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/home/personalize/LiveWallpaperPreview;->mWallpaperLabel:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 107
    :goto_0
    iget-object v7, p0, Lcom/htc/home/personalize/LiveWallpaperPreview;->mWallpaperIntent:Landroid/content/Intent;

    if-nez v7, :cond_0

    .line 108
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/htc/home/personalize/LiveWallpaperPreview;->setResult(I)V

    .line 109
    invoke-virtual {p0}, Lcom/htc/home/personalize/LiveWallpaperPreview;->finish()V

    .line 112
    :cond_0
    const v7, 0x7f03000b

    invoke-virtual {p0, v7}, Lcom/htc/home/personalize/LiveWallpaperPreview;->setContentView(I)V

    .line 113
    invoke-virtual {p0}, Lcom/htc/home/personalize/LiveWallpaperPreview;->setupHeaderFooter()V

    .line 115
    const-string v7, "android.live_wallpaper.settings"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/home/personalize/LiveWallpaperPreview;->mSettings:Ljava/lang/String;

    .line 116
    const-string v7, "android.live_wallpaper.package"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/home/personalize/LiveWallpaperPreview;->mPackageName:Ljava/lang/String;

    .line 117
    iget-object v7, p0, Lcom/htc/home/personalize/LiveWallpaperPreview;->mSettings:Ljava/lang/String;

    if-nez v7, :cond_1

    .line 118
    iget-object v7, p0, Lcom/htc/home/personalize/LiveWallpaperPreview;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 119
    iget-object v7, p0, Lcom/htc/home/personalize/LiveWallpaperPreview;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

    iget-object v8, p0, Lcom/htc/home/personalize/LiveWallpaperPreview;->mBtn1Click:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v7, p0, Lcom/htc/home/personalize/LiveWallpaperPreview;->mFooterButtonLeft:Lcom/htc/widget/HtcFooterButton;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcFooterButton;->setVisibility(I)V

    .line 128
    :goto_1
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/home/personalize/LiveWallpaperPreview;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 130
    new-instance v7, Lcom/htc/home/personalize/LiveWallpaperPreview$WallpaperConnection;

    iget-object v8, p0, Lcom/htc/home/personalize/LiveWallpaperPreview;->mWallpaperIntent:Landroid/content/Intent;

    invoke-direct {v7, p0, v8}, Lcom/htc/home/personalize/LiveWallpaperPreview$WallpaperConnection;-><init>(Lcom/htc/home/personalize/LiveWallpaperPreview;Landroid/content/Intent;)V

    iput-object v7, p0, Lcom/htc/home/personalize/LiveWallpaperPreview;->mWallpaperConnection:Lcom/htc/home/personalize/LiveWallpaperPreview$WallpaperConnection;

    .line 133
    const v7, 0x7f0b0021

    :try_start_1
    invoke-virtual {p0, v7}, Lcom/htc/home/personalize/LiveWallpaperPreview;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/htc/home/personalize/LiveWallpaperPreview;->mWidgetPreview:Landroid/widget/ImageView;

    .line 134
    invoke-virtual {p0}, Lcom/htc/home/personalize/LiveWallpaperPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    .line 136
    const-string v7, "/data/data/com.htc.launcher/files/screen_cache.png"

    invoke-direct {p0, v7}, Lcom/htc/home/personalize/LiveWallpaperPreview;->initialWidgetPreview(Ljava/lang/String;)V

    .line 141
    :goto_2
    const-string v7, "common_app_bkg"

    const v8, 0x20806b7

    invoke-static {p0, v7, v8}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 142
    .local v0, background:I
    const v7, 0x7f0b0022

    invoke-virtual {p0, v7}, Lcom/htc/home/personalize/LiveWallpaperPreview;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 143
    .local v4, footerBackground:Landroid/widget/ImageView;
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 144
    const-string v7, "window"

    invoke-virtual {p0, v7}, Lcom/htc/home/personalize/LiveWallpaperPreview;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 145
    .local v1, display:Landroid/view/Display;
    invoke-virtual {p0}, Lcom/htc/home/personalize/LiveWallpaperPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x205017a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 146
    .local v5, footerHeight:I
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 147
    .local v6, matrix:Landroid/graphics/Matrix;
    const/4 v7, 0x0

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v8

    sub-int/2addr v8, v5

    neg-int v8, v8

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 148
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    .line 155
    .end local v0           #background:I
    .end local v1           #display:Landroid/view/Display;
    .end local v4           #footerBackground:Landroid/widget/ImageView;
    .end local v5           #footerHeight:I
    .end local v6           #matrix:Landroid/graphics/Matrix;
    :goto_3
    return-void

    .line 122
    :cond_1
    iget-object v7, p0, Lcom/htc/home/personalize/LiveWallpaperPreview;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 123
    iget-object v7, p0, Lcom/htc/home/personalize/LiveWallpaperPreview;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

    iget-object v8, p0, Lcom/htc/home/personalize/LiveWallpaperPreview;->mBtn1Click:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v7, p0, Lcom/htc/home/personalize/LiveWallpaperPreview;->mFooterButtonLeft:Lcom/htc/widget/HtcFooterButton;

    const v8, 0x7f09000a

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 125
    iget-object v7, p0, Lcom/htc/home/personalize/LiveWallpaperPreview;->mFooterButtonLeft:Lcom/htc/widget/HtcFooterButton;

    iget-object v8, p0, Lcom/htc/home/personalize/LiveWallpaperPreview;->mBtn2Click:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 138
    :cond_2
    :try_start_2
    const-string v7, "/data/data/com.htc.launcher/files/screen_cache_land.png"

    invoke-direct {p0, v7}, Lcom/htc/home/personalize/LiveWallpaperPreview;->initialWidgetPreview(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 149
    :catch_0
    move-exception v2

    .line 150
    .local v2, ex:Ljava/lang/OutOfMemoryError;
    const-string v7, "LiveWallpaperPreview"

    const-string v8, "OutOfMemoryErrorr while in LiveWallpaperPreview.onCreate()"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 152
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 153
    invoke-virtual {p0}, Lcom/htc/home/personalize/LiveWallpaperPreview;->finish()V

    goto :goto_3

    .line 105
    .end local v2           #ex:Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v7

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 214
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 215
    iget-object v0, p0, Lcom/htc/home/personalize/LiveWallpaperPreview;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/htc/home/personalize/LiveWallpaperPreview;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 217
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/home/personalize/LiveWallpaperPreview;->mBitmap:Landroid/graphics/Bitmap;

    .line 218
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 219
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 261
    invoke-super {p0}, Landroid/app/Activity;->onDetachedFromWindow()V

    .line 263
    iget-object v0, p0, Lcom/htc/home/personalize/LiveWallpaperPreview;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/home/personalize/LiveWallpaperPreview;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/LiveWallpaperPreview;->mWallpaperConnection:Lcom/htc/home/personalize/LiveWallpaperPreview$WallpaperConnection;

    if-eqz v0, :cond_1

    .line 267
    :try_start_0
    iget-object v0, p0, Lcom/htc/home/personalize/LiveWallpaperPreview;->mWallpaperConnection:Lcom/htc/home/personalize/LiveWallpaperPreview$WallpaperConnection;

    invoke-virtual {v0}, Lcom/htc/home/personalize/LiveWallpaperPreview$WallpaperConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/home/personalize/LiveWallpaperPreview;->mWallpaperConnection:Lcom/htc/home/personalize/LiveWallpaperPreview$WallpaperConnection;

    .line 272
    return-void

    .line 268
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 201
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 202
    iget-object v0, p0, Lcom/htc/home/personalize/LiveWallpaperPreview;->mWallpaperConnection:Lcom/htc/home/personalize/LiveWallpaperPreview$WallpaperConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/home/personalize/LiveWallpaperPreview;->mWallpaperConnection:Lcom/htc/home/personalize/LiveWallpaperPreview$WallpaperConnection;

    iget-object v0, v0, Lcom/htc/home/personalize/LiveWallpaperPreview$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v0, :cond_0

    .line 204
    :try_start_0
    iget-object v0, p0, Lcom/htc/home/personalize/LiveWallpaperPreview;->mWallpaperConnection:Lcom/htc/home/personalize/LiveWallpaperPreview$WallpaperConnection;

    iget-object v0, v0, Lcom/htc/home/personalize/LiveWallpaperPreview$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/service/wallpaper/IWallpaperEngine;->setVisibility(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 205
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 189
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 190
    iget-object v0, p0, Lcom/htc/home/personalize/LiveWallpaperPreview;->mWallpaperConnection:Lcom/htc/home/personalize/LiveWallpaperPreview$WallpaperConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/home/personalize/LiveWallpaperPreview;->mWallpaperConnection:Lcom/htc/home/personalize/LiveWallpaperPreview$WallpaperConnection;

    iget-object v0, v0, Lcom/htc/home/personalize/LiveWallpaperPreview$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v0, :cond_0

    .line 192
    :try_start_0
    iget-object v0, p0, Lcom/htc/home/personalize/LiveWallpaperPreview;->mWallpaperConnection:Lcom/htc/home/personalize/LiveWallpaperPreview$WallpaperConnection;

    iget-object v0, v0, Lcom/htc/home/personalize/LiveWallpaperPreview$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/service/wallpaper/IWallpaperEngine;->setVisibility(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 193
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setLiveWallpaper(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 159
    :try_start_0
    iget-object v1, p0, Lcom/htc/home/personalize/LiveWallpaperPreview;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getIWallpaperManager()Landroid/app/IWallpaperManager;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/home/personalize/LiveWallpaperPreview;->mWallpaperIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/app/IWallpaperManager;->setWallpaperComponent(Landroid/content/ComponentName;)V

    .line 161
    iget-object v1, p0, Lcom/htc/home/personalize/LiveWallpaperPreview;->mWallpaperManager:Landroid/app/WallpaperManager;

    const/high16 v2, 0x3f00

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/WallpaperManager;->setWallpaperOffsetSteps(FF)V

    .line 162
    iget-object v1, p0, Lcom/htc/home/personalize/LiveWallpaperPreview;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/high16 v3, 0x3f00

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/WallpaperManager;->setWallpaperOffsets(Landroid/os/IBinder;FF)V

    .line 163
    iget-object v1, p0, Lcom/htc/home/personalize/LiveWallpaperPreview;->mWallpaperLabel:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/htc/home/personalize/LiveWallpaperPreview;->notifyWallpaperTitle(Ljava/lang/String;)V

    .line 164
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/htc/home/personalize/LiveWallpaperPreview;->setResult(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 170
    :goto_0
    invoke-virtual {p0}, Lcom/htc/home/personalize/LiveWallpaperPreview;->finish()V

    .line 171
    return-void

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "LiveWallpaperPreview"

    const-string v2, "Failure setting live wallpaper"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 167
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 168
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "LiveWallpaperPreview"

    const-string v2, "Failure setting live wallpaper"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setupHeaderFooter()V
    .locals 1

    .prologue
    .line 92
    const v0, 0x7f0b0023

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/LiveWallpaperPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooter;

    iput-object v0, p0, Lcom/htc/home/personalize/LiveWallpaperPreview;->mFooterBar:Lcom/htc/widget/HtcFooter;

    .line 93
    const v0, 0x7f0b0002

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/LiveWallpaperPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    iput-object v0, p0, Lcom/htc/home/personalize/LiveWallpaperPreview;->mFooterButtonLeft:Lcom/htc/widget/HtcFooterButton;

    .line 94
    const v0, 0x7f0b0003

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/LiveWallpaperPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    iput-object v0, p0, Lcom/htc/home/personalize/LiveWallpaperPreview;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

    .line 95
    return-void
.end method
