.class public Lkawa/standard/readchar;
.super Lgnu/mapping/Procedure0or1;
.source "readchar.java"


# static fields
.field public static final peekChar:Lkawa/standard/readchar;

.field public static final readChar:Lkawa/standard/readchar;


# instance fields
.field peeking:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    new-instance v0, Lkawa/standard/readchar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkawa/standard/readchar;-><init>(Z)V

    sput-object v0, Lkawa/standard/readchar;->readChar:Lkawa/standard/readchar;

    .line 13
    new-instance v0, Lkawa/standard/readchar;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lkawa/standard/readchar;-><init>(Z)V

    sput-object v0, Lkawa/standard/readchar;->peekChar:Lkawa/standard/readchar;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .parameter "peeking"

    .prologue
    .line 18
    if-eqz p1, :cond_0

    const-string v0, "peek-char"

    :goto_0
    invoke-direct {p0, v0}, Lgnu/mapping/Procedure0or1;-><init>(Ljava/lang/String;)V

    .line 19
    iput-boolean p1, p0, Lkawa/standard/readchar;->peeking:Z

    .line 20
    return-void

    .line 18
    :cond_0
    const-string v0, "read-char"

    goto :goto_0
.end method


# virtual methods
.method public final apply0()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 85
    invoke-static {}, Lgnu/mapping/InPort;->inDefault()Lgnu/mapping/InPort;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkawa/standard/readchar;->readChar(Lgnu/mapping/InPort;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "arg1"

    .prologue
    .line 90
    instance-of v0, p1, Lgnu/mapping/InPort;

    if-eqz v0, :cond_0

    .line 91
    check-cast p1, Lgnu/mapping/InPort;

    .end local p1
    invoke-virtual {p0, p1}, Lkawa/standard/readchar;->readChar(Lgnu/mapping/InPort;)Ljava/lang/Object;

    move-result-object v0

    .line 95
    :goto_0
    return-object v0

    .line 92
    .restart local p1
    :cond_0
    instance-of v0, p1, Ljava/io/Reader;

    if-eqz v0, :cond_1

    .line 93
    check-cast p1, Ljava/io/Reader;

    .end local p1
    invoke-virtual {p0, p1}, Lkawa/standard/readchar;->readChar(Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 94
    .restart local p1
    :cond_1
    instance-of v0, p1, Ljava/io/InputStream;

    if-eqz v0, :cond_2

    .line 95
    check-cast p1, Ljava/io/InputStream;

    .end local p1
    invoke-virtual {p0, p1}, Lkawa/standard/readchar;->readChar(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 96
    .restart local p1
    :cond_2
    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v1, 0x1

    const-string v2, "<input-port>"

    invoke-direct {v0, p0, v1, p1, v2}, Lgnu/mapping/WrongType;-><init>(Lgnu/mapping/Procedure;ILjava/lang/Object;Ljava/lang/String;)V

    throw v0
.end method

.method final readChar(Lgnu/mapping/InPort;)Ljava/lang/Object;
    .locals 4
    .parameter "port"

    .prologue
    .line 26
    :try_start_0
    iget-boolean v2, p0, Lkawa/standard/readchar;->peeking:Z

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lgnu/mapping/InPort;->peek()I

    move-result v2

    move v0, v2

    .line 27
    .local v0, ch:I
    :goto_0
    if-gez v0, :cond_1

    .line 28
    sget-object v2, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;

    .line 29
    :goto_1
    return-object v2

    .line 26
    .end local v0           #ch:I
    :cond_0
    invoke-virtual {p1}, Lgnu/mapping/InPort;->read()I

    move-result v2

    move v0, v2

    goto :goto_0

    .line 29
    .restart local v0       #ch:I
    :cond_1
    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_1

    .line 31
    .end local v0           #ch:I
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 33
    .local v1, e:Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "IO Exception caught"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method final readChar(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 4
    .parameter "port"

    .prologue
    .line 65
    :try_start_0
    iget-boolean v2, p0, Lkawa/standard/readchar;->peeking:Z

    if-eqz v2, :cond_0

    .line 67
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/io/InputStream;->mark(I)V

    .line 68
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 69
    .local v0, ch:I
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 73
    :goto_0
    if-gez v0, :cond_1

    .line 74
    sget-object v2, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;

    .line 75
    :goto_1
    return-object v2

    .line 72
    .end local v0           #ch:I
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .restart local v0       #ch:I
    goto :goto_0

    .line 75
    :cond_1
    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_1

    .line 77
    .end local v0           #ch:I
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 79
    .local v1, e:Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "IO Exception caught"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method final readChar(Ljava/io/Reader;)Ljava/lang/Object;
    .locals 4
    .parameter "port"

    .prologue
    .line 42
    :try_start_0
    iget-boolean v2, p0, Lkawa/standard/readchar;->peeking:Z

    if-eqz v2, :cond_0

    .line 44
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/io/Reader;->mark(I)V

    .line 45
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result v0

    .line 46
    .local v0, ch:I
    invoke-virtual {p1}, Ljava/io/Reader;->reset()V

    .line 50
    :goto_0
    if-gez v0, :cond_1

    .line 51
    sget-object v2, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;

    .line 52
    :goto_1
    return-object v2

    .line 49
    .end local v0           #ch:I
    :cond_0
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result v0

    .restart local v0       #ch:I
    goto :goto_0

    .line 52
    :cond_1
    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_1

    .line 54
    .end local v0           #ch:I
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 56
    .local v1, e:Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "IO Exception caught"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
