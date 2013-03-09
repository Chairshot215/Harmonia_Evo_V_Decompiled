.class public Lgnu/kawa/slib/readtable;
.super Lgnu/expr/ModuleBody;
.source "readtable.scm"


# static fields
.field public static final $instance:Lgnu/kawa/slib/readtable;

.field static final Lit0:Lgnu/mapping/SimpleSymbol;

.field static final Lit1:Lgnu/mapping/SimpleSymbol;

.field static final Lit2:Lgnu/mapping/SimpleSymbol;

.field static final Lit3:Lgnu/mapping/SimpleSymbol;

.field static final Lit4:Lgnu/mapping/SimpleSymbol;

.field static final Lit5:Lgnu/mapping/SimpleSymbol;

.field static final Lit6:Lgnu/mapping/SimpleSymbol;

.field public static final current$Mnreadtable:Lgnu/expr/ModuleMethod;

.field public static final define$Mnreader$Mnctor:Lgnu/expr/ModuleMethod;

.field public static final get$Mndispatch$Mnmacro$Mntable:Lgnu/expr/ModuleMethod;

.field public static final make$Mndispatch$Mnmacro$Mncharacter:Lgnu/expr/ModuleMethod;

.field public static final readtable$Qu:Lgnu/expr/ModuleMethod;

.field public static final set$Mndispatch$Mnmacro$Mncharacter:Lgnu/expr/ModuleMethod;

.field public static final set$Mnmacro$Mncharacter:Lgnu/expr/ModuleMethod;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const/16 v5, 0x3002

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "define-reader-ctor"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/readtable;->Lit6:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "get-dispatch-macro-table"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/readtable;->Lit5:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "set-dispatch-macro-character"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/readtable;->Lit4:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "make-dispatch-macro-character"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/readtable;->Lit3:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "set-macro-character"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/readtable;->Lit2:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "readtable?"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/readtable;->Lit1:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "current-readtable"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/readtable;->Lit0:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/kawa/slib/readtable;

    invoke-direct {v0}, Lgnu/kawa/slib/readtable;-><init>()V

    sput-object v0, Lgnu/kawa/slib/readtable;->$instance:Lgnu/kawa/slib/readtable;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v1, Lgnu/kawa/slib/readtable;->$instance:Lgnu/kawa/slib/readtable;

    const/4 v2, 0x1

    sget-object v3, Lgnu/kawa/slib/readtable;->Lit0:Lgnu/mapping/SimpleSymbol;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/readtable;->current$Mnreadtable:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x2

    sget-object v3, Lgnu/kawa/slib/readtable;->Lit1:Lgnu/mapping/SimpleSymbol;

    const/16 v4, 0x1001

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/readtable;->readtable$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x3

    sget-object v3, Lgnu/kawa/slib/readtable;->Lit2:Lgnu/mapping/SimpleSymbol;

    const/16 v4, 0x4002

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/readtable;->set$Mnmacro$Mncharacter:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x6

    sget-object v3, Lgnu/kawa/slib/readtable;->Lit3:Lgnu/mapping/SimpleSymbol;

    const/16 v4, 0x3001

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/readtable;->make$Mndispatch$Mnmacro$Mncharacter:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x9

    sget-object v3, Lgnu/kawa/slib/readtable;->Lit4:Lgnu/mapping/SimpleSymbol;

    const/16 v4, 0x4003

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/readtable;->set$Mndispatch$Mnmacro$Mncharacter:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xb

    sget-object v3, Lgnu/kawa/slib/readtable;->Lit5:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/readtable;->get$Mndispatch$Mnmacro$Mntable:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xd

    sget-object v3, Lgnu/kawa/slib/readtable;->Lit6:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/readtable;->define$Mnreader$Mnctor:Lgnu/expr/ModuleMethod;

    sget-object v0, Lgnu/kawa/slib/readtable;->$instance:Lgnu/kawa/slib/readtable;

    invoke-virtual {v0}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static currentReadtable()Lgnu/kawa/lispexpr/ReadTable;
    .locals 1

    .prologue
    .line 1
    invoke-static {}, Lgnu/kawa/lispexpr/ReadTable;->getCurrent()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v0

    return-object v0
