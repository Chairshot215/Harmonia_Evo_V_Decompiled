.class public Lcom/android/calendarcommon/ICalendar;
.super Ljava/lang/Object;
.source "ICalendar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendarcommon/ICalendar$1;,
        Lcom/android/calendarcommon/ICalendar$ParserState;,
        Lcom/android/calendarcommon/ICalendar$Parameter;,
        Lcom/android/calendarcommon/ICalendar$Property;,
        Lcom/android/calendarcommon/ICalendar$Component;,
        Lcom/android/calendarcommon/ICalendar$FormatException;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Sync"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 402
    return-void
.end method

.method private static extractParameter(Lcom/android/calendarcommon/ICalendar$ParserState;)Lcom/android/calendarcommon/ICalendar$Parameter;
    .locals 10
    .parameter "state"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calendarcommon/ICalendar$FormatException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x22

    const/4 v8, -0x1

    .line 543
    iget-object v6, p0, Lcom/android/calendarcommon/ICalendar$ParserState;->line:Ljava/lang/String;

    .line 544
    .local v6, text:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    .line 545
    .local v3, len:I
    const/4 v4, 0x0

    .line 546
    .local v4, parameter:Lcom/android/calendarcommon/ICalendar$Parameter;
    const/4 v5, -0x1

    .line 547
    .local v5, startIndex:I
    const/4 v2, -0x1

    .line 548
    .local v2, equalIndex:I
    :goto_0
    iget v7, p0, Lcom/android/calendarcommon/ICalendar$ParserState;->index:I

    if-ge v7, v3, :cond_e

    .line 549
    iget v7, p0, Lcom/android/calendarcommon/ICalendar$ParserState;->index:I

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 550
    .local v0, c:C
    const/16 v7, 0x3a

    if-ne v0, v7, :cond_2

    .line 551
    if-eqz v4, :cond_1

    .line 552
    if-ne v2, v8, :cond_0

    .line 553
    new-instance v7, Lcom/android/calendarcommon/ICalendar$FormatException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Expected \'=\' within parameter in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/calendarcommon/ICalendar$FormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 556
    :cond_0
    add-int/lit8 v7, v2, 0x1

    iget v8, p0, Lcom/android/calendarcommon/ICalendar$ParserState;->index:I

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/android/calendarcommon/ICalendar$Parameter;->value:Ljava/lang/String;

    .line 596
    :cond_1
    :goto_1
    return-object v4

    .line 560
    :cond_2
    const/16 v7, 0x3b

    if-ne v0, v7, :cond_6

    .line 561
    if-eqz v4, :cond_4

    .line 562
    if-ne v2, v8, :cond_3

    .line 563
    new-instance v7, Lcom/android/calendarcommon/ICalendar$FormatException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Expected \'=\' within parameter in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/calendarcommon/ICalendar$FormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 566
    :cond_3
    add-int/lit8 v7, v2, 0x1

    iget v8, p0, Lcom/android/calendarcommon/ICalendar$ParserState;->index:I

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/android/calendarcommon/ICalendar$Parameter;->value:Ljava/lang/String;

    goto :goto_1

    .line 570
    :cond_4
    new-instance v4, Lcom/android/calendarcommon/ICalendar$Parameter;

    .end local v4           #parameter:Lcom/android/calendarcommon/ICalendar$Parameter;
    invoke-direct {v4}, Lcom/android/calendarcommon/ICalendar$Parameter;-><init>()V

    .line 571
    .restart local v4       #parameter:Lcom/android/calendarcommon/ICalendar$Parameter;
    iget v5, p0, Lcom/android/calendarcommon/ICalendar$ParserState;->index:I

    .line 598
    :cond_5
    :goto_2
    iget v7, p0, Lcom/android/calendarcommon/ICalendar$ParserState;->index:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/calendarcommon/ICalendar$ParserState;->index:I

    goto :goto_0

    .line 573
    :cond_6
    const/16 v7, 0x3d

    if-ne v0, v7, :cond_9

    .line 574
    iget v2, p0, Lcom/android/calendarcommon/ICalendar$ParserState;->index:I

    .line 575
    if-eqz v4, :cond_7

    if-ne v5, v8, :cond_8

    .line 576
    :cond_7
    new-instance v7, Lcom/android/calendarcommon/ICalendar$FormatException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Expected \';\' before \'=\' in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/calendarcommon/ICalendar$FormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 579
    :cond_8
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v6, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/android/calendarcommon/ICalendar$Parameter;->name:Ljava/lang/String;

    goto :goto_2

    .line 580
    :cond_9
    if-ne v0, v9, :cond_5

    .line 581
    if-nez v4, :cond_a

    .line 582
    new-instance v7, Lcom/android/calendarcommon/ICalendar$FormatException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Expected parameter before \'\"\' in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/calendarcommon/ICalendar$FormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 584
    :cond_a
    if-ne v2, v8, :cond_b

    .line 585
    new-instance v7, Lcom/android/calendarcommon/ICalendar$FormatException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Expected \'=\' within parameter in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/calendarcommon/ICalendar$FormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 587
    :cond_b
    iget v7, p0, Lcom/android/calendarcommon/ICalendar$ParserState;->index:I

    add-int/lit8 v8, v2, 0x1

    if-le v7, v8, :cond_c

    .line 588
    new-instance v7, Lcom/android/calendarcommon/ICalendar$FormatException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Parameter value cannot contain a \'\"\' in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/calendarcommon/ICalendar$FormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 590
    :cond_c
    iget v7, p0, Lcom/android/calendarcommon/ICalendar$ParserState;->index:I

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v9, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 591
    .local v1, endQuote:I
    if-gez v1, :cond_d

    .line 592
    new-instance v7, Lcom/android/calendarcommon/ICalendar$FormatException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Expected closing \'\"\' in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/calendarcommon/ICalendar$FormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 594
    :cond_d
    iget v7, p0, Lcom/android/calendarcommon/ICalendar$ParserState;->index:I

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/android/calendarcommon/ICalendar$Parameter;->value:Ljava/lang/String;

    .line 595
    add-int/lit8 v7, v1, 0x1

    iput v7, p0, Lcom/android/calendarcommon/ICalendar$ParserState;->index:I

    goto/16 :goto_1

    .line 600
    .end local v0           #c:C
    .end local v1           #endQuote:I
    :cond_e
    new-instance v7, Lcom/android/calendarcommon/ICalendar$FormatException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Expected \':\' before end of line in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/calendarcommon/ICalendar$FormatException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private static extractValue(Lcom/android/calendarcommon/ICalendar$ParserState;)Ljava/lang/String;
    .locals 5
    .parameter "state"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calendarcommon/ICalendar$FormatException;
        }
    .end annotation

    .prologue
    .line 527
    iget-object v0, p0, Lcom/android/calendarcommon/ICalendar$ParserState;->line:Ljava/lang/String;

    .line 528
    .local v0, line:Ljava/lang/String;
    iget v2, p0, Lcom/android/calendarcommon/ICalendar$ParserState;->index:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget v2, p0, Lcom/android/calendarcommon/ICalendar$ParserState;->index:I

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3a

    if-eq v2, v3, :cond_1

    .line 529
    :cond_0
    new-instance v2, Lcom/android/calendarcommon/ICalendar$FormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected \':\' before end of line in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/calendarcommon/ICalendar$FormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 532
    :cond_1
    iget v2, p0, Lcom/android/calendarcommon/ICalendar$ParserState;->index:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 533
    .local v1, value:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/calendarcommon/ICalendar$ParserState;->index:I

    .line 534
    return-object v1
