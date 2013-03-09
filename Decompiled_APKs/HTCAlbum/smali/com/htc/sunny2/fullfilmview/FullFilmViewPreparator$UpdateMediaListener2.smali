.class public Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$UpdateMediaListener2;
.super Ljava/lang/Object;
.source "FullFilmViewPreparator.java"

# interfaces
.implements Lcom/htc/sunny2/common/MediaDecoderManager$IMediaUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "UpdateMediaListener2"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;


# direct methods
.method protected constructor <init>(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;)V
    .locals 0
    .parameter

    .prologue
    .line 383
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$UpdateMediaListener2;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaDecodeEnd(Lcom/htc/sunny2/common/MediaDecodeItem;)V
    .locals 1
    .parameter "mediaDecodeItem"

    .prologue
    .line 386
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$UpdateMediaListener2;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTasks2:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 387
    return-void
.end method
