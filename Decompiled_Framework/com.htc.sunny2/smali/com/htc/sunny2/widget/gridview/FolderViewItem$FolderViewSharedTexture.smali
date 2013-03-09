.class public Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderViewSharedTexture;
.super Lcom/htc/sunny2/widget/gridview/GridViewItem$SharedTexture;
.source "FolderViewItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/widget/gridview/FolderViewItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "FolderViewSharedTexture"
.end annotation


# static fields
.field public static final NAME_TEXTUREE_SELECTED:Ljava/lang/String; = "NAME_TEXTUREE_SELECTED"


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/widget/gridview/FolderViewItem;


# direct methods
.method constructor <init>(Lcom/htc/sunny2/widget/gridview/FolderViewItem;Landroid/content/Context;II)V
    .locals 5

    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderViewSharedTexture;->this$0:Lcom/htc/sunny2/widget/gridview/FolderViewItem;

    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/GridViewItem$SharedTexture;-><init>()V

    #getter for: Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->access$000(Lcom/htc/sunny2/widget/gridview/FolderViewItem;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p3}, Lcom/htc/sunny2/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunny2/Texture;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewItem$SharedTexture;->textureSet:Ljava/util/HashMap;

    const-string v3, "NAME_TEXTURE_BACKGROUND"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #getter for: Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->access$100(Lcom/htc/sunny2/widget/gridview/FolderViewItem;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v4

    invoke-static {v2, p4, v3, v4}, Lcom/htc/sunny2/Texture;->createTexture(Landroid/content/Context;III)Lcom/htc/sunny2/Texture;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewItem$SharedTexture;->textureSet:Ljava/util/HashMap;

    const-string v3, "NAME_TEXTUREE_SELECTED"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public release()V
    .locals 3

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewItem$SharedTexture;->textureSet:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/Texture;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/htc/sunny2/Texture;->release()V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewItem$SharedTexture;->textureSet:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    return-void
.end method
