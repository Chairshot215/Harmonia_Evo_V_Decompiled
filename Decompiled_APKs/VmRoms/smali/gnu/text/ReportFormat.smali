.class public abstract Lgnu/text/ReportFormat;
.super Ljava/text/Format;
.source "ReportFormat.java"


# static fields
.field public static final PARAM_FROM_COUNT:I = -0x50000000

.field public static final PARAM_FROM_LIST:I = -0x60000000

.field public static final PARAM_UNSPECIFIED:I = -0x40000000


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    return-void
.end method

.method public static format(Ljava/text/Format;[Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    .locals 6
    .parameter "fmt"
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
    const/4 v5, 0x0

    .line 80
    instance-of v4, p0, Lgnu/text/ReportFormat;

    if-eqz v4, :cond_0

    .line 81
    check-cast p0, Lgnu/text/ReportFormat;

    .end local p0
    invoke-virtual {p0, p1, p2, p3, p4}, Lgnu/text/ReportFormat;->format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I

    move-result v4

    .line 91
    :goto_0
    return v4

    .line 82
    .restart local p0
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 83
    .local v1, sbuf:Ljava/lang/StringBuffer;
    instance-of v4, p0, Ljava/text/MessageFormat;

    if-eqz v4, :cond_1

    .line 84
    invoke-static {p0, p1, p2, v1, p4}, Lgnu/text/ReportFormat;->format(Ljava/text/Format;[Ljava/lang/Object;ILjava/lang/StringBuffer;Ljava/text/FieldPosition;)I

    move-result p2

    .line 87
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    .line 88
    .local v2, slen:I
    new-array v0, v2, [C

    .line 89
    .local v0, cbuf:[C
    invoke-virtual {v1, v5, v2, v0, v5}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    .line 90
    invoke-virtual {p3, v0}, Ljava/io/Writer;->write([C)V

    move v4, p2

    .line 91
    goto :goto_0

    .line 86
    .end local v0           #cbuf:[C
    .end local v2           #slen:I
    :cond_1
    add-int/lit8 v3, p2, 0x1

    .end local p2
    .local v3, start:I
    aget-object v4, p1, p2

    invoke-virtual {p0, v4, v1, p4}, Ljava/text/Format;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move p2, v3

    .end local v3           #start:I
    .restart local p2
    goto :goto_1
.end method

.method public static format(Ljava/text/Format;[Ljava/lang/Object;ILjava/lang/StringBuffer;Ljava/text/FieldPosition;)I
    .locals 5
    .parameter "fmt"
    .parameter "args"
    .parameter "start"
    .parameter "sbuf"
    .parameter "fpos"

    .prologue
    .line 97
    instance-of v3, p0, Lgnu/text/ReportFormat;

    if-eqz v3, :cond_0

    .line 98
    check-cast p0, Lgnu/text/ReportFormat;

    .end local p0
    invoke-virtual {p0, p1, p2, p3, p4}, Lgnu/text/ReportFormat;->format([Ljava/lang/Object;ILjava/lang/StringBuffer;Ljava/text/FieldPosition;)I

    move-result v3

    .line 119
    :goto_0
    return v3

    .line 101
    .restart local p0
    :cond_0
    instance-of v3, p0, Ljava/text/MessageFormat;

    if-eqz v3, :cond_2

    .line 103
    array-length v3, p1

    sub-int v1, v3, p2

    .line 104
    .local v1, nargs:I
    if-lez p2, :cond_1

    .line 106
    array-length v3, p1

    sub-int/2addr v3, p2

    new-array v2, v3, [Ljava/lang/Object;

    .line 107
    .local v2, subarr:[Ljava/lang/Object;
    const/4 v3, 0x0

    array-length v4, v2

    invoke-static {p1, p2, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 108
    move-object v0, v2

    .line 118
    .end local v2           #subarr:[Ljava/lang/Object;
    :goto_1
    invoke-virtual {p0, v0, p3, p4}, Ljava/text/Format;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 119
    add-int v3, p2, v1

    goto :goto_0

    .line 111
    :cond_1
    move-object v0, p1

    .local v0, arg:[Ljava/lang/Object;
    goto :goto_1

    .line 115
    .end local v0           #arg:[Ljava/lang/Object;
    .end local v1           #nargs:I
    :cond_2
    aget-object v0, p1, p2

    .line 116
    .local v0, arg:Ljava/lang/Object;
    const/4 v1, 0x1

    .restart local v1       #nargs:I
    goto :goto_1
.end method

.method protected static getParam(IC[Ljava/lang/Object;I)C
    .locals 1
    .parameter "param"
    .parameter "defaultValue"
    .parameter "args"
    .parameter "start"

    .prologue
    .line 173
    invoke-static {p0, p1, p2, p3}, Lgnu/text/ReportFormat;->getParam(II[Ljava/lang/Object;I)I

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method protected static getParam(II[Ljava/lang/Object;I)I
    .locals 1
    .parameter "param"
    .parameter "defaultValue"
    .parameter "args"
    .parameter "start"

    .prologue
    .line 161
    const/high16 v0, -0x5000

    if-ne p0, v0, :cond_0

    .line 162
    array-length v0, p2

    sub-int/2addr v0, p3

    .line 168
    :goto_0
    return v0

    .line 163
    :cond_0
    const/high16 v0, -0x6000

    if-ne p0, v0, :cond_2

    .line 164
    if-nez p2, :cond_1

    move v0, p1

    goto :goto_0

    :cond_1
    aget-object v0, p2, p3

    invoke-static {v0, p1}, Lgnu/text/ReportFormat;->getParam(Ljava/lang/Object;I)I

    move-result v0

    goto :goto_0

    .line 165
    :cond_2
    const/high16 v0, -0x4000

    if-ne p0, v0, :cond_3

    move v0, p1

    .line 166
    goto :goto_0

    :cond_3
    move v0, p0

    .line 168
    goto :goto_0
.end method

.method public static getParam(Ljava/lang/Object;I)I
    .locals 1
    .parameter "arg"
    .parameter "defaultValue"

    .prologue
    .line 149
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 150
    check-cast p0, Ljava/lang/Number;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 156
    :goto_0
    return v0

    .line 151
    .restart local p0
    :cond_0
    instance-of v0, p0, Ljava/lang/Character;

    if-eqz v0, :cond_1

    .line 152
    check-cast p0, Ljava/lang/Character;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result v0

    goto :goto_0

    .line 153
    .restart local p0
    :cond_1
    instance-of v0, p0, Lgnu/text/Char;

    if-eqz v0, :cond_2

    .line 154
    check-cast p0, Lgnu/text/Char;

    .end local p0
    invoke-virtual {p0}, Lgnu/text/Char;->charValue()C

    move-result v0

    goto :goto_0

    .restart local p0
    :cond_2
    move v0, p1

    .line 156
    goto :goto_0
.end method

.method public static nextArg(I)I
    .locals 1
    .parameter "result"

    .prologue
    .line 25
    const v0, 0xffffff

    and-int/2addr v0, p0

    return v0
.end method

.method public static print(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 1
    .parameter "dst"
    .parameter "str"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    instance-of v0, p0, Ljava/io/PrintWriter;

    if-eqz v0, :cond_0

    .line 127
    check-cast p0, Ljava/io/PrintWriter;

    .end local p0
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 130
    :goto_0
    return-void

    .line 129
    .restart local p0
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write([C)V

    goto :goto_0
.end method

.method public static print(Ljava/lang/Object;Lgnu/lists/Consumer;)V
    .locals 1
    .parameter "value"
    .parameter "out"

    .prologue
    .line 134
    instance-of v0, p0, Lgnu/text/Printable;

    if-eqz v0, :cond_0

    .line 135
    check-cast p0, Lgnu/text/Printable;

    .end local p0
    invoke-interface {p0, p1}, Lgnu/text/Printable;->print(Lgnu/lists/Consumer;)V

    .line 140
    :goto_0
    return-void

    .line 139
    .restart local p0
    :cond_0
    if-nez p0, :cond_1

    const-string v0, "null"

    :goto_1
    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static result(II)I
    .locals 1
    .parameter "resultCode"
    .parameter "nextArg"

    .prologue
    .line 23
    shl-int/lit8 v0, p0, 0x18

    or-int/2addr v0, p1

    return v0
.end method

.method public static resultCode(I)I
    .locals 1
    .parameter "result"

    .prologue
    .line 26
    ushr-int/lit8 v0, p0, 0x18

    return v0
.end method


# virtual methods
.method public format(Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    .locals 2
    .parameter "arg"
    .parameter "start"
    .parameter "dst"
    .parameter "fpos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 44
    check-cast p1, [Ljava/lang/Object;

    .end local p1
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, p3, p4}, Lgnu/text/ReportFormat;->format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I

    move-result v1

    .line 48
    :goto_0
    return v1

    .line 47
    .restart local p1
    :cond_0
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 48
    .local v0, args:[Ljava/lang/Object;
    invoke-virtual {p0, v0, p2, p3, p4}, Lgnu/text/ReportFormat;->format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I

    move-result v1

    goto :goto_0
.end method

.method public abstract format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public format([Ljava/lang/Object;ILjava/lang/StringBuffer;Ljava/text/FieldPosition;)I
    .locals 5
    .parameter "args"
    .parameter "start"
    .parameter "sbuf"
    .parameter "fpos"

    .prologue
    .line 61
    new-instance v1, Ljava/io/CharArrayWriter;

    invoke-direct {v1}, Ljava/io/CharArrayWriter;-><init>()V

    .line 64
    .local v1, wr:Ljava/io/CharArrayWriter;
    :try_start_0
    invoke-virtual {p0, p1, p2, v1, p4}, Lgnu/text/ReportFormat;->format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 65
    if-gez p2, :cond_0

    .line 73
    :goto_0
    return p2

    .line 68
    :catch_0
    move-exception v0

    .line 70
    .local v0, ex:Ljava/io/IOException;
    new-instance v2, Ljava/lang/Error;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unexpected exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    .line 72
    .end local v0           #ex:Ljava/io/IOException;
    :cond_0
    invoke-virtual {v1}, Ljava/io/CharArrayWriter;->toCharArray()[C

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1
    .parameter "obj"
    .parameter "sbuf"
    .parameter "fpos"

    .prologue
    .line 54
    check-cast p1, [Ljava/lang/Object;

    .end local p1
    check-cast p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lgnu/text/ReportFormat;->format([Ljava/lang/Object;ILjava/lang/StringBuffer;Ljava/text/FieldPosition;)I

    .line 55
    return-object p2
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 2
    .parameter "text"
    .parameter "status"

    .prologue
    .line 144
    new-instance v0, Ljava/lang/Error;

    const-string v1, "ReportFormat.parseObject - not implemented"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method
