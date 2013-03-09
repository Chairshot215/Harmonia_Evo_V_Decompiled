.class Lcom/htc/launcher/Launcher$AddShortcutRunnable;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AddShortcutRunnable"
.end annotation


# instance fields
.field mData:Landroid/content/Intent;

.field final synthetic this$0:Lcom/htc/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/htc/launcher/Launcher;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter "data"

    .prologue
    .line 2804
    iput-object p1, p0, Lcom/htc/launcher/Launcher$AddShortcutRunnable;->this$0:Lcom/htc/launcher/Launcher;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2805
    iput-object p2, p0, Lcom/htc/launcher/Launcher$AddShortcutRunnable;->mData:Landroid/content/Intent;

    .line 2806
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 2810
    new-instance v0, Lcom/htc/launcher/CellInfo;

    invoke-direct {v0}, Lcom/htc/launcher/CellInfo;-><init>()V

    .line 2811
    .local v0, cell:Lcom/htc/launcher/CellInfo;
    iput v3, v0, Lcom/htc/launcher/CellInfo;->cellX:I

    .line 2812
    iput v3, v0, Lcom/htc/launcher/CellInfo;->cellY:I

    .line 2813
    iput v1, v0, Lcom/htc/launcher/CellInfo;->spanX:I

    .line 2814
    iput v1, v0, Lcom/htc/launcher/CellInfo;->spanY:I

    .line 2818
    iget-object v1, p0, Lcom/htc/launcher/Launcher$AddShortcutRunnable;->this$0:Lcom/htc/launcher/Launcher;

    const/4 v2, 0x0

    #setter for: Lcom/htc/launcher/Launcher;->mAddItemCellInfo:Lcom/htc/launcher/CellInfo;
    invoke-static {v1, v2}, Lcom/htc/launcher/Launcher;->access$3202(Lcom/htc/launcher/Launcher;Lcom/htc/launcher/CellInfo;)Lcom/htc/launcher/CellInfo;

    .line 2819
    iget-object v1, p0, Lcom/htc/launcher/Launcher$AddShortcutRunnable;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v1, v1, Lcom/htc/launcher/Launcher;->mDesktopItemController:Lcom/htc/launcher/DesktopItemController;

    iget-object v2, p0, Lcom/htc/launcher/Launcher$AddShortcutRunnable;->mData:Landroid/content/Intent;

    invoke-virtual {v1, v2, v0, v3}, Lcom/htc/launcher/DesktopItemController;->completeAddShortcut(Landroid/content/Intent;Lcom/htc/launcher/CellInfo;Z)V

    .line 2820
    return-void
.end method
