.class synthetic Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl$1;
.super Ljava/lang/Object;
.source "GbaAuthProviderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$apache$http$impl$client$naf$gba$GbaType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lorg/apache/http/impl/client/naf/gba/GbaType;->values()[Lorg/apache/http/impl/client/naf/gba/GbaType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl$1;->$SwitchMap$org$apache$http$impl$client$naf$gba$GbaType:[I

    :try_start_0
    sget-object v0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl$1;->$SwitchMap$org$apache$http$impl$client$naf$gba$GbaType:[I

    sget-object v1, Lorg/apache/http/impl/client/naf/gba/GbaType;->GBA_NOT_SUPPORTED:Lorg/apache/http/impl/client/naf/gba/GbaType;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/naf/gba/GbaType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl$1;->$SwitchMap$org$apache$http$impl$client$naf$gba$GbaType:[I

    sget-object v1, Lorg/apache/http/impl/client/naf/gba/GbaType;->GBA_ME_SUPPORTED:Lorg/apache/http/impl/client/naf/gba/GbaType;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/naf/gba/GbaType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl$1;->$SwitchMap$org$apache$http$impl$client$naf$gba$GbaType:[I

    sget-object v1, Lorg/apache/http/impl/client/naf/gba/GbaType;->GBA_U_SUPPORTED:Lorg/apache/http/impl/client/naf/gba/GbaType;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/naf/gba/GbaType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method
