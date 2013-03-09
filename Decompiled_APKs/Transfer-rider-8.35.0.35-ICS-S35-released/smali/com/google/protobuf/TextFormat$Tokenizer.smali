.class final Lcom/google/protobuf/TextFormat$Tokenizer;
.super Ljava/lang/Object;
.source "TextFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/TextFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Tokenizer"
.end annotation


# static fields
.field private static final DOUBLE_INFINITY:Ljava/util/regex/Pattern;

.field private static final FLOAT_INFINITY:Ljava/util/regex/Pattern;

.field private static final FLOAT_NAN:Ljava/util/regex/Pattern;

.field private static final TOKEN:Ljava/util/regex/Pattern;

.field private static final WHITESPACE:Ljava/util/regex/Pattern;


# instance fields
.field private column:I

.field private currentToken:Ljava/lang/String;

.field private line:I

.field private final matcher:Ljava/util/regex/Matcher;

.field private pos:I

.field private previousColumn:I

.field private previousLine:I

.field private final text:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x2

    .line 426
    const-string v0, "(\\s|(#.*$))++"

    invoke-static {v0, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/TextFormat$Tokenizer;->WHITESPACE:Ljava/util/regex/Pattern;

    .line 428
    const-string v0, "[a-zA-Z_][0-9a-zA-Z_+-]*+|[.]?[0-9+-][0-9a-zA-Z_.+-]*+|\"([^\"\n\\\\]|\\\\.)*+(\"|\\\\?$)|\'([^\'\n\\\\]|\\\\.)*+(\'|\\\\?$)"

    invoke-static {v0, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/TextFormat$Tokenizer;->TOKEN:Ljava/util/regex/Pattern;

    .line 435
    const-string v0, "-?inf(inity)?"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/TextFormat$Tokenizer;->DOUBLE_INFINITY:Ljava/util/regex/Pattern;

    .line 438
    const-string v0, "-?inf(inity)?f?"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/TextFormat$Tokenizer;->FLOAT_INFINITY:Ljava/util/regex/Pattern;

    .line 441
    const-string v0, "nanf?"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/TextFormat$Tokenizer;->FLOAT_NAN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    const/4 v0, 0x0

    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 413
    iput v0, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->pos:I

    .line 416
    iput v0, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->line:I

    .line 417
    iput v0, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->column:I

    .line 421
    iput v0, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->previousLine:I

    .line 422
    iput v0, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->previousColumn:I

    .line 447
    iput-object p1, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->text:Ljava/lang/CharSequence;

    .line 448
    sget-object v0, Lcom/google/protobuf/TextFormat$Tokenizer;->WHITESPACE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->matcher:Ljava/util/regex/Matcher;

    .line 449
    invoke-direct {p0}, Lcom/google/protobuf/TextFormat$Tokenizer;->skipWhitespace()V

    .line 450
    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$Tokenizer;->nextToken()V

    .line 451
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/CharSequence;Lcom/google/protobuf/TextFormat$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 407
    invoke-direct {p0, p1}, Lcom/google/protobuf/TextFormat$Tokenizer;-><init>(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private consumeByteString(Ljava/util/List;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/ByteString;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/TextFormat$ParseException;
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/google/protobuf/ByteString;>;"
    const/4 v2, 0x0

    .line 714
    iget-object v4, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 716
    .local v2, quote:C
    :cond_0
    const/16 v4, 0x22

    if-eq v2, v4, :cond_1

    const/16 v4, 0x27

    if-eq v2, v4, :cond_1

    .line 717
    const-string v4, "Expected string."

    invoke-virtual {p0, v4}, Lcom/google/protobuf/TextFormat$Tokenizer;->parseException(Ljava/lang/String;)Lcom/google/protobuf/TextFormat$ParseException;

    move-result-object v4

    throw v4

    .line 720
    :cond_1
    iget-object v4, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_2

    iget-object v4, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v2, :cond_3

    .line 722
    :cond_2
    const-string v4, "String missing ending quote."

    invoke-virtual {p0, v4}, Lcom/google/protobuf/TextFormat$Tokenizer;->parseException(Ljava/lang/String;)Lcom/google/protobuf/TextFormat$ParseException;

    move-result-object v4

    throw v4

    .line 726
    :cond_3
    :try_start_0
    iget-object v4, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 728
    .local v1, escaped:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/TextFormat;->unescapeBytes(Ljava/lang/CharSequence;)Lcom/google/protobuf/ByteString;

    move-result-object v3

    .line 729
    .local v3, result:Lcom/google/protobuf/ByteString;
    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$Tokenizer;->nextToken()V

    .line 730
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 734
    return-void

    .line 731
    .end local v1           #escaped:Ljava/lang/String;
    .end local v3           #result:Lcom/google/protobuf/ByteString;
    :catch_0
    move-exception v0

    .line 732
    .local v0, e:Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;
    invoke-virtual {v0}, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/protobuf/TextFormat$Tokenizer;->parseException(Ljava/lang/String;)Lcom/google/protobuf/TextFormat$ParseException;

    move-result-object v4

    throw v4
.end method

.method private floatParseException(Ljava/lang/NumberFormatException;)Lcom/google/protobuf/TextFormat$ParseException;
    .locals 2
    .parameter "e"

    .prologue
    .line 771
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t parse number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/TextFormat$Tokenizer;->parseException(Ljava/lang/String;)Lcom/google/protobuf/TextFormat$ParseException;

    move-result-object v0

    return-object v0
.end method

.method private integerParseException(Ljava/lang/NumberFormatException;)Lcom/google/protobuf/TextFormat$ParseException;
    .locals 2
    .parameter "e"

    .prologue
    .line 763
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t parse integer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/TextFormat$Tokenizer;->parseException(Ljava/lang/String;)Lcom/google/protobuf/TextFormat$ParseException;

    move-result-object v0

    return-object v0
.end method

.method private skipWhitespace()V
    .locals 3

    .prologue
    .line 498
    iget-object v0, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->matcher:Ljava/util/regex/Matcher;

    sget-object v1, Lcom/google/protobuf/TextFormat$Tokenizer;->WHITESPACE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 499
    iget-object v0, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->matcher:Ljava/util/regex/Matcher;

    iget-object v1, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    iget-object v2, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->regionEnd()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 502
    :cond_0
    return-void
.end method


# virtual methods
.method public atEnd()Z
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public consume(Ljava/lang/String;)V
    .locals 2
    .parameter "token"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/TextFormat$ParseException;
        }
    .end annotation

    .prologue
    .line 522
    invoke-virtual {p0, p1}, Lcom/google/protobuf/TextFormat$Tokenizer;->tryConsume(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/TextFormat$Tokenizer;->parseException(Ljava/lang/String;)Lcom/google/protobuf/TextFormat$ParseException;

    move-result-object v0

    throw v0

    .line 525
    :cond_0
    return-void
.end method

.method public consumeBoolean()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/TextFormat$ParseException;
        }
    .end annotation

    .prologue
    .line 674
    iget-object v0, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 675
    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$Tokenizer;->nextToken()V

    .line 676
    const/4 v0, 0x1

    .line 679
    :goto_0
    return v0

    .line 677
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 678
    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$Tokenizer;->nextToken()V

    .line 679
    const/4 v0, 0x0

    goto :goto_0

    .line 681
    :cond_1
    const-string v0, "Expected \"true\" or \"false\"."

    invoke-virtual {p0, v0}, Lcom/google/protobuf/TextFormat$Tokenizer;->parseException(Ljava/lang/String;)Lcom/google/protobuf/TextFormat$ParseException;

    move-result-object v0

    throw v0
.end method

.method public consumeByteString()Lcom/google/protobuf/ByteString;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/TextFormat$ParseException;
        }
    .end annotation

    .prologue
    .line 699
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 700
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lcom/google/protobuf/ByteString;>;"
    invoke-direct {p0, v0}, Lcom/google/protobuf/TextFormat$Tokenizer;->consumeByteString(Ljava/util/List;)V

    .line 701
    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 702
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/protobuf/TextFormat$Tokenizer;->consumeByteString(Ljava/util/List;)V

    goto :goto_0

    .line 704
    :cond_1
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFrom(Ljava/util/List;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    return-object v1
.end method

.method public consumeDouble()D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/TextFormat$ParseException;
        }
    .end annotation

    .prologue
    .line 626
    sget-object v4, Lcom/google/protobuf/TextFormat$Tokenizer;->DOUBLE_INFINITY:Ljava/util/regex/Pattern;

    iget-object v5, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 627
    iget-object v4, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 628
    .local v1, negative:Z
    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$Tokenizer;->nextToken()V

    .line 629
    if-eqz v1, :cond_0

    const-wide/high16 v4, -0x10

    .line 638
    .end local v1           #negative:Z
    :goto_0
    return-wide v4

    .line 629
    .restart local v1       #negative:Z
    :cond_0
    const-wide/high16 v4, 0x7ff0

    goto :goto_0

    .line 631
    .end local v1           #negative:Z
    :cond_1
    iget-object v4, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    const-string v5, "nan"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 632
    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$Tokenizer;->nextToken()V

    .line 633
    const-wide/high16 v4, 0x7ff8

    goto :goto_0

    .line 636
    :cond_2
    :try_start_0
    iget-object v4, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 637
    .local v2, result:D
    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$Tokenizer;->nextToken()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v4, v2

    .line 638
    goto :goto_0

    .line 639
    .end local v2           #result:D
    :catch_0
    move-exception v0

    .line 640
    .local v0, e:Ljava/lang/NumberFormatException;
    invoke-direct {p0, v0}, Lcom/google/protobuf/TextFormat$Tokenizer;->floatParseException(Ljava/lang/NumberFormatException;)Lcom/google/protobuf/TextFormat$ParseException;

    move-result-object v4

    throw v4
.end method

.method public consumeFloat()F
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/TextFormat$ParseException;
        }
    .end annotation

    .prologue
    .line 651
    sget-object v3, Lcom/google/protobuf/TextFormat$Tokenizer;->FLOAT_INFINITY:Ljava/util/regex/Pattern;

    iget-object v4, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 652
    iget-object v3, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 653
    .local v1, negative:Z
    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$Tokenizer;->nextToken()V

    .line 654
    if-eqz v1, :cond_0

    const/high16 v3, -0x80

    .line 663
    .end local v1           #negative:Z
    :goto_0
    return v3

    .line 654
    .restart local v1       #negative:Z
    :cond_0
    const/high16 v3, 0x7f80

    goto :goto_0

    .line 656
    .end local v1           #negative:Z
    :cond_1
    sget-object v3, Lcom/google/protobuf/TextFormat$Tokenizer;->FLOAT_NAN:Ljava/util/regex/Pattern;

    iget-object v4, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 657
    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$Tokenizer;->nextToken()V

    .line 658
    const/high16 v3, 0x7fc0

    goto :goto_0

    .line 661
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 662
    .local v2, result:F
    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$Tokenizer;->nextToken()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v2

    .line 663
    goto :goto_0

    .line 664
    .end local v2           #result:F
    :catch_0
    move-exception v0

    .line 665
    .local v0, e:Ljava/lang/NumberFormatException;
    invoke-direct {p0, v0}, Lcom/google/protobuf/TextFormat$Tokenizer;->floatParseException(Ljava/lang/NumberFormatException;)Lcom/google/protobuf/TextFormat$ParseException;

    move-result-object v3

    throw v3
.end method

.method public consumeIdentifier()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/TextFormat$ParseException;
        }
    .end annotation

    .prologue
    .line 546
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 547
    iget-object v3, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 548
    .local v0, c:C
    const/16 v3, 0x61

    if-gt v3, v0, :cond_0

    const/16 v3, 0x7a

    if-le v0, v3, :cond_3

    :cond_0
    const/16 v3, 0x41

    if-gt v3, v0, :cond_1

    const/16 v3, 0x5a

    if-le v0, v3, :cond_3

    :cond_1
    const/16 v3, 0x30

    if-gt v3, v0, :cond_2

    const/16 v3, 0x39

    if-le v0, v3, :cond_3

    :cond_2
    const/16 v3, 0x5f

    if-eq v0, v3, :cond_3

    const/16 v3, 0x2e

    if-ne v0, v3, :cond_4

    .line 546
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 554
    :cond_4
    const-string v3, "Expected identifier."

    invoke-virtual {p0, v3}, Lcom/google/protobuf/TextFormat$Tokenizer;->parseException(Ljava/lang/String;)Lcom/google/protobuf/TextFormat$ParseException;

    move-result-object v3

    throw v3

    .line 558
    .end local v0           #c:C
    :cond_5
    iget-object v2, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    .line 559
    .local v2, result:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$Tokenizer;->nextToken()V

    .line 560
    return-object v2
