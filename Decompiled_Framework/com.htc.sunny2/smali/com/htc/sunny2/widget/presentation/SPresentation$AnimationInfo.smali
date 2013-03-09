.class public Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;
.super Ljava/lang/Object;
.source "SPresentation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/widget/presentation/SPresentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AnimationInfo"
.end annotation


# instance fields
.field public interpolate:Lcom/htc/sunny2/widget/presentation/SPresentation$INTERPOLATE;

.field public mEndR:Lcom/htc/sunny2/view/Vector3F;

.field public mEndT:Lcom/htc/sunny2/view/Vector3F;

.field public mStartR:Lcom/htc/sunny2/view/Vector3F;

.field public mStartT:Lcom/htc/sunny2/view/Vector3F;

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

.field final synthetic this$0:Lcom/htc/sunny2/widget/presentation/SPresentation;

.field public type:I


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/widget/presentation/SPresentation;)V
    .locals 4

    const/4 v3, -0x1

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->this$0:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nInFrame:I

    iput v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nDelayFrames:I

    iput v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    iput v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    iput v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nPreTimeSlot:I

    iput v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nElapseTimeSlot:I

    sget-object v0, Lcom/htc/sunny2/widget/presentation/SPresentation$INTERPOLATE;->LINEAR:Lcom/htc/sunny2/widget/presentation/SPresentation$INTERPOLATE;

    iput-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->interpolate:Lcom/htc/sunny2/widget/presentation/SPresentation$INTERPOLATE;

    iput v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->type:I

    iput v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nArgs:I

    iput-wide v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nStartTime:J

    iput-wide v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nEndTime:J

    iput-wide v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTime:J

    new-instance v0, Lcom/htc/sunny2/view/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunny2/view/Vector3F;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->mStartT:Lcom/htc/sunny2/view/Vector3F;

    new-instance v0, Lcom/htc/sunny2/view/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunny2/view/Vector3F;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->mEndT:Lcom/htc/sunny2/view/Vector3F;

    new-instance v0, Lcom/htc/sunny2/view/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunny2/view/Vector3F;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->mStartR:Lcom/htc/sunny2/view/Vector3F;

    new-instance v0, Lcom/htc/sunny2/view/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunny2/view/Vector3F;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->mEndR:Lcom/htc/sunny2/view/Vector3F;

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 4

    const/4 v3, -0x1

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nInFrame:I

    iput v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nDelayFrames:I

    iput v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    iput v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    iput v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nPreTimeSlot:I

    iput v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nElapseTimeSlot:I

    sget-object v0, Lcom/htc/sunny2/widget/presentation/SPresentation$INTERPOLATE;->LINEAR:Lcom/htc/sunny2/widget/presentation/SPresentation$INTERPOLATE;

    iput-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->interpolate:Lcom/htc/sunny2/widget/presentation/SPresentation$INTERPOLATE;

    iput v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->type:I

    iput v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nArgs:I

    iput-wide v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nStartTime:J

    iput-wide v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nEndTime:J

    iput-wide v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTime:J

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->mStartT:Lcom/htc/sunny2/view/Vector3F;

    invoke-virtual {v0}, Lcom/htc/sunny2/view/Vector3F;->reset()V

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->mEndT:Lcom/htc/sunny2/view/Vector3F;

    invoke-virtual {v0}, Lcom/htc/sunny2/view/Vector3F;->reset()V

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->mStartR:Lcom/htc/sunny2/view/Vector3F;

    invoke-virtual {v0}, Lcom/htc/sunny2/view/Vector3F;->reset()V

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->mEndR:Lcom/htc/sunny2/view/Vector3F;

    invoke-virtual {v0}, Lcom/htc/sunny2/view/Vector3F;->reset()V

    return-void
.end method
