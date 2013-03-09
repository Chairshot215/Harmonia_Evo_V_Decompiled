.class public abstract Llibcore/io/BufferIterator;
.super Ljava/lang/Object;
.source "BufferIterator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract readByte()B
.end method

.method public abstract readByteArray([BII)V
.end method

.method public abstract readInt()I
.end method

.method public abstract readIntArray([III)V
.end method

.method public abstract readShort()S
.end method

.method public abstract seek(I)V
.end method

.method public abstract skip(I)V
.end method
