.class Lcom/htc/launcher/FolderIcon$1;
.super Ljava/lang/Object;
.source "FolderIcon.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/launcher/FolderIcon;->updateShortcutIcon()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/FolderIcon;


# direct methods
.method constructor <init>(Lcom/htc/launcher/FolderIcon;)V
    .locals 0
    .parameter

    .prologue
    .line 474
    iput-object p1, p0, Lcom/htc/launcher/FolderIcon$1;->this$0:Lcom/htc/launcher/FolderIcon;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 479
    iget-object v0, p0, Lcom/htc/launcher/FolderIcon$1;->this$0:Lcom/htc/launcher/FolderIcon;

    #getter for: Lcom/htc/launcher/FolderIcon;->m_info:Lcom/htc/launcher/FolderInfo;
    invoke-static {v0}, Lcom/htc/launcher/FolderIcon;->access$100(Lcom/htc/launcher/FolderIcon;)Lcom/htc/launcher/FolderInfo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/htc/launcher/FolderInfo;->m_bIsRemoved:Z

    if-eqz v0, :cond_0

    .line 484
    :goto_0
    return-void

    .line 482
    :cond_0
    const-string v0, "FolderIcon"

    const-string v1, "[EDIT_DEBUG] FolderIcon.updateShortcutIcon() --> updateFolderIconInDatabase()"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    iget-object v0, p0, Lcom/htc/launcher/FolderIcon$1;->this$0:Lcom/htc/launcher/FolderIcon;

    #calls: Lcom/htc/launcher/FolderIcon;->updateFolderIconInDatabase()V
    invoke-static {v0}, Lcom/htc/launcher/FolderIcon;->access$500(Lcom/htc/launcher/FolderIcon;)V

    goto :goto_0
.end method
