.class public Lgnu/bytecode/ClassType;
.super Lgnu/bytecode/ObjectType;
.source "ClassType.java"

# interfaces
.implements Lgnu/bytecode/AttrContainer;
.implements Ljava/io/Externalizable;
.implements Lgnu/bytecode/Member;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgnu/bytecode/ClassType$AbstractMethodFilter;
    }
.end annotation


# static fields
.field public static final JDK_1_1_VERSION:I = 0x2d0003

.field public static final JDK_1_2_VERSION:I = 0x2e0000

.field public static final JDK_1_3_VERSION:I = 0x2f0000

.field public static final JDK_1_4_VERSION:I = 0x300000

.field public static final JDK_1_5_VERSION:I = 0x310000

.field public static final JDK_1_6_VERSION:I = 0x320000

.field public static final JDK_1_7_VERSION:I = 0x330000

.field public static final noClasses:[Lgnu/bytecode/ClassType;


# instance fields
.field Code_name_index:I

.field ConstantValue_name_index:I

.field LineNumberTable_name_index:I

.field LocalVariableTable_name_index:I

.field access_flags:I

.field attributes:Lgnu/bytecode/Attribute;

.field classfileFormatVersion:I

.field constants:Lgnu/bytecode/ConstantPool;

.field public constructor:Lgnu/bytecode/Method;

.field emitDebugInfo:Z

.field enclosingMember:Lgnu/bytecode/Member;

.field fields:Lgnu/bytecode/Field;

.field fields_count:I

.field firstInnerClass:Lgnu/bytecode/ClassType;

.field interfaceIndexes:[I

.field interfaces:[Lgnu/bytecode/ClassType;

.field last_field:Lgnu/bytecode/Field;

.field last_method:Lgnu/bytecode/Method;

.field methods:Lgnu/bytecode/Method;

.field methods_count:I

.field nextInnerClass:Lgnu/bytecode/ClassType;

.field sourceDbgExt:Lgnu/bytecode/SourceDebugExtAttr;

.field superClass:Lgnu/bytecode/ClassType;

.field superClassIndex:I

.field thisClassIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    new-array v0, v0, [Lgnu/bytecode/ClassType;

    sput-object v0, Lgnu/bytecode/ClassType;->noClasses:[Lgnu/bytecode/ClassType;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 479
    invoke-direct {p0}, Lgnu/bytecode/ObjectType;-><init>()V

    .line 20
    const v0, 0x2d0003

    iput v0, p0, Lgnu/bytecode/ClassType;->classfileFormatVersion:I

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Lgnu/bytecode/ClassType;->superClassIndex:I

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgnu/bytecode/ClassType;->emitDebugInfo:Z

    .line 479
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "class_name"

    .prologue
    .line 483
    invoke-direct {p0}, Lgnu/bytecode/ObjectType;-><init>()V

    .line 20
    const v0, 0x2d0003

    iput v0, p0, Lgnu/bytecode/ClassType;->classfileFormatVersion:I

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Lgnu/bytecode/ClassType;->superClassIndex:I

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgnu/bytecode/ClassType;->emitDebugInfo:Z

    .line 484
    invoke-virtual {p0, p1}, Lgnu/bytecode/ClassType;->setName(Ljava/lang/String;)V

    .line 485
    return-void
.end method

.method public static make(Ljava/lang/String;)Lgnu/bytecode/ClassType;
    .locals 0
    .parameter "name"

    .prologue
    .line 54
    invoke-static {p0}, Lgnu/bytecode/Type;->getType(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object p0

    .end local p0
    check-cast p0, Lgnu/bytecode/ClassType;

    return-object p0
.end method

.method public static make(Ljava/lang/String;Lgnu/bytecode/ClassType;)Lgnu/bytecode/ClassType;
    .locals 2
    .parameter "name"
    .parameter "superClass"

    .prologue
    .line 60
    invoke-static {p0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    .line 61
    .local v0, type:Lgnu/bytecode/ClassType;
    iget-object v1, v0, Lgnu/bytecode/ClassType;->superClass:Lgnu/bytecode/ClassType;

    if-nez v1, :cond_0

    .line 62
    invoke-virtual {v0, p1}, Lgnu/bytecode/ClassType;->setSuper(Lgnu/bytecode/ClassType;)V

    .line 63
    :cond_0
    return-object v0
.end method

.method public static to_utf8(Ljava/lang/String;)[B
    .locals 10
    .parameter "str"

    .prologue
    const/16 v9, 0x7ff

    const/16 v8, 0x7f

    .line 1195
    if-nez p0, :cond_0

    .line 1196
    const/4 v7, 0x0

    .line 1223
    :goto_0
    return-object v7

    .line 1197
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 1198
    .local v5, str_len:I
    const/4 v6, 0x0

    .line 1199
    .local v6, utf_len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v5, :cond_3

    .line 1200
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1201
    .local v1, c:I
    if-lez v1, :cond_1

    if-gt v1, v8, :cond_1

    .line 1202
    add-int/lit8 v6, v6, 0x1

    .line 1199
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1203
    :cond_1
    if-gt v1, v9, :cond_2

    .line 1204
    add-int/lit8 v6, v6, 0x2

    goto :goto_2

    .line 1206
    :cond_2
    add-int/lit8 v6, v6, 0x3

    goto :goto_2

    .line 1208
    .end local v1           #c:I
    :cond_3
    new-array v0, v6, [B

    .line 1209
    .local v0, buffer:[B
    const/4 v3, 0x0

    .line 1210
    .local v3, j:I
    const/4 v2, 0x0

    move v4, v3

    .end local v3           #j:I
    .local v4, j:I
    :goto_3
    if-ge v2, v5, :cond_6

    .line 1211
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1212
    .restart local v1       #c:I
    if-lez v1, :cond_4

    if-gt v1, v8, :cond_4

    .line 1213
    add-int/lit8 v3, v4, 0x1

    .end local v4           #j:I
    .restart local v3       #j:I
    int-to-byte v7, v1

    aput-byte v7, v0, v4

    .line 1210
    :goto_4
    add-int/lit8 v2, v2, 0x1

    move v4, v3

    .end local v3           #j:I
    .restart local v4       #j:I
    goto :goto_3

    .line 1214
    :cond_4
    if-gt v1, v9, :cond_5

    .line 1215
    add-int/lit8 v3, v4, 0x1

    .end local v4           #j:I
    .restart local v3       #j:I
    shr-int/lit8 v7, v1, 0x6

    and-int/lit8 v7, v7, 0x1f

    or-int/lit16 v7, v7, 0xc0

    int-to-byte v7, v7

    aput-byte v7, v0, v4

    .line 1216
    add-int/lit8 v4, v3, 0x1

    .end local v3           #j:I
    .restart local v4       #j:I
    shr-int/lit8 v7, v1, 0x0

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v0, v3

    move v3, v4

    .end local v4           #j:I
    .restart local v3       #j:I
    goto :goto_4

    .line 1218
    .end local v3           #j:I
    .restart local v4       #j:I
    :cond_5
    add-int/lit8 v3, v4, 0x1

    .end local v4           #j:I
    .restart local v3       #j:I
    shr-int/lit8 v7, v1, 0xc

    and-int/lit8 v7, v7, 0xf

    or-int/lit16 v7, v7, 0xe0

    int-to-byte v7, v7

    aput-byte v7, v0, v4

    .line 1219
    add-int/lit8 v4, v3, 0x1

    .end local v3           #j:I
    .restart local v4       #j:I
    shr-int/lit8 v7, v1, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v0, v3

    .line 1220
    add-int/lit8 v3, v4, 0x1

    .end local v4           #j:I
    .restart local v3       #j:I
    shr-int/lit8 v7, v1, 0x0

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v0, v4

    goto :goto_4

    .end local v1           #c:I
    .end local v3           #j:I
    .restart local v4       #j:I
    :cond_6
    move-object v7, v0

    .line 1223
    goto :goto_0
.end method


# virtual methods
.method declared-synchronized addEnclosingMember()V
    .locals 6

    .prologue
    .line 207
    monitor-enter p0

    :try_start_0
    iget v4, p0, Lgnu/bytecode/ClassType;->flags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v4, v4, 0x18

    const/16 v5, 0x10

    if-eq v4, v5, :cond_1

    .line 238
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 209
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v0

    .line 210
    .local v0, clas:Ljava/lang/Class;
    iget v4, p0, Lgnu/bytecode/ClassType;->flags:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lgnu/bytecode/ClassType;->flags:I

    .line 214
    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v1

    .line 215
    .local v1, dclas:Ljava/lang/Class;
    if-eqz v1, :cond_0

    .line 217
    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v4

    if-nez v4, :cond_3

    .line 219
    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v3

    .line 220
    .local v3, rmeth:Ljava/lang/reflect/Method;
    if-eqz v3, :cond_2

    .line 222
    invoke-virtual {p0, v3}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/reflect/Method;)Lgnu/bytecode/Method;

    move-result-object v4

    iput-object v4, p0, Lgnu/bytecode/ClassType;->enclosingMember:Lgnu/bytecode/Member;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 207
    .end local v0           #clas:Ljava/lang/Class;
    .end local v1           #dclas:Ljava/lang/Class;
    .end local v3           #rmeth:Ljava/lang/reflect/Method;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 225
    .restart local v0       #clas:Ljava/lang/Class;
    .restart local v1       #dclas:Ljava/lang/Class;
    .restart local v3       #rmeth:Ljava/lang/reflect/Method;
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 226
    .local v2, rcons:Ljava/lang/reflect/Constructor;
    if-eqz v2, :cond_3

    .line 228
    invoke-virtual {p0, v2}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/reflect/Constructor;)Lgnu/bytecode/Method;

    move-result-object v4

    iput-object v4, p0, Lgnu/bytecode/ClassType;->enclosingMember:Lgnu/bytecode/Member;

    goto :goto_0

    .line 232
    .end local v2           #rcons:Ljava/lang/reflect/Constructor;
    .end local v3           #rmeth:Ljava/lang/reflect/Method;
    :cond_3
    invoke-static {v1}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v4

    check-cast v4, Lgnu/bytecode/ClassType;

    iput-object v4, p0, Lgnu/bytecode/ClassType;->enclosingMember:Lgnu/bytecode/Member;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public addField()Lgnu/bytecode/Field;
    .locals 1

    .prologue
    .line 570
    new-instance v0, Lgnu/bytecode/Field;

    invoke-direct {v0, p0}, Lgnu/bytecode/Field;-><init>(Lgnu/bytecode/ClassType;)V

    return-object v0
.end method

.method public addField(Ljava/lang/String;)Lgnu/bytecode/Field;
    .locals 1
    .parameter "name"

    .prologue
    .line 577
    new-instance v0, Lgnu/bytecode/Field;

    invoke-direct {v0, p0}, Lgnu/bytecode/Field;-><init>(Lgnu/bytecode/ClassType;)V

    .line 578
    .local v0, field:Lgnu/bytecode/Field;
    invoke-virtual {v0, p1}, Lgnu/bytecode/Field;->setName(Ljava/lang/String;)V

    .line 579
    return-object v0
.end method

.method public final addField(Ljava/lang/String;Lgnu/bytecode/Type;)Lgnu/bytecode/Field;
    .locals 1
    .parameter "name"
    .parameter "type"

    .prologue
    .line 583
    new-instance v0, Lgnu/bytecode/Field;

    invoke-direct {v0, p0}, Lgnu/bytecode/Field;-><init>(Lgnu/bytecode/ClassType;)V

    .line 584
    .local v0, field:Lgnu/bytecode/Field;
    invoke-virtual {v0, p1}, Lgnu/bytecode/Field;->setName(Ljava/lang/String;)V

    .line 585
    invoke-virtual {v0, p2}, Lgnu/bytecode/Field;->setType(Lgnu/bytecode/Type;)V

    .line 586
    return-object v0
.end method

.method public final addField(Ljava/lang/String;Lgnu/bytecode/Type;I)Lgnu/bytecode/Field;
    .locals 1
    .parameter "name"
    .parameter "type"
    .parameter "flags"

    .prologue
    .line 591
    invoke-virtual {p0, p1, p2}, Lgnu/bytecode/ClassType;->addField(Ljava/lang/String;Lgnu/bytecode/Type;)Lgnu/bytecode/Field;

    move-result-object v0

    .line 592
    .local v0, field:Lgnu/bytecode/Field;
    iput p3, v0, Lgnu/bytecode/Field;->flags:I

    .line 593
    return-object v0
.end method

.method public declared-synchronized addFields()V
    .locals 9

    .prologue
    .line 602
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 606
    .local v0, clas:Ljava/lang/Class;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    .line 612
    .local v4, fields:[Ljava/lang/reflect/Field;
    :goto_0
    :try_start_2
    array-length v1, v4

    .line 613
    .local v1, count:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v1, :cond_1

    .line 615
    aget-object v3, v4, v5

    .line 616
    .local v3, field:Ljava/lang/reflect/Field;
    const-string v6, "this$0"

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 617
    iget v6, p0, Lgnu/bytecode/ClassType;->flags:I

    or-int/lit8 v6, v6, 0x20

    iput v6, p0, Lgnu/bytecode/ClassType;->flags:I

    .line 618
    :cond_0
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v8

    invoke-virtual {p0, v6, v7, v8}, Lgnu/bytecode/ClassType;->addField(Ljava/lang/String;Lgnu/bytecode/Type;I)Lgnu/bytecode/Field;

    .line 613
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 608
    .end local v1           #count:I
    .end local v3           #field:Ljava/lang/reflect/Field;
    .end local v4           #fields:[Ljava/lang/reflect/Field;
    .end local v5           #i:I
    :catch_0
    move-exception v2

    .line 610
    .local v2, ex:Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    .restart local v4       #fields:[Ljava/lang/reflect/Field;
    goto :goto_0

    .line 621
    .end local v2           #ex:Ljava/lang/SecurityException;
    .restart local v1       #count:I
    .restart local v5       #i:I
    :cond_1
    iget v6, p0, Lgnu/bytecode/ClassType;->flags:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lgnu/bytecode/ClassType;->flags:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 622
    monitor-exit p0

    return-void

    .line 602
    .end local v0           #clas:Ljava/lang/Class;
    .end local v1           #count:I
    .end local v4           #fields:[Ljava/lang/reflect/Field;
    .end local v5           #i:I
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public addInterface(Lgnu/bytecode/ClassType;)V
    .locals 5
    .parameter "newInterface"

    .prologue
    const/4 v4, 0x0

    .line 452
    iget-object v3, p0, Lgnu/bytecode/ClassType;->interfaces:[Lgnu/bytecode/ClassType;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lgnu/bytecode/ClassType;->interfaces:[Lgnu/bytecode/ClassType;

    array-length v3, v3

    if-nez v3, :cond_1

    .line 454
    :cond_0
    const/4 v2, 0x0

    .line 455
    .local v2, oldCount:I
    const/4 v3, 0x1

    new-array v3, v3, [Lgnu/bytecode/ClassType;

    iput-object v3, p0, Lgnu/bytecode/ClassType;->interfaces:[Lgnu/bytecode/ClassType;

    .line 467
    :goto_0
    iget-object v3, p0, Lgnu/bytecode/ClassType;->interfaces:[Lgnu/bytecode/ClassType;

    aput-object p1, v3, v2

    .line 468
    :goto_1
    return-void

    .line 459
    .end local v2           #oldCount:I
    :cond_1
    iget-object v3, p0, Lgnu/bytecode/ClassType;->interfaces:[Lgnu/bytecode/ClassType;

    array-length v2, v3

    .line 460
    .restart local v2       #oldCount:I
    move v0, v2

    .local v0, i:I
    :cond_2
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_3

    .line 461
    iget-object v3, p0, Lgnu/bytecode/ClassType;->interfaces:[Lgnu/bytecode/ClassType;

    aget-object v3, v3, v0

    if-ne v3, p1, :cond_2

    goto :goto_1

    .line 463
    :cond_3
    add-int/lit8 v3, v2, 0x1

    new-array v1, v3, [Lgnu/bytecode/ClassType;

    .line 464
    .local v1, newInterfaces:[Lgnu/bytecode/ClassType;
    iget-object v3, p0, Lgnu/bytecode/ClassType;->interfaces:[Lgnu/bytecode/ClassType;

    invoke-static {v3, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 465
    iput-object v1, p0, Lgnu/bytecode/ClassType;->interfaces:[Lgnu/bytecode/ClassType;

    goto :goto_0
.end method

.method public addMemberClass(Lgnu/bytecode/ClassType;)V
    .locals 2
    .parameter "member"

    .prologue
    .line 154
    const/4 v1, 0x0

    .line 155
    .local v1, prev:Lgnu/bytecode/ClassType;
    iget-object v0, p0, Lgnu/bytecode/ClassType;->firstInnerClass:Lgnu/bytecode/ClassType;

    .line 156
    .local v0, entry:Lgnu/bytecode/ClassType;
    :goto_0
    if-eqz v0, :cond_1

    .line 158
    if-ne v0, p1, :cond_0

    .line 167
    :goto_1
    return-void

    .line 160
    :cond_0
    move-object v1, v0

    .line 161
    iget-object v0, v0, Lgnu/bytecode/ClassType;->nextInnerClass:Lgnu/bytecode/ClassType;

    goto :goto_0

    .line 163
    :cond_1
    if-nez v1, :cond_2

    .line 164
    iput-object p1, p0, Lgnu/bytecode/ClassType;->firstInnerClass:Lgnu/bytecode/ClassType;

    goto :goto_1

    .line 166
    :cond_2
    iput-object p1, v1, Lgnu/bytecode/ClassType;->nextInnerClass:Lgnu/bytecode/ClassType;

    goto :goto_1
.end method

.method public declared-synchronized addMemberClasses()V
    .locals 7

    .prologue
    .line 242
    monitor-enter p0

    :try_start_0
    iget v5, p0, Lgnu/bytecode/ClassType;->flags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v5, v5, 0x14

    const/16 v6, 0x10

    if-eq v5, v6, :cond_1

    .line 256
    :cond_0
    monitor-exit p0

    return-void

    .line 244
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v0

    .line 245
    .local v0, clas:Ljava/lang/Class;
    iget v5, p0, Lgnu/bytecode/ClassType;->flags:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lgnu/bytecode/ClassType;->flags:I

    .line 246
    invoke-virtual {v0}, Ljava/lang/Class;->getClasses()[Ljava/lang/Class;

    move-result-object v3

    .line 247
    .local v3, memberClasses:[Ljava/lang/Class;
    array-length v4, v3

    .line 248
    .local v4, numMembers:I
    if-lez v4, :cond_0

    .line 250
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 252
    aget-object v5, v3, v1

    invoke-static {v5}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v2

    check-cast v2, Lgnu/bytecode/ClassType;

    .line 253
    .local v2, member:Lgnu/bytecode/ClassType;
    invoke-virtual {p0, v2}, Lgnu/bytecode/ClassType;->addMemberClass(Lgnu/bytecode/ClassType;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 250
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 242
    .end local v0           #clas:Ljava/lang/Class;
    .end local v1           #i:I
    .end local v2           #member:Lgnu/bytecode/ClassType;
    .end local v3           #memberClasses:[Ljava/lang/Class;
    .end local v4           #numMembers:I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method addMethod()Lgnu/bytecode/Method;
    .locals 2

    .prologue
    .line 640
    new-instance v0, Lgnu/bytecode/Method;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lgnu/bytecode/Method;-><init>(Lgnu/bytecode/ClassType;I)V

    return-object v0
.end method

.method public addMethod(Ljava/lang/String;)Lgnu/bytecode/Method;
    .locals 1
    .parameter "name"

    .prologue
    .line 644
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    return-object v0
.end method

.method public addMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;
    .locals 1
    .parameter "name"
    .parameter "flags"

    .prologue
    .line 648
    new-instance v0, Lgnu/bytecode/Method;

    invoke-direct {v0, p0, p2}, Lgnu/bytecode/Method;-><init>(Lgnu/bytecode/ClassType;I)V

    .line 649
    .local v0, method:Lgnu/bytecode/Method;
    invoke-virtual {v0, p1}, Lgnu/bytecode/Method;->setName(Ljava/lang/String;)V

    .line 650
    return-object v0
.end method

.method public declared-synchronized addMethod(Ljava/lang/String;I[Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Method;
    .locals 3
    .parameter "name"
    .parameter "flags"
    .parameter "arg_types"
    .parameter "return_type"

    .prologue
    .line 667
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v0

    .line 668
    .local v0, method:Lgnu/bytecode/Method;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lgnu/bytecode/Method;->getReturnType()Lgnu/bytecode/Type;

    move-result-object v2

    invoke-virtual {p4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v0, Lgnu/bytecode/Method;->access_flags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/2addr v2, p2

    if-ne v2, p2, :cond_0

    move-object v1, v0

    .line 675
    .end local v0           #method:Lgnu/bytecode/Method;
    .local v1, method:Lgnu/bytecode/Method;
    :goto_0
    monitor-exit p0

    return-object v1

    .line 672
    .end local v1           #method:Lgnu/bytecode/Method;
    .restart local v0       #method:Lgnu/bytecode/Method;
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    .line 673
    iput-object p3, v0, Lgnu/bytecode/Method;->arg_types:[Lgnu/bytecode/Type;

    .line 674
    iput-object p4, v0, Lgnu/bytecode/Method;->return_type:Lgnu/bytecode/Type;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v0

    .line 675
    .end local v0           #method:Lgnu/bytecode/Method;
    .restart local v1       #method:Lgnu/bytecode/Method;
    goto :goto_0

    .line 667
    .end local v1           #method:Lgnu/bytecode/Method;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public addMethod(Ljava/lang/String;Ljava/lang/String;I)Lgnu/bytecode/Method;
    .locals 1
    .parameter "name"
    .parameter "signature"
    .parameter "flags"

    .prologue
    .line 703
    invoke-virtual {p0, p1, p3}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    .line 704
    .local v0, meth:Lgnu/bytecode/Method;
    invoke-virtual {v0, p2}, Lgnu/bytecode/Method;->setSignature(Ljava/lang/String;)V

    .line 705
    return-object v0
.end method

.method public addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;
    .locals 1
    .parameter "name"
    .parameter "arg_types"
    .parameter "return_type"
    .parameter "flags"

    .prologue
    .line 657
    invoke-virtual {p0, p1, p4, p2, p3}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I[Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v0

    return-object v0
.end method

.method public addMethod(Ljava/lang/reflect/Constructor;)Lgnu/bytecode/Method;
    .locals 6
    .parameter "method"

    .prologue
    .line 692
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    .line 693
    .local v3, paramTypes:[Ljava/lang/Class;
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v2

    .line 694
    .local v2, modifiers:I
    array-length v1, v3

    .line 695
    .local v1, j:I
    new-array v0, v1, [Lgnu/bytecode/Type;

    .line 696
    .local v0, args:[Lgnu/bytecode/Type;
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    .line 697
    aget-object v4, v3, v1

    invoke-static {v4}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v4

    aput-object v4, v0, v1

    goto :goto_0

    .line 698
    :cond_0
    const-string v4, "<init>"

    sget-object v5, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, v4, v2, v0, v5}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I[Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v4

    return-object v4
.end method

.method public addMethod(Ljava/lang/reflect/Method;)Lgnu/bytecode/Method;
    .locals 6
    .parameter "method"

    .prologue
    .line 680
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    .line 681
    .local v2, modifiers:I
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    .line 682
    .local v3, paramTypes:[Ljava/lang/Class;
    array-length v1, v3

    .line 683
    .local v1, j:I
    new-array v0, v1, [Lgnu/bytecode/Type;

    .line 684
    .local v0, args:[Lgnu/bytecode/Type;
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    .line 685
    aget-object v5, v3, v1

    invoke-static {v5}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v5

    aput-object v5, v0, v1

    goto :goto_0

    .line 686
    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v4

    .line 687
    .local v4, rtype:Lgnu/bytecode/Type;
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v2, v0, v4}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I[Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v5

    return-object v5
.end method

.method public declared-synchronized addMethods(Ljava/lang/Class;)V
    .locals 7
    .parameter "clas"

    .prologue
    .line 974
    monitor-enter p0

    :try_start_0
    iget v6, p0, Lgnu/bytecode/ClassType;->flags:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lgnu/bytecode/ClassType;->flags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 979
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    .line 985
    .local v5, methods:[Ljava/lang/reflect/Method;
    :goto_0
    :try_start_2
    array-length v1, v5

    .line 986
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v1, :cond_1

    .line 988
    aget-object v4, v5, v3

    .line 989
    .local v4, method:Ljava/lang/reflect/Method;
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 986
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 981
    .end local v1           #count:I
    .end local v3           #i:I
    .end local v4           #method:Ljava/lang/reflect/Method;
    .end local v5           #methods:[Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    .line 983
    .local v2, ex:Ljava/lang/SecurityException;
    invoke-virtual {p1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    .restart local v5       #methods:[Ljava/lang/reflect/Method;
    goto :goto_0

    .line 991
    .end local v2           #ex:Ljava/lang/SecurityException;
    .restart local v1       #count:I
    .restart local v3       #i:I
    .restart local v4       #method:Ljava/lang/reflect/Method;
    :cond_0
    invoke-virtual {p0, v4}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/reflect/Method;)Lgnu/bytecode/Method;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 974
    .end local v1           #count:I
    .end local v3           #i:I
    .end local v4           #method:Ljava/lang/reflect/Method;
    .end local v5           #methods:[Ljava/lang/reflect/Method;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 997
    .restart local v1       #count:I
    .restart local v3       #i:I
    .restart local v5       #methods:[Ljava/lang/reflect/Method;
    :cond_1
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    .line 1003
    .local v0, cmethods:[Ljava/lang/reflect/Constructor;
    :goto_3
    :try_start_4
    array-length v1, v0

    .line 1004
    const/4 v3, 0x0

    :goto_4
    if-ge v3, v1, :cond_3

    .line 1006
    aget-object v4, v0, v3

    .line 1007
    .local v4, method:Ljava/lang/reflect/Constructor;
    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1004
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 999
    .end local v0           #cmethods:[Ljava/lang/reflect/Constructor;
    .end local v4           #method:Ljava/lang/reflect/Constructor;
    :catch_1
    move-exception v2

    .line 1001
    .restart local v2       #ex:Ljava/lang/SecurityException;
    invoke-virtual {p1}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    .restart local v0       #cmethods:[Ljava/lang/reflect/Constructor;
    goto :goto_3

    .line 1009
    .end local v2           #ex:Ljava/lang/SecurityException;
    .restart local v4       #method:Ljava/lang/reflect/Constructor;
    :cond_2
    invoke-virtual {p0, v4}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/reflect/Constructor;)Lgnu/bytecode/Method;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5

    .line 1011
    .end local v4           #method:Ljava/lang/reflect/Constructor;
    :cond_3
    monitor-exit p0

    return-void
.end method

.method public final addModifiers(I)V
    .locals 1
    .parameter "flags"

    .prologue
    .line 115
    iget v0, p0, Lgnu/bytecode/ClassType;->access_flags:I

    or-int/2addr v0, p1

    iput v0, p0, Lgnu/bytecode/ClassType;->access_flags:I

    return-void
.end method

.method public checkSingleAbstractMethod()Lgnu/bytecode/Method;
    .locals 9

    .prologue
    .line 1363
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getAbstractMethods()[Lgnu/bytecode/Method;

    move-result-object v2

    .line 1364
    .local v2, methods:[Lgnu/bytecode/Method;
    array-length v5, v2

    .line 1365
    .local v5, nmethods:I
    const/4 v7, 0x0

    .line 1366
    .local v7, result:Lgnu/bytecode/Method;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v5, :cond_2

    .line 1368
    aget-object v1, v2, v0

    .line 1369
    .local v1, meth:Lgnu/bytecode/Method;
    invoke-virtual {v1}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1370
    .local v4, mname:Ljava/lang/String;
    invoke-virtual {v1}, Lgnu/bytecode/Method;->getParameterTypes()[Lgnu/bytecode/Type;

    move-result-object v6

    .line 1372
    .local v6, ptypes:[Lgnu/bytecode/Type;
    invoke-virtual {p0, v4, v6}, Lgnu/bytecode/ClassType;->getMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v3

    .line 1373
    .local v3, mimpl:Lgnu/bytecode/Method;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lgnu/bytecode/Method;->isAbstract()Z

    move-result v8

    if-nez v8, :cond_0

    .line 1366
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1375
    :cond_0
    if-eqz v7, :cond_1

    .line 1376
    const/4 v8, 0x0

    .line 1379
    .end local v1           #meth:Lgnu/bytecode/Method;
    .end local v3           #mimpl:Lgnu/bytecode/Method;
    .end local v4           #mname:Ljava/lang/String;
    .end local v6           #ptypes:[Lgnu/bytecode/Type;
    :goto_2
    return-object v8

    .line 1377
    .restart local v1       #meth:Lgnu/bytecode/Method;
    .restart local v3       #mimpl:Lgnu/bytecode/Method;
    .restart local v4       #mname:Ljava/lang/String;
    .restart local v6       #ptypes:[Lgnu/bytecode/Type;
    :cond_1
    move-object v7, v1

    goto :goto_1

    .end local v1           #meth:Lgnu/bytecode/Method;
    .end local v3           #mimpl:Lgnu/bytecode/Method;
    .end local v4           #mname:Ljava/lang/String;
    .end local v6           #ptypes:[Lgnu/bytecode/Type;
    :cond_2
    move-object v8, v7

    .line 1379
    goto :goto_2
.end method

.method public cleanupAfterCompilation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1346
    iget-object v0, p0, Lgnu/bytecode/ClassType;->methods:Lgnu/bytecode/Method;

    .local v0, meth:Lgnu/bytecode/Method;
    :goto_0
    if-eqz v0, :cond_0

    .line 1347
    invoke-virtual {v0}, Lgnu/bytecode/Method;->cleanupAfterCompilation()V

    .line 1346
    invoke-virtual {v0}, Lgnu/bytecode/Method;->getNext()Lgnu/bytecode/Method;

    move-result-object v0

    goto :goto_0

    .line 1349
    :cond_0
    iput-object v1, p0, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    .line 1350
    iput-object v1, p0, Lgnu/bytecode/ClassType;->attributes:Lgnu/bytecode/Attribute;

    .line 1351
    iput-object v1, p0, Lgnu/bytecode/ClassType;->sourceDbgExt:Lgnu/bytecode/SourceDebugExtAttr;

    .line 1352
    return-void
.end method

.method public compare(Lgnu/bytecode/Type;)I
    .locals 7
    .parameter "other"

    .prologue
    const/4 v6, -0x2

    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 1282
    sget-object v3, Lgnu/bytecode/ClassType;->nullType:Lgnu/bytecode/ObjectType;

    if-ne p1, v3, :cond_0

    move v3, v4

    .line 1302
    :goto_0
    return v3

    .line 1284
    :cond_0
    instance-of v3, p1, Lgnu/bytecode/ClassType;

    if-nez v3, :cond_1

    .line 1285
    invoke-virtual {p1, p0}, Lgnu/bytecode/Type;->compare(Lgnu/bytecode/Type;)I

    move-result v3

    invoke-static {v3}, Lgnu/bytecode/ClassType;->swappedCompareResult(I)I

    move-result v3

    goto :goto_0

    .line 1286
    :cond_1
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1287
    .local v2, name:Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1288
    const/4 v3, 0x0

    goto :goto_0

    .line 1289
    :cond_2
    move-object v0, p1

    check-cast v0, Lgnu/bytecode/ClassType;

    move-object v1, v0

    .line 1290
    .local v1, cother:Lgnu/bytecode/ClassType;
    invoke-virtual {p0, v1}, Lgnu/bytecode/ClassType;->isSubclass(Lgnu/bytecode/ClassType;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v5

    .line 1291
    goto :goto_0

    .line 1292
    :cond_3
    invoke-virtual {v1, p0}, Lgnu/bytecode/ClassType;->isSubclass(Lgnu/bytecode/ClassType;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v4

    .line 1293
    goto :goto_0

    .line 1294
    :cond_4
    sget-object v3, Lgnu/bytecode/ClassType;->toStringType:Lgnu/bytecode/ClassType;

    if-ne p0, v3, :cond_6

    .line 1295
    sget-object v3, Lgnu/bytecode/Type;->javalangObjectType:Lgnu/bytecode/ClassType;

    if-ne v1, v3, :cond_5

    move v3, v5

    goto :goto_0

    :cond_5
    move v3, v4

    goto :goto_0

    .line 1296
    :cond_6
    sget-object v3, Lgnu/bytecode/ClassType;->toStringType:Lgnu/bytecode/ClassType;

    if-ne v1, v3, :cond_8

    .line 1297
    sget-object v3, Lgnu/bytecode/Type;->javalangObjectType:Lgnu/bytecode/ClassType;

    if-ne p0, v3, :cond_7

    move v3, v4

    goto :goto_0

    :cond_7
    move v3, v5

    goto :goto_0

    .line 1298
    :cond_8
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->isInterface()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1299
    sget-object v3, Lgnu/bytecode/Type;->javalangObjectType:Lgnu/bytecode/ClassType;

    if-ne v1, v3, :cond_9

    move v3, v5

    goto :goto_0

    :cond_9
    move v3, v6

    goto :goto_0

    .line 1300
    :cond_a
    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->isInterface()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1301
    sget-object v3, Lgnu/bytecode/Type;->javalangObjectType:Lgnu/bytecode/ClassType;

    if-ne p0, v3, :cond_b

    move v3, v4

    goto :goto_0

    :cond_b
    move v3, v6

    goto :goto_0

    .line 1302
    :cond_c
    const/4 v3, -0x3

    goto :goto_0
.end method

.method public final countMethods(Lgnu/bytecode/Filter;I)I
    .locals 2
    .parameter "filter"
    .parameter "searchSupers"

    .prologue
    .line 738
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 739
    .local v0, vec:Ljava/util/Vector;
    invoke-virtual {p0, p1, p2, v0}, Lgnu/bytecode/ClassType;->getMethods(Lgnu/bytecode/Filter;ILjava/util/List;)I

    .line 740
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    return v1
.end method

.method public doFixups()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 1041
    iget-object v11, p0, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    if-nez v11, :cond_0

    .line 1042
    new-instance v11, Lgnu/bytecode/ConstantPool;

    invoke-direct {v11}, Lgnu/bytecode/ConstantPool;-><init>()V

    iput-object v11, p0, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    .line 1043
    :cond_0
    iget v11, p0, Lgnu/bytecode/ClassType;->thisClassIndex:I

    if-nez v11, :cond_1

    .line 1044
    iget-object v11, p0, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    invoke-virtual {v11, p0}, Lgnu/bytecode/ConstantPool;->addClass(Lgnu/bytecode/ObjectType;)Lgnu/bytecode/CpoolClass;

    move-result-object v11

    iget v11, v11, Lgnu/bytecode/CpoolClass;->index:I

    iput v11, p0, Lgnu/bytecode/ClassType;->thisClassIndex:I

    .line 1045
    :cond_1
    iget-object v11, p0, Lgnu/bytecode/ClassType;->superClass:Lgnu/bytecode/ClassType;

    if-ne v11, p0, :cond_2

    .line 1046
    const/4 v11, 0x0

    check-cast v11, Lgnu/bytecode/ClassType;

    invoke-virtual {p0, v11}, Lgnu/bytecode/ClassType;->setSuper(Lgnu/bytecode/ClassType;)V

    .line 1047
    :cond_2
    iget v11, p0, Lgnu/bytecode/ClassType;->superClassIndex:I

    if-gez v11, :cond_3

    .line 1048
    iget-object v11, p0, Lgnu/bytecode/ClassType;->superClass:Lgnu/bytecode/ClassType;

    if-nez v11, :cond_4

    move v11, v14

    :goto_0
    iput v11, p0, Lgnu/bytecode/ClassType;->superClassIndex:I

    .line 1050
    :cond_3
    iget-object v11, p0, Lgnu/bytecode/ClassType;->interfaces:[Lgnu/bytecode/ClassType;

    if-eqz v11, :cond_5

    iget-object v11, p0, Lgnu/bytecode/ClassType;->interfaceIndexes:[I

    if-nez v11, :cond_5

    .line 1052
    iget-object v11, p0, Lgnu/bytecode/ClassType;->interfaces:[Lgnu/bytecode/ClassType;

    array-length v10, v11

    .line 1053
    .local v10, n:I
    new-array v11, v10, [I

    iput-object v11, p0, Lgnu/bytecode/ClassType;->interfaceIndexes:[I

    .line 1054
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v10, :cond_5

    .line 1055
    iget-object v11, p0, Lgnu/bytecode/ClassType;->interfaceIndexes:[I

    iget-object v12, p0, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    iget-object v13, p0, Lgnu/bytecode/ClassType;->interfaces:[Lgnu/bytecode/ClassType;

    aget-object v13, v13, v6

    invoke-virtual {v12, v13}, Lgnu/bytecode/ConstantPool;->addClass(Lgnu/bytecode/ObjectType;)Lgnu/bytecode/CpoolClass;

    move-result-object v12

    iget v12, v12, Lgnu/bytecode/CpoolClass;->index:I

    aput v12, v11, v6

    .line 1054
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1048
    .end local v6           #i:I
    .end local v10           #n:I
    :cond_4
    iget-object v11, p0, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    iget-object v12, p0, Lgnu/bytecode/ClassType;->superClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v11, v12}, Lgnu/bytecode/ConstantPool;->addClass(Lgnu/bytecode/ObjectType;)Lgnu/bytecode/CpoolClass;

    move-result-object v11

    iget v11, v11, Lgnu/bytecode/CpoolClass;->index:I

    goto :goto_0

    .line 1057
    :cond_5
    iget-object v5, p0, Lgnu/bytecode/ClassType;->fields:Lgnu/bytecode/Field;

    .local v5, field:Lgnu/bytecode/Field;
    :goto_2
    if-eqz v5, :cond_6

    .line 1058
    invoke-virtual {v5, p0}, Lgnu/bytecode/Field;->assign_constants(Lgnu/bytecode/ClassType;)V

    .line 1057
    iget-object v5, v5, Lgnu/bytecode/Field;->next:Lgnu/bytecode/Field;

    goto :goto_2

    .line 1060
    :cond_6
    iget-object v9, p0, Lgnu/bytecode/ClassType;->methods:Lgnu/bytecode/Method;

    .local v9, method:Lgnu/bytecode/Method;
    :goto_3
    if-eqz v9, :cond_7

    .line 1061
    invoke-virtual {v9}, Lgnu/bytecode/Method;->assignConstants()V

    .line 1060
    iget-object v9, v9, Lgnu/bytecode/Method;->next:Lgnu/bytecode/Method;

    goto :goto_3

    .line 1062
    :cond_7
    iget-object v11, p0, Lgnu/bytecode/ClassType;->enclosingMember:Lgnu/bytecode/Member;

    instance-of v11, v11, Lgnu/bytecode/Method;

    if-eqz v11, :cond_a

    .line 1064
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getAttributes()Lgnu/bytecode/Attribute;

    move-result-object v11

    invoke-static {v11}, Lgnu/bytecode/EnclosingMethodAttr;->getFirstEnclosingMethod(Lgnu/bytecode/Attribute;)Lgnu/bytecode/EnclosingMethodAttr;

    move-result-object v1

    .line 1066
    .local v1, attr:Lgnu/bytecode/EnclosingMethodAttr;
    if-nez v1, :cond_8

    .line 1067
    new-instance v1, Lgnu/bytecode/EnclosingMethodAttr;

    .end local v1           #attr:Lgnu/bytecode/EnclosingMethodAttr;
    invoke-direct {v1, p0}, Lgnu/bytecode/EnclosingMethodAttr;-><init>(Lgnu/bytecode/ClassType;)V

    .line 1068
    .restart local v1       #attr:Lgnu/bytecode/EnclosingMethodAttr;
    :cond_8
    iget-object v11, p0, Lgnu/bytecode/ClassType;->enclosingMember:Lgnu/bytecode/Member;

    check-cast v11, Lgnu/bytecode/Method;

    iput-object v11, v1, Lgnu/bytecode/EnclosingMethodAttr;->method:Lgnu/bytecode/Method;

    .line 1072
    .end local v1           #attr:Lgnu/bytecode/EnclosingMethodAttr;
    :cond_9
    :goto_4
    iget-object v8, p0, Lgnu/bytecode/ClassType;->firstInnerClass:Lgnu/bytecode/ClassType;

    .local v8, member:Lgnu/bytecode/ClassType;
    :goto_5
    if-eqz v8, :cond_b

    .line 1075
    iget-object v11, p0, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    invoke-virtual {v11, v8}, Lgnu/bytecode/ConstantPool;->addClass(Lgnu/bytecode/ObjectType;)Lgnu/bytecode/CpoolClass;

    .line 1073
    iget-object v8, v8, Lgnu/bytecode/ClassType;->nextInnerClass:Lgnu/bytecode/ClassType;

    goto :goto_5

    .line 1070
    .end local v8           #member:Lgnu/bytecode/ClassType;
    :cond_a
    iget-object v11, p0, Lgnu/bytecode/ClassType;->enclosingMember:Lgnu/bytecode/Member;

    instance-of v11, v11, Lgnu/bytecode/ClassType;

    if-eqz v11, :cond_9

    .line 1071
    iget-object v12, p0, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    iget-object v11, p0, Lgnu/bytecode/ClassType;->enclosingMember:Lgnu/bytecode/Member;

    check-cast v11, Lgnu/bytecode/ClassType;

    invoke-virtual {v12, v11}, Lgnu/bytecode/ConstantPool;->addClass(Lgnu/bytecode/ObjectType;)Lgnu/bytecode/CpoolClass;

    goto :goto_4

    .line 1078
    .restart local v8       #member:Lgnu/bytecode/ClassType;
    :cond_b
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getAttributes()Lgnu/bytecode/Attribute;

    move-result-object v11

    invoke-static {v11}, Lgnu/bytecode/InnerClassesAttr;->getFirstInnerClasses(Lgnu/bytecode/Attribute;)Lgnu/bytecode/InnerClassesAttr;

    move-result-object v7

    .line 1080
    .local v7, innerAttr:Lgnu/bytecode/InnerClassesAttr;
    if-eqz v7, :cond_c

    .line 1083
    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Lgnu/bytecode/InnerClassesAttr;->setSkipped(Z)V

    .line 1086
    :cond_c
    invoke-static {p0, p0}, Lgnu/bytecode/Attribute;->assignConstants(Lgnu/bytecode/AttrContainer;Lgnu/bytecode/ClassType;)V

    .line 1092
    const/4 v6, 0x1

    .restart local v6       #i:I
    :goto_6
    iget-object v11, p0, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    iget v11, v11, Lgnu/bytecode/ConstantPool;->count:I

    if-gt v6, v11, :cond_10

    .line 1094
    iget-object v11, p0, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    iget-object v11, v11, Lgnu/bytecode/ConstantPool;->pool:[Lgnu/bytecode/CpoolEntry;

    aget-object v4, v11, v6

    .line 1095
    .local v4, entry:Lgnu/bytecode/CpoolEntry;
    instance-of v11, v4, Lgnu/bytecode/CpoolClass;

    if-nez v11, :cond_e

    .line 1092
    :cond_d
    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 1097
    :cond_e
    move-object v0, v4

    check-cast v0, Lgnu/bytecode/CpoolClass;

    move-object v2, v0

    .line 1098
    .local v2, centry:Lgnu/bytecode/CpoolClass;
    iget-object v11, v2, Lgnu/bytecode/CpoolClass;->clas:Lgnu/bytecode/ObjectType;

    instance-of v11, v11, Lgnu/bytecode/ClassType;

    if-eqz v11, :cond_d

    .line 1100
    iget-object v3, v2, Lgnu/bytecode/CpoolClass;->clas:Lgnu/bytecode/ObjectType;

    check-cast v3, Lgnu/bytecode/ClassType;

    .line 1101
    .local v3, ctype:Lgnu/bytecode/ClassType;
    invoke-virtual {v3}, Lgnu/bytecode/ClassType;->getEnclosingMember()Lgnu/bytecode/Member;

    move-result-object v11

    if-eqz v11, :cond_d

    .line 1103
    if-nez v7, :cond_f

    .line 1104
    new-instance v7, Lgnu/bytecode/InnerClassesAttr;

    .end local v7           #innerAttr:Lgnu/bytecode/InnerClassesAttr;
    invoke-direct {v7, p0}, Lgnu/bytecode/InnerClassesAttr;-><init>(Lgnu/bytecode/ClassType;)V

    .line 1105
    .restart local v7       #innerAttr:Lgnu/bytecode/InnerClassesAttr;
    :cond_f
    invoke-virtual {v7, v2, p0}, Lgnu/bytecode/InnerClassesAttr;->addClass(Lgnu/bytecode/CpoolClass;Lgnu/bytecode/ClassType;)V

    goto :goto_7

    .line 1108
    .end local v2           #centry:Lgnu/bytecode/CpoolClass;
    .end local v3           #ctype:Lgnu/bytecode/ClassType;
    .end local v4           #entry:Lgnu/bytecode/CpoolEntry;
    :cond_10
    if-eqz v7, :cond_11

    .line 1110
    invoke-virtual {v7, v14}, Lgnu/bytecode/InnerClassesAttr;->setSkipped(Z)V

    .line 1111
    invoke-virtual {v7, p0}, Lgnu/bytecode/InnerClassesAttr;->assignConstants(Lgnu/bytecode/ClassType;)V

    .line 1113
    :cond_11
    return-void
.end method

.method public getAbstractMethods()[Lgnu/bytecode/Method;
    .locals 2

    .prologue
    .line 868
    sget-object v0, Lgnu/bytecode/ClassType$AbstractMethodFilter;->instance:Lgnu/bytecode/ClassType$AbstractMethodFilter;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lgnu/bytecode/ClassType;->getMethods(Lgnu/bytecode/Filter;I)[Lgnu/bytecode/Method;

    move-result-object v0

    return-object v0
.end method

.method public final getAttributes()Lgnu/bytecode/Attribute;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lgnu/bytecode/ClassType;->attributes:Lgnu/bytecode/Attribute;

    return-object v0
.end method

.method public getClassfileMajorVersion()S
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lgnu/bytecode/ClassType;->classfileFormatVersion:I

    shr-int/lit8 v0, v0, 0x10

    int-to-short v0, v0

    return v0
.end method

.method public getClassfileMinorVersion()S
    .locals 2

    .prologue
    .line 28
    iget v0, p0, Lgnu/bytecode/ClassType;->classfileFormatVersion:I

    const v1, 0xffff

    and-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public getClassfileVersion()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lgnu/bytecode/ClassType;->classfileFormatVersion:I

    return v0
.end method

.method public final getConstant(I)Lgnu/bytecode/CpoolEntry;
    .locals 1
    .parameter "i"

    .prologue
    .line 94
    iget-object v0, p0, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    iget-object v0, v0, Lgnu/bytecode/ConstantPool;->pool:[Lgnu/bytecode/CpoolEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    iget v0, v0, Lgnu/bytecode/ConstantPool;->count:I

    if-le p1, v0, :cond_1

    .line 96
    :cond_0
    const/4 v0, 0x0

    .line 97
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    iget-object v0, v0, Lgnu/bytecode/ConstantPool;->pool:[Lgnu/bytecode/CpoolEntry;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public final getConstants()Lgnu/bytecode/ConstantPool;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    return-object v0
.end method

.method public getDeclaredClass(Ljava/lang/String;)Lgnu/bytecode/ClassType;
    .locals 2
    .parameter "simpleName"

    .prologue
    .line 171
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->addMemberClasses()V

    .line 172
    iget-object v0, p0, Lgnu/bytecode/ClassType;->firstInnerClass:Lgnu/bytecode/ClassType;

    .local v0, member:Lgnu/bytecode/ClassType;
    :goto_0
    if-eqz v0, :cond_1

    .line 175
    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 178
    :goto_1
    return-object v1

    .line 173
    :cond_0
    iget-object v0, v0, Lgnu/bytecode/ClassType;->nextInnerClass:Lgnu/bytecode/ClassType;

    goto :goto_0

    .line 178
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;
    .locals 2
    .parameter "name"

    .prologue
    .line 520
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getFields()Lgnu/bytecode/Field;

    move-result-object v0

    .local v0, field:Lgnu/bytecode/Field;
    :goto_0
    if-eqz v0, :cond_1

    .line 522
    iget-object v1, v0, Lgnu/bytecode/Field;->name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 525
    :goto_1
    return-object v1

    .line 520
    :cond_0
    iget-object v0, v0, Lgnu/bytecode/Field;->next:Lgnu/bytecode/Field;

    goto :goto_0

    .line 525
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public declared-synchronized getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;
    .locals 6
    .parameter "name"
    .parameter "argCount"

    .prologue
    .line 913
    monitor-enter p0

    const/4 v2, 0x0

    .line 914
    .local v2, result:Lgnu/bytecode/Method;
    :try_start_0
    const-string v3, "<init>"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->hasOuterLink()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    move v1, v3

    .line 915
    .local v1, needOuterLinkArg:I
    :goto_0
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getDeclaredMethods()Lgnu/bytecode/Method;

    move-result-object v0

    .line 916
    .local v0, method:Lgnu/bytecode/Method;
    :goto_1
    if-eqz v0, :cond_3

    .line 918
    invoke-virtual {v0}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int v3, p2, v1

    invoke-virtual {v0}, Lgnu/bytecode/Method;->getParameterTypes()[Lgnu/bytecode/Type;

    move-result-object v4

    array-length v4, v4

    if-ne v3, v4, :cond_2

    .line 921
    if-eqz v2, :cond_1

    .line 922
    new-instance v3, Ljava/lang/Error;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ambiguous call to getDeclaredMethod(\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")\n - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 913
    .end local v0           #method:Lgnu/bytecode/Method;
    .end local v1           #needOuterLinkArg:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 914
    :cond_0
    const/4 v3, 0x0

    move v1, v3

    goto :goto_0

    .line 925
    .restart local v0       #method:Lgnu/bytecode/Method;
    .restart local v1       #needOuterLinkArg:I
    :cond_1
    move-object v2, v0

    .line 916
    :cond_2
    :try_start_1
    iget-object v0, v0, Lgnu/bytecode/Method;->next:Lgnu/bytecode/Method;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 928
    :cond_3
    monitor-exit p0

    return-object v2
.end method

.method public getDeclaredMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;
    .locals 9
    .parameter "name"
    .parameter "arg_types"

    .prologue
    .line 880
    const-string v8, "<init>"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->hasOuterLink()Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    move v5, v8

    .line 881
    .local v5, needOuterLinkArg:I
    :goto_0
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getDeclaredMethods()Lgnu/bytecode/Method;

    move-result-object v3

    .line 882
    .local v3, method:Lgnu/bytecode/Method;
    :goto_1
    if-eqz v3, :cond_7

    .line 884
    invoke-virtual {v3}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 882
    :cond_0
    iget-object v3, v3, Lgnu/bytecode/Method;->next:Lgnu/bytecode/Method;

    goto :goto_1

    .line 880
    .end local v3           #method:Lgnu/bytecode/Method;
    .end local v5           #needOuterLinkArg:I
    :cond_1
    const/4 v8, 0x0

    move v5, v8

    goto :goto_0

    .line 886
    .restart local v3       #method:Lgnu/bytecode/Method;
    .restart local v5       #needOuterLinkArg:I
    :cond_2
    invoke-virtual {v3}, Lgnu/bytecode/Method;->getParameterTypes()[Lgnu/bytecode/Type;

    move-result-object v4

    .line 887
    .local v4, method_args:[Lgnu/bytecode/Type;
    if-eqz p2, :cond_3

    if-ne p2, v4, :cond_4

    if-nez v5, :cond_4

    :cond_3
    move-object v8, v3

    .line 907
    .end local v4           #method_args:[Lgnu/bytecode/Type;
    :goto_2
    return-object v8

    .line 890
    .restart local v4       #method_args:[Lgnu/bytecode/Type;
    :cond_4
    array-length v0, p2

    .line 891
    .local v0, i:I
    array-length v8, v4

    sub-int/2addr v8, v5

    if-ne v0, v8, :cond_0

    .line 893
    :cond_5
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_6

    .line 895
    add-int v8, v0, v5

    aget-object v2, v4, v8

    .line 896
    .local v2, meth_type:Lgnu/bytecode/Type;
    aget-object v7, p2, v0

    .line 897
    .local v7, need_type:Lgnu/bytecode/Type;
    if-eq v2, v7, :cond_5

    if-eqz v7, :cond_5

    .line 899
    invoke-virtual {v2}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v1

    .line 900
    .local v1, meth_sig:Ljava/lang/String;
    invoke-virtual {v7}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v6

    .line 901
    .local v6, need_sig:Ljava/lang/String;
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 904
    .end local v1           #meth_sig:Ljava/lang/String;
    .end local v2           #meth_type:Lgnu/bytecode/Type;
    .end local v6           #need_sig:Ljava/lang/String;
    .end local v7           #need_type:Lgnu/bytecode/Type;
    :cond_6
    if-gez v0, :cond_0

    move-object v8, v3

    .line 905
    goto :goto_2

    .line 907
    .end local v0           #i:I
    .end local v4           #method_args:[Lgnu/bytecode/Type;
    :cond_7
    const/4 v8, 0x0

    goto :goto_2
.end method

.method public final declared-synchronized getDeclaredMethods()Lgnu/bytecode/Method;
    .locals 2

    .prologue
    .line 724
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lgnu/bytecode/ClassType;->flags:I

    and-int/lit8 v0, v0, 0x12

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 725
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassType;->addMethods(Ljava/lang/Class;)V

    .line 726
    :cond_0
    iget-object v0, p0, Lgnu/bytecode/ClassType;->methods:Lgnu/bytecode/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 724
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDeclaringClass()Lgnu/bytecode/ClassType;
    .locals 1

    .prologue
    .line 187
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->addEnclosingMember()V

    .line 188
    iget-object v0, p0, Lgnu/bytecode/ClassType;->enclosingMember:Lgnu/bytecode/Member;

    instance-of v0, v0, Lgnu/bytecode/ClassType;

    if-eqz v0, :cond_0

    .line 189
    iget-object p0, p0, Lgnu/bytecode/ClassType;->enclosingMember:Lgnu/bytecode/Member;

    .end local p0
    check-cast p0, Lgnu/bytecode/ClassType;

    move-object v0, p0

    .line 191
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEnclosingMember()Lgnu/bytecode/Member;
    .locals 1

    .prologue
    .line 196
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->addEnclosingMember()V

    .line 197
    iget-object v0, p0, Lgnu/bytecode/ClassType;->enclosingMember:Lgnu/bytecode/Member;

    return-object v0
.end method

.method public getField(Ljava/lang/String;)Lgnu/bytecode/Field;
    .locals 1
    .parameter "name"

    .prologue
    .line 564
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lgnu/bytecode/ClassType;->getField(Ljava/lang/String;I)Lgnu/bytecode/Field;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getField(Ljava/lang/String;I)Lgnu/bytecode/Field;
    .locals 5
    .parameter "name"
    .parameter "mask"

    .prologue
    .line 536
    monitor-enter p0

    move-object v0, p0

    .line 539
    .local v0, cl:Lgnu/bytecode/ClassType;
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v1

    .line 540
    .local v1, field:Lgnu/bytecode/Field;
    if-eqz v1, :cond_2

    const/4 v4, -0x1

    if-eq p2, v4, :cond_1

    invoke-virtual {v1}, Lgnu/bytecode/Field;->getModifiers()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    and-int/2addr v4, p2

    if-eqz v4, :cond_2

    :cond_1
    move-object v4, v1

    .line 555
    :goto_0
    monitor-exit p0

    return-object v4

    .line 543
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getInterfaces()[Lgnu/bytecode/ClassType;

    move-result-object v3

    .line 544
    .local v3, interfaces:[Lgnu/bytecode/ClassType;
    if-eqz v3, :cond_4

    .line 546
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v4, v3

    if-ge v2, v4, :cond_4

    .line 548
    aget-object v4, v3, v2

    invoke-virtual {v4, p1, p2}, Lgnu/bytecode/ClassType;->getField(Ljava/lang/String;I)Lgnu/bytecode/Field;

    move-result-object v1

    .line 549
    if-eqz v1, :cond_3

    move-object v4, v1

    .line 550
    goto :goto_0

    .line 546
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 553
    .end local v2           #i:I
    :cond_4
    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getSuperclass()Lgnu/bytecode/ClassType;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 554
    if-nez v0, :cond_0

    .line 555
    const/4 v4, 0x0

    goto :goto_0

    .line 536
    .end local v1           #field:Lgnu/bytecode/Field;
    .end local v3           #interfaces:[Lgnu/bytecode/ClassType;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public final getFieldCount()I
    .locals 1

    .prologue
    .line 512
    iget v0, p0, Lgnu/bytecode/ClassType;->fields_count:I

    return v0
.end method

.method public final declared-synchronized getFields()Lgnu/bytecode/Field;
    .locals 2

    .prologue
    .line 505
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lgnu/bytecode/ClassType;->flags:I

    and-int/lit8 v0, v0, 0x11

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 506
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->addFields()V

    .line 507
    :cond_0
    iget-object v0, p0, Lgnu/bytecode/ClassType;->fields:Lgnu/bytecode/Field;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 505
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getInterfaces()[Lgnu/bytecode/ClassType;
    .locals 5

    .prologue
    .line 431
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lgnu/bytecode/ClassType;->interfaces:[Lgnu/bytecode/ClassType;

    if-nez v3, :cond_1

    iget v3, p0, Lgnu/bytecode/ClassType;->flags:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 434
    iget-object v3, p0, Lgnu/bytecode/ClassType;->reflectClass:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    .line 435
    .local v2, reflectInterfaces:[Ljava/lang/Class;
    array-length v1, v2

    .line 436
    .local v1, numInterfaces:I
    if-nez v1, :cond_0

    sget-object v3, Lgnu/bytecode/ClassType;->noClasses:[Lgnu/bytecode/ClassType;

    :goto_0
    iput-object v3, p0, Lgnu/bytecode/ClassType;->interfaces:[Lgnu/bytecode/ClassType;

    .line 439
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 440
    iget-object v4, p0, Lgnu/bytecode/ClassType;->interfaces:[Lgnu/bytecode/ClassType;

    aget-object v3, v2, v0

    invoke-static {v3}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v3

    check-cast v3, Lgnu/bytecode/ClassType;

    aput-object v3, v4, v0

    .line 439
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 436
    .end local v0           #i:I
    :cond_0
    new-array v3, v1, [Lgnu/bytecode/ClassType;

    goto :goto_0

    .line 442
    .end local v1           #numInterfaces:I
    .end local v2           #reflectInterfaces:[Ljava/lang/Class;
    :cond_1
    iget-object v3, p0, Lgnu/bytecode/ClassType;->interfaces:[Lgnu/bytecode/ClassType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v3

    .line 431
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getMatchingMethods(Ljava/lang/String;[Lgnu/bytecode/Type;I)[Lgnu/bytecode/Method;
    .locals 7
    .parameter "name"
    .parameter "paramTypes"
    .parameter "flags"

    .prologue
    .line 1015
    const/4 v3, 0x0

    .line 1016
    .local v3, nMatches:I
    new-instance v0, Ljava/util/Vector;

    const/16 v5, 0xa

    invoke-direct {v0, v5}, Ljava/util/Vector;-><init>(I)V

    .line 1017
    .local v0, matches:Ljava/util/Vector;
    iget-object v1, p0, Lgnu/bytecode/ClassType;->methods:Lgnu/bytecode/Method;

    .local v1, method:Lgnu/bytecode/Method;
    :goto_0
    if-eqz v1, :cond_2

    .line 1019
    invoke-virtual {v1}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1017
    :cond_0
    :goto_1
    invoke-virtual {v1}, Lgnu/bytecode/Method;->getNext()Lgnu/bytecode/Method;

    move-result-object v1

    goto :goto_0

    .line 1021
    :cond_1
    and-int/lit8 v5, p3, 0x8

    iget v6, v1, Lgnu/bytecode/Method;->access_flags:I

    and-int/lit8 v6, v6, 0x8

    if-ne v5, v6, :cond_0

    .line 1023
    and-int/lit8 v5, p3, 0x1

    iget v6, v1, Lgnu/bytecode/Method;->access_flags:I

    and-int/lit8 v6, v6, 0x1

    if-gt v5, v6, :cond_0

    .line 1025
    iget-object v2, v1, Lgnu/bytecode/Method;->arg_types:[Lgnu/bytecode/Type;

    .line 1026
    .local v2, mtypes:[Lgnu/bytecode/Type;
    array-length v5, v2

    array-length v6, p2

    if-ne v5, v6, :cond_0

    .line 1028
    add-int/lit8 v3, v3, 0x1

    .line 1029
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    .line 1031
    .end local v2           #mtypes:[Lgnu/bytecode/Type;
    :cond_2
    new-array v4, v3, [Lgnu/bytecode/Method;

    .line 1032
    .local v4, result:[Lgnu/bytecode/Method;
    invoke-virtual {v0, v4}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 1033
    return-object v4
.end method

.method public declared-synchronized getMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;
    .locals 5
    .parameter "name"
    .parameter "arg_types"

    .prologue
    .line 933
    monitor-enter p0

    move-object v0, p0

    .line 936
    .local v0, cl:Lgnu/bytecode/ClassType;
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1, p2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 937
    .local v3, method:Lgnu/bytecode/Method;
    if-eqz v3, :cond_1

    move-object v4, v3

    .line 961
    :goto_0
    monitor-exit p0

    return-object v4

    .line 939
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getSuperclass()Lgnu/bytecode/ClassType;

    move-result-object v0

    .line 940
    if-nez v0, :cond_0

    .line 943
    move-object v0, p0

    .line 946
    :cond_2
    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getInterfaces()[Lgnu/bytecode/ClassType;

    move-result-object v2

    .line 947
    .local v2, interfaces:[Lgnu/bytecode/ClassType;
    if-eqz v2, :cond_4

    .line 949
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v4, v2

    if-ge v1, v4, :cond_4

    .line 951
    aget-object v4, v2, v1

    invoke-virtual {v4, p1, p2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v3

    .line 953
    if-eqz v3, :cond_3

    move-object v4, v3

    .line 954
    goto :goto_0

    .line 949
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 957
    .end local v1           #i:I
    :cond_4
    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getSuperclass()Lgnu/bytecode/ClassType;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 958
    if-nez v0, :cond_2

    .line 961
    const/4 v4, 0x0

    goto :goto_0

    .line 933
    .end local v2           #interfaces:[Lgnu/bytecode/ClassType;
    .end local v3           #method:Lgnu/bytecode/Method;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public getMethod(Ljava/lang/reflect/Method;)Lgnu/bytecode/Method;
    .locals 6
    .parameter "method"

    .prologue
    .line 713
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    .line 714
    .local v1, name:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    .line 715
    .local v2, parameterClasses:[Ljava/lang/Class;
    array-length v4, v2

    new-array v3, v4, [Lgnu/bytecode/Type;

    .line 716
    .local v3, parameterTypes:[Lgnu/bytecode/Type;
    array-length v0, v2

    .local v0, i:I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 717
    aget-object v4, v2, v0

    invoke-static {v4}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v4

    aput-object v4, v3, v0

    goto :goto_0

    .line 718
    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v5

    invoke-virtual {p0, v1, v4, v3, v5}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I[Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v4

    return-object v4
.end method

.method public final getMethodCount()I
    .locals 1

    .prologue
    .line 636
    iget v0, p0, Lgnu/bytecode/ClassType;->methods_count:I

    return v0
.end method

.method public getMethods(Lgnu/bytecode/Filter;ILjava/util/List;)I
    .locals 9
    .parameter "filter"
    .parameter "searchSupers"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/bytecode/Filter;",
            "I",
            "Ljava/util/List",
            "<",
            "Lgnu/bytecode/Method;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 803
    .local p3, result:Ljava/util/List;,"Ljava/util/List<Lgnu/bytecode/Method;>;"
    const/4 v0, 0x0

    .line 804
    .local v0, count:I
    const/4 v4, 0x0

    .line 805
    .local v4, inheritingPackage:Ljava/lang/String;
    move-object v1, p0

    .local v1, ctype:Lgnu/bytecode/ClassType;
    :goto_0
    if-eqz v1, :cond_5

    .line 808
    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 809
    .local v2, curPackage:Ljava/lang/String;
    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->getDeclaredMethods()Lgnu/bytecode/Method;

    move-result-object v6

    .line 810
    .local v6, meth:Lgnu/bytecode/Method;
    :goto_1
    if-eqz v6, :cond_4

    .line 812
    if-eq v1, p0, :cond_2

    .line 814
    invoke-virtual {v6}, Lgnu/bytecode/Method;->getModifiers()I

    move-result v7

    .line 815
    .local v7, mmods:I
    and-int/lit8 v8, v7, 0x2

    if-eqz v8, :cond_1

    .line 810
    .end local v7           #mmods:I
    :cond_0
    :goto_2
    invoke-virtual {v6}, Lgnu/bytecode/Method;->getNext()Lgnu/bytecode/Method;

    move-result-object v6

    goto :goto_1

    .line 817
    .restart local v7       #mmods:I
    :cond_1
    and-int/lit8 v8, v7, 0x5

    if-nez v8, :cond_2

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 821
    .end local v7           #mmods:I
    :cond_2
    invoke-interface {p1, v6}, Lgnu/bytecode/Filter;->select(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 823
    if-eqz p3, :cond_3

    .line 826
    invoke-interface {p3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 831
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 835
    :cond_4
    move-object v4, v2

    .line 837
    if-nez p2, :cond_6

    .line 851
    .end local v2           #curPackage:Ljava/lang/String;
    .end local v6           #meth:Lgnu/bytecode/Method;
    :cond_5
    return v0

    .line 840
    .restart local v2       #curPackage:Ljava/lang/String;
    .restart local v6       #meth:Lgnu/bytecode/Method;
    :cond_6
    const/4 v8, 0x1

    if-le p2, v8, :cond_7

    .line 842
    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->getInterfaces()[Lgnu/bytecode/ClassType;

    move-result-object v5

    .line 843
    .local v5, interfaces:[Lgnu/bytecode/ClassType;
    if-eqz v5, :cond_7

    .line 845
    const/4 v3, 0x0

    .local v3, i:I
    :goto_3
    array-length v8, v5

    if-ge v3, v8, :cond_7

    .line 846
    aget-object v8, v5, v3

    invoke-virtual {v8, p1, p2, p3}, Lgnu/bytecode/ClassType;->getMethods(Lgnu/bytecode/Filter;ILjava/util/List;)I

    move-result v8

    add-int/2addr v0, v8

    .line 845
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 806
    .end local v3           #i:I
    .end local v5           #interfaces:[Lgnu/bytecode/ClassType;
    :cond_7
    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->getSuperclass()Lgnu/bytecode/ClassType;

    move-result-object v1

    goto :goto_0
.end method

.method public getMethods(Lgnu/bytecode/Filter;I[Lgnu/bytecode/Method;I)I
    .locals 4
    .parameter "filter"
    .parameter "searchSupers"
    .parameter "result"
    .parameter "offset"

    .prologue
    .line 779
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 780
    .local v2, vec:Ljava/util/Vector;,"Ljava/util/Vector<Lgnu/bytecode/Method;>;"
    invoke-virtual {p0, p1, p2, v2}, Lgnu/bytecode/ClassType;->getMethods(Lgnu/bytecode/Filter;ILjava/util/List;)I

    .line 781
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    .line 782
    .local v0, count:I
    const/4 v1, 0x0

    .end local p0
    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 783
    add-int v3, p4, v1

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgnu/bytecode/Method;

    aput-object p0, p3, v3

    .line 782
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 784
    :cond_0
    return v0
.end method

.method public final getMethods()Lgnu/bytecode/Method;
    .locals 1

    .prologue
    .line 632
    iget-object v0, p0, Lgnu/bytecode/ClassType;->methods:Lgnu/bytecode/Method;

    return-object v0
.end method

.method public getMethods(Lgnu/bytecode/Filter;I)[Lgnu/bytecode/Method;
    .locals 4
    .parameter "filter"
    .parameter "searchSupers"

    .prologue
    .line 757
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 758
    .local v3, vec:Ljava/util/Vector;,"Ljava/util/Vector<Lgnu/bytecode/Method;>;"
    invoke-virtual {p0, p1, p2, v3}, Lgnu/bytecode/ClassType;->getMethods(Lgnu/bytecode/Filter;ILjava/util/List;)I

    .line 759
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    .line 760
    .local v0, count:I
    new-array v2, v0, [Lgnu/bytecode/Method;

    .line 761
    .local v2, result:[Lgnu/bytecode/Method;
    const/4 v1, 0x0

    .end local p0
    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 762
    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgnu/bytecode/Method;

    aput-object p0, v2, v1

    .line 761
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 763
    :cond_0
    return-object v2
.end method

.method public getMethods(Lgnu/bytecode/Filter;Z)[Lgnu/bytecode/Method;
    .locals 1
    .parameter "filter"
    .parameter "searchSupers"

    .prologue
    .line 745
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0}, Lgnu/bytecode/ClassType;->getMethods(Lgnu/bytecode/Filter;I)[Lgnu/bytecode/Method;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final declared-synchronized getModifiers()I
    .locals 1

    .prologue
    .line 103
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lgnu/bytecode/ClassType;->access_flags:I

    if-nez v0, :cond_0

    iget v0, p0, Lgnu/bytecode/ClassType;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lgnu/bytecode/ClassType;->reflectClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    iput v0, p0, Lgnu/bytecode/ClassType;->access_flags:I

    .line 106
    :cond_0
    iget v0, p0, Lgnu/bytecode/ClassType;->access_flags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getOuterLinkType()Lgnu/bytecode/ClassType;
    .locals 1

    .prologue
    .line 266
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->hasOuterLink()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    const-string v0, "this$0"

    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/bytecode/Field;->getType()Lgnu/bytecode/Type;

    move-result-object p0

    .end local p0
    check-cast p0, Lgnu/bytecode/ClassType;

    move-object v0, p0

    goto :goto_0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 420
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v1

    .line 421
    .local v1, name:Ljava/lang/String;
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 422
    .local v0, index:I
    if-gez v0, :cond_0

    const-string v2, ""

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public declared-synchronized getSimpleName()Ljava/lang/String;
    .locals 7

    .prologue
    .line 120
    monitor-enter p0

    :try_start_0
    iget v6, p0, Lgnu/bytecode/ClassType;->flags:I

    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    if-eqz v6, :cond_0

    .line 124
    :try_start_1
    iget-object v6, p0, Lgnu/bytecode/ClassType;->reflectClass:Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    .line 149
    :goto_0
    monitor-exit p0

    return-object v6

    .line 126
    :catch_0
    move-exception v6

    .line 130
    :cond_0
    :try_start_2
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v4

    .line 131
    .local v4, name:Ljava/lang/String;
    const/16 v6, 0x2e

    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 132
    .local v2, dot:I
    if-lez v2, :cond_1

    .line 133
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 134
    :cond_1
    const/16 v6, 0x24

    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 135
    .local v1, dollar:I
    if-ltz v1, :cond_3

    .line 137
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 138
    .local v3, len:I
    add-int/lit8 v5, v1, 0x1

    .line 139
    .local v5, start:I
    :goto_1
    if-ge v5, v3, :cond_2

    .line 141
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 142
    .local v0, ch:C
    const/16 v6, 0x30

    if-lt v0, v6, :cond_2

    const/16 v6, 0x39

    if-gt v0, v6, :cond_2

    .line 143
    add-int/lit8 v5, v5, 0x1

    .line 146
    goto :goto_1

    .line 147
    .end local v0           #ch:C
    :cond_2
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    .end local v3           #len:I
    .end local v5           #start:I
    :cond_3
    move-object v6, v4

    .line 149
    goto :goto_0

    .line 120
    .end local v1           #dollar:I
    .end local v2           #dot:I
    .end local v4           #name:Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public final getStaticFlag()Z
    .locals 1

    .prologue
    .line 110
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getModifiers()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized getSuperclass()Lgnu/bytecode/ClassType;
    .locals 2

    .prologue
    .line 408
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgnu/bytecode/ClassType;->superClass:Lgnu/bytecode/ClassType;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->isInterface()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "java.lang.Object"

    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lgnu/bytecode/ClassType;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lgnu/bytecode/ClassType;->reflectClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v0

    check-cast v0, Lgnu/bytecode/ClassType;

    iput-object v0, p0, Lgnu/bytecode/ClassType;->superClass:Lgnu/bytecode/ClassType;

    .line 415
    :cond_0
    iget-object v0, p0, Lgnu/bytecode/ClassType;->superClass:Lgnu/bytecode/ClassType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 408
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final hasOuterLink()Z
    .locals 1

    .prologue
    .line 260
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getFields()Lgnu/bytecode/Field;

    .line 261
    iget v0, p0, Lgnu/bytecode/ClassType;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final implementsInterface(Lgnu/bytecode/ClassType;)Z
    .locals 5
    .parameter "iface"

    .prologue
    const/4 v4, 0x1

    .line 1229
    if-ne p0, p1, :cond_0

    move v3, v4

    .line 1243
    :goto_0
    return v3

    .line 1231
    :cond_0
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getSuperclass()Lgnu/bytecode/ClassType;

    move-result-object v0

    .line 1232
    .local v0, baseClass:Lgnu/bytecode/ClassType;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lgnu/bytecode/ClassType;->implementsInterface(Lgnu/bytecode/ClassType;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    .line 1233
    goto :goto_0

    .line 1234
    :cond_1
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getInterfaces()[Lgnu/bytecode/ClassType;

    move-result-object v2

    .line 1235
    .local v2, interfaces:[Lgnu/bytecode/ClassType;
    if-eqz v2, :cond_3

    .line 1237
    array-length v1, v2

    .local v1, i:I
    :cond_2
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_3

    .line 1239
    aget-object v3, v2, v1

    invoke-virtual {v3, p1}, Lgnu/bytecode/ClassType;->implementsInterface(Lgnu/bytecode/ClassType;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    .line 1240
    goto :goto_0

    .line 1243
    .end local v1           #i:I
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isAccessible(Lgnu/bytecode/ClassType;Lgnu/bytecode/ObjectType;I)Z
    .locals 10
    .parameter "declaring"
    .parameter "receiver"
    .parameter "modifiers"

    .prologue
    const/16 v9, 0x2e

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 328
    invoke-virtual {p1}, Lgnu/bytecode/ClassType;->getModifiers()I

    move-result v4

    .line 330
    .local v4, cmods:I
    and-int/lit8 v6, p3, 0x1

    if-eqz v6, :cond_0

    and-int/lit8 v6, v4, 0x1

    if-eqz v6, :cond_0

    move v6, v8

    .line 351
    .end local p2
    :goto_0
    return v6

    .line 332
    .restart local p2
    :cond_0
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v0

    .line 333
    .local v0, callerName:Ljava/lang/String;
    invoke-virtual {p1}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v2

    .line 334
    .local v2, className:Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v8

    .line 335
    goto :goto_0

    .line 336
    :cond_1
    and-int/lit8 v6, p3, 0x2

    if-eqz v6, :cond_2

    move v6, v7

    .line 337
    goto :goto_0

    .line 338
    :cond_2
    invoke-virtual {v0, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .line 339
    .local v5, dot:I
    if-ltz v5, :cond_3

    invoke-virtual {v0, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    .line 340
    .local v1, callerPackage:Ljava/lang/String;
    :goto_1
    invoke-virtual {v2, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .line 341
    if-ltz v5, :cond_4

    invoke-virtual {v2, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 342
    .local v3, classPackage:Ljava/lang/String;
    :goto_2
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    move v6, v8

    .line 343
    goto :goto_0

    .line 339
    .end local v1           #callerPackage:Ljava/lang/String;
    .end local v3           #classPackage:Ljava/lang/String;
    :cond_3
    const-string v6, ""

    move-object v1, v6

    goto :goto_1

    .line 341
    .restart local v1       #callerPackage:Ljava/lang/String;
    :cond_4
    const-string v6, ""

    move-object v3, v6

    goto :goto_2

    .line 344
    .restart local v3       #classPackage:Ljava/lang/String;
    :cond_5
    and-int/lit8 v6, v4, 0x1

    if-nez v6, :cond_6

    move v6, v7

    .line 345
    goto :goto_0

    .line 346
    :cond_6
    and-int/lit8 v6, p3, 0x4

    if-eqz v6, :cond_8

    invoke-virtual {p0, p1}, Lgnu/bytecode/ClassType;->isSubclass(Lgnu/bytecode/ClassType;)Z

    move-result v6

    if-eqz v6, :cond_8

    instance-of v6, p2, Lgnu/bytecode/ClassType;

    if-eqz v6, :cond_7

    check-cast p2, Lgnu/bytecode/ClassType;

    .end local p2
    invoke-virtual {p2, p0}, Lgnu/bytecode/ClassType;->isSubclass(Lgnu/bytecode/ClassType;)Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_7
    move v6, v8

    .line 350
    goto :goto_0

    :cond_8
    move v6, v7

    .line 351
    goto :goto_0
.end method

.method public isAccessible(Lgnu/bytecode/Member;Lgnu/bytecode/ObjectType;)Z
    .locals 2
    .parameter "member"
    .parameter "receiver"

    .prologue
    .line 312
    invoke-interface {p1}, Lgnu/bytecode/Member;->getStaticFlag()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    const/4 p2, 0x0

    .line 314
    :cond_0
    invoke-interface {p1}, Lgnu/bytecode/Member;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v0

    invoke-interface {p1}, Lgnu/bytecode/Member;->getModifiers()I

    move-result v1

    invoke-virtual {p0, v0, p2, v1}, Lgnu/bytecode/ClassType;->isAccessible(Lgnu/bytecode/ClassType;Lgnu/bytecode/ObjectType;I)Z

    move-result v0

    return v0
.end method

.method public final isInterface()Z
    .locals 1

    .prologue
    .line 471
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getModifiers()I

    move-result v0

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isSubclass(Lgnu/bytecode/ClassType;)Z
    .locals 3
    .parameter "other"

    .prologue
    const/4 v2, 0x1

    .line 1265
    invoke-virtual {p1}, Lgnu/bytecode/ClassType;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1266
    invoke-virtual {p0, p1}, Lgnu/bytecode/ClassType;->implementsInterface(Lgnu/bytecode/ClassType;)Z

    move-result v1

    .line 1277
    :goto_0
    return v1

    .line 1267
    :cond_0
    sget-object v1, Lgnu/bytecode/ClassType;->toStringType:Lgnu/bytecode/ClassType;

    if-ne p0, v1, :cond_1

    sget-object v1, Lgnu/bytecode/ClassType;->javalangStringType:Lgnu/bytecode/ClassType;

    if-eq p1, v1, :cond_2

    :cond_1
    sget-object v1, Lgnu/bytecode/ClassType;->javalangStringType:Lgnu/bytecode/ClassType;

    if-ne p0, v1, :cond_3

    sget-object v1, Lgnu/bytecode/ClassType;->toStringType:Lgnu/bytecode/ClassType;

    if-ne p1, v1, :cond_3

    :cond_2
    move v1, v2

    .line 1269
    goto :goto_0

    .line 1270
    :cond_3
    move-object v0, p0

    .line 1271
    .local v0, baseClass:Lgnu/bytecode/ClassType;
    :goto_1
    if-eqz v0, :cond_5

    .line 1273
    if-ne v0, p1, :cond_4

    move v1, v2

    .line 1274
    goto :goto_0

    .line 1275
    :cond_4
    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getSuperclass()Lgnu/bytecode/ClassType;

    move-result-object v0

    goto :goto_1

    .line 1277
    :cond_5
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final isSubclass(Ljava/lang/String;)Z
    .locals 2
    .parameter "cname"

    .prologue
    .line 1252
    move-object v0, p0

    .line 1255
    .local v0, ctype:Lgnu/bytecode/ClassType;
    :cond_0
    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1256
    const/4 v1, 0x1

    .line 1259
    :goto_0
    return v1

    .line 1257
    :cond_1
    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getSuperclass()Lgnu/bytecode/ClassType;

    move-result-object v0

    .line 1258
    if-nez v0, :cond_0

    .line 1259
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1321
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassType;->setName(Ljava/lang/String;)V

    .line 1322
    iget v0, p0, Lgnu/bytecode/ClassType;->flags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lgnu/bytecode/ClassType;->flags:I

    .line 1323
    return-void
.end method

.method public readResolve()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 1327
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1329
    .local v2, name:Ljava/lang/String;
    sget-object v1, Lgnu/bytecode/ClassType;->mapNameToType:Ljava/util/HashMap;

    .line 1333
    .local v1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lgnu/bytecode/Type;>;"
    monitor-enter v1

    .line 1335
    :try_start_0
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/bytecode/Type;

    .line 1336
    .local v0, found:Lgnu/bytecode/Type;
    if-eqz v0, :cond_0

    .line 1337
    monitor-exit v1

    move-object v3, v0

    .line 1340
    :goto_0
    return-object v3

    .line 1338
    :cond_0
    invoke-virtual {v1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1339
    monitor-exit v1

    move-object v3, p0

    .line 1340
    goto :goto_0

    .line 1339
    .end local v0           #found:Lgnu/bytecode/Type;
    :catchall_0
    move-exception v3

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public final setAttributes(Lgnu/bytecode/Attribute;)V
    .locals 0
    .parameter "attributes"

    .prologue
    .line 82
    iput-object p1, p0, Lgnu/bytecode/ClassType;->attributes:Lgnu/bytecode/Attribute;

    return-void
.end method

.method public setClassfileVersion(I)V
    .locals 0
    .parameter "code"

    .prologue
    .line 36
    iput p1, p0, Lgnu/bytecode/ClassType;->classfileFormatVersion:I

    .line 37
    return-void
.end method

.method public setClassfileVersion(II)V
    .locals 3
    .parameter "major"
    .parameter "minor"

    .prologue
    const v2, 0xffff

    .line 32
    and-int v0, p1, v2

    const/high16 v1, 0x1

    mul-int/2addr v0, v1

    mul-int v1, p2, v2

    add-int/2addr v0, v1

    iput v0, p0, Lgnu/bytecode/ClassType;->classfileFormatVersion:I

    .line 33
    return-void
.end method

.method public setClassfileVersionJava5()V
    .locals 1

    .prologue
    .line 44
    const/high16 v0, 0x31

    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassType;->setClassfileVersion(I)V

    .line 45
    return-void
.end method

.method public setEnclosingMember(Lgnu/bytecode/Member;)V
    .locals 0
    .parameter "member"

    .prologue
    .line 202
    iput-object p1, p0, Lgnu/bytecode/ClassType;->enclosingMember:Lgnu/bytecode/Member;

    .line 203
    return-void
.end method

.method public final setInterface(Z)V
    .locals 1
    .parameter "val"

    .prologue
    .line 475
    if-eqz p1, :cond_0

    iget v0, p0, Lgnu/bytecode/ClassType;->access_flags:I

    or-int/lit16 v0, v0, 0x600

    iput v0, p0, Lgnu/bytecode/ClassType;->access_flags:I

    .line 477
    :goto_0
    return-void

    .line 476
    :cond_0
    iget v0, p0, Lgnu/bytecode/ClassType;->access_flags:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lgnu/bytecode/ClassType;->access_flags:I

    goto :goto_0
.end method

.method public setInterfaces([Lgnu/bytecode/ClassType;)V
    .locals 0
    .parameter "interfaces"

    .prologue
    .line 446
    iput-object p1, p0, Lgnu/bytecode/ClassType;->interfaces:[Lgnu/bytecode/ClassType;

    return-void
.end method

.method public final setModifiers(I)V
    .locals 0
    .parameter "flags"

    .prologue
    .line 114
    iput p1, p0, Lgnu/bytecode/ClassType;->access_flags:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 359
    iput-object p1, p0, Lgnu/bytecode/ClassType;->this_name:Ljava/lang/String;

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassType;->setSignature(Ljava/lang/String;)V

    .line 361
    return-void
.end method

.method public final setOuterLink(Lgnu/bytecode/ClassType;)Lgnu/bytecode/Field;
    .locals 7
    .parameter "outer"

    .prologue
    const/4 v6, 0x0

    .line 278
    iget v4, p0, Lgnu/bytecode/ClassType;->flags:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_0

    .line 279
    new-instance v4, Ljava/lang/Error;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setOuterLink called for existing class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v4

    .line 280
    :cond_0
    const-string v4, "this$0"

    invoke-virtual {p0, v4}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v1

    .line 281
    .local v1, field:Lgnu/bytecode/Field;
    if-nez v1, :cond_3

    .line 283
    const-string v4, "this$0"

    invoke-virtual {p0, v4, p1}, Lgnu/bytecode/ClassType;->addField(Ljava/lang/String;Lgnu/bytecode/Type;)Lgnu/bytecode/Field;

    move-result-object v1

    .line 284
    iget v4, p0, Lgnu/bytecode/ClassType;->flags:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Lgnu/bytecode/ClassType;->flags:I

    .line 285
    iget-object v2, p0, Lgnu/bytecode/ClassType;->methods:Lgnu/bytecode/Method;

    .local v2, meth:Lgnu/bytecode/Method;
    :goto_0
    if-eqz v2, :cond_4

    .line 287
    const-string v4, "<init>"

    invoke-virtual {v2}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 289
    iget-object v4, v2, Lgnu/bytecode/Method;->code:Lgnu/bytecode/CodeAttr;

    if-eqz v4, :cond_1

    .line 290
    new-instance v4, Ljava/lang/Error;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setOuterLink called when "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has code"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v4

    .line 291
    :cond_1
    iget-object v0, v2, Lgnu/bytecode/Method;->arg_types:[Lgnu/bytecode/Type;

    .line 292
    .local v0, arg_types:[Lgnu/bytecode/Type;
    array-length v4, v0

    add-int/lit8 v4, v4, 0x1

    new-array v3, v4, [Lgnu/bytecode/Type;

    .line 293
    .local v3, new_types:[Lgnu/bytecode/Type;
    const/4 v4, 0x1

    array-length v5, v0

    invoke-static {v0, v6, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 294
    aput-object p1, v3, v6

    .line 295
    iput-object v3, v2, Lgnu/bytecode/Method;->arg_types:[Lgnu/bytecode/Type;

    .line 296
    const/4 v4, 0x0

    iput-object v4, v2, Lgnu/bytecode/Method;->signature:Ljava/lang/String;

    .line 285
    .end local v0           #arg_types:[Lgnu/bytecode/Type;
    .end local v3           #new_types:[Lgnu/bytecode/Type;
    :cond_2
    invoke-virtual {v2}, Lgnu/bytecode/Method;->getNext()Lgnu/bytecode/Method;

    move-result-object v2

    goto :goto_0

    .line 300
    .end local v2           #meth:Lgnu/bytecode/Method;
    :cond_3
    invoke-virtual {v1}, Lgnu/bytecode/Field;->getType()Lgnu/bytecode/Type;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 301
    new-instance v4, Ljava/lang/Error;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "inconsistent setOuterLink call for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v4

    .line 302
    :cond_4
    return-object v1
.end method

.method public setSourceFile(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 378
    iget-object v1, p0, Lgnu/bytecode/ClassType;->sourceDbgExt:Lgnu/bytecode/SourceDebugExtAttr;

    if-eqz v1, :cond_0

    .line 380
    iget-object v1, p0, Lgnu/bytecode/ClassType;->sourceDbgExt:Lgnu/bytecode/SourceDebugExtAttr;

    invoke-virtual {v1, p1}, Lgnu/bytecode/SourceDebugExtAttr;->addFile(Ljava/lang/String;)V

    .line 381
    iget-object v1, p0, Lgnu/bytecode/ClassType;->sourceDbgExt:Lgnu/bytecode/SourceDebugExtAttr;

    iget v1, v1, Lgnu/bytecode/SourceDebugExtAttr;->fileCount:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 390
    :goto_0
    return-void

    .line 385
    :cond_0
    invoke-static {p1}, Lgnu/bytecode/SourceFileAttr;->fixSourceFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 386
    const/16 v1, 0x2f

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 387
    .local v0, slash:I
    if-ltz v0, :cond_1

    .line 388
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 389
    :cond_1
    invoke-static {p0, p1}, Lgnu/bytecode/SourceFileAttr;->setSourceFile(Lgnu/bytecode/ClassType;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setStratum(Ljava/lang/String;)V
    .locals 1
    .parameter "stratum"

    .prologue
    .line 370
    iget-object v0, p0, Lgnu/bytecode/ClassType;->sourceDbgExt:Lgnu/bytecode/SourceDebugExtAttr;

    if-nez v0, :cond_0

    .line 371
    new-instance v0, Lgnu/bytecode/SourceDebugExtAttr;

    invoke-direct {v0, p0}, Lgnu/bytecode/SourceDebugExtAttr;-><init>(Lgnu/bytecode/ClassType;)V

    iput-object v0, p0, Lgnu/bytecode/ClassType;->sourceDbgExt:Lgnu/bytecode/SourceDebugExtAttr;

    .line 372
    :cond_0
    iget-object v0, p0, Lgnu/bytecode/ClassType;->sourceDbgExt:Lgnu/bytecode/SourceDebugExtAttr;

    invoke-virtual {v0, p1}, Lgnu/bytecode/SourceDebugExtAttr;->addStratum(Ljava/lang/String;)V

    .line 373
    return-void
.end method

.method public setSuper(Lgnu/bytecode/ClassType;)V
    .locals 0
    .parameter "superClass"

    .prologue
    .line 403
    iput-object p1, p0, Lgnu/bytecode/ClassType;->superClass:Lgnu/bytecode/ClassType;

    .line 404
    return-void
.end method

.method public setSuper(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 398
    if-nez p1, :cond_0

    sget-object v0, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    :goto_0
    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassType;->setSuper(Lgnu/bytecode/ClassType;)V

    .line 399
    return-void

    .line 398
    :cond_0
    invoke-static {p1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClassType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1315
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 1316
    return-void
.end method

.method public writeToArray()[B
    .locals 4

    .prologue
    .line 1176
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x1f4

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1179
    .local v1, stream:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-virtual {p0, v1}, Lgnu/bytecode/ClassType;->writeToStream(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1185
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2

    .line 1181
    :catch_0
    move-exception v0

    .line 1183
    .local v0, ex:Ljava/io/IOException;
    new-instance v2, Ljava/lang/InternalError;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public writeToFile()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgnu/bytecode/ClassType;->this_name:Ljava/lang/String;

    const/16 v2, 0x2e

    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".class"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassType;->writeToFile(Ljava/lang/String;)V

    .line 1172
    return-void
.end method

.method public writeToFile(Ljava/lang/String;)V
    .locals 2
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1162
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1164
    .local v0, stream:Ljava/io/OutputStream;
    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassType;->writeToStream(Ljava/io/OutputStream;)V

    .line 1165
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 1166
    return-void
.end method

.method public writeToStream(Ljava/io/OutputStream;)V
    .locals 6
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1118
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1121
    .local v0, dstr:Ljava/io/DataOutputStream;
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->doFixups()V

    .line 1123
    const v5, -0x35014542

    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1124
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getClassfileMinorVersion()S

    move-result v5

    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1125
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getClassfileMajorVersion()S

    move-result v5

    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1128
    iget-object v5, p0, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    if-nez v5, :cond_1

    .line 1129
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1133
    :goto_0
    iget v5, p0, Lgnu/bytecode/ClassType;->access_flags:I

    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1134
    iget v5, p0, Lgnu/bytecode/ClassType;->thisClassIndex:I

    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1135
    iget v5, p0, Lgnu/bytecode/ClassType;->superClassIndex:I

    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1136
    iget-object v5, p0, Lgnu/bytecode/ClassType;->interfaceIndexes:[I

    if-nez v5, :cond_2

    .line 1137
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1146
    :cond_0
    iget v5, p0, Lgnu/bytecode/ClassType;->fields_count:I

    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1147
    iget-object v1, p0, Lgnu/bytecode/ClassType;->fields:Lgnu/bytecode/Field;

    .local v1, field:Lgnu/bytecode/Field;
    :goto_1
    if-eqz v1, :cond_3

    .line 1148
    invoke-virtual {v1, v0, p0}, Lgnu/bytecode/Field;->write(Ljava/io/DataOutputStream;Lgnu/bytecode/ClassType;)V

    .line 1147
    iget-object v1, v1, Lgnu/bytecode/Field;->next:Lgnu/bytecode/Field;

    goto :goto_1

    .line 1131
    .end local v1           #field:Lgnu/bytecode/Field;
    :cond_1
    iget-object v5, p0, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    invoke-virtual {v5, v0}, Lgnu/bytecode/ConstantPool;->write(Ljava/io/DataOutputStream;)V

    goto :goto_0

    .line 1140
    :cond_2
    iget-object v5, p0, Lgnu/bytecode/ClassType;->interfaceIndexes:[I

    array-length v3, v5

    .line 1141
    .local v3, interfaces_count:I
    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1142
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v3, :cond_0

    .line 1143
    iget-object v5, p0, Lgnu/bytecode/ClassType;->interfaceIndexes:[I

    aget v5, v5, v2

    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1142
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1150
    .end local v2           #i:I
    .end local v3           #interfaces_count:I
    .restart local v1       #field:Lgnu/bytecode/Field;
    :cond_3
    iget v5, p0, Lgnu/bytecode/ClassType;->methods_count:I

    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1151
    iget-object v4, p0, Lgnu/bytecode/ClassType;->methods:Lgnu/bytecode/Method;

    .local v4, method:Lgnu/bytecode/Method;
    :goto_3
    if-eqz v4, :cond_4

    .line 1152
    invoke-virtual {v4, v0, p0}, Lgnu/bytecode/Method;->write(Ljava/io/DataOutputStream;Lgnu/bytecode/ClassType;)V

    .line 1151
    iget-object v4, v4, Lgnu/bytecode/Method;->next:Lgnu/bytecode/Method;

    goto :goto_3

    .line 1154
    :cond_4
    invoke-static {p0, v0}, Lgnu/bytecode/Attribute;->writeAll(Lgnu/bytecode/AttrContainer;Ljava/io/DataOutputStream;)V

    .line 1156
    iget v5, p0, Lgnu/bytecode/ClassType;->flags:I

    or-int/lit8 v5, v5, 0x3

    iput v5, p0, Lgnu/bytecode/ClassType;->flags:I

    .line 1157
    return-void
.end method
