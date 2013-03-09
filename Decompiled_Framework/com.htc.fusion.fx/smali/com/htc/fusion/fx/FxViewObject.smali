.class public Lcom/htc/fusion/fx/FxViewObject;
.super Lcom/htc/fusion/fx/FxObject;
.source "FxViewObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/fusion/fx/FxViewObject$1;,
        Lcom/htc/fusion/fx/FxViewObject$BasicFuture;,
        Lcom/htc/fusion/fx/FxViewObject$FutureBase;
    }
.end annotation


# direct methods
.method protected constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/fusion/fx/FxObject;-><init>(I)V

    return-void
.end method

.method private native clearJavaView()V
.end method

.method public static native create(Lcom/htc/fusion/fx/FxView;)Lcom/htc/fusion/fx/FxViewObject;
.end method

.method private native nativeCaptureBackBuffer(Lcom/htc/fusion/fx/FxViewObject$FutureBase;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/fusion/fx/FxViewObject$FutureBase",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation
.end method


# virtual methods
.method public native addScene(Lcom/htc/fusion/fx/FxScene;)V
.end method

.method public native captureBackBuffer()Landroid/graphics/Bitmap;
.end method

.method public captureBackBufferEx()Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/htc/fusion/fx/FxViewObject$BasicFuture;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/fusion/fx/FxViewObject$BasicFuture;-><init>(Lcom/htc/fusion/fx/FxViewObject;Lcom/htc/fusion/fx/FxViewObject$1;)V

    invoke-direct {p0, v0}, Lcom/htc/fusion/fx/FxViewObject;->nativeCaptureBackBuffer(Lcom/htc/fusion/fx/FxViewObject$FutureBase;)V

    return-object v0
.end method

.method public native createScene(Lcom/htc/fusion/fx/FxSceneLoader;Z)Lcom/htc/fusion/fx/FxScene;
.end method

.method public createScene(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;
    .locals 1

    invoke-static {p1}, Lcom/htc/fusion/fx/FxSceneLoader;->create(Ljava/lang/String;)Lcom/htc/fusion/fx/FxSceneLoader;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/htc/fusion/fx/FxViewObject;->createScene(Lcom/htc/fusion/fx/FxSceneLoader;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    return-object v0
.end method

.method public dispose()V
    .locals 0

    invoke-direct {p0}, Lcom/htc/fusion/fx/FxViewObject;->clearJavaView()V

    invoke-virtual {p0}, Lcom/htc/fusion/fx/FxViewObject;->clearHandle()V

    return-void
.end method

.method public native initLivePreviewHost(ZIZ)Z
.end method

.method public native loadLibraries(Ljava/lang/String;)Z
.end method

.method public native onTouchEvent(IIFF)Z
.end method

.method public native pauseRendering()V
.end method

.method public native perfReportsEnabled()Z
.end method

.method public native removeScene(Lcom/htc/fusion/fx/FxScene;)V
.end method

.method public native resumeRendering()V
.end method

.method public native setClearColor(I)V
.end method

.method public native setDescription(Ljava/lang/String;)V
.end method

.method public native setJavaView(Lcom/htc/fusion/fx/FxView;)V
.end method

.method public native setLivePreviewDescription(Ljava/lang/String;)V
.end method

.method public native setPackageResourcePath(Ljava/lang/String;)V
.end method

.method public native setSurface(Landroid/view/Surface;III)V
.end method

.method public native shutdownLivePreviewHost()V
.end method

.method public native waitForLivePreviewConnected()V
.end method

.method public native writePerfReport(Ljava/lang/String;)Z
.end method
