.class final Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter;
.super Ljava/lang/Object;
.source "HtmlTree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/common/html/parser/HtmlTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PlainTextPrinter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter$Separator;
    }
.end annotation


# instance fields
.field private endingNewLines:I

.field private quoteDepth:I

.field private final sb:Ljava/lang/StringBuilder;

.field private separator:Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter$Separator;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 546
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter;->sb:Ljava/lang/StringBuilder;

    .line 584
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter;->quoteDepth:I

    .line 594
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter;->endingNewLines:I

    .line 597
    sget-object v0, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter$Separator;->None:Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter$Separator;

    iput-object v0, p0, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter;->separator:Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter$Separator;

    return-void
.end method

.method private appendNewLine()V
    .locals 2

    .prologue
    .line 764
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter;->maybeAddQuoteMarks(Z)V

    .line 765
    iget-object v0, p0, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter;->sb:Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 766
    iget v0, p0, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter;->endingNewLines:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter;->endingNewLines:I

    .line 767
    return-void
.end method

.method private appendTextDirect(Ljava/lang/String;)V
    .locals 4
    .parameter "text"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 711
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 720
    :goto_0
    return-void

    .line 714
    :cond_0
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_1

    move v0, v1

    :goto_1
    const-string v3, "text must not contain newlines."

    invoke-static {v0, v3}, Lcom/google/android/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 716
    invoke-direct {p0}, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter;->flushSeparator()V

    .line 717
    invoke-direct {p0, v1}, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter;->maybeAddQuoteMarks(Z)V

    .line 718
    iget-object v0, p0, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    iput v2, p0, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter;->endingNewLines:I

    goto :goto_0

    :cond_1
    move v0, v2

    .line 714
    goto :goto_1
.end method

.method private flushSeparator()V
    .locals 2

    .prologue
    .line 735
    sget-object v0, Lcom/google/android/common/html/parser/HtmlTree$2;->$SwitchMap$com$google$android$common$html$parser$HtmlTree$PlainTextPrinter$Separator:[I

    iget-object v1, p0, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter;->separator:Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter$Separator;

    invoke-virtual {v1}, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter$Separator;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 756
    :cond_0
    :goto_0
    sget-object v0, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter$Separator;->None:Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter$Separator;

    iput-object v0, p0, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter;->separator:Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter$Separator;

    .line 757
    return-void

    .line 737
    :pswitch_0
    iget v0, p0, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter;->endingNewLines:I

    if-nez v0, :cond_0

    .line 742
    iget-object v0, p0, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter;->sb:Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 746
    :goto_1
    :pswitch_1
    iget v0, p0, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter;->endingNewLines:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 747
    invoke-direct {p0}, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter;->appendNewLine()V

    goto :goto_1

    .line 751
    :goto_2
    :pswitch_2
    iget v0, p0, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter;->endingNewLines:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 752
    invoke-direct {p0}, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter;->appendNewLine()V

    goto :goto_2

    .line 735
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static isHtmlWhiteSpace(C)Z
    .locals 1
    .parameter "ch"

    .prologue
    .line 577
    const-string v0, " \n\r\t\u000c"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeAddQuoteMarks(Z)V
    .locals 3
    .parameter "includeEndingSpace"

    .prologue
    .line 777
    iget v1, p0, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter;->endingNewLines:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter;->quoteDepth:I

    if-lez v1, :cond_1

    .line 778
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter;->quoteDepth:I

    if-ge v0, v1, :cond_0

    .line 779
    iget-object v1, p0, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter;->sb:Ljava/lang/StringBuilder;

    const/16 v2, 0x3e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 778
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 781
    :cond_0
    if-eqz p1, :cond_1

    .line 782
    iget-object v1, p0, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter;->sb:Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 785
    .end local v0           #i:I
    :cond_1
    return-void
.end method


# virtual methods
.method final appendForcedLineBreak()V
    .locals 0

    .prologue
    .line 726
    invoke-direct {p0}, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter;->flushSeparator()V

    .line 727
    invoke-direct {p0}, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter;->appendNewLine()V

    .line 728
    return-void
.end method

.method final appendNormalText(Ljava/lang/String;)V
    .locals 4
    .parameter "text"

    .prologue
    .line 650
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 671
    :cond_0
    :goto_0
    return-void

    .line 653
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter;->isHtmlWhiteSpace(C)Z

    move-result v1

    .line 654
    .local v1, startsWithSpace:Z
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter;->isHtmlWhiteSpace(C)Z

    move-result v0

    .line 657
    .local v0, endsWithSpace:Z
    const-string v2, " \n\r\t\u000c"

    invoke-static {v2}, Lcom/google/android/common/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/google/android/common/base/CharMatcher;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/common/base/CharMatcher;->trimFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 660
    const-string v2, " \n\r\t\u000c"

    invoke-static {v2}, Lcom/google/android/common/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/google/android/common/base/CharMatcher;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, p1, v3}, Lcom/google/android/common/base/CharMatcher;->collapseFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;

    move-result-object p1

    .line 662
    if-eqz v1, :cond_2

    .line 663
    sget-object v2, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter$Separator;->Space:Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter$Separator;

    invoke-virtual {p0, v2}, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter;->setSeparator(Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter$Separator;)V

    .line 666
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter;->appendTextDirect(Ljava/lang/String;)V

    .line 668
    if-eqz v0, :cond_0

    .line 669
    sget-object v2, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter$Separator;->Space:Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter$Separator;

    invoke-virtual {p0, v2}, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter;->setSeparator(Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter$Separator;)V

    goto :goto_0
.end method

.method final appendPreText(Ljava/lang/String;)V
    .locals 4
    .parameter "text"

    .prologue
    .line 680
    const-string v2, "[\\r\\n]"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 683
    .local v1, lines:[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-direct {p0, v2}, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter;->appendTextDirect(Ljava/lang/String;)V

    .line 688
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 689
    invoke-direct {p0}, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter;->appendNewLine()V

    .line 690
    aget-object v2, v1, v0

    invoke-direct {p0, v2}, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter;->appendTextDirect(Ljava/lang/String;)V

    .line 688
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 692
    :cond_0
    return-void
.end method

.method final decQuoteDepth()V
    .locals 2

    .prologue
    .line 640
    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter;->quoteDepth:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter;->quoteDepth:I

    .line 641
    return-void
.end method

.method final getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final getTextLength()I
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    return v0
.end method

.method final incQuoteDepth()V
    .locals 1

    .prologue
    .line 635
    iget v0, p0, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter;->quoteDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter;->quoteDepth:I

    .line 636
    return-void
.end method

.method final setSeparator(Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter$Separator;)V
    .locals 2
    .parameter "newSeparator"

    .prologue
    .line 628
    invoke-virtual {p1}, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter$Separator;->ordinal()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter;->separator:Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter$Separator;

    invoke-virtual {v1}, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter$Separator;->ordinal()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 629
    iput-object p1, p0, Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter;->separator:Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter$Separator;

    .line 631
    :cond_0
    return-void
.end method
