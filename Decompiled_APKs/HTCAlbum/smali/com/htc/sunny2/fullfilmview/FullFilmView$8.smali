.class Lcom/htc/sunny2/fullfilmview/FullFilmView$8;
.super Ljava/lang/Object;
.source "FullFilmView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny2/fullfilmview/FullFilmView;->hideDRMIndicator()V
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
    .line 2200
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$8;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2204
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$8;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->access$400(Lcom/htc/sunny2/fullfilmview/FullFilmView;)Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->hideDRMIndicator()V

    .line 2205
    return-void
.end method
