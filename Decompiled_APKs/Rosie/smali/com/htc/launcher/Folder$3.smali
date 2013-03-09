.class Lcom/htc/launcher/Folder$3;
.super Ljava/lang/Object;
.source "Folder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/launcher/Folder;->updateItemLocationsInDatabase()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/Folder;

.field final synthetic val$infoList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/htc/launcher/Folder;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 372
    iput-object p1, p0, Lcom/htc/launcher/Folder$3;->this$0:Lcom/htc/launcher/Folder;

    iput-object p2, p0, Lcom/htc/launcher/Folder$3;->val$infoList:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 376
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/htc/launcher/Folder$3;->val$infoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 377
    iget-object v2, p0, Lcom/htc/launcher/Folder$3;->val$infoList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/launcher/ItemInfo;

    .line 378
    .local v1, info:Lcom/htc/launcher/ItemInfo;
    iget-object v2, p0, Lcom/htc/launcher/Folder$3;->this$0:Lcom/htc/launcher/Folder;

    iget-object v2, v2, Lcom/htc/launcher/Folder;->mFolderInfo:Lcom/htc/launcher/FolderInfo;

    check-cast v1, Lcom/htc/launcher/ApplicationInfo;

    .end local v1           #info:Lcom/htc/launcher/ItemInfo;
    invoke-virtual {v2, v1}, Lcom/htc/launcher/FolderInfo;->updatePosition(Lcom/htc/launcher/ApplicationInfo;)V

    .line 376
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 380
    :cond_0
    return-void
.end method
