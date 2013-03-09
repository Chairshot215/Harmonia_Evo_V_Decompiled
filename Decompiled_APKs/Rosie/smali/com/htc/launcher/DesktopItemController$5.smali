.class Lcom/htc/launcher/DesktopItemController$5;
.super Ljava/lang/Object;
.source "DesktopItemController.java"

# interfaces
.implements Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/DesktopItemController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/DesktopItemController;


# direct methods
.method constructor <init>(Lcom/htc/launcher/DesktopItemController;)V
    .locals 0
    .parameter

    .prologue
    .line 1333
    iput-object p1, p0, Lcom/htc/launcher/DesktopItemController$5;->this$0:Lcom/htc/launcher/DesktopItemController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/htc/launcher/FxItem;)V
    .locals 2
    .parameter "folder"

    .prologue
    .line 1337
    invoke-virtual {p1}, Lcom/htc/launcher/FxItem;->getInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/FolderInfo;

    .line 1338
    .local v0, folderInfo:Lcom/htc/launcher/FolderInfo;
    iget-object v1, p0, Lcom/htc/launcher/DesktopItemController$5;->this$0:Lcom/htc/launcher/DesktopItemController;

    invoke-virtual {v1, v0}, Lcom/htc/launcher/DesktopItemController;->onClickFolder(Lcom/htc/launcher/FolderInfo;)V

    .line 1339
    return-void
.end method
