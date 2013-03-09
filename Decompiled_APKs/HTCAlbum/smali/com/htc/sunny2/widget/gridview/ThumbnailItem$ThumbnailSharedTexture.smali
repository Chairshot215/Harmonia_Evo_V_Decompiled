.class public Lcom/htc/sunny2/widget/gridview/ThumbnailItem$ThumbnailSharedTexture;
.super Lcom/htc/sunny2/widget/gridview/GridViewItem$SharedTexture;
.source "ThumbnailItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/widget/gridview/ThumbnailItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ThumbnailSharedTexture"
.end annotation


# static fields
.field public static final NAME_TEXTUREE_3D:Ljava/lang/String; = "NAME_TEXTUREE_3D"

.field public static final NAME_TEXTUREE_DELETE:Ljava/lang/String; = "NAME_TEXTUREE_DELETE"

.field public static final NAME_TEXTUREE_DRM:Ljava/lang/String; = "NAME_TEXTUREE_DRM"

.field public static final NAME_TEXTUREE_DRM_CORRUPT:Ljava/lang/String; = "NAME_TEXTUREE_DRM_CORRUPT"

.field public static final NAME_TEXTUREE_IMAGE_CORRUPT:Ljava/lang/String; = "NAME_TEXTUREE_IMAGE_CORRUPT"

.field public static final NAME_TEXTUREE_PICKED:Ljava/lang/String; = "NAME_TEXTUREE_PICKED"

.field public static final NAME_TEXTUREE_PLAYABLE:Ljava/lang/String; = "NAME_TEXTUREE_PLAYABLE"

.field public static final NAME_TEXTUREE_SELECTED:Ljava/lang/String; = "NAME_TEXTUREE_SELECTED"

.field public static final NAME_TEXTUREE_UNPICKED:Ljava/lang/String; = "NAME_TEXTUREE_UNPICKED"

.field public static final NAME_TEXTUREE_VIDEO_CORRUPT:Ljava/lang/String; = "NAME_TEXTUREE_VIDEO_CORRUPT"


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/widget/gridview/ThumbnailItem;


