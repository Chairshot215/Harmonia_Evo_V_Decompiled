.class Lcom/htc/opensense/widget/HtcGridView2$PageCache$1;
.super Ljava/lang/Object;
.source "HtcGridView2.java"

# interfaces
.implements Lcom/htc/opensense/widget/HtcGridView2$Prefetch$DataReadyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/opensense/widget/HtcGridView2$PageCache;-><init>(Lcom/htc/opensense/widget/HtcGridView2;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense/widget/HtcGridView2$PageCache;


# direct methods
.method constructor <init>(Lcom/htc/opensense/widget/HtcGridView2$PageCache;)V
    .locals 0
    .parameter

    .prologue
    .line 2661
    iput-object p1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$1;->this$0:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataReady(Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 2663
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$1;->this$0:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    #calls: Lcom/htc/opensense/widget/HtcGridView2$PageCache;->draw(Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;)V
    invoke-static {v0, p1}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->access$3200(Lcom/htc/opensense/widget/HtcGridView2$PageCache;Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;)V

    .line 2664
    return-void
.end method

.method public onDatasReady(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2666
    .local p1, info:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;>;"
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$1;->this$0:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    #calls: Lcom/htc/opensense/widget/HtcGridView2$PageCache;->draw(Ljava/util/List;)V
    invoke-static {v0, p1}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->access$3300(Lcom/htc/opensense/widget/HtcGridView2$PageCache;Ljava/util/List;)V

    .line 2667
    return-void
.end method
