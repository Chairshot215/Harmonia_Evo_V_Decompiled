.class Lcom/htc/gson/Escaper;
.super Ljava/lang/Object;
.source "Escaper.java"


# static fields
.field private static final HEX_CHARS:[C

.field private static final HTML_ESCAPE_CHARS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final JS_ESCAPE_CHARS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final escapeHtmlCharacters:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    const/16 v2, 0x10

    new-array v2, v2, [C

    fill-array-data v2, :array_0

    sput-object v2, Lcom/htc/gson/Escaper;->HEX_CHARS:[C

    .line 49
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 50
    .local v1, mandatoryEscapeSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Character;>;"
    const/16 v2, 0x22

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 51
    const/16 v2, 0x5c

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    sput-object v2, Lcom/htc/gson/Escaper;->JS_ESCAPE_CHARS:Ljava/util/Set;

    .line 54
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 55
    .local v0, htmlEscapeSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Character;>;"
    const/16 v2, 0x3c

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    const/16 v2, 0x3e

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    const/16 v2, 0x26

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    const/16 v2, 0x3d

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    const/16 v2, 0x27

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 61
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    sput-object v2, Lcom/htc/gson/Escaper;->HTML_ESCAPE_CHARS:Ljava/util/Set;

    .line 62
    return-void

    .line 41
    nop

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
    .end array-data
.end method

.method constructor <init>(Z)V
    .locals 0
    .parameter "escapeHtmlCharacters"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-boolean p1, p0, Lcom/htc/gson/Escaper;->escapeHtmlCharacters:Z

    .line 68
    return-void
.end method

.method private static appendHexJavaScriptRepresentation(ILjava/lang/Appendable;)V
    .locals 4
    .parameter "codePoint"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    invoke-static {p0}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    invoke-static {p0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v0

    .line 153
    .local v0, surrogates:[C
    const/4 v1, 0x0

    aget-char v1, v0, v1

    invoke-static {v1, p1}, Lcom/htc/gson/Escaper;->appendHexJavaScriptRepresentation(ILjava/lang/Appendable;)V

    .line 154
    const/4 v1, 0x1

    aget-char v1, v0, v1

    invoke-static {v1, p1}, Lcom/htc/gson/Escaper;->appendHexJavaScriptRepresentation(ILjava/lang/Appendable;)V

    .line 162
    .end local v0           #surrogates:[C
    :goto_0
    return-void

    .line 157
    :cond_0
    const-string v1, "\\u"

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v1

    sget-object v2, Lcom/htc/gson/Escaper;->HEX_CHARS:[C

    ushr-int/lit8 v3, p0, 0xc

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v1

    sget-object v2, Lcom/htc/gson/Escaper;->HEX_CHARS:[C

    ushr-int/lit8 v3, p0, 0x8

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v1

    sget-object v2, Lcom/htc/gson/Escaper;->HEX_CHARS:[C

    ushr-int/lit8 v3, p0, 0x4

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v1

    sget-object v2, Lcom/htc/gson/Escaper;->HEX_CHARS:[C

    and-int/lit8 v3, p0, 0xf

    aget-char v2, v2, v3

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_0
.end method

.method private escapeJsonString(Ljava/lang/CharSequence;Ljava/lang/StringBuffer;)V
    .locals 6
    .parameter "plainText"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    const/4 v4, 0x0

    .line 82
    .local v4, pos:I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 84
    .local v3, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 85
    invoke-static {p1, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 86
    .local v1, codePoint:I
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    .line 88
    .local v0, charCount:I
    invoke-static {v1}, Lcom/htc/gson/Escaper;->isControlCharacter(I)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-direct {p0, v1}, Lcom/htc/gson/Escaper;->mustEscapeCharInJsString(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 84
    :goto_1
    add-int/2addr v2, v0

    goto :goto_0

    .line 92
    :cond_0
    invoke-virtual {p2, p1, v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuffer;

    .line 93
    add-int v4, v2, v0

    .line 94
    sparse-switch v1, :sswitch_data_0

    .line 120
    invoke-static {v1, p2}, Lcom/htc/gson/Escaper;->appendHexJavaScriptRepresentation(ILjava/lang/Appendable;)V

    goto :goto_1

    .line 96
    :sswitch_0
    const-string v5, "\\b"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 99
    :sswitch_1
    const-string v5, "\\t"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 102
    :sswitch_2
    const-string v5, "\\n"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 105
    :sswitch_3
    const-string v5, "\\f"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 108
    :sswitch_4
    const-string v5, "\\r"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 111
    :sswitch_5
    const-string v5, "\\\\"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 114
    :sswitch_6
    const-string v5, "\\/"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 117
    :sswitch_7
    const-string v5, "\\\""

    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 124
    .end local v0           #charCount:I
    .end local v1           #codePoint:I
    :cond_1
    invoke-virtual {p2, p1, v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuffer;

    .line 125
    return-void

    .line 94
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0x9 -> :sswitch_1
        0xa -> :sswitch_2
        0xc -> :sswitch_3
        0xd -> :sswitch_4
        0x22 -> :sswitch_7
        0x2f -> :sswitch_6
        0x5c -> :sswitch_5
    .end sparse-switch
.end method

.method private static isControlCharacter(I)Z
    .locals 1
    .parameter "codePoint"

    .prologue
    .line 139
    const/16 v0, 0x20

    if-lt p0, v0, :cond_0

    const/16 v0, 0x2028

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2029

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7f

    if-lt p0, v0, :cond_1

    const/16 v0, 0x9f

    if-gt p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private mustEscapeCharInJsString(I)Z
    .locals 4
    .parameter "codepoint"

    .prologue
    const/4 v1, 0x0

    .line 128
    invoke-static {p1}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 129
    int-to-char v0, p1

    .line 130
    .local v0, c:C
    sget-object v2, Lcom/htc/gson/Escaper;->JS_ESCAPE_CHARS:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/htc/gson/Escaper;->escapeHtmlCharacters:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/htc/gson/Escaper;->HTML_ESCAPE_CHARS:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 133
    .end local v0           #c:C
    :cond_1
    return v1
.end method


# virtual methods
.method public escapeJsonString(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 3
    .parameter "plainText"

    .prologue
    .line 71
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x14

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 73
    .local v1, escapedString:Ljava/lang/StringBuffer;
    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/htc/gson/Escaper;->escapeJsonString(Ljava/lang/CharSequence;Ljava/lang/StringBuffer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