.end method

.method public static defineReaderCtor(Lgnu/mapping/Symbol;Lgnu/mapping/Procedure;)V
    .locals 1

    invoke-static {}, Lgnu/kawa/slib/readtable;->currentReadtable()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lgnu/kawa/slib/readtable;->defineReaderCtor(Lgnu/mapping/Symbol;Lgnu/mapping/Procedure;Lgnu/kawa/lispexpr/ReadTable;)V

    return-void
.end method

.method public static defineReaderCtor(Lgnu/mapping/Symbol;Lgnu/mapping/Procedure;Lgnu/kawa/lispexpr/ReadTable;)V
    .locals 1
    .parameter "key"
    .parameter "proc"
    .parameter "readtable"

    .prologue
    .line 82
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, v0, p1}, Lgnu/kawa/lispexpr/ReadTable;->putReaderCtor(Ljava/lang/String;Lgnu/mapping/Procedure;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDispatchMacroTable(CC)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lgnu/kawa/slib/readtable;->currentReadtable()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lgnu/kawa/slib/readtable;->getDispatchMacroTable(CCLgnu/kawa/lispexpr/ReadTable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getDispatchMacroTable(CCLgnu/kawa/lispexpr/ReadTable;)Ljava/lang/Object;
    .locals 6
    .parameter "disp$Mnchar"
    .parameter "sub$Mnchar"
    .parameter "readtable"

    .prologue
    .line 74
    invoke-virtual {p2, p0}, Lgnu/kawa/lispexpr/ReadTable;->lookup(I)Lgnu/kawa/lispexpr/ReadTableEntry;

    move-result-object v0

    :try_start_0
    check-cast v0, Lgnu/kawa/lispexpr/ReaderDispatch;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .local v0, disp$Mnentry:Lgnu/kawa/lispexpr/ReaderDispatch;
    invoke-virtual {v0, p1}, Lgnu/kawa/lispexpr/ReaderDispatch;->lookup(I)Lgnu/kawa/lispexpr/ReadTableEntry;

    move-result-object v1

    .line 80
    .local v1, sub$Mnentry:Lgnu/kawa/lispexpr/ReadTableEntry;
    if-nez v1, :cond_0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object v2

    :cond_0
    move-object v2, v1

    goto :goto_0

    .line 78
    .end local v0           #disp$Mnentry:Lgnu/kawa/lispexpr/ReaderDispatch;
    .end local v1           #sub$Mnentry:Lgnu/kawa/lispexpr/ReadTableEntry;
    :catch_0
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "disp-entry"

    const/4 v5, -0x2

    invoke-direct {v3, v2, v4, v5, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3
.end method

.method public static isReadtable(Ljava/lang/Object;)Z
    .locals 1
    .parameter "obj"

    .prologue
    .line 5
    instance-of v0, p0, Lgnu/kawa/lispexpr/ReadTable;

    return v0
.end method

.method public static makeDispatchMacroCharacter(C)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lgnu/kawa/slib/readtable;->makeDispatchMacroCharacter(CZ)V

    return-void
.end method

.method public static makeDispatchMacroCharacter(CZ)V
    .locals 1

    invoke-static {}, Lgnu/kawa/slib/readtable;->currentReadtable()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lgnu/kawa/slib/readtable;->makeDispatchMacroCharacter(CZLgnu/kawa/lispexpr/ReadTable;)V

    return-void
.end method

.method public static makeDispatchMacroCharacter(CZLgnu/kawa/lispexpr/ReadTable;)V
    .locals 1
    .parameter "char"
    .parameter "non$Mnterminating"
    .parameter "readtable"

    .prologue
    .line 57
    new-instance v0, Lgnu/kawa/lispexpr/ReaderDispatch;

    invoke-direct {v0, p1}, Lgnu/kawa/lispexpr/ReaderDispatch;-><init>(Z)V

    invoke-virtual {p2, p0, v0}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    return-void
.end method

.method public static setDispatchMacroCharacter(CCLjava/lang/Object;)V
    .locals 1

    invoke-static {}, Lgnu/kawa/slib/readtable;->currentReadtable()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lgnu/kawa/slib/readtable;->setDispatchMacroCharacter(CCLjava/lang/Object;Lgnu/kawa/lispexpr/ReadTable;)V

    return-void
.end method

.method public static setDispatchMacroCharacter(CCLjava/lang/Object;Lgnu/kawa/lispexpr/ReadTable;)V
    .locals 5
    .parameter "disp$Mnchar"
    .parameter "sub$Mnchar"
    .parameter "function"
    .parameter "readtable"

    .prologue
    .line 65
    invoke-virtual {p3, p0}, Lgnu/kawa/lispexpr/ReadTable;->lookup(I)Lgnu/kawa/lispexpr/ReadTableEntry;

    move-result-object v0

    :try_start_0
    check-cast v0, Lgnu/kawa/lispexpr/ReaderDispatch;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .local v0, entry:Lgnu/kawa/lispexpr/ReaderDispatch;
    new-instance v1, Lgnu/kawa/lispexpr/ReaderDispatchMacro;

    :try_start_1
    check-cast p2, Lgnu/mapping/Procedure;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .end local p2
    invoke-direct {v1, p2}, Lgnu/kawa/lispexpr/ReaderDispatchMacro;-><init>(Lgnu/mapping/Procedure;)V

    invoke-virtual {v0, p1, v1}, Lgnu/kawa/lispexpr/ReaderDispatch;->set(ILjava/lang/Object;)V

    return-void

    .line 70
    .end local v0           #entry:Lgnu/kawa/lispexpr/ReaderDispatch;
    .restart local p2
    :catch_0
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "entry"

    const/4 v4, -0x2

    invoke-direct {v2, v1, v3, v4, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 72
    .restart local v0       #entry:Lgnu/kawa/lispexpr/ReaderDispatch;
    :catch_1
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "gnu.kawa.lispexpr.ReaderDispatchMacro.<init>(gnu.mapping.Procedure)"

    const/4 v4, 0x1

    invoke-direct {v2, v1, v3, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2
.end method

.method public static setMacroCharacter(CLjava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lgnu/kawa/slib/readtable;->setMacroCharacter(CLjava/lang/Object;Z)V

    return-void
.end method

.method public static setMacroCharacter(CLjava/lang/Object;Z)V
    .locals 1

    invoke-static {}, Lgnu/kawa/slib/readtable;->currentReadtable()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lgnu/kawa/slib/readtable;->setMacroCharacter(CLjava/lang/Object;ZLgnu/kawa/lispexpr/ReadTable;)V

    return-void
.end method

.method public static setMacroCharacter(CLjava/lang/Object;ZLgnu/kawa/lispexpr/ReadTable;)V
    .locals 4
    .parameter "char"
    .parameter "function"
    .parameter "non$Mnterminating"
    .parameter "readtable"

    .prologue
    .line 25
    new-instance v0, Lgnu/kawa/lispexpr/ReaderMacro;

    :try_start_0
    check-cast p1, Lgnu/mapping/Procedure;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local p1
    invoke-direct {v0, p1, p2}, Lgnu/kawa/lispexpr/ReaderMacro;-><init>(Lgnu/mapping/Procedure;Z)V

    invoke-virtual {p3, p0, v0}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    return-void

    .line 31
    .restart local p1
    :catch_0
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "gnu.kawa.lispexpr.ReaderMacro.<init>(gnu.mapping.Procedure,boolean)"

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v3, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1
    invoke-static {}, Lgnu/kawa/slib/readtable;->currentReadtable()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lgnu/expr/ModuleBody;->apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter
    .parameter

    .prologue
    iget v1, p1, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v1, :sswitch_data_0

    .line 57
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1

    .line 5
    :sswitch_0
    invoke-static {p2}, Lgnu/kawa/slib/readtable;->isReadtable(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 57
    :sswitch_1
    :try_start_0
    move-object v0, p2

    check-cast v0, Lgnu/text/Char;

    move-object v1, v0

    invoke-virtual {v1}, Lgnu/text/Char;->charValue()C
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    invoke-static {v1}, Lgnu/kawa/slib/readtable;->makeDispatchMacroCharacter(C)V

    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    .line 58
    :catch_0
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "make-dispatch-macro-character"

    const/4 v4, 0x1

    invoke-direct {v2, v1, v3, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line -1
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    iget v1, p1, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v1, :sswitch_data_0

    .line 82
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1

    .line 25
    :sswitch_0
    :try_start_0
    move-object v0, p2

    check-cast v0, Lgnu/text/Char;

    move-object v1, v0

    invoke-virtual {v1}, Lgnu/text/Char;->charValue()C
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    invoke-static {v1, p3}, Lgnu/kawa/slib/readtable;->setMacroCharacter(CLjava/lang/Object;)V

    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    .line 57
    :sswitch_1
    :try_start_1
    move-object v0, p2

    check-cast v0, Lgnu/text/Char;

    move-object v1, v0

    invoke-virtual {v1}, Lgnu/text/Char;->charValue()C
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    :try_start_2
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    if-eq p3, v2, :cond_0

    move v2, v4

    :goto_1
    invoke-static {v1, v2}, Lgnu/kawa/slib/readtable;->makeDispatchMacroCharacter(CZ)V

    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 74
    :sswitch_2
    :try_start_3
    move-object v0, p2

    check-cast v0, Lgnu/text/Char;

    move-object v1, v0

    invoke-virtual {v1}, Lgnu/text/Char;->charValue()C
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v2

    :try_start_4
    move-object v0, p3

    check-cast v0, Lgnu/text/Char;

    move-object v1, v0

    invoke-virtual {v1}, Lgnu/text/Char;->charValue()C
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v1

    invoke-static {v2, v1}, Lgnu/kawa/slib/readtable;->getDispatchMacroTable(CC)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 82
    :sswitch_3
    :try_start_5
    check-cast p2, Lgnu/mapping/Symbol;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_5

    :try_start_6
    check-cast p3, Lgnu/mapping/Procedure;
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_6

    invoke-static {p2, p3}, Lgnu/kawa/slib/readtable;->defineReaderCtor(Lgnu/mapping/Symbol;Lgnu/mapping/Procedure;)V

    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    .line 25
    :catch_0
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "set-macro-character"

    invoke-direct {v2, v1, v3, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 58
    :catch_1
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "make-dispatch-macro-character"

    invoke-direct {v2, v1, v3, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 60
    :catch_2
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "make-dispatch-macro-character"

    invoke-direct {v2, v1, v3, v5, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 75
    :catch_3
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "get-dispatch-macro-table"

    invoke-direct {v2, v1, v3, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    :catch_4
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "get-dispatch-macro-table"

    invoke-direct {v2, v1, v3, v5, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 82
    :catch_5
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "define-reader-ctor"

    invoke-direct {v2, v1, v3, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    :catch_6
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "define-reader-ctor"

    invoke-direct {v2, v1, v3, v5, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line -1
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x6 -> :sswitch_1
        0xb -> :sswitch_2
        0xd -> :sswitch_3
    .end sparse-switch
.end method

.method public apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    iget v1, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v1, :pswitch_data_0

    .line 82
    :pswitch_0
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1

    .line 25
    :pswitch_1
    :try_start_0
    move-object v0, p2

    check-cast v0, Lgnu/text/Char;

    move-object v1, v0

    invoke-virtual {v1}, Lgnu/text/Char;->charValue()C
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :try_start_1
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    if-eq p4, v2, :cond_0

    move v2, v4

    :goto_1
    invoke-static {v1, p3, v2}, Lgnu/kawa/slib/readtable;->setMacroCharacter(CLjava/lang/Object;Z)V

    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    .line 57
    :pswitch_2
    :try_start_2
    move-object v0, p2

    check-cast v0, Lgnu/text/Char;

    move-object v1, v0

    invoke-virtual {v1}, Lgnu/text/Char;->charValue()C
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v1

    :try_start_3
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    if-eq p3, v2, :cond_1

    move v2, v4

    :goto_2
    :try_start_4
    check-cast p4, Lgnu/kawa/lispexpr/ReadTable;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    invoke-static {v1, v2, p4}, Lgnu/kawa/slib/readtable;->makeDispatchMacroCharacter(CZLgnu/kawa/lispexpr/ReadTable;)V

    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_2

    .line 65
    :pswitch_3
    :try_start_5
    move-object v0, p2

    check-cast v0, Lgnu/text/Char;

    move-object v1, v0

    invoke-virtual {v1}, Lgnu/text/Char;->charValue()C
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_5

    move-result v2

    :try_start_6
    move-object v0, p3

    check-cast v0, Lgnu/text/Char;

    move-object v1, v0

    invoke-virtual {v1}, Lgnu/text/Char;->charValue()C
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_6

    move-result v1

    invoke-static {v2, v1, p4}, Lgnu/kawa/slib/readtable;->setDispatchMacroCharacter(CCLjava/lang/Object;)V

    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    .line 74
    :pswitch_4
    :try_start_7
    move-object v0, p2

    check-cast v0, Lgnu/text/Char;

    move-object v1, v0

    invoke-virtual {v1}, Lgnu/text/Char;->charValue()C
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_7

    move-result v2

    :try_start_8
    move-object v0, p3

    check-cast v0, Lgnu/text/Char;

    move-object v1, v0

    invoke-virtual {v1}, Lgnu/text/Char;->charValue()C
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_8} :catch_8

    move-result v1

    :try_start_9
    check-cast p4, Lgnu/kawa/lispexpr/ReadTable;
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_9} :catch_9

    invoke-static {v2, v1, p4}, Lgnu/kawa/slib/readtable;->getDispatchMacroTable(CCLgnu/kawa/lispexpr/ReadTable;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 82
    :pswitch_5
    :try_start_a
    check-cast p2, Lgnu/mapping/Symbol;
    :try_end_a
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_a} :catch_a

    :try_start_b
    check-cast p3, Lgnu/mapping/Procedure;
    :try_end_b
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_b} :catch_b

    :try_start_c
    check-cast p4, Lgnu/kawa/lispexpr/ReadTable;
    :try_end_c
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_c} :catch_c

    invoke-static {p2, p3, p4}, Lgnu/kawa/slib/readtable;->defineReaderCtor(Lgnu/mapping/Symbol;Lgnu/mapping/Procedure;Lgnu/kawa/lispexpr/ReadTable;)V

    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    .line 25
    :catch_0
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "set-macro-character"

    invoke-direct {v2, v1, v3, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 28
    :catch_1
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "set-macro-character"

    invoke-direct {v2, v1, v3, v6, p4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 58
    :catch_2
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "make-dispatch-macro-character"

    invoke-direct {v2, v1, v3, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 60
    :catch_3
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "make-dispatch-macro-character"

    invoke-direct {v2, v1, v3, v5, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 61
    :catch_4
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "make-dispatch-macro-character"

    invoke-direct {v2, v1, v3, v6, p4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 66
    :catch_5
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "set-dispatch-macro-character"

    invoke-direct {v2, v1, v3, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    :catch_6
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "set-dispatch-macro-character"

    invoke-direct {v2, v1, v3, v5, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 75
    :catch_7
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "get-dispatch-macro-table"

    invoke-direct {v2, v1, v3, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    :catch_8
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "get-dispatch-macro-table"

    invoke-direct {v2, v1, v3, v5, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 76
    :catch_9
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "get-dispatch-macro-table"

    invoke-direct {v2, v1, v3, v6, p4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 82
    :catch_a
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "define-reader-ctor"

    invoke-direct {v2, v1, v3, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    :catch_b
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "define-reader-ctor"

    invoke-direct {v2, v1, v3, v5, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 83
    :catch_c
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "define-reader-ctor"

    invoke-direct {v2, v1, v3, v6, p4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line -1
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    iget v1, p1, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v1, :sswitch_data_0

    .line 65
    invoke-super/range {p0 .. p5}, Lgnu/expr/ModuleBody;->apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1

    .line 25
    :sswitch_0
    :try_start_0
    move-object v0, p2

    check-cast v0, Lgnu/text/Char;

    move-object v1, v0

    invoke-virtual {v1}, Lgnu/text/Char;->charValue()C
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :try_start_1
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    if-eq p4, v2, :cond_0

    move v2, v4

    :goto_1
    :try_start_2
    check-cast p5, Lgnu/kawa/lispexpr/ReadTable;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    invoke-static {v1, p3, v2, p5}, Lgnu/kawa/slib/readtable;->setMacroCharacter(CLjava/lang/Object;ZLgnu/kawa/lispexpr/ReadTable;)V

    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 65
    :sswitch_1
    :try_start_3
    move-object v0, p2

    check-cast v0, Lgnu/text/Char;

    move-object v1, v0

    invoke-virtual {v1}, Lgnu/text/Char;->charValue()C
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v2

    :try_start_4
    move-object v0, p3

    check-cast v0, Lgnu/text/Char;

    move-object v1, v0

    invoke-virtual {v1}, Lgnu/text/Char;->charValue()C
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v1

    :try_start_5
    check-cast p5, Lgnu/kawa/lispexpr/ReadTable;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_5

    invoke-static {v2, v1, p4, p5}, Lgnu/kawa/slib/readtable;->setDispatchMacroCharacter(CCLjava/lang/Object;Lgnu/kawa/lispexpr/ReadTable;)V

    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    .line 25
    :catch_0
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "set-macro-character"

    invoke-direct {v2, v1, v3, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 28
    :catch_1
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "set-macro-character"

    const/4 v4, 0x3

    invoke-direct {v2, v1, v3, v4, p4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 29
    :catch_2
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "set-macro-character"

    invoke-direct {v2, v1, v3, v5, p5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 66
    :catch_3
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "set-dispatch-macro-character"

    invoke-direct {v2, v1, v3, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    :catch_4
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "set-dispatch-macro-character"

    const/4 v4, 0x2

    invoke-direct {v2, v1, v3, v4, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 68
    :catch_5
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "set-dispatch-macro-character"

    invoke-direct {v2, v1, v3, v5, p5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line -1
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x9 -> :sswitch_1
    .end sparse-switch
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p2, Lgnu/mapping/CallContext;->pc:I

    move v0, v2

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_0
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v0, :sswitch_data_0

    .line 5
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 57
    :goto_0
    return v0

    :sswitch_0
    instance-of v0, p2, Lgnu/text/Char;

    if-eqz v0, :cond_0

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    :cond_0
    const v0, -0xbffff

    goto :goto_0

    .line 5
    :sswitch_1
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line -1
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x6 -> :sswitch_0
    .end sparse-switch
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v4, -0xbfffe

    const/4 v3, 0x2

    const/4 v2, 0x0

    const v1, -0xbffff

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v0, :sswitch_data_0

    .line 25
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 82
    :goto_0
    return v0

    :sswitch_0
    instance-of v0, p2, Lgnu/mapping/Symbol;

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of v0, p3, Lgnu/mapping/Procedure;

    if-nez v0, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    move v0, v2

    goto :goto_0

    .line 74
    :sswitch_1
    instance-of v0, p2, Lgnu/text/Char;

    if-eqz v0, :cond_2

    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of v0, p3, Lgnu/text/Char;

    if-eqz v0, :cond_3

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v4

    goto :goto_0

    .line 57
    :sswitch_2
    instance-of v0, p2, Lgnu/text/Char;

    if-eqz v0, :cond_4

    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    const/4 v0, 0x1

    if-eqz v0, :cond_5

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v4

    goto :goto_0

    .line 25
    :sswitch_3
    instance-of v0, p2, Lgnu/text/Char;

    if-eqz v0, :cond_6

    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    move v0, v2

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_0

    .line -1
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_3
        0x6 -> :sswitch_2
        0xb -> :sswitch_1
        0xd -> :sswitch_0
    .end sparse-switch
.end method

.method public match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v5, -0xbfffd

    const v4, -0xbfffe

    const/4 v3, 0x3

    const/4 v2, 0x0

    const v1, -0xbffff

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_0

    .line 25
    :pswitch_0
    invoke-super/range {p0 .. p5}, Lgnu/expr/ModuleBody;->match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 82
    :goto_0
    return v0

    :pswitch_1
    instance-of v0, p2, Lgnu/mapping/Symbol;

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of v0, p3, Lgnu/mapping/Procedure;

    if-nez v0, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    instance-of v0, p4, Lgnu/kawa/lispexpr/ReadTable;

    if-nez v0, :cond_2

    move v0, v5

    goto :goto_0

    :cond_2
    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p5, Lgnu/mapping/CallContext;->pc:I

    move v0, v2

    goto :goto_0

    .line 74
    :pswitch_2
    instance-of v0, p2, Lgnu/text/Char;

    if-eqz v0, :cond_3

    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of v0, p3, Lgnu/text/Char;

    if-eqz v0, :cond_4

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    instance-of v0, p4, Lgnu/kawa/lispexpr/ReadTable;

    if-nez v0, :cond_5

    move v0, v5

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v4

    goto :goto_0

    :cond_5
    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p5, Lgnu/mapping/CallContext;->pc:I

    move v0, v2

    goto :goto_0

    .line 65
    :pswitch_3
    instance-of v0, p2, Lgnu/text/Char;

    if-eqz v0, :cond_6

    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of v0, p3, Lgnu/text/Char;

    if-eqz v0, :cond_7

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p5, Lgnu/mapping/CallContext;->pc:I

    move v0, v2

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_0

    :cond_7
    move v0, v4

    goto :goto_0

    .line 57
    :pswitch_4
    instance-of v0, p2, Lgnu/text/Char;

    if-eqz v0, :cond_8

    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    const/4 v0, 0x1

    if-eqz v0, :cond_9

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    instance-of v0, p4, Lgnu/kawa/lispexpr/ReadTable;

    if-nez v0, :cond_a

    move v0, v5

    goto :goto_0

    :cond_8
    move v0, v1

    goto :goto_0

    :cond_9
    move v0, v4

    goto :goto_0

    :cond_a
    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p5, Lgnu/mapping/CallContext;->pc:I

    move v0, v2

    goto :goto_0

    .line 25
    :pswitch_5
    instance-of v0, p2, Lgnu/text/Char;

    if-eqz v0, :cond_b

    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    const/4 v0, 0x1

    if-eqz v0, :cond_c

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p5, Lgnu/mapping/CallContext;->pc:I

    move v0, v2

    goto/16 :goto_0

    :cond_b
    move v0, v1

    goto/16 :goto_0

    :cond_c
    move v0, v5

    goto/16 :goto_0

    .line -1
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public match4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    const v2, -0xbfffc

    const v1, -0xbffff

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v0, :sswitch_data_0

    .line 25
    invoke-super/range {p0 .. p6}, Lgnu/expr/ModuleBody;->match4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 65
    :goto_0
    return v0

    :sswitch_0
    instance-of v0, p2, Lgnu/text/Char;

    if-eqz v0, :cond_0

    iput-object p2, p6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of v0, p3, Lgnu/text/Char;

    if-eqz v0, :cond_1

    iput-object p3, p6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    instance-of v0, p5, Lgnu/kawa/lispexpr/ReadTable;

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const v0, -0xbfffe

    goto :goto_0

    :cond_2
    iput-object p5, p6, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    iput-object p1, p6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p6, Lgnu/mapping/CallContext;->pc:I

    move v0, v3

    goto :goto_0

    .line 25
    :sswitch_1
    instance-of v0, p2, Lgnu/text/Char;

    if-eqz v0, :cond_3

    iput-object p2, p6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    const/4 v0, 0x1

    if-eqz v0, :cond_4

    iput-object p4, p6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    instance-of v0, p5, Lgnu/kawa/lispexpr/ReadTable;

    if-nez v0, :cond_5

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    const v0, -0xbfffd

    goto :goto_0

    :cond_5
    iput-object p5, p6, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    iput-object p1, p6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p6, Lgnu/mapping/CallContext;->pc:I

    move v0, v3

    goto :goto_0

    .line -1
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .locals 1
    .parameter "$ctx"

    .prologue
    .line 1
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 5
    .local v0, $result:Lgnu/lists/Consumer;
    return-void
.end method
