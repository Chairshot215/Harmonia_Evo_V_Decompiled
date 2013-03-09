.class public Lcom/futuredial/obex/OBEX_SNE_CAL;
.super Lcom/futuredial/obex/OBEX_SNE;
.source "OBEX_SNE_CAL.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/futuredial/obex/OBEX_SNE;-><init>()V

    return-void
.end method


# virtual methods
.method public getTargetName()[B
    .locals 2

    .prologue
    .line 7
    const/16 v1, 0x20

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    .line 8
    .local v0, name:[B
    return-object v0

    .line 7
    :array_0
    .array-data 0x1
        0x0t
        0x74t
        0x0t
        0x65t
        0x0t
        0x6ct
        0x0t
        0x65t
        0x0t
        0x63t
        0x0t
        0x6ft
        0x0t
        0x6dt
        0x0t
        0x2ft
        0x0t
        0x63t
        0x0t
        0x61t
        0x0t
        0x6ct
        0x0t
        0x2et
        0x0t
        0x76t
        0x0t
        0x63t
        0x0t
        0x73t
        0x0t
        0x0t
    .end array-data
.end method
