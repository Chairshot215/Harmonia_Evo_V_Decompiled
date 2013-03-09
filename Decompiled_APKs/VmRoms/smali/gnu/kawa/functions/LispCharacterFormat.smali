.class Lgnu/kawa/functions/LispCharacterFormat;
.super Lgnu/text/ReportFormat;
.source "LispFormat.java"


# instance fields
.field charVal:I

.field count:I

.field seenAt:Z

.field seenColon:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 598
    invoke-direct {p0}, Lgnu/text/ReportFormat;-><init>()V

    return-void
.end method

.method public static getInstance(IIZZ)Lgnu/kawa/functions/LispCharacterFormat;
    .locals 1
    .parameter "charVal"
    .parameter "count"
    .parameter "seenAt"
    .parameter "seenColon"

    .prologue
    .line 608
    new-instance v0, Lgnu/kawa/functions/LispCharacterFormat;

    invoke-direct {v0}, Lgnu/kawa/functions/LispCharacterFormat;-><init>()V

    .line 609
    .local v0, fmt:Lgnu/kawa/functions/LispCharacterFormat;
    iput p1, v0, Lgnu/kawa/functions/LispCharacterFormat;->count:I

    .line 610
    iput p0, v0, Lgnu/kawa/functions/LispCharacterFormat;->charVal:I

    .line 611
    iput-boolean p2, v0, Lgnu/kawa/functions/LispCharacterFormat;->seenAt:Z

    .line 612
    iput-boolean p3, v0, Lgnu/kawa/functions/LispCharacterFormat;->seenColon:Z

    .line 613
    return-object v0
.end method

.method public static printChar(IZZLjava/io/Writer;)V
    .locals 1
    .parameter "ch"
    .parameter "seenAt"
    .parameter "seenColon"
    .parameter "dst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 633
    if-eqz p1, :cond_0

    .line 635
    invoke-static {p0}, Lgnu/text/Char;->toScmReadableString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lgnu/kawa/functions/LispCharacterFormat;->print(Ljava/io/Writer;Ljava/lang/String;)V

    .line 657
    :goto_0
    return-void

    .line 637
    :cond_0
    if-eqz p2, :cond_3

    .line 639
    const/16 v0, 0x20

    if-ge p0, v0, :cond_1

    .line 641
    const/16 v0, 0x5e

    invoke-virtual {p3, v0}, Ljava/io/Writer;->write(I)V

    .line 642
    add-int/lit8 v0, p0, 0x40

    invoke-virtual {p3, v0}, Ljava/io/Writer;->write(I)V

    goto :goto_0

    .line 644
    :cond_1
    const/16 v0, 0x7f

    if-lt p0, v0, :cond_2

    .line 646
    const-string v0, "#\\x"

    invoke-static {p3, v0}, Lgnu/kawa/functions/LispCharacterFormat;->print(Ljava/io/Writer;Ljava/lang/String;)V

    .line 647
    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lgnu/kawa/functions/LispCharacterFormat;->print(Ljava/io/Writer;Ljava/lang/String;)V

    goto :goto_0

    .line 650
    :cond_2
    invoke-virtual {p3, p0}, Ljava/io/Writer;->write(I)V

    goto :goto_0

    .line 655
    :cond_3
    invoke-virtual {p3, p0}, Ljava/io/Writer;->write(I)V

    goto :goto_0
.end method


# virtual methods
.method public format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    .locals 5
    .parameter "args"
    .parameter "start"
    .parameter "dst"
    .parameter "fpos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/high16 v4, -0x6000

    .line 620
    iget v2, p0, Lgnu/kawa/functions/LispCharacterFormat;->count:I

    const/4 v3, 0x1

    invoke-static {v2, v3, p1, p2}, Lgnu/kawa/functions/LispCharacterFormat;->getParam(II[Ljava/lang/Object;I)I

    move-result v1

    .line 621
    .local v1, count:I
    iget v2, p0, Lgnu/kawa/functions/LispCharacterFormat;->count:I

    if-ne v2, v4, :cond_0

    add-int/lit8 p2, p2, 0x1

    .line 622
    :cond_0
    iget v2, p0, Lgnu/kawa/functions/LispCharacterFormat;->charVal:I

    const/16 v3, 0x3f

    invoke-static {v2, v3, p1, p2}, Lgnu/kawa/functions/LispCharacterFormat;->getParam(IC[Ljava/lang/Object;I)C

    move-result v0

    .line 623
    .local v0, charVal:I
    iget v2, p0, Lgnu/kawa/functions/LispCharacterFormat;->charVal:I

    if-ne v2, v4, :cond_1

    add-int/lit8 p2, p2, 0x1

    .line 624
    :cond_1
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_2

    .line 625
    iget-boolean v2, p0, Lgnu/kawa/functions/LispCharacterFormat;->seenAt:Z

    iget-boolean v3, p0, Lgnu/kawa/functions/LispCharacterFormat;->seenColon:Z

    invoke-static {v0, v2, v3, p3}, Lgnu/kawa/functions/LispCharacterFormat;->printChar(IZZLjava/io/Writer;)V

    goto :goto_0

    .line 626
    :cond_2
    return p2
.end method
