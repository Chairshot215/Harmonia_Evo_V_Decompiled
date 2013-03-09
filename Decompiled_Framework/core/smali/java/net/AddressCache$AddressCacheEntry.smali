.class Ljava/net/AddressCache$AddressCacheEntry;
.super Ljava/lang/Object;
.source "AddressCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/net/AddressCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AddressCacheEntry"
.end annotation


# instance fields
.field final expiryNanos:J

.field final value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;J)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/net/AddressCache$AddressCacheEntry;->value:Ljava/lang/Object;

    iput-wide p2, p0, Ljava/net/AddressCache$AddressCacheEntry;->expiryNanos:J

    return-void
.end method
