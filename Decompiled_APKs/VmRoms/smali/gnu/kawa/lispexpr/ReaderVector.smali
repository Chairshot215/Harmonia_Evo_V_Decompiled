.class public Lgnu/kawa/lispexpr/ReaderVector;
.super Lgnu/kawa/lispexpr/ReadTableEntry;
.source "ReaderVector.java"


# instance fields
.field close:C


# direct methods
.method public constructor <init>(C)V
    .locals 0
    .parameter "close"

    .prologue
    .line 15
    invoke-direct {p0}, Lgnu/kawa/lispexpr/ReadTableEntry;-><init>()V

    .line 16
    iput-char p1, p0, Lgnu/kawa/lispexpr/ReaderVector;->close:C

    .line 17
    return-void
.end method

.method public static readVector(Lgnu/kawa/lispexpr/LispReader;Lgnu/text/LineBufferedReader;IC)Lgnu/lists/FVector;
    .locals 12
    .parameter "lexer"
    .parameter "port"
    .parameter "count"
    .parameter "close"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 28
    const/16 v6, 0x20

    .line 29
    .local v6, saveReadState:C
    instance-of v10, p1, Lgnu/mapping/InPort;

    if-eqz v10, :cond_0

    .line 31
    move-object v0, p1

    check-cast v0, Lgnu/mapping/InPort;

    move-object v10, v0

    iget-char v6, v10, Lgnu/mapping/InPort;->readState:C

    .line 32
    move-object v0, p1

    check-cast v0, Lgnu/mapping/InPort;

    move-object v10, v0

    const/16 v11, 0x5d

    if-ne p3, v11, :cond_4

    const/16 v11, 0x5b

    :goto_0
    iput-char v11, v10, Lgnu/mapping/InPort;->readState:C

    .line 36
    :cond_0
    :try_start_0
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    .line 37
    .local v9, vec:Ljava/util/Vector;
    invoke-static {}, Lgnu/kawa/lispexpr/ReadTable;->getCurrent()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v5

    .line 40
    .local v5, rtable:Lgnu/kawa/lispexpr/ReadTable;
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v1

    .line 41
    .local v1, ch:I
    if-gez v1, :cond_2

    .line 42
    const-string v10, "unexpected EOF in vector"

    invoke-virtual {p0, v10}, Lgnu/kawa/lispexpr/LispReader;->eofError(Ljava/lang/String;)V

    .line 43
    :cond_2
    if-ne v1, p3, :cond_5

    .line 60
    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v10

    new-array v4, v10, [Ljava/lang/Object;

    .line 61
    .local v4, objs:[Ljava/lang/Object;
    invoke-virtual {v9, v4}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 62
    new-instance v10, Lgnu/lists/FVector;

    invoke-direct {v10, v4}, Lgnu/lists/FVector;-><init>([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    instance-of v11, p1, Lgnu/mapping/InPort;

    if-eqz v11, :cond_3

    .line 67
    check-cast p1, Lgnu/mapping/InPort;

    .end local p1
    iput-char v6, p1, Lgnu/mapping/InPort;->readState:C

    :cond_3
    return-object v10

    .line 32
    .end local v1           #ch:I
    .end local v4           #objs:[Ljava/lang/Object;
    .end local v5           #rtable:Lgnu/kawa/lispexpr/ReadTable;
    .end local v9           #vec:Ljava/util/Vector;
    .restart local p1
    :cond_4
    const/16 v11, 0x28

    goto :goto_0

    .line 45
    .restart local v1       #ch:I
    .restart local v5       #rtable:Lgnu/kawa/lispexpr/ReadTable;
    .restart local v9       #vec:Ljava/util/Vector;
    :cond_5
    :try_start_1
    invoke-virtual {p0, v1, v5}, Lgnu/kawa/lispexpr/LispReader;->readValues(ILgnu/kawa/lispexpr/ReadTable;)Ljava/lang/Object;

    move-result-object v7

    .line 46
    .local v7, value:Ljava/lang/Object;
    instance-of v10, v7, Lgnu/mapping/Values;

    if-eqz v10, :cond_6

    .line 48
    check-cast v7, Lgnu/mapping/Values;

    .end local v7           #value:Ljava/lang/Object;
    invoke-virtual {v7}, Lgnu/mapping/Values;->getValues()[Ljava/lang/Object;

    move-result-object v8

    .line 49
    .local v8, values:[Ljava/lang/Object;
    array-length v3, v8

    .line 50
    .local v3, n:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v3, :cond_1

    .line 51
    aget-object v10, v8, v2

    invoke-virtual {v9, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 50
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 55
    .end local v2           #i:I
    .end local v3           #n:I
    .end local v8           #values:[Ljava/lang/Object;
    .restart local v7       #value:Ljava/lang/Object;
    :cond_6
    sget-object v10, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    if-ne v7, v10, :cond_7

    .line 56
    sget-object v7, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    .line 57
    .end local v7           #value:Ljava/lang/Object;
    :cond_7
    invoke-virtual {v9, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 66
    .end local v1           #ch:I
    .end local v5           #rtable:Lgnu/kawa/lispexpr/ReadTable;
    .end local v9           #vec:Ljava/util/Vector;
    :catchall_0
    move-exception v10

    instance-of v11, p1, Lgnu/mapping/InPort;

    if-eqz v11, :cond_8

    .line 67
    check-cast p1, Lgnu/mapping/InPort;

    .end local p1
    iput-char v6, p1, Lgnu/mapping/InPort;->readState:C

    :cond_8
    throw v10
.end method


# virtual methods
.method public read(Lgnu/text/Lexer;II)Ljava/lang/Object;
    .locals 4
    .parameter "in"
    .parameter "ch"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 22
    move-object v0, p1

    check-cast v0, Lgnu/kawa/lispexpr/LispReader;

    move-object v1, v0

    invoke-virtual {p1}, Lgnu/text/Lexer;->getPort()Lgnu/text/LineBufferedReader;

    move-result-object v2

    iget-char v3, p0, Lgnu/kawa/lispexpr/ReaderVector;->close:C

    invoke-static {v1, v2, p3, v3}, Lgnu/kawa/lispexpr/ReaderVector;->readVector(Lgnu/kawa/lispexpr/LispReader;Lgnu/text/LineBufferedReader;IC)Lgnu/lists/FVector;

    move-result-object v1

    return-object v1
.end method
