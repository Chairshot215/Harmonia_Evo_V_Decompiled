.class public Lgnu/kawa/functions/CompileNamedPart;
.super Ljava/lang/Object;
.source "CompileNamedPart.java"


# static fields
.field static final typeHasNamedParts:Lgnu/bytecode/ClassType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 309
    const-string v0, "gnu.mapping.HasNamedParts"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/functions/CompileNamedPart;->typeHasNamedParts:Lgnu/bytecode/ClassType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static combineName(Lgnu/expr/Expression;Lgnu/expr/Expression;)Ljava/lang/String;
    .locals 5
    .parameter "part1"
    .parameter "part2"

    .prologue
    .line 228
    invoke-virtual {p1}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v2

    .local v2, name2:Ljava/lang/Object;
    instance-of v3, v2, Lgnu/mapping/SimpleSymbol;

    if-eqz v3, :cond_2

    instance-of v3, p0, Lgnu/expr/ReferenceExp;

    if-eqz v3, :cond_0

    move-object v0, p0

    check-cast v0, Lgnu/expr/ReferenceExp;

    move-object v3, v0

    invoke-virtual {v3}, Lgnu/expr/ReferenceExp;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .local v1, name1:Ljava/lang/String;
    if-nez v1, :cond_1

    .end local v1           #name1:Ljava/lang/String;
    :cond_0
    instance-of v3, p0, Lgnu/kawa/functions/GetNamedExp;

    if-eqz v3, :cond_2

    check-cast p0, Lgnu/kawa/functions/GetNamedExp;

    .end local p0
    iget-object v1, p0, Lgnu/kawa/functions/GetNamedExp;->combinedName:Ljava/lang/String;

    .restart local v1       #name1:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 233
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    .line 234
    .end local v1           #name1:Ljava/lang/String;
    :goto_0
    return-object v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static makeExp(Lgnu/bytecode/Type;Ljava/lang/String;)Lgnu/expr/Expression;
    .locals 2
    .parameter "type"
    .parameter "member"

    .prologue
    .line 244
    new-instance v0, Lgnu/expr/QuoteExp;

    invoke-direct {v0, p0}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    new-instance v1, Lgnu/expr/QuoteExp;

    invoke-direct {v1, p1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lgnu/kawa/functions/CompileNamedPart;->makeExp(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method public static makeExp(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 6
    .parameter "clas"
    .parameter "member"

    .prologue
    .line 185
    invoke-static {p0, p1}, Lgnu/kawa/functions/CompileNamedPart;->combineName(Lgnu/expr/Expression;Lgnu/expr/Expression;)Ljava/lang/String;

    move-result-object v2

    .line 186
    .local v2, combinedName:Ljava/lang/String;
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v3

    .line 187
    .local v3, env:Lgnu/mapping/Environment;
    if-eqz v2, :cond_1

    .line 189
    invoke-static {}, Lgnu/expr/Compilation;->getCurrent()Lgnu/expr/Compilation;

    move-result-object v1

    check-cast v1, Lkawa/lang/Translator;

    .line 190
    .local v1, tr:Lkawa/lang/Translator;
    sget-object v4, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    invoke-virtual {v4, v2}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v4

    .line 191
    .local v4, symbol:Lgnu/mapping/Symbol;
    iget-object v1, v1, Lkawa/lang/Translator;->lexical:Lgnu/expr/NameLookup;

    .end local v1           #tr:Lkawa/lang/Translator;
    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lgnu/expr/NameLookup;->lookup(Ljava/lang/Object;Z)Lgnu/expr/Declaration;

    move-result-object v1

    .line 192
    .local v1, decl:Lgnu/expr/Declaration;
    invoke-static {v1}, Lgnu/expr/Declaration;->isUnknown(Lgnu/expr/Declaration;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 193
    new-instance p0, Lgnu/expr/ReferenceExp;

    .end local p0
    invoke-direct {p0, v1}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    .line 221
    .end local v1           #decl:Lgnu/expr/Declaration;
    .end local v3           #env:Lgnu/mapping/Environment;
    .end local v4           #symbol:Lgnu/mapping/Symbol;
    :goto_0
    return-object p0

    .line 195
    .restart local v1       #decl:Lgnu/expr/Declaration;
    .restart local v3       #env:Lgnu/mapping/Environment;
    .restart local v4       #symbol:Lgnu/mapping/Symbol;
    .restart local p0
    :cond_0
    const/4 v1, 0x0

    .line 196
    .local v1, property:Ljava/lang/Object;
    if-eqz v4, :cond_1

    invoke-virtual {v3, v4, v1}, Lgnu/mapping/Environment;->isBound(Lgnu/mapping/Symbol;Ljava/lang/Object;)Z

    move-result v1

    .end local v1           #property:Ljava/lang/Object;
    if-eqz v1, :cond_1

    .line 197
    new-instance p0, Lgnu/expr/ReferenceExp;

    .end local p0
    invoke-direct {p0, v2}, Lgnu/expr/ReferenceExp;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    .line 199
    .end local v4           #symbol:Lgnu/mapping/Symbol;
    .restart local p0
    :cond_1
    instance-of v1, p0, Lgnu/expr/ReferenceExp;

    if-eqz v1, :cond_2

    move-object v0, p0

    check-cast v0, Lgnu/expr/ReferenceExp;

    move-object v1, v0

    .local v1, rexp:Lgnu/expr/ReferenceExp;
    invoke-virtual {v1}, Lgnu/expr/ReferenceExp;->isUnknown()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 202
    invoke-virtual {v1}, Lgnu/expr/ReferenceExp;->getSymbol()Ljava/lang/Object;

    move-result-object v4

    .line 203
    .local v4, rsym:Ljava/lang/Object;
    instance-of v5, v4, Lgnu/mapping/Symbol;

    if-eqz v5, :cond_3

    check-cast v4, Lgnu/mapping/Symbol;

    .line 205
    .local v4, sym:Lgnu/mapping/Symbol;
    :goto_1
    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lgnu/mapping/Environment;->get(Lgnu/mapping/EnvironmentKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #env:Lgnu/mapping/Environment;
    if-nez v3, :cond_2

    .line 207
    invoke-virtual {v1}, Lgnu/expr/ReferenceExp;->getName()Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, name:Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Lgnu/bytecode/ClassType;->getContextClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 211
    .local v1, cl:Ljava/lang/Class;
    invoke-static {v1}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v1

    .end local v1           #cl:Ljava/lang/Class;
    invoke-static {v1}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 218
    .end local v4           #sym:Lgnu/mapping/Symbol;
    :cond_2
    :goto_2
    const/4 v1, 0x2

    new-array v1, v1, [Lgnu/expr/Expression;

    const/4 v3, 0x0

    aput-object p0, v1, v3

    const/4 p0, 0x1

    aput-object p1, v1, p0

    .line 219
    .end local p0
    .local v1, args:[Lgnu/expr/Expression;
    new-instance p0, Lgnu/kawa/functions/GetNamedExp;

    invoke-direct {p0, v1}, Lgnu/kawa/functions/GetNamedExp;-><init>([Lgnu/expr/Expression;)V

    .line 220
    .local p0, exp:Lgnu/kawa/functions/GetNamedExp;
    iput-object v2, p0, Lgnu/kawa/functions/GetNamedExp;->combinedName:Ljava/lang/String;

    goto :goto_0

    .line 203
    .local v1, rexp:Lgnu/expr/ReferenceExp;
    .restart local v3       #env:Lgnu/mapping/Environment;
    .local v4, rsym:Ljava/lang/Object;
    .local p0, clas:Lgnu/expr/Expression;
    :cond_3
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .end local v4           #rsym:Ljava/lang/Object;
    invoke-virtual {v3, v4}, Lgnu/mapping/Environment;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v4

    goto :goto_1

    .line 213
    .end local v1           #rexp:Lgnu/expr/ReferenceExp;
    .end local v3           #env:Lgnu/mapping/Environment;
    .local v4, sym:Lgnu/mapping/Symbol;
    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method public static makeExp(Lgnu/expr/Expression;Ljava/lang/String;)Lgnu/expr/Expression;
    .locals 1
    .parameter "clas"
    .parameter "member"

    .prologue
    .line 239
    new-instance v0, Lgnu/expr/QuoteExp;

    invoke-direct {v0, p1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-static {p0, v0}, Lgnu/kawa/functions/CompileNamedPart;->makeExp(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method public static makeGetNamedInstancePartExp(Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 6
    .parameter "member"

    .prologue
    .line 315
    instance-of v3, p0, Lgnu/expr/QuoteExp;

    if-eqz v3, :cond_0

    .line 317
    move-object v0, p0

    check-cast v0, Lgnu/expr/QuoteExp;

    move-object v3, v0

    invoke-virtual {v3}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 318
    .local v2, val:Ljava/lang/Object;
    instance-of v3, v2, Lgnu/mapping/SimpleSymbol;

    if-eqz v3, :cond_0

    .line 319
    new-instance v3, Lgnu/kawa/functions/GetNamedInstancePart;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lgnu/kawa/functions/GetNamedInstancePart;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v3

    .line 324
    .end local v2           #val:Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 321
    :cond_0
    const/4 v3, 0x2

    new-array v1, v3, [Lgnu/expr/Expression;

    .line 322
    .local v1, args:[Lgnu/expr/Expression;
    const/4 v3, 0x0

    new-instance v4, Lgnu/expr/QuoteExp;

    const-string v5, "gnu.kawa.functions.GetNamedInstancePart"

    invoke-static {v5}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v5

    invoke-direct {v4, v5}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v4, v1, v3

    .line 323
    const/4 v3, 0x1

    aput-object p0, v1, v3

    .line 324
    new-instance v3, Lgnu/expr/ApplyExp;

    sget-object v4, Lgnu/kawa/reflect/Invoke;->make:Lgnu/kawa/reflect/Invoke;

    invoke-direct {v3, v4, v1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    goto :goto_0
.end method

.method public static validateGetNamedInstancePart(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 10
    .parameter "exp"
    .parameter "visitor"
    .parameter "required"
    .parameter "proc"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 330
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 331
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v1

    .line 334
    .local v1, args:[Lgnu/expr/Expression;
    move-object v0, p3

    check-cast v0, Lgnu/kawa/functions/GetNamedInstancePart;

    move-object v2, v0

    .line 335
    .local v2, gproc:Lgnu/kawa/functions/GetNamedInstancePart;
    iget-boolean v6, v2, Lgnu/kawa/functions/GetNamedInstancePart;->isField:Z

    if-eqz v6, :cond_0

    .line 337
    new-array v5, v9, [Lgnu/expr/Expression;

    aget-object v6, v1, v7

    aput-object v6, v5, v7

    new-instance v6, Lgnu/expr/QuoteExp;

    iget-object v7, v2, Lgnu/kawa/functions/GetNamedInstancePart;->pname:Ljava/lang/String;

    invoke-direct {v6, v7}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v6, v5, v8

    .line 338
    .local v5, xargs:[Lgnu/expr/Expression;
    sget-object v4, Lgnu/kawa/reflect/SlotGet;->field:Lgnu/kawa/reflect/SlotGet;

    .line 349
    .local v4, property:Lgnu/mapping/Procedure;
    :goto_0
    new-instance v6, Lgnu/expr/ApplyExp;

    invoke-direct {v6, v4, v5}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    invoke-virtual {p1, v6, p2}, Lgnu/expr/InlineCalls;->visitApplyOnly(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v6

    return-object v6

    .line 342
    .end local v4           #property:Lgnu/mapping/Procedure;
    .end local v5           #xargs:[Lgnu/expr/Expression;
    :cond_0
    array-length v3, v1

    .line 343
    .local v3, nargs:I
    add-int/lit8 v6, v3, 0x1

    new-array v5, v6, [Lgnu/expr/Expression;

    .line 344
    .restart local v5       #xargs:[Lgnu/expr/Expression;
    aget-object v6, v1, v7

    aput-object v6, v5, v7

    .line 345
    new-instance v6, Lgnu/expr/QuoteExp;

    iget-object v7, v2, Lgnu/kawa/functions/GetNamedInstancePart;->pname:Ljava/lang/String;

    invoke-direct {v6, v7}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v6, v5, v8

    .line 346
    sub-int v6, v3, v8

    invoke-static {v1, v8, v5, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 347
    sget-object v4, Lgnu/kawa/reflect/Invoke;->invoke:Lgnu/kawa/reflect/Invoke;

    .restart local v4       #property:Lgnu/mapping/Procedure;
    goto :goto_0
.end method

.method public static validateGetNamedPart(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 12
    .parameter "exp"
    .parameter "visitor"
    .parameter "required"
    .parameter "proc"

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 14
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v1

    .line 15
    .local v1, args:[Lgnu/expr/Expression;
    array-length p3, v1

    .end local p3
    const/4 v2, 0x2

    if-ne p3, v2, :cond_0

    const/4 p3, 0x1

    aget-object p3, v1, p3

    instance-of p3, p3, Lgnu/expr/QuoteExp;

    if-eqz p3, :cond_0

    instance-of p3, p0, Lgnu/kawa/functions/GetNamedExp;

    if-nez p3, :cond_1

    :cond_0
    move-object p1, p0

    move-object p0, v1

    .line 142
    .end local v1           #args:[Lgnu/expr/Expression;
    .end local p1
    .end local p2
    .local p0, args:[Lgnu/expr/Expression;
    :goto_0
    return-object p1

    .line 18
    .restart local v1       #args:[Lgnu/expr/Expression;
    .local p0, exp:Lgnu/expr/ApplyExp;
    .restart local p1
    .restart local p2
    :cond_1
    const/4 p3, 0x0

    aget-object p3, v1, p3

    .line 19
    .local p3, context:Lgnu/expr/Expression;
    const/4 v2, 0x0

    .line 20
    .local v2, decl:Lgnu/expr/Declaration;
    instance-of v3, p3, Lgnu/expr/ReferenceExp;

    if-eqz v3, :cond_17

    .line 22
    move-object v0, p3

    check-cast v0, Lgnu/expr/ReferenceExp;

    move-object v2, v0

    .line 23
    .local v2, rexp:Lgnu/expr/ReferenceExp;
    const-string v3, "*"

    invoke-virtual {v2}, Lgnu/expr/ReferenceExp;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 24
    const/4 p0, 0x1

    aget-object p0, v1, p0

    .end local p0           #exp:Lgnu/expr/ApplyExp;
    invoke-static {p0}, Lgnu/kawa/functions/CompileNamedPart;->makeGetNamedInstancePartExp(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object p0

    move-object p1, p0

    move-object p0, v1

    .end local v1           #args:[Lgnu/expr/Expression;
    .local p0, args:[Lgnu/expr/Expression;
    goto :goto_0

    .line 25
    .restart local v1       #args:[Lgnu/expr/Expression;
    .local p0, exp:Lgnu/expr/ApplyExp;
    :cond_2
    invoke-virtual {v2}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v2

    .local v2, decl:Lgnu/expr/Declaration;
    move-object v3, v2

    .line 28
    .end local v2           #decl:Lgnu/expr/Declaration;
    .local v3, decl:Lgnu/expr/Declaration;
    :goto_1
    const/4 v2, 0x1

    aget-object v2, v1, v2

    check-cast v2, Lgnu/expr/QuoteExp;

    invoke-virtual {v2}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 29
    .local v5, mname:Ljava/lang/String;
    invoke-virtual {p3}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v8

    .line 30
    .local v8, type:Lgnu/bytecode/Type;
    sget-object v2, Lgnu/expr/QuoteExp;->nullExp:Lgnu/expr/QuoteExp;

    if-ne p3, v2, :cond_3

    const/4 v2, 0x1

    .line 31
    .local v2, isInstanceOperator:Z
    :goto_2
    invoke-virtual {p1}, Lgnu/expr/InlineCalls;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v2

    .line 32
    .local v2, comp:Lgnu/expr/Compilation;
    invoke-virtual {v2}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v4

    .line 33
    .local v4, language:Lgnu/expr/Language;
    const/4 v6, 0x0

    invoke-virtual {v4, p3, v6}, Lgnu/expr/Language;->getTypeFor(Lgnu/expr/Expression;Z)Lgnu/bytecode/Type;

    move-result-object v7

    .line 34
    .local v7, typeval:Lgnu/bytecode/Type;
    if-nez v2, :cond_4

    const/4 p3, 0x0

    .line 37
    .local p3, caller:Lgnu/bytecode/ClassType;
    :goto_3
    move-object v0, p0

    check-cast v0, Lgnu/kawa/functions/GetNamedExp;

    move-object v6, v0

    .line 39
    .local v6, nexp:Lgnu/kawa/functions/GetNamedExp;
    if-eqz v7, :cond_9

    .line 41
    const-string v9, "<>"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 42
    new-instance p0, Lgnu/expr/QuoteExp;

    .end local p0           #exp:Lgnu/expr/ApplyExp;
    invoke-direct {p0, v7}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    move-object p0, v1

    .end local v1           #args:[Lgnu/expr/Expression;
    .local p0, args:[Lgnu/expr/Expression;
    goto :goto_0

    .line 30
    .end local v2           #comp:Lgnu/expr/Compilation;
    .end local v4           #language:Lgnu/expr/Language;
    .end local v6           #nexp:Lgnu/kawa/functions/GetNamedExp;
    .end local v7           #typeval:Lgnu/bytecode/Type;
    .restart local v1       #args:[Lgnu/expr/Expression;
    .local p0, exp:Lgnu/expr/ApplyExp;
    .local p3, context:Lgnu/expr/Expression;
    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    .line 34
    .restart local v2       #comp:Lgnu/expr/Compilation;
    .restart local v4       #language:Lgnu/expr/Language;
    .restart local v7       #typeval:Lgnu/bytecode/Type;
    :cond_4
    iget-object p3, v2, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    .end local p3           #context:Lgnu/expr/Expression;
    if-eqz p3, :cond_5

    iget-object p3, v2, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    goto :goto_3

    :cond_5
    iget-object p3, v2, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    goto :goto_3

    .line 44
    .restart local v6       #nexp:Lgnu/kawa/functions/GetNamedExp;
    .local p3, caller:Lgnu/bytecode/ClassType;
    :cond_6
    instance-of v9, v7, Lgnu/bytecode/ObjectType;

    if-eqz v9, :cond_9

    .line 46
    const-string v9, "new"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 47
    const/16 p0, 0x4e

    invoke-virtual {v6, p0}, Lgnu/kawa/functions/GetNamedExp;->setProcedureKind(C)Lgnu/kawa/functions/GetNamedExp;

    .end local p0           #exp:Lgnu/expr/ApplyExp;
    move-result-object p0

    move-object p1, p0

    move-object p0, v1

    .end local v1           #args:[Lgnu/expr/Expression;
    .local p0, args:[Lgnu/expr/Expression;
    goto/16 :goto_0

    .line 48
    .restart local v1       #args:[Lgnu/expr/Expression;
    .local p0, exp:Lgnu/expr/ApplyExp;
    :cond_7
    const-string v9, "instance?"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 49
    const/16 p0, 0x49

    invoke-virtual {v6, p0}, Lgnu/kawa/functions/GetNamedExp;->setProcedureKind(C)Lgnu/kawa/functions/GetNamedExp;

    .end local p0           #exp:Lgnu/expr/ApplyExp;
    move-result-object p0

    move-object p1, p0

    move-object p0, v1

    .end local v1           #args:[Lgnu/expr/Expression;
    .local p0, args:[Lgnu/expr/Expression;
    goto/16 :goto_0

    .line 50
    .restart local v1       #args:[Lgnu/expr/Expression;
    .local p0, exp:Lgnu/expr/ApplyExp;
    :cond_8
    const-string v9, "@"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 51
    const/16 p0, 0x43

    invoke-virtual {v6, p0}, Lgnu/kawa/functions/GetNamedExp;->setProcedureKind(C)Lgnu/kawa/functions/GetNamedExp;

    .end local p0           #exp:Lgnu/expr/ApplyExp;
    move-result-object p0

    move-object p1, p0

    move-object p0, v1

    .end local v1           #args:[Lgnu/expr/Expression;
    .local p0, args:[Lgnu/expr/Expression;
    goto/16 :goto_0

    .line 54
    .restart local v1       #args:[Lgnu/expr/Expression;
    .local p0, exp:Lgnu/expr/ApplyExp;
    :cond_9
    instance-of v9, v7, Lgnu/bytecode/ObjectType;

    if-eqz v9, :cond_d

    .line 56
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    .end local v3           #decl:Lgnu/expr/Declaration;
    const/4 v8, 0x1

    if-le v3, v8, :cond_a

    .end local v8           #type:Lgnu/bytecode/Type;
    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v8, 0x2e

    if-ne v3, v8, :cond_a

    .line 61
    new-instance p0, Lgnu/expr/QuoteExp;

    .end local p0           #exp:Lgnu/expr/ApplyExp;
    new-instance p1, Lgnu/kawa/functions/NamedPart;

    .end local p1
    const/16 p2, 0x44

    invoke-direct {p1, v7, v5, p2}, Lgnu/kawa/functions/NamedPart;-><init>(Ljava/lang/Object;Ljava/lang/Object;C)V

    .end local p2
    invoke-direct {p0, p1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    move-object p0, v1

    .end local v1           #args:[Lgnu/expr/Expression;
    .local p0, args:[Lgnu/expr/Expression;
    goto/16 :goto_0

    .line 63
    .restart local v1       #args:[Lgnu/expr/Expression;
    .local p0, exp:Lgnu/expr/ApplyExp;
    .restart local p1
    .restart local p2
    :cond_a
    invoke-static {v7, v2}, Lgnu/kawa/reflect/CompileReflect;->checkKnownClass(Lgnu/bytecode/Type;Lgnu/expr/Compilation;)I

    move-result v2

    .end local v2           #comp:Lgnu/expr/Compilation;
    if-gez v2, :cond_b

    move-object p1, p0

    move-object p0, v1

    .line 64
    .end local v1           #args:[Lgnu/expr/Expression;
    .local p0, args:[Lgnu/expr/Expression;
    goto/16 :goto_0

    .line 65
    .restart local v1       #args:[Lgnu/expr/Expression;
    .local p0, exp:Lgnu/expr/ApplyExp;
    :cond_b
    check-cast v7, Lgnu/bytecode/ObjectType;

    .end local v7           #typeval:Lgnu/bytecode/Type;
    invoke-static {v5}, Lgnu/expr/Compilation;->mangleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v7, v2, v3, p3, v4}, Lgnu/kawa/reflect/ClassMethods;->getMethods(Lgnu/bytecode/ObjectType;Ljava/lang/String;CLgnu/bytecode/ClassType;Lgnu/expr/Language;)[Lgnu/expr/PrimProcedure;

    move-result-object p3

    .line 69
    .local p3, methods:[Lgnu/expr/PrimProcedure;
    if-eqz p3, :cond_c

    array-length v2, p3

    if-lez v2, :cond_c

    .line 71
    iput-object p3, v6, Lgnu/kawa/functions/GetNamedExp;->methods:[Lgnu/expr/PrimProcedure;

    .line 72
    const/16 p0, 0x53

    invoke-virtual {v6, p0}, Lgnu/kawa/functions/GetNamedExp;->setProcedureKind(C)Lgnu/kawa/functions/GetNamedExp;

    .end local p0           #exp:Lgnu/expr/ApplyExp;
    move-result-object p0

    move-object p1, p0

    move-object p0, v1

    .end local v1           #args:[Lgnu/expr/Expression;
    .local p0, args:[Lgnu/expr/Expression;
    goto/16 :goto_0

    .line 74
    .restart local v1       #args:[Lgnu/expr/Expression;
    .local p0, exp:Lgnu/expr/ApplyExp;
    :cond_c
    new-instance p3, Lgnu/expr/ApplyExp;

    .end local p3           #methods:[Lgnu/expr/PrimProcedure;
    sget-object v2, Lgnu/kawa/reflect/SlotGet;->staticField:Lgnu/kawa/reflect/SlotGet;

    invoke-direct {p3, v2, v1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .line 75
    .local p3, aexp:Lgnu/expr/ApplyExp;
    invoke-virtual {p3, p0}, Lgnu/expr/ApplyExp;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    .line 76
    invoke-virtual {p1, p3, p2}, Lgnu/expr/InlineCalls;->visitApplyOnly(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object p0

    .end local p0           #exp:Lgnu/expr/ApplyExp;
    move-object p1, p0

    move-object p0, v1

    .end local v1           #args:[Lgnu/expr/Expression;
    .local p0, args:[Lgnu/expr/Expression;
    goto/16 :goto_0

    .line 79
    .restart local v1       #args:[Lgnu/expr/Expression;
    .restart local v2       #comp:Lgnu/expr/Compilation;
    .restart local v3       #decl:Lgnu/expr/Declaration;
    .restart local v7       #typeval:Lgnu/bytecode/Type;
    .restart local v8       #type:Lgnu/bytecode/Type;
    .local p0, exp:Lgnu/expr/ApplyExp;
    .local p3, caller:Lgnu/bytecode/ClassType;
    :cond_d
    if-eqz v7, :cond_e

    .line 91
    :cond_e
    sget-object v7, Lgnu/expr/Compilation;->typeClassType:Lgnu/bytecode/ClassType;

    .end local v7           #typeval:Lgnu/bytecode/Type;
    invoke-virtual {v8, v7}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v7

    if-nez v7, :cond_f

    sget-object v7, Lgnu/bytecode/Type;->javalangClassType:Lgnu/bytecode/ClassType;

    invoke-virtual {v8, v7}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v7

    if-eqz v7, :cond_10

    :cond_f
    move-object p1, p0

    move-object p0, v1

    .line 96
    .end local v1           #args:[Lgnu/expr/Expression;
    .local p0, args:[Lgnu/expr/Expression;
    goto/16 :goto_0

    .line 98
    .restart local v1       #args:[Lgnu/expr/Expression;
    .local p0, exp:Lgnu/expr/ApplyExp;
    :cond_10
    instance-of v7, v8, Lgnu/bytecode/ObjectType;

    if-eqz v7, :cond_15

    .line 100
    move-object v0, v8

    check-cast v0, Lgnu/bytecode/ObjectType;

    move-object v7, v0

    .line 101
    .local v7, otype:Lgnu/bytecode/ObjectType;
    invoke-static {v5}, Lgnu/expr/Compilation;->mangleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x56

    invoke-static {v7, v9, v10, p3, v4}, Lgnu/kawa/reflect/ClassMethods;->getMethods(Lgnu/bytecode/ObjectType;Ljava/lang/String;CLgnu/bytecode/ClassType;Lgnu/expr/Language;)[Lgnu/expr/PrimProcedure;

    move-result-object v4

    .line 104
    .local v4, methods:[Lgnu/expr/PrimProcedure;
    if-eqz v4, :cond_11

    array-length v9, v4

    if-lez v9, :cond_11

    .line 106
    iput-object v4, v6, Lgnu/kawa/functions/GetNamedExp;->methods:[Lgnu/expr/PrimProcedure;

    .line 107
    const/16 p0, 0x4d

    invoke-virtual {v6, p0}, Lgnu/kawa/functions/GetNamedExp;->setProcedureKind(C)Lgnu/kawa/functions/GetNamedExp;

    .end local p0           #exp:Lgnu/expr/ApplyExp;
    move-result-object p0

    move-object p1, p0

    move-object p0, v1

    .end local v1           #args:[Lgnu/expr/Expression;
    .local p0, args:[Lgnu/expr/Expression;
    goto/16 :goto_0

    .line 110
    .restart local v1       #args:[Lgnu/expr/Expression;
    .local p0, exp:Lgnu/expr/ApplyExp;
    :cond_11
    sget-object v4, Lgnu/kawa/functions/CompileNamedPart;->typeHasNamedParts:Lgnu/bytecode/ClassType;

    .end local v4           #methods:[Lgnu/expr/PrimProcedure;
    invoke-virtual {v8, v4}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 113
    if-eqz v3, :cond_12

    invoke-static {v3}, Lgnu/expr/Declaration;->followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;

    move-result-object p1

    .end local p1
    invoke-virtual {p1}, Lgnu/expr/Declaration;->getConstantValue()Ljava/lang/Object;

    move-result-object p1

    .local p1, val:Ljava/lang/Object;
    if-eqz p1, :cond_12

    .line 116
    check-cast p1, Lgnu/mapping/HasNamedParts;

    .line 117
    .local p1, value:Lgnu/mapping/HasNamedParts;
    invoke-interface {p1, v5}, Lgnu/mapping/HasNamedParts;->isConstant(Ljava/lang/String;)Z

    move-result p2

    .end local p2
    if-eqz p2, :cond_12

    .line 119
    invoke-interface {p1, v5}, Lgnu/mapping/HasNamedParts;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 120
    .local p0, val:Ljava/lang/Object;
    invoke-static {p0}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object p0

    .end local p0           #val:Ljava/lang/Object;
    move-object p1, p0

    move-object p0, v1

    .end local v1           #args:[Lgnu/expr/Expression;
    .local p0, args:[Lgnu/expr/Expression;
    goto/16 :goto_0

    .line 123
    .end local p1           #value:Lgnu/mapping/HasNamedParts;
    .restart local v1       #args:[Lgnu/expr/Expression;
    .local p0, exp:Lgnu/expr/ApplyExp;
    :cond_12
    const/4 p1, 0x2

    new-array p1, p1, [Lgnu/expr/Expression;

    const/4 p2, 0x0

    const/4 p3, 0x0

    aget-object p3, v1, p3

    .end local p3           #caller:Lgnu/bytecode/ClassType;
    aput-object p3, p1, p2

    const/4 p2, 0x1

    invoke-static {v5}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object p3

    aput-object p3, p1, p2

    .line 124
    .end local v1           #args:[Lgnu/expr/Expression;
    .local p1, args:[Lgnu/expr/Expression;
    new-instance p2, Lgnu/expr/ApplyExp;

    sget-object p3, Lgnu/kawa/functions/CompileNamedPart;->typeHasNamedParts:Lgnu/bytecode/ClassType;

    const-string v1, "get"

    const/4 v2, 0x1

    invoke-virtual {p3, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    .end local v2           #comp:Lgnu/expr/Compilation;
    move-result-object p3

    invoke-direct {p2, p3, p1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    invoke-virtual {p2, p0}, Lgnu/expr/ApplyExp;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object p0

    .end local p0           #exp:Lgnu/expr/ApplyExp;
    move-object v11, p1

    .end local p1           #args:[Lgnu/expr/Expression;
    .local v11, args:[Lgnu/expr/Expression;
    move-object p1, p0

    move-object p0, v11

    .end local v11           #args:[Lgnu/expr/Expression;
    .local p0, args:[Lgnu/expr/Expression;
    goto/16 :goto_0

    .line 128
    .restart local v1       #args:[Lgnu/expr/Expression;
    .restart local v2       #comp:Lgnu/expr/Compilation;
    .local p0, exp:Lgnu/expr/ApplyExp;
    .local p1, visitor:Lgnu/expr/InlineCalls;
    .restart local p2
    .restart local p3       #caller:Lgnu/bytecode/ClassType;
    :cond_13
    invoke-static {v7, v5, p3}, Lgnu/kawa/reflect/SlotGet;->lookupMember(Lgnu/bytecode/ObjectType;Ljava/lang/String;Lgnu/bytecode/ClassType;)Lgnu/bytecode/Member;

    move-result-object p3

    .line 129
    .local p3, part:Lgnu/bytecode/Member;
    if-nez p3, :cond_14

    const-string p3, "length"

    .end local p3           #part:Lgnu/bytecode/Member;
    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_15

    instance-of p3, v8, Lgnu/bytecode/ArrayType;

    if-eqz p3, :cond_15

    .line 134
    :cond_14
    new-instance p3, Lgnu/expr/ApplyExp;

    sget-object v2, Lgnu/kawa/reflect/SlotGet;->field:Lgnu/kawa/reflect/SlotGet;

    .end local v2           #comp:Lgnu/expr/Compilation;
    invoke-direct {p3, v2, v1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .line 135
    .local p3, aexp:Lgnu/expr/ApplyExp;
    invoke-virtual {p3, p0}, Lgnu/expr/ApplyExp;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    .line 136
    invoke-virtual {p1, p3, p2}, Lgnu/expr/InlineCalls;->visitApplyOnly(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object p0

    .end local p0           #exp:Lgnu/expr/ApplyExp;
    move-object p1, p0

    move-object p0, v1

    .end local v1           #args:[Lgnu/expr/Expression;
    .local p0, args:[Lgnu/expr/Expression;
    goto/16 :goto_0

    .line 140
    .end local v7           #otype:Lgnu/bytecode/ObjectType;
    .end local p3           #aexp:Lgnu/expr/ApplyExp;
    .restart local v1       #args:[Lgnu/expr/Expression;
    .restart local v2       #comp:Lgnu/expr/Compilation;
    .local p0, exp:Lgnu/expr/ApplyExp;
    :cond_15
    invoke-virtual {v2}, Lgnu/expr/Compilation;->warnUnknownMember()Z

    move-result p1

    .end local p1           #visitor:Lgnu/expr/InlineCalls;
    if-eqz p1, :cond_16

    .line 141
    const/16 p1, 0x77

    new-instance p2, Ljava/lang/StringBuilder;

    .end local p2
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "no known slot \'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "\' in "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {v8}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    :cond_16
    move-object p1, p0

    move-object p0, v1

    .line 142
    .end local v1           #args:[Lgnu/expr/Expression;
    .local p0, args:[Lgnu/expr/Expression;
    goto/16 :goto_0

    .end local v3           #decl:Lgnu/expr/Declaration;
    .end local v5           #mname:Ljava/lang/String;
    .end local v6           #nexp:Lgnu/kawa/functions/GetNamedExp;
    .end local v8           #type:Lgnu/bytecode/Type;
    .restart local v1       #args:[Lgnu/expr/Expression;
    .local v2, decl:Lgnu/expr/Declaration;
    .local p0, exp:Lgnu/expr/ApplyExp;
    .restart local p1       #visitor:Lgnu/expr/InlineCalls;
    .restart local p2
    .local p3, context:Lgnu/expr/Expression;
    :cond_17
    move-object v3, v2

    .end local v2           #decl:Lgnu/expr/Declaration;
    .restart local v3       #decl:Lgnu/expr/Declaration;
    goto/16 :goto_1
.end method

.method public static validateNamedPart(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 11
    .parameter "exp"
    .parameter "visitor"
    .parameter "required"
    .parameter "proc"

    .prologue
    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 250
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 251
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v2

    .line 252
    .local v2, args:[Lgnu/expr/Expression;
    move-object v0, p3

    check-cast v0, Lgnu/kawa/functions/NamedPart;

    move-object v4, v0

    .line 253
    .local v4, namedPart:Lgnu/kawa/functions/NamedPart;
    iget-char v7, v4, Lgnu/kawa/functions/NamedPart;->kind:C

    packed-switch v7, :pswitch_data_0

    move-object v7, p0

    .line 275
    :goto_0
    return-object v7

    .line 256
    :pswitch_0
    iget-object v7, v4, Lgnu/kawa/functions/NamedPart;->member:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 257
    .local v3, fname:Ljava/lang/String;
    const/4 v7, 0x2

    new-array v6, v7, [Lgnu/expr/Expression;

    .line 258
    .local v6, xargs:[Lgnu/expr/Expression;
    invoke-static {v3}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v7

    aput-object v7, v6, v8

    .line 260
    array-length v7, v2

    if-lez v7, :cond_0

    .line 262
    aget-object v7, v2, v10

    new-instance v8, Lgnu/expr/QuoteExp;

    iget-object v9, v4, Lgnu/kawa/functions/NamedPart;->container:Ljava/lang/Object;

    invoke-direct {v8, v9}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-static {v7, v8}, Lgnu/expr/Compilation;->makeCoercion(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;

    move-result-object v7

    aput-object v7, v6, v10

    .line 264
    sget-object v5, Lgnu/kawa/reflect/SlotGet;->field:Lgnu/kawa/reflect/SlotGet;

    .line 271
    .local v5, slotProc:Lgnu/kawa/reflect/SlotGet;
    :goto_1
    new-instance v1, Lgnu/expr/ApplyExp;

    invoke-direct {v1, v5, v6}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .line 272
    .local v1, aexp:Lgnu/expr/ApplyExp;
    invoke-virtual {v1, p0}, Lgnu/expr/ApplyExp;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    .line 273
    invoke-virtual {p1, v1, p2}, Lgnu/expr/InlineCalls;->visitApplyOnly(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v7

    goto :goto_0

    .line 268
    .end local v1           #aexp:Lgnu/expr/ApplyExp;
    .end local v5           #slotProc:Lgnu/kawa/reflect/SlotGet;
    :cond_0
    iget-object v7, v4, Lgnu/kawa/functions/NamedPart;->container:Ljava/lang/Object;

    invoke-static {v7}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v7

    aput-object v7, v6, v10

    .line 269
    sget-object v5, Lgnu/kawa/reflect/SlotGet;->staticField:Lgnu/kawa/reflect/SlotGet;

    .restart local v5       #slotProc:Lgnu/kawa/reflect/SlotGet;
    goto :goto_1

    .line 253
    nop

    :pswitch_data_0
    .packed-switch 0x44
        :pswitch_0
    .end packed-switch
.end method

.method public static validateNamedPartSetter(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 9
    .parameter "exp"
    .parameter "visitor"
    .parameter "required"
    .parameter "proc"

    .prologue
    const/4 v8, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 281
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 282
    check-cast p3, Lgnu/kawa/functions/NamedPartSetter;

    .end local p3
    invoke-virtual {p3}, Lgnu/kawa/functions/NamedPartSetter;->getGetter()Lgnu/mapping/Procedure;

    move-result-object v1

    check-cast v1, Lgnu/kawa/functions/NamedPart;

    .line 283
    .local v1, get:Lgnu/kawa/functions/NamedPart;
    iget-char v4, v1, Lgnu/kawa/functions/NamedPart;->kind:C

    const/16 v5, 0x44

    if-ne v4, v5, :cond_2

    .line 285
    const/4 v4, 0x3

    new-array v3, v4, [Lgnu/expr/Expression;

    .line 286
    .local v3, xargs:[Lgnu/expr/Expression;
    iget-object v4, v1, Lgnu/kawa/functions/NamedPart;->member:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v4

    aput-object v4, v3, v6

    .line 287
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v4

    aget-object v4, v4, v7

    aput-object v4, v3, v8

    .line 289
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgCount()I

    move-result v4

    if-ne v4, v6, :cond_0

    .line 291
    iget-object v4, v1, Lgnu/kawa/functions/NamedPart;->container:Ljava/lang/Object;

    invoke-static {v4}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v4

    aput-object v4, v3, v7

    .line 292
    sget-object v2, Lgnu/kawa/reflect/SlotSet;->set$Mnstatic$Mnfield$Ex:Lgnu/kawa/reflect/SlotSet;

    .line 302
    .local v2, slotProc:Lgnu/kawa/reflect/SlotSet;
    :goto_0
    new-instance v0, Lgnu/expr/ApplyExp;

    invoke-direct {v0, v2, v3}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .line 303
    .local v0, aexp:Lgnu/expr/ApplyExp;
    invoke-virtual {v0, p0}, Lgnu/expr/ApplyExp;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    .line 304
    invoke-virtual {p1, v0, p2}, Lgnu/expr/InlineCalls;->visitApplyOnly(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v4

    .line 306
    .end local v0           #aexp:Lgnu/expr/ApplyExp;
    .end local v2           #slotProc:Lgnu/kawa/reflect/SlotSet;
    .end local v3           #xargs:[Lgnu/expr/Expression;
    :goto_1
    return-object v4

    .line 294
    .restart local v3       #xargs:[Lgnu/expr/Expression;
    :cond_0
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgCount()I

    move-result v4

    if-ne v4, v8, :cond_1

    .line 296
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v4

    aget-object v4, v4, v7

    new-instance v5, Lgnu/expr/QuoteExp;

    iget-object v6, v1, Lgnu/kawa/functions/NamedPart;->container:Ljava/lang/Object;

    invoke-direct {v5, v6}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-static {v4, v5}, Lgnu/expr/Compilation;->makeCoercion(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;

    move-result-object v4

    aput-object v4, v3, v7

    .line 298
    sget-object v2, Lgnu/kawa/reflect/SlotSet;->set$Mnfield$Ex:Lgnu/kawa/reflect/SlotSet;

    .restart local v2       #slotProc:Lgnu/kawa/reflect/SlotSet;
    goto :goto_0

    .end local v2           #slotProc:Lgnu/kawa/reflect/SlotSet;
    :cond_1
    move-object v4, p0

    .line 301
    goto :goto_1

    .end local v3           #xargs:[Lgnu/expr/Expression;
    :cond_2
    move-object v4, p0

    .line 306
    goto :goto_1
.end method

.method public static validateSetNamedInstancePart(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 6
    .parameter "exp"
    .parameter "visitor"
    .parameter "required"
    .parameter "proc"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 355
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 356
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 357
    .local v0, args:[Lgnu/expr/Expression;
    check-cast p3, Lgnu/kawa/functions/SetNamedInstancePart;

    .end local p3
    iget-object v1, p3, Lgnu/kawa/functions/SetNamedInstancePart;->pname:Ljava/lang/String;

    .line 358
    .local v1, pname:Ljava/lang/String;
    const/4 v3, 0x3

    new-array v2, v3, [Lgnu/expr/Expression;

    aget-object v3, v0, v4

    aput-object v3, v2, v4

    new-instance v3, Lgnu/expr/QuoteExp;

    invoke-direct {v3, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v3, v2, v5

    const/4 v3, 0x2

    aget-object v4, v0, v5

    aput-object v4, v2, v3

    .line 360
    .local v2, xargs:[Lgnu/expr/Expression;
    new-instance v3, Lgnu/expr/ApplyExp;

    sget-object v4, Lgnu/kawa/reflect/SlotSet;->set$Mnfield$Ex:Lgnu/kawa/reflect/SlotSet;

    invoke-direct {v3, v4, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    invoke-virtual {p1, v3, p2}, Lgnu/expr/InlineCalls;->visitApplyOnly(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v3

    return-object v3
.end method

.method public static validateSetNamedPart(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 3
    .parameter "exp"
    .parameter "visitor"
    .parameter "required"
    .parameter "proc"

    .prologue
    .line 148
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 149
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object p2

    .line 150
    .local p2, args:[Lgnu/expr/Expression;
    array-length p3, p2

    .end local p3
    const/4 v0, 0x3

    if-ne p3, v0, :cond_0

    const/4 p3, 0x1

    aget-object p3, p2, p3

    instance-of p3, p3, Lgnu/expr/QuoteExp;

    if-nez p3, :cond_1

    .line 179
    .end local p1
    :cond_0
    :goto_0
    return-object p0

    .line 152
    .restart local p1
    :cond_1
    const/4 p3, 0x0

    aget-object p3, p2, p3

    .line 153
    .local p3, context:Lgnu/expr/Expression;
    const/4 v0, 0x1

    aget-object v0, p2, v0

    check-cast v0, Lgnu/expr/QuoteExp;

    invoke-virtual {v0}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, mname:Ljava/lang/String;
    invoke-virtual {p3}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v2

    .line 155
    .local v2, type:Lgnu/bytecode/Type;
    invoke-virtual {p1}, Lgnu/expr/InlineCalls;->getCompilation()Lgnu/expr/Compilation;

    move-result-object p1

    .line 156
    .local p1, comp:Lgnu/expr/Compilation;
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v0

    .line 157
    .local v0, language:Lgnu/expr/Language;
    invoke-virtual {v0, p3}, Lgnu/expr/Language;->getTypeFor(Lgnu/expr/Expression;)Lgnu/bytecode/Type;

    move-result-object v0

    .line 158
    .local v0, typeval:Lgnu/bytecode/Type;
    if-nez p1, :cond_4

    const/4 p1, 0x0

    .line 161
    .end local p3           #context:Lgnu/expr/Expression;
    .local p1, caller:Lgnu/bytecode/ClassType;
    :goto_1
    move-object p3, p0

    .line 162
    .local p3, original:Lgnu/expr/ApplyExp;
    instance-of v0, v0, Lgnu/bytecode/ClassType;

    .end local v0           #typeval:Lgnu/bytecode/Type;
    if-eqz v0, :cond_6

    .line 164
    new-instance p0, Lgnu/expr/ApplyExp;

    .end local p0
    sget-object p1, Lgnu/kawa/reflect/SlotSet;->set$Mnstatic$Mnfield$Ex:Lgnu/kawa/reflect/SlotSet;

    .end local p1           #caller:Lgnu/bytecode/ClassType;
    invoke-direct {p0, p1, p2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .line 176
    .end local v2           #type:Lgnu/bytecode/Type;
    .restart local p0
    :cond_2
    :goto_2
    if-eq p0, p3, :cond_3

    .line 177
    invoke-virtual {p0, p3}, Lgnu/expr/ApplyExp;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    .line 178
    :cond_3
    sget-object p1, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    goto :goto_0

    .line 158
    .restart local v0       #typeval:Lgnu/bytecode/Type;
    .restart local v2       #type:Lgnu/bytecode/Type;
    .local p1, comp:Lgnu/expr/Compilation;
    .local p3, context:Lgnu/expr/Expression;
    :cond_4
    iget-object p3, p1, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    .end local p3           #context:Lgnu/expr/Expression;
    if-eqz p3, :cond_5

    iget-object p1, p1, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    goto :goto_1

    :cond_5
    iget-object p1, p1, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    goto :goto_1

    .line 166
    .end local v0           #typeval:Lgnu/bytecode/Type;
    .local p1, caller:Lgnu/bytecode/ClassType;
    .local p3, original:Lgnu/expr/ApplyExp;
    :cond_6
    instance-of v0, v2, Lgnu/bytecode/ClassType;

    if-eqz v0, :cond_2

    .line 168
    check-cast v2, Lgnu/bytecode/ClassType;

    .end local v2           #type:Lgnu/bytecode/Type;
    invoke-static {v2, v1, p1}, Lgnu/kawa/reflect/SlotSet;->lookupMember(Lgnu/bytecode/ObjectType;Ljava/lang/String;Lgnu/bytecode/ClassType;)Lgnu/bytecode/Member;

    move-result-object p1

    .line 169
    .local p1, part:Lgnu/bytecode/Member;
    if-eqz p1, :cond_2

    .line 173
    new-instance p0, Lgnu/expr/ApplyExp;

    .end local p0
    sget-object p1, Lgnu/kawa/reflect/SlotSet;->set$Mnfield$Ex:Lgnu/kawa/reflect/SlotSet;

    .end local p1           #part:Lgnu/bytecode/Member;
    invoke-direct {p0, p1, p2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .restart local p0
    goto :goto_2
.end method
