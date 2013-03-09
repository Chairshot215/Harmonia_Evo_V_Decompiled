.class public Lgnu/text/SourceError;
.super Ljava/lang/Object;
.source "SourceError.java"

# interfaces
.implements Lgnu/text/SourceLocator;


# instance fields
.field public code:Ljava/lang/String;

.field public column:I

.field public fakeException:Ljava/lang/Throwable;

.field public filename:Ljava/lang/String;

.field public line:I

.field public message:Ljava/lang/String;

.field public next:Lgnu/text/SourceError;

.field public severity:C


# direct methods
.method public constructor <init>(CLgnu/text/SourceLocator;Ljava/lang/String;)V
    .locals 6
    .parameter "severity"
    .parameter "location"
    .parameter "message"

    .prologue
    .line 54
    invoke-interface {p2}, Lgnu/text/SourceLocator;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2}, Lgnu/text/SourceLocator;->getLineNumber()I

    move-result v3

    invoke-interface {p2}, Lgnu/text/SourceLocator;->getColumnNumber()I

    move-result v4

    move-object v0, p0

    move v1, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lgnu/text/SourceError;-><init>(CLjava/lang/String;IILjava/lang/String;)V

    .line 56
    return-void
.end method

.method public constructor <init>(CLjava/lang/String;IILjava/lang/String;)V
    .locals 0
    .parameter "severity"
    .parameter "filename"
    .parameter "line"
    .parameter "column"
    .parameter "message"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-char p1, p0, Lgnu/text/SourceError;->severity:C

    .line 46
    iput-object p2, p0, Lgnu/text/SourceError;->filename:Ljava/lang/String;

    .line 47
    iput p3, p0, Lgnu/text/SourceError;->line:I

    .line 48
    iput p4, p0, Lgnu/text/SourceError;->column:I

    .line 49
    iput-object p5, p0, Lgnu/text/SourceError;->message:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public constructor <init>(Lgnu/text/LineBufferedReader;CLjava/lang/String;)V
    .locals 6
    .parameter "port"
    .parameter "severity"
    .parameter "message"

    .prologue
    .line 62
    invoke-virtual {p1}, Lgnu/text/LineBufferedReader;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lgnu/text/LineBufferedReader;->getLineNumber()I

    move-result v0

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1}, Lgnu/text/LineBufferedReader;->getColumnNumber()I

    move-result v4

    move-object v0, p0

    move v1, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lgnu/text/SourceError;-><init>(CLjava/lang/String;IILjava/lang/String;)V

    .line 65
    iget v0, p0, Lgnu/text/SourceError;->column:I

    if-ltz v0, :cond_0

    .line 66
    iget v0, p0, Lgnu/text/SourceError;->column:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgnu/text/SourceError;->column:I

    .line 67
    :cond_0
    return-void
.end method


# virtual methods
.method public getColumnNumber()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lgnu/text/SourceError;->column:I

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lgnu/text/SourceError;->column:I

    goto :goto_0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lgnu/text/SourceError;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getLineNumber()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lgnu/text/SourceError;->line:I

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lgnu/text/SourceError;->line:I

    goto :goto_0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lgnu/text/SourceError;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public isStableSourceLocation()Z
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x1

    return v0
.end method

.method public print(Ljava/io/PrintWriter;)V
    .locals 0
    .parameter "out"

    .prologue
    .line 122
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 123
    return-void
.end method

.method public println(Ljava/io/PrintStream;)V
    .locals 3
    .parameter "out"

    .prologue
    .line 141
    invoke-virtual {p0}, Lgnu/text/SourceError;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, line:Ljava/lang/String;
    :goto_0
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 145
    .local v1, nl:I
    if-gez v1, :cond_0

    .line 150
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 151
    return-void

    .line 147
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 148
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 149
    goto :goto_0
.end method

.method public println(Ljava/io/PrintWriter;)V
    .locals 3
    .parameter "out"

    .prologue
    .line 127
    invoke-virtual {p0}, Lgnu/text/SourceError;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, line:Ljava/lang/String;
    :goto_0
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 131
    .local v1, nl:I
    if-gez v1, :cond_0

    .line 136
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 137
    return-void

    .line 133
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 134
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 135
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x3a

    .line 74
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 75
    .local v0, buffer:Ljava/lang/StringBuffer;
    iget-object v3, p0, Lgnu/text/SourceError;->filename:Ljava/lang/String;

    if-nez v3, :cond_4

    const-string v3, "<unknown>"

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    iget v3, p0, Lgnu/text/SourceError;->line:I

    if-gtz v3, :cond_0

    iget v3, p0, Lgnu/text/SourceError;->column:I

    if-lez v3, :cond_1

    .line 78
    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 79
    iget v3, p0, Lgnu/text/SourceError;->line:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 80
    iget v3, p0, Lgnu/text/SourceError;->column:I

    if-lez v3, :cond_1

    .line 82
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 83
    iget v3, p0, Lgnu/text/SourceError;->column:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 86
    :cond_1
    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    iget-char v3, p0, Lgnu/text/SourceError;->severity:C

    const/16 v4, 0x77

    if-ne v3, v4, :cond_2

    .line 88
    const-string v3, "warning - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    :cond_2
    iget-object v3, p0, Lgnu/text/SourceError;->message:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    iget-object v3, p0, Lgnu/text/SourceError;->code:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 92
    const-string v3, " ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    iget-object v3, p0, Lgnu/text/SourceError;->code:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    :cond_3
    iget-object v3, p0, Lgnu/text/SourceError;->fakeException:Ljava/lang/Throwable;

    if-eqz v3, :cond_5

    .line 101
    iget-object v3, p0, Lgnu/text/SourceError;->fakeException:Ljava/lang/Throwable;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 102
    .local v2, stackTrace:[Ljava/lang/StackTraceElement;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_5

    .line 104
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    const-string v3, "    "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    aget-object v3, v2, v1

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 75
    .end local v1           #i:I
    .end local v2           #stackTrace:[Ljava/lang/StackTraceElement;
    :cond_4
    iget-object v3, p0, Lgnu/text/SourceError;->filename:Ljava/lang/String;

    goto :goto_0

    .line 117
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
