.class Lgnu/kawa/functions/NamedPart;
.super Lgnu/mapping/ProcedureN;
.source "GetNamedPart.java"

# interfaces
.implements Lgnu/mapping/HasSetter;
.implements Ljava/io/Externalizable;


# instance fields
.field container:Ljava/lang/Object;

.field kind:C

.field member:Ljava/lang/Object;

.field methods:Lgnu/mapping/MethodProc;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;C)V
    .locals 2
    .parameter "container"
    .parameter "member"
    .parameter "kind"

    .prologue
    .line 143
    invoke-direct {p0}, Lgnu/mapping/ProcedureN;-><init>()V

    .line 144
    iput-object p1, p0, Lgnu/kawa/functions/NamedPart;->container:Ljava/lang/Object;

    .line 145
    iput-object p2, p0, Lgnu/kawa/functions/NamedPart;->member:Ljava/lang/Object;

    .line 146
    iput-char p3, p0, Lgnu/kawa/functions/NamedPart;->kind:C

    .line 147
    sget-object v0, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string v1, "gnu.kawa.functions.CompileNamedPart:validateNamedPart"

    invoke-virtual {p0, v0, v1}, Lgnu/kawa/functions/NamedPart;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 149
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;CLgnu/mapping/MethodProc;)V
    .locals 0
    .parameter "container"
    .parameter "mname"
    .parameter "kind"
    .parameter "methods"

    .prologue
    .line 154
    invoke-direct {p0, p1, p2, p3}, Lgnu/kawa/functions/NamedPart;-><init>(Ljava/lang/Object;Ljava/lang/Object;C)V

    .line 155
    iput-object p4, p0, Lgnu/kawa/functions/NamedPart;->methods:Lgnu/mapping/MethodProc;

    .line 156
    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 1
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 169
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getArgs()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lgnu/kawa/functions/NamedPart;->apply([Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 170
    return-void
.end method

.method public apply([Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .locals 5
    .parameter "args"
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 176
    iget-char v2, p0, Lgnu/kawa/functions/NamedPart;->kind:C

    const/16 v3, 0x53

    if-ne v2, v3, :cond_0

    .line 177
    iget-object v2, p0, Lgnu/kawa/functions/NamedPart;->methods:Lgnu/mapping/MethodProc;

    invoke-virtual {v2, p1, p2}, Lgnu/mapping/MethodProc;->checkN([Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 188
    :goto_0
    return-void

    .line 178
    :cond_0
    iget-char v2, p0, Lgnu/kawa/functions/NamedPart;->kind:C

    const/16 v3, 0x4d

    if-ne v2, v3, :cond_1

    .line 180
    array-length v0, p1

    .line 181
    .local v0, nargs:I
    add-int/lit8 v2, v0, 0x1

    new-array v1, v2, [Ljava/lang/Object;

    .line 182
    .local v1, xargs:[Ljava/lang/Object;
    iget-object v2, p0, Lgnu/kawa/functions/NamedPart;->container:Ljava/lang/Object;

    aput-object v2, v1, v4

    .line 183
    const/4 v2, 0x1

    invoke-static {p1, v4, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 184
    iget-object v2, p0, Lgnu/kawa/functions/NamedPart;->methods:Lgnu/mapping/MethodProc;

    invoke-virtual {v2, v1, p2}, Lgnu/mapping/MethodProc;->checkN([Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    goto :goto_0

    .line 187
    .end local v0           #nargs:I
    .end local v1           #xargs:[Ljava/lang/Object;
    :cond_1
    invoke-virtual {p0, p1}, Lgnu/kawa/functions/NamedPart;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Lgnu/mapping/CallContext;->writeValue(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 195
    iget-char v2, p0, Lgnu/kawa/functions/NamedPart;->kind:C

    sparse-switch v2, :sswitch_data_0

    .line 220
    new-instance v2, Ljava/lang/Error;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown part "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lgnu/kawa/functions/NamedPart;->member:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lgnu/kawa/functions/NamedPart;->container:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    .line 198
    :sswitch_0
    sget-object v2, Lkawa/standard/Scheme;->instanceOf:Lgnu/kawa/reflect/InstanceOf;

    aget-object v3, p1, v4

    iget-object v4, p0, Lgnu/kawa/functions/NamedPart;->container:Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lgnu/kawa/reflect/InstanceOf;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 218
    .end local p0
    :goto_0
    return-object v2

    .line 200
    .restart local p0
    :sswitch_1
    sget-object v2, Lgnu/kawa/functions/Convert;->as:Lgnu/kawa/functions/Convert;

    iget-object v3, p0, Lgnu/kawa/functions/NamedPart;->container:Ljava/lang/Object;

    aget-object v4, p1, v4

    invoke-virtual {v2, v3, v4}, Lgnu/kawa/functions/Convert;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 202
    :sswitch_2
    array-length v2, p1

    add-int/lit8 v2, v2, 0x1

    new-array v1, v2, [Ljava/lang/Object;

    .line 203
    .local v1, xargs:[Ljava/lang/Object;
    iget-object v2, p0, Lgnu/kawa/functions/NamedPart;->container:Ljava/lang/Object;

    aput-object v2, v1, v4

    .line 204
    array-length v2, p1

    invoke-static {p1, v4, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 205
    sget-object v2, Lgnu/kawa/reflect/Invoke;->make:Lgnu/kawa/reflect/Invoke;

    invoke-virtual {v2, v1}, Lgnu/kawa/reflect/Invoke;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 207
    .end local v1           #xargs:[Ljava/lang/Object;
    :sswitch_3
    iget-object v2, p0, Lgnu/kawa/functions/NamedPart;->methods:Lgnu/mapping/MethodProc;

    invoke-virtual {v2, p1}, Lgnu/mapping/MethodProc;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 209
    :sswitch_4
    array-length v2, p1

    add-int/lit8 v2, v2, 0x1

    new-array v1, v2, [Ljava/lang/Object;

    .line 210
    .restart local v1       #xargs:[Ljava/lang/Object;
    iget-object v2, p0, Lgnu/kawa/functions/NamedPart;->container:Ljava/lang/Object;

    aput-object v2, v1, v4

    .line 211
    array-length v2, p1

    invoke-static {p1, v4, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 212
    iget-object v2, p0, Lgnu/kawa/functions/NamedPart;->methods:Lgnu/mapping/MethodProc;

    invoke-virtual {v2, v1}, Lgnu/mapping/MethodProc;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 214
    .end local v1           #xargs:[Ljava/lang/Object;
    :sswitch_5
    iget-object v2, p0, Lgnu/kawa/functions/NamedPart;->member:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, fname:Ljava/lang/String;
    array-length v2, p1

    if-nez v2, :cond_0

    .line 216
    iget-object p0, p0, Lgnu/kawa/functions/NamedPart;->container:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lgnu/bytecode/ClassType;

    invoke-static {p0, v0}, Lgnu/kawa/reflect/SlotGet;->staticField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 218
    .restart local p0
    :cond_0
    iget-object p0, p0, Lgnu/kawa/functions/NamedPart;->container:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lgnu/bytecode/Type;

    aget-object v2, p1, v4

    invoke-virtual {p0, v2}, Lgnu/bytecode/Type;->coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v0}, Lgnu/kawa/reflect/SlotGet;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 195
    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_1
        0x44 -> :sswitch_5
        0x49 -> :sswitch_0
        0x4d -> :sswitch_4
        0x4e -> :sswitch_2
        0x53 -> :sswitch_3
    .end sparse-switch
.end method

.method public getSetter()Lgnu/mapping/Procedure;
    .locals 3

    .prologue
    .line 225
    iget-char v0, p0, Lgnu/kawa/functions/NamedPart;->kind:C

    const/16 v1, 0x44

    if-ne v0, v1, :cond_0

    .line 226
    new-instance v0, Lgnu/kawa/functions/NamedPartSetter;

    invoke-direct {v0, p0}, Lgnu/kawa/functions/NamedPartSetter;-><init>(Lgnu/kawa/functions/NamedPart;)V

    return-object v0

    .line 228
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "procedure \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lgnu/kawa/functions/NamedPart;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' has no setter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public numArgs()I
    .locals 2

    .prologue
    .line 160
    iget-char v0, p0, Lgnu/kawa/functions/NamedPart;->kind:C

    const/16 v1, 0x49

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lgnu/kawa/functions/NamedPart;->kind:C

    const/16 v1, 0x43

    if-ne v0, v1, :cond_1

    .line 161
    :cond_0
    const/16 v0, 0x1001

    .line 164
    :goto_0
    return v0

    .line 162
    :cond_1
    iget-char v0, p0, Lgnu/kawa/functions/NamedPart;->kind:C

    const/16 v1, 0x44

    if-ne v0, v1, :cond_2

    .line 163
    const/16 v0, 0x1000

    goto :goto_0

    .line 164
    :cond_2
    const/16 v0, -0x1000

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
    .line 268
    invoke-interface {p1}, Ljava/io/ObjectInput;->readChar()C

    move-result v0

    iput-char v0, p0, Lgnu/kawa/functions/NamedPart;->kind:C

    .line 269
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/Procedure;

    iput-object v0, p0, Lgnu/kawa/functions/NamedPart;->container:Ljava/lang/Object;

    .line 270
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/Procedure;

    iput-object v0, p0, Lgnu/kawa/functions/NamedPart;->member:Ljava/lang/Object;

    .line 271
    return-void
.end method

.method public set0(Ljava/lang/Object;)V
    .locals 4
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 233
    iget-char v1, p0, Lgnu/kawa/functions/NamedPart;->kind:C

    packed-switch v1, :pswitch_data_0

    .line 240
    new-instance v1, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid setter for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 236
    :pswitch_0
    iget-object v1, p0, Lgnu/kawa/functions/NamedPart;->member:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, fname:Ljava/lang/String;
    iget-object p0, p0, Lgnu/kawa/functions/NamedPart;->container:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lgnu/bytecode/ClassType;

    invoke-static {p0, v0, p1}, Lgnu/kawa/reflect/SlotSet;->setStaticField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 238
    return-void

    .line 233
    nop

    :pswitch_data_0
    .packed-switch 0x44
        :pswitch_0
    .end packed-switch
.end method

.method public set1(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .parameter "object"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 246
    iget-char v1, p0, Lgnu/kawa/functions/NamedPart;->kind:C

    packed-switch v1, :pswitch_data_0

    .line 254
    new-instance v1, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid setter for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 249
    :pswitch_0
    iget-object v1, p0, Lgnu/kawa/functions/NamedPart;->member:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, fname:Ljava/lang/String;
    iget-object p0, p0, Lgnu/kawa/functions/NamedPart;->container:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lgnu/bytecode/Type;

    invoke-virtual {p0, p1}, Lgnu/bytecode/Type;->coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 251
    invoke-static {p1, v0, p2}, Lgnu/kawa/reflect/SlotSet;->setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 252
    return-void

    .line 246
    nop

    :pswitch_data_0
    .packed-switch 0x44
        :pswitch_0
    .end packed-switch
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
    .line 260
    iget-object v0, p0, Lgnu/kawa/functions/NamedPart;->container:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 261
    iget-object v0, p0, Lgnu/kawa/functions/NamedPart;->member:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 262
    iget-char v0, p0, Lgnu/kawa/functions/NamedPart;->kind:C

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeChar(I)V

    .line 263
    return-void
.end method
