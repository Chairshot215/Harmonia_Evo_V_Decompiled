.class final Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;
.super Ljava/lang/Object;
.source "Engine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/fortress/Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ServiceCacheEntry"
.end annotation


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private final refreshNumber:I

.field private final service:Ljava/security/Provider$Service;


# direct methods
.method private constructor <init>(Ljava/lang/String;ILjava/security/Provider$Service;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;->algorithm:Ljava/lang/String;

    iput p2, p0, Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;->refreshNumber:I

    iput-object p3, p0, Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;->service:Ljava/security/Provider$Service;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/security/Provider$Service;Lorg/apache/harmony/security/fortress/Engine$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;-><init>(Ljava/lang/String;ILjava/security/Provider$Service;)V

    return-void
.end method

.method static synthetic access$000(Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;)I
    .locals 1

    iget v0, p0, Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;->refreshNumber:I

    return v0
.end method

.method static synthetic access$200(Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;)Ljava/security/Provider$Service;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;->service:Ljava/security/Provider$Service;

    return-object v0
.end method
