.class public Lgnu/kawa/functions/Format;
.super Lgnu/mapping/ProcedureN;
.source "Format.java"


# static fields
.field public static final format:Lgnu/kawa/functions/Format;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 11
    new-instance v0, Lgnu/kawa/functions/Format;

    invoke-direct {v0}, Lgnu/kawa/functions/Format;-><init>()V

    sput-object v0, Lgnu/kawa/functions/Format;->format:Lgnu/kawa/functions/Format;

    .line 13
    sget-object v0, Lgnu/kawa/functions/Format;->format:Lgnu/kawa/functions/Format;

    const-string v1, "format"

    invoke-virtual {v0, v1}, Lgnu/kawa/functions/Format;->setName(Ljava/lang/String;)V

    .line 14
    sget-object v0, Lgnu/kawa/functions/Format;->format:Lgnu/kawa/functions/Format;

    sget-object v1, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string v2, "gnu.kawa.functions.CompileMisc:validateApplyFormat"

    invoke-virtual {v0, v1, v2}, Lgnu/kawa/functions/Format;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lgnu/mapping/ProcedureN;-><init>()V

    return-void
.end method

.method static drop2([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .parameter "vals"

    .prologue
    const/4 v3, 0x2

    .line 142
    array-length v2, p0

    sub-int v0, v2, v3

    .line 143
    .local v0, xlen:I
    new-array v1, v0, [Ljava/lang/Object;

    .line 144
    .local v1, xvals:[Ljava/lang/Object;
    const/4 v2, 0x0

    invoke-static {p0, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 145
    return-object v1
.end method

.method public static varargs format([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "args"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 105
    aget-object v0, p0, v3

    .line 106
    .local v0, port_arg:Ljava/lang/Object;
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_0

    .line 108
    invoke-static {}, Lgnu/mapping/OutPort;->outDefault()Lgnu/mapping/OutPort;

    move-result-object v1

    invoke-static {v1, p0, v2}, Lgnu/kawa/functions/Format;->format(Ljava/io/Writer;[Ljava/lang/Object;I)V

    .line 109
    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    .line 134
    .end local v0           #port_arg:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 111
    .restart local v0       #port_arg:Ljava/lang/Object;
    :cond_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_1

    .line 113
    invoke-static {v2, p0}, Lgnu/kawa/functions/Format;->formatToString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 115
    :cond_1
    instance-of v1, v0, Ljava/text/MessageFormat;

    if-nez v1, :cond_2

    instance-of v1, v0, Ljava/lang/CharSequence;

    if-nez v1, :cond_2

    instance-of v1, v0, Lgnu/text/ReportFormat;

    if-eqz v1, :cond_3

    .line 123
    :cond_2
    invoke-static {v3, p0}, Lgnu/kawa/functions/Format;->formatToString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 125
    :cond_3
    instance-of v1, v0, Ljava/io/Writer;

    if-eqz v1, :cond_4

    .line 127
    check-cast v0, Ljava/io/Writer;

    .end local v0           #port_arg:Ljava/lang/Object;
    invoke-static {v0, p0, v2}, Lgnu/kawa/functions/Format;->format(Ljava/io/Writer;[Ljava/lang/Object;I)V

    .line 128
    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    .line 130
    .restart local v0       #port_arg:Ljava/lang/Object;
    :cond_4
    instance-of v1, v0, Ljava/io/OutputStream;

    if-eqz v1, :cond_5

    .line 132
    check-cast v0, Ljava/io/OutputStream;

    .end local v0           #port_arg:Ljava/lang/Object;
    aget-object v1, p0, v2

    invoke-static {p0}, Lgnu/kawa/functions/Format;->drop2([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lgnu/kawa/functions/Format;->formatToOutputStream(Ljava/io/OutputStream;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 134
    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    .line 137
    .restart local v0       #port_arg:Ljava/lang/Object;
    :cond_5
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "bad first argument to format"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static format(Ljava/io/Writer;[Ljava/lang/Object;I)V
    .locals 5
    .parameter "dst"
    .parameter "args"
    .parameter "arg_offset"

    .prologue
    .line 20
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .local v0, arg_offset:I
    aget-object v1, p1, p2

    .line 21
    .local v1, format:Ljava/lang/Object;
    array-length v3, p1

    sub-int/2addr v3, v0

    new-array v2, v3, [Ljava/lang/Object;

    .line 22
    .local v2, vals:[Ljava/lang/Object;
    const/4 v3, 0x0

    array-length v4, v2

    invoke-static {p1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    invoke-static {p0, v1, v2}, Lgnu/kawa/functions/Format;->formatToWriter(Ljava/io/Writer;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 24
    return-void
.end method

.method public static formatToFString(CLjava/lang/Object;[Ljava/lang/Object;)Lgnu/lists/FString;
    .locals 7
    .parameter "style"
    .parameter "fmt"
    .parameter "args"

    .prologue
    .line 75
    invoke-static {p1, p0}, Lgnu/kawa/functions/ParseFormat;->asFormat(Ljava/lang/Object;C)Lgnu/text/ReportFormat;

    move-result-object v3

    .line 76
    .local v3, rfmt:Lgnu/text/ReportFormat;
    new-instance v2, Lgnu/mapping/CharArrayOutPort;

    invoke-direct {v2}, Lgnu/mapping/CharArrayOutPort;-><init>()V

    .line 79
    .local v2, port:Lgnu/mapping/CharArrayOutPort;
    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v3, p2, v4, v2, v5}, Lgnu/text/ReportFormat;->format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    invoke-virtual {v2}, Lgnu/mapping/CharArrayOutPort;->toCharArray()[C

    move-result-object v0

    .line 86
    .local v0, chars:[C
    invoke-virtual {v2}, Lgnu/mapping/CharArrayOutPort;->close()V

    .line 87
    new-instance v4, Lgnu/lists/FString;

    invoke-direct {v4, v0}, Lgnu/lists/FString;-><init>([C)V

    return-object v4

    .line 81
    .end local v0           #chars:[C
    :catch_0
    move-exception v1

    .line 83
    .local v1, ex:Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in format: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static varargs formatToOutputStream(Ljava/io/OutputStream;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 3
    .parameter "dst"
    .parameter "format"
    .parameter "vals"

    .prologue
    .line 52
    new-instance v0, Lgnu/mapping/OutPort;

    invoke-direct {v0, p0}, Lgnu/mapping/OutPort;-><init>(Ljava/io/OutputStream;)V

    .line 53
    .local v0, port:Lgnu/mapping/OutPort;
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-static {v1}, Lgnu/kawa/functions/Format;->format([Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-virtual {v0}, Lgnu/mapping/OutPort;->closeThis()V

    .line 55
    return-void
.end method

.method public static varargs formatToString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter "arg_offset"
    .parameter "args"

    .prologue
    .line 59
    new-instance v0, Lgnu/mapping/CharArrayOutPort;

    invoke-direct {v0}, Lgnu/mapping/CharArrayOutPort;-><init>()V

    .line 60
    .local v0, port:Lgnu/mapping/CharArrayOutPort;
    invoke-static {v0, p1, p0}, Lgnu/kawa/functions/Format;->format(Ljava/io/Writer;[Ljava/lang/Object;I)V

    .line 61
    invoke-virtual {v0}, Lgnu/mapping/CharArrayOutPort;->toString()Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, str:Ljava/lang/String;
    invoke-virtual {v0}, Lgnu/mapping/CharArrayOutPort;->close()V

    .line 63
    return-object v1
.end method

.method public static varargs formatToWriter(Ljava/io/Writer;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 6
    .parameter "dst"
    .parameter "format"
    .parameter "vals"

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    invoke-static {}, Lgnu/mapping/OutPort;->outDefault()Lgnu/mapping/OutPort;

    move-result-object p0

    .line 32
    :cond_0
    :try_start_0
    instance-of v3, p1, Ljava/text/MessageFormat;

    if-eqz v3, :cond_1

    .line 34
    move-object v0, p1

    check-cast v0, Ljava/text/MessageFormat;

    move-object v3, v0

    invoke-virtual {v3, p2}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 35
    .local v2, out:Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 48
    .end local v2           #out:Ljava/lang/String;
    :goto_0
    return-void

    .line 39
    :cond_1
    instance-of v3, p1, Lgnu/text/ReportFormat;

    if-nez v3, :cond_2

    .line 40
    sget-object v3, Lgnu/kawa/functions/ParseFormat;->parseFormat:Lgnu/kawa/functions/ParseFormat;

    invoke-virtual {v3, p1}, Lgnu/kawa/functions/ParseFormat;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 41
    :cond_2
    move-object v0, p1

    check-cast v0, Lgnu/text/ReportFormat;

    move-object v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, p2, v4, p0, v5}, Lgnu/text/ReportFormat;->format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 44
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 46
    .local v1, ex:Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in format: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "args"

    .prologue
    .line 93
    invoke-static {p1}, Lgnu/kawa/functions/Format;->format([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
