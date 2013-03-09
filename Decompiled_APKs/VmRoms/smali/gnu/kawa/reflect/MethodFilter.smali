.class Lgnu/kawa/reflect/MethodFilter;
.super Ljava/lang/Object;
.source "ClassMethods.java"

# interfaces
.implements Lgnu/bytecode/Filter;


# instance fields
.field caller:Lgnu/bytecode/ClassType;

.field modifiers:I

.field modmask:I

.field name:Ljava/lang/String;

.field nlen:I

.field receiver:Lgnu/bytecode/ObjectType;


# direct methods
.method public constructor <init>(Ljava/lang/String;IILgnu/bytecode/ClassType;Lgnu/bytecode/ObjectType;)V
    .locals 1
    .parameter "name"
    .parameter "modifiers"
    .parameter "modmask"
    .parameter "caller"
    .parameter "receiver"

    .prologue
    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    iput-object p1, p0, Lgnu/kawa/reflect/MethodFilter;->name:Ljava/lang/String;

    .line 308
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lgnu/kawa/reflect/MethodFilter;->nlen:I

    .line 309
    iput p2, p0, Lgnu/kawa/reflect/MethodFilter;->modifiers:I

    .line 310
    iput p3, p0, Lgnu/kawa/reflect/MethodFilter;->modmask:I

    .line 311
    iput-object p4, p0, Lgnu/kawa/reflect/MethodFilter;->caller:Lgnu/bytecode/ClassType;

    .line 312
    iput-object p5, p0, Lgnu/kawa/reflect/MethodFilter;->receiver:Lgnu/bytecode/ObjectType;

    .line 313
    return-void
.end method


# virtual methods
.method public select(Ljava/lang/Object;)Z
    .locals 11
    .parameter "value"

    .prologue
    const/4 v10, 0x0

    .line 317
    move-object v0, p1

    check-cast v0, Lgnu/bytecode/Method;

    move-object v3, v0

    .line 318
    .local v3, method:Lgnu/bytecode/Method;
    invoke-virtual {v3}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v6

    .line 319
    .local v6, mname:Ljava/lang/String;
    invoke-virtual {v3}, Lgnu/bytecode/Method;->getModifiers()I

    move-result v5

    .line 320
    .local v5, mmods:I
    iget v7, p0, Lgnu/kawa/reflect/MethodFilter;->modmask:I

    and-int/2addr v7, v5

    iget v8, p0, Lgnu/kawa/reflect/MethodFilter;->modifiers:I

    if-ne v7, v8, :cond_0

    and-int/lit16 v7, v5, 0x1000

    if-nez v7, :cond_0

    iget-object v7, p0, Lgnu/kawa/reflect/MethodFilter;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    move v7, v10

    .line 335
    :goto_0
    return v7

    .line 324
    :cond_1
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    .line 326
    .local v4, mlen:I
    iget v7, p0, Lgnu/kawa/reflect/MethodFilter;->nlen:I

    if-eq v4, v7, :cond_4

    iget v7, p0, Lgnu/kawa/reflect/MethodFilter;->nlen:I

    add-int/lit8 v7, v7, 0x2

    if-ne v4, v7, :cond_2

    iget v7, p0, Lgnu/kawa/reflect/MethodFilter;->nlen:I

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x24

    if-ne v7, v8, :cond_2

    iget v7, p0, Lgnu/kawa/reflect/MethodFilter;->nlen:I

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .local v1, c:C
    const/16 v7, 0x56

    if-eq v1, v7, :cond_4

    const/16 v7, 0x58

    if-eq v1, v7, :cond_4

    .end local v1           #c:C
    :cond_2
    iget v7, p0, Lgnu/kawa/reflect/MethodFilter;->nlen:I

    add-int/lit8 v7, v7, 0x4

    if-ne v4, v7, :cond_3

    const-string v7, "$V$X"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    :cond_3
    move v7, v10

    .line 332
    goto :goto_0

    .line 333
    :cond_4
    iget-object v7, p0, Lgnu/kawa/reflect/MethodFilter;->receiver:Lgnu/bytecode/ObjectType;

    instance-of v7, v7, Lgnu/bytecode/ClassType;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lgnu/kawa/reflect/MethodFilter;->receiver:Lgnu/bytecode/ObjectType;

    check-cast v7, Lgnu/bytecode/ClassType;

    move-object v2, v7

    .line 335
    .local v2, declaring:Lgnu/bytecode/ClassType;
    :goto_1
    iget-object v7, p0, Lgnu/kawa/reflect/MethodFilter;->caller:Lgnu/bytecode/ClassType;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lgnu/kawa/reflect/MethodFilter;->caller:Lgnu/bytecode/ClassType;

    iget-object v8, p0, Lgnu/kawa/reflect/MethodFilter;->receiver:Lgnu/bytecode/ObjectType;

    invoke-virtual {v3}, Lgnu/bytecode/Method;->getModifiers()I

    move-result v9

    invoke-virtual {v7, v2, v8, v9}, Lgnu/bytecode/ClassType;->isAccessible(Lgnu/bytecode/ClassType;Lgnu/bytecode/ObjectType;I)Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_5
    const/4 v7, 0x1

    goto :goto_0

    .line 333
    .end local v2           #declaring:Lgnu/bytecode/ClassType;
    :cond_6
    invoke-virtual {v3}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v7

    move-object v2, v7

    goto :goto_1

    .restart local v2       #declaring:Lgnu/bytecode/ClassType;
    :cond_7
    move v7, v10

    .line 335
    goto :goto_0
.end method
