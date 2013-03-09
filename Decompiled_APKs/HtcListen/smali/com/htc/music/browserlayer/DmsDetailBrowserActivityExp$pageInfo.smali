.class public Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;
.super Ljava/lang/Object;
.source "DmsDetailBrowserActivityExp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "pageInfo"
.end annotation


# instance fields
.field private endIndex:Ljava/lang/Long;

.field private middleIndex:Ljava/lang/Long;

.field private startIndex:Ljava/lang/Long;

.field final synthetic this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;


# direct methods
.method public constructor <init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)V
    .locals 3

    const-wide/16 v1, -0x1

    iput-object p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->startIndex:Ljava/lang/Long;

    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->endIndex:Ljava/lang/Long;

    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->middleIndex:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;III)V
    .locals 3

    iput-object p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Long;

    int-to-long v1, p2

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->startIndex:Ljava/lang/Long;

    new-instance v0, Ljava/lang/Long;

    int-to-long v1, p3

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->endIndex:Ljava/lang/Long;

    new-instance v0, Ljava/lang/Long;

    int-to-long v1, p4

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->middleIndex:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public getEndIdx()J
    .locals 2

    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->endIndex:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMiddleIdx()J
    .locals 2

    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->middleIndex:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getStartIdx()J
    .locals 2

    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->startIndex:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public setEndIdx(J)V
    .locals 1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->endIndex:Ljava/lang/Long;

    return-void
.end method

.method public setMiddleIdx(J)V
    .locals 1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->middleIndex:Ljava/lang/Long;

    return-void
.end method

.method public setStartIdx(J)V
    .locals 1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->startIndex:Ljava/lang/Long;

    return-void
.end method
