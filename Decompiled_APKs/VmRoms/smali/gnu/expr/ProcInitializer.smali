.class public Lgnu/expr/ProcInitializer;
.super Lgnu/expr/Initializer;
.source "ProcInitializer.java"


# instance fields
.field proc:Lgnu/expr/LambdaExp;


# direct methods
.method public constructor <init>(Lgnu/expr/LambdaExp;Lgnu/expr/Compilation;Lgnu/bytecode/Field;)V
    .locals 2
    .parameter "lexp"
    .parameter "comp"
    .parameter "field"

    .prologue
    .line 10
    invoke-direct {p0}, Lgnu/expr/Initializer;-><init>()V

    .line 11
    iput-object p3, p0, Lgnu/expr/ProcInitializer;->field:Lgnu/bytecode/Field;

    .line 12
    iput-object p1, p0, Lgnu/expr/ProcInitializer;->proc:Lgnu/expr/LambdaExp;

    .line 13
    invoke-virtual {p3}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lgnu/expr/Compilation;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v1

    move-object v0, v1

    .line 15
    .local v0, heapLambda:Lgnu/expr/LambdaExp;
    :goto_0
    instance-of v1, v0, Lgnu/expr/ModuleExp;

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lgnu/expr/Compilation;->isStatic()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 17
    iget-object v1, p2, Lgnu/expr/Compilation;->clinitChain:Lgnu/expr/Initializer;

    iput-object v1, p0, Lgnu/expr/ProcInitializer;->next:Lgnu/expr/Initializer;

    .line 18
    iput-object p0, p2, Lgnu/expr/Compilation;->clinitChain:Lgnu/expr/Initializer;

    .line 25
    :goto_1
    return-void

    .line 13
    .end local v0           #heapLambda:Lgnu/expr/LambdaExp;
    :cond_0
    invoke-virtual {p1}, Lgnu/expr/LambdaExp;->getOwningLambda()Lgnu/expr/LambdaExp;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 22
    .restart local v0       #heapLambda:Lgnu/expr/LambdaExp;
    :cond_1
    iget-object v1, v0, Lgnu/expr/LambdaExp;->initChain:Lgnu/expr/Initializer;

    iput-object v1, p0, Lgnu/expr/ProcInitializer;->next:Lgnu/expr/Initializer;

    .line 23
    iput-object p0, v0, Lgnu/expr/LambdaExp;->initChain:Lgnu/expr/Initializer;

    goto :goto_1
.end method

