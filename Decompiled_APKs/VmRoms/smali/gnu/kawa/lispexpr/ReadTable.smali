.class public Lgnu/kawa/lispexpr/ReadTable;
.super Lgnu/kawa/util/RangeTable;
.source "ReadTable.java"


# static fields
.field public static final CONSTITUENT:I = 0x2

.field public static final ILLEGAL:I = 0x0

.field public static final MULTIPLE_ESCAPE:I = 0x4

.field public static final NON_TERMINATING_MACRO:I = 0x6

.field public static final SINGLE_ESCAPE:I = 0x3

.field public static final TERMINATING_MACRO:I = 0x5

.field public static final WHITESPACE:I = 0x1

.field static final current:Lgnu/mapping/ThreadLocation;

.field public static defaultBracketMode:I


# instance fields
.field ctorTable:Lgnu/mapping/Environment;

.field protected finalColonIsKeyword:Z

.field protected hexEscapeAfterBackslash:Z

.field protected initialColonIsKeyword:Z

.field public postfixLookupOperator:C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    const/4 v0, -0x1

    sput v0, Lgnu/kawa/lispexpr/ReadTable;->defaultBracketMode:I

    .line 51
    new-instance v0, Lgnu/mapping/ThreadLocation;

    const-string v1, "read-table"

    invoke-direct {v0, v1}, Lgnu/mapping/ThreadLocation;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/kawa/lispexpr/ReadTable;->current:Lgnu/mapping/ThreadLocation;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lgnu/kawa/util/RangeTable;-><init>()V

    .line 26
    const v0, 0xffff

    iput-char v0, p0, Lgnu/kawa/lispexpr/ReadTable;->postfixLookupOperator:C

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgnu/kawa/lispexpr/ReadTable;->hexEscapeAfterBackslash:Z

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lgnu/kawa/lispexpr/ReadTable;->ctorTable:Lgnu/mapping/Environment;

    .line 55
    return-void
.end method

.method public static createInitial()Lgnu/kawa/lispexpr/ReadTable;
    .locals 1

    .prologue
    .line 114
    new-instance v0, Lgnu/kawa/lispexpr/ReadTable;

    invoke-direct {v0}, Lgnu/kawa/lispexpr/ReadTable;-><init>()V

    .line 115
    .local v0, tab:Lgnu/kawa/lispexpr/ReadTable;
    invoke-virtual {v0}, Lgnu/kawa/lispexpr/ReadTable;->initialize()V

    .line 116
    return-object v0
.end method

.method public static getCurrent()Lgnu/kawa/lispexpr/ReadTable;
    .locals 4

    .prologue
    .line 195
    sget-object v2, Lgnu/kawa/lispexpr/ReadTable;->current:Lgnu/mapping/ThreadLocation;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lgnu/mapping/ThreadLocation;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/kawa/lispexpr/ReadTable;

    .line 196
    .local v1, table:Lgnu/kawa/lispexpr/ReadTable;
    if-nez v1, :cond_0

    .line 198
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v0

    .line 199
    .local v0, language:Lgnu/expr/Language;
    instance-of v2, v0, Lgnu/kawa/lispexpr/LispLanguage;

    if-eqz v2, :cond_1

    .line 200
    check-cast v0, Lgnu/kawa/lispexpr/LispLanguage;

    .end local v0           #language:Lgnu/expr/Language;
    iget-object v1, v0, Lgnu/kawa/lispexpr/LispLanguage;->defaultReadTable:Lgnu/kawa/lispexpr/ReadTable;

    .line 203
    :goto_0
    sget-object v2, Lgnu/kawa/lispexpr/ReadTable;->current:Lgnu/mapping/ThreadLocation;

    invoke-virtual {v2, v1}, Lgnu/mapping/ThreadLocation;->set(Ljava/lang/Object;)V

    .line 205
    :cond_0
    return-object v1

    .line 202
    .restart local v0       #language:Lgnu/expr/Language;
    :cond_1
    invoke-static {}, Lgnu/kawa/lispexpr/ReadTable;->createInitial()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v1

    goto :goto_0
.end method

