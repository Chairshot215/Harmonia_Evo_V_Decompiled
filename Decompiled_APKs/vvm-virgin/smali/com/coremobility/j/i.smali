.class public final Lcom/coremobility/j/i;
.super Ljava/lang/Object;


# instance fields
.field a:[I

.field b:I


# direct methods
.method public constructor <init>([I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/coremobility/j/i;->b:I

    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/coremobility/j/i;->a:[I

    iget-object v0, p0, Lcom/coremobility/j/i;->a:[I

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method
