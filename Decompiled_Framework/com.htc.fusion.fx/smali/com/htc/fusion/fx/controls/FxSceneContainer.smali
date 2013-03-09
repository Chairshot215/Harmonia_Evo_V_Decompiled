.class public Lcom/htc/fusion/fx/controls/FxSceneContainer;
.super Lcom/htc/fusion/fx/FxTimelineControl;
.source "FxSceneContainer.java"


# direct methods
.method protected constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/fusion/fx/FxTimelineControl;-><init>(I)V

    return-void
.end method

.method public static native batchRemoveScenes([Lcom/htc/fusion/fx/controls/FxSceneContainer;[Lcom/htc/fusion/fx/FxObject;)V
.end method

.method public static native batchSetScenes([Lcom/htc/fusion/fx/controls/FxSceneContainer;[Lcom/htc/fusion/fx/FxScene;)V
.end method


# virtual methods
.method public native getScene()Lcom/htc/fusion/fx/FxScene;
.end method

.method public native removeScene(Lcom/htc/fusion/fx/FxObject;)V
.end method

.method public native setScene(Lcom/htc/fusion/fx/FxScene;)V
.end method
