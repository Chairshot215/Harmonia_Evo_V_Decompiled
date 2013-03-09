.class public Lgnu/bytecode/Field;
.super Lgnu/bytecode/Location;
.source "Field.java"

# interfaces
.implements Lgnu/bytecode/AttrContainer;
.implements Lgnu/bytecode/Member;


# instance fields
.field attributes:Lgnu/bytecode/Attribute;

.field flags:I

.field next:Lgnu/bytecode/Field;

.field owner:Lgnu/bytecode/ClassType;

.field rfield:Ljava/lang/reflect/Field;

.field sourceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lgnu/bytecode/ClassType;)V
    .locals 1
    .parameter "ctype"

    .prologue
    .line 27
    invoke-direct {p0}, Lgnu/bytecode/Location;-><init>()V

    .line 28
    iget-object v0, p1, Lgnu/bytecode/ClassType;->last_field:Lgnu/bytecode/Field;

    if-nez v0, :cond_0

    .line 29
    iput-object p0, p1, Lgnu/bytecode/ClassType;->fields:Lgnu/bytecode/Field;

    .line 32
    :goto_0
    iput-object p0, p1, Lgnu/bytecode/ClassType;->last_field:Lgnu/bytecode/Field;

    .line 33
    iget v0, p1, Lgnu/bytecode/ClassType;->fields_count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lgnu/bytecode/ClassType;->fields_count:I

    .line 34
    iput-object p1, p0, Lgnu/bytecode/Field;->owner:Lgnu/bytecode/ClassType;

    .line 35
    return-void

    .line 31
    :cond_0
    iget-object v0, p1, Lgnu/bytecode/ClassType;->last_field:Lgnu/bytecode/Field;

    iput-object p0, v0, Lgnu/bytecode/Field;->next:Lgnu/bytecode/Field;

    goto :goto_0
.end method

.method public static searchField(Lgnu/bytecode/Field;Ljava/lang/String;)Lgnu/bytecode/Field;
    .locals 1
    .parameter "fields"
    .parameter "name"

    .prologue
    .line 107
    :goto_0
    if-eqz p0, :cond_1

    .line 109
    invoke-virtual {p0}, Lgnu/bytecode/Field;->getSourceName()Ljava/lang/String;

    move-result-object v0

    if-ne v0, p1, :cond_0

    move-object v0, p0

    .line 112
    :goto_1
    return-object v0

    .line 107
    :cond_0
    iget-object p0, p0, Lgnu/bytecode/Field;->next:Lgnu/bytecode/Field;

    goto :goto_0

    .line 112
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method assign_constants(Lgnu/bytecode/ClassType;)V
    .locals 2
    .parameter "classfile"

    .prologue
    .line 73
    iget-object v0, p1, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    .line 74
    .local v0, constants:Lgnu/bytecode/ConstantPool;
    iget v1, p0, Lgnu/bytecode/Field;->name_index:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lgnu/bytecode/Field;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 75
    iget-object v1, p0, Lgnu/bytecode/Field;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lgnu/bytecode/ConstantPool;->addUtf8(Ljava/lang/String;)Lgnu/bytecode/CpoolUtf8;

    move-result-object v1

    iget v1, v1, Lgnu/bytecode/CpoolUtf8;->index:I

    iput v1, p0, Lgnu/bytecode/Field;->name_index:I

    .line 76
    :cond_0
    iget v1, p0, Lgnu/bytecode/Field;->signature_index:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lgnu/bytecode/Field;->type:Lgnu/bytecode/Type;

    if-eqz v1, :cond_1

    .line 77
    iget-object v1, p0, Lgnu/bytecode/Field;->type:Lgnu/bytecode/Type;

    invoke-virtual {v1}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/bytecode/ConstantPool;->addUtf8(Ljava/lang/String;)Lgnu/bytecode/CpoolUtf8;

    move-result-object v1

    iget v1, v1, Lgnu/bytecode/CpoolUtf8;->index:I

    iput v1, p0, Lgnu/bytecode/Field;->signature_index:I

    .line 78
    :cond_1
    invoke-static {p0, p1}, Lgnu/bytecode/Attribute;->assignConstants(Lgnu/bytecode/AttrContainer;Lgnu/bytecode/ClassType;)V

    .line 79
    return-void
.end method

