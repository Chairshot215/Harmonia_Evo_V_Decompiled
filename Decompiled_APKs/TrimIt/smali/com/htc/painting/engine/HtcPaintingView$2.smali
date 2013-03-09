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
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/htc/painting/engine/HtcPaintingView$2;->this$0:Lcom/htc/painting/engine/HtcPaintingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDelete(Landroid/graphics/RectF;)V
    .locals 3
    .parameter "region"

    .prologue
    .line 204
    iget-object v2, p0, Lcom/htc/painting/engine/HtcPaintingView$2;->this$0:Lcom/htc/painting/engine/HtcPaintingView;

    iget-object v2, v2, Lcom/htc/painting/engine/HtcPaintingView;->mSelectionStrokes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 205
    iget-object v2, p0, Lcom/htc/painting/engine/HtcPaintingView$2;->this$0:Lcom/htc/painting/engine/HtcPaintingView;

    iget-object v2, v2, Lcom/htc/painting/engine/HtcPaintingView;->mSelectionStrokes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/painting/engine/stroke/Stroke;

    .line 206
    .local v1, s:Lcom/htc/painting/engine/stroke/Stroke;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/painting/engine/stroke/Stroke;->setEffective(Z)V

    goto :goto_0

    .line 208
    .end local v1           #s:Lcom/htc/painting/engine/stroke/Stroke;
    :cond_0
    iget-object v2, p0, Lcom/htc/painting/engine/HtcPaintingView$2;->this$0:Lcom/htc/painting/engine/HtcPaintingView;

    #calls: Lcom/htc/painting/engine/HtcPaintingView;->prepareCache()V
    invoke-static {v2}, Lcom/htc/painting/engine/HtcPaintingView;->access$000(Lcom/htc/painting/engine/HtcPaintingView;)V

    .line 209
    iget-object v2, p0, Lcom/htc/painting/engine/HtcPaintingView$2;->this$0:Lcom/htc/painting/engine/HtcPaintingView;

    iget-object v2, v2, Lcom/htc/painting/engine/HtcPaintingView;->mSelectionStrokes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 211
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public onMove(Landroid/graphics/RectF;FF)V
    .locals 4
    .parameter "region"
    .parameter "offsetX"
    .parameter "offsetY"

    .prologue
    .line 213
    iget-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView$2;->this$0:Lcom/htc/painting/engine/HtcPaintingView;

    iget-object v1, v1, Lcom/htc/painting/engine/HtcPaintingView;->mSelectionStrokes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 214
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 215
    .local v0, m:Landroid/graphics/Matrix;
    invoke-virtual {v0, p2, p3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 217
    iget-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView$2;->this$0:Lcom/htc/painting/engine/HtcPaintingView;

    const/4 v2, 0x0

    sget-object v3, Lcom/htc/painting/engine/StrokeGroup$SelectMode;->Contain:Lcom/htc/painting/engine/StrokeGroup$SelectMode;

    invoke-virtual {v1, v2, p1, v0, v3}, Lcom/htc/painting/engine/HtcPaintingView;->transformStroke(ILandroid/graphics/RectF;Landroid/graphics/Matrix;Lcom/htc/painting/engine/StrokeGroup$SelectMode;)Z

    .line 219
    .end local v0           #m:Landroid/graphics/Matrix;
    :cond_0
    return-void
.end method

.method public onSelectionChanged(Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 1
    .parameter "before"
    .parameter "after"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView$2;->this$0:Lcom/htc/painting/engine/HtcPaintingView;

    #calls: Lcom/htc/painting/engine/HtcPaintingView;->updateSeletion(Landroid/graphics/RectF;)V
    invoke-static {v0, p2}, Lcom/htc/painting/engine/HtcPaintingView;->access$300(Lcom/htc/painting/engine/HtcPaintingView;Landroid/graphics/RectF;)V

    .line 202
    return-void
.end method
