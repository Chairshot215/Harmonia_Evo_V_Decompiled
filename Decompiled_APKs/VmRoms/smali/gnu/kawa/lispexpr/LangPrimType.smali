.class public Lgnu/kawa/lispexpr/LangPrimType;
.super Lgnu/bytecode/PrimType;
.source "LangPrimType.java"

# interfaces
.implements Lgnu/expr/TypeValue;


# static fields
.field public static final byteType:Lgnu/bytecode/PrimType;

.field public static final charType:Lgnu/kawa/lispexpr/LangPrimType;

.field public static final doubleType:Lgnu/bytecode/PrimType;

.field public static final floatType:Lgnu/bytecode/PrimType;

.field public static final intType:Lgnu/bytecode/PrimType;

.field public static final longType:Lgnu/bytecode/PrimType;

.field public static final shortType:Lgnu/bytecode/PrimType;

.field public static final voidType:Lgnu/kawa/lispexpr/LangPrimType;


# instance fields
.field implementationType:Lgnu/bytecode/PrimType;

.field language:Lgnu/expr/Language;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    sget-object v0, Lgnu/bytecode/Type;->byteType:Lgnu/bytecode/PrimType;

    sput-object v0, Lgnu/kawa/lispexpr/LangPrimType;->byteType:Lgnu/bytecode/PrimType;

    .line 21
    sget-object v0, Lgnu/bytecode/Type;->shortType:Lgnu/bytecode/PrimType;

    sput-object v0, Lgnu/kawa/lispexpr/LangPrimType;->shortType:Lgnu/bytecode/PrimType;

    .line 22
    sget-object v0, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    sput-object v0, Lgnu/kawa/lispexpr/LangPrimType;->intType:Lgnu/bytecode/PrimType;

    .line 23
    sget-object v0, Lgnu/bytecode/Type;->longType:Lgnu/bytecode/PrimType;

    sput-object v0, Lgnu/kawa/lispexpr/LangPrimType;->longType:Lgnu/bytecode/PrimType;

    .line 24
    sget-object v0, Lgnu/bytecode/Type;->floatType:Lgnu/bytecode/PrimType;

    sput-object v0, Lgnu/kawa/lispexpr/LangPrimType;->floatType:Lgnu/bytecode/PrimType;

    .line 25
    sget-object v0, Lgnu/bytecode/Type;->doubleType:Lgnu/bytecode/PrimType;

    sput-object v0, Lgnu/kawa/lispexpr/LangPrimType;->doubleType:Lgnu/bytecode/PrimType;

    .line 26
    new-instance v0, Lgnu/kawa/lispexpr/LangPrimType;

    sget-object v1, Lgnu/bytecode/Type;->charType:Lgnu/bytecode/PrimType;

    invoke-direct {v0, v1}, Lgnu/kawa/lispexpr/LangPrimType;-><init>(Lgnu/bytecode/PrimType;)V

    sput-object v0, Lgnu/kawa/lispexpr/LangPrimType;->charType:Lgnu/kawa/lispexpr/LangPrimType;

    .line 28
    new-instance v0, Lgnu/kawa/lispexpr/LangPrimType;

    sget-object v1, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    invoke-direct {v0, v1}, Lgnu/kawa/lispexpr/LangPrimType;-><init>(Lgnu/bytecode/PrimType;)V

    sput-object v0, Lgnu/kawa/lispexpr/LangPrimType;->voidType:Lgnu/kawa/lispexpr/LangPrimType;

    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/PrimType;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lgnu/bytecode/PrimType;-><init>(Lgnu/bytecode/PrimType;)V

    .line 34
    iput-object p1, p0, Lgnu/kawa/lispexpr/LangPrimType;->implementationType:Lgnu/bytecode/PrimType;

    .line 35
    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/PrimType;Lgnu/expr/Language;)V
    .locals 0
    .parameter "type"
    .parameter "language"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lgnu/bytecode/PrimType;-><init>(Lgnu/bytecode/PrimType;)V

    .line 40
    iput-object p2, p0, Lgnu/kawa/lispexpr/LangPrimType;->language:Lgnu/expr/Language;

    .line 41
    iput-object p1, p0, Lgnu/kawa/lispexpr/LangPrimType;->implementationType:Lgnu/bytecode/PrimType;

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)V
    .locals 0
    .parameter "nam"
    .parameter "sig"
    .parameter "siz"
    .parameter "reflectClass"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Lgnu/bytecode/PrimType;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;Lgnu/expr/Language;)V
    .locals 1
    .parameter "nam"
    .parameter "sig"
    .parameter "siz"
    .parameter "reflectClass"
    .parameter "language"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lgnu/kawa/lispexpr/LangPrimType;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)V

    .line 53
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lgnu/bytecode/Type;->signatureToPrimitive(C)Lgnu/bytecode/PrimType;

    move-result-object v0

    iput-object v0, p0, Lgnu/kawa/lispexpr/LangPrimType;->implementationType:Lgnu/bytecode/PrimType;

    .line 54
    iput-object p5, p0, Lgnu/kawa/lispexpr/LangPrimType;->language:Lgnu/expr/Language;

    .line 55
    return-void
