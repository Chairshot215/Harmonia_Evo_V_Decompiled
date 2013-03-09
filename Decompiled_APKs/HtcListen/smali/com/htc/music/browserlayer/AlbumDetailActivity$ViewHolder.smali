.class Lcom/htc/music/browserlayer/AlbumDetailActivity$ViewHolder;
.super Ljava/lang/Object;
.source "AlbumDetailActivity.java"

# interfaces
.implements Lcom/htc/widget/HtcListItemSeparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/AlbumDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field viewType:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$ViewHolder;->viewType:I

    return-void
.end method


# virtual methods
.method public shouldDrawOnThis()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public shouldSeparate(Ljava/lang/Object;)Z
    .locals 3

    const/4 v1, 0x1

    move-object v0, p1

    check-cast v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$ViewHolder;

    iget v2, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$ViewHolder;->viewType:I

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
