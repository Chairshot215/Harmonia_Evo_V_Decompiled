.class final Ljava/util/concurrent/Exchanger$Slot;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "Exchanger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/Exchanger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Slot"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field q0:J

.field q1:J

.field q2:J

.field q3:J

.field q4:J

.field q5:J

.field q6:J

.field q7:J

.field q8:J

.field q9:J

.field qa:J

.field qb:J

.field qc:J

.field qd:J

.field qe:J


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/concurrent/Exchanger$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/Exchanger$Slot;-><init>()V

    return-void
.end method
