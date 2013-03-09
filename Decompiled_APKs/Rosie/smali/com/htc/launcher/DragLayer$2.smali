.class Lcom/htc/launcher/DragLayer$2;
.super Ljava/lang/Object;
.source "DragLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/launcher/DragLayer;->hideFolder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/DragLayer;

.field final synthetic val$folderInfo:Lcom/htc/launcher/FolderInfo;

.field final synthetic val$strTitle:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/htc/launcher/DragLayer;Lcom/htc/launcher/FolderInfo;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1661
    iput-object p1, p0, Lcom/htc/launcher/DragLayer$2;->this$0:Lcom/htc/launcher/DragLayer;

    iput-object p2, p0, Lcom/htc/launcher/DragLayer$2;->val$folderInfo:Lcom/htc/launcher/FolderInfo;

    iput-object p3, p0, Lcom/htc/launcher/DragLayer$2;->val$strTitle:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1664
    iget-object v0, p0, Lcom/htc/launcher/DragLayer$2;->val$folderInfo:Lcom/htc/launcher/FolderInfo;

    iget-object v1, p0, Lcom/htc/launcher/DragLayer$2;->val$strTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/launcher/FolderInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 1665
    iget-object v0, p0, Lcom/htc/launcher/DragLayer$2;->this$0:Lcom/htc/launcher/DragLayer;

    #getter for: Lcom/htc/launcher/DragLayer;->mLauncher:Lcom/htc/launcher/Launcher;
    invoke-static {v0}, Lcom/htc/launcher/DragLayer;->access$200(Lcom/htc/launcher/DragLayer;)Lcom/htc/launcher/Launcher;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/launcher/DragLayer$2;->val$folderInfo:Lcom/htc/launcher/FolderInfo;

    invoke-static {v0, v1}, Lcom/htc/launcher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/htc/launcher/ItemInfo;)V

    .line 1666
    return-void
.end method
