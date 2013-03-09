.class Lcom/htc/sunny2/fullfilmview/FullFilmView$7;
.super Ljava/lang/Object;
.source "FullFilmView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny2/fullfilmview/FullFilmView;->showDRMIndicator(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

.field final synthetic val$bForce:Z


# direct methods
.method constructor <init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2189
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$7;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iput-boolean p2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$7;->val$bForce:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2193
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$7;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->access$400(Lcom/htc/sunny2/fullfilmview/FullFilmView;)Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    move-result-object v0

    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$7;->val$bForce:Z

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->showDRMIndicator(Z)V

    .line 2194
    return-void
.end method