.method public static setCurrent(Lgnu/kawa/lispexpr/ReadTable;)V
    .locals 1
    .parameter "rt"

    .prologue
    .line 210
    sget-object v0, Lgnu/kawa/lispexpr/ReadTable;->current:Lgnu/mapping/ThreadLocation;

    invoke-virtual {v0, p0}, Lgnu/mapping/ThreadLocation;->set(Ljava/lang/Object;)V

    .line 211
    return-void
.end method


# virtual methods
.method public declared-synchronized getReaderCtor(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter "key"

    .prologue
    .line 189
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/ReadTable;->initCtorTable()V

    .line 190
    iget-object v0, p0, Lgnu/kawa/lispexpr/ReadTable;->ctorTable:Lgnu/mapping/Environment;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lgnu/mapping/Environment;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method initCtorTable()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lgnu/kawa/lispexpr/ReadTable;->ctorTable:Lgnu/mapping/Environment;

    if-nez v0, :cond_0

    .line 160
    invoke-static {}, Lgnu/mapping/Environment;->make()Lgnu/mapping/SimpleEnvironment;

    move-result-object v0

    iput-object v0, p0, Lgnu/kawa/lispexpr/ReadTable;->ctorTable:Lgnu/mapping/Environment;

    .line 161
    :cond_0
    return-void
.end method

.method public initialize()V
    .locals 6

    .prologue
    const/16 v5, 0x40

    const/16 v4, 0x28

    .line 60
    invoke-static {}, Lgnu/kawa/lispexpr/ReadTableEntry;->getWhitespaceInstance()Lgnu/kawa/lispexpr/ReadTableEntry;

    move-result-object v0

    .line 61
    .local v0, entry:Lgnu/kawa/lispexpr/ReadTableEntry;
    const/16 v1, 0x20

    invoke-virtual {p0, v1, v0}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    .line 62
    const/16 v1, 0x9

    invoke-virtual {p0, v1, v0}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    .line 63
    const/16 v1, 0xa

    invoke-virtual {p0, v1, v0}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    .line 64
    const/16 v1, 0xd

    invoke-virtual {p0, v1, v0}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    .line 65
    const/16 v1, 0xc

    invoke-virtual {p0, v1, v0}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    .line 67
    const/16 v1, 0x7c

    invoke-static {}, Lgnu/kawa/lispexpr/ReadTableEntry;->getMultipleEscapeInstance()Lgnu/kawa/lispexpr/ReadTableEntry;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    .line 68
    const/16 v1, 0x5c

    invoke-static {}, Lgnu/kawa/lispexpr/ReadTableEntry;->getSingleEscapeInstance()Lgnu/kawa/lispexpr/ReadTableEntry;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    .line 69
    const/16 v1, 0x30

    const/16 v2, 0x39

    invoke-static {}, Lgnu/kawa/lispexpr/ReadTableEntry;->getDigitInstance()Lgnu/kawa/lispexpr/ReadTableEntry;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lgnu/kawa/lispexpr/ReadTable;->set(IILjava/lang/Object;)V

    .line 70
    invoke-static {}, Lgnu/kawa/lispexpr/ReadTableEntry;->getConstituentInstance()Lgnu/kawa/lispexpr/ReadTableEntry;

    move-result-object v0

    .line 71
    const/16 v1, 0x61

    const/16 v2, 0x7a

    invoke-virtual {p0, v1, v2, v0}, Lgnu/kawa/lispexpr/ReadTable;->set(IILjava/lang/Object;)V

    .line 72
    const/16 v1, 0x41

    const/16 v2, 0x5a

    invoke-virtual {p0, v1, v2, v0}, Lgnu/kawa/lispexpr/ReadTable;->set(IILjava/lang/Object;)V

    .line 73
    const/16 v1, 0x21

    invoke-virtual {p0, v1, v0}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    .line 74
    const/16 v1, 0x24

    invoke-virtual {p0, v1, v0}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    .line 75
    const/16 v1, 0x25

    invoke-virtual {p0, v1, v0}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    .line 76
    const/16 v1, 0x26

    invoke-virtual {p0, v1, v0}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    .line 77
    const/16 v1, 0x2a

    invoke-virtual {p0, v1, v0}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    .line 78
    const/16 v1, 0x2b

    invoke-virtual {p0, v1, v0}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    .line 79
    const/16 v1, 0x2d

    invoke-virtual {p0, v1, v0}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    .line 80
    const/16 v1, 0x2e

    invoke-virtual {p0, v1, v0}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    .line 81
    const/16 v1, 0x2f

    invoke-virtual {p0, v1, v0}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    .line 82
    const/16 v1, 0x3d

    invoke-virtual {p0, v1, v0}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    .line 83
    const/16 v1, 0x3e

    invoke-virtual {p0, v1, v0}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    .line 84
    const/16 v1, 0x3f

    invoke-virtual {p0, v1, v0}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    .line 85
    invoke-virtual {p0, v5, v0}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    .line 86
    const/16 v1, 0x5e

    invoke-virtual {p0, v1, v0}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    .line 87
    const/16 v1, 0x5f

    invoke-virtual {p0, v1, v0}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    .line 88
    const/16 v1, 0x7b

    sget-object v2, Lgnu/kawa/lispexpr/ReadTableEntry;->brace:Lgnu/kawa/lispexpr/ReadTableEntry;

    invoke-virtual {p0, v1, v2}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    .line 89
    const/16 v1, 0x7e

    invoke-virtual {p0, v1, v0}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    .line 90
    const/16 v1, 0x7f

    invoke-virtual {p0, v1, v0}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    .line 91
    const/16 v1, 0x8

    invoke-virtual {p0, v1, v0}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    .line 92
    const/16 v1, 0x3a

    new-instance v2, Lgnu/kawa/lispexpr/ReaderColon;

    invoke-direct {v2}, Lgnu/kawa/lispexpr/ReaderColon;-><init>()V

    invoke-virtual {p0, v1, v2}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    .line 93
    const/16 v1, 0x22

    new-instance v2, Lgnu/kawa/lispexpr/ReaderString;

    invoke-direct {v2}, Lgnu/kawa/lispexpr/ReaderString;-><init>()V

    invoke-virtual {p0, v1, v2}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    .line 94
    const/16 v1, 0x23

    invoke-static {p0}, Lgnu/kawa/lispexpr/ReaderDispatch;->create(Lgnu/kawa/lispexpr/ReadTable;)Lgnu/kawa/lispexpr/ReaderDispatch;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    .line 95
    const/16 v1, 0x3b

    invoke-static {}, Lgnu/kawa/lispexpr/ReaderIgnoreRestOfLine;->getInstance()Lgnu/kawa/lispexpr/ReaderIgnoreRestOfLine;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    .line 96
    const/16 v1, 0x29

    invoke-static {v4, v1}, Lgnu/kawa/lispexpr/ReaderParens;->getInstance(CC)Lgnu/kawa/lispexpr/ReaderParens;

    move-result-object v1

    invoke-virtual {p0, v4, v1}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    .line 98
    const/16 v1, 0x27

    new-instance v2, Lgnu/kawa/lispexpr/ReaderQuote;

    const-string v3, "quote"

    invoke-virtual {p0, v3}, Lgnu/kawa/lispexpr/ReadTable;->makeSymbol(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v2, v3}, Lgnu/kawa/lispexpr/ReaderQuote;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v1, v2}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    .line 99
    const/16 v1, 0x60

    new-instance v2, Lgnu/kawa/lispexpr/ReaderQuote;

    const-string v3, "quasiquote"

    invoke-virtual {p0, v3}, Lgnu/kawa/lispexpr/ReadTable;->makeSymbol(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v2, v3}, Lgnu/kawa/lispexpr/ReaderQuote;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v1, v2}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    .line 100
    const/16 v1, 0x2c

    new-instance v2, Lgnu/kawa/lispexpr/ReaderQuote;

    const-string v3, "unquote"

    invoke-virtual {p0, v3}, Lgnu/kawa/lispexpr/ReadTable;->makeSymbol(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "unquote-splicing"

    invoke-virtual {p0, v4}, Lgnu/kawa/lispexpr/ReadTable;->makeSymbol(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v2, v3, v5, v4}, Lgnu/kawa/lispexpr/ReaderQuote;-><init>(Ljava/lang/Object;CLjava/lang/Object;)V

    invoke-virtual {p0, v1, v2}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    .line 107
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/ReadTable;->setBracketMode()V

    .line 109
    return-void
.end method

.method public lookup(I)Lgnu/kawa/lispexpr/ReadTableEntry;
    .locals 3
    .parameter "ch"

    .prologue
    const/4 v2, 0x0

    .line 215
    invoke-virtual {p0, p1, v2}, Lgnu/kawa/lispexpr/ReadTable;->lookup(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/kawa/lispexpr/ReadTableEntry;

    .line 216
    .local v0, entry:Lgnu/kawa/lispexpr/ReadTableEntry;
    if-nez v0, :cond_2

    if-ltz p1, :cond_2

    const/high16 v1, 0x1

    if-ge p1, v1, :cond_2

    .line 218
    int-to-char v1, p1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 219
    const/16 v1, 0x30

    invoke-virtual {p0, v1, v2}, Lgnu/kawa/lispexpr/ReadTable;->lookup(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #entry:Lgnu/kawa/lispexpr/ReadTableEntry;
    check-cast v0, Lgnu/kawa/lispexpr/ReadTableEntry;

    .line 227
    .restart local v0       #entry:Lgnu/kawa/lispexpr/ReadTableEntry;
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    const/16 v1, 0x80

    if-lt p1, v1, :cond_1

    .line 228
    invoke-static {}, Lgnu/kawa/lispexpr/ReadTableEntry;->getConstituentInstance()Lgnu/kawa/lispexpr/ReadTableEntry;

    move-result-object v0

    .line 229
    :cond_1
    if-nez v0, :cond_2

    .line 230
    invoke-static {}, Lgnu/kawa/lispexpr/ReadTableEntry;->getIllegalInstance()Lgnu/kawa/lispexpr/ReadTableEntry;

    move-result-object v0

    .line 232
    :cond_2
    return-object v0

    .line 220
    :cond_3
    int-to-char v1, p1

    invoke-static {v1}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 221
    const/16 v1, 0x61

    invoke-virtual {p0, v1, v2}, Lgnu/kawa/lispexpr/ReadTable;->lookup(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #entry:Lgnu/kawa/lispexpr/ReadTableEntry;
    check-cast v0, Lgnu/kawa/lispexpr/ReadTableEntry;

    .restart local v0       #entry:Lgnu/kawa/lispexpr/ReadTableEntry;
    goto :goto_0

    .line 222
    :cond_4
    int-to-char v1, p1

    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 223
    const/16 v1, 0x41

    invoke-virtual {p0, v1, v2}, Lgnu/kawa/lispexpr/ReadTable;->lookup(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #entry:Lgnu/kawa/lispexpr/ReadTableEntry;
    check-cast v0, Lgnu/kawa/lispexpr/ReadTableEntry;

    .restart local v0       #entry:Lgnu/kawa/lispexpr/ReadTableEntry;
    goto :goto_0

    .line 224
    :cond_5
    int-to-char v1, p1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    const/16 v1, 0x20

    invoke-virtual {p0, v1, v2}, Lgnu/kawa/lispexpr/ReadTable;->lookup(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #entry:Lgnu/kawa/lispexpr/ReadTableEntry;
    check-cast v0, Lgnu/kawa/lispexpr/ReadTableEntry;

    .restart local v0       #entry:Lgnu/kawa/lispexpr/ReadTableEntry;
    goto :goto_0
.end method

.method protected makeSymbol(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter "name"

    .prologue
    .line 237
    sget-object v0, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized putReaderCtor(Ljava/lang/String;Lgnu/bytecode/Type;)V
    .locals 1
    .parameter "key"
    .parameter "type"

    .prologue
    .line 173
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/ReadTable;->initCtorTable()V

    .line 174
    iget-object v0, p0, Lgnu/kawa/lispexpr/ReadTable;->ctorTable:Lgnu/mapping/Environment;

    invoke-virtual {v0, p1, p2}, Lgnu/mapping/Environment;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    monitor-exit p0

    return-void

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized putReaderCtor(Ljava/lang/String;Lgnu/mapping/Procedure;)V
    .locals 1
    .parameter "key"
    .parameter "proc"

    .prologue
    .line 166
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/ReadTable;->initCtorTable()V

    .line 167
    iget-object v0, p0, Lgnu/kawa/lispexpr/ReadTable;->ctorTable:Lgnu/mapping/Environment;

    invoke-virtual {v0, p1, p2}, Lgnu/mapping/Environment;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    monitor-exit p0

    return-void

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized putReaderCtorFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "key"
    .parameter "cname"
    .parameter "fname"

    .prologue
    .line 181
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/ReadTable;->initCtorTable()V

    .line 182
    iget-object v1, p0, Lgnu/kawa/lispexpr/ReadTable;->ctorTable:Lgnu/mapping/Environment;

    invoke-virtual {v1, p1}, Lgnu/mapping/Environment;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    .line 183
    .local v0, symbol:Lgnu/mapping/Symbol;
    iget-object v1, p0, Lgnu/kawa/lispexpr/ReadTable;->ctorTable:Lgnu/mapping/Environment;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2, p2, p3}, Lgnu/kawa/reflect/StaticFieldLocation;->define(Lgnu/mapping/Environment;Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/reflect/StaticFieldLocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    monitor-exit p0

    return-void

    .line 181
    .end local v0           #symbol:Lgnu/mapping/Symbol;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setBracketMode()V
    .locals 1

    .prologue
    .line 151
    sget v0, Lgnu/kawa/lispexpr/ReadTable;->defaultBracketMode:I

    invoke-virtual {p0, v0}, Lgnu/kawa/lispexpr/ReadTable;->setBracketMode(I)V

    .line 152
    return-void
.end method

.method public setBracketMode(I)V
    .locals 5
    .parameter "mode"

    .prologue
    const/16 v4, 0x3c

    const/16 v3, 0x5d

    const/16 v2, 0x5b

    .line 128
    if-gtz p1, :cond_2

    .line 130
    invoke-static {}, Lgnu/kawa/lispexpr/ReadTableEntry;->getConstituentInstance()Lgnu/kawa/lispexpr/ReadTableEntry;

    move-result-object v0

    .line 131
    .local v0, token:Lgnu/kawa/lispexpr/ReadTableEntry;
    invoke-virtual {p0, v4, v0}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    .line 132
    if-gez p1, :cond_0

    .line 134
    invoke-virtual {p0, v2, v0}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    .line 135
    invoke-virtual {p0, v3, v0}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    .line 140
    .end local v0           #token:Lgnu/kawa/lispexpr/ReadTableEntry;
    :cond_0
    :goto_0
    if-ltz p1, :cond_1

    .line 142
    invoke-static {v2, v3}, Lgnu/kawa/lispexpr/ReaderParens;->getInstance(CC)Lgnu/kawa/lispexpr/ReaderParens;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    .line 143
    invoke-virtual {p0, v3}, Lgnu/kawa/lispexpr/ReadTable;->remove(I)V

    .line 145
    :cond_1
    return-void

    .line 139
    :cond_2
    new-instance v1, Lgnu/kawa/lispexpr/ReaderTypespec;

    invoke-direct {v1}, Lgnu/kawa/lispexpr/ReaderTypespec;-><init>()V

    invoke-virtual {p0, v4, v1}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public setFinalColonIsKeyword(Z)V
    .locals 0
    .parameter "whenFinal"

    .prologue
    .line 48
    iput-boolean p1, p0, Lgnu/kawa/lispexpr/ReadTable;->finalColonIsKeyword:Z

    .line 49
    return-void
.end method

.method public setInitialColonIsKeyword(Z)V
    .locals 0
    .parameter "whenInitial"

    .prologue
    .line 42
    iput-boolean p1, p0, Lgnu/kawa/lispexpr/ReadTable;->initialColonIsKeyword:Z

    .line 43
    return-void
.end method
