.class Lcom/htc/launcher/DragView$2;
.super Ljava/lang/Object;
.source "DragView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/launcher/DragView;->remove()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/DragView;


# direct methods
.method constructor <init>(Lcom/htc/launcher/DragView;)V
    .locals 0
    .parameter

    .prologue
    .line 224
    iput-object p1, p0, Lcom/htc/launcher/DragView$2;->this$0:Lcom/htc/launcher/DragView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/htc/launcher/DragView$2;->this$0:Lcom/htc/launcher/DragView;

    #getter for: Lcom/htc/launcher/DragView;->m_dragLayer:Lcom/htc/launcher/DragLayer;
    invoke-static {v0}, Lcom/htc/launcher/DragView;->access$300(Lcom/htc/launcher/DragView;)Lcom/htc/launcher/DragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/launcher/DragView$2;->this$0:Lcom/htc/launcher/DragView;

    invoke-virtual {v0, v1}, Lcom/htc/launcher/DragLayer;->removeView(Landroid/view/View;)V

    .line 227
    return-void
.end method
