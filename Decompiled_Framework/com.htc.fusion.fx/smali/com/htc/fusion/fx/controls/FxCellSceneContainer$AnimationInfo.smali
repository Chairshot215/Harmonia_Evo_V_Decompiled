.class public Lcom/htc/fusion/fx/controls/FxCellSceneContainer$AnimationInfo;
.super Ljava/lang/Object;
.source "FxCellSceneContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fusion/fx/controls/FxCellSceneContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnimationInfo"
.end annotation


# instance fields
.field public scene:Lcom/htc/fusion/fx/FxScene;


# direct methods
.method public constructor <init>(Lcom/htc/fusion/fx/FxScene;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/htc/fusion/fx/controls/FxCellSceneContainer$AnimationInfo;->scene:Lcom/htc/fusion/fx/FxScene;

    return-void
.end method