.method public final getAttributes()Lgnu/bytecode/Attribute;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lgnu/bytecode/Field;->attributes:Lgnu/bytecode/Attribute;

    return-object v0
.end method

.method public final getDeclaringClass()Lgnu/bytecode/ClassType;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lgnu/bytecode/Field;->owner:Lgnu/bytecode/ClassType;

    return-object v0
.end method

.method public final getFlags()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lgnu/bytecode/Field;->flags:I

    return v0
.end method

.method public final getModifiers()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lgnu/bytecode/Field;->flags:I

    return v0
.end method

.method public final getNext()Lgnu/bytecode/Field;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lgnu/bytecode/Field;->next:Lgnu/bytecode/Field;

    return-object v0
.end method

.method public declared-synchronized getReflectField()Ljava/lang/reflect/Field;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 84
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgnu/bytecode/Field;->rfield:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lgnu/bytecode/Field;->owner:Lgnu/bytecode/ClassType;

    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Lgnu/bytecode/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lgnu/bytecode/Field;->rfield:Ljava/lang/reflect/Field;

    .line 86
    :cond_0
    iget-object v0, p0, Lgnu/bytecode/Field;->rfield:Ljava/lang/reflect/Field;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSourceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lgnu/bytecode/Field;->sourceName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lgnu/bytecode/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgnu/bytecode/Field;->sourceName:Ljava/lang/String;

    .line 98
    :cond_0
    iget-object v0, p0, Lgnu/bytecode/Field;->sourceName:Ljava/lang/String;

    return-object v0
.end method

.method public final getStaticFlag()Z
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lgnu/bytecode/Field;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setAttributes(Lgnu/bytecode/Attribute;)V
    .locals 0
    .parameter "attributes"

    .prologue
    .line 14
    iput-object p1, p0, Lgnu/bytecode/Field;->attributes:Lgnu/bytecode/Attribute;

    return-void
.end method

