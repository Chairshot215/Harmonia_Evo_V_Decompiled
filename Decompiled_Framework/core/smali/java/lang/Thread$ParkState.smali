.class Ljava/lang/Thread$ParkState;
.super Ljava/lang/Object;
.source "Thread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParkState"
.end annotation


# static fields
.field private static final PARKED:I = 0x3

.field private static final PREEMPTIVELY_UNPARKED:I = 0x2

.field private static final UNPARKED:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
