.class Lcom/htc/launcher/DragLayer$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DragLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/launcher/DragLayer;->hideFolder()V
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
    .line 1670
    iput-object p1, p0, Lcom/htc/launcher/DragLayer$3;->this$0:Lcom/htc/launcher/DragLayer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 1678
    iget-object v0, p0, Lcom/htc/launcher/DragLayer$3;->this$0:Lcom/htc/launcher/DragLayer;

    const/4 v1, 0x0

    #setter for: Lcom/htc/launcher/DragLayer;->m_openFolder:Lcom/htc/launcher/Folder;
    invoke-static {v0, v1}, Lcom/htc/launcher/DragLayer;->access$302(Lcom/htc/launcher/DragLayer;Lcom/htc/launcher/Folder;)Lcom/htc/launcher/Folder;

    .line 1679
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 1673
    iget-object v0, p0, Lcom/htc/launcher/DragLayer$3;->this$0:Lcom/htc/launcher/DragLayer;

    iget-object v1, p0, Lcom/htc/launcher/DragLayer$3;->this$0:Lcom/htc/launcher/DragLayer;

    #getter for: Lcom/htc/launcher/DragLayer;->m_openFolder:Lcom/htc/launcher/Folder;
    invoke-static {v1}, Lcom/htc/launcher/DragLayer;->access$300(Lcom/htc/launcher/DragLayer;)Lcom/htc/launcher/Folder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/launcher/DragLayer;->removeDropTarget(Lcom/htc/launcher/DropTarget;)V

    .line 1674
    return-void
.end method
