.class public Lgnu/kawa/lispexpr/ReaderQuote;
.super Lgnu/kawa/lispexpr/ReadTableEntry;
.source "ReaderQuote.java"


# instance fields
.field magicSymbol:Ljava/lang/Object;

.field magicSymbol2:Ljava/lang/Object;

.field next:C


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .parameter "magicSymbol"

    .prologue
    .line 17
    invoke-direct {p0}, Lgnu/kawa/lispexpr/ReadTableEntry;-><init>()V

    .line 18
    iput-object p1, p0, Lgnu/kawa/lispexpr/ReaderQuote;->magicSymbol:Ljava/lang/Object;

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;CLjava/lang/Object;)V
    .locals 0
    .parameter "magicSymbol"
    .parameter "next"
    .parameter "magicSymbol2"

    .prologue
    .line 25
    invoke-direct {p0}, Lgnu/kawa/lispexpr/ReadTableEntry;-><init>()V

    .line 26
    iput-char p2, p0, Lgnu/kawa/lispexpr/ReaderQuote;->next:C

    .line 27
    iput-object p1, p0, Lgnu/kawa/lispexpr/ReaderQuote;->magicSymbol:Ljava/lang/Object;

    .line 28
    iput-object p3, p0, Lgnu/kawa/lispexpr/ReaderQuote;->magicSymbol2:Ljava/lang/Object;

    .line 29
    return-void
.end method


# virtual methods
.method public read(Lgnu/text/Lexer;II)Ljava/lang/Object;
    .locals 10
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
    .line 34
    move-object v0, p1

    check-cast v0, Lgnu/kawa/lispexpr/LispReader;

    move-object v8, v0

    .line 35
    .local v8, reader:Lgnu/kawa/lispexpr/LispReader;
    invoke-virtual {v8}, Lgnu/kawa/lispexpr/LispReader;->getName()Ljava/lang/String;

    move-result-object v3

    .line 36
    .local v3, file:Ljava/lang/String;
    invoke-virtual {v8}, Lgnu/kawa/lispexpr/LispReader;->getLineNumber()I

    move-result v9

    add-int/lit8 v4, v9, 0x1

    .line 37
    .local v4, line1:I
    invoke-virtual {v8}, Lgnu/kawa/lispexpr/LispReader;->getColumnNumber()I

    move-result v9

    add-int/lit8 v1, v9, 0x1

    .line 38
    .local v1, column1:I
    iget-object v6, p0, Lgnu/kawa/lispexpr/ReaderQuote;->magicSymbol:Ljava/lang/Object;

    .line 39
    .local v6, magic:Ljava/lang/Object;
    iget-char v9, p0, Lgnu/kawa/lispexpr/ReaderQuote;->next:C

    if-eqz v9, :cond_0

    .line 41
    invoke-virtual {v8}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result p2

    .line 42
    iget-char v9, p0, Lgnu/kawa/lispexpr/ReaderQuote;->next:C

    if-ne p2, v9, :cond_1

    .line 43
    iget-object v6, p0, Lgnu/kawa/lispexpr/ReaderQuote;->magicSymbol2:Ljava/lang/Object;

    .line 47
    :cond_0
    :goto_0
    invoke-virtual {v8}, Lgnu/kawa/lispexpr/LispReader;->getLineNumber()I

    move-result v9

    add-int/lit8 v5, v9, 0x1

    .line 48
    .local v5, line2:I
    invoke-virtual {v8}, Lgnu/kawa/lispexpr/LispReader;->getColumnNumber()I

    move-result v9

    add-int/lit8 v2, v9, 0x1

    .line 49
    .local v2, column2:I
    invoke-virtual {v8}, Lgnu/kawa/lispexpr/LispReader;->readObject()Ljava/lang/Object;

    move-result-object v7

    .line 50
    .local v7, operand:Ljava/lang/Object;
    invoke-virtual {v8}, Lgnu/kawa/lispexpr/LispReader;->makeNil()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v7, v9, v3, v5, v2}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;II)Lgnu/lists/PairWithPosition;

    move-result-object v9

    invoke-static {v6, v9, v3, v4, v1}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;II)Lgnu/lists/PairWithPosition;

    move-result-object v9

    return-object v9

    .line 44
    .end local v2           #column2:I
    .end local v5           #line2:I
    .end local v7           #operand:Ljava/lang/Object;
    :cond_1
    if-ltz p2, :cond_0

    .line 45
    invoke-virtual {v8, p2}, Lgnu/kawa/lispexpr/LispReader;->unread(I)V

    goto :goto_0
.end method
