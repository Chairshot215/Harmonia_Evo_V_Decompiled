.class Lcom/htc/launcher/Folder$4;
.super Ljava/lang/Object;
.source "Folder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/launcher/Folder;->onDrop(Lcom/htc/launcher/DragSource;IIIILcom/htc/launcher/Draggee;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/Folder;

.field final synthetic val$info:Lcom/htc/launcher/ApplicationInfo;


# direct methods
.method constructor <init>(Lcom/htc/launcher/Folder;Lcom/htc/launcher/ApplicationInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 463
    iput-object p1, p0, Lcom/htc/launcher/Folder$4;->this$0:Lcom/htc/launcher/Folder;

    iput-object p2, p0, Lcom/htc/launcher/Folder$4;->val$info:Lcom/htc/launcher/ApplicationInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 466
    iget-object v0, p0, Lcom/htc/launcher/Folder$4;->val$info:Lcom/htc/launcher/ApplicationInfo;

    iget-object v1, p0, Lcom/htc/launcher/Folder$4;->this$0:Lcom/htc/launcher/Folder;

    iget-object v1, v1, Lcom/htc/launcher/Folder;->mFolderInfo:Lcom/htc/launcher/FolderInfo;

    iget-wide v1, v1, Lcom/htc/launcher/ItemInfo;->id:J

    iput-wide v1, v0, Lcom/htc/launcher/ItemInfo;->container:J

    .line 467
    iget-object v0, p0, Lcom/htc/launcher/Folder$4;->this$0:Lcom/htc/launcher/Folder;

    #setter for: Lcom/htc/launcher/Folder;->m_bSuppressOnAdd:Z
    invoke-static {v0, v3}, Lcom/htc/launcher/Folder;->access$302(Lcom/htc/launcher/Folder;Z)Z

    .line 468
    iget-object v0, p0, Lcom/htc/launcher/Folder$4;->this$0:Lcom/htc/launcher/Folder;

    iget-object v0, v0, Lcom/htc/launcher/Folder;->mFolderInfo:Lcom/htc/launcher/FolderInfo;

    iget-object v1, p0, Lcom/htc/launcher/Folder$4;->val$info:Lcom/htc/launcher/ApplicationInfo;

    invoke-virtual {v0, v1}, Lcom/htc/launcher/FolderInfo;->add(Lcom/htc/launcher/ApplicationInfo;)Z

    .line 469
    iget-object v0, p0, Lcom/htc/launcher/Folder$4;->this$0:Lcom/htc/launcher/Folder;

    #setter for: Lcom/htc/launcher/Folder;->m_bItemsInvalidated:Z
    invoke-static {v0, v3}, Lcom/htc/launcher/Folder;->access$402(Lcom/htc/launcher/Folder;Z)Z

    .line 470
    iget-object v0, p0, Lcom/htc/launcher/Folder$4;->this$0:Lcom/htc/launcher/Folder;

    iget-object v1, p0, Lcom/htc/launcher/Folder$4;->this$0:Lcom/htc/launcher/Folder;

    invoke-virtual {v1}, Lcom/htc/launcher/Folder;->getItemCount()I

    move-result v1

    #calls: Lcom/htc/launcher/Folder;->setupContentDimensions(I)V
    invoke-static {v0, v1}, Lcom/htc/launcher/Folder;->access$500(Lcom/htc/launcher/Folder;I)V

    .line 471
    return-void
.end method
