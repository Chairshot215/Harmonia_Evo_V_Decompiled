.class public abstract Lkawa/lang/Pattern;
.super Ljava/lang/Object;
.source "Pattern.java"

# interfaces
.implements Lgnu/text/Printable;


# static fields
.field private static matchArgs:[Lgnu/bytecode/Type;

.field public static final matchPatternMethod:Lgnu/bytecode/Method;

.field public static typePattern:Lgnu/bytecode/ClassType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 35
    const-string v0, "kawa.lang.Pattern"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lkawa/lang/Pattern;->typePattern:Lgnu/bytecode/ClassType;

    .line 36
    const/4 v0, 0x3

    new-array v0, v0, [Lgnu/bytecode/Type;

    const/4 v1, 0x0

    sget-object v2, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    aput-object v2, v0, v1

    sget-object v1, Lgnu/expr/Compilation;->objArrayType:Lgnu/bytecode/ArrayType;

    aput-object v1, v0, v4

    const/4 v1, 0x2

    sget-object v2, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    aput-object v2, v0, v1

    sput-object v0, Lkawa/lang/Pattern;->matchArgs:[Lgnu/bytecode/Type;

    .line 38
    sget-object v0, Lkawa/lang/Pattern;->typePattern:Lgnu/bytecode/ClassType;

    const-string v1, "match"

    sget-object v2, Lkawa/lang/Pattern;->matchArgs:[Lgnu/bytecode/Type;

    sget-object v3, Lgnu/bytecode/Type;->booleanType:Lgnu/bytecode/PrimType;

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lkawa/lang/Pattern;->matchPatternMethod:Lgnu/bytecode/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract match(Ljava/lang/Object;[Ljava/lang/Object;I)Z
.end method

.method public match(Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .parameter "obj"

    .prologue
    .line 21
    invoke-virtual {p0}, Lkawa/lang/Pattern;->varCount()I

    move-result v1

    new-array v0, v1, [Ljava/lang/Object;

    .line 22
    .local v0, vars:[Ljava/lang/Object;
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public abstract varCount()I
.end method
