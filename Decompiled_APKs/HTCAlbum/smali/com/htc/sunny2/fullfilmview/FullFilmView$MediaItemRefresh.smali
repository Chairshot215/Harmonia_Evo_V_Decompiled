.class Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;
.super Lcom/htc/sunny2/RenderThreadEvent;
.source "FullFilmView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/fullfilmview/FullFilmView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaItemRefresh"
.end annotation


# instance fields
.field flags:I

.field index:I

.field final synthetic this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;II)V
    .locals 2
    .parameter
    .parameter "index"
    .parameter "flags"

    .prologue
    const/4 v1, 0x0

    .line 2094
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    .line 2095
    const-string v0, "onMediaItemRefresh"

    invoke-direct {p0, p1, v0}, Lcom/htc/sunny2/RenderThreadEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2091
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;->index:I

    .line 2092
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;->flags:I

    .line 2096
    iput p2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;->index:I

    .line 2097
    iput p3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;->flags:I

    .line 2098
    return-void
.end method


# virtual methods
.method public onCancelIRT(Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V
    .locals 3
    .parameter "cancelReason"

    .prologue
    .line 2111
    const-string v0, "FullFilmView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmView;->mHostContextName:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->access$1300(Lcom/htc/sunny2/fullfilmview/FullFilmView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "onMediaItemRefresh Cancel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;->flags:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2112
    return-void
.end method

.method public onProcessEventIRT()V
    .locals 3

    .prologue
    .line 2107
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;->index:I

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;->flags:I

    #calls: Lcom/htc/sunny2/fullfilmview/FullFilmView;->onMediaItemRefreshIRT(II)V
    invoke-static {v0, v1, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->access$1200(Lcom/htc/sunny2/fullfilmview/FullFilmView;II)V

    .line 2108
    return-void
.end method

.method public onRemovedIRT()V
    .locals 1

    .prologue
    .line 2115
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    #calls: Lcom/htc/sunny2/fullfilmview/FullFilmView;->RecycleMediaItemRefresh(Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;)V
    invoke-static {v0, p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->access$1400(Lcom/htc/sunny2/fullfilmview/FullFilmView;Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;)V

    .line 2116
    return-void
.end method

.method public reset(II)V
    .locals 2
    .parameter "index"
    .parameter "flags"

    .prologue
    .line 2101
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    const-string v1, "onMediaItemRefresh"

    invoke-super {p0, v0, v1}, Lcom/htc/sunny2/RenderThreadEvent;->reset(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2102
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;->index:I

    .line 2103
    iput p2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;->flags:I

    .line 2104
    return-void
.end method
