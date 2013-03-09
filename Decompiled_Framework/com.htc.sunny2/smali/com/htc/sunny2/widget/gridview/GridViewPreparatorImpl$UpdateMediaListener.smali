.class public Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$UpdateMediaListener;
.super Ljava/lang/Object;
.source "GridViewPreparatorImpl.java"

# interfaces
.implements Lcom/htc/sunny2/common/MediaDecoderManager$IMediaUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "UpdateMediaListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;


# direct methods
.method protected constructor <init>(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$UpdateMediaListener;->this$0:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaDecodeEnd(Lcom/htc/sunny2/common/MediaDecodeItem;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$UpdateMediaListener;->this$0:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method
