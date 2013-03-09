.class public Ljava/net/URLEncoder;
.super Ljava/lang/Object;
.source "URLEncoder.java"


# static fields
.field static ENCODER:Llibcore/net/UriCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/net/URLEncoder$1;

    invoke-direct {v0}, Ljava/net/URLEncoder$1;-><init>()V

    sput-object v0, Ljava/net/URLEncoder;->ENCODER:Llibcore/net/UriCodec;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Ljava/net/URLEncoder;->ENCODER:Llibcore/net/UriCodec;

    sget-object v1, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, p0, v1}, Llibcore/net/UriCodec;->encode(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    sget-object v0, Ljava/net/URLEncoder;->ENCODER:Llibcore/net/UriCodec;

    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Llibcore/net/UriCodec;->encode(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
