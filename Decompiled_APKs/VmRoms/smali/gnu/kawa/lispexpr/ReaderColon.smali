.class public Lgnu/kawa/lispexpr/ReaderColon;
.super Lgnu/kawa/lispexpr/ReadTableEntry;
.source "ReaderColon.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lgnu/kawa/lispexpr/ReadTableEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public getKind()I
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x6

    return v0
.end method

.method public read(Lgnu/text/Lexer;II)Ljava/lang/Object;
    .locals 6
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
    .line 15
    move-object v0, p1

    check-cast v0, Lgnu/kawa/lispexpr/LispReader;

    move-object v2, v0

    .line 16
    .local v2, reader:Lgnu/kawa/lispexpr/LispReader;
    invoke-static {}, Lgnu/kawa/lispexpr/ReadTable;->getCurrent()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v3

    .line 17
    .local v3, rtable:Lgnu/kawa/lispexpr/ReadTable;
    iget v4, v2, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    .line 18
    .local v4, startPos:I
    iget-char v5, v3, Lgnu/kawa/lispexpr/ReadTable;->postfixLookupOperator:C

    if-ne p2, v5, :cond_1

    .line 20
    invoke-virtual {v2}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v1

    .line 21
    .local v1, next:I
    const/16 v5, 0x3a

    if-ne v1, v5, :cond_0

    .line 22
    const-string v5, "::"

    invoke-virtual {v3, v5}, Lgnu/kawa/lispexpr/ReadTable;->makeSymbol(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 27
    .end local v1           #next:I
    :goto_0
    return-object v5

    .line 24
    .restart local v1       #next:I
    :cond_0
    invoke-virtual {v2, p2}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferAppend(I)V

    .line 25
    move p2, v1

    .line 27
    .end local v1           #next:I
    :cond_1
    invoke-virtual {v2, p2, v4, v3}, Lgnu/kawa/lispexpr/LispReader;->readAndHandleToken(IILgnu/kawa/lispexpr/ReadTable;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0
.end method
