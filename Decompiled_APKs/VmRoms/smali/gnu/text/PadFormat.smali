.class public Lgnu/text/PadFormat;
.super Lgnu/text/ReportFormat;
.source "PadFormat.java"


# instance fields
.field fmt:Ljava/text/Format;

.field minWidth:I

.field padChar:C

.field where:I


# direct methods
.method public constructor <init>(Ljava/text/Format;I)V
    .locals 2
    .parameter "fmt"
    .parameter "minWidth"

    .prologue
    .line 29
    const/16 v0, 0x20

    const/16 v1, 0x64

    invoke-direct {p0, p1, p2, v0, v1}, Lgnu/text/PadFormat;-><init>(Ljava/text/Format;ICI)V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/text/Format;ICI)V
    .locals 0
    .parameter "fmt"
    .parameter "minWidth"
    .parameter "padChar"
    .parameter "where"

    .prologue
    .line 20
    invoke-direct {p0}, Lgnu/text/ReportFormat;-><init>()V

    .line 21
    iput-object p1, p0, Lgnu/text/PadFormat;->fmt:Ljava/text/Format;

    .line 22
    iput p2, p0, Lgnu/text/PadFormat;->minWidth:I

    .line 23
    iput-char p3, p0, Lgnu/text/PadFormat;->padChar:C

    .line 24
    iput p4, p0, Lgnu/text/PadFormat;->where:I

    .line 25
    return-void
.end method

