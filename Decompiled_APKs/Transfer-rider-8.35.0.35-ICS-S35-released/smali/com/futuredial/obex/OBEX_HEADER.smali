.class public Lcom/futuredial/obex/OBEX_HEADER;
.super Ljava/lang/Object;
.source "OBEX_HEADER.java"


# instance fields
.field protected Tag:B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/futuredial/obex/OBEX_HEADER;->Tag:B

    .line 9
    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x1

    return v0
.end method

.method public getTag()B
    .locals 1

    .prologue
    .line 16
    iget-byte v0, p0, Lcom/futuredial/obex/OBEX_HEADER;->Tag:B

    return v0
.end method

.method public setTag(B)V
    .locals 0
    .parameter "TagValue"

    .prologue
    .line 12
    iput-byte p1, p0, Lcom/futuredial/obex/OBEX_HEADER;->Tag:B

    .line 13
    return-void
.end method
