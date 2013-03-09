.class public Lgnu/kawa/xml/MakeProcInst;
.super Lgnu/kawa/xml/NodeConstructor;
.source "MakeProcInst.java"


# static fields
.field public static final makeProcInst:Lgnu/kawa/xml/MakeProcInst;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lgnu/kawa/xml/MakeProcInst;

    invoke-direct {v0}, Lgnu/kawa/xml/MakeProcInst;-><init>()V

    sput-object v0, Lgnu/kawa/xml/MakeProcInst;->makeProcInst:Lgnu/kawa/xml/MakeProcInst;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lgnu/kawa/xml/NodeConstructor;-><init>()V

    return-void
.end method

.method public static procInst$C(Ljava/lang/Object;Ljava/lang/Object;Lgnu/lists/Consumer;)V
    .locals 9
    .parameter "target"
    .parameter "content"
    .parameter "out"

    .prologue
    const/4 v8, 0x0

    .line 20
    invoke-static {p0}, Lgnu/kawa/xml/KNode;->atomicValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 21
    instance-of v6, p0, Ljava/lang/String;

    if-nez v6, :cond_0

    instance-of v6, p0, Lgnu/kawa/xml/UntypedAtomic;

    if-nez v6, :cond_0

    .line 22
    new-instance v6, Ljava/lang/ClassCastException;

    const-string v7, "invalid type of processing-instruction target [XPTY0004]"

    invoke-direct {v6, v7}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 24
    :cond_0
    instance-of v6, p2, Lgnu/lists/XConsumer;

    if-nez v6, :cond_1

    .line 47
    .end local p1
    .end local p2
    :goto_0
    return-void

    .line 26
    .restart local p1
    .restart local p2
    :cond_1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 27
    .local v3, sbuf:Ljava/lang/StringBuffer;
    instance-of v6, p1, Lgnu/mapping/Values;

    if-eqz v6, :cond_3

    .line 29
    check-cast p1, Lgnu/mapping/Values;

    .end local p1
    invoke-virtual {p1}, Lgnu/mapping/Values;->getValues()[Ljava/lang/Object;

    move-result-object v5

    .line 30
    .local v5, vals:[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v6, v5

    if-ge v1, v6, :cond_4

    .line 32
    if-lez v1, :cond_2

    .line 33
    const/16 v6, 0x20

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 34
    :cond_2
    aget-object v6, v5, v1

    invoke-static {v6, v3}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;Ljava/lang/StringBuffer;)V

    .line 30
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 38
    .end local v1           #i:I
    .end local v5           #vals:[Ljava/lang/Object;
    .restart local p1
    :cond_3
    invoke-static {p1, v3}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;Ljava/lang/StringBuffer;)V

    .line 39
    .end local p1
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    .line 40
    .local v2, length:I
    const/4 v4, 0x0

    .line 41
    .local v4, start:I
    :goto_2
    if-ge v4, v2, :cond_5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 42
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 43
    :cond_5
    sub-int v6, v2, v4

    new-array v0, v6, [C

    .line 44
    .local v0, chars:[C
    invoke-virtual {v3, v4, v2, v0, v8}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    .line 45
    check-cast p2, Lgnu/lists/XConsumer;

    .end local p2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    array-length v7, v0

    invoke-interface {p2, v6, v0, v8, v7}, Lgnu/lists/XConsumer;->writeProcessingInstruction(Ljava/lang/String;[CII)V

    goto :goto_0
.end method

.method public static procInst$X(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .locals 3
    .parameter "target"
    .parameter "content"
    .parameter "ctx"

    .prologue
    .line 52
    iget-object v1, p2, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 53
    .local v1, saved:Lgnu/lists/Consumer;
    invoke-static {p2}, Lgnu/kawa/xml/NodeConstructor;->pushNodeContext(Lgnu/mapping/CallContext;)Lgnu/xml/XMLFilter;

    move-result-object v0

    .line 56
    .local v0, out:Lgnu/lists/Consumer;
    :try_start_0
    invoke-static {p0, p1, v0}, Lgnu/kawa/xml/MakeProcInst;->procInst$C(Ljava/lang/Object;Ljava/lang/Object;Lgnu/lists/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    invoke-static {v1, p2}, Lgnu/kawa/xml/NodeConstructor;->popNodeContext(Lgnu/lists/Consumer;Lgnu/mapping/CallContext;)V

    .line 62
    return-void

    .line 60
    :catchall_0
    move-exception v2

    invoke-static {v1, p2}, Lgnu/kawa/xml/NodeConstructor;->popNodeContext(Lgnu/lists/Consumer;Lgnu/mapping/CallContext;)V

    throw v2
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 2
    .parameter "ctx"

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-virtual {p1, v1}, Lgnu/mapping/CallContext;->getNextArg(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v1}, Lgnu/mapping/CallContext;->getNextArg(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lgnu/kawa/xml/MakeProcInst;->procInst$X(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 67
    return-void
.end method

.method public compileToNode(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/ConsumerTarget;)V
    .locals 5
    .parameter "exp"
    .parameter "comp"
    .parameter "target"

    .prologue
    .line 72
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v1

    .line 73
    .local v1, code:Lgnu/bytecode/CodeAttr;
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 74
    .local v0, args:[Lgnu/expr/Expression;
    const/4 v2, 0x0

    aget-object v2, v0, v2

    sget-object v3, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v2, p2, v3}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 75
    const/4 v2, 0x1

    aget-object v2, v0, v2

    sget-object v3, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v2, p2, v3}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 76
    invoke-virtual {p3}, Lgnu/expr/ConsumerTarget;->getConsumerVariable()Lgnu/bytecode/Variable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 77
    const-string v2, "gnu.kawa.xml.MakeProcInst"

    invoke-static {v2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    const-string v3, "procInst$C"

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 79
    return-void
.end method

.method public numArgs()I
    .locals 1

    .prologue
    .line 16
    const/16 v0, 0x2002

    return v0
.end method
