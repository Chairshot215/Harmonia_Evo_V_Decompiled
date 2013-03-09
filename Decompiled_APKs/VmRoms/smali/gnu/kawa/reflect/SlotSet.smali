.class public Lgnu/kawa/reflect/SlotSet;
.super Lgnu/mapping/Procedure3;
.source "SlotSet.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# static fields
.field public static final set$Mnfield$Ex:Lgnu/kawa/reflect/SlotSet;

.field public static final set$Mnstatic$Mnfield$Ex:Lgnu/kawa/reflect/SlotSet;

.field public static final setFieldReturnObject:Lgnu/kawa/reflect/SlotSet;

.field static final type1Array:[Lgnu/bytecode/Type;


# instance fields
.field isStatic:Z

.field returnSelf:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 16
    new-instance v0, Lgnu/kawa/reflect/SlotSet;

    const-string v1, "set-field!"

    invoke-direct {v0, v1, v3}, Lgnu/kawa/reflect/SlotSet;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lgnu/kawa/reflect/SlotSet;->set$Mnfield$Ex:Lgnu/kawa/reflect/SlotSet;

    .line 17
    new-instance v0, Lgnu/kawa/reflect/SlotSet;

    const-string v1, "set-static-field!"

    invoke-direct {v0, v1, v2}, Lgnu/kawa/reflect/SlotSet;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lgnu/kawa/reflect/SlotSet;->set$Mnstatic$Mnfield$Ex:Lgnu/kawa/reflect/SlotSet;

    .line 19
    new-instance v0, Lgnu/kawa/reflect/SlotSet;

    const-string v1, "set-field-return-object!"

    invoke-direct {v0, v1, v3}, Lgnu/kawa/reflect/SlotSet;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lgnu/kawa/reflect/SlotSet;->setFieldReturnObject:Lgnu/kawa/reflect/SlotSet;

    .line 21
    sget-object v0, Lgnu/kawa/reflect/SlotSet;->setFieldReturnObject:Lgnu/kawa/reflect/SlotSet;

    iput-boolean v2, v0, Lgnu/kawa/reflect/SlotSet;->returnSelf:Z

    .line 132
    new-array v0, v2, [Lgnu/bytecode/Type;

    sput-object v0, Lgnu/kawa/reflect/SlotSet;->type1Array:[Lgnu/bytecode/Type;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .parameter "name"
    .parameter "isStatic"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lgnu/mapping/Procedure3;-><init>(Ljava/lang/String;)V

    .line 26
    iput-boolean p2, p0, Lgnu/kawa/reflect/SlotSet;->isStatic:Z

    .line 27
    sget-object v0, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string v1, "gnu.kawa.reflect.CompileReflect:validateApplySlotSet"

    invoke-virtual {p0, v0, v1}, Lgnu/kawa/reflect/SlotSet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 29
    return-void
.end method

.method public static apply(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9
    .parameter "isStatic"
    .parameter "obj"
    .parameter "member"
    .parameter "value"

    .prologue
    .line 43
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v5

    .line 44
    .local v5, language:Lgnu/expr/Language;
    const/4 v4, 0x0

    .line 48
    .local v4, illegalAccess:Z
    instance-of v1, p2, Ljava/lang/String;

    if-nez v1, :cond_0

    instance-of v1, p2, Lgnu/lists/FString;

    if-nez v1, :cond_0

    instance-of v1, p2, Lgnu/mapping/Symbol;

    if-eqz v1, :cond_2

    .line 51
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, name:Ljava/lang/String;
    invoke-static {v2}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, fname:Ljava/lang/String;
    if-eqz p0, :cond_1

    invoke-static {p1}, Lgnu/kawa/reflect/SlotGet;->coerceToClass(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object p0

    .local p0, clas:Ljava/lang/Class;
    :goto_0
    move-object v6, v2

    .end local v2           #name:Ljava/lang/String;
    .local v6, name:Ljava/lang/String;
    move-object v2, v1

    .end local v1           #fname:Ljava/lang/String;
    .local v2, fname:Ljava/lang/String;
    move-object v1, p0

    .line 61
    .end local p0           #clas:Ljava/lang/Class;
    .local v1, clas:Ljava/lang/Class;
    :goto_1
    :try_start_0
    instance-of p0, p2, Lgnu/bytecode/Field;

    if-eqz p0, :cond_3

    move-object v0, p2

    check-cast v0, Lgnu/bytecode/Field;

    move-object v3, v0

    invoke-virtual {v3}, Lgnu/bytecode/Field;->getReflectField()Ljava/lang/reflect/Field;

    move-result-object p0

    .line 64
    .local p0, field:Ljava/lang/reflect/Field;
    :goto_2
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    .line 65
    .local v3, ftype:Ljava/lang/Class;
    invoke-virtual {v5, v3, p3}, Lgnu/expr/Language;->coerceFromObject(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #ftype:Ljava/lang/Class;
    invoke-virtual {p0, p1, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move p0, v4

    .line 105
    .end local v2           #fname:Ljava/lang/String;
    .end local v4           #illegalAccess:Z
    .end local p2
    .end local p3
    .local p0, illegalAccess:Z
    :goto_3
    return-void

    .line 53
    .end local v6           #name:Ljava/lang/String;
    .local v1, fname:Ljava/lang/String;
    .local v2, name:Ljava/lang/String;
    .restart local v4       #illegalAccess:Z
    .local p0, isStatic:Z
    .restart local p2
    .restart local p3
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    .line 56
    .end local v1           #fname:Ljava/lang/String;
    .end local v2           #name:Ljava/lang/String;
    :cond_2
    move-object v0, p2

    check-cast v0, Lgnu/bytecode/Member;

    move-object v1, v0

    invoke-interface {v1}, Lgnu/bytecode/Member;->getName()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #name:Ljava/lang/String;
    move-object v1, v2

    .line 57
    .restart local v1       #fname:Ljava/lang/String;
    const/4 p0, 0x0

    .local p0, clas:Ljava/lang/Class;
    move-object v6, v2

    .end local v2           #name:Ljava/lang/String;
    .restart local v6       #name:Ljava/lang/String;
    move-object v2, v1

    .end local v1           #fname:Ljava/lang/String;
    .local v2, fname:Ljava/lang/String;
    move-object v1, p0

    .end local p0           #clas:Ljava/lang/Class;
    .local v1, clas:Ljava/lang/Class;
    goto :goto_1

    .line 61
    :cond_3
    :try_start_1
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p0

    goto :goto_2

    .line 71
    :catch_0
    move-exception p0

    .line 73
    .local p0, ex:Ljava/lang/IllegalAccessException;
    const/4 p0, 0x1

    .end local v4           #illegalAccess:Z
    .local p0, illegalAccess:Z
    move v4, p0

    .line 80
    .end local p0           #illegalAccess:Z
    .restart local v4       #illegalAccess:Z
    :goto_4
    const/4 v3, 0x0

    .line 82
    .local v3, getmethod:Ljava/lang/reflect/Method;
    :try_start_2
    instance-of p0, p2, Lgnu/bytecode/Method;

    .line 83
    .local p0, haveSetter:Z
    if-eqz p0, :cond_4

    move-object v7, v2

    .line 85
    .end local p2
    .local v7, setName:Ljava/lang/String;
    :goto_5
    if-eqz p0, :cond_8

    const-string p2, "set"

    invoke-virtual {v7, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_4

    move-result p2

    if-nez p2, :cond_8

    .line 86
    const/4 p0, 0x0

    move p2, p0

    .line 89
    .end local p0           #haveSetter:Z
    .local p2, haveSetter:Z
    :goto_6
    if-eqz p2, :cond_5

    :try_start_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get"

    .end local v2           #fname:Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/4 v2, 0x3

    invoke-virtual {v7, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 91
    .local p0, getName:Ljava/lang/String;
    :goto_7
    sget-object v2, Lgnu/kawa/reflect/SlotGet;->noClasses:[Ljava/lang/Class;

    invoke-virtual {v1, p0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object p0

    .end local v3           #getmethod:Ljava/lang/reflect/Method;
    .local p0, getmethod:Ljava/lang/reflect/Method;
    move-object p2, p0

    .line 98
    .end local p0           #getmethod:Ljava/lang/reflect/Method;
    .local p2, getmethod:Ljava/lang/reflect/Method;
    :goto_8
    const/4 p0, 0x1

    :try_start_4
    new-array v2, p0, [Ljava/lang/Class;

    .line 99
    .local v2, setArgTypes:[Ljava/lang/Class;
    const/4 p0, 0x0

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v2, p0

    .line 100
    invoke-virtual {v1, v7, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 102
    .local v3, setmethod:Ljava/lang/reflect/Method;
    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    .line 103
    .local p0, args:[Ljava/lang/Object;
    const/4 v7, 0x0

    const/4 v8, 0x0

    aget-object v2, v2, v8

    .end local v2           #setArgTypes:[Ljava/lang/Class;
    .end local v7           #setName:Ljava/lang/String;
    invoke-virtual {v5, v2, p3}, Lgnu/expr/Language;->coerceFromObject(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .end local p3
    aput-object p3, p0, v7

    .line 104
    invoke-virtual {v3, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_5

    move p0, v4

    .line 105
    .end local v4           #illegalAccess:Z
    .local p0, illegalAccess:Z
    goto :goto_3

    .line 83
    .local v2, fname:Ljava/lang/String;
    .local v3, getmethod:Ljava/lang/reflect/Method;
    .restart local v4       #illegalAccess:Z
    .local p0, haveSetter:Z
    .local p2, member:Ljava/lang/Object;
    .restart local p3
    :cond_4
    :try_start_5
    const-string p2, "set"

    .end local p2           #member:Ljava/lang/Object;
    invoke-static {p2, v6}, Lgnu/expr/ClassExp;->slotToMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_4

    move-result-object p2

    move-object v7, p2

    goto :goto_5

    .line 89
    .end local p0           #haveSetter:Z
    .restart local v7       #setName:Ljava/lang/String;
    .local p2, haveSetter:Z
    :cond_5
    :try_start_6
    const-string p0, "get"

    invoke-static {p0, v6}, Lgnu/expr/ClassExp;->slotToMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_6} :catch_4

    move-result-object p0

    goto :goto_7

    .line 92
    .end local v2           #fname:Ljava/lang/String;
    :catch_1
    move-exception p0

    .line 93
    .local p0, getEx:Ljava/lang/Exception;
    if-eqz p2, :cond_6

    :try_start_7
    new-instance p0, Ljava/lang/StringBuilder;

    .end local p0           #getEx:Ljava/lang/Exception;
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "is"

    .end local p2           #haveSetter:Z
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/4 p2, 0x3

    invoke-virtual {v7, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 95
    .local p0, getName:Ljava/lang/String;
    :goto_9
    sget-object p2, Lgnu/kawa/reflect/SlotGet;->noClasses:[Ljava/lang/Class;

    invoke-virtual {v1, p0, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .end local v3           #getmethod:Ljava/lang/reflect/Method;
    .local p0, getmethod:Ljava/lang/reflect/Method;
    move-object p2, p0

    .end local p0           #getmethod:Ljava/lang/reflect/Method;
    .local p2, getmethod:Ljava/lang/reflect/Method;
    goto :goto_8

    .line 93
    .restart local v3       #getmethod:Ljava/lang/reflect/Method;
    .local p0, getEx:Ljava/lang/Exception;
    .local p2, haveSetter:Z
    :cond_6
    const-string p0, "is"

    .end local p0           #getEx:Ljava/lang/Exception;
    invoke-static {p0, v6}, Lgnu/expr/ClassExp;->slotToMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_7} :catch_4

    move-result-object p0

    goto :goto_9

    .line 107
    .end local v7           #setName:Ljava/lang/String;
    .end local p2           #haveSetter:Z
    :catch_2
    move-exception p0

    move-object p1, v3

    .line 109
    .end local v3           #getmethod:Ljava/lang/reflect/Method;
    .end local p3
    .local p0, ex:Ljava/lang/reflect/InvocationTargetException;
    .local p1, getmethod:Ljava/lang/reflect/Method;
    :goto_a
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p0

    .end local p0           #ex:Ljava/lang/reflect/InvocationTargetException;
    invoke-static {p0}, Lgnu/mapping/WrappedException;->wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 111
    .restart local v3       #getmethod:Ljava/lang/reflect/Method;
    .local p1, obj:Ljava/lang/Object;
    .restart local p3
    :catch_3
    move-exception p0

    move-object p1, v3

    .line 113
    .end local v3           #getmethod:Ljava/lang/reflect/Method;
    .end local p3
    .local p0, ex:Ljava/lang/IllegalAccessException;
    .local p1, getmethod:Ljava/lang/reflect/Method;
    :goto_b
    const/4 p0, 0x1

    .line 119
    .end local v4           #illegalAccess:Z
    .end local p1           #getmethod:Ljava/lang/reflect/Method;
    .local p0, illegalAccess:Z
    :goto_c
    if-eqz p0, :cond_7

    .line 120
    new-instance p0, Ljava/lang/RuntimeException;

    .end local p0           #illegalAccess:Z
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "illegal access for field "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 115
    .restart local v3       #getmethod:Ljava/lang/reflect/Method;
    .restart local v4       #illegalAccess:Z
    .local p1, obj:Ljava/lang/Object;
    .restart local p3
    :catch_4
    move-exception p0

    move-object p0, v3

    .end local v3           #getmethod:Ljava/lang/reflect/Method;
    .end local p3
    .local p0, getmethod:Ljava/lang/reflect/Method;
    :goto_d
    move p0, v4

    .end local v4           #illegalAccess:Z
    .local p0, illegalAccess:Z
    goto :goto_c

    .line 122
    .end local p1           #obj:Ljava/lang/Object;
    :cond_7
    new-instance p0, Ljava/lang/RuntimeException;

    .end local p0           #illegalAccess:Z
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "no such field "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " in "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 115
    .restart local v4       #illegalAccess:Z
    .restart local p1       #obj:Ljava/lang/Object;
    .local p2, getmethod:Ljava/lang/reflect/Method;
    :catch_5
    move-exception p0

    move-object p0, p2

    .end local p2           #getmethod:Ljava/lang/reflect/Method;
    .local p0, getmethod:Ljava/lang/reflect/Method;
    goto :goto_d

    .line 111
    .end local p0           #getmethod:Ljava/lang/reflect/Method;
    .restart local p2       #getmethod:Ljava/lang/reflect/Method;
    :catch_6
    move-exception p0

    move-object p1, p2

    .end local p2           #getmethod:Ljava/lang/reflect/Method;
    .local p1, getmethod:Ljava/lang/reflect/Method;
    goto :goto_b

    .line 107
    .local p1, obj:Ljava/lang/Object;
    .restart local p2       #getmethod:Ljava/lang/reflect/Method;
    :catch_7
    move-exception p0

    move-object p1, p2

    .end local p2           #getmethod:Ljava/lang/reflect/Method;
    .local p1, getmethod:Ljava/lang/reflect/Method;
    goto :goto_a

    .line 68
    .restart local v2       #fname:Ljava/lang/String;
    .local p1, obj:Ljava/lang/Object;
    .local p2, member:Ljava/lang/Object;
    .restart local p3
    :catch_8
    move-exception p0

    goto/16 :goto_4

    .end local p2           #member:Ljava/lang/Object;
    .restart local v3       #getmethod:Ljava/lang/reflect/Method;
    .restart local v7       #setName:Ljava/lang/String;
    .local p0, haveSetter:Z
    :cond_8
    move p2, p0

    .end local p0           #haveSetter:Z
    .local p2, haveSetter:Z
    goto/16 :goto_6
.end method

.method static compileSet(Lgnu/mapping/Procedure;Lgnu/bytecode/ObjectType;Lgnu/expr/Expression;Ljava/lang/Object;Lgnu/expr/Compilation;)V
    .locals 6
    .parameter "thisProc"
    .parameter "ctype"
    .parameter "valArg"
    .parameter "part"
    .parameter "comp"

    .prologue
    .line 158
    invoke-virtual {p4}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object p1

    .line 159
    .local p1, code:Lgnu/bytecode/CodeAttr;
    invoke-virtual {p4}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v1

    .line 160
    .local v1, language:Lgnu/expr/Language;
    instance-of v2, p0, Lgnu/kawa/reflect/SlotSet;

    if-eqz v2, :cond_2

    move-object v0, p0

    check-cast v0, Lgnu/kawa/reflect/SlotSet;

    move-object v2, v0

    iget-boolean v2, v2, Lgnu/kawa/reflect/SlotSet;->isStatic:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    .line 162
    .local v2, isStatic:Z
    :goto_0
    instance-of v3, p3, Lgnu/bytecode/Field;

    if-eqz v3, :cond_4

    .line 164
    check-cast p3, Lgnu/bytecode/Field;

    .line 165
    .local p3, field:Lgnu/bytecode/Field;
    invoke-virtual {p3}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result v3

    .line 166
    .local v3, isStaticField:Z
    invoke-virtual {p3}, Lgnu/bytecode/Field;->getType()Lgnu/bytecode/Type;

    move-result-object v4

    invoke-virtual {v1, v4}, Lgnu/expr/Language;->getLangTypeFor(Lgnu/bytecode/Type;)Lgnu/bytecode/Type;

    move-result-object v1

    .line 167
    .local v1, ftype:Lgnu/bytecode/Type;
    if-eqz v2, :cond_0

    if-nez v3, :cond_0

    .line 168
    const/16 v2, 0x65

    new-instance v4, Ljava/lang/StringBuilder;

    .end local v2           #isStatic:Z
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot access non-static field `"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p3}, Lgnu/bytecode/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' using `"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lgnu/mapping/Procedure;->getName()Ljava/lang/String;

    move-result-object p0

    .end local p0
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v4, 0x27

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v2, p0}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 170
    :cond_0
    invoke-static {v1}, Lgnu/expr/CheckedTarget;->getInstance(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object p0

    invoke-virtual {p2, p4, p0}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 171
    if-eqz v3, :cond_3

    .line 172
    invoke-virtual {p1, p3}, Lgnu/bytecode/CodeAttr;->emitPutStatic(Lgnu/bytecode/Field;)V

    .line 195
    .end local v1           #ftype:Lgnu/bytecode/Type;
    .end local v3           #isStaticField:Z
    .end local p3           #field:Lgnu/bytecode/Field;
    :cond_1
    :goto_1
    return-void

    .line 160
    .local v1, language:Lgnu/expr/Language;
    .restart local p0
    .local p3, part:Ljava/lang/Object;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 174
    .end local p0
    .local v1, ftype:Lgnu/bytecode/Type;
    .restart local v3       #isStaticField:Z
    .local p3, field:Lgnu/bytecode/Field;
    :cond_3
    invoke-virtual {p1, p3}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    goto :goto_1

    .line 177
    .end local v3           #isStaticField:Z
    .local v1, language:Lgnu/expr/Language;
    .restart local v2       #isStatic:Z
    .restart local p0
    .local p3, part:Ljava/lang/Object;
    :cond_4
    instance-of v3, p3, Lgnu/bytecode/Method;

    if-eqz v3, :cond_1

    .line 179
    move-object v0, p3

    check-cast v0, Lgnu/bytecode/Method;

    move-object v3, v0

    .line 180
    .local v3, method:Lgnu/bytecode/Method;
    invoke-virtual {v3}, Lgnu/bytecode/Method;->getStaticFlag()Z

    move-result p3

    .line 181
    .local p3, isStaticMethod:Z
    if-eqz v2, :cond_5

    if-nez p3, :cond_5

    .line 182
    const/16 v2, 0x65

    new-instance v4, Ljava/lang/StringBuilder;

    .end local v2           #isStatic:Z
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot call non-static getter method `"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' using `"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lgnu/mapping/Procedure;->getName()Ljava/lang/String;

    move-result-object p0

    .end local p0
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v4, 0x27

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v2, p0}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 185
    :cond_5
    invoke-virtual {v3}, Lgnu/bytecode/Method;->getParameterTypes()[Lgnu/bytecode/Type;

    move-result-object p0

    .line 186
    .local p0, setArgTypes:[Lgnu/bytecode/Type;
    const/4 v2, 0x0

    aget-object p0, p0, v2

    .end local p0           #setArgTypes:[Lgnu/bytecode/Type;
    invoke-virtual {v1, p0}, Lgnu/expr/Language;->getLangTypeFor(Lgnu/bytecode/Type;)Lgnu/bytecode/Type;

    move-result-object p0

    invoke-static {p0}, Lgnu/expr/CheckedTarget;->getInstance(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object p0

    invoke-virtual {p2, p4, p0}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 187
    if-eqz p3, :cond_6

    .line 188
    invoke-virtual {p1, v3}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 191
    :goto_2
    invoke-virtual {v3}, Lgnu/bytecode/Method;->getReturnType()Lgnu/bytecode/Type;

    move-result-object p0

    invoke-virtual {p0}, Lgnu/bytecode/Type;->isVoid()Z

    move-result p0

    if-nez p0, :cond_1

    .line 192
    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lgnu/bytecode/CodeAttr;->emitPop(I)V

    goto :goto_1

    .line 190
    :cond_6
    invoke-virtual {p1, v3}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    goto :goto_2
.end method

.method public static lookupMember(Lgnu/bytecode/ObjectType;Ljava/lang/String;Lgnu/bytecode/ClassType;)Lgnu/bytecode/Member;
    .locals 5
    .parameter "clas"
    .parameter "name"
    .parameter "caller"

    .prologue
    .line 137
    invoke-static {p1}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {p0, v3, v4}, Lgnu/bytecode/ObjectType;->getField(Ljava/lang/String;I)Lgnu/bytecode/Field;

    move-result-object v0

    .line 139
    .local v0, field:Lgnu/bytecode/Field;
    if-eqz v0, :cond_1

    .line 141
    if-nez p2, :cond_0

    .line 142
    sget-object p2, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    .line 143
    :cond_0
    invoke-virtual {p2, v0, p0}, Lgnu/bytecode/ClassType;->isAccessible(Lgnu/bytecode/Member;Lgnu/bytecode/ObjectType;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v0

    .line 152
    :goto_0
    return-object v3

    .line 147
    :cond_1
    const-string v3, "set"

    invoke-static {v3, p1}, Lgnu/expr/ClassExp;->slotToMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 148
    .local v2, setName:Ljava/lang/String;
    sget-object v3, Lgnu/kawa/reflect/SlotSet;->type1Array:[Lgnu/bytecode/Type;

    invoke-virtual {p0, v2, v3}, Lgnu/bytecode/ObjectType;->getMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v1

    .line 149
    .local v1, method:Lgnu/bytecode/Method;
    if-nez v1, :cond_2

    move-object v3, v0

    .line 150
    goto :goto_0

    :cond_2
    move-object v3, v1

    .line 152
    goto :goto_0
.end method

.method public static setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "obj"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Lgnu/kawa/reflect/SlotSet;->apply(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 34
    return-void
.end method

.method public static setStaticField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "obj"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 38
    const/4 v0, 0x1

    invoke-static {v0, p0, p1, p2}, Lgnu/kawa/reflect/SlotSet;->apply(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 39
    return-void
.end method


# virtual methods
.method public apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "obj"
    .parameter "fname"
    .parameter "value"

    .prologue
    .line 128
    iget-boolean v0, p0, Lgnu/kawa/reflect/SlotSet;->isStatic:Z

    invoke-static {v0, p1, p2, p3}, Lgnu/kawa/reflect/SlotSet;->apply(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 129
    iget-boolean v0, p0, Lgnu/kawa/reflect/SlotSet;->returnSelf:Z

    if-eqz v0, :cond_0

    move-object v0, p1

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 22
    .parameter "exp"
    .parameter "comp"
    .parameter "target"

    .prologue
    .line 199
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v7

    .line 200
    .local v7, args:[Lgnu/expr/Expression;
    array-length v14, v7

    .line 201
    .local v14, nargs:I
    const/16 v19, 0x3

    move v0, v14

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    .line 203
    const/16 v19, 0x3

    move v0, v14

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    const-string v19, "too few"

    move-object/from16 v12, v19

    .line 204
    .local v12, msg:Ljava/lang/String;
    :goto_0
    const/16 v19, 0x65

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " arguments to `"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lgnu/kawa/reflect/SlotSet;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x27

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p2

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 205
    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    .line 263
    .end local v12           #msg:Ljava/lang/String;
    :goto_1
    return-void

    .line 203
    :cond_0
    const-string v19, "too many"

    move-object/from16 v12, v19

    goto :goto_0

    .line 208
    :cond_1
    const/16 v19, 0x0

    aget-object v5, v7, v19

    .line 209
    .local v5, arg0:Lgnu/expr/Expression;
    const/16 v19, 0x1

    aget-object v6, v7, v19

    .line 210
    .local v6, arg1:Lgnu/expr/Expression;
    const/16 v19, 0x2

    aget-object v18, v7, v19

    .line 211
    .local v18, value:Lgnu/expr/Expression;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lgnu/kawa/reflect/SlotSet;->isStatic:Z

    move/from16 v19, v0

    if-eqz v19, :cond_6

    invoke-static {v5}, Lkawa/standard/Scheme;->exp2Type(Lgnu/expr/Expression;)Lgnu/bytecode/Type;

    move-result-object v19

    move-object/from16 v16, v19

    .line 213
    .local v16, type:Lgnu/bytecode/Type;
    :goto_2
    const/4 v15, 0x0

    .line 214
    .local v15, part:Lgnu/bytecode/Member;
    move-object/from16 v0, v16

    instance-of v0, v0, Lgnu/bytecode/ObjectType;

    move/from16 v19, v0

    if-eqz v19, :cond_d

    move-object v0, v6

    instance-of v0, v0, Lgnu/expr/QuoteExp;

    move/from16 v19, v0

    if-eqz v19, :cond_d

    .line 216
    check-cast v6, Lgnu/expr/QuoteExp;

    .end local v6           #arg1:Lgnu/expr/Expression;
    invoke-virtual {v6}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v17

    .line 217
    .local v17, val1:Ljava/lang/Object;
    move-object/from16 v0, v16

    check-cast v0, Lgnu/bytecode/ObjectType;

    move-object v9, v0

    .line 219
    .local v9, ctype:Lgnu/bytecode/ObjectType;
    move-object/from16 v0, p2

    iget-object v0, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object/from16 v19, v0

    if-eqz v19, :cond_7

    move-object/from16 v0, p2

    iget-object v0, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object/from16 v19, v0

    move-object/from16 v8, v19

    .line 221
    .local v8, caller:Lgnu/bytecode/ClassType;
    :goto_3
    move-object/from16 v0, v17

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v19, v0

    if-nez v19, :cond_2

    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/lists/FString;

    move/from16 v19, v0

    if-nez v19, :cond_2

    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/mapping/Symbol;

    move/from16 v19, v0

    if-eqz v19, :cond_8

    .line 225
    :cond_2
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 226
    .local v13, name:Ljava/lang/String;
    invoke-static {v9, v13, v8}, Lgnu/kawa/reflect/SlotSet;->lookupMember(Lgnu/bytecode/ObjectType;Ljava/lang/String;Lgnu/bytecode/ClassType;)Lgnu/bytecode/Member;

    move-result-object v15

    .line 227
    if-nez v15, :cond_3

    sget-object v19, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_3

    invoke-virtual/range {p2 .. p2}, Lgnu/expr/Compilation;->warnUnknownMember()Z

    move-result v19

    if-eqz v19, :cond_3

    .line 229
    const/16 v19, 0x77

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "no slot `"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\' in "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v9}, Lgnu/bytecode/ObjectType;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p2

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 241
    :cond_3
    :goto_4
    if-eqz v15, :cond_d

    .line 243
    invoke-interface {v15}, Lgnu/bytecode/Member;->getModifiers()I

    move-result v11

    .line 244
    .local v11, modifiers:I
    and-int/lit8 v19, v11, 0x8

    if-eqz v19, :cond_a

    const/16 v19, 0x1

    move/from16 v10, v19

    .line 245
    .local v10, isStaticField:Z
    :goto_5
    if-eqz v8, :cond_4

    invoke-virtual {v8, v15, v9}, Lgnu/bytecode/ClassType;->isAccessible(Lgnu/bytecode/Member;Lgnu/bytecode/ObjectType;)Z

    move-result v19

    if-nez v19, :cond_4

    .line 246
    const/16 v19, 0x65

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "slot \'"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\' in "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-interface {v15}, Lgnu/bytecode/Member;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " not accessible here"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p2

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 249
    :cond_4
    const/16 v19, 0x0

    aget-object v19, v7, v19

    if-eqz v10, :cond_b

    sget-object v20, Lgnu/expr/Target;->Ignore:Lgnu/expr/Target;

    :goto_6
    move-object/from16 v0, v19

    move-object/from16 v1, p2

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 252
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lgnu/kawa/reflect/SlotSet;->returnSelf:Z

    move/from16 v19, v0

    if-eqz v19, :cond_5

    .line 253
    invoke-virtual/range {p2 .. p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v19

    invoke-virtual {v9}, Lgnu/bytecode/ObjectType;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 254
    :cond_5
    const/16 v19, 0x2

    aget-object v19, v7, v19

    move-object/from16 v0, p0

    move-object v1, v9

    move-object/from16 v2, v19

    move-object v3, v15

    move-object/from16 v4, p2

    invoke-static {v0, v1, v2, v3, v4}, Lgnu/kawa/reflect/SlotSet;->compileSet(Lgnu/mapping/Procedure;Lgnu/bytecode/ObjectType;Lgnu/expr/Expression;Ljava/lang/Object;Lgnu/expr/Compilation;)V

    .line 255
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lgnu/kawa/reflect/SlotSet;->returnSelf:Z

    move/from16 v19, v0

    if-eqz v19, :cond_c

    .line 256
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    goto/16 :goto_1

    .line 211
    .end local v8           #caller:Lgnu/bytecode/ClassType;
    .end local v9           #ctype:Lgnu/bytecode/ObjectType;
    .end local v10           #isStaticField:Z
    .end local v11           #modifiers:I
    .end local v13           #name:Ljava/lang/String;
    .end local v15           #part:Lgnu/bytecode/Member;
    .end local v16           #type:Lgnu/bytecode/Type;
    .end local v17           #val1:Ljava/lang/Object;
    .restart local v6       #arg1:Lgnu/expr/Expression;
    :cond_6
    invoke-virtual {v5}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v19

    move-object/from16 v16, v19

    goto/16 :goto_2

    .line 219
    .end local v6           #arg1:Lgnu/expr/Expression;
    .restart local v9       #ctype:Lgnu/bytecode/ObjectType;
    .restart local v15       #part:Lgnu/bytecode/Member;
    .restart local v16       #type:Lgnu/bytecode/Type;
    .restart local v17       #val1:Ljava/lang/Object;
    :cond_7
    move-object/from16 v0, p2

    iget-object v0, v0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    move-object/from16 v19, v0

    move-object/from16 v8, v19

    goto/16 :goto_3

    .line 231
    .restart local v8       #caller:Lgnu/bytecode/ClassType;
    :cond_8
    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/bytecode/Member;

    move/from16 v19, v0

    if-eqz v19, :cond_9

    .line 235
    move-object/from16 v0, v17

    check-cast v0, Lgnu/bytecode/Member;

    move-object v15, v0

    .line 236
    invoke-interface {v15}, Lgnu/bytecode/Member;->getName()Ljava/lang/String;

    move-result-object v13

    .restart local v13       #name:Ljava/lang/String;
    goto/16 :goto_4

    .line 239
    .end local v13           #name:Ljava/lang/String;
    :cond_9
    const/4 v13, 0x0

    .restart local v13       #name:Ljava/lang/String;
    goto/16 :goto_4

    .line 244
    .restart local v11       #modifiers:I
    :cond_a
    const/16 v19, 0x0

    move/from16 v10, v19

    goto/16 :goto_5

    .line 249
    .restart local v10       #isStaticField:Z
    :cond_b
    invoke-static {v9}, Lgnu/expr/Target;->pushValue(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v20

    goto :goto_6

    .line 258
    :cond_c
    sget-object v19, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    goto/16 :goto_1

    .line 262
    .end local v8           #caller:Lgnu/bytecode/ClassType;
    .end local v9           #ctype:Lgnu/bytecode/ObjectType;
    .end local v10           #isStaticField:Z
    .end local v11           #modifiers:I
    .end local v13           #name:Ljava/lang/String;
    .end local v17           #val1:Ljava/lang/Object;
    :cond_d
    invoke-static/range {p1 .. p3}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    goto/16 :goto_1
.end method
