.class public Lcom/htc/sunny2/widget/gridview/GridViewItem$SharedTexture;
.super Ljava/lang/Object;
.source "GridViewItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/widget/gridview/GridViewItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SharedTexture"
.end annotation


# static fields
.field public static final NAME_TEXTURE_BACKGROUND:Ljava/lang/String; = "NAME_TEXTURE_BACKGROUND"


# instance fields
.field public referenceCount:I

.field protected textureSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/sunny2/Texture;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewItem$SharedTexture;->referenceCount:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewItem$SharedTexture;->textureSet:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewItem$SharedTexture;->textureSet:Ljava/util/HashMap;

    const-string v1, "NAME_TEXTURE_BACKGROUND"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridViewItem$SharedTexture;->release()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getBackgroundTexture()Lcom/htc/sunny2/Texture;
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewItem$SharedTexture;->textureSet:Ljava/util/HashMap;

    const-string v1, "NAME_TEXTURE_BACKGROUND"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/Texture;

    return-object v0
.end method

.method public getTexture(Ljava/lang/String;)Lcom/htc/sunny2/Texture;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewItem$SharedTexture;->textureSet:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/Texture;

    return-object v0
.end method

.method public release()V
    .locals 3

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewItem$SharedTexture;->textureSet:Ljava/util/HashMap;

    const-string v2, "NAME_TEXTURE_BACKGROUND"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/Texture;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->release()V

    :cond_0
    return-void
.end method

.method public removeTexture(Ljava/lang/String;)Lcom/htc/sunny2/Texture;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewItem$SharedTexture;->textureSet:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/Texture;

    goto :goto_0
.end method

.method public setBackgroundTexture(Lcom/htc/sunny2/Texture;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewItem$SharedTexture;->textureSet:Ljava/util/HashMap;

    const-string v1, "NAME_TEXTURE_BACKGROUND"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setTexture(Ljava/lang/String;Lcom/htc/sunny2/Texture;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewItem$SharedTexture;->textureSet:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewItem$SharedTexture;->textureSet:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
