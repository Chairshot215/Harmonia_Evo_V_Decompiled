.class public Lcom/htc/painting/engine/StrokeEventArg;
.super Ljava/lang/Object;
.source "StrokeEventArg.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/painting/engine/StrokeEventArg$StrokeStatusChangeEventArg;,
        Lcom/htc/painting/engine/StrokeEventArg$StrokeMoveEventArg;,
        Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;,
        Lcom/htc/painting/engine/StrokeEventArg$StrokeStatus;
    }
.end annotation


# instance fields
.field protected final mStoke:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/painting/engine/stroke/Stroke;",
            ">;"
        }
    .end annotation
.end field

.field private final mStrokeGroupId:I


# direct methods
.method public constructor <init>(Lcom/htc/painting/engine/stroke/Stroke;I)V
    .locals 1
    .parameter "d"
    .parameter "groupId"

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/painting/engine/StrokeEventArg;->mStoke:Ljava/lang/ref/WeakReference;

    .line 93
    iput p2, p0, Lcom/htc/painting/engine/StrokeEventArg;->mStrokeGroupId:I

    .line 94
    return-void
.end method


# virtual methods
.method public getGroupId()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/htc/painting/engine/StrokeEventArg;->mStrokeGroupId:I

    return v0
.end method

.method public getStroke()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/painting/engine/stroke/Stroke;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/htc/painting/engine/StrokeEventArg;->mStoke:Ljava/lang/ref/WeakReference;

    return-object v0
.end method
