.class public Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;
.super Landroid/service/wallpaper/WallpaperService$Engine;
.source "FusionWallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Engine"
.end annotation


# instance fields
.field private PREFIX_ENGINE:Ljava/lang/String;

.field private mIsPauseRendering:Z

.field private mIsPortrait:Z

.field private mIsVisible:Z

.field private mScene:Lcom/htc/fusion/fx/FxScene;

.field private mSurface:Landroid/view/Surface;

.field private mUIMode:I

.field protected mViewObject:Lcom/htc/fusion/fx/FxViewObject;

.field final synthetic this$0:Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService;


# direct methods
.method public constructor <init>(Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 101
    iput-object p1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;->this$0:Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService;

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;-><init>(Landroid/service/wallpaper/WallpaperService;)V

    .line 90
    const-string v0, "[FusionWallpaperService_Wallpaper]: "

    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;->PREFIX_ENGINE:Ljava/lang/String;

    .line 91
    iput-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    .line 92
    iput-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;->mScene:Lcom/htc/fusion/fx/FxScene;

    .line 93
    iput-boolean v2, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;->mIsVisible:Z

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;->mIsPauseRendering:Z

    .line 96
    iput-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;->mSurface:Landroid/view/Surface;

    .line 97
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;->mUIMode:I

    .line 98
    iput-boolean v2, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;->mIsPortrait:Z

    .line 102
    return-void
.end method

.method private dispose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 149
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;->mScene:Lcom/htc/fusion/fx/FxScene;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;->mScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxViewObject;->removeScene(Lcom/htc/fusion/fx/FxScene;)V

    .line 152
    iput-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;->mScene:Lcom/htc/fusion/fx/FxScene;

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxViewObject;->dispose()V

    .line 155
    iput-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;->mIsPauseRendering:Z

    .line 158
    :cond_1
    return-void
.end method

.method private pauseRendering()V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;->mIsPauseRendering:Z

    if-nez v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxViewObject;->pauseRendering()V

    .line 240
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;->mIsPauseRendering:Z

    .line 242
    :cond_0
    return-void
.end method

.method private removeSurface()V
    .locals 6

    .prologue
    .line 279
    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    monitor-enter v1

    .line 280
    :try_start_0
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/htc/fusion/fx/FxViewObject;->setSurface(Landroid/view/Surface;III)V

    .line 284
    :cond_0
    monitor-exit v1

    .line 285
    return-void

    .line 284
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private resumeRendering()V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;->mIsPauseRendering:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;->mIsVisible:Z

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxViewObject;->resumeRendering()V

    .line 249
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;->mIsPauseRendering:Z

    .line 251
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "surfaceHolder"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;->this$0:Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService;

    invoke-static {v0}, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService;->access$008(Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService;)I

    .line 108
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onCreate(Landroid/view/SurfaceHolder;)V

    .line 109
    invoke-virtual {p0}, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;->isPreview()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;->this$0:Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService;

    iget-boolean v0, v0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService;->mIsDockMode:Z

    if-eqz v0, :cond_2

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[FusionWallpaperService_DockMode_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;->this$0:Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService;

    #getter for: Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService;->mIndex:I
    invoke-static {v1}, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService;->access$000(Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;->PREFIX_ENGINE:Ljava/lang/String;

    .line 119
    :cond_0
    :goto_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/htc/fusion/fx/FxViewObject;->create(Lcom/htc/fusion/fx/FxView;)Lcom/htc/fusion/fx/FxViewObject;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    .line 120
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxViewObject;->pauseRendering()V

    .line 125
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;->this$0:Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService;

    invoke-virtual {v1}, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService;->getPackageResourcePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxViewObject;->setPackageResourcePath(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;->this$0:Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService;

    iget-object v0, v0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService;->mResContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;->this$0:Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService;

    iget-object v1, v1, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService;->mResContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageResourcePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxViewObject;->setPackageResourcePath(Ljava/lang/String;)V

    .line 129
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;->mIsVisible:Z

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;->mIsPauseRendering:Z

    .line 131
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;->this$0:Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService;

    #calls: Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService;->addEngine(Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;)V
    invoke-static {v0, p0}, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService;->access$100(Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService;Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;)V

    .line 132
    return-void

    .line 114
    :cond_2
    const-string v0, "[FusionWallpaperService_Preview]: "

    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;->PREFIX_ENGINE:Ljava/lang/String;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;->mIsVisible:Z

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;->mIsPauseRendering:Z

    .line 140
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;->this$0:Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService;

    #calls: Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService;->removeEngine(Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;)V
    invoke-static {v0, p0}, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService;->access$200(Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService;Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;)V

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;->mSurface:Landroid/view/Surface;

    .line 142
    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;->dispose()V

    .line 143
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->onDestroy()V

    .line 144
    return-void
.end method

.method protected onOrientationionChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter "config"

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    .line 259
    const/4 v1, -0x1

    .line 260
    .local v1, newUiMode:I
    iget-boolean v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;->mIsPortrait:Z

    .line 261
    .local v0, isPort:Z
    iget-object v3, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;->this$0:Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService;

    iget-boolean v3, v3, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService;->mIsDockMode:Z

    if-eqz v3, :cond_1

    if-eqz p1, :cond_1

    .line 262
    iget v3, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v3, 0xf

    .line 263
    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v2, :cond_2

    move v0, v2

    .line 265
    :goto_0
    iget v2, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;->mUIMode:I

    if-ne v2, v4, :cond_3

    if-eq v1, v4, :cond_3

    .line 266
    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;->removeSurface()V

    .line 267
    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;->pauseRendering()V

    .line 272
    :cond_0
    :goto_1
    iput v1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;->mUIMode:I

    .line 275
    :cond_1
    return-void

    .line 263
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 269
    :cond_3
    iget-boolean v2, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;->mIsPortrait:Z

    if-eq v2, v0, :cond_0

    .line 270
    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;->removeSurface()V

    goto :goto_1
.end method

.method public onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 164
    invoke-super {p0, p1, p2, p3, p4}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 165
    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    monitor-enter v1

    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    if-eqz v0, :cond_0

    .line 167
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;->mSurface:Landroid/view/Surface;

    .line 168
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    iget-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v2, p2, p3, p4}, Lcom/htc/fusion/fx/FxViewObject;->setSurface(Landroid/view/Surface;III)V

    .line 169
    if-ge p3, p4, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;->mIsPortrait:Z

    .line 172
    :cond_0
    monitor-exit v1

    .line 173
    return-void

    .line 169
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 179
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 180
    return-void
.end method

.method public onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 186
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 187
    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;->removeSurface()V

    .line 188
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 194
    if-eqz p1, :cond_0

    .line 196
    iput-boolean p1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;->mIsVisible:Z

    .line 197
    if-nez p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;->setRenderStatus(Z)V

    .line 199
    :cond_0
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    .line 200
    if-nez p1, :cond_1

    .line 202
    iput-boolean p1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;->mIsVisible:Z

    .line 203
    if-nez p1, :cond_3

    :goto_1
    invoke-virtual {p0, v1}, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;->setRenderStatus(Z)V

    .line 205
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 197
    goto :goto_0

    :cond_3
    move v1, v2

    .line 203
    goto :goto_1
.end method

.method public setRenderStatus(Z)V
    .locals 0
    .parameter "isPause"

    .prologue
    .line 229
    if-eqz p1, :cond_0

    .line 230
    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;->pauseRendering()V

    .line 233
    :goto_0
    return-void

    .line 232
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;->resumeRendering()V

    goto :goto_0
.end method

.method public setScene(Lcom/htc/fusion/fx/FxScene;)V
    .locals 2
    .parameter "scene"

    .prologue
    .line 210
    if-nez p1, :cond_1

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;->mScene:Lcom/htc/fusion/fx/FxScene;

    if-eqz v0, :cond_2

    .line 219
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;->mScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxViewObject;->removeScene(Lcom/htc/fusion/fx/FxScene;)V

    .line 221
    :cond_2
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/FxViewObject;->addScene(Lcom/htc/fusion/fx/FxScene;)V

    .line 222
    iput-object p1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;->mScene:Lcom/htc/fusion/fx/FxScene;

    goto :goto_0
.end method