.end method

.method public consumeInt32()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/TextFormat$ParseException;
        }
    .end annotation

    .prologue
    .line 569
    :try_start_0
    iget-object v2, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/protobuf/TextFormat;->parseInt32(Ljava/lang/String;)I

    move-result v1

    .line 570
    .local v1, result:I
    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$Tokenizer;->nextToken()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 571
    return v1

    .line 572
    .end local v1           #result:I
    :catch_0
    move-exception v0

    .line 573
    .local v0, e:Ljava/lang/NumberFormatException;
    invoke-direct {p0, v0}, Lcom/google/protobuf/TextFormat$Tokenizer;->integerParseException(Ljava/lang/NumberFormatException;)Lcom/google/protobuf/TextFormat$ParseException;

    move-result-object v2

    throw v2
.end method

.method public consumeInt64()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/TextFormat$ParseException;
        }
    .end annotation

    .prologue
    .line 597
    :try_start_0
    iget-object v3, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/protobuf/TextFormat;->parseInt64(Ljava/lang/String;)J

    move-result-wide v1

    .line 598
    .local v1, result:J
    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$Tokenizer;->nextToken()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 599
    return-wide v1

    .line 600
    .end local v1           #result:J
    :catch_0
    move-exception v0

    .line 601
    .local v0, e:Ljava/lang/NumberFormatException;
    invoke-direct {p0, v0}, Lcom/google/protobuf/TextFormat$Tokenizer;->integerParseException(Ljava/lang/NumberFormatException;)Lcom/google/protobuf/TextFormat$ParseException;

    move-result-object v3

    throw v3
