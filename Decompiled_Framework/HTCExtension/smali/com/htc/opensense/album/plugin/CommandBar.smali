.class public Lcom/htc/opensense/album/plugin/CommandBar;
.super Ljava/lang/Object;
.source "CommandBar.java"


# instance fields
.field private mButtons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense/album/plugin/CommandBarButton;",
            ">;"
        }
    .end annotation
.end field

.field private mCount:I

.field private mCountX:I

.field private mCountY:I

.field private mShowCommentCount:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/opensense/album/plugin/CommandBar;->mButtons:Ljava/util/ArrayList;

    iput v2, p0, Lcom/htc/opensense/album/plugin/CommandBar;->mCountX:I

    iput v2, p0, Lcom/htc/opensense/album/plugin/CommandBar;->mCountY:I

    iput-boolean v2, p0, Lcom/htc/opensense/album/plugin/CommandBar;->mShowCommentCount:Z

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/album/plugin/CommandBar;->mButtons:Ljava/util/ArrayList;

    new-instance v2, Lcom/htc/opensense/album/plugin/CommandBarButton;

    const/4 v3, -0x1

    invoke-direct {v2, v0, v3}, Lcom/htc/opensense/album/plugin/CommandBarButton;-><init>(II)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getButton(I)Lcom/htc/opensense/album/plugin/CommandBarButton;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/plugin/CommandBar;->mButtons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/album/plugin/CommandBar;->mButtons:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/plugin/CommandBarButton;

    goto :goto_0
.end method

.method public getCommentCount()I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/album/plugin/CommandBar;->mCount:I

    return v0
.end method

.method public getSize()I
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/plugin/CommandBar;->mButtons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public hideCommentCount()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/album/plugin/CommandBar;->mShowCommentCount:Z

    return-void
.end method

.method public setCommentCount(I)V
    .locals 0

    iput p1, p0, Lcom/htc/opensense/album/plugin/CommandBar;->mCount:I

    return-void
.end method

.method public setCommentCountPosition(II)V
    .locals 0

    iput p1, p0, Lcom/htc/opensense/album/plugin/CommandBar;->mCountX:I

    iput p2, p0, Lcom/htc/opensense/album/plugin/CommandBar;->mCountY:I

    return-void
.end method

.method public showCommentCount()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense/album/plugin/CommandBar;->mShowCommentCount:Z

    return-void
.end method
