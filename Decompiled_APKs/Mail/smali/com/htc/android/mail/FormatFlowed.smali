.class public Lcom/htc/android/mail/FormatFlowed;
.super Ljava/lang/Object;
.source "FormatFlowed.java"


# static fields
.field private static final SLB:Lcom/htc/android/mail/ByteString;

.field private static final USENET_SIG:Lcom/htc/android/mail/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 6
    new-instance v0, Lcom/htc/android/mail/ByteString;

    const-string v1, " \r\n"

    invoke-direct {v0, v1}, Lcom/htc/android/mail/ByteString;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/htc/android/mail/FormatFlowed;->SLB:Lcom/htc/android/mail/ByteString;

    .line 7
    new-instance v0, Lcom/htc/android/mail/ByteString;

    const-string v1, "-- \r\n"

    invoke-direct {v0, v1}, Lcom/htc/android/mail/ByteString;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/htc/android/mail/FormatFlowed;->USENET_SIG:Lcom/htc/android/mail/ByteString;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final decode(Ljava/util/ArrayList;IIZ)V
    .locals 2
    .parameter
    .parameter "from"
    .parameter "to"
    .parameter "delsp"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/ByteString;",
            ">;IIZ)V"
        }
    .end annotation

    .prologue
    .line 11
    .local p0, lines:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/ByteString;>;"
    move v0, p1

    .local v0, line:I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 12
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/ByteString;

    .line 14
    .local v1, s:Lcom/htc/android/mail/ByteString;
    invoke-static {v1}, Lcom/htc/android/mail/FormatFlowed;->stripSpaceStuffing(Lcom/htc/android/mail/ByteString;)V

    .line 15
    invoke-static {v1, p3}, Lcom/htc/android/mail/FormatFlowed;->stripSoftLineBreak(Lcom/htc/android/mail/ByteString;Z)V

    .line 11
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 17
    .end local v1           #s:Lcom/htc/android/mail/ByteString;
    :cond_0
    return-void
.end method

.method public static final encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "input"

    .prologue
    .line 68
    return-object p0
.end method

.method private static final isAllSpaces(Lcom/htc/android/mail/ByteString;I)Z
    .locals 3
    .parameter "s"
    .parameter "len"

    .prologue
    .line 58
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    add-int/lit8 v1, p1, -0x2

    if-ge v0, v1, :cond_1

    .line 59
    invoke-virtual {p0, v0}, Lcom/htc/android/mail/ByteString;->byteAt(I)B

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_0

    .line 60
    const/4 v1, 0x0

    .line 64
    :goto_1
    return v1

    .line 58
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static final needsEncoding(Ljava/lang/String;)Z
    .locals 1
    .parameter "input"

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method private static final stripSoftLineBreak(Lcom/htc/android/mail/ByteString;Z)V
    .locals 3
    .parameter "s"
    .parameter "delsp"

    .prologue
    const/4 v2, 0x2

    .line 32
    invoke-virtual {p0}, Lcom/htc/android/mail/ByteString;->length()I

    move-result v0

    .line 34
    .local v0, len:I
    if-gt v0, v2, :cond_1

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    sget-object v1, Lcom/htc/android/mail/FormatFlowed;->USENET_SIG:Lcom/htc/android/mail/ByteString;

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 48
    invoke-static {p0, v0}, Lcom/htc/android/mail/FormatFlowed;->isAllSpaces(Lcom/htc/android/mail/ByteString;I)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/htc/android/mail/FormatFlowed;->SLB:Lcom/htc/android/mail/ByteString;

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/ByteString;->endsWith(Lcom/htc/android/mail/ByteString;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    :cond_2
    if-eqz p1, :cond_3

    .line 50
    invoke-virtual {p0}, Lcom/htc/android/mail/ByteString;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lcom/htc/android/mail/ByteString;->delete(II)V

    goto :goto_0

    .line 52
    :cond_3
    invoke-virtual {p0}, Lcom/htc/android/mail/ByteString;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p0, v1, v2}, Lcom/htc/android/mail/ByteString;->delete(II)V

    goto :goto_0
.end method

.method private static final stripSpaceStuffing(Lcom/htc/android/mail/ByteString;)V
    .locals 3
    .parameter "s"

    .prologue
    const/4 v2, 0x0

    .line 20
    invoke-virtual {p0}, Lcom/htc/android/mail/ByteString;->length()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_1

    .line 29
    :cond_0
    :goto_0
    return-void

    .line 26
    :cond_1
    invoke-virtual {p0, v2}, Lcom/htc/android/mail/ByteString;->byteAt(I)B

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 27
    invoke-virtual {p0, v2}, Lcom/htc/android/mail/ByteString;->delete(I)V

    goto :goto_0
.end method
