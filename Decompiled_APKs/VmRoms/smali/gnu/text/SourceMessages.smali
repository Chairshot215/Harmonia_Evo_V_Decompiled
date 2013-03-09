.class public Lgnu/text/SourceMessages;
.super Ljava/lang/Object;
.source "SourceMessages.java"

# interfaces
.implements Lgnu/text/SourceLocator;


# static fields
.field public static debugStackTraceOnError:Z

.field public static debugStackTraceOnWarning:Z


# instance fields
.field current_column:I

.field current_filename:Ljava/lang/String;

.field current_line:I

.field private errorCount:I

.field firstError:Lgnu/text/SourceError;

.field lastError:Lgnu/text/SourceError;

.field lastPrevFilename:Lgnu/text/SourceError;

.field locator:Lgnu/text/SourceLocator;

.field public sortMessages:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    sput-boolean v0, Lgnu/text/SourceMessages;->debugStackTraceOnWarning:Z

    .line 36
    sput-boolean v0, Lgnu/text/SourceMessages;->debugStackTraceOnError:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lgnu/text/SourceMessages;->errorCount:I

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lgnu/text/SourceMessages;->lastPrevFilename:Lgnu/text/SourceError;

    return-void
.end method


# virtual methods
.method public checkErrors(Ljava/io/PrintStream;I)Z
    .locals 3
    .parameter "out"
    .parameter "max"

    .prologue
    const/4 v2, 0x0

    .line 246
    iget-object v1, p0, Lgnu/text/SourceMessages;->firstError:Lgnu/text/SourceError;

    if-eqz v1, :cond_1

    .line 248
    invoke-virtual {p0, p1, p2}, Lgnu/text/SourceMessages;->printAll(Ljava/io/PrintStream;I)V

    .line 249
    const/4 v1, 0x0

    iput-object v1, p0, Lgnu/text/SourceMessages;->lastError:Lgnu/text/SourceError;

    iput-object v1, p0, Lgnu/text/SourceMessages;->firstError:Lgnu/text/SourceError;

    .line 250
    iget v0, p0, Lgnu/text/SourceMessages;->errorCount:I

    .line 251
    .local v0, saveCount:I
    iput v2, p0, Lgnu/text/SourceMessages;->errorCount:I

    .line 252
    if-lez v0, :cond_0

    const/4 v1, 0x1

    .line 254
    .end local v0           #saveCount:I
    :goto_0
    return v1

    .restart local v0       #saveCount:I
    :cond_0
    move v1, v2

    .line 252
    goto :goto_0

    .end local v0           #saveCount:I
    :cond_1
    move v1, v2

    .line 254
    goto :goto_0
.end method

.method public checkErrors(Ljava/io/PrintWriter;I)Z
    .locals 3
    .parameter "out"
    .parameter "max"

    .prologue
    const/4 v2, 0x0

    .line 230
    iget-object v1, p0, Lgnu/text/SourceMessages;->firstError:Lgnu/text/SourceError;

    if-eqz v1, :cond_1

    .line 232
    invoke-virtual {p0, p1, p2}, Lgnu/text/SourceMessages;->printAll(Ljava/io/PrintWriter;I)V

    .line 233
    const/4 v1, 0x0

    iput-object v1, p0, Lgnu/text/SourceMessages;->lastError:Lgnu/text/SourceError;

    iput-object v1, p0, Lgnu/text/SourceMessages;->firstError:Lgnu/text/SourceError;

    .line 234
    iget v0, p0, Lgnu/text/SourceMessages;->errorCount:I

    .line 235
    .local v0, saveCount:I
    iput v2, p0, Lgnu/text/SourceMessages;->errorCount:I

    .line 236
    if-lez v0, :cond_0

    const/4 v1, 0x1

    .line 238
    .end local v0           #saveCount:I
    :goto_0
    return v1

    .restart local v0       #saveCount:I
    :cond_0
    move v1, v2

    .line 236
    goto :goto_0

    .end local v0           #saveCount:I
    :cond_1
    move v1, v2

    .line 238
    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lgnu/text/SourceMessages;->lastError:Lgnu/text/SourceError;

    iput-object v0, p0, Lgnu/text/SourceMessages;->firstError:Lgnu/text/SourceError;

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lgnu/text/SourceMessages;->errorCount:I

    .line 55
    return-void
.end method

.method public clearErrors()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lgnu/text/SourceMessages;->errorCount:I

    return-void
.end method

