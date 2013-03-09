.class Lcom/android/systemui/ImageWallpaper$DrawableEngine$WallpaperObserver;
.super Landroid/content/BroadcastReceiver;
.source "ImageWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/ImageWallpaper$DrawableEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WallpaperObserver"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;


# direct methods
.method constructor <init>(Lcom/android/systemui/ImageWallpaper$DrawableEngine;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$WallpaperObserver;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$WallpaperObserver;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    #getter for: Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->access$000(Lcom/android/systemui/ImageWallpaper$DrawableEngine;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$WallpaperObserver;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$WallpaperObserver;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    const/4 v3, -0x1

    iput v3, v2, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundHeight:I

    iput v3, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundWidth:I

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$WallpaperObserver;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$WallpaperObserver;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mRedrawNeeded:Z

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$WallpaperObserver;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    invoke-virtual {v0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->drawFrameLocked()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