.method public static emitLoadModuleMethod(Lgnu/expr/LambdaExp;Lgnu/expr/Compilation;)V
    .locals 8
    .parameter "proc"
    .parameter "comp"

    .prologue
    .line 30
    iget-object v1, p0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    .line 31
    .local v1, pdecl:Lgnu/expr/Declaration;
    if-nez v1, :cond_2

    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    .line 32
    .local v4, pname:Ljava/lang/Object;
    :goto_0
    const/4 v2, 0x0

    .line 33
    .local v2, oldproc:Lgnu/expr/ModuleMethod;
    iget-boolean v3, p1, Lgnu/expr/Compilation;->immediate:Z

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    .line 37
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v1

    .line 38
    .local v1, env:Lgnu/mapping/Environment;
    instance-of v3, v4, Lgnu/mapping/Symbol;

    if-eqz v3, :cond_3

    move-object v0, v4

    check-cast v0, Lgnu/mapping/Symbol;

    move-object v5, v0

    .line 40
    .local v5, sym:Lgnu/mapping/Symbol;
    :goto_1
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v3

    iget-object v6, p0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    invoke-virtual {v3, v6}, Lgnu/expr/Language;->getEnvPropertyFor(Lgnu/expr/Declaration;)Ljava/lang/Object;

    move-result-object v3

    .line 41
    .local v3, property:Ljava/lang/Object;
    const/4 v6, 0x0

    invoke-virtual {v1, v5, v3, v6}, Lgnu/mapping/Environment;->get(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 42
    .local v1, old:Ljava/lang/Object;
    instance-of v3, v1, Lgnu/expr/ModuleMethod;

    .end local v3           #property:Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 43
    check-cast v1, Lgnu/expr/ModuleMethod;

    .end local v2           #oldproc:Lgnu/expr/ModuleMethod;
    .local v1, oldproc:Lgnu/expr/ModuleMethod;
    move-object v2, v1

    .line 45
    .end local v1           #oldproc:Lgnu/expr/ModuleMethod;
    .end local v5           #sym:Lgnu/mapping/Symbol;
    .restart local v2       #oldproc:Lgnu/expr/ModuleMethod;
    :cond_0
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v1

    .line 46
    .local v1, code:Lgnu/bytecode/CodeAttr;
    sget-object v3, Lgnu/expr/Compilation;->typeModuleMethod:Lgnu/bytecode/ClassType;

    .line 48
    .local v3, procClass:Lgnu/bytecode/ClassType;
    if-nez v2, :cond_4

    .line 50
    invoke-virtual {v1, v3}, Lgnu/bytecode/CodeAttr;->emitNew(Lgnu/bytecode/ClassType;)V

    .line 51
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->emitDup(I)V

    .line 52
    .end local v2           #oldproc:Lgnu/expr/ModuleMethod;
    const-string v2, "<init>"

    .line 59
    .local v2, initName:Ljava/lang/String;
    :goto_2
    const/4 v5, 0x4

    invoke-virtual {v3, v2, v5}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    .line 60
    .local v2, initModuleMethod:Lgnu/bytecode/Method;
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getNeedsClosureEnv()Z

    move-result v3

    .end local v3           #procClass:Lgnu/bytecode/ClassType;
    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getOwningLambda()Lgnu/expr/LambdaExp;

    move-result-object v3

    .line 62
    .local v3, owning:Lgnu/expr/LambdaExp;
    :goto_3
    instance-of v5, v3, Lgnu/expr/ClassExp;

    if-eqz v5, :cond_6

    iget-object v5, v3, Lgnu/expr/LambdaExp;->staticLinkField:Lgnu/bytecode/Field;

    if-eqz v5, :cond_6

    .line 63
    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->getCurrentScope()Lgnu/bytecode/Scope;

    move-result-object v3

    .end local v3           #owning:Lgnu/expr/LambdaExp;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lgnu/bytecode/Scope;->getVariable(I)Lgnu/bytecode/Variable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 93
    :goto_4
    invoke-virtual {p0, p1}, Lgnu/expr/LambdaExp;->getSelectorValue(Lgnu/expr/Compilation;)I

    move-result v3

    invoke-virtual {v1, v3}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 94
    sget-object v3, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {p1, v4, v3}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    .line 97
    iget v3, p0, Lgnu/expr/LambdaExp;->min_args:I

    iget-object v4, p0, Lgnu/expr/LambdaExp;->keywords:[Lgnu/expr/Keyword;

    .end local v4           #pname:Ljava/lang/Object;
    if-nez v4, :cond_b

    iget v4, p0, Lgnu/expr/LambdaExp;->max_args:I

    :goto_5
    shl-int/lit8 v4, v4, 0xc

    or-int/2addr v3, v4

    invoke-virtual {v1, v3}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 99
    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    .line 101
    iget-object v2, p0, Lgnu/expr/LambdaExp;->properties:[Ljava/lang/Object;

    .end local v2           #initModuleMethod:Lgnu/bytecode/Method;
    if-eqz v2, :cond_d

    .line 103
    iget-object v2, p0, Lgnu/expr/LambdaExp;->properties:[Ljava/lang/Object;

    array-length v4, v2

    .line 104
    .local v4, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_6
    if-ge v2, v4, :cond_d

    .line 106
    iget-object v3, p0, Lgnu/expr/LambdaExp;->properties:[Ljava/lang/Object;

    aget-object v3, v3, v2

    .line 108
    .local v3, key:Ljava/lang/Object;
    if-eqz v3, :cond_1

    sget-object v5, Lgnu/mapping/PropertySet;->nameKey:Lgnu/mapping/Symbol;

    if-eq v3, v5, :cond_1

    .line 110
    iget-object v5, p0, Lgnu/expr/LambdaExp;->properties:[Ljava/lang/Object;

    add-int/lit8 v6, v2, 0x1

    aget-object v5, v5, v6

    .line 111
    .local v5, val:Ljava/lang/Object;
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Lgnu/bytecode/CodeAttr;->emitDup(I)V

    .line 112
    invoke-virtual {p1, v3}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;)V

    .line 113
    sget-object v3, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    .line 114
    .local v3, target:Lgnu/expr/Target;
    instance-of v6, v5, Lgnu/expr/Expression;

    if-eqz v6, :cond_c

    .line 115
    check-cast v5, Lgnu/expr/Expression;

    .end local v5           #val:Ljava/lang/Object;
    invoke-virtual {v5, p1, v3}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 118
    :goto_7
    const-string v3, "gnu.mapping.PropertySet"

    .end local v3           #target:Lgnu/expr/Target;
    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    const-string v5, "setProperty"

    const/4 v6, 0x2

    invoke-virtual {v3, v5, v6}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v3

    .line 120
    .local v3, m:Lgnu/bytecode/Method;
    invoke-virtual {v1, v3}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 104
    .end local v3           #m:Lgnu/bytecode/Method;
    :cond_1
    add-int/lit8 v2, v2, 0x2

    goto :goto_6

    .line 31
    .end local v2           #i:I
    .end local v4           #len:I
    .local v1, pdecl:Lgnu/expr/Declaration;
    :cond_2
    invoke-virtual {v1}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    goto/16 :goto_0

    .line 38
    .local v1, env:Lgnu/mapping/Environment;
    .local v2, oldproc:Lgnu/expr/ModuleMethod;
    .local v4, pname:Ljava/lang/Object;
    :cond_3
    const-string v3, ""

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lgnu/mapping/Symbol;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v3

    move-object v5, v3

    goto/16 :goto_1

    .line 56
    .local v1, code:Lgnu/bytecode/CodeAttr;
    .local v3, procClass:Lgnu/bytecode/ClassType;
    :cond_4
    invoke-static {v3}, Lgnu/expr/Target;->pushValue(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v5

    invoke-virtual {p1, v2, v5}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    .line 57
    const-string v2, "init"

    .local v2, initName:Ljava/lang/String;
    goto/16 :goto_2

    .line 60
    .end local v3           #procClass:Lgnu/bytecode/ClassType;
    .local v2, initModuleMethod:Lgnu/bytecode/Method;
    :cond_5
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v3

    goto/16 :goto_3

    .line 64
    .local v3, owning:Lgnu/expr/LambdaExp;
    :cond_6
    instance-of v3, v3, Lgnu/expr/ModuleExp;

    .end local v3           #owning:Lgnu/expr/LambdaExp;
    if-eqz v3, :cond_7

    iget-object v3, p1, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    iget-object v5, p1, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    if-ne v3, v5, :cond_8

    iget-object v3, p1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    invoke-virtual {v3}, Lgnu/bytecode/Method;->getStaticFlag()Z

    move-result v3

    if-nez v3, :cond_8

    .line 67
    :cond_7
    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    goto/16 :goto_4

    .line 70
    :cond_8
    iget-object v3, p1, Lgnu/expr/Compilation;->moduleInstanceVar:Lgnu/bytecode/Variable;

    if-nez v3, :cond_9

    .line 72
    iget-object v3, v1, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    iget-object v3, v3, Lgnu/bytecode/LocalVarsAttr;->current_scope:Lgnu/bytecode/Scope;

    iget-object v5, p1, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    const-string v6, "$instance"

    invoke-virtual {v3, v1, v5, v6}, Lgnu/bytecode/Scope;->addVariable(Lgnu/bytecode/CodeAttr;Lgnu/bytecode/Type;Ljava/lang/String;)Lgnu/bytecode/Variable;

    move-result-object v3

    iput-object v3, p1, Lgnu/expr/Compilation;->moduleInstanceVar:Lgnu/bytecode/Variable;

    .line 76
    iget-object v3, p1, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    iget-object v5, p1, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    if-eq v3, v5, :cond_a

    invoke-virtual {p1}, Lgnu/expr/Compilation;->isStatic()Z

    move-result v3

    if-nez v3, :cond_a

    .line 78
    iget-object v3, p1, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v1, v3}, Lgnu/bytecode/CodeAttr;->emitNew(Lgnu/bytecode/ClassType;)V

    .line 79
    iget-object v3, p1, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v1, v3}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 80
    iget-object v3, p1, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    iget-object v3, v3, Lgnu/bytecode/ClassType;->constructor:Lgnu/bytecode/Method;

    invoke-virtual {v1, v3}, Lgnu/bytecode/CodeAttr;->emitInvokeSpecial(Lgnu/bytecode/Method;)V

    .line 81
    iget-object v3, p1, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    const-string v5, "$main"

    iget-object v6, p1, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v6, v7}, Lgnu/bytecode/ClassType;->addField(Ljava/lang/String;Lgnu/bytecode/Type;I)Lgnu/bytecode/Field;

    move-result-object v3

    iput-object v3, p1, Lgnu/expr/Compilation;->moduleInstanceMainField:Lgnu/bytecode/Field;

    .line 83
    iget-object v3, p1, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v1, v3}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 84
    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 85
    iget-object v3, p1, Lgnu/expr/Compilation;->moduleInstanceMainField:Lgnu/bytecode/Field;

    invoke-virtual {v1, v3}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    .line 89
    :goto_8
    iget-object v3, p1, Lgnu/expr/Compilation;->moduleInstanceVar:Lgnu/bytecode/Variable;

    invoke-virtual {v1, v3}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 91
    :cond_9
    iget-object v3, p1, Lgnu/expr/Compilation;->moduleInstanceVar:Lgnu/bytecode/Variable;

    invoke-virtual {v1, v3}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    goto/16 :goto_4

    .line 88
    :cond_a
    iget-object v3, p1, Lgnu/expr/Compilation;->moduleInstanceMainField:Lgnu/bytecode/Field;

    invoke-virtual {v1, v3}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    goto :goto_8

    .line 97
    .end local v4           #pname:Ljava/lang/Object;
    :cond_b
    const/4 v4, -0x1

    goto/16 :goto_5

    .line 117
    .local v2, i:I
    .local v3, target:Lgnu/expr/Target;
    .local v4, len:I
    .restart local v5       #val:Ljava/lang/Object;
    :cond_c
    invoke-virtual {p1, v5, v3}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    goto/16 :goto_7

    .line 124
    .end local v2           #i:I
    .end local v3           #target:Lgnu/expr/Target;
    .end local v4           #len:I
    .end local v5           #val:Ljava/lang/Object;
    :cond_d
    return-void
.end method


# virtual methods
.method public emit(Lgnu/expr/Compilation;)V
    .locals 2
    .parameter "comp"

    .prologue
    .line 128
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 129
    .local v0, code:Lgnu/bytecode/CodeAttr;
    iget-object v1, p0, Lgnu/expr/ProcInitializer;->field:Lgnu/bytecode/Field;

    invoke-virtual {v1}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result v1

    if-nez v1, :cond_0

    .line 130
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 132
    :cond_0
    iget-object v1, p0, Lgnu/expr/ProcInitializer;->proc:Lgnu/expr/LambdaExp;

    invoke-static {v1, p1}, Lgnu/expr/ProcInitializer;->emitLoadModuleMethod(Lgnu/expr/LambdaExp;Lgnu/expr/Compilation;)V

    .line 134
    iget-object v1, p0, Lgnu/expr/ProcInitializer;->field:Lgnu/bytecode/Field;

    invoke-virtual {v1}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 135
    iget-object v1, p0, Lgnu/expr/ProcInitializer;->field:Lgnu/bytecode/Field;

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPutStatic(Lgnu/bytecode/Field;)V

    .line 138
    :goto_0
    return-void

    .line 137
    :cond_1
    iget-object v1, p0, Lgnu/expr/ProcInitializer;->field:Lgnu/bytecode/Field;

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    goto :goto_0
.end method

.method public reportError(Ljava/lang/String;Lgnu/expr/Compilation;)V
    .locals 7
    .parameter "message"
    .parameter "comp"

    .prologue
    .line 142
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getFileName()Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, saveFile:Ljava/lang/String;
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getLineNumber()I

    move-result v3

    .line 144
    .local v3, saveLine:I
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getColumnNumber()I

    move-result v1

    .line 145
    .local v1, saveColumn:I
    iget-object v5, p0, Lgnu/expr/ProcInitializer;->proc:Lgnu/expr/LambdaExp;

    invoke-virtual {p2, v5}, Lgnu/expr/Compilation;->setLocation(Lgnu/text/SourceLocator;)V

    .line 146
    iget-object v5, p0, Lgnu/expr/ProcInitializer;->proc:Lgnu/expr/LambdaExp;

    invoke-virtual {v5}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, name:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 148
    .local v4, sbuf:Ljava/lang/StringBuffer;
    if-nez v0, :cond_0

    .line 149
    const-string v5, "unnamed procedure"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 155
    :goto_0
    const/16 v5, 0x65

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 156
    invoke-virtual {p2, v2, v3, v1}, Lgnu/expr/Compilation;->setLine(Ljava/lang/String;II)V

    .line 157
    return-void

    .line 152
    :cond_0
    const-string v5, "procedure "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
