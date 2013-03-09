.class public Lgnu/expr/ReferenceExp;
.super Lgnu/expr/AccessExp;
.source "ReferenceExp.java"


# static fields
.field public static final DONT_DEREFERENCE:I = 0x2

.field public static final PREFER_BINDING2:I = 0x8

.field public static final PROCEDURE_NAME:I = 0x4

.field public static final TYPE_NAME:I = 0x10

.field static counter:I


# instance fields
.field id:I


# direct methods
.method public constructor <init>(Lgnu/expr/Declaration;)V
    .locals 1
    .parameter "binding"

    .prologue
    .line 66
    invoke-virtual {p1}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lgnu/expr/ReferenceExp;-><init>(Ljava/lang/Object;Lgnu/expr/Declaration;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .parameter "symbol"

    .prologue
    .line 54
    invoke-direct {p0}, Lgnu/expr/AccessExp;-><init>()V

    .line 17
    sget v0, Lgnu/expr/ReferenceExp;->counter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lgnu/expr/ReferenceExp;->counter:I

    iput v0, p0, Lgnu/expr/ReferenceExp;->id:I

    .line 55
    iput-object p1, p0, Lgnu/expr/ReferenceExp;->symbol:Ljava/lang/Object;

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lgnu/expr/Declaration;)V
    .locals 1
    .parameter "symbol"
    .parameter "binding"

    .prologue
    .line 59
    invoke-direct {p0}, Lgnu/expr/AccessExp;-><init>()V

    .line 17
    sget v0, Lgnu/expr/ReferenceExp;->counter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lgnu/expr/ReferenceExp;->counter:I

    iput v0, p0, Lgnu/expr/ReferenceExp;->id:I

    .line 60
    iput-object p1, p0, Lgnu/expr/ReferenceExp;->symbol:Ljava/lang/Object;

    .line 61
    iput-object p2, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    .line 62
    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 13
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 86
    iget-object v10, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    if-eqz v10, :cond_3

    iget-object v10, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    invoke-virtual {v10}, Lgnu/expr/Declaration;->isAlias()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {p0}, Lgnu/expr/ReferenceExp;->getDontDereference()Z

    move-result v10

    if-nez v10, :cond_3

    iget-object v10, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    iget-object v10, v10, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    instance-of v10, v10, Lgnu/expr/ReferenceExp;

    if-eqz v10, :cond_3

    .line 89
    iget-object v10, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    iget-object v5, v10, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    check-cast v5, Lgnu/expr/ReferenceExp;

    .line 90
    .local v5, rexp:Lgnu/expr/ReferenceExp;
    invoke-virtual {v5}, Lgnu/expr/ReferenceExp;->getDontDereference()Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, v5, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    if-eqz v10, :cond_1

    .line 92
    iget-object v10, v5, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    invoke-virtual {v10}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v8

    .line 93
    .local v8, v:Lgnu/expr/Expression;
    instance-of v10, v8, Lgnu/expr/QuoteExp;

    if-nez v10, :cond_0

    instance-of v10, v8, Lgnu/expr/ReferenceExp;

    if-nez v10, :cond_0

    instance-of v10, v8, Lgnu/expr/LambdaExp;

    if-eqz v10, :cond_1

    .line 96
    :cond_0
    invoke-virtual {v8, p1}, Lgnu/expr/Expression;->apply(Lgnu/mapping/CallContext;)V

    .line 157
    .end local v5           #rexp:Lgnu/expr/ReferenceExp;
    .end local v8           #v:Lgnu/expr/Expression;
    :goto_0
    return-void

    .line 100
    .restart local v5       #rexp:Lgnu/expr/ReferenceExp;
    :cond_1
    iget-object v10, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    iget-object v10, v10, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    invoke-virtual {v10, p1}, Lgnu/expr/Expression;->eval(Lgnu/mapping/CallContext;)Ljava/lang/Object;

    move-result-object v9

    .line 154
    .end local v5           #rexp:Lgnu/expr/ReferenceExp;
    .local v9, value:Ljava/lang/Object;
    :goto_1
    invoke-virtual {p0}, Lgnu/expr/ReferenceExp;->getDontDereference()Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    invoke-virtual {v10}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 155
    check-cast v9, Lgnu/mapping/Location;

    .end local v9           #value:Ljava/lang/Object;
    invoke-virtual {v9}, Lgnu/mapping/Location;->get()Ljava/lang/Object;

    move-result-object v9

    .line 156
    .restart local v9       #value:Ljava/lang/Object;
    :cond_2
    invoke-virtual {p1, v9}, Lgnu/mapping/CallContext;->writeValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 102
    .end local v9           #value:Ljava/lang/Object;
    :cond_3
    iget-object v10, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    if-eqz v10, :cond_6

    iget-object v10, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    iget-object v10, v10, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    if-eqz v10, :cond_6

    iget-object v10, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    iget-object v10, v10, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v10}, Lgnu/bytecode/Field;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v10

    invoke-virtual {v10}, Lgnu/bytecode/ClassType;->isExisting()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-virtual {p0}, Lgnu/expr/ReferenceExp;->getDontDereference()Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    invoke-virtual {v10}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 108
    :cond_4
    :try_start_0
    iget-object v10, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    iget-object v10, v10, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v10}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result v10

    if-eqz v10, :cond_5

    move-object v2, v12

    .line 110
    .local v2, instance:Ljava/lang/Object;
    :goto_2
    iget-object v10, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    iget-object v10, v10, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v10}, Lgnu/bytecode/Field;->getReflectField()Ljava/lang/reflect/Field;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .restart local v9       #value:Ljava/lang/Object;
    goto :goto_1

    .line 108
    .end local v2           #instance:Ljava/lang/Object;
    .end local v9           #value:Ljava/lang/Object;
    :cond_5
    invoke-virtual {p0}, Lgnu/expr/ReferenceExp;->contextDecl()Lgnu/expr/Declaration;

    move-result-object v10

    invoke-virtual {v10}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v10

    invoke-virtual {v10, p1}, Lgnu/expr/Expression;->eval(Lgnu/mapping/CallContext;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    move-object v2, v10

    goto :goto_2

    .line 112
    :catch_0
    move-exception v10

    move-object v1, v10

    .line 114
    .local v1, ex:Ljava/lang/Exception;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "exception evaluating "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lgnu/expr/ReferenceExp;->symbol:Ljava/lang/Object;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    iget-object v11, v11, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 117
    .local v3, msg:Ljava/lang/String;
    new-instance v10, Lgnu/mapping/UnboundLocationException;

    invoke-direct {v10, v3, p0}, Lgnu/mapping/UnboundLocationException;-><init>(Ljava/lang/Object;Lgnu/text/SourceLocator;)V

    throw v10

    .line 122
    .end local v1           #ex:Ljava/lang/Exception;
    .end local v3           #msg:Ljava/lang/String;
    :cond_6
    iget-object v10, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    if-eqz v10, :cond_9

    iget-object v10, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    iget-object v10, v10, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    instance-of v10, v10, Lgnu/expr/QuoteExp;

    if-nez v10, :cond_7

    iget-object v10, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    iget-object v10, v10, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    instance-of v10, v10, Lgnu/expr/LambdaExp;

    if-eqz v10, :cond_9

    :cond_7
    iget-object v10, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    iget-object v10, v10, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    sget-object v11, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    if-eq v10, v11, :cond_9

    invoke-virtual {p0}, Lgnu/expr/ReferenceExp;->getDontDereference()Z

    move-result v10

    if-eqz v10, :cond_8

    iget-object v10, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    invoke-virtual {v10}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 128
    :cond_8
    iget-object v10, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    iget-object v10, v10, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    invoke-virtual {v10, p1}, Lgnu/expr/Expression;->eval(Lgnu/mapping/CallContext;)Ljava/lang/Object;

    move-result-object v9

    .restart local v9       #value:Ljava/lang/Object;
    goto/16 :goto_1

    .line 130
    .end local v9           #value:Ljava/lang/Object;
    :cond_9
    iget-object v10, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    if-eqz v10, :cond_a

    iget-object v10, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    iget-object v10, v10, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    instance-of v10, v10, Lgnu/expr/ModuleExp;

    if-eqz v10, :cond_f

    iget-object v10, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    invoke-virtual {v10}, Lgnu/expr/Declaration;->isPrivate()Z

    move-result v10

    if-nez v10, :cond_f

    .line 134
    :cond_a
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v0

    .line 135
    .local v0, env:Lgnu/mapping/Environment;
    iget-object v10, p0, Lgnu/expr/ReferenceExp;->symbol:Ljava/lang/Object;

    instance-of v10, v10, Lgnu/mapping/Symbol;

    if-eqz v10, :cond_c

    iget-object v10, p0, Lgnu/expr/ReferenceExp;->symbol:Ljava/lang/Object;

    check-cast v10, Lgnu/mapping/Symbol;

    move-object v6, v10

    .line 137
    .local v6, sym:Lgnu/mapping/Symbol;
    :goto_3
    const/16 v10, 0x8

    invoke-virtual {p0, v10}, Lgnu/expr/ReferenceExp;->getFlag(I)Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-virtual {p0}, Lgnu/expr/ReferenceExp;->isProcedureName()Z

    move-result v10

    if-eqz v10, :cond_d

    sget-object v10, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    move-object v4, v10

    .line 140
    .local v4, property:Ljava/lang/Object;
    :goto_4
    invoke-virtual {p0}, Lgnu/expr/ReferenceExp;->getDontDereference()Z

    move-result v10

    if-eqz v10, :cond_e

    .line 141
    invoke-virtual {v0, v6, v4}, Lgnu/mapping/Environment;->getLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/Location;

    move-result-object v9

    .line 149
    :cond_b
    invoke-virtual {p1, v9}, Lgnu/mapping/CallContext;->writeValue(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 135
    .end local v4           #property:Ljava/lang/Object;
    .end local v6           #sym:Lgnu/mapping/Symbol;
    :cond_c
    iget-object v10, p0, Lgnu/expr/ReferenceExp;->symbol:Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lgnu/mapping/Environment;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v10

    move-object v6, v10

    goto :goto_3

    .restart local v6       #sym:Lgnu/mapping/Symbol;
    :cond_d
    move-object v4, v12

    .line 137
    goto :goto_4

    .line 144
    .restart local v4       #property:Ljava/lang/Object;
    :cond_e
    sget-object v7, Lgnu/mapping/Location;->UNBOUND:Ljava/lang/String;

    .line 145
    .local v7, unb:Ljava/lang/String;
    invoke-virtual {v0, v6, v4, v7}, Lgnu/mapping/Environment;->get(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 146
    .restart local v9       #value:Ljava/lang/Object;
    if-ne v9, v7, :cond_b

    .line 147
    new-instance v10, Lgnu/mapping/UnboundLocationException;

    invoke-direct {v10, v6, p0}, Lgnu/mapping/UnboundLocationException;-><init>(Ljava/lang/Object;Lgnu/text/SourceLocator;)V

    throw v10

    .line 153
    .end local v0           #env:Lgnu/mapping/Environment;
    .end local v4           #property:Ljava/lang/Object;
    .end local v6           #sym:Lgnu/mapping/Symbol;
    .end local v7           #unb:Ljava/lang/String;
    .end local v9           #value:Ljava/lang/Object;
    :cond_f
    iget-object v10, p1, Lgnu/mapping/CallContext;->evalFrames:[[Ljava/lang/Object;

    iget-object v11, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    iget-object v11, v11, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    invoke-static {v11}, Lgnu/expr/ScopeExp;->nesting(Lgnu/expr/ScopeExp;)I

    move-result v11

    aget-object v10, v10, v11

    iget-object v11, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    iget v11, v11, Lgnu/expr/Declaration;->evalIndex:I

    aget-object v9, v10, v11

    .restart local v9       #value:Ljava/lang/Object;
    goto/16 :goto_1
.end method

.method public compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 3
    .parameter "comp"
    .parameter "target"

    .prologue
    .line 161
    instance-of v1, p2, Lgnu/expr/ConsumerTarget;

    if-eqz v1, :cond_0

    move-object v0, p2

    check-cast v0, Lgnu/expr/ConsumerTarget;

    move-object v1, v0

    invoke-virtual {v1, p0, p1}, Lgnu/expr/ConsumerTarget;->compileWrite(Lgnu/expr/Expression;Lgnu/expr/Compilation;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 163
    :cond_0
    iget-object v1, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    iget v2, p0, Lgnu/expr/ReferenceExp;->flags:I

    invoke-virtual {v1, p0, v2, p1, p2}, Lgnu/expr/Declaration;->load(Lgnu/expr/AccessExp;ILgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 164
    :cond_1
    return-void
.end method

.method protected deepCopy(Lgnu/kawa/util/IdentityHashTable;)Lgnu/expr/Expression;
    .locals 5
    .parameter "mapper"

    .prologue
    .line 168
    iget-object v3, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    iget-object v4, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    invoke-virtual {p1, v3, v4}, Lgnu/kawa/util/IdentityHashTable;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/expr/Declaration;

    .line 169
    .local v1, d:Lgnu/expr/Declaration;
    iget-object v3, p0, Lgnu/expr/ReferenceExp;->symbol:Ljava/lang/Object;

    iget-object v4, p0, Lgnu/expr/ReferenceExp;->symbol:Ljava/lang/Object;

    invoke-virtual {p1, v3, v4}, Lgnu/kawa/util/IdentityHashTable;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 170
    .local v2, s:Ljava/lang/Object;
    new-instance v0, Lgnu/expr/ReferenceExp;

    invoke-direct {v0, v2, v1}, Lgnu/expr/ReferenceExp;-><init>(Ljava/lang/Object;Lgnu/expr/Declaration;)V

    .line 171
    .local v0, copy:Lgnu/expr/ReferenceExp;
    invoke-virtual {p0}, Lgnu/expr/ReferenceExp;->getFlags()I

    move-result v3

    iput v3, v0, Lgnu/expr/ReferenceExp;->flags:I

    .line 172
    return-object v0
.end method

.method public final getDontDereference()Z
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lgnu/expr/ReferenceExp;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getType()Lgnu/bytecode/Type;
    .locals 5

    .prologue
    .line 225
    iget-object v0, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    .line 226
    .local v0, decl:Lgnu/expr/Declaration;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lgnu/expr/Declaration;->isFluid()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 227
    :cond_0
    sget-object v4, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    .line 247
    :goto_0
    return-object v4

    .line 228
    :cond_1
    invoke-virtual {p0}, Lgnu/expr/ReferenceExp;->getDontDereference()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 229
    sget-object v4, Lgnu/expr/Compilation;->typeLocation:Lgnu/bytecode/ClassType;

    goto :goto_0

    .line 230
    :cond_2
    invoke-static {v0}, Lgnu/expr/Declaration;->followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;

    move-result-object v0

    .line 231
    invoke-virtual {v0}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v2

    .line 232
    .local v2, type:Lgnu/bytecode/Type;
    if-eqz v2, :cond_3

    sget-object v4, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    if-ne v2, v4, :cond_4

    .line 234
    :cond_3
    invoke-virtual {v0}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v3

    .line 235
    .local v3, value:Lgnu/expr/Expression;
    if-eqz v3, :cond_4

    sget-object v4, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    if-eq v3, v4, :cond_4

    .line 239
    iget-object v1, v0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    .line 240
    .local v1, save:Lgnu/expr/Expression;
    const/4 v4, 0x0

    iput-object v4, v0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    .line 241
    invoke-virtual {v3}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v2

    .line 242
    iput-object v1, v0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    .line 245
    .end local v1           #save:Lgnu/expr/Expression;
    .end local v3           #value:Lgnu/expr/Expression;
    :cond_4
    sget-object v4, Lgnu/bytecode/Type;->toStringType:Lgnu/bytecode/ClassType;

    if-ne v2, v4, :cond_5

    .line 246
    sget-object v2, Lgnu/bytecode/Type;->javalangStringType:Lgnu/bytecode/ClassType;

    :cond_5
    move-object v4, v2

    .line 247
    goto :goto_0
.end method

.method public final isProcedureName()Z
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lgnu/expr/ReferenceExp;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSingleValue()Z
    .locals 3

    .prologue
    .line 252
    iget-object v0, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    const-wide/32 v1, 0x40000

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    const/4 v0, 0x1

    .line 254
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lgnu/expr/AccessExp;->isSingleValue()Z

    move-result v0

    goto :goto_0
.end method

.method public final isUnknown()Z
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    invoke-static {v0}, Lgnu/expr/Declaration;->isUnknown(Lgnu/expr/Declaration;)Z

    move-result v0

    return v0
.end method

.method protected mustCompile()Z
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public print(Lgnu/mapping/OutPort;)V
    .locals 3
    .parameter "ps"

    .prologue
    const/16 v2, 0x2f

    .line 207
    const-string v0, "(Ref/"

    invoke-virtual {p1, v0}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 208
    iget v0, p0, Lgnu/expr/ReferenceExp;->id:I

    invoke-virtual {p1, v0}, Lgnu/mapping/OutPort;->print(I)V

    .line 209
    iget-object v0, p0, Lgnu/expr/ReferenceExp;->symbol:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgnu/expr/ReferenceExp;->symbol:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    invoke-virtual {v1}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 212
    :cond_0
    invoke-virtual {p1, v2}, Lgnu/mapping/OutPort;->print(C)V

    .line 213
    iget-object v0, p0, Lgnu/expr/ReferenceExp;->symbol:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lgnu/mapping/OutPort;->print(Ljava/lang/Object;)V

    .line 215
    :cond_1
    iget-object v0, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    if-eqz v0, :cond_2

    .line 217
    invoke-virtual {p1, v2}, Lgnu/mapping/OutPort;->print(C)V

    .line 218
    iget-object v0, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    invoke-virtual {p1, v0}, Lgnu/mapping/OutPort;->print(Ljava/lang/Object;)V

    .line 220
    :cond_2
    const-string v0, ")"

    invoke-virtual {p1, v0}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 221
    return-void
.end method

.method public final setDontDereference(Z)V
    .locals 1
    .parameter "setting"

    .prologue
    .line 32
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lgnu/expr/ReferenceExp;->setFlag(ZI)V

    return-void
.end method

.method public final setProcedureName(Z)V
    .locals 1
    .parameter "setting"

    .prologue
    .line 50
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lgnu/expr/ReferenceExp;->setFlag(ZI)V

    .line 51
    return-void
.end method

.method public side_effects()Z
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    invoke-virtual {v0}, Lgnu/expr/Declaration;->isLexical()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x2f

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RefExp/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgnu/expr/ReferenceExp;->symbol:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lgnu/expr/ReferenceExp;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validateApply(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/expr/Declaration;)Lgnu/expr/Expression;
    .locals 6
    .parameter "exp"
    .parameter "visitor"
    .parameter "required"
    .parameter "decl"

    .prologue
    const/4 v5, 0x0

    .line 183
    iget-object p4, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    .line 184
    if-eqz p4, :cond_0

    const-wide/32 v3, 0x10000

    invoke-virtual {p4, v3, v4}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v3

    if-nez v3, :cond_0

    .line 186
    invoke-static {p4}, Lgnu/expr/Declaration;->followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;

    move-result-object p4

    .line 187
    invoke-virtual {p4}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v3

    if-nez v3, :cond_1

    .line 189
    invoke-virtual {p4}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v0

    .line 190
    .local v0, dval:Lgnu/expr/Expression;
    if-eqz v0, :cond_1

    .line 191
    invoke-virtual {v0, p1, p2, p3, p4}, Lgnu/expr/Expression;->validateApply(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/expr/Declaration;)Lgnu/expr/Expression;

    move-result-object v3

    .line 202
    .end local v0           #dval:Lgnu/expr/Expression;
    :goto_0
    return-object v3

    .line 194
    :cond_0
    invoke-virtual {p0}, Lgnu/expr/ReferenceExp;->getSymbol()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lgnu/mapping/Symbol;

    if-eqz v3, :cond_1

    .line 196
    invoke-virtual {p0}, Lgnu/expr/ReferenceExp;->getSymbol()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/Symbol;

    .line 197
    .local v2, symbol:Lgnu/mapping/Symbol;
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v3

    invoke-virtual {v3, v2, v5}, Lgnu/mapping/Environment;->getFunction(Lgnu/mapping/Symbol;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 198
    .local v1, fval:Ljava/lang/Object;
    instance-of v3, v1, Lgnu/mapping/Procedure;

    if-eqz v3, :cond_1

    .line 199
    new-instance v3, Lgnu/expr/QuoteExp;

    invoke-direct {v3, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, p1, p2, p3, v5}, Lgnu/expr/QuoteExp;->validateApply(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/expr/Declaration;)Lgnu/expr/Expression;

    move-result-object v3

    goto :goto_0

    .line 201
    .end local v1           #fval:Ljava/lang/Object;
    .end local v2           #symbol:Lgnu/mapping/Symbol;
    :cond_1
    invoke-virtual {p1, p2}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    move-object v3, p1

    .line 202
    goto :goto_0
.end method

.method public final valueIfConstant()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 73
    iget-object v1, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    if-eqz v1, :cond_0

    .line 75
    iget-object v1, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    invoke-virtual {v1}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v0

    .line 76
    .local v0, dvalue:Lgnu/expr/Expression;
    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v1

    .line 79
    .end local v0           #dvalue:Lgnu/expr/Expression;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected visit(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lgnu/expr/ExpVisitor",
            "<TR;TD;>;TD;)TR;"
        }
    .end annotation

    .prologue
    .line 177
    .local p1, visitor:Lgnu/expr/ExpVisitor;,"Lgnu/expr/ExpVisitor<TR;TD;>;"
    .local p2, d:Ljava/lang/Object;,"TD;"
    invoke-virtual {p1, p0, p2}, Lgnu/expr/ExpVisitor;->visitReferenceExp(Lgnu/expr/ReferenceExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
