.class Lcom/htc/album/picker/PickerMultiItemBaseScene$1;
.super Ljava/lang/Object;
.source "PickerMultiItemBaseScene.java"

# interfaces
.implements Lcom/htc/sunny2/widget/gridview/GridViewItem$BindMediaDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/picker/PickerMultiItemBaseScene;->onNewThumbnailItem(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;)Lcom/htc/sunny2/widget/gridview/ThumbnailItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/picker/PickerMultiItemBaseScene;


# direct methods
.method constructor <init>(Lcom/htc/album/picker/PickerMultiItemBaseScene;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/htc/album/picker/PickerMultiItemBaseScene$1;->this$0:Lcom/htc/album/picker/PickerMultiItemBaseScene;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemBindMediaDataIRT(ILcom/htc/sunny2/widget/gridview/GridViewItem;Lcom/htc/sunny2/IMediaData;)V
    .locals 6
    .parameter "dataIndex"
    .parameter "viewItem"
    .parameter "mediaData"

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x3f80

    const/high16 v3, 0x3f40

    .line 54
    iget-object v1, p0, Lcom/htc/album/picker/PickerMultiItemBaseScene$1;->this$0:Lcom/htc/album/picker/PickerMultiItemBaseScene;

    invoke-virtual {v1, p1}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->isItemPicked(I)Z

    move-result v0

    .line 55
    .local v0, isSelected:Z
    invoke-virtual {p2, v5}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setAnimation(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    .line 56
    iget-object v1, p0, Lcom/htc/album/picker/PickerMultiItemBaseScene$1;->this$0:Lcom/htc/album/picker/PickerMultiItemBaseScene;

    invoke-virtual {v1}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->getGridViewItemStyle()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 57
    if-eqz v0, :cond_1

    .line 58
    invoke-virtual {p2, v3, v3, v3}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setScale(FFF)V

    .line 63
    :cond_0
    :goto_0
    invoke-virtual {p2, v0, v5}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPicked(ZLcom/htc/sunny2/view/animation/SAnimationController;)V

    .line 64
    return-void

    .line 60
    :cond_1
    invoke-virtual {p2, v4, v4, v4}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setScale(FFF)V

    goto :goto_0
.end method

.method public onItemUnbindMediaDataIRT(Lcom/htc/sunny2/widget/gridview/GridViewItem;)V
    .locals 0
    .parameter "viewItem"

    .prologue
    .line 52
    return-void
.end method