.method public error(CLgnu/text/SourceLocator;Ljava/lang/String;)V
    .locals 1
    .parameter "severity"
    .parameter "location"
    .parameter "message"

    .prologue
    .line 139
    new-instance v0, Lgnu/text/SourceError;

    invoke-direct {v0, p1, p2, p3}, Lgnu/text/SourceError;-><init>(CLgnu/text/SourceLocator;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lgnu/text/SourceMessages;->error(Lgnu/text/SourceError;)V

    .line 140
    return-void
.end method

.method public error(CLgnu/text/SourceLocator;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "severity"
    .parameter "location"
    .parameter "message"
    .parameter "code"

    .prologue
    .line 154
    new-instance v0, Lgnu/text/SourceError;

    invoke-direct {v0, p1, p2, p3}, Lgnu/text/SourceError;-><init>(CLgnu/text/SourceLocator;Ljava/lang/String;)V

    .line 155
    .local v0, err:Lgnu/text/SourceError;
    iput-object p4, v0, Lgnu/text/SourceError;->code:Ljava/lang/String;

    .line 156
    invoke-virtual {p0, v0}, Lgnu/text/SourceMessages;->error(Lgnu/text/SourceError;)V

    .line 157
    return-void
.end method

.method public error(CLjava/lang/String;)V
    .locals 6
    .parameter "severity"
    .parameter "message"

    .prologue
    .line 166
    new-instance v0, Lgnu/text/SourceError;

    iget-object v2, p0, Lgnu/text/SourceMessages;->current_filename:Ljava/lang/String;

    iget v3, p0, Lgnu/text/SourceMessages;->current_line:I

    iget v4, p0, Lgnu/text/SourceMessages;->current_column:I

    move v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lgnu/text/SourceError;-><init>(CLjava/lang/String;IILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lgnu/text/SourceMessages;->error(Lgnu/text/SourceError;)V

    .line 168
    return-void
.end method

.method public error(CLjava/lang/String;IILjava/lang/String;)V
    .locals 6
    .parameter "severity"
    .parameter "filename"
    .parameter "line"
    .parameter "column"
    .parameter "message"

    .prologue
    .line 134
    new-instance v0, Lgnu/text/SourceError;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lgnu/text/SourceError;-><init>(CLjava/lang/String;IILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lgnu/text/SourceMessages;->error(Lgnu/text/SourceError;)V

    .line 135
    return-void
.end method

.method public error(CLjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "severity"
    .parameter "filename"
    .parameter "line"
    .parameter "column"
    .parameter "message"
    .parameter "code"

    .prologue
    .line 145
    new-instance v0, Lgnu/text/SourceError;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lgnu/text/SourceError;-><init>(CLjava/lang/String;IILjava/lang/String;)V

    .line 147
    .local v0, err:Lgnu/text/SourceError;
    iput-object p6, v0, Lgnu/text/SourceError;->code:Ljava/lang/String;

    .line 148
    invoke-virtual {p0, v0}, Lgnu/text/SourceMessages;->error(Lgnu/text/SourceError;)V

    .line 149
    return-void
.end method

.method public error(CLjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "severity"
    .parameter "message"
    .parameter "code"

    .prologue
    .line 180
    new-instance v0, Lgnu/text/SourceError;

    iget-object v2, p0, Lgnu/text/SourceMessages;->current_filename:Ljava/lang/String;

    iget v3, p0, Lgnu/text/SourceMessages;->current_line:I

    iget v4, p0, Lgnu/text/SourceMessages;->current_column:I

    move v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lgnu/text/SourceError;-><init>(CLjava/lang/String;IILjava/lang/String;)V

    .line 182
    .local v0, err:Lgnu/text/SourceError;
    iput-object p3, v0, Lgnu/text/SourceError;->code:Ljava/lang/String;

    .line 183
    invoke-virtual {p0, v0}, Lgnu/text/SourceMessages;->error(Lgnu/text/SourceError;)V

    .line 184
    return-void
.end method

.method public error(CLjava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .parameter "severity"
    .parameter "message"
    .parameter "exception"

    .prologue
    .line 172
    new-instance v0, Lgnu/text/SourceError;

    iget-object v2, p0, Lgnu/text/SourceMessages;->current_filename:Ljava/lang/String;

    iget v3, p0, Lgnu/text/SourceMessages;->current_line:I

    iget v4, p0, Lgnu/text/SourceMessages;->current_column:I

    move v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lgnu/text/SourceError;-><init>(CLjava/lang/String;IILjava/lang/String;)V

    .line 174
    .local v0, err:Lgnu/text/SourceError;
    iput-object p3, v0, Lgnu/text/SourceError;->fakeException:Ljava/lang/Throwable;

    .line 175
    invoke-virtual {p0, v0}, Lgnu/text/SourceMessages;->error(Lgnu/text/SourceError;)V

    .line 176
    return-void
.end method

.method public error(Lgnu/text/SourceError;)V
    .locals 6
    .parameter "error"

    .prologue
    const/16 v5, 0x77

    const/16 v4, 0x66

    .line 66
    iget-char v2, p1, Lgnu/text/SourceError;->severity:C

    if-ne v2, v4, :cond_8

    .line 67
    const/16 v2, 0x3e8

    iput v2, p0, Lgnu/text/SourceMessages;->errorCount:I

    .line 70
    :cond_0
    :goto_0
    sget-boolean v2, Lgnu/text/SourceMessages;->debugStackTraceOnError:Z

    if-eqz v2, :cond_1

    iget-char v2, p1, Lgnu/text/SourceError;->severity:C

    const/16 v3, 0x65

    if-eq v2, v3, :cond_2

    iget-char v2, p1, Lgnu/text/SourceError;->severity:C

    if-eq v2, v4, :cond_2

    :cond_1
    sget-boolean v2, Lgnu/text/SourceMessages;->debugStackTraceOnWarning:Z

    if-eqz v2, :cond_3

    iget-char v2, p1, Lgnu/text/SourceError;->severity:C

    if-ne v2, v5, :cond_3

    .line 74
    :cond_2
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    iput-object v2, p1, Lgnu/text/SourceError;->fakeException:Ljava/lang/Throwable;

    .line 78
    :cond_3
    iget-object v2, p0, Lgnu/text/SourceMessages;->lastError:Lgnu/text/SourceError;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lgnu/text/SourceMessages;->lastError:Lgnu/text/SourceError;

    iget-object v2, v2, Lgnu/text/SourceError;->filename:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lgnu/text/SourceMessages;->lastError:Lgnu/text/SourceError;

    iget-object v2, v2, Lgnu/text/SourceError;->filename:Ljava/lang/String;

    iget-object v3, p1, Lgnu/text/SourceError;->filename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 80
    iget-object v2, p0, Lgnu/text/SourceMessages;->lastError:Lgnu/text/SourceError;

    iput-object v2, p0, Lgnu/text/SourceMessages;->lastPrevFilename:Lgnu/text/SourceError;

    .line 81
    :cond_4
    iget-object v1, p0, Lgnu/text/SourceMessages;->lastPrevFilename:Lgnu/text/SourceError;

    .line 82
    .local v1, prev:Lgnu/text/SourceError;
    iget-boolean v2, p0, Lgnu/text/SourceMessages;->sortMessages:Z

    if-eqz v2, :cond_5

    iget-char v2, p1, Lgnu/text/SourceError;->severity:C

    if-ne v2, v4, :cond_a

    .line 83
    :cond_5
    iget-object v1, p0, Lgnu/text/SourceMessages;->lastError:Lgnu/text/SourceError;

    .line 109
    :cond_6
    :goto_1
    if-nez v1, :cond_c

    .line 111
    iget-object v2, p0, Lgnu/text/SourceMessages;->firstError:Lgnu/text/SourceError;

    iput-object v2, p1, Lgnu/text/SourceError;->next:Lgnu/text/SourceError;

    .line 112
    iput-object p1, p0, Lgnu/text/SourceMessages;->firstError:Lgnu/text/SourceError;

    .line 119
    :goto_2
    iget-object v2, p0, Lgnu/text/SourceMessages;->lastError:Lgnu/text/SourceError;

    if-ne v1, v2, :cond_7

    .line 120
    iput-object p1, p0, Lgnu/text/SourceMessages;->lastError:Lgnu/text/SourceError;

    .line 121
    :cond_7
    return-void

    .line 68
    .end local v1           #prev:Lgnu/text/SourceError;
    :cond_8
    iget-char v2, p1, Lgnu/text/SourceError;->severity:C

    if-eq v2, v5, :cond_0

    .line 69
    iget v2, p0, Lgnu/text/SourceMessages;->errorCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lgnu/text/SourceMessages;->errorCount:I

    goto :goto_0

    .line 106
    .local v0, next:Lgnu/text/SourceError;
    .restart local v1       #prev:Lgnu/text/SourceError;
    :cond_9
    move-object v1, v0

    .line 89
    .end local v0           #next:Lgnu/text/SourceError;
    :cond_a
    if-nez v1, :cond_b

    .line 90
    iget-object v0, p0, Lgnu/text/SourceMessages;->firstError:Lgnu/text/SourceError;

    .line 93
    .restart local v0       #next:Lgnu/text/SourceError;
    :goto_3
    if-eqz v0, :cond_6

    .line 95
    iget v2, p1, Lgnu/text/SourceError;->line:I

    if-eqz v2, :cond_9

    iget v2, v0, Lgnu/text/SourceError;->line:I

    if-eqz v2, :cond_9

    .line 97
    iget v2, p1, Lgnu/text/SourceError;->line:I

    iget v3, v0, Lgnu/text/SourceError;->line:I

    if-lt v2, v3, :cond_6

    .line 99
    iget v2, p1, Lgnu/text/SourceError;->line:I

    iget v3, v0, Lgnu/text/SourceError;->line:I

    if-ne v2, v3, :cond_9

    iget v2, p1, Lgnu/text/SourceError;->column:I

    if-eqz v2, :cond_9

    iget v2, v0, Lgnu/text/SourceError;->column:I

    if-eqz v2, :cond_9

    .line 102
    iget v2, p1, Lgnu/text/SourceError;->column:I

    iget v3, v0, Lgnu/text/SourceError;->column:I

    if-ge v2, v3, :cond_9

    goto :goto_1

    .line 92
    .end local v0           #next:Lgnu/text/SourceError;
    :cond_b
    iget-object v0, v1, Lgnu/text/SourceError;->next:Lgnu/text/SourceError;

    .restart local v0       #next:Lgnu/text/SourceError;
    goto :goto_3

    .line 116
    .end local v0           #next:Lgnu/text/SourceError;
    :cond_c
    iget-object v2, v1, Lgnu/text/SourceError;->next:Lgnu/text/SourceError;

    iput-object v2, p1, Lgnu/text/SourceError;->next:Lgnu/text/SourceError;

    .line 117
    iput-object p1, v1, Lgnu/text/SourceError;->next:Lgnu/text/SourceError;

    goto :goto_2
.end method

.method public final getColumnNumber()I
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lgnu/text/SourceMessages;->locator:Lgnu/text/SourceLocator;

    if-nez v0, :cond_0

    iget v0, p0, Lgnu/text/SourceMessages;->current_column:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lgnu/text/SourceMessages;->locator:Lgnu/text/SourceLocator;

    invoke-interface {v0}, Lgnu/text/SourceLocator;->getColumnNumber()I

    move-result v0

    goto :goto_0
.end method

.method public getErrorCount()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lgnu/text/SourceMessages;->errorCount:I

    return v0
.end method

.method public getErrors()Lgnu/text/SourceError;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lgnu/text/SourceMessages;->firstError:Lgnu/text/SourceError;

    return-object v0
.end method

.method public final getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lgnu/text/SourceMessages;->current_filename:Ljava/lang/String;

    return-object v0
.end method

.method public final getLineNumber()I
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lgnu/text/SourceMessages;->locator:Lgnu/text/SourceLocator;

    if-nez v0, :cond_0

    iget v0, p0, Lgnu/text/SourceMessages;->current_line:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lgnu/text/SourceMessages;->locator:Lgnu/text/SourceLocator;

    invoke-interface {v0}, Lgnu/text/SourceLocator;->getLineNumber()I

    move-result v0

    goto :goto_0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lgnu/text/SourceMessages;->locator:Lgnu/text/SourceLocator;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lgnu/text/SourceMessages;->locator:Lgnu/text/SourceLocator;

    invoke-interface {v0}, Lgnu/text/SourceLocator;->getPublicId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lgnu/text/SourceMessages;->locator:Lgnu/text/SourceLocator;

    if-nez v0, :cond_0

    iget-object v0, p0, Lgnu/text/SourceMessages;->current_filename:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lgnu/text/SourceMessages;->locator:Lgnu/text/SourceLocator;

    invoke-interface {v0}, Lgnu/text/SourceLocator;->getSystemId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isStableSourceLocation()Z
    .locals 1

    .prologue
    .line 288
    const/4 v0, 0x0

    return v0
.end method

.method public printAll(Ljava/io/PrintStream;I)V
    .locals 1
    .parameter "out"
    .parameter "max"

    .prologue
    .line 189
    iget-object v0, p0, Lgnu/text/SourceMessages;->firstError:Lgnu/text/SourceError;

    .line 190
    .local v0, err:Lgnu/text/SourceError;
    :goto_0
    if-eqz v0, :cond_0

    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_0

    .line 192
    invoke-virtual {v0, p1}, Lgnu/text/SourceError;->println(Ljava/io/PrintStream;)V

    .line 190
    iget-object v0, v0, Lgnu/text/SourceError;->next:Lgnu/text/SourceError;

    goto :goto_0

    .line 194
    :cond_0
    return-void
.end method

.method public printAll(Ljava/io/PrintWriter;I)V
    .locals 1
    .parameter "out"
    .parameter "max"

    .prologue
    .line 199
    iget-object v0, p0, Lgnu/text/SourceMessages;->firstError:Lgnu/text/SourceError;

    .line 200
    .local v0, err:Lgnu/text/SourceError;
    :goto_0
    if-eqz v0, :cond_0

    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_0

    .line 202
    invoke-virtual {v0, p1}, Lgnu/text/SourceError;->println(Ljava/io/PrintWriter;)V

    .line 200
    iget-object v0, v0, Lgnu/text/SourceError;->next:Lgnu/text/SourceError;

    goto :goto_0

    .line 204
    :cond_0
    return-void
.end method

.method public seenErrors()Z
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lgnu/text/SourceMessages;->errorCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public seenErrorsOrWarnings()Z
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lgnu/text/SourceMessages;->firstError:Lgnu/text/SourceError;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setColumn(I)V
    .locals 0
    .parameter "column"

    .prologue
    .line 310
    iput p1, p0, Lgnu/text/SourceMessages;->current_column:I

    return-void
.end method

.method public setFile(Ljava/lang/String;)V
    .locals 0
    .parameter "filename"

    .prologue
    .line 306
    iput-object p1, p0, Lgnu/text/SourceMessages;->current_filename:Ljava/lang/String;

    return-void
.end method

.method public setLine(I)V
    .locals 0
    .parameter "line"

    .prologue
    .line 308
    iput p1, p0, Lgnu/text/SourceMessages;->current_line:I

    return-void
.end method

.method public setLine(Ljava/lang/String;II)V
    .locals 0
    .parameter "filename"
    .parameter "line"
    .parameter "column"

    .prologue
    .line 315
    iput-object p1, p0, Lgnu/text/SourceMessages;->current_filename:Ljava/lang/String;

    .line 316
    iput p2, p0, Lgnu/text/SourceMessages;->current_line:I

    .line 317
    iput p3, p0, Lgnu/text/SourceMessages;->current_column:I

    .line 318
    return-void
.end method

.method public final setLocation(Lgnu/text/SourceLocator;)V
    .locals 1
    .parameter "locator"

    .prologue
    .line 273
    const/4 v0, 0x0

    iput-object v0, p0, Lgnu/text/SourceMessages;->locator:Lgnu/text/SourceLocator;

    .line 274
    invoke-interface {p1}, Lgnu/text/SourceLocator;->getLineNumber()I

    move-result v0

    iput v0, p0, Lgnu/text/SourceMessages;->current_line:I

    .line 275
    invoke-interface {p1}, Lgnu/text/SourceLocator;->getColumnNumber()I

    move-result v0

    iput v0, p0, Lgnu/text/SourceMessages;->current_column:I

    .line 276
    invoke-interface {p1}, Lgnu/text/SourceLocator;->getFileName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgnu/text/SourceMessages;->current_filename:Ljava/lang/String;

    .line 277
    return-void
.end method

.method public final setSourceLocator(Lgnu/text/SourceLocator;)V
    .locals 1
    .parameter "locator"

    .prologue
    .line 260
    if-ne p1, p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lgnu/text/SourceMessages;->locator:Lgnu/text/SourceLocator;

    .line 261
    return-void

    :cond_0
    move-object v0, p1

    .line 260
    goto :goto_0
.end method

.method public final swapSourceLocator(Lgnu/text/SourceLocator;)Lgnu/text/SourceLocator;
    .locals 1
    .parameter "locator"

    .prologue
    .line 265
    iget-object v0, p0, Lgnu/text/SourceMessages;->locator:Lgnu/text/SourceLocator;

    .line 266
    .local v0, save:Lgnu/text/SourceLocator;
    iput-object p1, p0, Lgnu/text/SourceMessages;->locator:Lgnu/text/SourceLocator;

    .line 267
    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 3
    .parameter "max"

    .prologue
    .line 212
    iget-object v2, p0, Lgnu/text/SourceMessages;->firstError:Lgnu/text/SourceError;

    if-nez v2, :cond_0

    .line 213
    const/4 v2, 0x0

    .line 221
    :goto_0
    return-object v2

    .line 214
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 215
    .local v0, buffer:Ljava/lang/StringBuffer;
    iget-object v1, p0, Lgnu/text/SourceMessages;->firstError:Lgnu/text/SourceError;

    .line 216
    .local v1, err:Lgnu/text/SourceError;
    :goto_1
    if-eqz v1, :cond_1

    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_1

    .line 218
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 219
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 216
    iget-object v1, v1, Lgnu/text/SourceError;->next:Lgnu/text/SourceError;

    goto :goto_1

    .line 221
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
