.class public Lcom/htc/painting/engine/StrokeEventArg$StrokeMoveEventArg;
.super Lcom/htc/painting/engine/StrokeEventArg;
.source "StrokeEventArg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/painting/engine/StrokeEventArg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StrokeMoveEventArg"
.end annotation


# instance fields
.field protected final mPos:Landroid/graphics/PointF;

.field protected final mState:Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;


# direct methods
.method public constructor <init>(Lcom/htc/painting/engine/stroke/Stroke;ILandroid/graphics/PointF;)V
    .locals 1

    sget-object v0, Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;->NotEnding:Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/htc/painting/engine/StrokeEventArg$StrokeMoveEventArg;-><init>(Lcom/htc/painting/engine/stroke/Stroke;ILandroid/graphics/PointF;Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;)V

    return-void
.end method

.method public constructor <init>(Lcom/htc/painting/engine/stroke/Stroke;ILandroid/graphics/PointF;Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/htc/painting/engine/StrokeEventArg;-><init>(Lcom/htc/painting/engine/stroke/Stroke;I)V

    iput-object p3, p0, Lcom/htc/painting/engine/StrokeEventArg$StrokeMoveEventArg;->mPos:Landroid/graphics/PointF;

    iput-object p4, p0, Lcom/htc/painting/engine/StrokeEventArg$StrokeMoveEventArg;->mState:Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;

    return-void
.end method


# virtual methods
.method public getEndingState()Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;
    .locals 1

    iget-object v0, p0, Lcom/htc/painting/engine/StrokeEventArg$StrokeMoveEventArg;->mState:Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;

    return-object v0
.end method

.method public getPos()Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Lcom/htc/painting/engine/StrokeEventArg$StrokeMoveEventArg;->mPos:Landroid/graphics/PointF;

    return-object v0
.end method