.end method


# virtual methods
.method public charValue(Ljava/lang/Object;)C
    .locals 1
    .parameter "value"

    .prologue
    .line 81
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_0

    .line 82
    check-cast p1, Ljava/lang/Character;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v0

    .line 83
    :goto_0
    return v0

    .restart local p1
    :cond_0
    check-cast p1, Lgnu/text/Char;

    .end local p1
    invoke-virtual {p1}, Lgnu/text/Char;->charValue()C

    move-result v0

    goto :goto_0
.end method

.method public coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "obj"

    .prologue
    .line 64
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lgnu/kawa/lispexpr/LangPrimType;->reflectClass:Ljava/lang/Class;

    if-ne v1, v2, :cond_0

    move-object v1, p1

    .line 76
    .end local p1
    :goto_0
    return-object v1

    .line 66
    .restart local p1
    :cond_0
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LangPrimType;->getSignature()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 67
    .local v0, sig1:C
    sparse-switch v0, :sswitch_data_0

    .line 76
    invoke-super {p0, p1}, Lgnu/bytecode/PrimType;->coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 70
    :sswitch_0
    iget-object v1, p0, Lgnu/kawa/lispexpr/LangPrimType;->language:Lgnu/expr/Language;

    invoke-virtual {v1, p1}, Lgnu/expr/Language;->isTrue(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 72
    :sswitch_1
    new-instance v1, Ljava/lang/Character;

    check-cast p1, Lgnu/text/Char;

    .end local p1
    invoke-virtual {p1}, Lgnu/text/Char;->charValue()C

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    goto :goto_0

    .line 74
    .restart local p1
    :sswitch_2
    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    .line 67
    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_1
        0x56 -> :sswitch_2
        0x5a -> :sswitch_0
    .end sparse-switch
.end method

.method public coerceToObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "obj"

    .prologue
    .line 127
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LangPrimType;->getSignature()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 128
    .local v0, sig1:C
    sparse-switch v0, :sswitch_data_0

    .line 140
    invoke-super {p0, p1}, Lgnu/bytecode/PrimType;->coerceToObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local p1
    :goto_0
    return-object v1

    .line 131
    .restart local p1
    :sswitch_0
    iget-object v1, p0, Lgnu/kawa/lispexpr/LangPrimType;->language:Lgnu/expr/Language;

    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lgnu/expr/Language;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 133
    .restart local p1
    :sswitch_1
    instance-of v1, p1, Lgnu/text/Char;

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 134
    goto :goto_0

    .line 135
    :cond_0
    check-cast p1, Ljava/lang/Character;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-static {v1}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v1

    goto :goto_0

    .line 138
    .restart local p1
    :sswitch_2
    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    .line 128
    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_1
        0x56 -> :sswitch_2
        0x5a -> :sswitch_0
    .end sparse-switch
.end method

.method public compare(Lgnu/bytecode/Type;)I
    .locals 8
    .parameter "other"

    .prologue
    const/16 v7, 0x5a

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/16 v4, 0x56

    const/4 v3, 0x0

    .line 176
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LangPrimType;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 177
    .local v0, sig1:C
    instance-of v2, p1, Lgnu/bytecode/PrimType;

    if-eqz v2, :cond_3

    .line 179
    invoke-virtual {p1}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 180
    .local v1, sig2:C
    if-ne v0, v1, :cond_0

    move v2, v3

    .line 193
    .end local v1           #sig2:C
    :goto_0
    return v2

    .line 182
    .restart local v1       #sig2:C
    :cond_0
    if-ne v0, v4, :cond_1

    move v2, v6

    .line 183
    goto :goto_0

    .line 184
    :cond_1
    if-eq v1, v4, :cond_2

    if-ne v1, v7, :cond_3

    :cond_2
    move v2, v5

    .line 185
    goto :goto_0

    .line 187
    .end local v1           #sig2:C
    :cond_3
    if-eq v0, v4, :cond_4

    if-ne v0, v7, :cond_5

    :cond_4
    move v2, v6

    .line 188
    goto :goto_0

    .line 189
    :cond_5
    const/16 v2, 0x43

    if-ne v0, v2, :cond_6

    invoke-virtual {p1}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "gnu.text.Char"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v5

    .line 190
    goto :goto_0

    .line 191
    :cond_6
    instance-of v2, p1, Lgnu/kawa/lispexpr/LangObjType;

    if-eqz v2, :cond_7

    .line 192
    invoke-virtual {p1, p0}, Lgnu/bytecode/Type;->compare(Lgnu/bytecode/Type;)I

    move-result v2

    invoke-static {v2}, Lgnu/kawa/lispexpr/LangPrimType;->swappedCompareResult(I)I

    move-result v2

    goto :goto_0

    .line 193
    :cond_7
    invoke-super {p0, p1}, Lgnu/bytecode/PrimType;->compare(Lgnu/bytecode/Type;)I

    move-result v2

    goto :goto_0
.end method

.method public convertValue(Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 1
    .parameter "value"

    .prologue
    .line 219
    const/4 v0, 0x0

    return-object v0
.end method

.method public emitCoerceFromObject(Lgnu/bytecode/CodeAttr;)V
    .locals 5
    .parameter "code"

    .prologue
    const/4 v4, 0x0

    .line 106
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LangPrimType;->getSignature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 107
    .local v2, sig1:C
    sparse-switch v2, :sswitch_data_0

    .line 121
    invoke-super {p0, p1}, Lgnu/bytecode/PrimType;->emitCoerceFromObject(Lgnu/bytecode/CodeAttr;)V

    .line 123
    :goto_0
    return-void

    .line 110
    :sswitch_0
    iget-object v3, p0, Lgnu/kawa/lispexpr/LangPrimType;->language:Lgnu/expr/Language;

    invoke-virtual {v3, p1}, Lgnu/expr/Language;->emitCoerceToBoolean(Lgnu/bytecode/CodeAttr;)V

    goto :goto_0

    .line 115
    :sswitch_1
    const-string v3, "gnu.text.Char"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v1

    .line 116
    .local v1, scmCharType:Lgnu/bytecode/ClassType;
    const-string v3, "charValue"

    invoke-virtual {v1, v3, v4}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    .line 117
    .local v0, charValueMethod:Lgnu/bytecode/Method;
    invoke-virtual {p1, v1}, Lgnu/bytecode/CodeAttr;->emitCheckcast(Lgnu/bytecode/Type;)V

    .line 118
    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    goto :goto_0

    .line 107
    nop

    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_1
        0x5a -> :sswitch_0
    .end sparse-switch
.end method

.method public emitCoerceToObject(Lgnu/bytecode/CodeAttr;)V
    .locals 10
    .parameter "code"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 145
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LangPrimType;->getSignature()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 146
    .local v6, sig1:C
    const/4 v0, 0x0

    .line 147
    .local v0, argType:Lgnu/bytecode/Type;
    const/4 v3, 0x0

    .line 148
    .local v3, cname:Ljava/lang/String;
    sparse-switch v6, :sswitch_data_0

    .line 163
    invoke-super {p0, p1}, Lgnu/bytecode/PrimType;->emitCoerceToObject(Lgnu/bytecode/CodeAttr;)V

    .line 165
    :goto_0
    if-eqz v3, :cond_0

    .line 167
    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    .line 168
    .local v2, clas:Lgnu/bytecode/ClassType;
    new-array v1, v9, [Lgnu/bytecode/Type;

    aput-object v0, v1, v8

    .line 169
    .local v1, args:[Lgnu/bytecode/Type;
    const-string v7, "make"

    invoke-virtual {v2, v7, v1}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v7

    invoke-virtual {p1, v7}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 171
    .end local v1           #args:[Lgnu/bytecode/Type;
    .end local v2           #clas:Lgnu/bytecode/ClassType;
    :cond_0
    return-void

    .line 151
    :sswitch_0
    invoke-virtual {p1}, Lgnu/bytecode/CodeAttr;->emitIfIntNotZero()V

    .line 152
    iget-object v7, p0, Lgnu/kawa/lispexpr/LangPrimType;->language:Lgnu/expr/Language;

    invoke-virtual {v7, v9, p1}, Lgnu/expr/Language;->emitPushBoolean(ZLgnu/bytecode/CodeAttr;)V

    .line 153
    invoke-virtual {p1}, Lgnu/bytecode/CodeAttr;->emitElse()V

    .line 154
    iget-object v7, p0, Lgnu/kawa/lispexpr/LangPrimType;->language:Lgnu/expr/Language;

    invoke-virtual {v7, v8, p1}, Lgnu/expr/Language;->emitPushBoolean(ZLgnu/bytecode/CodeAttr;)V

    .line 155
    invoke-virtual {p1}, Lgnu/bytecode/CodeAttr;->emitFi()V

    goto :goto_0

    .line 158
    :sswitch_1
    const-string v7, "gnu.text.Char"

    invoke-static {v7}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v5

    .line 159
    .local v5, scmCharType:Lgnu/bytecode/ClassType;
    const-string v7, "make"

    invoke-virtual {v5, v7, v9}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v4

    .line 160
    .local v4, makeCharMethod:Lgnu/bytecode/Method;
    invoke-virtual {p1, v4}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    goto :goto_0

    .line 148
    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_1
        0x5a -> :sswitch_0
    .end sparse-switch
.end method

.method public emitIsInstance(Lgnu/bytecode/CodeAttr;)V
    .locals 5
    .parameter "code"

    .prologue
    const/4 v4, 0x1

    .line 88
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LangPrimType;->getSignature()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 89
    .local v1, sig1:C
    sparse-switch v1, :sswitch_data_0

    .line 100
    invoke-super {p0, p1}, Lgnu/bytecode/PrimType;->emitIsInstance(Lgnu/bytecode/CodeAttr;)V

    .line 102
    :goto_0
    return-void

    .line 92
    :sswitch_0
    invoke-virtual {p1, v4}, Lgnu/bytecode/CodeAttr;->emitPop(I)V

    .line 93
    invoke-virtual {p1, v4}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    goto :goto_0

    .line 96
    :sswitch_1
    const-string v2, "gnu.text.Char"

    invoke-static {v2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    .line 97
    .local v0, scmCharType:Lgnu/bytecode/ClassType;
    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->emitInstanceof(Lgnu/bytecode/Type;)V

    goto :goto_0

    .line 89
    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_1
        0x5a -> :sswitch_0
    .end sparse-switch
.end method

.method public emitIsInstance(Lgnu/bytecode/Variable;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 0
    .parameter "incoming"
    .parameter "comp"
    .parameter "target"

    .prologue
    .line 225
    invoke-static {p0, p1, p2, p3}, Lgnu/kawa/reflect/InstanceOf;->emitIsInstance(Lgnu/expr/TypeValue;Lgnu/bytecode/Variable;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 226
    return-void
.end method

.method public emitTestIf(Lgnu/bytecode/Variable;Lgnu/expr/Declaration;Lgnu/expr/Compilation;)V
    .locals 4
    .parameter "incoming"
    .parameter "decl"
    .parameter "comp"

    .prologue
    .line 198
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LangPrimType;->getSignature()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 205
    .local v1, sig1:C
    invoke-virtual {p3}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 206
    .local v0, code:Lgnu/bytecode/CodeAttr;
    if-eqz p1, :cond_0

    .line 207
    invoke-virtual {v0, p1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 208
    :cond_0
    if-eqz p2, :cond_1

    .line 210
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitDup()V

    .line 211
    invoke-virtual {p2, p3}, Lgnu/expr/Declaration;->compileStore(Lgnu/expr/Compilation;)V

    .line 213
    :cond_1
    invoke-virtual {p0, v0}, Lgnu/kawa/lispexpr/LangPrimType;->emitIsInstance(Lgnu/bytecode/CodeAttr;)V

    .line 214
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitIfIntNotZero()V

    .line 215
    return-void
.end method

.method public getConstructor()Lgnu/mapping/Procedure;
    .locals 1

    .prologue
    .line 230
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImplementationType()Lgnu/bytecode/Type;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lgnu/kawa/lispexpr/LangPrimType;->implementationType:Lgnu/bytecode/PrimType;

    return-object v0
.end method
