.class final Lcom/htc/reportagent/Common$1;
.super Ljava/lang/Object;
.source "Common.java"

# interfaces
.implements Lcom/htc/utils/ulog/io/LogStream$SeedGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/reportagent/Common;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()[B
    .locals 2

    .prologue
    .line 86
    const/16 v1, 0x20

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    .line 91
    .local v0, SEED:[B
    return-object v0

    .line 86
    :array_0
    .array-data 0x1
        0x0t
        0x24t
        0x42t
        0x27t
        0xfft
        0x73t
        0x3dt
        0x39t
        0xa4t
        0xdbt
        0x9bt
        0x57t
        0x39t
        0x7ft
        0xdet
        0x37t
        0xf2t
        0x65t
        0x96t
        0xb9t
        0x7ct
        0xd0t
        0x1t
        0x95t
        0x8t
        0x20t
        0xc8t
        0x7ft
        0x5ft
        0xbat
        0x3bt
        0xf6t
    .end array-data
.end method
