.class Lcom/htc/launcher/DesktopItemController$13;
.super Ljava/lang/Object;
.source "DesktopItemController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/launcher/DesktopItemController;->removeShortcutsForPackage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/DesktopItemController;

.field final synthetic val$folderInfo:Lcom/htc/launcher/FolderInfo;

.field final synthetic val$strPackageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/htc/launcher/DesktopItemController;Ljava/lang/String;Lcom/htc/launcher/FolderInfo;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1890
    iput-object p1, p0, Lcom/htc/launcher/DesktopItemController$13;->this$0:Lcom/htc/launcher/DesktopItemController;

    iput-object p2, p0, Lcom/htc/launcher/DesktopItemController$13;->val$strPackageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/htc/launcher/DesktopItemController$13;->val$folderInfo:Lcom/htc/launcher/FolderInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1895
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController$13;->this$0:Lcom/htc/launcher/DesktopItemController;

    iget-object v1, p0, Lcom/htc/launcher/DesktopItemController$13;->val$strPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/launcher/DesktopItemController$13;->val$folderInfo:Lcom/htc/launcher/FolderInfo;

    #calls: Lcom/htc/launcher/DesktopItemController;->removeItemFromFolder(Ljava/lang/String;Lcom/htc/launcher/FolderInfo;)V
    invoke-static {v0, v1, v2}, Lcom/htc/launcher/DesktopItemController;->access$700(Lcom/htc/launcher/DesktopItemController;Ljava/lang/String;Lcom/htc/launcher/FolderInfo;)V

    .line 1896
    return-void
.end method
