.class Lcom/htc/launcher/UninstallShortcutReceiver$1;
.super Ljava/lang/Thread;
.source "UninstallShortcutReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/launcher/UninstallShortcutReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/UninstallShortcutReceiver;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$data:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/htc/launcher/UninstallShortcutReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/htc/launcher/UninstallShortcutReceiver$1;->this$0:Lcom/htc/launcher/UninstallShortcutReceiver;

    iput-object p2, p0, Lcom/htc/launcher/UninstallShortcutReceiver$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/htc/launcher/UninstallShortcutReceiver$1;->val$data:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 34
    const/16 v0, 0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 35
    iget-object v0, p0, Lcom/htc/launcher/UninstallShortcutReceiver$1;->this$0:Lcom/htc/launcher/UninstallShortcutReceiver;

    iget-object v1, p0, Lcom/htc/launcher/UninstallShortcutReceiver$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/launcher/UninstallShortcutReceiver$1;->val$data:Landroid/content/Intent;

    #calls: Lcom/htc/launcher/UninstallShortcutReceiver;->uninstallShortcut(Landroid/content/Context;Landroid/content/Intent;)V
    invoke-static {v0, v1, v2}, Lcom/htc/launcher/UninstallShortcutReceiver;->access$000(Lcom/htc/launcher/UninstallShortcutReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    .line 36
    return-void
.end method
