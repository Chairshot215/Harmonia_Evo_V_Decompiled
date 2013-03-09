.class public Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderViewItemParameter;
.super Ljava/lang/Object;
.source "FolderViewItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/widget/gridview/FolderViewItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FolderViewItemParameter"
.end annotation


# instance fields
.field public backgroundResid:I

.field public dateId:I

.field public dateviewHeight:I

.field public itemH:I

.field public itemW:I

.field public numFolderImage:I

.field public selecterResid:I

.field public textId:I

.field public textLayoutResId:I

.field public textviewHeight:I

.field public thumbnailH:I

.field public thumbnailW:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderViewItemParameter;->backgroundResid:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderViewItemParameter;->itemW:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderViewItemParameter;->itemH:I

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderViewItemParameter;->selecterResid:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderViewItemParameter;->numFolderImage:I

    return-void
.end method
