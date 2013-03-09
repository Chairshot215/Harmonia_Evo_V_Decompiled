.class public Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;
.super Ljava/lang/Object;
.source "FxSceneManager.java"


# static fields
.field private static final LANDSCAPE_PATH:Ljava/lang/String; = "Land/scenes/"

.field private static final LOG_TAG:Ljava/lang/String; = null

.field private static final PORTRAIT_PATH:Ljava/lang/String; = "Port/scenes/"

.field private static final localLOGD:Z


# instance fields
.field private mDisplay:Landroid/view/Display;

.field private mLandScenes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/fusion/fx/FxScene;",
            ">;"
        }
    .end annotation
.end field

.field private mLandScenesWithID:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/htc/fusion/fx/FxScene;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPortScenes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/fusion/fx/FxScene;",
            ">;"
        }
    .end annotation
.end field

.field private mPortScenesWithID:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/htc/fusion/fx/FxScene;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;->LOG_TAG:Ljava/lang/String;

    .line 18
    sget-boolean v0, Lcom/htc/launcher/settings/SettingUtil;->localLOGD:Z

    sput-boolean v0, Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;->localLOGD:Z

    return-void
.end method

.method private constructor <init>(Landroid/view/Display;)V
    .locals 1
    .parameter "display"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;->mPortScenes:Ljava/util/Map;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;->mLandScenes:Ljava/util/Map;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;->mPortScenesWithID:Ljava/util/Map;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;->mLandScenesWithID:Ljava/util/Map;

    .line 36
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;->mDisplay:Landroid/view/Display;

    .line 37
    return-void
.end method