# direct methods
.method constructor <init>(Lcom/htc/sunny2/widget/gridview/ThumbnailItem;Landroid/content/Context;)V
    .locals 6
    .parameter
    .parameter "context"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem$ThumbnailSharedTexture;->this$0:Lcom/htc/sunny2/widget/gridview/ThumbnailItem;

    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/GridViewItem$SharedTexture;-><init>()V

    .line 52
    const/4 v0, 0x0

    .line 53
    .local v0, resid:I
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem$ThumbnailSharedTexture;->textureSet:Ljava/util/HashMap;

    const-string v2, "NAME_TEXTURE_BACKGROUND"

    #getter for: Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->access$000(Lcom/htc/sunny2/widget/gridview/ThumbnailItem;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f020006

    invoke-static {v3, v4}, Lcom/htc/sunny2/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunny2/Texture;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem$ThumbnailSharedTexture;->textureSet:Ljava/util/HashMap;

    const-string v2, "NAME_TEXTUREE_DRM"

    #getter for: Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->access$100(Lcom/htc/sunny2/widget/gridview/ThumbnailItem;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f020015

    invoke-static {v3, v4}, Lcom/htc/sunny2/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunny2/Texture;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem$ThumbnailSharedTexture;->textureSet:Ljava/util/HashMap;

    const-string v2, "NAME_TEXTUREE_PLAYABLE"

    #getter for: Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->access$200(Lcom/htc/sunny2/widget/gridview/ThumbnailItem;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f020023

    invoke-static {v3, v4}, Lcom/htc/sunny2/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunny2/Texture;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem$ThumbnailSharedTexture;->textureSet:Ljava/util/HashMap;

    const-string v2, "NAME_TEXTUREE_IMAGE_CORRUPT"

    #getter for: Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->access$300(Lcom/htc/sunny2/widget/gridview/ThumbnailItem;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f020025

    invoke-static {v3, v4}, Lcom/htc/sunny2/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunny2/Texture;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem$ThumbnailSharedTexture;->textureSet:Ljava/util/HashMap;

    const-string v2, "NAME_TEXTUREE_VIDEO_CORRUPT"

    #getter for: Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->access$400(Lcom/htc/sunny2/widget/gridview/ThumbnailItem;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f020021

    invoke-static {v3, v4}, Lcom/htc/sunny2/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunny2/Texture;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem$ThumbnailSharedTexture;->textureSet:Ljava/util/HashMap;

    const-string v2, "NAME_TEXTUREE_DRM_CORRUPT"

    #getter for: Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->access$500(Lcom/htc/sunny2/widget/gridview/ThumbnailItem;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f020014

    invoke-static {v3, v4}, Lcom/htc/sunny2/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunny2/Texture;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    #getter for: Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->access$600(Lcom/htc/sunny2/widget/gridview/ThumbnailItem;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Checkbox_on(Landroid/content/Context;)I

    move-result v0

    .line 66
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem$ThumbnailSharedTexture;->textureSet:Ljava/util/HashMap;

    const-string v2, "NAME_TEXTUREE_PICKED"

    #getter for: Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->access$700(Lcom/htc/sunny2/widget/gridview/ThumbnailItem;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/htc/sunny2/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunny2/Texture;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    #getter for: Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->access$800(Lcom/htc/sunny2/widget/gridview/ThumbnailItem;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Checkbox_off(Landroid/content/Context;)I

    move-result v0

    .line 68
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem$ThumbnailSharedTexture;->textureSet:Ljava/util/HashMap;

    const-string v2, "NAME_TEXTUREE_UNPICKED"

    #getter for: Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->access$900(Lcom/htc/sunny2/widget/gridview/ThumbnailItem;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/htc/sunny2/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunny2/Texture;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    #getter for: Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->access$1000(Lcom/htc/sunny2/widget/gridview/ThumbnailItem;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_GridViewSelector(Landroid/content/Context;)I

    move-result v0

    .line 71
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem$ThumbnailSharedTexture;->textureSet:Ljava/util/HashMap;

    const-string v2, "NAME_TEXTUREE_SELECTED"

    #getter for: Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->access$1100(Lcom/htc/sunny2/widget/gridview/ThumbnailItem;)Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->HEIGHT_GRID:I

    sget v5, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->HEIGHT_GRID:I

    invoke-static {v3, v0, v4, v5}, Lcom/htc/sunny2/Texture;->createTexture(Landroid/content/Context;III)Lcom/htc/sunny2/Texture;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem$ThumbnailSharedTexture;->textureSet:Ljava/util/HashMap;

    const-string v2, "NAME_TEXTUREE_DELETE"

    #getter for: Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->access$1200(Lcom/htc/sunny2/widget/gridview/ThumbnailItem;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f02000a

    invoke-static {v3, v4}, Lcom/htc/sunny2/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunny2/Texture;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem$ThumbnailSharedTexture;->textureSet:Ljava/util/HashMap;

    const-string v2, "NAME_TEXTUREE_3D"

    #getter for: Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->access$1300(Lcom/htc/sunny2/widget/gridview/ThumbnailItem;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f020012

    invoke-static {v3, v4}, Lcom/htc/sunny2/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunny2/Texture;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    return-void
.end method


# virtual methods
.method public release()V
    .locals 3

    .prologue
    .line 82
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem$ThumbnailSharedTexture;->textureSet:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/Texture;

    .line 83
    .local v1, t:Lcom/htc/sunny2/Texture;
    if-eqz v1, :cond_0

    .line 84
    invoke-virtual {v1}, Lcom/htc/sunny2/Texture;->release()V

    goto :goto_0

    .line 86
    .end local v1           #t:Lcom/htc/sunny2/Texture;
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem$ThumbnailSharedTexture;->textureSet:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 87
    return-void
.end method
