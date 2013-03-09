.class public Lcom/htc/home/personalize/SceneProvider/WallpaperChangedManager;
.super Ljava/lang/Object;
.source "WallpaperChangedManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HomePersonalize.WallpaperChangedManager"

.field private static sWallpaperChangedManager:Lcom/htc/home/personalize/SceneProvider/WallpaperChangedManager;


# instance fields
.field private flagInSceneChange:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, "HomePersonalize.WallpaperChangedManager"

    const-string v1, "In WallpaperChangedManager()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/home/personalize/SceneProvider/WallpaperChangedManager;->flagInSceneChange:Z

    .line 17
    return-void
.end method

.method public static getInstance()Lcom/htc/home/personalize/SceneProvider/WallpaperChangedManager;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/htc/home/personalize/SceneProvider/WallpaperChangedManager;->sWallpaperChangedManager:Lcom/htc/home/personalize/SceneProvider/WallpaperChangedManager;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/htc/home/personalize/SceneProvider/WallpaperChangedManager;

    invoke-direct {v0}, Lcom/htc/home/personalize/SceneProvider/WallpaperChangedManager;-><init>()V

    sput-object v0, Lcom/htc/home/personalize/SceneProvider/WallpaperChangedManager;->sWallpaperChangedManager:Lcom/htc/home/personalize/SceneProvider/WallpaperChangedManager;

    .line 24
    :cond_0
    sget-object v0, Lcom/htc/home/personalize/SceneProvider/WallpaperChangedManager;->sWallpaperChangedManager:Lcom/htc/home/personalize/SceneProvider/WallpaperChangedManager;

    return-object v0
.end method


# virtual methods
.method public isInSceneChange()Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/htc/home/personalize/SceneProvider/WallpaperChangedManager;->flagInSceneChange:Z

    return v0
.end method

.method public setInSceneChange()V
    .locals 2

    .prologue
    .line 28
    const-string v0, "HomePersonalize.WallpaperChangedManager"

    const-string v1, "In setInSceneChange()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/home/personalize/SceneProvider/WallpaperChangedManager;->flagInSceneChange:Z

    .line 31
    return-void
.end method

.method public unsetInSceneChange()V
    .locals 2

    .prologue
    .line 34
    const-string v0, "HomePersonalize.WallpaperChangedManager"

    const-string v1, "In unsetInSceneChange()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/home/personalize/SceneProvider/WallpaperChangedManager;->flagInSceneChange:Z

    .line 37
    return-void
.end method
