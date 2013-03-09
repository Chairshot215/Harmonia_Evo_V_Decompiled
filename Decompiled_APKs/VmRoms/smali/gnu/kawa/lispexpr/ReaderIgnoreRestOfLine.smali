.class public Lgnu/kawa/lispexpr/ReaderIgnoreRestOfLine;
.super Lgnu/kawa/lispexpr/ReadTableEntry;
.source "ReaderIgnoreRestOfLine.java"


# static fields
.field static instance:Lgnu/kawa/lispexpr/ReaderIgnoreRestOfLine;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lgnu/kawa/lispexpr/ReaderIgnoreRestOfLine;

    invoke-direct {v0}, Lgnu/kawa/lispexpr/ReaderIgnoreRestOfLine;-><init>()V

    sput-object v0, Lgnu/kawa/lispexpr/ReaderIgnoreRestOfLine;->instance:Lgnu/kawa/lispexpr/ReaderIgnoreRestOfLine;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lgnu/kawa/lispexpr/ReadTableEntry;-><init>()V

    return-void
.end method

.method public static getInstance()Lgnu/kawa/lispexpr/ReaderIgnoreRestOfLine;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lgnu/kawa/lispexpr/ReaderIgnoreRestOfLine;->instance:Lgnu/kawa/lispexpr/ReaderIgnoreRestOfLine;

    return-object v0
.end method


# virtual methods
.method public read(Lgnu/text/Lexer;II)Ljava/lang/Object;
    .locals 1
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
    .line 21
    :cond_0
    invoke-virtual {p1}, Lgnu/text/Lexer;->read()I

    move-result p2

    .line 22
    if-gez p2, :cond_1

    .line 23
    sget-object v0, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;

    .line 25
    :goto_0
    return-object v0

    .line 24
    :cond_1
    const/16 v0, 0xa

    if-eq p2, v0, :cond_2

    const/16 v0, 0xd

    if-ne p2, v0, :cond_0

    .line 25
    :cond_2
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0
.end method
