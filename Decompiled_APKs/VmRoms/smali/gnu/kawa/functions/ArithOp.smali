.class public abstract Lgnu/kawa/functions/ArithOp;
.super Lgnu/mapping/ProcedureN;
.source "ArithOp.java"


# static fields
.field static final ADD:I = 0x1

.field public static final AND:I = 0xd

.field public static final ASHIFT_GENERAL:I = 0x9

.field public static final ASHIFT_LEFT:I = 0xa

.field public static final ASHIFT_RIGHT:I = 0xb

.field public static final DIVIDE_GENERIC:I = 0x4

.field public static final DIVIDE_INEXACT:I = 0x5

.field public static final IOR:I = 0xe

.field public static final LSHIFT_RIGHT:I = 0xc

.field public static final MODULO:I = 0x8

.field static final MUL:I = 0x3

.field public static final NOT:I = 0x10

.field public static final QUOTIENT:I = 0x6

.field public static final QUOTIENT_EXACT:I = 0x7

.field static final SUB:I = 0x2

.field public static final XOR:I = 0xf


# instance fields
.field final op:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "name"
    .parameter "op"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lgnu/mapping/ProcedureN;-><init>(Ljava/lang/String;)V

    .line 56
    iput p2, p0, Lgnu/kawa/functions/ArithOp;->op:I

    .line 57
    return-void
.end method

.method public static classify(Lgnu/bytecode/Type;)I
    .locals 6
    .parameter "type"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 78
    const/4 v0, 0x0

    .line 79
    .local v0, kind:I
    instance-of v2, p0, Lgnu/bytecode/PrimType;

    if-eqz v2, :cond_4

    .line 81
    invoke-virtual {p0}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 82
    .local v1, sig:C
    const/16 v2, 0x56

    if-eq v1, v2, :cond_0

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_0

    const/16 v2, 0x43

    if-ne v1, v2, :cond_1

    :cond_0
    move v2, v3

    .line 98
    .end local v1           #sig:C
    :goto_0
    return v2

    .line 84
    .restart local v1       #sig:C
    :cond_1
    const/16 v2, 0x44

    if-eq v1, v2, :cond_2

    const/16 v2, 0x46

    if-ne v1, v2, :cond_3

    :cond_2
    move v2, v4

    .line 85
    goto :goto_0

    :cond_3
    move v2, v5

    .line 87
    goto :goto_0

    .line 89
    .end local v1           #sig:C
    :cond_4
    sget-object v2, Lgnu/kawa/functions/Arithmetic;->typeIntNum:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {p0, v2}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v5

    .line 90
    goto :goto_0

    .line 91
    :cond_5
    sget-object v2, Lgnu/kawa/functions/Arithmetic;->typeDFloNum:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {p0, v2}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v4

    .line 92
    goto :goto_0

    .line 93
    :cond_6
    sget-object v2, Lgnu/kawa/functions/Arithmetic;->typeRealNum:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {p0, v2}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 94
    const/4 v2, 0x2

    goto :goto_0

    .line 95
    :cond_7
    sget-object v2, Lgnu/kawa/functions/Arithmetic;->typeNumeric:Lgnu/bytecode/ClassType;

    invoke-virtual {p0, v2}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 96
    const/4 v2, 0x1

    goto :goto_0

    :cond_8
    move v2, v3

    .line 98
    goto :goto_0
.end method


# virtual methods
.method public defaultResult()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 61
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method public isSideEffectFree()Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x1

    return v0
.end method
