.class public Lcom/futuredial/bluetooth/ByteArrayData;
.super Ljava/lang/Object;
.source "ByteArrayData.java"


# instance fields
.field public buffer:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    return-void
.end method
