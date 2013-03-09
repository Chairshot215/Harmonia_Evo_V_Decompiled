.class public Lcom/htc/sunny/SGallery$AnimationInfo;
.super Ljava/lang/Object;
.source "SGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny/SGallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AnimationInfo"
.end annotation


# instance fields
.field public interpolate:Lcom/htc/sunny/SGallery$INTERPOLATE;

.field public mEnd:I

.field public mStart:I

.field public mTotal:I

.field public nArgs:I

.field public nInFrame:I

.field public nTotalFrames:I

.field final synthetic this$0:Lcom/htc/sunny/SGallery;

.field public type:I


# direct methods
.method public constructor <init>(Lcom/htc/sunny/SGallery;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 125
    iput-object p1, p0, Lcom/htc/sunny/SGallery$AnimationInfo;->this$0:Lcom/htc/sunny/SGallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput v1, p0, Lcom/htc/sunny/SGallery$AnimationInfo;->nInFrame:I

    .line 127
    iput v1, p0, Lcom/htc/sunny/SGallery$AnimationInfo;->nTotalFrames:I

    .line 128
    sget-object v0, Lcom/htc/sunny/SGallery$INTERPOLATE;->LINEAR:Lcom/htc/sunny/SGallery$INTERPOLATE;

    iput-object v0, p0, Lcom/htc/sunny/SGallery$AnimationInfo;->interpolate:Lcom/htc/sunny/SGallery$INTERPOLATE;

    .line 129
    iput v2, p0, Lcom/htc/sunny/SGallery$AnimationInfo;->type:I

    .line 130
    iput v2, p0, Lcom/htc/sunny/SGallery$AnimationInfo;->nArgs:I

    .line 132
    iput v1, p0, Lcom/htc/sunny/SGallery$AnimationInfo;->mStart:I

    .line 133
    iput v1, p0, Lcom/htc/sunny/SGallery$AnimationInfo;->mEnd:I

    .line 134
    iput v1, p0, Lcom/htc/sunny/SGallery$AnimationInfo;->mTotal:I

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 137
    iput v1, p0, Lcom/htc/sunny/SGallery$AnimationInfo;->nInFrame:I

    .line 138
    iput v1, p0, Lcom/htc/sunny/SGallery$AnimationInfo;->nTotalFrames:I

    .line 140
    sget-object v0, Lcom/htc/sunny/SGallery$INTERPOLATE;->LINEAR:Lcom/htc/sunny/SGallery$INTERPOLATE;

    iput-object v0, p0, Lcom/htc/sunny/SGallery$AnimationInfo;->interpolate:Lcom/htc/sunny/SGallery$INTERPOLATE;

    .line 141
    iput v2, p0, Lcom/htc/sunny/SGallery$AnimationInfo;->type:I

    .line 142
    iput v2, p0, Lcom/htc/sunny/SGallery$AnimationInfo;->nArgs:I

    .line 144
    iput v1, p0, Lcom/htc/sunny/SGallery$AnimationInfo;->mStart:I

    .line 145
    iput v1, p0, Lcom/htc/sunny/SGallery$AnimationInfo;->mEnd:I

    .line 146
    iput v1, p0, Lcom/htc/sunny/SGallery$AnimationInfo;->mTotal:I

    .line 147
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mStart: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/sunny/SGallery$AnimationInfo;->mStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEnd: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/sunny/SGallery$AnimationInfo;->mEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTotal: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/sunny/SGallery$AnimationInfo;->mTotal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTotalFrames: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/sunny/SGallery$AnimationInfo;->nTotalFrames:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