.method public final setConstantValue(Ljava/lang/Object;Lgnu/bytecode/ClassType;)V
    .locals 6
    .parameter "value"
    .parameter "ctype"

    .prologue
    const/4 v5, 0x0

    .line 128
    iget-object v1, p2, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    .line 129
    .local v1, cpool:Lgnu/bytecode/ConstantPool;
    if-nez v1, :cond_0

    .line 130
    new-instance v1, Lgnu/bytecode/ConstantPool;

    .end local v1           #cpool:Lgnu/bytecode/ConstantPool;
    invoke-direct {v1}, Lgnu/bytecode/ConstantPool;-><init>()V

    .restart local v1       #cpool:Lgnu/bytecode/ConstantPool;
    iput-object v1, p2, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    .line 131
    :cond_0
    invoke-virtual {p0}, Lgnu/bytecode/Field;->getType()Lgnu/bytecode/Type;

    move-result-object v4

    invoke-virtual {v4}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 133
    .local v3, sig1:C
    sparse-switch v3, :sswitch_data_0

    .line 156
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lgnu/bytecode/ConstantPool;->addString(Ljava/lang/String;)Lgnu/bytecode/CpoolString;

    move-result-object v2

    .line 158
    .end local p1
    .local v2, entry:Lgnu/bytecode/CpoolEntry;
    :goto_0
    new-instance v0, Lgnu/bytecode/ConstantValueAttr;

    invoke-virtual {v2}, Lgnu/bytecode/CpoolEntry;->getIndex()I

    move-result v4

    invoke-direct {v0, v4}, Lgnu/bytecode/ConstantValueAttr;-><init>(I)V

    .line 159
    .local v0, attr:Lgnu/bytecode/ConstantValueAttr;
    invoke-virtual {v0, p0}, Lgnu/bytecode/ConstantValueAttr;->addToFrontOf(Lgnu/bytecode/AttrContainer;)V

    .line 160
    return-void

    .line 136
    .end local v0           #attr:Lgnu/bytecode/ConstantValueAttr;
    .end local v2           #entry:Lgnu/bytecode/CpoolEntry;
    .restart local p1
    :sswitch_0
    invoke-static {p1}, Lgnu/bytecode/PrimType;->booleanValue(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v1, v4}, Lgnu/bytecode/ConstantPool;->addInt(I)Lgnu/bytecode/CpoolValue1;

    move-result-object v2

    .line 137
    .restart local v2       #entry:Lgnu/bytecode/CpoolEntry;
    goto :goto_0

    .end local v2           #entry:Lgnu/bytecode/CpoolEntry;
    :cond_1
    move v4, v5

    .line 136
    goto :goto_1

    .line 139
    :sswitch_1
    instance-of v4, p1, Ljava/lang/Character;

    if-eqz v4, :cond_2

    .line 141
    check-cast p1, Ljava/lang/Character;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v4

    invoke-virtual {v1, v4}, Lgnu/bytecode/ConstantPool;->addInt(I)Lgnu/bytecode/CpoolValue1;

    move-result-object v2

    .line 142
    .restart local v2       #entry:Lgnu/bytecode/CpoolEntry;
    goto :goto_0

    .line 148
    .end local v2           #entry:Lgnu/bytecode/CpoolEntry;
    .restart local p1
    :cond_2
    :sswitch_2
    check-cast p1, Ljava/lang/Number;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-virtual {v1, v4}, Lgnu/bytecode/ConstantPool;->addInt(I)Lgnu/bytecode/CpoolValue1;

    move-result-object v2

    .restart local v2       #entry:Lgnu/bytecode/CpoolEntry;
    goto :goto_0

    .line 150
    .end local v2           #entry:Lgnu/bytecode/CpoolEntry;
    .restart local p1
    :sswitch_3
    check-cast p1, Ljava/lang/Number;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lgnu/bytecode/ConstantPool;->addLong(J)Lgnu/bytecode/CpoolValue2;

    move-result-object v2

    .restart local v2       #entry:Lgnu/bytecode/CpoolEntry;
    goto :goto_0

    .line 152
    .end local v2           #entry:Lgnu/bytecode/CpoolEntry;
    .restart local p1
    :sswitch_4
    check-cast p1, Ljava/lang/Number;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v4

    invoke-virtual {v1, v4}, Lgnu/bytecode/ConstantPool;->addFloat(F)Lgnu/bytecode/CpoolValue1;

    move-result-object v2

    .restart local v2       #entry:Lgnu/bytecode/CpoolEntry;
    goto :goto_0

    .line 154
    .end local v2           #entry:Lgnu/bytecode/CpoolEntry;
    .restart local p1
    :sswitch_5
    check-cast p1, Ljava/lang/Number;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lgnu/bytecode/ConstantPool;->addDouble(D)Lgnu/bytecode/CpoolValue2;

    move-result-object v2

    .restart local v2       #entry:Lgnu/bytecode/CpoolEntry;
    goto :goto_0

    .line 133
    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_2
        0x43 -> :sswitch_1
        0x44 -> :sswitch_5
        0x46 -> :sswitch_4
        0x49 -> :sswitch_2
        0x4a -> :sswitch_3
        0x53 -> :sswitch_2
        0x5a -> :sswitch_0
    .end sparse-switch
.end method

.method public setSourceName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 91
    iput-object p1, p0, Lgnu/bytecode/Field;->sourceName:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public final setStaticFlag(Z)V
    .locals 1
    .parameter "is_static"

    .prologue
    .line 43
    if-eqz p1, :cond_0

    .line 44
    iget v0, p0, Lgnu/bytecode/Field;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lgnu/bytecode/Field;->flags:I

    .line 47
    :goto_0
    return-void

    .line 46
    :cond_0
    iget v0, p0, Lgnu/bytecode/Field;->flags:I

    xor-int/lit8 v0, v0, -0x9

    iput v0, p0, Lgnu/bytecode/Field;->flags:I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 164
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 165
    .local v0, sbuf:Ljava/lang/StringBuffer;
    const-string v1, "Field:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 166
    invoke-virtual {p0}, Lgnu/bytecode/Field;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 167
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 168
    iget-object v1, p0, Lgnu/bytecode/Field;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 169
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method write(Ljava/io/DataOutputStream;Lgnu/bytecode/ClassType;)V
    .locals 1
    .parameter "dstr"
    .parameter "classfile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    iget v0, p0, Lgnu/bytecode/Field;->flags:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 65
    iget v0, p0, Lgnu/bytecode/Field;->name_index:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 66
    iget v0, p0, Lgnu/bytecode/Field;->signature_index:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 68
    invoke-static {p0, p1}, Lgnu/bytecode/Attribute;->writeAll(Lgnu/bytecode/AttrContainer;Ljava/io/DataOutputStream;)V

    .line 69
    return-void
.end method
