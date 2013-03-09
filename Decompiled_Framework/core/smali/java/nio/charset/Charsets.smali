.class public Ljava/nio/charset/Charsets;
.super Ljava/lang/Object;
.source "Charsets.java"


# static fields
.field public static final ISO_8859_1:Ljava/nio/charset/Charset;

.field public static final US_ASCII:Ljava/nio/charset/Charset;

.field public static final UTF_8:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Ljava/nio/charset/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Ljava/nio/charset/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native asciiBytesToChars([BII[C)V
.end method

.method public static native isoLatin1BytesToChars([BII[C)V
.end method

.method public static native toAsciiBytes([CII)[B
.end method

.method public static toBigEndianUtf16Bytes([CII)[B
    .locals 7

    mul-int/lit8 v6, p2, 0x2

    new-array v3, v6, [B

    add-int v1, p1, p2

    const/4 v4, 0x0

    move v2, p1

    move v5, v4

    :goto_0
    if-ge v2, v1, :cond_0

    aget-char v0, p0, v2

    add-int/lit8 v4, v5, 0x1

    shr-int/lit8 v6, v0, 0x8

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    add-int/lit8 v5, v4, 0x1

    int-to-byte v6, v0

    aput-byte v6, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method public static native toIsoLatin1Bytes([CII)[B
.end method

.method public static native toUtf8Bytes([CII)[B
.end method
