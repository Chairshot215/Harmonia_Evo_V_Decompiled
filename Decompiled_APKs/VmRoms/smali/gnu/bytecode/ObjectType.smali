.class public Lgnu/bytecode/ObjectType;
.super Lgnu/bytecode/Type;
.source "ObjectType.java"


# static fields
.field static final ADD_ENCLOSING_DONE:I = 0x8

.field static final ADD_FIELDS_DONE:I = 0x1

.field static final ADD_MEMBERCLASSES_DONE:I = 0x4

.field static final ADD_METHODS_DONE:I = 0x2

.field static final EXISTING_CLASS:I = 0x10

.field static final HAS_OUTER_LINK:I = 0x20


# instance fields
.field public flags:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lgnu/bytecode/Type;-><init>()V

    .line 16
    const/4 v0, 0x4

    iput v0, p0, Lgnu/bytecode/ObjectType;->size:I

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 20
    invoke-direct {p0}, Lgnu/bytecode/Type;-><init>()V

    .line 21
    iput-object p1, p0, Lgnu/bytecode/ObjectType;->this_name:Ljava/lang/String;

    .line 22
    const/4 v0, 0x4

    iput v0, p0, Lgnu/bytecode/ObjectType;->size:I

    .line 23
    return-void
.end method

.method public static getContextClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 4
    .parameter "cname"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 97
    const/4 v1, 0x0

    :try_start_0
    const-class v2, Lgnu/bytecode/ObjectType;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {p0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 101
    :goto_0
    return-object v1

    .line 99
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 101
    .local v0, ex:Ljava/lang/ClassNotFoundException;
    invoke-static {}, Lgnu/bytecode/ObjectType;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {p0, v3, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_0
.end method

.method public static getContextClassLoader()Ljava/lang/ClassLoader;
    .locals 2

    .prologue
    .line 117
    :try_start_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 127
    :goto_0
    return-object v1

    .line 122
    :catch_0
    move-exception v0

    .line 127
    .local v0, ex:Ljava/lang/SecurityException;
    const-class v1, Lgnu/bytecode/ObjectType;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter "obj"

    .prologue
    .line 224
    if-eqz p1, :cond_1

    .line 226
    sget-object v2, Lgnu/bytecode/Type;->toStringType:Lgnu/bytecode/ClassType;

    if-ne p0, v2, :cond_0

    .line 227
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 235
    :goto_0
    return-object v2

    .line 228
    :cond_0
    invoke-virtual {p0}, Lgnu/bytecode/ObjectType;->getReflectClass()Ljava/lang/Class;

    move-result-object v0

    .line 229
    .local v0, clas:Ljava/lang/Class;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 230
    .local v1, objClass:Ljava/lang/Class;
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 231
    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "don\'t know how to coerce "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lgnu/bytecode/ObjectType;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v0           #clas:Ljava/lang/Class;
    .end local v1           #objClass:Ljava/lang/Class;
    :cond_1
    move-object v2, p1

    .line 235
    goto :goto_0
.end method

.method public compare(Lgnu/bytecode/Type;)I
    .locals 1
    .parameter "other"

    .prologue
    .line 214
    sget-object v0, Lgnu/bytecode/ObjectType;->nullType:Lgnu/bytecode/ObjectType;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public emitCoerceFromObject(Lgnu/bytecode/CodeAttr;)V
    .locals 1
    .parameter "code"

    .prologue
    .line 241
    sget-object v0, Lgnu/bytecode/Type;->toStringType:Lgnu/bytecode/ClassType;

    if-ne p0, v0, :cond_1

    .line 249
    invoke-virtual {p1}, Lgnu/bytecode/CodeAttr;->emitDup()V

    .line 250
    invoke-virtual {p1}, Lgnu/bytecode/CodeAttr;->emitIfNull()V

    .line 251
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->emitPop(I)V

    .line 252
    invoke-virtual {p1}, Lgnu/bytecode/CodeAttr;->emitPushNull()V

    .line 253
    invoke-virtual {p1}, Lgnu/bytecode/CodeAttr;->emitElse()V

    .line 254
    sget-object v0, Lgnu/bytecode/Type;->toString_method:Lgnu/bytecode/Method;

    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 255
    invoke-virtual {p1}, Lgnu/bytecode/CodeAttr;->emitFi()V

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    sget-object v0, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    if-eq p0, v0, :cond_0

    .line 258
    invoke-virtual {p1, p0}, Lgnu/bytecode/CodeAttr;->emitCheckcast(Lgnu/bytecode/Type;)V

    goto :goto_0
.end method

.method public getField(Ljava/lang/String;I)Lgnu/bytecode/Field;
    .locals 1
    .parameter "name"
    .parameter "mask"

    .prologue
    .line 179
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImplementationType()Lgnu/bytecode/Type;
    .locals 1

    .prologue
    .line 161
    sget-object v0, Lgnu/bytecode/ObjectType;->nullType:Lgnu/bytecode/ObjectType;

    if-ne p0, v0, :cond_0

    sget-object v0, Lgnu/bytecode/ObjectType;->objectType:Lgnu/bytecode/ClassType;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lgnu/bytecode/ObjectType;->toStringType:Lgnu/bytecode/ClassType;

    if-ne p0, v0, :cond_1

    sget-object v0, Lgnu/bytecode/ObjectType;->javalangStringType:Lgnu/bytecode/ClassType;

    goto :goto_0

    :cond_1
    move-object v0, p0

    goto :goto_0
.end method

.method public getInternalName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 66
    invoke-virtual {p0}, Lgnu/bytecode/ObjectType;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;
    .locals 1
    .parameter "name"
    .parameter "arg_types"

    .prologue
    .line 184
    sget-object v0, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    invoke-virtual {v0, p1, p2}, Lgnu/bytecode/ClassType;->getMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v0

    return-object v0
.end method

.method public getMethods(Lgnu/bytecode/Filter;ILjava/util/List;)I
    .locals 1
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
    .line 208
    .local p3, result:Ljava/util/List;,"Ljava/util/List<Lgnu/bytecode/Method;>;"
    sget-object v0, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    invoke-virtual {v0, p1, p2, p3}, Lgnu/bytecode/ClassType;->getMethods(Lgnu/bytecode/Filter;ILjava/util/List;)I

    move-result v0

    return v0
.end method

.method public final getMethods(Lgnu/bytecode/Filter;ILjava/util/Vector;Ljava/lang/String;)I
    .locals 1
    .parameter "filter"
    .parameter "searchSupers"
    .parameter "result"
    .parameter "context"

    .prologue
    .line 194
    sget-object v0, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    invoke-virtual {v0, p1, p2, p3, p4}, Lgnu/bytecode/ClassType;->getMethods(Lgnu/bytecode/Filter;ILjava/util/Vector;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getReflectClass()Ljava/lang/Class;
    .locals 5

    .prologue
    .line 140
    :try_start_0
    iget-object v2, p0, Lgnu/bytecode/ObjectType;->reflectClass:Ljava/lang/Class;

    if-nez v2, :cond_0

    .line 141
    invoke-virtual {p0}, Lgnu/bytecode/ObjectType;->getInternalName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2f

    const/16 v4, 0x2e

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lgnu/bytecode/ObjectType;->getContextClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Lgnu/bytecode/ObjectType;->reflectClass:Ljava/lang/Class;

    .line 142
    :cond_0
    iget v2, p0, Lgnu/bytecode/ObjectType;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lgnu/bytecode/ObjectType;->flags:I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :cond_1
    iget-object v2, p0, Lgnu/bytecode/ObjectType;->reflectClass:Ljava/lang/Class;

    return-object v2

    .line 144
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 146
    .local v0, ex:Ljava/lang/ClassNotFoundException;
    iget v2, p0, Lgnu/bytecode/ObjectType;->flags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_1

    .line 148
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no such class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lgnu/bytecode/ObjectType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 151
    .local v1, rex:Ljava/lang/RuntimeException;
    invoke-virtual {v1, v0}, Ljava/lang/RuntimeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 153
    throw v1
.end method

.method public final isExisting()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    invoke-virtual {p0}, Lgnu/bytecode/ObjectType;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v0

    .line 40
    .local v0, t:Lgnu/bytecode/Type;
    instance-of v1, v0, Lgnu/bytecode/ArrayType;

    if-eqz v1, :cond_0

    .line 41
    check-cast v0, Lgnu/bytecode/ArrayType;

    .end local v0           #t:Lgnu/bytecode/Type;
    invoke-virtual {v0}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object v0

    .line 42
    .restart local v0       #t:Lgnu/bytecode/Type;
    :cond_0
    if-ne v0, p0, :cond_2

    .line 43
    iget v1, p0, Lgnu/bytecode/ObjectType;->flags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_1

    move v1, v3

    .line 46
    .end local v0           #t:Lgnu/bytecode/Type;
    :goto_0
    return v1

    .restart local v0       #t:Lgnu/bytecode/Type;
    :cond_1
    move v1, v2

    .line 43
    goto :goto_0

    .line 46
    :cond_2
    instance-of v1, v0, Lgnu/bytecode/ObjectType;

    if-eqz v1, :cond_3

    check-cast v0, Lgnu/bytecode/ObjectType;

    .end local v0           #t:Lgnu/bytecode/Type;
    invoke-virtual {v0}, Lgnu/bytecode/ObjectType;->isExisting()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    move v1, v3

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public isInstance(Ljava/lang/Object;)Z
    .locals 1
    .parameter "obj"

    .prologue
    .line 172
    sget-object v0, Lgnu/bytecode/ObjectType;->nullType:Lgnu/bytecode/ObjectType;

    if-ne p0, v0, :cond_1

    .line 173
    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 174
    :goto_0
    return v0

    .line 173
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 174
    :cond_1
    invoke-super {p0, p1}, Lgnu/bytecode/Type;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public promote()Lgnu/bytecode/Type;
    .locals 1

    .prologue
    .line 167
    sget-object v0, Lgnu/bytecode/ObjectType;->nullType:Lgnu/bytecode/ObjectType;

    if-ne p0, v0, :cond_0

    sget-object v0, Lgnu/bytecode/ObjectType;->objectType:Lgnu/bytecode/ClassType;

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method public final setExisting(Z)V
    .locals 1
    .parameter "existing"

    .prologue
    .line 54
    if-eqz p1, :cond_0

    iget v0, p0, Lgnu/bytecode/ObjectType;->flags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lgnu/bytecode/ObjectType;->flags:I

    .line 56
    :goto_0
    return-void

    .line 55
    :cond_0
    iget v0, p0, Lgnu/bytecode/ObjectType;->flags:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lgnu/bytecode/ObjectType;->flags:I

    goto :goto_0
.end method
