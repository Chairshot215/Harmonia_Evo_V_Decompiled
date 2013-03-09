.class Lcom/htc/launcher/Folder$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Folder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/launcher/Folder;->animateClose(Landroid/animation/AnimatorListenerAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/Folder;

.field final synthetic val$parentAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;


# direct methods
.method constructor <init>(Lcom/htc/launcher/Folder;Landroid/animation/AnimatorListenerAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1068
    iput-object p1, p0, Lcom/htc/launcher/Folder$6;->this$0:Lcom/htc/launcher/Folder;

    iput-object p2, p0, Lcom/htc/launcher/Folder$6;->val$parentAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 1071
    iget-object v0, p0, Lcom/htc/launcher/Folder$6;->val$parentAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1072
    iget-object v0, p0, Lcom/htc/launcher/Folder$6;->this$0:Lcom/htc/launcher/Folder;

    invoke-virtual {v0}, Lcom/htc/launcher/Folder;->onClose()V

    .line 1073
    iget-object v0, p0, Lcom/htc/launcher/Folder$6;->this$0:Lcom/htc/launcher/Folder;

    const/4 v1, 0x0

    #setter for: Lcom/htc/launcher/Folder;->m_state:I
    invoke-static {v0, v1}, Lcom/htc/launcher/Folder;->access$602(Lcom/htc/launcher/Folder;I)I

    .line 1074
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 1079
    iget-object v0, p0, Lcom/htc/launcher/Folder$6;->val$parentAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 1080
    iget-object v0, p0, Lcom/htc/launcher/Folder$6;->this$0:Lcom/htc/launcher/Folder;

    const/4 v1, 0x1

    #setter for: Lcom/htc/launcher/Folder;->m_state:I
    invoke-static {v0, v1}, Lcom/htc/launcher/Folder;->access$602(Lcom/htc/launcher/Folder;I)I

    .line 1081
    return-void
.end method
