.class public Lcom/htc/fusion/fx/controls/FxCellSceneContainer$RectangleSize;
.super Ljava/lang/Object;
.source "FxCellSceneContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fusion/fx/controls/FxCellSceneContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RectangleSize"
.end annotation


# instance fields
.field public nHeight:I

.field public nWidth:I

.field final synthetic this$0:Lcom/htc/fusion/fx/controls/FxCellSceneContainer;


# direct methods
.method public constructor <init>(Lcom/htc/fusion/fx/controls/FxCellSceneContainer;II)V
    .locals 0

    iput-object p1, p0, Lcom/htc/fusion/fx/controls/FxCellSceneContainer$RectangleSize;->this$0:Lcom/htc/fusion/fx/controls/FxCellSceneContainer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/htc/fusion/fx/controls/FxCellSceneContainer$RectangleSize;->nWidth:I

    iput p3, p0, Lcom/htc/fusion/fx/controls/FxCellSceneContainer$RectangleSize;->nHeight:I

    return-void
.end method
