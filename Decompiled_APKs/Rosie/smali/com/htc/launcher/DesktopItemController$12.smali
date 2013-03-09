.class Lcom/htc/launcher/DesktopItemController$12;
.super Ljava/lang/Object;
.source "DesktopItemController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/launcher/DesktopItemController;->addFxShortcutAsync(Lcom/htc/launcher/FxShortcutInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/DesktopItemController;

.field final synthetic val$appItemInfo:Lcom/htc/launcher/FxShortcutInfo;


# direct methods
.method constructor <init>(Lcom/htc/launcher/DesktopItemController;Lcom/htc/launcher/FxShortcutInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1838
    iput-object p1, p0, Lcom/htc/launcher/DesktopItemController$12;->this$0:Lcom/htc/launcher/DesktopItemController;

    iput-object p2, p0, Lcom/htc/launcher/DesktopItemController$12;->val$appItemInfo:Lcom/htc/launcher/FxShortcutInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1840
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController$12;->this$0:Lcom/htc/launcher/DesktopItemController;

    iget-object v1, p0, Lcom/htc/launcher/DesktopItemController$12;->val$appItemInfo:Lcom/htc/launcher/FxShortcutInfo;

    invoke-virtual {v0, v1}, Lcom/htc/launcher/DesktopItemController;->bindFxShortcut(Lcom/htc/launcher/FxShortcutInfo;)V

    .line 1841
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController$12;->this$0:Lcom/htc/launcher/DesktopItemController;

    #getter for: Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;
    invoke-static {v0}, Lcom/htc/launcher/DesktopItemController;->access$200(Lcom/htc/launcher/DesktopItemController;)Lcom/htc/launcher/Launcher;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/launcher/DesktopItemController$12;->val$appItemInfo:Lcom/htc/launcher/FxShortcutInfo;

    invoke-static {v0, v1}, Lcom/htc/launcher/LauncherModel;->sendItemAdded(Landroid/content/Context;Lcom/htc/launcher/ItemInfo;)V

    .line 1842
    return-void
.end method
