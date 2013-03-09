.class Lcom/htc/launcher/DragLayer$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DragLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/launcher/DragLayer;->fadeOutDragView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/DragLayer;


# direct methods
.method constructor <init>(Lcom/htc/launcher/DragLayer;)V
    .locals 0
    .parameter

    .prologue
    .line 2094
    iput-object p1, p0, Lcom/htc/launcher/DragLayer$8;->this$0:Lcom/htc/launcher/DragLayer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 2097
    iget-object v0, p0, Lcom/htc/launcher/DragLayer$8;->this$0:Lcom/htc/launcher/DragLayer;

    const/4 v1, 0x0

    #setter for: Lcom/htc/launcher/DragLayer;->m_dropView:Landroid/view/View;
    invoke-static {v0, v1}, Lcom/htc/launcher/DragLayer;->access$802(Lcom/htc/launcher/DragLayer;Landroid/view/View;)Landroid/view/View;

    .line 2098
    return-void
.end method
