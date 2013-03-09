.class public Lcom/htc/music/browserlayer/HtcListNode;
.super Lcom/htc/widget/MoreExpandableItemInfo;
.source "HtcListNode.java"


# instance fields
.field public cursor:Landroid/database/Cursor;

.field public cursorPosition:I

.field public isExpanded:Z

.field public isSelected:Z

.field public level:I

.field public mImageRes:I

.field public mTitle:Ljava/lang/String;

.field public position:I

.field public viewType:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;IIZ)V
    .locals 3

    const/4 v2, 0x0

    int-to-long v0, p2

    invoke-direct {p0, v0, v1, p4}, Lcom/htc/widget/MoreExpandableItemInfo;-><init>(JZ)V

    iput v2, p0, Lcom/htc/music/browserlayer/HtcListNode;->viewType:I

    iput v2, p0, Lcom/htc/music/browserlayer/HtcListNode;->mImageRes:I

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/music/browserlayer/HtcListNode;->mTitle:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/htc/music/browserlayer/HtcListNode;->isExpanded:Z

    iput-boolean v2, p0, Lcom/htc/music/browserlayer/HtcListNode;->isSelected:Z

    iput p2, p0, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    iput p3, p0, Lcom/htc/music/browserlayer/HtcListNode;->level:I

    iput-object p1, p0, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    return-void
.end method


# virtual methods
.method public onCollapseDelete()V
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void
.end method
