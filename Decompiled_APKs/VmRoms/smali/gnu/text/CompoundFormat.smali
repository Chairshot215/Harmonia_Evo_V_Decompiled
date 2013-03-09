.class public Lgnu/text/CompoundFormat;
.super Lgnu/text/ReportFormat;
.source "CompoundFormat.java"


# instance fields
.field protected formats:[Ljava/text/Format;

.field protected length:I


# direct methods
.method public constructor <init>([Ljava/text/Format;)V
    .locals 1
    .parameter "formats"

    .prologue
    .line 18
    invoke-direct {p0}, Lgnu/text/ReportFormat;-><init>()V

    .line 19
    iput-object p1, p0, Lgnu/text/CompoundFormat;->formats:[Ljava/text/Format;

    .line 20
    array-length v0, p1

    iput v0, p0, Lgnu/text/CompoundFormat;->length:I

    .line 21
    return-void
.end method

.method public constructor <init>([Ljava/text/Format;I)V
    .locals 0
    .parameter "formats"
    .parameter "length"

    .prologue
    .line 12
    invoke-direct {p0}, Lgnu/text/ReportFormat;-><init>()V

    .line 13
    iput-object p1, p0, Lgnu/text/CompoundFormat;->formats:[Ljava/text/Format;

    .line 14
    iput p2, p0, Lgnu/text/CompoundFormat;->length:I

    .line 15
    return-void
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
    .line 26
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v4, p0, Lgnu/text/CompoundFormat;->length:I

    if-ge v1, v4, :cond_3

    .line 28
    iget-object v4, p0, Lgnu/text/CompoundFormat;->formats:[Ljava/text/Format;

    aget-object v0, v4, v1

    .line 29
    .local v0, fmt:Ljava/text/Format;
    instance-of v4, v0, Lgnu/text/ReportFormat;

    if-eqz v4, :cond_0

    .line 31
    check-cast v0, Lgnu/text/ReportFormat;

    .end local v0           #fmt:Ljava/text/Format;
    invoke-virtual {v0, p1, p2, p3, p4}, Lgnu/text/ReportFormat;->format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I

    move-result p2

    .line 32
    if-gez p2, :cond_1

    move v3, p2

    .line 45
    .end local p2
    .local v3, start:I
    :goto_1
    return v3

    .line 35
    .end local v3           #start:I
    .restart local v0       #fmt:Ljava/text/Format;
    .restart local p2
    :cond_0
    array-length v4, p1

    if-lt p2, v4, :cond_2

    .line 36
    const-string v4, "#<missing format argument>"

    invoke-virtual {p3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 26
    .end local v0           #fmt:Ljava/text/Format;
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 39
    .restart local v0       #fmt:Ljava/text/Format;
    :cond_2
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 40
    .local v2, sbuf:Ljava/lang/StringBuffer;
    aget-object v4, p1, p2

    invoke-virtual {v0, v4, v2, p4}, Ljava/text/Format;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 41
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 42
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .end local v0           #fmt:Ljava/text/Format;
    .end local v2           #sbuf:Ljava/lang/StringBuffer;
    :cond_3
    move v3, p2

    .line 45
    .end local p2
    .restart local v3       #start:I
    goto :goto_1
.end method

.method public final format([Ljava/lang/Object;ILjava/lang/StringBuffer;Ljava/text/FieldPosition;)I
    .locals 4
    .parameter "args"
    .parameter "start"
    .parameter "sbuf"
    .parameter "fpos"

    .prologue
    .line 51
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v3, p0, Lgnu/text/CompoundFormat;->length:I

    if-ge v1, v3, :cond_2

    .line 53
    iget-object v3, p0, Lgnu/text/CompoundFormat;->formats:[Ljava/text/Format;

    aget-object v0, v3, v1

    .line 54
    .local v0, fmt:Ljava/text/Format;
    instance-of v3, v0, Lgnu/text/ReportFormat;

    if-eqz v3, :cond_0

    .line 56
    check-cast v0, Lgnu/text/ReportFormat;

    .end local v0           #fmt:Ljava/text/Format;
    invoke-virtual {v0, p1, p2, p3, p4}, Lgnu/text/ReportFormat;->format([Ljava/lang/Object;ILjava/lang/StringBuffer;Ljava/text/FieldPosition;)I

    move-result p2

    .line 57
    if-gez p2, :cond_1

    move v2, p2

    .line 66
    .end local p2
    .local v2, start:I
    :goto_1
    return v2

    .line 62
    .end local v2           #start:I
    .restart local v0       #fmt:Ljava/text/Format;
    .restart local p2
    :cond_0
    aget-object v3, p1, p2

    invoke-virtual {v0, v3, p3, p4}, Ljava/text/Format;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 63
    add-int/lit8 p2, p2, 0x1

    .line 51
    .end local v0           #fmt:Ljava/text/Format;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v2, p2

    .line 66
    .end local p2
    .restart local v2       #start:I
    goto :goto_1
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 2
    .parameter "text"
    .parameter "status"

    .prologue
    .line 71
    new-instance v0, Ljava/lang/Error;

    const-string v1, "CompoundFormat.parseObject - not implemented"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 76
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 77
    .local v1, sbuf:Ljava/lang/StringBuffer;
    const-string v2, "CompoundFormat["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Lgnu/text/CompoundFormat;->length:I

    if-ge v0, v2, :cond_1

    .line 80
    if-lez v0, :cond_0

    .line 81
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    :cond_0
    iget-object v2, p0, Lgnu/text/CompoundFormat;->formats:[Ljava/text/Format;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    :cond_1
    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
