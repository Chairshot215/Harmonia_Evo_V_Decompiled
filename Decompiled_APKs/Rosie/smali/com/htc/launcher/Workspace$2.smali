.class Lcom/htc/launcher/Workspace$2;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/Workspace;


# direct methods
.method constructor <init>(Lcom/htc/launcher/Workspace;)V
    .locals 0
    .parameter

    .prologue
    .line 1362
    iput-object p1, p0, Lcom/htc/launcher/Workspace$2;->this$0:Lcom/htc/launcher/Workspace;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1365
    iget-object v0, p0, Lcom/htc/launcher/Workspace$2;->this$0:Lcom/htc/launcher/Workspace;

    invoke-virtual {v0}, Lcom/htc/launcher/Workspace;->clearChildrenCache()V

    .line 1368
    iget-object v0, p0, Lcom/htc/launcher/Workspace$2;->this$0:Lcom/htc/launcher/Workspace;

    #getter for: Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;
    invoke-static {v0}, Lcom/htc/launcher/Workspace;->access$100(Lcom/htc/launcher/Workspace;)Lcom/htc/launcher/Launcher;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/launcher/Launcher;->raisePriority(Z)V

    .line 1370
    return-void
.end method
