.class Lcom/htc/launcher/DesktopItemController$LaunchShortcutRunnable;
.super Ljava/lang/Object;
.source "DesktopItemController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/DesktopItemController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LaunchShortcutRunnable"
.end annotation


# instance fields
.field mIntent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/htc/launcher/DesktopItemController;


# direct methods
.method constructor <init>(Lcom/htc/launcher/DesktopItemController;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter "intent"

    .prologue
    .line 1360
    iput-object p1, p0, Lcom/htc/launcher/DesktopItemController$LaunchShortcutRunnable;->this$0:Lcom/htc/launcher/DesktopItemController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1361
    iput-object p2, p0, Lcom/htc/launcher/DesktopItemController$LaunchShortcutRunnable;->mIntent:Landroid/content/Intent;

    .line 1362
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1364
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController$LaunchShortcutRunnable;->this$0:Lcom/htc/launcher/DesktopItemController;

    #getter for: Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;
    invoke-static {v0}, Lcom/htc/launcher/DesktopItemController;->access$200(Lcom/htc/launcher/DesktopItemController;)Lcom/htc/launcher/Launcher;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/launcher/DesktopItemController$LaunchShortcutRunnable;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/htc/launcher/Launcher;->startActivitySafely(Landroid/content/Intent;)V

    .line 1365
    return-void
.end method
