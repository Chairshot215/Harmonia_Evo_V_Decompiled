.class Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;
.super Lcom/htc/sunny2/RenderThreadEvent;
.source "FullFilmView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/fullfilmview/FullFilmView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetSelection"
.end annotation


# instance fields
.field mPosition:I

.field final synthetic this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;I)V
    .locals 1
    .parameter
    .parameter "position"

    .prologue
    .line 1057
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    .line 1058
    const-string v0, "SetSelection"

    invoke-direct {p0, p1, v0}, Lcom/htc/sunny2/RenderThreadEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1056
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;->mPosition:I

    .line 1059
    iput p2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;->mPosition:I

    .line 1060
    return-void
.end method


# virtual methods
.method public onCancelIRT(Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V
    .locals 3
    .parameter "cancelReason"

    .prologue
    .line 1087
    const-string v0, "FullFilmView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmView;->mHostContextName:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SetSelection Cancel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;->mPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1088
    return-void
.end method

.method public onProcessEventIRT()V
    .locals 3

    .prologue
    .line 1067
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->access$400(Lcom/htc/sunny2/fullfilmview/FullFilmView;)Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1068
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->access$400(Lcom/htc/sunny2/fullfilmview/FullFilmView;)Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;->mPosition:I

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->setCurrentItemIndex(I)Z

    .line 1070
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget-object v1, v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    if-eqz v1, :cond_1

    .line 1071
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget-object v1, v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;->mPosition:I

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->setSelection(I)V

    .line 1075
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->requestLayout()V

    .line 1077
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripScroller:Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->access$500(Lcom/htc/sunny2/fullfilmview/FullFilmView;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget-object v1, v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    if-eqz v1, :cond_2

    .line 1079
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1080
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "offset_distance"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1081
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->access$600(Lcom/htc/sunny2/fullfilmview/FullFilmView;)Lcom/htc/sunny2/fullfilmview/Animator;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Lcom/htc/sunny2/fullfilmview/Animator;->doTransition(ILandroid/os/Bundle;)V

    .line 1083
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_2
    return-void
.end method

.method public onRemovedIRT()V
    .locals 1

    .prologue
    .line 1092
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    #calls: Lcom/htc/sunny2/fullfilmview/FullFilmView;->RecycleSetSelection(Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;)V
    invoke-static {v0, p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmView;Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;)V

    .line 1093
    return-void
.end method

.method public reset(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 1062
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    const-string v1, "SetSelection"

    invoke-virtual {p0, v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;->reset(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1063
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;->mPosition:I

    .line 1064
    return-void
.end method
