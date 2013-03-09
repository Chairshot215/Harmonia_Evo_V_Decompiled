.class public Lcom/awox/jSebring/SWIGTYPE_p_void;
.super Ljava/lang/Object;
.source "SWIGTYPE_p_void.java"


# instance fields
.field private swigCPtr:J


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/awox/jSebring/SWIGTYPE_p_void;->swigCPtr:J

    .line 20
    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-wide p1, p0, Lcom/awox/jSebring/SWIGTYPE_p_void;->swigCPtr:J

    .line 16
    return-void
.end method

.method protected static getCPtr(Lcom/awox/jSebring/SWIGTYPE_p_void;)J
    .locals 2
    .parameter

    .prologue
    .line 23
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/awox/jSebring/SWIGTYPE_p_void;->swigCPtr:J

    goto :goto_0
.end method
