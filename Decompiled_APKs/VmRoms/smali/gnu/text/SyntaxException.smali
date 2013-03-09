.class public Lgnu/text/SyntaxException;
.super Ljava/lang/Exception;
.source "SyntaxException.java"


# instance fields
.field header:Ljava/lang/String;

.field public maxToPrint:I

.field messages:Lgnu/text/SourceMessages;


# direct methods
.method public constructor <init>(Lgnu/text/SourceMessages;)V
    .locals 1
    .parameter "messages"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 53
    const/16 v0, 0xa

    iput v0, p0, Lgnu/text/SyntaxException;->maxToPrint:I

    .line 23
    iput-object p1, p0, Lgnu/text/SyntaxException;->messages:Lgnu/text/SourceMessages;

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lgnu/text/SourceMessages;)V
    .locals 1
    .parameter "header"
    .parameter "messages"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 53
    const/16 v0, 0xa

    iput v0, p0, Lgnu/text/SyntaxException;->maxToPrint:I

    .line 28
    iput-object p1, p0, Lgnu/text/SyntaxException;->header:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lgnu/text/SyntaxException;->messages:Lgnu/text/SourceMessages;

    .line 30
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lgnu/text/SyntaxException;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0}, Lgnu/text/SourceMessages;->clear()V

    .line 51
    return-void
.end method

.method public final getHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lgnu/text/SyntaxException;->header:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 58
    .local v0, buffer:Ljava/lang/StringBuffer;
    iget-object v3, p0, Lgnu/text/SyntaxException;->header:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 59
    iget-object v3, p0, Lgnu/text/SyntaxException;->header:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    :cond_0
    iget v2, p0, Lgnu/text/SyntaxException;->maxToPrint:I

    .line 61
    .local v2, max:I
    iget-object v3, p0, Lgnu/text/SyntaxException;->messages:Lgnu/text/SourceMessages;

    iget-object v1, v3, Lgnu/text/SourceMessages;->firstError:Lgnu/text/SourceError;

    .line 62
    .local v1, err:Lgnu/text/SourceError;
    :goto_0
    if-eqz v1, :cond_1

    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_1

    .line 64
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 62
    iget-object v1, v1, Lgnu/text/SourceError;->next:Lgnu/text/SourceError;

    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getMessages()Lgnu/text/SourceMessages;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lgnu/text/SyntaxException;->messages:Lgnu/text/SourceMessages;

    return-object v0
.end method

.method public printAll(Ljava/io/PrintWriter;I)V
    .locals 1
    .parameter "out"
    .parameter "max"

    .prologue
    .line 43
    iget-object v0, p0, Lgnu/text/SyntaxException;->header:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lgnu/text/SyntaxException;->header:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 45
    :cond_0
    iget-object v0, p0, Lgnu/text/SyntaxException;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0, p1, p2}, Lgnu/text/SourceMessages;->printAll(Ljava/io/PrintWriter;I)V

    .line 46
    return-void
.end method

.method public final setHeader(Ljava/lang/String;)V
    .locals 0
    .parameter "header"

    .prologue
    .line 37
    iput-object p1, p0, Lgnu/text/SyntaxException;->header:Ljava/lang/String;

    return-void
.end method
