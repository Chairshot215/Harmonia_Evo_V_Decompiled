.class public abstract Lcom/htc/sunny2/RenderThreadAction;
.super Lcom/htc/sunny2/RenderThreadTask;
.source "RenderThreadAction.java"


# instance fields
.field protected firstFrameIndex:I

.field protected firstFrameTimeMillis:J


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/RenderThreadTask;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/RenderThreadAction;->firstFrameIndex:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/sunny2/RenderThreadAction;->firstFrameTimeMillis:J

    return-void
.end method


# virtual methods
.method public abstract onDoActionIRT(IJ)Z
.end method
