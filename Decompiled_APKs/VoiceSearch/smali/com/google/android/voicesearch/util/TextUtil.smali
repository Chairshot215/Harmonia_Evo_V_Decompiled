.class public Lcom/google/android/voicesearch/util/TextUtil;
.super Ljava/lang/Object;
.source "TextUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method

.method public static createForceUppercaseAnnotation()Landroid/text/Annotation;
    .locals 3

    .prologue
    .line 86
    new-instance v0, Landroid/text/Annotation;

    const-string v1, "com.google.android.voicesearch.FORCE_UPPERCASE"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createLinkTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "label"
    .parameter "linkUrl"

    .prologue
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/google/android/voicesearch/util/TextUtil;->getStartLinkReplace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</a>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static createSelectedAlternateSpan(Lcom/google/protos/speech/common/Alternates$AlternateSpan;)Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;
    .locals 2
    .parameter "alternateSpan"

    .prologue
    .line 169
    invoke-static {}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->newBuilder()Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->setUnit(I)Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->getStart()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->setStart(I)Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->getLength()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->setLength(I)Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getSegmentAnnotations(Landroid/text/Spanned;)Ljava/util/List;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spanned;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/text/Annotation;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 153
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 154
    invoke-interface {p0}, Landroid/text/Spanned;->length()I

    move-result v0

    const-class v3, Landroid/text/Annotation;

    invoke-interface {p0, v1, v0, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Annotation;

    array-length v3, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v0, v1

    .line 155
    const-string v5, "com.google.android.voicesearch.SEGMENT_ID"

    invoke-virtual {v4}, Landroid/text/Annotation;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 156
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 159
    :cond_1
    return-object v2
.end method

.method private static getStartLinkReplace(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "url"

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<a href=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSuggestionSpan(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;Lcom/google/android/voicesearch/speechservice/RecognitionParameters;)Ljava/lang/CharSequence;
    .locals 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/common/Alternates$AlternateSpan;",
            ">;",
            "Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;",
            "Lcom/google/android/voicesearch/speechservice/RecognitionParameters;",
            ")",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 108
    const-string v1, "UTF-8"

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    .line 110
    new-instance v10, Landroid/text/SpannableStringBuilder;

    invoke-direct {v10, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 113
    new-instance v1, Landroid/text/Annotation;

    const-string v2, "com.google.android.voicesearch.SEGMENT_ID"

    invoke-direct {v1, v2, p1}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v10}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v10, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 116
    const/4 v1, 0x1

    move-object/from16 v0, p5

    invoke-static {v0, v1}, Lcom/google/android/voicesearch/speechservice/ProtoBufUtils;->makeMessageHeader(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;Z)Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    move-result-object v1

    move-object/from16 v0, p4

    invoke-virtual {v0, p1, v1, p2}, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;->addSegment(Ljava/lang/String;Lcom/google/protos/speech/service/SpeechService$MessageHeader;Ljava/lang/String;)V

    .line 119
    if-eqz p1, :cond_0

    .line 120
    new-instance v1, Landroid/text/style/EasyEditSpan;

    invoke-direct {v1}, Landroid/text/style/EasyEditSpan;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v10}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v10, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 124
    :cond_0
    if-eqz p3, :cond_2

    .line 125
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/google/protos/speech/common/Alternates$AlternateSpan;

    .line 126
    invoke-virtual {v8}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->getStart()I

    move-result v1

    invoke-static {v9, v1}, Lcom/google/android/voicesearch/util/UtfUtils;->getOffsetUtf16([BI)I

    move-result v12

    .line 127
    invoke-virtual {v8}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->getStart()I

    move-result v1

    invoke-virtual {v8}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->getLength()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v9, v1}, Lcom/google/android/voicesearch/util/UtfUtils;->getOffsetUtf16([BI)I

    move-result v7

    .line 130
    invoke-virtual {v8}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->getAlternatesList()Ljava/util/List;

    move-result-object v3

    .line 131
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    new-array v4, v1, [Ljava/lang/String;

    .line 133
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    array-length v1, v4

    if-ge v2, v1, :cond_1

    .line 134
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protos/speech/common/Alternates$Alternate;

    invoke-virtual {v1}, Lcom/google/protos/speech/common/Alternates$Alternate;->getText()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    .line 133
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 136
    :cond_1
    new-instance v1, Landroid/text/style/SuggestionSpan;

    const/4 v3, 0x0

    const/4 v5, 0x1

    const-class v6, Lcom/google/android/voicesearch/ime/SuggestionSpanBroadcastReceiver;

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Landroid/text/style/SuggestionSpan;-><init>(Landroid/content/Context;Ljava/util/Locale;[Ljava/lang/String;ILjava/lang/Class;)V

    .line 139
    const/16 v2, 0x21

    invoke-virtual {v10, v1, v12, v7, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 141
    invoke-virtual {v1}, Landroid/text/style/SuggestionSpan;->hashCode()I

    move-result v3

    const/4 v1, 0x1

    move-object/from16 v0, p5

    invoke-static {v0, v1}, Lcom/google/android/voicesearch/speechservice/ProtoBufUtils;->makeMessageHeader(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;Z)Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    move-result-object v4

    invoke-static {v8}, Lcom/google/android/voicesearch/util/TextUtil;->createSelectedAlternateSpan(Lcom/google/protos/speech/common/Alternates$AlternateSpan;)Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;

    move-result-object v5

    move-object/from16 v1, p4

    move-object v2, p1

    move v6, v12

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;->addSuggestion(Ljava/lang/String;ILcom/google/protos/speech/service/SpeechService$MessageHeader;Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;II)V

    goto :goto_0

    .line 146
    :cond_2
    return-object v10
.end method

.method public static getTextSpan(Landroid/text/Spanned;Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "spanned"
    .parameter "span"

    .prologue
    .line 163
    invoke-interface {p0, p1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {p0, p1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {p0, v0, v1}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static hexToBytes(Ljava/lang/CharSequence;)[B
    .locals 7
    .parameter "str"

    .prologue
    const/4 v5, 0x0

    .line 212
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    div-int/lit8 v4, v4, 0x2

    new-array v0, v4, [B

    .line 213
    .local v0, bytes:[B
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 230
    :cond_0
    return-object v0

    .line 216
    :cond_1
    aput-byte v5, v0, v5

    .line 217
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    rem-int/lit8 v3, v4, 0x2

    .line 218
    .local v3, nibbleIdx:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 219
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 220
    .local v1, c:C
    invoke-static {v1}, Lcom/google/android/voicesearch/util/TextUtil;->isHex(C)Z

    move-result v4

    if-nez v4, :cond_2

    .line 221
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "string contains non-hex chars"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 223
    :cond_2
    rem-int/lit8 v4, v3, 0x2

    if-nez v4, :cond_3

    .line 224
    shr-int/lit8 v4, v3, 0x1

    invoke-static {v1}, Lcom/google/android/voicesearch/util/TextUtil;->hexValue(C)I

    move-result v5

    shl-int/lit8 v5, v5, 0x4

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 228
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 218
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 226
    :cond_3
    shr-int/lit8 v4, v3, 0x1

    aget-byte v5, v0, v4

    invoke-static {v1}, Lcom/google/android/voicesearch/util/TextUtil;->hexValue(C)I

    move-result v6

    int-to-byte v6, v6

    add-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    goto :goto_1
.end method

.method private static hexValue(C)I
    .locals 1
    .parameter "c"

    .prologue
    .line 181
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 182
    add-int/lit8 v0, p0, -0x30

    .line 186
    :goto_0
    return v0

    .line 183
    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x66

    if-gt p0, v0, :cond_1

    .line 184
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 186
    :cond_1
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0
.end method

.method public static isForceUppercase(Landroid/text/Annotation;)Z
    .locals 2
    .parameter "ann"

    .prologue
    .line 90
    const-string v0, "com.google.android.voicesearch.FORCE_UPPERCASE"

    invoke-virtual {p0}, Landroid/text/Annotation;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isHex(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 175
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x66

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_3

    const/16 v0, 0x46

    if-gt p0, v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static replaceLink(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "html"
    .parameter "linkUrl"

    .prologue
    .line 67
    const-string v0, "START_LINK"

    invoke-static {p1}, Lcom/google/android/voicesearch/util/TextUtil;->getStartLinkReplace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 68
    const-string v0, "END_LINK"

    const-string v1, "</a>"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 70
    invoke-static {p0}, Lcom/google/android/voicesearch/util/TextUtil;->replaceTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replaceTags(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "html"

    .prologue
    .line 78
    const-string v0, "NEW_LINE"

    const-string v1, "<br/>"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static safeToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "obj"

    .prologue
    .line 237
    if-nez p0, :cond_0

    .line 238
    const-string v0, ""

    .line 240
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
