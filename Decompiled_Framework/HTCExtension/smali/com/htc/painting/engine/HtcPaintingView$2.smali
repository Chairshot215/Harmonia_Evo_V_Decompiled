.class Lcom/htc/painting/engine/HtcPaintingView$2;
.super Ljava/lang/Object;
.source "HtcPaintingView.java"

# interfaces
.implements Lcom/htc/painting/engine/edit/StrokeEditView$OnStrokeEditListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/painting/engine/HtcPaintingView;->setupComponents(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/painting/engine/HtcPaintingView;


# direct methods
.method constructor <init>(Lcom/htc/painting/engine/HtcPaintingView;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/painting/engine/HtcPaintingView$2;->this$0:Lcom/htc/painting/engine/HtcPaintingView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDelete(Landroid/graphics/RectF;)V
    .locals 3

    iget-object v2, p0, Lcom/htc/painting/engine/HtcPaintingView$2;->this$0:Lcom/htc/painting/engine/HtcPaintingView;

    iget-object v2, v2, Lcom/htc/painting/engine/HtcPaintingView;->mSelectionStrokes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/htc/painting/engine/HtcPaintingView$2;->this$0:Lcom/htc/painting/engine/HtcPaintingView;

    iget-object v2, v2, Lcom/htc/painting/engine/HtcPaintingView;->mSelectionStrokes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/painting/engine/stroke/Stroke;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/painting/engine/stroke/Stroke;->setEffective(Z)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/htc/painting/engine/HtcPaintingView$2;->this$0:Lcom/htc/painting/engine/HtcPaintingView;

    #calls: Lcom/htc/painting/engine/HtcPaintingView;->prepareCache()V
    invoke-static {v2}, Lcom/htc/painting/engine/HtcPaintingView;->access$000(Lcom/htc/painting/engine/HtcPaintingView;)V

    iget-object v2, p0, Lcom/htc/painting/engine/HtcPaintingView$2;->this$0:Lcom/htc/painting/engine/HtcPaintingView;

    iget-object v2, v2, Lcom/htc/painting/engine/HtcPaintingView;->mSelectionStrokes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_1
    return-void
.end method

.method public onMove(Landroid/graphics/RectF;FF)V
    .locals 4

    iget-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView$2;->this$0:Lcom/htc/painting/engine/HtcPaintingView;

    iget-object v1, v1, Lcom/htc/painting/engine/HtcPaintingView;->mSelectionStrokes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v0, p2, p3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView$2;->this$0:Lcom/htc/painting/engine/HtcPaintingView;

    const/4 v2, 0x0

    sget-object v3, Lcom/htc/painting/engine/StrokeGroup$SelectMode;->Contain:Lcom/htc/painting/engine/StrokeGroup$SelectMode;

    invoke-virtual {v1, v2, p1, v0, v3}, Lcom/htc/painting/engine/HtcPaintingView;->transformStroke(ILandroid/graphics/RectF;Landroid/graphics/Matrix;Lcom/htc/painting/engine/StrokeGroup$SelectMode;)Z

    :cond_0
    return-void
.end method

.method public onSelectionChanged(Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView$2;->this$0:Lcom/htc/painting/engine/HtcPaintingView;

    #calls: Lcom/htc/painting/engine/HtcPaintingView;->updateSeletion(Landroid/graphics/RectF;)V
    invoke-static {v0, p2}, Lcom/htc/painting/engine/HtcPaintingView;->access$300(Lcom/htc/painting/engine/HtcPaintingView;Landroid/graphics/RectF;)V

    return-void
.end method
