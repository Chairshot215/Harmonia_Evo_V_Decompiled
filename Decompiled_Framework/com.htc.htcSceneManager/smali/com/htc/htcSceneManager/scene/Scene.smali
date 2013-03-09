.class public Lcom/htc/htcSceneManager/scene/Scene;
.super Ljava/lang/Object;
.source "Scene.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;
    }
.end annotation


# static fields
.field static final CURRENT_SCENE:I = 0x1

.field static final HOME_PERSONALIZE_FILE_DIR:Ljava/lang/String; = "/data/data/com.htc.home.personalize/files"

.field static final NON_CURRENT_SCENE:I = 0x0

.field static final PRE_HOME_WALLPAPER:Ljava/lang/String; = "home_wallpaper_"

.field public static final SCENE_DB_COLUMNS:[Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;


# instance fields
.field private mDisplayName:Landroid/os/Bundle;

.field private mId:I

.field private mIsCurrentScene:Z

.field private mLiveWallpaperComponent:Ljava/lang/String;

.field private mLockscreenWallpaper:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mOnlineSceneId:Ljava/lang/String;

.field private mPreviewPathLand:Ljava/lang/String;

.field private mPreviewPathPort:Ljava/lang/String;

.field private mStaticWallpaperPath:Ljava/lang/String;

.field private mTranslateId:I

.field private mType:Lcom/htc/htcSceneManager/scene/SceneManager$SceneType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    const/4 v1, 0x0

    sget-object v2, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->NAME:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->DISPLAY_NAME:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->TRANSLATE_ID:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->TYPE:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->PREVIEW_PORT:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->PREVIEW_LAND:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->LIVEWALLPAPER_PATH:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->STATICWALLPAPER_PATH:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->LOCLSCREEN_WALLPAPER:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->ONLINE_SCENE_ID:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->IS_CURRENT_SCENE:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/htcSceneManager/scene/Scene;->SCENE_DB_COLUMNS:[Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/htc/htcSceneManager/scene/Scene;->mId:I

    iput v0, p0, Lcom/htc/htcSceneManager/scene/Scene;->mTranslateId:I

    return-void
.end method

.method public static getHomeWallpaper(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    if-gez p1, :cond_0

    const-string v0, "/data/data/com.htc.home.personalize/files/home_wallpaper_"

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/data/com.htc.home.personalize/files/home_wallpaper_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getDisplayName()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/htc/htcSceneManager/scene/Scene;->mDisplayName:Landroid/os/Bundle;

    return-object v0
.end method

.method public getHomeWallpaper(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/htc/htcSceneManager/scene/Scene;->mId:I

    invoke-static {p1, v0}, Lcom/htc/htcSceneManager/scene/Scene;->getHomeWallpaper(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/htc/htcSceneManager/scene/Scene;->mId:I

    return v0
.end method

.method public getLiveWallpaperComponent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/htcSceneManager/scene/Scene;->mLiveWallpaperComponent:Ljava/lang/String;

    return-object v0
.end method

.method public getLockscreenWallpaper()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/htcSceneManager/scene/Scene;->mLockscreenWallpaper:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/htcSceneManager/scene/Scene;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getOnlineSceneId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/htcSceneManager/scene/Scene;->mOnlineSceneId:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviewPathLand()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/htcSceneManager/scene/Scene;->mPreviewPathLand:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviewPathPort()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/htcSceneManager/scene/Scene;->mPreviewPathPort:Ljava/lang/String;

    return-object v0
.end method

.method public getSceneType()Lcom/htc/htcSceneManager/scene/SceneManager$SceneType;
    .locals 1

    iget-object v0, p0, Lcom/htc/htcSceneManager/scene/Scene;->mType:Lcom/htc/htcSceneManager/scene/SceneManager$SceneType;

    return-object v0
.end method

.method public getStaticWallpaperPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/htcSceneManager/scene/Scene;->mStaticWallpaperPath:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/htcSceneManager/scene/Scene;->mDisplayName:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/htcSceneManager/scene/Scene;->mDisplayName:Landroid/os/Bundle;

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/htc/htcSceneManager/scene/Scene;->mName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getTranslateId()I
    .locals 1

    iget v0, p0, Lcom/htc/htcSceneManager/scene/Scene;->mTranslateId:I

    return v0
.end method

.method public isCurrentScene()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/htcSceneManager/scene/Scene;->mIsCurrentScene:Z

    return v0
.end method

.method public isLiveWallpaper()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/htcSceneManager/scene/Scene;->mLiveWallpaperComponent:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setCurrentScene(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/htcSceneManager/scene/Scene;->mIsCurrentScene:Z

    return-void
.end method

.method public setDisplayName(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/htcSceneManager/scene/Scene;->mDisplayName:Landroid/os/Bundle;

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/htc/htcSceneManager/scene/Scene;->mId:I

    return-void
.end method

.method public setLiveWallpaperComponent(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/htcSceneManager/scene/Scene;->mLiveWallpaperComponent:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/htcSceneManager/scene/Scene;->mStaticWallpaperPath:Ljava/lang/String;

    return-void
.end method

.method public setLockscreenWallpaper(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/htcSceneManager/scene/Scene;->mLockscreenWallpaper:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/htcSceneManager/scene/Scene;->mName:Ljava/lang/String;

    return-void
.end method

.method public setOnlineSceneId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/htcSceneManager/scene/Scene;->mOnlineSceneId:Ljava/lang/String;

    return-void
.end method

.method public setPreviewPathLand(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/htcSceneManager/scene/Scene;->mPreviewPathLand:Ljava/lang/String;

    return-void
.end method

.method public setPreviewPathPort(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/htcSceneManager/scene/Scene;->mPreviewPathPort:Ljava/lang/String;

    return-void
.end method

.method public setSceneType(Lcom/htc/htcSceneManager/scene/SceneManager$SceneType;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/htcSceneManager/scene/Scene;->mType:Lcom/htc/htcSceneManager/scene/SceneManager$SceneType;

    return-void
.end method

.method public setStaticWallpaperPath(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/htcSceneManager/scene/Scene;->mStaticWallpaperPath:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/htcSceneManager/scene/Scene;->mLiveWallpaperComponent:Ljava/lang/String;

    return-void
.end method

.method public setTranslateId(I)V
    .locals 0

    iput p1, p0, Lcom/htc/htcSceneManager/scene/Scene;->mTranslateId:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/htc/htcSceneManager/scene/Scene;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/htc/htcSceneManager/scene/Scene;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", translate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/htc/htcSceneManager/scene/Scene;->mTranslateId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/htc/htcSceneManager/scene/Scene;->mType:Lcom/htc/htcSceneManager/scene/SceneManager$SceneType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isCurrentScene: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/htc/htcSceneManager/scene/Scene;->mIsCurrentScene:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", preview: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/htc/htcSceneManager/scene/Scene;->mPreviewPathPort:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/htc/htcSceneManager/scene/Scene;->mPreviewPathLand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", wallpaper: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/htc/htcSceneManager/scene/Scene;->mLiveWallpaperComponent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/htc/htcSceneManager/scene/Scene;->mStaticWallpaperPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", onlineSceneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/htc/htcSceneManager/scene/Scene;->mOnlineSceneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
