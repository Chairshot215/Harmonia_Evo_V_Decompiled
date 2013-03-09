.class Lcom/htc/sunny2/fullfilmview/FullFilmView$2;
.super Ljava/lang/Object;
.source "FullFilmView.java"

# interfaces
.implements Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify$ChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/fullfilmview/FullFilmView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;


# direct methods
.method constructor <init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;)V
    .locals 0
    .parameter

    .prologue
    .line 1456
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$2;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyMediaDataChangeIRTLock(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 1459
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$2;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->access$400(Lcom/htc/sunny2/fullfilmview/FullFilmView;)Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1460
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$2;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->access$400(Lcom/htc/sunny2/fullfilmview/FullFilmView;)Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->notifyMediaDataChangeIRTLock(I)V

    .line 1461
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$2;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    if-eqz v0, :cond_1

    .line 1462
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$2;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->notifyMediaDataChangeIRTLock(I)V

    .line 1464
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$2;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->access$1000(Lcom/htc/sunny2/fullfilmview/FullFilmView;)Lcom/htc/sunny2/Preparator;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1466
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$2;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->access$1000(Lcom/htc/sunny2/fullfilmview/FullFilmView;)Lcom/htc/sunny2/Preparator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/htc/sunny2/Preparator;->notifyDataItemChanged(II)V

    .line 1468
    :cond_2
    return-void
.end method
