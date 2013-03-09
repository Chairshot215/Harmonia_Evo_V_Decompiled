.class public final Lcom/futuredial/vxx/CharsetUtils;
.super Ljava/lang/Object;
.source "CharsetUtils.java"


# static fields
.field private static final VENDOR_DOCOMO:Ljava/lang/String; = "docomo"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method public static charsetForVendor(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .locals 1
    .parameter "charsetName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/UnsupportedCharsetException;,
            Ljava/nio/charset/IllegalCharsetNameException;
        }
    .end annotation

    .prologue
    .line 140
    invoke-static {}, Lcom/futuredial/vxx/CharsetUtils;->getDefaultVendor()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/futuredial/vxx/CharsetUtils;->charsetForVendor(Ljava/lang/String;Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0
.end method

.method public static charsetForVendor(Ljava/lang/String;Ljava/lang/String;)Ljava/nio/charset/Charset;
    .locals 1
    .parameter "charsetName"
    .parameter "vendor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/UnsupportedCharsetException;,
            Ljava/nio/charset/IllegalCharsetNameException;
        }
    .end annotation

    .prologue
    .line 117
    invoke-static {p0, p1}, Lcom/futuredial/vxx/CharsetUtils;->nameForVendor(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 118
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0
.end method

.method private static getDefaultVendor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    return-object v0
.end method

.method private static isShiftJis(Ljava/lang/String;)Z
    .locals 3
    .parameter "charsetName"

    .prologue
    const/4 v1, 0x0

    .line 153
    if-nez p0, :cond_1

    .line 161
    :cond_0
    :goto_0
    return v1

    .line 156
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 157
    .local v0, length:I
    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    const/16 v2, 0x9

    if-ne v0, v2, :cond_0

    .line 161
    :cond_2
    const-string v2, "shift_jis"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "shift-jis"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "sjis"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static nameForDefaultVendor(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "charsetName"

    .prologue
    .line 93
    invoke-static {}, Lcom/futuredial/vxx/CharsetUtils;->getDefaultVendor()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/futuredial/vxx/CharsetUtils;->nameForVendor(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static nameForVendor(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "charsetName"
    .parameter "vendor"

    .prologue
    .line 72
    const-string v0, "docomo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/futuredial/vxx/CharsetUtils;->isShiftJis(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    const-string p0, "docomo-shift_jis-2007"

    .line 77
    .end local p0
    :cond_0
    return-object p0
.end method
