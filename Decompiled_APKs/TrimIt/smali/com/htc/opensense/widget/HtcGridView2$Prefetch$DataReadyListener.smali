.class interface abstract Lcom/htc/opensense/widget/HtcGridView2$Prefetch$DataReadyListener;
.super Ljava/lang/Object;
.source "HtcGridView2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/widget/HtcGridView2$Prefetch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "DataReadyListener"
.end annotation


# virtual methods
.method public abstract onDataReady(Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;)V
.end method

.method public abstract onDatasReady(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;",
            ">;)V"
        }
    .end annotation
.end method
