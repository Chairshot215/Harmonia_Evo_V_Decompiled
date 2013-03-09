.class public Lcom/htc/fusion/fx/controls/FxStreamingTexture;
.super Lcom/htc/fusion/fx/FxNodeControl;
.source "FxStreamingTexture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/fusion/fx/controls/FxStreamingTexture$1;,
        Lcom/htc/fusion/fx/controls/FxStreamingTexture$FxFutureIndex;,
        Lcom/htc/fusion/fx/controls/FxStreamingTexture$BasicFuture;,
        Lcom/htc/fusion/fx/controls/FxStreamingTexture$FutureBase;
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/fusion/fx/FxNodeControl;-><init>(I)V

    return-void
.end method

.method public static native flushCanvas(Landroid/graphics/Canvas;)Z
.end method

.method private native nativeGetBackbuffer(Lcom/htc/fusion/fx/controls/FxStreamingTexture$FutureBase;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/fusion/fx/controls/FxStreamingTexture$FutureBase",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation
.end method

.method private native nativeSwap(Lcom/htc/fusion/fx/controls/FxStreamingTexture$FutureBase;Lcom/htc/fusion/fx/controls/FxStreamingTexture$FutureBase;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/fusion/fx/controls/FxStreamingTexture$FutureBase",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/htc/fusion/fx/controls/FxStreamingTexture$FutureBase",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method


# virtual methods
.method public backBuffer()Ljava/util/concurrent/Future;
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

    new-instance v0, Lcom/htc/fusion/fx/controls/FxStreamingTexture$BasicFuture;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/fusion/fx/controls/FxStreamingTexture$BasicFuture;-><init>(Lcom/htc/fusion/fx/controls/FxStreamingTexture;Lcom/htc/fusion/fx/controls/FxStreamingTexture$1;)V

    invoke-direct {p0, v0}, Lcom/htc/fusion/fx/controls/FxStreamingTexture;->nativeGetBackbuffer(Lcom/htc/fusion/fx/controls/FxStreamingTexture$FutureBase;)V

    return-object v0
.end method

.method public demote()Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/htc/fusion/fx/controls/FxStreamingTexture$BasicFuture;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/fusion/fx/controls/FxStreamingTexture$BasicFuture;-><init>(Lcom/htc/fusion/fx/controls/FxStreamingTexture;Lcom/htc/fusion/fx/controls/FxStreamingTexture$1;)V

    new-instance v1, Ljava/lang/Boolean;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxStreamingTexture$BasicFuture;->set(Ljava/lang/Object;)V

    return-object v0
.end method

.method public promote(Z)Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/htc/fusion/fx/controls/FxStreamingTexture$BasicFuture;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/fusion/fx/controls/FxStreamingTexture$BasicFuture;-><init>(Lcom/htc/fusion/fx/controls/FxStreamingTexture;Lcom/htc/fusion/fx/controls/FxStreamingTexture$1;)V

    new-instance v1, Ljava/lang/Boolean;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxStreamingTexture$BasicFuture;->set(Ljava/lang/Object;)V

    return-object v0
.end method

.method public swap()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/htc/fusion/fx/controls/FxStreamingTexture$BasicFuture;

    invoke-direct {v1, p0, v3}, Lcom/htc/fusion/fx/controls/FxStreamingTexture$BasicFuture;-><init>(Lcom/htc/fusion/fx/controls/FxStreamingTexture;Lcom/htc/fusion/fx/controls/FxStreamingTexture$1;)V

    new-instance v2, Lcom/htc/fusion/fx/controls/FxStreamingTexture$BasicFuture;

    invoke-direct {v2, p0, v3}, Lcom/htc/fusion/fx/controls/FxStreamingTexture$BasicFuture;-><init>(Lcom/htc/fusion/fx/controls/FxStreamingTexture;Lcom/htc/fusion/fx/controls/FxStreamingTexture$1;)V

    invoke-direct {p0, v1, v2}, Lcom/htc/fusion/fx/controls/FxStreamingTexture;->nativeSwap(Lcom/htc/fusion/fx/controls/FxStreamingTexture$FutureBase;Lcom/htc/fusion/fx/controls/FxStreamingTexture$FutureBase;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-object v0
.end method