.end method

.method public consumeString()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/TextFormat$ParseException;
        }
    .end annotation

    .prologue
    .line 690
    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$Tokenizer;->consumeByteString()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public consumeUInt32()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/TextFormat$ParseException;
        }
    .end annotation

    .prologue
    .line 583
    :try_start_0
    iget-object v2, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/protobuf/TextFormat;->parseUInt32(Ljava/lang/String;)I

    move-result v1

    .line 584
    .local v1, result:I
    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$Tokenizer;->nextToken()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 585
    return v1

    .line 586
    .end local v1           #result:I
    :catch_0
    move-exception v0

    .line 587
    .local v0, e:Ljava/lang/NumberFormatException;
    invoke-direct {p0, v0}, Lcom/google/protobuf/TextFormat$Tokenizer;->integerParseException(Ljava/lang/NumberFormatException;)Lcom/google/protobuf/TextFormat$ParseException;

    move-result-object v2

    throw v2
.end method

.method public consumeUInt64()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/TextFormat$ParseException;
        }
    .end annotation

    .prologue
    .line 611
    :try_start_0
    iget-object v3, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/protobuf/TextFormat;->parseUInt64(Ljava/lang/String;)J

    move-result-wide v1

    .line 612
    .local v1, result:J
    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$Tokenizer;->nextToken()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 613
    return-wide v1

    .line 614
    .end local v1           #result:J
    :catch_0
    move-exception v0

    .line 615
    .local v0, e:Ljava/lang/NumberFormatException;
    invoke-direct {p0, v0}, Lcom/google/protobuf/TextFormat$Tokenizer;->integerParseException(Ljava/lang/NumberFormatException;)Lcom/google/protobuf/TextFormat$ParseException;

    move-result-object v3

    throw v3
