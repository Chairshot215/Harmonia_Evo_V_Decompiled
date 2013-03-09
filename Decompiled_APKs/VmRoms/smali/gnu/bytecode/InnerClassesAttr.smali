.class public Lgnu/bytecode/InnerClassesAttr;
.super Lgnu/bytecode/Attribute;
.source "InnerClassesAttr.java"


# instance fields
.field count:I

.field data:[S


# direct methods
.method public constructor <init>(Lgnu/bytecode/ClassType;)V
    .locals 1
    .parameter "cl"

    .prologue
    .line 14
    const-string v0, "InnerClasses"

    invoke-direct {p0, v0}, Lgnu/bytecode/Attribute;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0, p1}, Lgnu/bytecode/InnerClassesAttr;->addToFrontOf(Lgnu/bytecode/AttrContainer;)V

    .line 16
    return-void
.end method

.method public constructor <init>([SLgnu/bytecode/ClassType;)V
    .locals 1
    .parameter "data"
    .parameter "cl"

    .prologue
    .line 20
    invoke-direct {p0, p2}, Lgnu/bytecode/InnerClassesAttr;-><init>(Lgnu/bytecode/ClassType;)V

    .line 21
    array-length v0, p1

    shr-int/lit8 v0, v0, 0x2

    int-to-short v0, v0

    iput v0, p0, Lgnu/bytecode/InnerClassesAttr;->count:I

    .line 22
    iput-object p1, p0, Lgnu/bytecode/InnerClassesAttr;->data:[S

    .line 23
    return-void
.end method

.method public static getFirstInnerClasses(Lgnu/bytecode/Attribute;)Lgnu/bytecode/InnerClassesAttr;
    .locals 1
    .parameter "attr"

    .prologue
    .line 29
    :goto_0
    if-eqz p0, :cond_0

    instance-of v0, p0, Lgnu/bytecode/InnerClassesAttr;

    if-eqz v0, :cond_1

    .line 30
    :cond_0
    check-cast p0, Lgnu/bytecode/InnerClassesAttr;

    .end local p0
    return-object p0

    .line 27
    .restart local p0
    :cond_1
    iget-object p0, p0, Lgnu/bytecode/Attribute;->next:Lgnu/bytecode/Attribute;

    goto :goto_0
.end method


# virtual methods
.method addClass(Lgnu/bytecode/CpoolClass;Lgnu/bytecode/ClassType;)V
    .locals 11
    .parameter "centry"
    .parameter "owner"

    .prologue
    const/4 v10, 0x0

    .line 39
    iget v8, p0, Lgnu/bytecode/InnerClassesAttr;->count:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lgnu/bytecode/InnerClassesAttr;->count:I

    mul-int/lit8 v3, v8, 0x4

    .line 40
    .local v3, i:I
    iget-object v8, p0, Lgnu/bytecode/InnerClassesAttr;->data:[S

    if-nez v8, :cond_2

    .line 41
    const/16 v8, 0x10

    new-array v8, v8, [S

    iput-object v8, p0, Lgnu/bytecode/InnerClassesAttr;->data:[S

    .line 48
    :cond_0
    :goto_0
    iget-object v1, p2, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    .line 49
    .local v1, constants:Lgnu/bytecode/ConstantPool;
    invoke-virtual {p1}, Lgnu/bytecode/CpoolClass;->getClassType()Lgnu/bytecode/ObjectType;

    move-result-object v0

    check-cast v0, Lgnu/bytecode/ClassType;

    .line 51
    .local v0, clas:Lgnu/bytecode/ClassType;
    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    .line 52
    .local v4, name:Ljava/lang/String;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_3

    :cond_1
    move v5, v10

    .line 54
    .local v5, name_index:I
    :goto_1
    iget-object v8, p0, Lgnu/bytecode/InnerClassesAttr;->data:[S

    iget v9, p1, Lgnu/bytecode/CpoolClass;->index:I

    int-to-short v9, v9

    aput-short v9, v8, v3

    .line 55
    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v6

    .line 56
    .local v6, outer:Lgnu/bytecode/ClassType;
    iget-object v8, p0, Lgnu/bytecode/InnerClassesAttr;->data:[S

    add-int/lit8 v9, v3, 0x1

    if-nez v6, :cond_4

    :goto_2
    aput-short v10, v8, v9

    .line 58
    iget-object v8, p0, Lgnu/bytecode/InnerClassesAttr;->data:[S

    add-int/lit8 v9, v3, 0x2

    int-to-short v10, v5

    aput-short v10, v8, v9

    .line 59
    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getModifiers()I

    move-result v2

    .line 60
    .local v2, flags:I
    and-int/lit8 v2, v2, -0x21

    .line 61
    iget-object v8, p0, Lgnu/bytecode/InnerClassesAttr;->data:[S

    add-int/lit8 v9, v3, 0x3

    int-to-short v10, v2

    aput-short v10, v8, v9

    .line 62
    return-void

    .line 42
    .end local v0           #clas:Lgnu/bytecode/ClassType;
    .end local v1           #constants:Lgnu/bytecode/ConstantPool;
    .end local v2           #flags:I
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #name_index:I
    .end local v6           #outer:Lgnu/bytecode/ClassType;
    :cond_2
    iget-object v8, p0, Lgnu/bytecode/InnerClassesAttr;->data:[S

    array-length v8, v8

    if-lt v3, v8, :cond_0

    .line 44
    mul-int/lit8 v8, v3, 0x2

    new-array v7, v8, [S

    .line 45
    .local v7, tmp:[S
    iget-object v8, p0, Lgnu/bytecode/InnerClassesAttr;->data:[S

    invoke-static {v8, v10, v7, v10, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    iput-object v7, p0, Lgnu/bytecode/InnerClassesAttr;->data:[S

    goto :goto_0

    .line 52
    .end local v7           #tmp:[S
    .restart local v0       #clas:Lgnu/bytecode/ClassType;
    .restart local v1       #constants:Lgnu/bytecode/ConstantPool;
    .restart local v4       #name:Ljava/lang/String;
    :cond_3
    invoke-virtual {v1, v4}, Lgnu/bytecode/ConstantPool;->addUtf8(Ljava/lang/String;)Lgnu/bytecode/CpoolUtf8;

    move-result-object v8

    iget v8, v8, Lgnu/bytecode/CpoolUtf8;->index:I

    move v5, v8

    goto :goto_1

    .line 56
    .restart local v5       #name_index:I
    .restart local v6       #outer:Lgnu/bytecode/ClassType;
    :cond_4
    invoke-virtual {v1, v6}, Lgnu/bytecode/ConstantPool;->addClass(Lgnu/bytecode/ObjectType;)Lgnu/bytecode/CpoolClass;

    move-result-object v10

    iget v10, v10, Lgnu/bytecode/CpoolClass;->index:I

    int-to-short v10, v10

    goto :goto_2
.end method

.method public assignConstants(Lgnu/bytecode/ClassType;)V
    .locals 0
    .parameter "cl"

    .prologue
    .line 66
    invoke-super {p0, p1}, Lgnu/bytecode/Attribute;->assignConstants(Lgnu/bytecode/ClassType;)V

    .line 68
    return-void
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lgnu/bytecode/InnerClassesAttr;->count:I

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public print(Lgnu/bytecode/ClassTypeWriter;)V
    .locals 19
    .parameter "dst"

    .prologue
    .line 91
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/bytecode/InnerClassesAttr;->container:Lgnu/bytecode/AttrContainer;

    move-object v8, v0

    check-cast v8, Lgnu/bytecode/ClassType;

    .line 92
    .local v8, ctype:Lgnu/bytecode/ClassType;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/bytecode/InnerClassesAttr;->data:[S

    move-object/from16 v17, v0

    if-nez v17, :cond_2

    const/16 v17, 0x0

    move-object/from16 v7, v17

    .line 93
    .local v7, constants:Lgnu/bytecode/ConstantPool;
    :goto_0
    const-string v17, "Attribute \""

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 94
    invoke-virtual/range {p0 .. p0}, Lgnu/bytecode/InnerClassesAttr;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 95
    const-string v17, "\", length:"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 96
    invoke-virtual/range {p0 .. p0}, Lgnu/bytecode/InnerClassesAttr;->getLength()I

    move-result v17

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 97
    const-string v17, ", count: "

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 98
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/bytecode/InnerClassesAttr;->count:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->println(I)V

    .line 99
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/bytecode/InnerClassesAttr;->count:I

    move/from16 v17, v0

    move v0, v10

    move/from16 v1, v17

    if-ge v0, v1, :cond_e

    .line 101
    if-nez v7, :cond_3

    const/16 v17, 0x0

    move/from16 v13, v17

    .line 102
    .local v13, inner_index:I
    :goto_2
    if-eqz v7, :cond_0

    if-nez v13, :cond_4

    :cond_0
    const/16 v17, 0x0

    move-object/from16 v4, v17

    .line 104
    .local v4, centry:Lgnu/bytecode/CpoolClass;
    :goto_3
    if-eqz v4, :cond_5

    move-object v0, v4

    iget-object v0, v0, Lgnu/bytecode/CpoolClass;->clas:Lgnu/bytecode/ObjectType;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/bytecode/ClassType;

    move/from16 v17, v0

    if-eqz v17, :cond_5

    iget-object v3, v4, Lgnu/bytecode/CpoolClass;->clas:Lgnu/bytecode/ObjectType;

    check-cast v3, Lgnu/bytecode/ClassType;

    move-object v6, v3

    .line 107
    .local v6, clas:Lgnu/bytecode/ClassType;
    :goto_4
    const/16 v17, 0x20

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 108
    if-nez v13, :cond_6

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Lgnu/bytecode/ClassType;->getModifiers()I

    move-result v17

    move/from16 v3, v17

    .line 110
    .local v3, access:I
    :goto_5
    const/16 v17, 0x49

    move v0, v3

    move/from16 v1, v17

    invoke-static {v0, v1}, Lgnu/bytecode/Access;->toString(IC)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 111
    const/16 v17, 0x20

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 114
    if-nez v13, :cond_7

    if-eqz v6, :cond_7

    .line 115
    invoke-virtual {v6}, Lgnu/bytecode/ClassType;->getSimpleName()Ljava/lang/String;

    move-result-object v14

    .line 128
    .end local v3           #access:I
    .local v14, name:Ljava/lang/String;
    :goto_6
    move-object/from16 v0, p1

    move-object v1, v14

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 129
    const-string v17, " = "

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 130
    if-eqz v4, :cond_a

    .line 131
    invoke-virtual {v4}, Lgnu/bytecode/CpoolClass;->getClassName()Ljava/lang/String;

    move-result-object v14

    .line 134
    :goto_7
    move-object/from16 v0, p1

    move-object v1, v14

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 135
    const-string v17, "; "

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 136
    if-nez v13, :cond_c

    if-eqz v6, :cond_c

    .line 138
    invoke-virtual {v6}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v11

    .line 139
    .local v11, iname:Ljava/lang/String;
    const/16 v17, 0x2e

    move-object v0, v11

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    .line 140
    .local v9, dot:I
    if-lez v9, :cond_1

    .line 141
    add-int/lit8 v17, v9, 0x1

    move-object v0, v11

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 142
    :cond_1
    const/16 v17, 0x24

    move-object v0, v11

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v17

    add-int/lit8 v16, v17, 0x1

    .line 144
    .local v16, start:I
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_b

    move-object v0, v11

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .local v5, ch:C
    const/16 v17, 0x30

    move v0, v5

    move/from16 v1, v17

    if-lt v0, v1, :cond_b

    const/16 v17, 0x39

    move v0, v5

    move/from16 v1, v17

    if-gt v0, v1, :cond_b

    .line 146
    const-string v17, "not a member"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 166
    .end local v5           #ch:C
    .end local v9           #dot:I
    .end local v11           #iname:Ljava/lang/String;
    .end local v16           #start:I
    :goto_8
    invoke-virtual/range {p1 .. p1}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 99
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 92
    .end local v4           #centry:Lgnu/bytecode/CpoolClass;
    .end local v6           #clas:Lgnu/bytecode/ClassType;
    .end local v7           #constants:Lgnu/bytecode/ConstantPool;
    .end local v10           #i:I
    .end local v13           #inner_index:I
    .end local v14           #name:Ljava/lang/String;
    :cond_2
    invoke-virtual {v8}, Lgnu/bytecode/ClassType;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v17

    move-object/from16 v7, v17

    goto/16 :goto_0

    .line 101
    .restart local v7       #constants:Lgnu/bytecode/ConstantPool;
    .restart local v10       #i:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/bytecode/InnerClassesAttr;->data:[S

    move-object/from16 v17, v0

    mul-int/lit8 v18, v10, 0x4

    aget-short v17, v17, v18

    const v18, 0xffff

    and-int v17, v17, v18

    move/from16 v13, v17

    goto/16 :goto_2

    .line 102
    .restart local v13       #inner_index:I
    :cond_4
    invoke-virtual {v7, v13}, Lgnu/bytecode/ConstantPool;->getForcedClass(I)Lgnu/bytecode/CpoolClass;

    move-result-object v17

    move-object/from16 v4, v17

    goto/16 :goto_3

    .line 104
    .restart local v4       #centry:Lgnu/bytecode/CpoolClass;
    :cond_5
    const/16 v17, 0x0

    move-object/from16 v6, v17

    goto/16 :goto_4

    .line 108
    .restart local v6       #clas:Lgnu/bytecode/ClassType;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/bytecode/InnerClassesAttr;->data:[S

    move-object/from16 v17, v0

    mul-int/lit8 v18, v10, 0x4

    add-int/lit8 v18, v18, 0x3

    aget-short v17, v17, v18

    const v18, 0xffff

    and-int v17, v17, v18

    move/from16 v3, v17

    goto/16 :goto_5

    .line 118
    .restart local v3       #access:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/bytecode/InnerClassesAttr;->data:[S

    move-object/from16 v17, v0

    mul-int/lit8 v18, v10, 0x4

    add-int/lit8 v18, v18, 0x2

    aget-short v17, v17, v18

    const v18, 0xffff

    and-int v12, v17, v18

    .line 119
    .local v12, index:I
    if-eqz v7, :cond_8

    if-nez v12, :cond_9

    .line 120
    :cond_8
    const-string v14, "(Anonymous)"

    .restart local v14       #name:Ljava/lang/String;
    goto/16 :goto_6

    .line 123
    .end local v14           #name:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p1

    move v1, v12

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(I)V

    .line 124
    const/16 v17, 0x1

    move-object v0, v7

    move v1, v12

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ConstantPool;->getForced(II)Lgnu/bytecode/CpoolEntry;

    move-result-object v3

    .end local v3           #access:I
    check-cast v3, Lgnu/bytecode/CpoolUtf8;

    check-cast v3, Lgnu/bytecode/CpoolUtf8;

    iget-object v14, v3, Lgnu/bytecode/CpoolUtf8;->string:Ljava/lang/String;

    .restart local v14       #name:Ljava/lang/String;
    goto/16 :goto_6

    .line 133
    .end local v12           #index:I
    :cond_a
    const-string v14, "(Unknown)"

    goto/16 :goto_7

    .line 149
    .restart local v9       #dot:I
    .restart local v11       #iname:Ljava/lang/String;
    .restart local v16       #start:I
    :cond_b
    const-string v17, "member of "

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v8}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 156
    .end local v9           #dot:I
    .end local v11           #iname:Ljava/lang/String;
    .end local v16           #start:I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/bytecode/InnerClassesAttr;->data:[S

    move-object/from16 v17, v0

    mul-int/lit8 v18, v10, 0x4

    add-int/lit8 v18, v18, 0x1

    aget-short v17, v17, v18

    const v18, 0xffff

    and-int v12, v17, v18

    .line 157
    .restart local v12       #index:I
    if-nez v12, :cond_d

    .line 158
    const-string v17, "not a member"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 161
    :cond_d
    const-string v17, "member of "

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 162
    const/16 v17, 0x7

    move-object v0, v7

    move v1, v12

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ConstantPool;->getForced(II)Lgnu/bytecode/CpoolEntry;

    move-result-object v15

    .line 163
    .local v15, oentry:Lgnu/bytecode/CpoolEntry;
    check-cast v15, Lgnu/bytecode/CpoolClass;

    .end local v15           #oentry:Lgnu/bytecode/CpoolEntry;
    invoke-virtual {v15}, Lgnu/bytecode/CpoolClass;->getStringName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 168
    .end local v4           #centry:Lgnu/bytecode/CpoolClass;
    .end local v6           #clas:Lgnu/bytecode/ClassType;
    .end local v12           #index:I
    .end local v13           #inner_index:I
    .end local v14           #name:Ljava/lang/String;
    :cond_e
    return-void
.end method

.method public write(Ljava/io/DataOutputStream;)V
    .locals 3
    .parameter "dstr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    iget v1, p0, Lgnu/bytecode/InnerClassesAttr;->count:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 80
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lgnu/bytecode/InnerClassesAttr;->count:I

    if-ge v0, v1, :cond_0

    .line 82
    iget-object v1, p0, Lgnu/bytecode/InnerClassesAttr;->data:[S

    mul-int/lit8 v2, v0, 0x4

    aget-short v1, v1, v2

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 83
    iget-object v1, p0, Lgnu/bytecode/InnerClassesAttr;->data:[S

    mul-int/lit8 v2, v0, 0x4

    add-int/lit8 v2, v2, 0x1

    aget-short v1, v1, v2

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 84
    iget-object v1, p0, Lgnu/bytecode/InnerClassesAttr;->data:[S

    mul-int/lit8 v2, v0, 0x4

    add-int/lit8 v2, v2, 0x2

    aget-short v1, v1, v2

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 85
    iget-object v1, p0, Lgnu/bytecode/InnerClassesAttr;->data:[S

    mul-int/lit8 v2, v0, 0x4

    add-int/lit8 v2, v2, 0x3

    aget-short v1, v1, v2

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :cond_0
    return-void
.end method
