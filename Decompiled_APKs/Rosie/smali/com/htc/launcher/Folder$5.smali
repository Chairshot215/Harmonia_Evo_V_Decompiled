.class Lcom/htc/launcher/Folder$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Folder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/launcher/Folder;->animateOpen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/Folder;


# direct methods
.method constructor <init>(Lcom/htc/launcher/Folder;)V
    .locals 0
    .parameter

    .prologue
    .line 1041
    iput-object p1, p0, Lcom/htc/launcher/Folder$5;->this$0:Lcom/htc/launcher/Folder;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 1051
    iget-object v0, p0, Lcom/htc/launcher/Folder$5;->this$0:Lcom/htc/launcher/Folder;

    const/4 v1, 0x2

    #setter for: Lcom/htc/launcher/Folder;->m_state:I
    invoke-static {v0, v1}, Lcom/htc/launcher/Folder;->access$602(Lcom/htc/launcher/Folder;I)I

    .line 1052
    iget-object v0, p0, Lcom/htc/launcher/Folder$5;->this$0:Lcom/htc/launcher/Folder;

    invoke-virtual {v0}, Lcom/htc/launcher/Folder;->onOpen()V

    .line 1053
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 1045
    iget-object v0, p0, Lcom/htc/launcher/Folder$5;->this$0:Lcom/htc/launcher/Folder;

    const/4 v1, 0x1

    #setter for: Lcom/htc/launcher/Folder;->m_state:I
    invoke-static {v0, v1}, Lcom/htc/launcher/Folder;->access$602(Lcom/htc/launcher/Folder;I)I

    .line 1046
    return-void
.end method
