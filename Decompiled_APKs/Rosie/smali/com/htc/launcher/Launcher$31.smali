.class Lcom/htc/launcher/Launcher$31;
.super Landroid/content/BroadcastReceiver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/Launcher;
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
    .line 8064
    iput-object p1, p0, Lcom/htc/launcher/Launcher$31;->this$0:Lcom/htc/launcher/Launcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "data"

    .prologue
    .line 8067
    sget-boolean v0, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "Rosie"

    const-string v1, "get weather wallpaper stop receive"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8068
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/Launcher$31;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mIsPause:Z
    invoke-static {v0}, Lcom/htc/launcher/Launcher;->access$3500(Lcom/htc/launcher/Launcher;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8069
    iget-object v0, p0, Lcom/htc/launcher/Launcher$31;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v0, v0, Lcom/htc/launcher/Launcher;->mWidgetsManager:Lcom/htc/launcher/WidgetsManager;

    iget-object v1, p0, Lcom/htc/launcher/Launcher$31;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v1, v1, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v1}, Lcom/htc/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/launcher/WidgetsManager;->fireVisible(I)V

    .line 8071
    :cond_1
    return-void
.end method
