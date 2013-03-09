.class public Lgnu/kawa/reflect/SingletonType;
.super Lgnu/bytecode/ObjectType;
.source "SingletonType.java"


# static fields
.field static final instance:Lgnu/kawa/reflect/SingletonType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 11
    new-instance v0, Lgnu/kawa/reflect/SingletonType;

    const-string v1, "singleton"

    invoke-direct {v0, v1}, Lgnu/kawa/reflect/SingletonType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/kawa/reflect/SingletonType;->instance:Lgnu/kawa/reflect/SingletonType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lgnu/bytecode/ObjectType;-><init>(Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static coerceToSingleton(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "obj"

    .prologue
    .line 47
    instance-of v0, p0, Lgnu/mapping/Values;

    if-eqz v0, :cond_0

    .line 48
    check-cast p0, Lgnu/mapping/Values;

    .end local p0
    invoke-virtual {p0}, Lgnu/mapping/Values;->canonicalize()Ljava/lang/Object;

    move-result-object p0

    .line 49
    .restart local p0
    :cond_0
    if-eqz p0, :cond_1

    instance-of v0, p0, Lgnu/mapping/Values;

    if-eqz v0, :cond_2

    .line 50
    :cond_1
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "value is not a singleton"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_2
    return-object p0
.end method

.method public static final getInstance()Lgnu/kawa/reflect/SingletonType;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lgnu/kawa/reflect/SingletonType;->instance:Lgnu/kawa/reflect/SingletonType;

    return-object v0
.end method


# virtual methods
.method public coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "obj"

    .prologue
    .line 56
    invoke-static {p1}, Lgnu/kawa/reflect/SingletonType;->coerceToSingleton(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public compare(Lgnu/bytecode/Type;)I
    .locals 6
    .parameter "other"

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 32
    invoke-static {p1}, Lgnu/kawa/reflect/OccurrenceType;->itemCountRange(Lgnu/bytecode/Type;)I

    move-result v3

    .line 33
    .local v3, otherRange:I
    and-int/lit16 v2, v3, 0xfff

    .line 34
    .local v2, otherMin:I
    shr-int/lit8 v1, v3, 0xc

    .line 35
    .local v1, otherMax:I
    if-eqz v1, :cond_0

    if-le v2, v4, :cond_1

    .line 36
    :cond_0
    const/4 v4, -0x3

    .line 42
    :goto_0
    return v4

    .line 37
    :cond_1
    if-ne v2, v4, :cond_2

    if-ne v1, v4, :cond_2

    .line 38
    sget-object v4, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    invoke-virtual {v4, p1}, Lgnu/bytecode/ClassType;->compare(Lgnu/bytecode/Type;)I

    move-result v4

    goto :goto_0

    .line 39
    :cond_2
    sget-object v4, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    invoke-virtual {v4, p1}, Lgnu/bytecode/ClassType;->compare(Lgnu/bytecode/Type;)I

    move-result v0

    .line 40
    .local v0, cmp:I
    if-eqz v0, :cond_3

    if-ne v0, v5, :cond_4

    :cond_3
    move v4, v5

    .line 41
    goto :goto_0

    .line 42
    :cond_4
    const/4 v4, -0x2

    goto :goto_0
.end method

.method public emitCoerceFromObject(Lgnu/bytecode/CodeAttr;)V
    .locals 3
    .parameter "code"

    .prologue
    .line 61
    const-string v0, "gnu.kawa.reflect.SingletonType"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    const-string v1, "coerceToSingleton"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 63
    return-void
.end method

.method public getImplementationType()Lgnu/bytecode/Type;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    return-object v0
.end method

.method public getReflectClass()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lgnu/kawa/reflect/SingletonType;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/bytecode/Type;->getReflectClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public isInstance(Ljava/lang/Object;)Z
    .locals 1
    .parameter "obj"

    .prologue
    .line 67
    if-eqz p1, :cond_0

    instance-of v0, p1, Lgnu/mapping/Values;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
