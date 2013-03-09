.class Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger$SegmentEntry;
.super Ljava/lang/Object;
.source "ClientReportLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SegmentEntry"
.end annotation


# instance fields
.field private final ANNOTATION_KEY:Ljava/lang/String;

.field private final mMessageHeader:Lcom/google/protos/speech/service/SpeechService$MessageHeader;

.field private final mText:Landroid/text/SpannableStringBuilder;

.field final synthetic this$0:Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;


# direct methods
.method private constructor <init>(Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;Lcom/google/protos/speech/service/SpeechService$MessageHeader;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "messageHeader"
    .parameter "text"

    .prologue
    .line 411
    iput-object p1, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger$SegmentEntry;->this$0:Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 409
    const-string v0, "SegmentEntry"

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger$SegmentEntry;->ANNOTATION_KEY:Ljava/lang/String;

    .line 412
    iput-object p2, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger$SegmentEntry;->mMessageHeader:Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    .line 413
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger$SegmentEntry;->mText:Landroid/text/SpannableStringBuilder;

    .line 414
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;Lcom/google/protos/speech/service/SpeechService$MessageHeader;Ljava/lang/String;Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 404
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger$SegmentEntry;-><init>(Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;Lcom/google/protos/speech/service/SpeechService$MessageHeader;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger$SegmentEntry;)Landroid/text/SpannableStringBuilder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 404
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger$SegmentEntry;->mText:Landroid/text/SpannableStringBuilder;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger$SegmentEntry;)Lcom/google/protos/speech/service/SpeechService$MessageHeader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 404
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger$SegmentEntry;->mMessageHeader:Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    return-object v0
.end method

.method private getAnnotation(Ljava/lang/String;)Landroid/text/Annotation;
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 450
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger$SegmentEntry;->mText:Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger$SegmentEntry;->mText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const-class v3, Landroid/text/Annotation;

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Annotation;

    array-length v3, v0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 451
    const-string v4, "SegmentEntry"

    invoke-virtual {v1}, Landroid/text/Annotation;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Landroid/text/Annotation;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v0, v1

    .line 455
    :goto_1
    return-object v0

    .line 450
    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 455
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public addSuggestion(III)V
    .locals 4
    .parameter "suggestionId"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 425
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger$SegmentEntry;->mText:Landroid/text/SpannableStringBuilder;

    new-instance v1, Landroid/text/Annotation;

    const-string v2, "SegmentEntry"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x21

    invoke-virtual {v0, v1, p2, p3, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 427
    return-void
.end method

.method public updateSuggestion(ILjava/lang/String;)V
    .locals 6
    .parameter "suggestionId"
    .parameter "selectedText"

    .prologue
    .line 437
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger$SegmentEntry;->getAnnotation(Ljava/lang/String;)Landroid/text/Annotation;

    move-result-object v0

    .line 438
    .local v0, ann:Landroid/text/Annotation;
    if-nez v0, :cond_0

    .line 439
    invoke-static {}, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;->access$900()Ljava/lang/String;

    move-result-object v3

    const-string v4, "#updateSuggestion - not found"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :goto_0
    return-void

    .line 442
    :cond_0
    iget-object v3, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger$SegmentEntry;->mText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3, v0}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 443
    .local v2, start:I
    iget-object v3, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger$SegmentEntry;->mText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3, v0}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 444
    .local v1, end:I
    iget-object v3, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger$SegmentEntry;->mText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3, v2, v1, p2}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 445
    iget-object v3, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger$SegmentEntry;->mText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v2

    const/16 v5, 0x21

    invoke-virtual {v3, v0, v2, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method
