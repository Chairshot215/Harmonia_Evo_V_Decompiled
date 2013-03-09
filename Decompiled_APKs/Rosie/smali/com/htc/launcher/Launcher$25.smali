.class Lcom/htc/launcher/Launcher$25;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/launcher/Launcher;->prepareCurrentScreenCache()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/htc/launcher/Launcher;)V
    .locals 0
    .parameter

    .prologue
    .line 7274
    iput-object p1, p0, Lcom/htc/launcher/Launcher$25;->this$0:Lcom/htc/launcher/Launcher;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 7280
    iget-object v0, p0, Lcom/htc/launcher/Launcher$25;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v0, v0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/launcher/Workspace;->setWillNotCacheDrawing(Z)V

    .line 7281
    iget-object v0, p0, Lcom/htc/launcher/Launcher$25;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v0, v0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v0, v2}, Lcom/htc/launcher/Workspace;->setDrawingCacheEnabled(Z)V

    .line 7282
    iget-object v0, p0, Lcom/htc/launcher/Launcher$25;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v0, v0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v0, v2}, Lcom/htc/launcher/Workspace;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 7285
    return-void
.end method