.method public static format(Ljava/text/Format;[Ljava/lang/Object;ILjava/io/Writer;CIIIILjava/text/FieldPosition;)I
    .locals 3
    .parameter "fmt"
    .parameter "args"
    .parameter "start"
    .parameter "dst"
    .parameter "padChar"
    .parameter "minWidth"
    .parameter "colInc"
    .parameter "minPad"
    .parameter "where"
    .parameter "fpos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 69
    .local v0, tbuf:Ljava/lang/StringBuffer;
    instance-of v1, p0, Lgnu/text/ReportFormat;

    if-eqz v1, :cond_5

    .line 70
    check-cast p0, Lgnu/text/ReportFormat;

    .end local p0
    invoke-virtual {p0, p1, p2, v0, p9}, Lgnu/text/ReportFormat;->format([Ljava/lang/Object;ILjava/lang/StringBuffer;Ljava/text/FieldPosition;)I

    move-result p2

    .line 82
    .end local p1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    .line 83
    .local p1, len:I
    invoke-static {p1, p5, p6, p7}, Lgnu/text/PadFormat;->padNeeded(IIII)I

    move-result p5

    .line 84
    .local p5, pad:I
    const/4 p6, 0x0

    .line 85
    .local p6, prefix:I
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p7

    .line 86
    .local p7, text:Ljava/lang/String;
    if-lez p5, :cond_9

    .line 88
    const/4 p0, -0x1

    if-ne p8, p0, :cond_4

    .line 90
    if-lez p1, :cond_c

    .line 92
    const/4 p0, 0x0

    invoke-virtual {p7, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    .line 93
    .local p0, ch:C
    const/16 p8, 0x2d

    if-eq p0, p8, :cond_0

    .end local p8
    const/16 p8, 0x2b

    if-ne p0, p8, :cond_1

    .line 95
    :cond_0
    add-int/lit8 p6, p6, 0x1

    .line 96
    invoke-virtual {p3, p0}, Ljava/io/Writer;->write(I)V

    .line 98
    :cond_1
    sub-int/2addr p1, p6

    const/4 p8, 0x2

    if-le p1, p8, :cond_b

    .end local p1           #len:I
    invoke-virtual {p7, p6}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 p8, 0x30

    if-ne p1, p8, :cond_b

    .line 100
    const/16 p0, 0x30

    invoke-virtual {p3, p0}, Ljava/io/Writer;->write(I)V

    .line 101
    .end local p0           #ch:C
    add-int/lit8 p1, p6, 0x1

    .end local p6           #prefix:I
    .local p1, prefix:I
    invoke-virtual {p7, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    .line 102
    .restart local p0       #ch:C
    const/16 p6, 0x78

    if-eq p0, p6, :cond_2

    const/16 p6, 0x58

    if-ne p0, p6, :cond_3

    .line 104
    :cond_2
    add-int/lit8 p1, p1, 0x1

    .line 105
    invoke-virtual {p3, p0}, Ljava/io/Writer;->write(I)V

    .line 108
    :cond_3
    :goto_1
    if-lez p1, :cond_a

    .line 109
    invoke-virtual {p7, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .end local p7           #text:Ljava/lang/String;
    .local p0, text:Ljava/lang/String;
    move-object v2, p0

    .end local p0           #text:Ljava/lang/String;
    .local v2, text:Ljava/lang/String;
    move p0, p1

    .end local p1           #prefix:I
    .local p0, prefix:I
    move-object p1, v2

    .line 111
    .end local v2           #text:Ljava/lang/String;
    .local p1, text:Ljava/lang/String;
    :goto_2
    const/4 p8, 0x0

    .restart local p8
    move-object p7, p1

    .end local p1           #text:Ljava/lang/String;
    .restart local p7       #text:Ljava/lang/String;
    move p6, p0

    .line 113
    .end local p0           #prefix:I
    .restart local p6       #prefix:I
    :cond_4
    mul-int p0, p5, p8

    div-int/lit8 p0, p0, 0x64

    .line 114
    .local p0, padAfter:I
    sub-int p1, p5, p0

    .line 123
    .local p1, padBefore:I
    :goto_3
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_7

    .line 124
    invoke-virtual {p3, p4}, Ljava/io/Writer;->write(I)V

    goto :goto_3

    .line 71
    .local p0, fmt:Ljava/text/Format;
    .local p1, args:[Ljava/lang/Object;
    .local p5, minWidth:I
    .local p6, colInc:I
    .local p7, minPad:I
    :cond_5
    instance-of v1, p0, Ljava/text/MessageFormat;

    if-eqz v1, :cond_6

    .line 74
    invoke-virtual {p0, p1, v0, p9}, Ljava/text/Format;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 75
    array-length p2, p1

    goto :goto_0

    .line 79
    :cond_6
    aget-object p1, p1, p2

    .end local p1           #args:[Ljava/lang/Object;
    invoke-virtual {p0, p1, v0, p9}, Ljava/text/Format;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 80
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 125
    .local p0, padAfter:I
    .local p1, padBefore:I
    .local p5, pad:I
    .local p6, prefix:I
    .local p7, text:Ljava/lang/String;
    :cond_7
    invoke-virtual {p3, p7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 126
    :goto_4
    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_8

    .line 127
    invoke-virtual {p3, p4}, Ljava/io/Writer;->write(I)V

    goto :goto_4

    :cond_8
    move-object p1, p7

    .end local p7           #text:Ljava/lang/String;
    .local p1, text:Ljava/lang/String;
    move p0, p6

    .line 133
    .end local p6           #prefix:I
    .local p0, prefix:I
    :goto_5
    return p2

    .line 131
    .end local p0           #prefix:I
    .local p1, len:I
    .restart local p6       #prefix:I
    .restart local p7       #text:Ljava/lang/String;
    :cond_9
    invoke-virtual {p3, p7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move-object p1, p7

    .end local p7           #text:Ljava/lang/String;
    .local p1, text:Ljava/lang/String;
    move p0, p6

    .end local p6           #prefix:I
    .restart local p0       #prefix:I
    goto :goto_5

    .end local p8
    .local p0, ch:C
    .local p1, prefix:I
    .restart local p7       #text:Ljava/lang/String;
    :cond_a
    move p0, p1

    .end local p1           #prefix:I
    .local p0, prefix:I
    move-object p1, p7

    .end local p7           #text:Ljava/lang/String;
    .local p1, text:Ljava/lang/String;
    goto :goto_2

    .end local p1           #text:Ljava/lang/String;
    .local p0, ch:C
    .restart local p6       #prefix:I
    .restart local p7       #text:Ljava/lang/String;
    :cond_b
    move p1, p6

    .end local p6           #prefix:I
    .local p1, prefix:I
    goto :goto_1

    .end local p0           #ch:C
    .local p1, len:I
    .restart local p6       #prefix:I
    .restart local p8
    :cond_c
    move-object p1, p7

    .end local p7           #text:Ljava/lang/String;
    .local p1, text:Ljava/lang/String;
    move p0, p6

    .end local p6           #prefix:I
    .local p0, prefix:I
    goto :goto_2
.end method

.method public static padNeeded(IIII)I
    .locals 2
    .parameter "actualWidth"
    .parameter "minWidth"
    .parameter "colInc"
    .parameter "minPad"

    .prologue
    .line 42
    add-int v0, p0, p3

    .line 43
    .local v0, total:I
    const/4 v1, 0x1

    if-gt p2, v1, :cond_0

    .line 44
    sub-int p2, p1, v0

    .line 45
    :cond_0
    :goto_0
    if-ge v0, p1, :cond_1

    .line 46
    add-int/2addr v0, p2

    goto :goto_0

    .line 47
    :cond_1
    sub-int v1, v0, p0

    return v1
.end method


# virtual methods
.method public format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    .locals 10
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
    .line 36
    iget-object v0, p0, Lgnu/text/PadFormat;->fmt:Ljava/text/Format;

    iget-char v4, p0, Lgnu/text/PadFormat;->padChar:C

    iget v5, p0, Lgnu/text/PadFormat;->minWidth:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget v8, p0, Lgnu/text/PadFormat;->where:I

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v9, p4

    invoke-static/range {v0 .. v9}, Lgnu/text/PadFormat;->format(Ljava/text/Format;[Ljava/lang/Object;ILjava/io/Writer;CIIIILjava/text/FieldPosition;)I

    move-result v0

    return v0
.end method
