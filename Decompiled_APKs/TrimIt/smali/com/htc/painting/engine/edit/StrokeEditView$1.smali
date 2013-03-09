.class Lcom/htc/painting/engine/edit/StrokeEditView$1;
.super Ljava/lang/Object;
.source "StrokeEditView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/painting/engine/edit/StrokeEditView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/painting/engine/edit/StrokeEditView;


# direct methods
.method constructor <init>(Lcom/htc/painting/engine/edit/StrokeEditView;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/htc/painting/engine/edit/StrokeEditView$1;->this$0:Lcom/htc/painting/engine/edit/StrokeEditView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/htc/painting/engine/edit/StrokeEditView$1;->this$0:Lcom/htc/painting/engine/edit/StrokeEditView;

    iget-object v0, v0, Lcom/htc/painting/engine/edit/StrokeEditView;->mListener:Lcom/htc/painting/engine/edit/StrokeEditView$OnStrokeEditListener;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/htc/painting/engine/edit/StrokeEditView$1;->this$0:Lcom/htc/painting/engine/edit/StrokeEditView;

    iget-object v0, v0, Lcom/htc/painting/engine/edit/StrokeEditView;->mListener:Lcom/htc/painting/engine/edit/StrokeEditView$OnStrokeEditListener;

    iget-object v1, p0, Lcom/htc/painting/engine/edit/StrokeEditView$1;->this$0:Lcom/htc/painting/engine/edit/StrokeEditView;

    iget-object v1, v1, Lcom/htc/painting/engine/edit/StrokeEditView;->mSelectRegion:Landroid/graphics/RectF;

    invoke-interface {v0, v1}, Lcom/htc/painting/engine/edit/StrokeEditView$OnStrokeEditListener;->onDelete(Landroid/graphics/RectF;)V

    .line 57
    :cond_0
    return-void
.end method
