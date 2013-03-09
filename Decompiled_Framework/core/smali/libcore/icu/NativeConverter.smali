.class public final Llibcore/icu/NativeConverter;
.super Ljava/lang/Object;
.source "NativeConverter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native canEncode(JI)Z
.end method

.method public static native charsetForName(Ljava/lang/String;)Ljava/nio/charset/Charset;
.end method

.method public static native closeConverter(J)V
.end method

.method public static native contains(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public static native decode(J[BI[CI[IZ)I
.end method

.method public static native encode(J[CI[BI[IZ)I
.end method

.method public static native getAvailableCharsetNames()[Ljava/lang/String;
.end method

.method public static native getAveBytesPerChar(J)F
.end method

.method public static native getAveCharsPerByte(J)F
.end method

.method public static native getMaxBytesPerChar(J)I
.end method

.method public static native getMinBytesPerChar(J)I
.end method

.method public static native getSubstitutionBytes(J)[B
.end method

.method public static native openConverter(Ljava/lang/String;)J
.end method

.method public static native resetByteToChar(J)V
.end method

.method public static native resetCharToByte(J)V
.end method

.method private static native setCallbackDecode(JIILjava/lang/String;)I
.end method

.method public static setCallbackDecode(JLjava/nio/charset/CharsetDecoder;)I
    .locals 3

    invoke-virtual {p2}, Ljava/nio/charset/CharsetDecoder;->malformedInputAction()Ljava/nio/charset/CodingErrorAction;

    move-result-object v0

    invoke-static {v0}, Llibcore/icu/NativeConverter;->translateCodingErrorAction(Ljava/nio/charset/CodingErrorAction;)I

    move-result v0

    invoke-virtual {p2}, Ljava/nio/charset/CharsetDecoder;->unmappableCharacterAction()Ljava/nio/charset/CodingErrorAction;

    move-result-object v1

    invoke-static {v1}, Llibcore/icu/NativeConverter;->translateCodingErrorAction(Ljava/nio/charset/CodingErrorAction;)I

    move-result v1

    invoke-virtual {p2}, Ljava/nio/charset/CharsetDecoder;->replacement()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p1, v0, v1, v2}, Llibcore/icu/NativeConverter;->setCallbackDecode(JIILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static native setCallbackEncode(JII[B)I
.end method

.method public static setCallbackEncode(JLjava/nio/charset/CharsetEncoder;)I
    .locals 3

    invoke-virtual {p2}, Ljava/nio/charset/CharsetEncoder;->malformedInputAction()Ljava/nio/charset/CodingErrorAction;

    move-result-object v0

    invoke-static {v0}, Llibcore/icu/NativeConverter;->translateCodingErrorAction(Ljava/nio/charset/CodingErrorAction;)I

    move-result v0

    invoke-virtual {p2}, Ljava/nio/charset/CharsetEncoder;->unmappableCharacterAction()Ljava/nio/charset/CodingErrorAction;

    move-result-object v1

    invoke-static {v1}, Llibcore/icu/NativeConverter;->translateCodingErrorAction(Ljava/nio/charset/CodingErrorAction;)I

    move-result v1

    invoke-virtual {p2}, Ljava/nio/charset/CharsetEncoder;->replacement()[B

    move-result-object v2

    invoke-static {p0, p1, v0, v1, v2}, Llibcore/icu/NativeConverter;->setCallbackEncode(JII[B)I

    move-result v0

    return v0
.end method

.method private static translateCodingErrorAction(Ljava/nio/charset/CodingErrorAction;)I
    .locals 1

    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Ljava/nio/charset/CodingErrorAction;->IGNORE:Ljava/nio/charset/CodingErrorAction;

    if-ne p0, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    if-ne p0, v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
