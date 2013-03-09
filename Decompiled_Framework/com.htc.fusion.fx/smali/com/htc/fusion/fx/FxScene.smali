.class public Lcom/htc/fusion/fx/FxScene;
.super Lcom/htc/fusion/fx/FxTimelineControl;
.source "FxScene.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/fusion/fx/FxScene$1;,
        Lcom/htc/fusion/fx/FxScene$BasicFuture;,
        Lcom/htc/fusion/fx/FxScene$FutureBase;
    }
.end annotation


# direct methods
.method protected constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/fusion/fx/FxTimelineControl;-><init>(I)V

    return-void
.end method

.method public static create(Lcom/htc/fusion/fx/FxSceneLoader;)Lcom/htc/fusion/fx/FxScene;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/htc/fusion/fx/FxScene;->create(Lcom/htc/fusion/fx/FxSceneLoader;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    return-object v0
.end method

.method public static native create(Lcom/htc/fusion/fx/FxSceneLoader;Z)Lcom/htc/fusion/fx/FxScene;
.end method

.method public static create(Ljava/lang/String;)Lcom/htc/fusion/fx/FxScene;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/htc/fusion/fx/FxScene;->create(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    return-object v0
.end method

.method public static native create(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;
.end method

.method private native nativeGetSceneSnapshot(Lcom/htc/fusion/fx/FxScene$FutureBase;Landroid/graphics/Rect;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/fusion/fx/FxScene$FutureBase",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation
.end method


# virtual methods
.method public findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/htc/fusion/fx/FxScene;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/fusion/fx/FxControl;

    if-nez v1, :cond_0

    new-instance v1, Lcom/htc/fusion/fx/FxException;

    const-string v2, "Named descendant object is not a control"

    invoke-direct {v1, v2}, Lcom/htc/fusion/fx/FxException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    check-cast v0, Lcom/htc/fusion/fx/FxControl;

    return-object v0
.end method

.method public native getLoadedFile()Ljava/lang/String;
.end method

.method public getSceneSnapshot()Ljava/util/concurrent/Future;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v1, Lcom/htc/fusion/fx/FxScene$BasicFuture;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/fusion/fx/FxScene$BasicFuture;-><init>(Lcom/htc/fusion/fx/FxScene;Lcom/htc/fusion/fx/FxScene$1;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {p0, v1, v0}, Lcom/htc/fusion/fx/FxScene;->nativeGetSceneSnapshot(Lcom/htc/fusion/fx/FxScene$FutureBase;Landroid/graphics/Rect;)V

    return-object v1
.end method

.method public getSceneSnapshot(Landroid/graphics/Rect;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/htc/fusion/fx/FxScene$BasicFuture;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/fusion/fx/FxScene$BasicFuture;-><init>(Lcom/htc/fusion/fx/FxScene;Lcom/htc/fusion/fx/FxScene$1;)V

    invoke-direct {p0, v0, p1}, Lcom/htc/fusion/fx/FxScene;->nativeGetSceneSnapshot(Lcom/htc/fusion/fx/FxScene$FutureBase;Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public native isFileLoaded()Z
.end method

.method public native load(Lcom/htc/fusion/fx/FxSceneLoader;Z)Z
.end method

.method public load(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/fusion/fx/FxScene;->load(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public load(Ljava/lang/String;Z)Z
    .locals 1

    invoke-static {p1}, Lcom/htc/fusion/fx/FxSceneLoader;->create(Ljava/lang/String;)Lcom/htc/fusion/fx/FxSceneLoader;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/htc/fusion/fx/FxScene;->load(Lcom/htc/fusion/fx/FxSceneLoader;Z)Z

    move-result v0

    return v0
.end method

.method public native unload()V
.end method