.end method

.method private static normalizeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "text"

    .prologue
    .line 408
    const-string v0, "\r\n"

    const-string v1, "\n"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 409
    const-string v0, "\r"

    const-string v1, "\n"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 414
    const-string v0, "\n "

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 416
    return-object p0
.end method

.method public static parseCalendar(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Component;
    .locals 3
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calendarcommon/ICalendar$FormatException;
        }
    .end annotation

    .prologue
    .line 612
    const/4 v1, 0x0

    invoke-static {v1, p0}, Lcom/android/calendarcommon/ICalendar;->parseComponent(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Component;

    move-result-object v0

    .line 613
    .local v0, calendar:Lcom/android/calendarcommon/ICalendar$Component;
    if-eqz v0, :cond_0

    const-string v1, "VCALENDAR"

    invoke-virtual {v0}, Lcom/android/calendarcommon/ICalendar$Component;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 614
    :cond_0
    new-instance v1, Lcom/android/calendarcommon/ICalendar$FormatException;

    const-string v2, "Expected VCALENDAR"

    invoke-direct {v1, v2}, Lcom/android/calendarcommon/ICalendar$FormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 616
    :cond_1
    return-object v0
.end method

.method public static parseComponent(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Component;
    .locals 1
    .parameter "component"
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calendarcommon/ICalendar$FormatException;
        }
    .end annotation

    .prologue
    .line 657
    invoke-static {p1}, Lcom/android/calendarcommon/ICalendar;->normalizeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 658
    invoke-static {p0, p1}, Lcom/android/calendarcommon/ICalendar;->parseComponentImpl(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Component;

    move-result-object v0

    return-object v0
.end method

.method public static parseComponent(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Component;
    .locals 1
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calendarcommon/ICalendar$FormatException;
        }
    .end annotation

    .prologue
    .line 643
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/android/calendarcommon/ICalendar;->parseComponent(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Component;

    move-result-object v0

    return-object v0
.end method

.method private static parseComponentImpl(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Component;
    .locals 8
    .parameter "component"
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calendarcommon/ICalendar$FormatException;
        }
    .end annotation

    .prologue
    .line 430
    move-object v1, p0

    .line 431
    .local v1, current:Lcom/android/calendarcommon/ICalendar$Component;
    new-instance v6, Lcom/android/calendarcommon/ICalendar$ParserState;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/android/calendarcommon/ICalendar$ParserState;-><init>(Lcom/android/calendarcommon/ICalendar$1;)V

    .line 432
    .local v6, state:Lcom/android/calendarcommon/ICalendar$ParserState;
    const/4 v7, 0x0

    iput v7, v6, Lcom/android/calendarcommon/ICalendar$ParserState;->index:I

    .line 435
    const-string v7, "\n"

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 439
    .local v5, lines:[Ljava/lang/String;
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 441
    .local v4, line:Ljava/lang/String;
    :try_start_0
    invoke-static {v4, v6, v1}, Lcom/android/calendarcommon/ICalendar;->parseLine(Ljava/lang/String;Lcom/android/calendarcommon/ICalendar$ParserState;Lcom/android/calendarcommon/ICalendar$Component;)Lcom/android/calendarcommon/ICalendar$Component;
    :try_end_0
    .catch Lcom/android/calendarcommon/ICalendar$FormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 445
    if-nez p0, :cond_0

    .line 446
    move-object p0, v1

    .line 439
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 448
    :catch_0
    move-exception v7

    goto :goto_1

    .line 457
    .end local v4           #line:Ljava/lang/String;
    :cond_1
    return-object p0
.end method

.method public static parseEvent(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Component;
    .locals 3
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calendarcommon/ICalendar$FormatException;
        }
    .end annotation

    .prologue
    .line 628
    const/4 v1, 0x0

    invoke-static {v1, p0}, Lcom/android/calendarcommon/ICalendar;->parseComponent(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Component;

    move-result-object v0

    .line 629
    .local v0, event:Lcom/android/calendarcommon/ICalendar$Component;
    if-eqz v0, :cond_0

    const-string v1, "VEVENT"

    invoke-virtual {v0}, Lcom/android/calendarcommon/ICalendar$Component;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 630
    :cond_0
    new-instance v1, Lcom/android/calendarcommon/ICalendar$FormatException;

    const-string v2, "Expected VEVENT"

    invoke-direct {v1, v2}, Lcom/android/calendarcommon/ICalendar$FormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 632
    :cond_1
    return-object v0
.end method

.method private static parseLine(Ljava/lang/String;Lcom/android/calendarcommon/ICalendar$ParserState;Lcom/android/calendarcommon/ICalendar$Component;)Lcom/android/calendarcommon/ICalendar$Component;
    .locals 11
    .parameter "line"
    .parameter "state"
    .parameter "component"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calendarcommon/ICalendar$FormatException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x3b

    const/4 v9, 0x0

    .line 469
    iput-object p0, p1, Lcom/android/calendarcommon/ICalendar$ParserState;->line:Ljava/lang/String;

    .line 470
    iget-object v8, p1, Lcom/android/calendarcommon/ICalendar$ParserState;->line:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v3

    .line 473
    .local v3, len:I
    const/4 v0, 0x0

    .line 474
    .local v0, c:C
    iput v9, p1, Lcom/android/calendarcommon/ICalendar$ParserState;->index:I

    :goto_0
    iget v8, p1, Lcom/android/calendarcommon/ICalendar$ParserState;->index:I

    if-ge v8, v3, :cond_0

    .line 475
    iget v8, p1, Lcom/android/calendarcommon/ICalendar$ParserState;->index:I

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 476
    if-eq v0, v10, :cond_0

    const/16 v8, 0x3a

    if-ne v0, v8, :cond_1

    .line 480
    :cond_0
    iget v8, p1, Lcom/android/calendarcommon/ICalendar$ParserState;->index:I

    invoke-virtual {p0, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 482
    .local v4, name:Ljava/lang/String;
    if-nez p2, :cond_2

    .line 483
    const-string v8, "BEGIN"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 484
    new-instance v8, Lcom/android/calendarcommon/ICalendar$FormatException;

    const-string v9, "Expected BEGIN"

    invoke-direct {v8, v9}, Lcom/android/calendarcommon/ICalendar$FormatException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 474
    .end local v4           #name:Ljava/lang/String;
    :cond_1
    iget v8, p1, Lcom/android/calendarcommon/ICalendar$ParserState;->index:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p1, Lcom/android/calendarcommon/ICalendar$ParserState;->index:I

    goto :goto_0

    .line 489
    .restart local v4       #name:Ljava/lang/String;
    :cond_2
    const-string v8, "BEGIN"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 491
    invoke-static {p1}, Lcom/android/calendarcommon/ICalendar;->extractValue(Lcom/android/calendarcommon/ICalendar$ParserState;)Ljava/lang/String;

    move-result-object v2

    .line 492
    .local v2, componentName:Ljava/lang/String;
    new-instance v1, Lcom/android/calendarcommon/ICalendar$Component;

    invoke-direct {v1, v2, p2}, Lcom/android/calendarcommon/ICalendar$Component;-><init>(Ljava/lang/String;Lcom/android/calendarcommon/ICalendar$Component;)V

    .line 493
    .local v1, child:Lcom/android/calendarcommon/ICalendar$Component;
    if-eqz p2, :cond_3

    .line 494
    invoke-virtual {p2, v1}, Lcom/android/calendarcommon/ICalendar$Component;->addChild(Lcom/android/calendarcommon/ICalendar$Component;)V

    .line 518
    .end local v1           #child:Lcom/android/calendarcommon/ICalendar$Component;
    .end local v2           #componentName:Ljava/lang/String;
    :cond_3
    :goto_1
    return-object v1

    .line 497
    :cond_4
    const-string v8, "END"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 499
    invoke-static {p1}, Lcom/android/calendarcommon/ICalendar;->extractValue(Lcom/android/calendarcommon/ICalendar$ParserState;)Ljava/lang/String;

    move-result-object v2

    .line 500
    .restart local v2       #componentName:Ljava/lang/String;
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/android/calendarcommon/ICalendar$Component;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 502
    :cond_5
    new-instance v8, Lcom/android/calendarcommon/ICalendar$FormatException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected END "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/calendarcommon/ICalendar$FormatException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 504
    :cond_6
    invoke-virtual {p2}, Lcom/android/calendarcommon/ICalendar$Component;->getParent()Lcom/android/calendarcommon/ICalendar$Component;

    move-result-object v1

    goto :goto_1

    .line 506
    .end local v2           #componentName:Ljava/lang/String;
    :cond_7
    new-instance v6, Lcom/android/calendarcommon/ICalendar$Property;

    invoke-direct {v6, v4}, Lcom/android/calendarcommon/ICalendar$Property;-><init>(Ljava/lang/String;)V

    .line 509
    .local v6, property:Lcom/android/calendarcommon/ICalendar$Property;
    if-ne v0, v10, :cond_8

    .line 510
    const/4 v5, 0x0

    .line 511
    .local v5, parameter:Lcom/android/calendarcommon/ICalendar$Parameter;
    :goto_2
    invoke-static {p1}, Lcom/android/calendarcommon/ICalendar;->extractParameter(Lcom/android/calendarcommon/ICalendar$ParserState;)Lcom/android/calendarcommon/ICalendar$Parameter;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 512
    invoke-virtual {v6, v5}, Lcom/android/calendarcommon/ICalendar$Property;->addParameter(Lcom/android/calendarcommon/ICalendar$Parameter;)V

    goto :goto_2

    .line 515
    .end local v5           #parameter:Lcom/android/calendarcommon/ICalendar$Parameter;
    :cond_8
    invoke-static {p1}, Lcom/android/calendarcommon/ICalendar;->extractValue(Lcom/android/calendarcommon/ICalendar$ParserState;)Ljava/lang/String;

    move-result-object v7

    .line 516
    .local v7, value:Ljava/lang/String;
    invoke-virtual {v6, v7}, Lcom/android/calendarcommon/ICalendar$Property;->setValue(Ljava/lang/String;)V

    .line 517
    invoke-virtual {p2, v6}, Lcom/android/calendarcommon/ICalendar$Component;->addProperty(Lcom/android/calendarcommon/ICalendar$Property;)V

    move-object v1, p2

    .line 518
    goto :goto_1
.end method
