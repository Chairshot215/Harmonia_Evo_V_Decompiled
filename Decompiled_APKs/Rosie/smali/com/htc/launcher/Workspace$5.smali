.class Lcom/htc/launcher/Workspace$5;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/launcher/Workspace;->showStatusBar(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/Workspace;

.field final synthetic val$shouldShow:Z


# direct methods
.method constructor <init>(Lcom/htc/launcher/Workspace;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2495
    iput-object p1, p0, Lcom/htc/launcher/Workspace$5;->this$0:Lcom/htc/launcher/Workspace;

    iput-boolean p2, p0, Lcom/htc/launcher/Workspace$5;->val$shouldShow:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2497
    iget-object v2, p0, Lcom/htc/launcher/Workspace$5;->this$0:Lcom/htc/launcher/Workspace;

    #getter for: Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;
    invoke-static {v2}, Lcom/htc/launcher/Workspace;->access$100(Lcom/htc/launcher/Workspace;)Lcom/htc/launcher/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 2498
    .local v0, w:Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 2499
    .local v1, wlp:Landroid/view/WindowManager$LayoutParams;
    iget-boolean v2, p0, Lcom/htc/launcher/Workspace$5;->val$shouldShow:Z

    if-eqz v2, :cond_0

    .line 2500
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, -0x401

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2504
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2505
    return-void

    .line 2502
    :cond_0
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x400

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0
.end method
