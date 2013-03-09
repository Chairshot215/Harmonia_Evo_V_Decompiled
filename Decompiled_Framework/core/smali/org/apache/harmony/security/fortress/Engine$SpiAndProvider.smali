.class public final Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
.super Ljava/lang/Object;
.source "Engine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/fortress/Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SpiAndProvider"
.end annotation


# instance fields
.field public final provider:Ljava/security/Provider;

.field public final spi:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;Ljava/security/Provider;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->spi:Ljava/lang/Object;

    iput-object p2, p0, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->provider:Ljava/security/Provider;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Ljava/security/Provider;Lorg/apache/harmony/security/fortress/Engine$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;-><init>(Ljava/lang/Object;Ljava/security/Provider;)V

    return-void
.end method
