.class Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$CallbackListener;
.super Ljava/lang/Object;
.source "FullFilmViewPreparator.java"

# interfaces
.implements Lcom/htc/sunny2/common/IterationTask$TaskCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;


# direct methods
.method private constructor <init>(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;)V
    .locals 0
    .parameter

    .prologue
    .line 1683
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$CallbackListener;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1683
    invoke-direct {p0, p1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$CallbackListener;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;)V

    return-void
.end method


# virtual methods
.method public onTaskCancel()V
    .locals 0

    .prologue
    .line 1700
    return-void
.end method

.method public onTaskEnd(Landroid/os/Bundle;)V
    .locals 0
    .parameter "bundle"

    .prologue
    .line 1697
    return-void
.end method

.method public onTaskStart()V
    .locals 0

    .prologue
    .line 1686
    return-void
.end method