.method private addFxScene(Ljava/lang/String;I)V
    .locals 6
    .parameter "path"
    .parameter "id"

    .prologue
    const/4 v5, 0x1

    .line 235
    sget-boolean v2, Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;->localLOGD:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addFxScene "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_0
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;->mPortScenesWithID:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 237
    .local v1, scenes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/htc/fusion/fx/FxScene;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Port/scenes/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/htc/fusion/fx/FxScene;->create(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    .line 238
    .local v0, scene:Lcom/htc/fusion/fx/FxScene;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isTabletDevice()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 241
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;->mLandScenesWithID:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #scenes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/htc/fusion/fx/FxScene;>;"
    check-cast v1, Ljava/util/Map;

    .line 242
    .restart local v1       #scenes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/htc/fusion/fx/FxScene;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Land/scenes/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/htc/fusion/fx/FxScene;->create(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    .line 243
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    :cond_1
    return-void
.end method

.method private createFxScene(Ljava/lang/String;)V
    .locals 5
    .parameter "path"

    .prologue
    const/4 v4, 0x1

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Port/scenes/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/htc/fusion/fx/FxScene;->create(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    .line 209
    .local v0, scene:Lcom/htc/fusion/fx/FxScene;
    sget-boolean v1, Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;->localLOGD:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createFxScene Port/scenes/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_0
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;->mPortScenes:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isTabletDevice()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Land/scenes/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/htc/fusion/fx/FxScene;->create(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    .line 214
    sget-boolean v1, Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;->localLOGD:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createFxScene Land/scenes/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_1
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;->mLandScenes:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    :cond_2
    return-void
.end method

.method private createFxScene(Ljava/lang/String;I)V
    .locals 6
    .parameter "path"
    .parameter "id"

    .prologue
    const/4 v5, 0x1

    .line 220
    sget-boolean v2, Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;->localLOGD:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createFxScene "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 222
    .local v1, scenes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/htc/fusion/fx/FxScene;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Port/scenes/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/htc/fusion/fx/FxScene;->create(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    .line 223
    .local v0, scene:Lcom/htc/fusion/fx/FxScene;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;->mPortScenesWithID:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isTabletDevice()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 227
    new-instance v1, Ljava/util/HashMap;

    .end local v1           #scenes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/htc/fusion/fx/FxScene;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 228
    .restart local v1       #scenes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/htc/fusion/fx/FxScene;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Land/scenes/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/htc/fusion/fx/FxScene;->create(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    .line 229
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;->mLandScenesWithID:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    :cond_1
    return-void
.end method

.method private deleteLandscapeFxScene(Ljava/lang/String;I)V
    .locals 5
    .parameter "path"
    .parameter "id"

    .prologue
    .line 185
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;->mLandScenesWithID:Ljava/util/Map;

    monitor-enter v2

    .line 186
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;->mLandScenesWithID:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 187
    .local v0, scenes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/htc/fusion/fx/FxScene;>;"
    if-nez v0, :cond_1

    .line 188
    sget-boolean v1, Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;->localLOGD:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FxScene not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_0
    monitor-exit v2

    .line 195
    :goto_0
    return-void

    .line 191
    :cond_1
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 192
    sget-boolean v1, Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;->localLOGD:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FxScene not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_2
    monitor-exit v2

    goto :goto_0

    .end local v0           #scenes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/htc/fusion/fx/FxScene;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private deletePortraitFxScene(Ljava/lang/String;I)V
    .locals 5
    .parameter "path"
    .parameter "id"

    .prologue
    .line 171
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;->mPortScenesWithID:Ljava/util/Map;

    monitor-enter v2

    .line 172
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;->mPortScenesWithID:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 173
    .local v0, scenes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/htc/fusion/fx/FxScene;>;"
    if-nez v0, :cond_1

    .line 174
    sget-boolean v1, Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;->localLOGD:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FxScene not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_0
    monitor-exit v2

    .line 181
    :goto_0
    return-void

    .line 177
    :cond_1
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 178
    sget-boolean v1, Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;->localLOGD:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FxScene not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_2
    monitor-exit v2

    goto :goto_0

    .end local v0           #scenes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/htc/fusion/fx/FxScene;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getInstance(Landroid/view/Display;)Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;
    .locals 1
    .parameter "display"

    .prologue
    .line 32
    new-instance v0, Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;

    invoke-direct {v0, p0}, Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;-><init>(Landroid/view/Display;)V

    return-object v0
.end method

.method private getLandscapeFxScene(Ljava/lang/String;)Lcom/htc/fusion/fx/FxScene;
    .locals 2
    .parameter "path"

    .prologue
    .line 68
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;->mLandScenes:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/FxScene;

    .line 69
    .local v0, scene:Lcom/htc/fusion/fx/FxScene;
    if-nez v0, :cond_0

    .line 70
    invoke-direct {p0, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;->createFxScene(Ljava/lang/String;)V

    .line 71
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;->mLandScenes:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #scene:Lcom/htc/fusion/fx/FxScene;
    check-cast v0, Lcom/htc/fusion/fx/FxScene;

    .line 74
    .restart local v0       #scene:Lcom/htc/fusion/fx/FxScene;
    :cond_0
    return-object v0
.end method

.method private getLandscapeFxScene(Ljava/lang/String;I)Lcom/htc/fusion/fx/FxScene;
    .locals 3
    .parameter "path"
    .parameter "id"

    .prologue
    .line 121
    const/4 v1, 0x0

    .line 122
    .local v1, scenes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/htc/fusion/fx/FxScene;>;"
    const/4 v0, 0x0

    .line 124
    .local v0, scene:Lcom/htc/fusion/fx/FxScene;
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;->mLandScenesWithID:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #scenes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/htc/fusion/fx/FxScene;>;"
    check-cast v1, Ljava/util/Map;

    .line 125
    .restart local v1       #scenes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/htc/fusion/fx/FxScene;>;"
    if-nez v1, :cond_0

    .line 126
    invoke-direct {p0, p1, p2}, Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;->createFxScene(Ljava/lang/String;I)V

    .line 127
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;->mLandScenesWithID:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #scenes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/htc/fusion/fx/FxScene;>;"
    check-cast v1, Ljava/util/Map;

    .line 130
    .restart local v1       #scenes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/htc/fusion/fx/FxScene;>;"
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #scene:Lcom/htc/fusion/fx/FxScene;
    check-cast v0, Lcom/htc/fusion/fx/FxScene;

    .line 131
    .restart local v0       #scene:Lcom/htc/fusion/fx/FxScene;
    if-nez v0, :cond_1

    .line 132
    invoke-direct {p0, p1, p2}, Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;->addFxScene(Ljava/lang/String;I)V

    .line 133
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #scene:Lcom/htc/fusion/fx/FxScene;
    check-cast v0, Lcom/htc/fusion/fx/FxScene;

    .line 136
    .restart local v0       #scene:Lcom/htc/fusion/fx/FxScene;
    :cond_1
    return-object v0
.end method

.method private getPotraitFxScene(Ljava/lang/String;)Lcom/htc/fusion/fx/FxScene;
    .locals 2
    .parameter "path"

    .prologue
    .line 58
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;->mPortScenes:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/FxScene;

    .line 59
    .local v0, scene:Lcom/htc/fusion/fx/FxScene;
    if-nez v0, :cond_0

    .line 60
    invoke-direct {p0, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;->createFxScene(Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;->mPortScenes:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #scene:Lcom/htc/fusion/fx/FxScene;
    check-cast v0, Lcom/htc/fusion/fx/FxScene;

    .line 64
    .restart local v0       #scene:Lcom/htc/fusion/fx/FxScene;
    :cond_0
    return-object v0
.end method

.method private getPotraitFxScene(Ljava/lang/String;I)Lcom/htc/fusion/fx/FxScene;
    .locals 3
    .parameter "path"
    .parameter "id"

    .prologue
    .line 102
    const/4 v1, 0x0

    .line 103
    .local v1, scenes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/htc/fusion/fx/FxScene;>;"
    const/4 v0, 0x0

    .line 105
    .local v0, scene:Lcom/htc/fusion/fx/FxScene;
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;->mPortScenesWithID:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #scenes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/htc/fusion/fx/FxScene;>;"
    check-cast v1, Ljava/util/Map;

    .line 106
    .restart local v1       #scenes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/htc/fusion/fx/FxScene;>;"
    if-nez v1, :cond_0

    .line 107
    invoke-direct {p0, p1, p2}, Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;->createFxScene(Ljava/lang/String;I)V

    .line 108
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;->mPortScenesWithID:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #scenes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/htc/fusion/fx/FxScene;>;"
    check-cast v1, Ljava/util/Map;

    .line 111
    .restart local v1       #scenes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/htc/fusion/fx/FxScene;>;"
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #scene:Lcom/htc/fusion/fx/FxScene;
    check-cast v0, Lcom/htc/fusion/fx/FxScene;

    .line 112
    .restart local v0       #scene:Lcom/htc/fusion/fx/FxScene;
    if-nez v0, :cond_1

    .line 113
    invoke-direct {p0, p1, p2}, Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;->addFxScene(Ljava/lang/String;I)V

    .line 114
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #scene:Lcom/htc/fusion/fx/FxScene;
    check-cast v0, Lcom/htc/fusion/fx/FxScene;

    .line 117
    .restart local v0       #scene:Lcom/htc/fusion/fx/FxScene;
    :cond_1
    return-object v0
.end method

.method private isPortrait()Z
    .locals 4

    .prologue
    .line 248
    invoke-static {}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->isPortrait()Z

    move-result v0

    .line 249
    .local v0, isPortrait:Z
    sget-boolean v1, Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;->localLOGD:Z

    if-eqz v1, :cond_0

    sget-object v2, Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPortrait "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_1

    const-string v1, "portrait"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_0
    return v0

    .line 249
    :cond_1
    const-string v1, "landscape"

    goto :goto_0
.end method


# virtual methods
.method public deleteFxScene(Ljava/lang/String;)V
    .locals 3
    .parameter "path"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;->mPortScenes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 80
    sget-boolean v0, Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;->localLOGD:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FxScene not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;->mLandScenes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 85
    sget-boolean v0, Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;->localLOGD:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FxScene not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public deleteFxScene(Ljava/lang/String;I)V
    .locals 1
    .parameter "path"
    .parameter "id"

    .prologue
    .line 199
    invoke-direct {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    invoke-direct {p0, p1, p2}, Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;->deletePortraitFxScene(Ljava/lang/String;I)V

    .line 205
    :goto_0
    return-void

    .line 203
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;->deleteLandscapeFxScene(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public deleteFxScene(Ljava/lang/String;IZ)V
    .locals 0
    .parameter "path"
    .parameter "id"
    .parameter "isPortrait"

    .prologue
    .line 162
    if-eqz p3, :cond_0

    .line 163
    invoke-direct {p0, p1, p2}, Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;->deletePortraitFxScene(Ljava/lang/String;I)V

    .line 167
    :goto_0
    return-void

    .line 165
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;->deleteLandscapeFxScene(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public getFxScene(Ljava/lang/String;)Lcom/htc/fusion/fx/FxScene;
    .locals 1
    .parameter "path"

    .prologue
    .line 40
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isTabletDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;->isPortrait()Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    invoke-direct {p0, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;->getLandscapeFxScene(Ljava/lang/String;)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    .line 44
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;->getPotraitFxScene(Ljava/lang/String;)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    goto :goto_0
.end method

.method public getFxScene(Ljava/lang/String;I)Lcom/htc/fusion/fx/FxScene;
    .locals 6
    .parameter "path"
    .parameter "id"

    .prologue
    .line 140
    const/4 v0, 0x1

    .line 141
    .local v0, isPortrait:Z
    const/4 v2, 0x0

    .line 142
    .local v2, scenes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/htc/fusion/fx/FxScene;>;"
    const/4 v1, 0x0

    .line 143
    .local v1, scene:Lcom/htc/fusion/fx/FxScene;
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isTabletDevice()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;->isPortrait()Z

    move-result v3

    if-nez v3, :cond_1

    .line 144
    const/4 v0, 0x0

    .line 145
    invoke-direct {p0, p1, p2}, Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;->getLandscapeFxScene(Ljava/lang/String;I)Lcom/htc/fusion/fx/FxScene;

    move-result-object v1

    .line 152
    :goto_0
    if-nez v1, :cond_2

    .line 153
    sget-boolean v3, Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;->localLOGD:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFxScene return null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_0
    :goto_1
    return-object v1

    .line 148
    :cond_1
    const/4 v0, 0x1

    .line 149
    invoke-direct {p0, p1, p2}, Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;->getPotraitFxScene(Ljava/lang/String;I)Lcom/htc/fusion/fx/FxScene;

    move-result-object v1

    goto :goto_0

    .line 156
    :cond_2
    sget-boolean v3, Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;->localLOGD:Z

    if-eqz v3, :cond_0

    sget-object v4, Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFxScene return "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v0, :cond_3

    const-string v3, "port "

    :goto_2
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " / "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const-string v3, "land "

    goto :goto_2
.end method

.method public getFxScene(Ljava/lang/String;IZ)Lcom/htc/fusion/fx/FxScene;
    .locals 1
    .parameter "path"
    .parameter "id"
    .parameter "isPortrait"

    .prologue
    .line 91
    invoke-virtual {p0, p1, p2}, Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;->getFxScene(Ljava/lang/String;I)Lcom/htc/fusion/fx/FxScene;

    .line 93
    if-eqz p3, :cond_0

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;->getPotraitFxScene(Ljava/lang/String;I)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    .line 97
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;->getLandscapeFxScene(Ljava/lang/String;I)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    goto :goto_0
.end method

.method public getFxScene(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;
    .locals 1
    .parameter "path"
    .parameter "isPortrait"

    .prologue
    .line 49
    if-eqz p2, :cond_0

    .line 50
    invoke-direct {p0, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;->getPotraitFxScene(Ljava/lang/String;)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    .line 53
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;->getLandscapeFxScene(Ljava/lang/String;)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    goto :goto_0
.end method
