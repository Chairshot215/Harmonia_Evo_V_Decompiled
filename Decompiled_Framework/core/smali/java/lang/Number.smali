.class public abstract Ljava/lang/Number;
.super Ljava/lang/Object;
.source "Number.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x79536ae2f46b1f75L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public byteValue()B
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public abstract doubleValue()D
.end method

.method public abstract floatValue()F
.end method

.method public abstract intValue()I
.end method

.method public abstract longValue()J
.end method

.method public shortValue()S
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method
