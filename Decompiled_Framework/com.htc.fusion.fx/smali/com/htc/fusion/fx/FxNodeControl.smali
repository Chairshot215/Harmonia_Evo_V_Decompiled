.class public Lcom/htc/fusion/fx/FxNodeControl;
.super Lcom/htc/fusion/fx/FxControl;
.source "FxNodeControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/fusion/fx/FxNodeControl$1;,
        Lcom/htc/fusion/fx/FxNodeControl$SetVisibilityFutureIndex;,
        Lcom/htc/fusion/fx/FxNodeControl$BasicFuture;,
        Lcom/htc/fusion/fx/FxNodeControl$FutureBase;
    }
.end annotation


# direct methods
.method protected constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/fusion/fx/FxControl;-><init>(I)V

    return-void
.end method

.method private native setVisibilityNative(ZLcom/htc/fusion/fx/FxNodeControl$FutureBase;Lcom/htc/fusion/fx/FxNodeControl$FutureBase;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/htc/fusion/fx/FxNodeControl$FutureBase",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/htc/fusion/fx/FxNodeControl$FutureBase",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method


# virtual methods
.method public native getHighlight()I
.end method

.method public native getPosition()Lcom/htc/fusion/Point3F;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public native getSize()Landroid/graphics/PointF;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public native getTouchFilter()Z
.end method

.method public native getVisibility()Z
.end method

.method public native getWorldPosition()Lcom/htc/fusion/Point3F;
.end method

.method public native setHighlight(I)V
.end method

.method public native setPosition(Lcom/htc/fusion/Point3F;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public native setTouchFilter(Z)V
.end method

.method public setVisibility(Z)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
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

    new-instance v1, Lcom/htc/fusion/fx/FxNodeControl$BasicFuture;

    invoke-direct {v1, p0, v3}, Lcom/htc/fusion/fx/FxNodeControl$BasicFuture;-><init>(Lcom/htc/fusion/fx/FxNodeControl;Lcom/htc/fusion/fx/FxNodeControl$1;)V

    new-instance v2, Lcom/htc/fusion/fx/FxNodeControl$BasicFuture;

    invoke-direct {v2, p0, v3}, Lcom/htc/fusion/fx/FxNodeControl$BasicFuture;-><init>(Lcom/htc/fusion/fx/FxNodeControl;Lcom/htc/fusion/fx/FxNodeControl$1;)V

    invoke-direct {p0, p1, v1, v2}, Lcom/htc/fusion/fx/FxNodeControl;->setVisibilityNative(ZLcom/htc/fusion/fx/FxNodeControl$FutureBase;Lcom/htc/fusion/fx/FxNodeControl$FutureBase;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-object v0
.end method