.end method

.method public lookingAtInteger()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 532
    iget-object v2, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 537
    :cond_0
    :goto_0
    return v1

    .line 536
    :cond_1
    iget-object v2, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 537
    .local v0, c:C
    const/16 v2, 0x30

    if-gt v2, v0, :cond_2

    const/16 v2, 0x39

    if-le v0, v2, :cond_3

    :cond_2
    const/16 v2, 0x2d

    if-eq v0, v2, :cond_3

    const/16 v2, 0x2b

    if-ne v0, v2, :cond_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public nextToken()V
    .locals 3

    .prologue
    .line 460
    iget v0, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->line:I

    iput v0, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->previousLine:I

    .line 461
    iget v0, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->column:I

    iput v0, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->previousColumn:I

    .line 464
    :goto_0
    iget v0, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->pos:I

    iget-object v1, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->regionStart()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 465
    iget-object v0, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->text:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->pos:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 466
    iget v0, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->line:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->line:I

    .line 467
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->column:I

    .line 471
    :goto_1
    iget v0, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->pos:I

    goto :goto_0

    .line 469
    :cond_0
    iget v0, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->column:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->column:I

    goto :goto_1

    .line 475
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->regionStart()I

    move-result v0

    iget-object v1, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->regionEnd()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 477
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    .line 491
    :goto_2
    return-void

    .line 479
    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->matcher:Ljava/util/regex/Matcher;

    sget-object v1, Lcom/google/protobuf/TextFormat$Tokenizer;->TOKEN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 480
    iget-object v0, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 481
    iget-object v0, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    .line 482
    iget-object v0, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->matcher:Ljava/util/regex/Matcher;

    iget-object v1, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    iget-object v2, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->regionEnd()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 489
    :goto_3
    invoke-direct {p0}, Lcom/google/protobuf/TextFormat$Tokenizer;->skipWhitespace()V

    goto :goto_2

    .line 485
    :cond_3
    iget-object v0, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->text:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->pos:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    .line 486
    iget-object v0, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->matcher:Ljava/util/regex/Matcher;

    iget v1, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->pos:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->regionEnd()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    goto :goto_3
.end method

.method public parseException(Ljava/lang/String;)Lcom/google/protobuf/TextFormat$ParseException;
    .locals 3
    .parameter "description"

    .prologue
    .line 742
    new-instance v0, Lcom/google/protobuf/TextFormat$ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->line:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->column:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/protobuf/TextFormat$ParseException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public parseExceptionPreviousToken(Ljava/lang/String;)Lcom/google/protobuf/TextFormat$ParseException;
    .locals 3
    .parameter "description"

    .prologue
    .line 753
    new-instance v0, Lcom/google/protobuf/TextFormat$ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->previousLine:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->previousColumn:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/protobuf/TextFormat$ParseException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public tryConsume(Ljava/lang/String;)Z
    .locals 1
    .parameter "token"

    .prologue
    .line 509
    iget-object v0, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 510
    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$Tokenizer;->nextToken()V

    .line 511
    const/4 v0, 0x1

    .line 513
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
