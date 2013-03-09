.class Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;
.super Ljava/lang/Object;
.source "HtcGridView2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/widget/HtcGridView2$Prefetch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FetchInfo"
.end annotation


# instance fields
.field cb:Lcom/htc/opensense/widget/HtcGridView2$Prefetch$DataReadyListener;

.field pos:I

.field private sizex:I

.field private sizey:I

.field final synthetic this$0:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;


# direct methods
.method constructor <init>(Lcom/htc/opensense/widget/HtcGridView2$Prefetch;IIILcom/htc/opensense/widget/HtcGridView2$Prefetch$DataReadyListener;)V
    .locals 0
    .parameter
    .parameter "pos"
    .parameter "sizex"
    .parameter "sizey"
    .parameter "cb"

    .prologue
    .line 3880
    iput-object p1, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;->this$0:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3881
    iput p2, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;->pos:I

    .line 3882
    iput p3, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;->sizex:I

    .line 3883
    iput p4, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;->sizey:I

    .line 3884
    iput-object p5, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;->cb:Lcom/htc/opensense/widget/HtcGridView2$Prefetch$DataReadyListener;

    .line 3885
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3887
    if-ne p1, p0, :cond_1

    .line 3894
    .end local p1
    :cond_0
    :goto_0
    return v0

    .line 3891
    .restart local p1
    :cond_1
    instance-of v2, p1, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;

    if-eqz v2, :cond_2

    .line 3892
    check-cast p1, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;

    .end local p1
    iget v2, p1, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;->pos:I

    iget v3, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;->pos:I

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    .restart local p1
    :cond_2
    move v0, v1

    .line 3894
    goto :goto_0
.end method
