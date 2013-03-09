.class public Lcom/htc/painting/engine/StrokeEventArg$StrokeStatusChangeEventArg;
.super Lcom/htc/painting/engine/StrokeEventArg;
.source "StrokeEventArg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/painting/engine/StrokeEventArg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StrokeStatusChangeEventArg"
.end annotation


# instance fields
.field public mNewValue:Lcom/htc/painting/engine/StrokeEventArg$StrokeStatus;

.field public mOldValue:Lcom/htc/painting/engine/StrokeEventArg$StrokeStatus;


# direct methods
.method public constructor <init>(Lcom/htc/painting/engine/stroke/Stroke;ILcom/htc/painting/engine/StrokeEventArg$StrokeStatus;Lcom/htc/painting/engine/StrokeEventArg$StrokeStatus;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/htc/painting/engine/StrokeEventArg;-><init>(Lcom/htc/painting/engine/stroke/Stroke;I)V

    sget-object v0, Lcom/htc/painting/engine/StrokeEventArg$StrokeStatus;->Effective:Lcom/htc/painting/engine/StrokeEventArg$StrokeStatus;

    iput-object v0, p0, Lcom/htc/painting/engine/StrokeEventArg$StrokeStatusChangeEventArg;->mOldValue:Lcom/htc/painting/engine/StrokeEventArg$StrokeStatus;

    sget-object v0, Lcom/htc/painting/engine/StrokeEventArg$StrokeStatus;->Effective:Lcom/htc/painting/engine/StrokeEventArg$StrokeStatus;

    iput-object v0, p0, Lcom/htc/painting/engine/StrokeEventArg$StrokeStatusChangeEventArg;->mNewValue:Lcom/htc/painting/engine/StrokeEventArg$StrokeStatus;

    iput-object p3, p0, Lcom/htc/painting/engine/StrokeEventArg$StrokeStatusChangeEventArg;->mOldValue:Lcom/htc/painting/engine/StrokeEventArg$StrokeStatus;

    iput-object p4, p0, Lcom/htc/painting/engine/StrokeEventArg$StrokeStatusChangeEventArg;->mNewValue:Lcom/htc/painting/engine/StrokeEventArg$StrokeStatus;

    return-void
.end method
