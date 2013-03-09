.class Lcom/htc/sunny2/fullfilmview/FullFilmView$6;
.super Ljava/lang/Object;
.source "FullFilmView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny2/fullfilmview/FullFilmView;->showFullFilmView()V
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
    .line 2178
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$6;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2181
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$6;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setVisibility(Z)V

    .line 2182
    return-void
.end method
