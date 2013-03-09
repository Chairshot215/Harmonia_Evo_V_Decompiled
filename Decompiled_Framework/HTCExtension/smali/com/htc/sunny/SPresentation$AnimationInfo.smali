.class public Lcom/htc/sunny/SPresentation$AnimationInfo;
.super Ljava/lang/Object;
.source "SPresentation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny/SPresentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AnimationInfo"
.end annotation


# instance fields
.field public interpolate:Lcom/htc/sunny/SPresentation$INTERPOLATE;

.field public mEndR:Lcom/htc/sunny/Vector3F;

.field public mEndT:Lcom/htc/sunny/Vector3F;

.field public mStartR:Lcom/htc/sunny/Vector3F;

.field public mStartT:Lcom/htc/sunny/Vector3F;

.field public nArgs:I

.field public nDelayFrames:I

.field public nElapseTimeSlot:I

.field nEndTime:J

.field public nInFrame:I

.field public nPreTimeSlot:I

.field nStartTime:J

.field public nTotalFrames:I

.field nTotalTime:J

.field public nTotalTimeSlot:I

.field final synthetic this$0:Lcom/htc/sunny/SPresentation;

.field public type:I


# direct methods
.method public constructor <init>(Lcom/htc/sunny/SPresentation;)V
    .locals 4

    const/4 v3, -0x1

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/htc/sunny/SPresentation$AnimationInfo;->this$0:Lcom/htc/sunny/SPresentation;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nInFrame:I

    iput v0, p0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nDelayFrames:I

    iput v0, p0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    iput v0, p0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    iput v0, p0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nPreTimeSlot:I

    iput v0, p0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nElapseTimeSlot:I

    sget-object v0, Lcom/htc/sunny/SPresentation$INTERPOLATE;->LINEAR:Lcom/htc/sunny/SPresentation$INTERPOLATE;

    iput-object v0, p0, Lcom/htc/sunny/SPresentation$AnimationInfo;->interpolate:Lcom/htc/sunny/SPresentation$INTERPOLATE;

    iput v3, p0, Lcom/htc/sunny/SPresentation$AnimationInfo;->type:I

    iput v3, p0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nArgs:I

    iput-wide v1, p0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nStartTime:J

    iput-wide v1, p0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nEndTime:J

    iput-wide v1, p0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTime:J

    new-instance v0, Lcom/htc/sunny/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunny/Vector3F;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SPresentation$AnimationInfo;->mStartT:Lcom/htc/sunny/Vector3F;

    new-instance v0, Lcom/htc/sunny/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunny/Vector3F;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SPresentation$AnimationInfo;->mEndT:Lcom/htc/sunny/Vector3F;

    new-instance v0, Lcom/htc/sunny/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunny/Vector3F;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SPresentation$AnimationInfo;->mStartR:Lcom/htc/sunny/Vector3F;

    new-instance v0, Lcom/htc/sunny/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunny/Vector3F;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SPresentation$AnimationInfo;->mEndR:Lcom/htc/sunny/Vector3F;

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 4

    const/4 v3, -0x1

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nInFrame:I

    iput v0, p0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nDelayFrames:I

    iput v0, p0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    iput v0, p0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    iput v0, p0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nPreTimeSlot:I

    iput v0, p0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nElapseTimeSlot:I

    sget-object v0, Lcom/htc/sunny/SPresentation$INTERPOLATE;->LINEAR:Lcom/htc/sunny/SPresentation$INTERPOLATE;

    iput-object v0, p0, Lcom/htc/sunny/SPresentation$AnimationInfo;->interpolate:Lcom/htc/sunny/SPresentation$INTERPOLATE;

    iput v3, p0, Lcom/htc/sunny/SPresentation$AnimationInfo;->type:I

    iput v3, p0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nArgs:I

    iput-wide v1, p0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nStartTime:J

    iput-wide v1, p0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nEndTime:J

    iput-wide v1, p0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTime:J

    iget-object v0, p0, Lcom/htc/sunny/SPresentation$AnimationInfo;->mStartT:Lcom/htc/sunny/Vector3F;

    invoke-virtual {v0}, Lcom/htc/sunny/Vector3F;->reset()V

    iget-object v0, p0, Lcom/htc/sunny/SPresentation$AnimationInfo;->mEndT:Lcom/htc/sunny/Vector3F;

    invoke-virtual {v0}, Lcom/htc/sunny/Vector3F;->reset()V

    iget-object v0, p0, Lcom/htc/sunny/SPresentation$AnimationInfo;->mStartR:Lcom/htc/sunny/Vector3F;

    invoke-virtual {v0}, Lcom/htc/sunny/Vector3F;->reset()V

    iget-object v0, p0, Lcom/htc/sunny/SPresentation$AnimationInfo;->mEndR:Lcom/htc/sunny/Vector3F;

    invoke-virtual {v0}, Lcom/htc/sunny/Vector3F;->reset()V

    return-void
.end method
