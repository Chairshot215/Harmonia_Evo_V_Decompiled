.class Lcom/htc/launcher/Launcher$AddFxWidgetRunnable;
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
    name = "AddFxWidgetRunnable"
.end annotation


# instance fields
.field mCellInfo:Lcom/htc/launcher/CellInfo;

.field mIntent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/htc/launcher/Launcher;


# direct methods
.method public constructor <init>(Lcom/htc/launcher/Launcher;Landroid/content/Intent;Lcom/htc/launcher/CellInfo;)V
    .locals 0
    .parameter
    .parameter "intent"
    .parameter "info"

    .prologue
    .line 1165
    iput-object p1, p0, Lcom/htc/launcher/Launcher$AddFxWidgetRunnable;->this$0:Lcom/htc/launcher/Launcher;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1166
    iput-object p2, p0, Lcom/htc/launcher/Launcher$AddFxWidgetRunnable;->mIntent:Landroid/content/Intent;

    .line 1167
    iput-object p3, p0, Lcom/htc/launcher/Launcher$AddFxWidgetRunnable;->mCellInfo:Lcom/htc/launcher/CellInfo;

    .line 1168
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1171
    iget-object v0, p0, Lcom/htc/launcher/Launcher$AddFxWidgetRunnable;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v0, v0, Lcom/htc/launcher/Launcher;->mDesktopItemController:Lcom/htc/launcher/DesktopItemController;

    iget-object v1, p0, Lcom/htc/launcher/Launcher$AddFxWidgetRunnable;->mIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/htc/launcher/Launcher$AddFxWidgetRunnable;->mCellInfo:Lcom/htc/launcher/CellInfo;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/launcher/DesktopItemController;->addFxWidget(Landroid/content/Intent;Lcom/htc/launcher/CellInfo;Z)V

    .line 1172
    return-void
.end method
