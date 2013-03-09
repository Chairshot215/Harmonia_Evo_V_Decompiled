.class public Lgnu/kawa/reflect/SlotGet;
.super Lgnu/mapping/Procedure2;
.source "SlotGet.java"

# interfaces
.implements Lgnu/mapping/HasSetter;
.implements Lgnu/expr/Inlineable;


# static fields
.field public static final field:Lgnu/kawa/reflect/SlotGet;

.field static noClasses:[Ljava/lang/Class;

.field public static final slotRef:Lgnu/kawa/reflect/SlotGet;

.field public static final staticField:Lgnu/kawa/reflect/SlotGet;


# instance fields
.field isStatic:Z

.field setter:Lgnu/mapping/Procedure;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 10
    new-array v0, v3, [Ljava/lang/Class;

    sput-object v0, Lgnu/kawa/reflect/SlotGet;->noClasses:[Ljava/lang/Class;

    .line 16
    new-instance v0, Lgnu/kawa/reflect/SlotGet;

    const-string v1, "field"

    sget-object v2, Lgnu/kawa/reflect/SlotSet;->set$Mnfield$Ex:Lgnu/kawa/reflect/SlotSet;

    invoke-direct {v0, v1, v3, v2}, Lgnu/kawa/reflect/SlotGet;-><init>(Ljava/lang/String;ZLgnu/mapping/Procedure;)V

    sput-object v0, Lgnu/kawa/reflect/SlotGet;->field:Lgnu/kawa/reflect/SlotGet;

    .line 18
    new-instance v0, Lgnu/kawa/reflect/SlotGet;

    const-string v1, "slot-ref"

    sget-object v2, Lgnu/kawa/reflect/SlotSet;->set$Mnfield$Ex:Lgnu/kawa/reflect/SlotSet;

    invoke-direct {v0, v1, v3, v2}, Lgnu/kawa/reflect/SlotGet;-><init>(Ljava/lang/String;ZLgnu/mapping/Procedure;)V

    sput-object v0, Lgnu/kawa/reflect/SlotGet;->slotRef:Lgnu/kawa/reflect/SlotGet;

    .line 20
    new-instance v0, Lgnu/kawa/reflect/SlotGet;

    const-string v1, "static-field"

    const/4 v2, 0x1

    sget-object v3, Lgnu/kawa/reflect/SlotSet;->set$Mnstatic$Mnfield$Ex:Lgnu/kawa/reflect/SlotSet;

    invoke-direct {v0, v1, v2, v3}, Lgnu/kawa/reflect/SlotGet;-><init>(Ljava/lang/String;ZLgnu/mapping/Procedure;)V

    sput-object v0, Lgnu/kawa/reflect/SlotGet;->staticField:Lgnu/kawa/reflect/SlotGet;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .parameter "name"
    .parameter "isStatic"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lgnu/mapping/Procedure2;-><init>(Ljava/lang/String;)V

    .line 26
    iput-boolean p2, p0, Lgnu/kawa/reflect/SlotGet;->isStatic:Z

    .line 27
    sget-object v0, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string v1, "gnu.kawa.reflect.CompileReflect:validateApplySlotGet"

    invoke-virtual {p0, v0, v1}, Lgnu/kawa/reflect/SlotGet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLgnu/mapping/Procedure;)V
    .locals 0
    .parameter "name"
    .parameter "isStatic"
    .parameter "setter"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lgnu/kawa/reflect/SlotGet;-><init>(Ljava/lang/String;Z)V

    .line 34
    iput-object p3, p0, Lgnu/kawa/reflect/SlotGet;->setter:Lgnu/mapping/Procedure;

    .line 35
    return-void
.end method

.method static coerceToClass(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 2
    .parameter "obj"

    .prologue
    .line 186
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 187
    check-cast p0, Ljava/lang/Class;

    .end local p0
    move-object v0, p0

    .line 189
    :goto_0
    return-object v0

    .line 188
    .restart local p0
    :cond_0
    instance-of v0, p0, Lgnu/bytecode/Type;

    if-eqz v0, :cond_1

    .line 189
    check-cast p0, Lgnu/bytecode/Type;

    .end local p0
    invoke-virtual {p0}, Lgnu/bytecode/Type;->getReflectClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 190
    .restart local p0
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "argument is neither Class nor Type"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "obj"
    .parameter "fname"

    .prologue
    .line 39
    sget-object v0, Lgnu/kawa/reflect/SlotGet;->field:Lgnu/kawa/reflect/SlotGet;

    invoke-virtual {v0, p0, p1}, Lgnu/kawa/reflect/SlotGet;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getSlotValue(ZLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lgnu/expr/Language;)Ljava/lang/Object;
    .locals 5
    .parameter "isStatic"
    .parameter "obj"
    .parameter "name"
    .parameter "fname"
    .parameter "getName"
    .parameter "isName"
    .parameter "language"

    .prologue
    .line 97
    if-eqz p0, :cond_0

    invoke-static {p1}, Lgnu/kawa/reflect/SlotGet;->coerceToClass(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    .line 98
    .local v0, clas:Ljava/lang/Class;
    :goto_0
    const-string v1, "length"

    if-ne p3, v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p0

    .line 102
    .local p0, length:I
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 164
    .end local p0           #length:I
    .end local p1
    .end local p2
    .end local p4
    :goto_1
    return-object p0

    .line 97
    .end local v0           #clas:Ljava/lang/Class;
    .local p0, isStatic:Z
    .restart local p1
    .restart local p2
    .restart local p4
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 107
    .restart local v0       #clas:Ljava/lang/Class;
    :cond_1
    const-string v1, "class"

    if-ne p3, v1, :cond_2

    move-object p0, v0

    .line 108
    goto :goto_1

    .line 109
    :cond_2
    const/4 v2, 0x0

    .line 110
    .local v2, illegalAccess:Z
    if-eqz p3, :cond_4

    .line 115
    :try_start_0
    invoke-virtual {v0, p3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 121
    .local v1, field:Ljava/lang/reflect/Field;
    :goto_2
    if-eqz v1, :cond_4

    .line 123
    if-eqz p0, :cond_3

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    and-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_3

    .line 125
    new-instance p0, Ljava/lang/RuntimeException;

    .end local p0           #isStatic:Z
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "cannot access non-static field \'"

    .end local p2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 p2, 0x27

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 117
    .end local v1           #field:Ljava/lang/reflect/Field;
    .restart local p0       #isStatic:Z
    .restart local p1
    .restart local p2
    :catch_0
    move-exception v1

    .line 119
    .local v1, ex:Ljava/lang/Exception;
    const/4 v1, 0x0

    .local v1, field:Ljava/lang/reflect/Field;
    goto :goto_2

    .line 129
    :cond_3
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #field:Ljava/lang/reflect/Field;
    invoke-virtual {p6, v3, v1}, Lgnu/expr/Language;->coerceToObject(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object p0

    goto :goto_1

    .line 131
    :catch_1
    move-exception v1

    .line 133
    .local v1, ex:Ljava/lang/IllegalAccessException;
    const/4 v1, 0x1

    .end local v2           #illegalAccess:Z
    .local v1, illegalAccess:Z
    move v2, v1

    .line 145
    .end local v1           #illegalAccess:Z
    .restart local v2       #illegalAccess:Z
    :cond_4
    :goto_3
    const/4 v3, 0x0

    .line 146
    .local v3, mname:Ljava/lang/String;
    const/4 v1, 0x0

    .line 149
    .local v1, getmethod:Ljava/lang/reflect/Method;
    if-eqz p4, :cond_5

    .line 151
    .end local v3           #mname:Ljava/lang/String;
    .local p4, mname:Ljava/lang/String;
    :goto_4
    :try_start_2
    sget-object v3, Lgnu/kawa/reflect/SlotGet;->noClasses:[Ljava/lang/Class;

    invoke-virtual {v0, p4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_10
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_e
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_7

    move-result-object p2

    .line 158
    .end local v1           #getmethod:Ljava/lang/reflect/Method;
    .local p2, getmethod:Ljava/lang/reflect/Method;
    :goto_5
    if-eqz p0, :cond_7

    :try_start_3
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result p0

    .end local p0           #isStatic:Z
    and-int/lit8 p0, p0, 0x8

    if-nez p0, :cond_7

    .line 160
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "cannot call non-static getter method \'"

    .end local p5
    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 p5, 0x27

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_9

    .line 166
    :catch_2
    move-exception p0

    move-object p1, p2

    .end local p2           #getmethod:Ljava/lang/reflect/Method;
    .local p1, getmethod:Ljava/lang/reflect/Method;
    move-object p2, p4

    .line 168
    .end local p4           #mname:Ljava/lang/String;
    .local p0, ex:Ljava/lang/reflect/InvocationTargetException;
    .local p2, mname:Ljava/lang/String;
    :goto_6
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p0

    .end local p0           #ex:Ljava/lang/reflect/InvocationTargetException;
    invoke-static {p0}, Lgnu/mapping/WrappedException;->wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 135
    .local p0, isStatic:Z
    .local p1, obj:Ljava/lang/Object;
    .local p2, name:Ljava/lang/String;
    .local p4, getName:Ljava/lang/String;
    .restart local p5
    :catch_3
    move-exception v1

    .line 137
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 149
    .local v1, getmethod:Ljava/lang/reflect/Method;
    .restart local v3       #mname:Ljava/lang/String;
    :cond_5
    :try_start_4
    const-string p4, "get"

    .end local p4           #getName:Ljava/lang/String;
    invoke-static {p4, p2}, Lgnu/expr/ClassExp;->slotToMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_d
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_6

    move-result-object p4

    goto :goto_4

    .line 152
    :catch_4
    move-exception p4

    .line 153
    .local p4, getEx:Ljava/lang/Exception;
    :goto_7
    if-eqz p5, :cond_6

    move-object p4, p5

    .line 155
    .end local v3           #mname:Ljava/lang/String;
    .end local p2           #name:Ljava/lang/String;
    .local p4, mname:Ljava/lang/String;
    :goto_8
    :try_start_5
    sget-object p2, Lgnu/kawa/reflect/SlotGet;->noClasses:[Ljava/lang/Class;

    invoke-virtual {v0, p4, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_5} :catch_e
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_7

    move-result-object p2

    .end local v1           #getmethod:Ljava/lang/reflect/Method;
    .local p2, getmethod:Ljava/lang/reflect/Method;
    goto :goto_5

    .line 153
    .restart local v1       #getmethod:Ljava/lang/reflect/Method;
    .restart local v3       #mname:Ljava/lang/String;
    .local p2, name:Ljava/lang/String;
    .local p4, getEx:Ljava/lang/Exception;
    :cond_6
    :try_start_6
    const-string p4, "is"

    .end local p4           #getEx:Ljava/lang/Exception;
    invoke-static {p4, p2}, Lgnu/expr/ClassExp;->slotToMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_6} :catch_f
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_6} :catch_8

    move-result-object p2

    move-object p4, p2

    goto :goto_8

    .line 162
    .end local v1           #getmethod:Ljava/lang/reflect/Method;
    .end local v3           #mname:Ljava/lang/String;
    .end local p0           #isStatic:Z
    .local p2, getmethod:Ljava/lang/reflect/Method;
    .local p4, mname:Ljava/lang/String;
    :cond_7
    :try_start_7
    sget-object p0, Lgnu/mapping/Values;->noArgs:[Ljava/lang/Object;

    invoke-virtual {p2, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 163
    .local p0, result:Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    .end local p1           #obj:Ljava/lang/Object;
    invoke-virtual {p6, p1, p0}, Lgnu/expr/Language;->coerceToObject(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_7} :catch_c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_7} :catch_9

    move-result-object p0

    .line 164
    goto/16 :goto_1

    .line 170
    .end local p4           #mname:Ljava/lang/String;
    .restart local v1       #getmethod:Ljava/lang/reflect/Method;
    .restart local v3       #mname:Ljava/lang/String;
    .local p0, isStatic:Z
    .restart local p1       #obj:Ljava/lang/Object;
    .local p2, name:Ljava/lang/String;
    :catch_5
    move-exception p0

    move-object p1, v1

    .end local v1           #getmethod:Ljava/lang/reflect/Method;
    .local p1, getmethod:Ljava/lang/reflect/Method;
    move-object p2, v3

    .line 172
    .end local v3           #mname:Ljava/lang/String;
    .end local p5
    .local p0, ex:Ljava/lang/IllegalAccessException;
    .local p2, mname:Ljava/lang/String;
    :goto_9
    const/4 p0, 0x1

    .end local v2           #illegalAccess:Z
    .local p0, illegalAccess:Z
    move-object v4, p1

    .end local p1           #getmethod:Ljava/lang/reflect/Method;
    .local v4, getmethod:Ljava/lang/reflect/Method;
    move p1, p0

    .end local p0           #illegalAccess:Z
    .local p1, illegalAccess:Z
    move-object p0, v4

    .line 177
    .end local v4           #getmethod:Ljava/lang/reflect/Method;
    .end local p2           #mname:Ljava/lang/String;
    .local p0, getmethod:Ljava/lang/reflect/Method;
    :goto_a
    if-eqz p1, :cond_8

    .line 178
    new-instance p0, Ljava/lang/RuntimeException;

    .end local p0           #getmethod:Ljava/lang/reflect/Method;
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1           #illegalAccess:Z
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "illegal access for field "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 174
    .restart local v1       #getmethod:Ljava/lang/reflect/Method;
    .restart local v2       #illegalAccess:Z
    .restart local v3       #mname:Ljava/lang/String;
    .local p0, isStatic:Z
    .local p1, obj:Ljava/lang/Object;
    .local p2, name:Ljava/lang/String;
    .restart local p5
    :catch_6
    move-exception p0

    move-object p0, v1

    .end local v1           #getmethod:Ljava/lang/reflect/Method;
    .local p0, getmethod:Ljava/lang/reflect/Method;
    move-object p1, v3

    .end local v3           #mname:Ljava/lang/String;
    .end local p2           #name:Ljava/lang/String;
    .end local p5
    .local p1, mname:Ljava/lang/String;
    :goto_b
    move p1, v2

    .end local v2           #illegalAccess:Z
    .local p1, illegalAccess:Z
    goto :goto_a

    .line 180
    :cond_8
    new-instance p0, Ljava/lang/RuntimeException;

    .end local p0           #getmethod:Ljava/lang/reflect/Method;
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1           #illegalAccess:Z
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "no such field "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " in "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 174
    .restart local v1       #getmethod:Ljava/lang/reflect/Method;
    .restart local v2       #illegalAccess:Z
    .local p0, isStatic:Z
    .local p1, obj:Ljava/lang/Object;
    .restart local p4       #mname:Ljava/lang/String;
    .restart local p5
    :catch_7
    move-exception p0

    move-object p0, v1

    .end local v1           #getmethod:Ljava/lang/reflect/Method;
    .local p0, getmethod:Ljava/lang/reflect/Method;
    move-object p1, p4

    .end local p4           #mname:Ljava/lang/String;
    .local p1, mname:Ljava/lang/String;
    goto :goto_b

    .restart local v1       #getmethod:Ljava/lang/reflect/Method;
    .restart local v3       #mname:Ljava/lang/String;
    .local p0, isStatic:Z
    .local p1, obj:Ljava/lang/Object;
    .restart local p2       #name:Ljava/lang/String;
    :catch_8
    move-exception p0

    move-object p0, v1

    .end local v1           #getmethod:Ljava/lang/reflect/Method;
    .local p0, getmethod:Ljava/lang/reflect/Method;
    move-object p1, v3

    .end local v3           #mname:Ljava/lang/String;
    .local p1, mname:Ljava/lang/String;
    goto :goto_b

    .end local p0           #getmethod:Ljava/lang/reflect/Method;
    .end local p1           #mname:Ljava/lang/String;
    .end local p5
    .local p2, getmethod:Ljava/lang/reflect/Method;
    .restart local p4       #mname:Ljava/lang/String;
    :catch_9
    move-exception p0

    move-object p0, p2

    .end local p2           #getmethod:Ljava/lang/reflect/Method;
    .restart local p0       #getmethod:Ljava/lang/reflect/Method;
    move-object p1, p4

    .end local p4           #mname:Ljava/lang/String;
    .restart local p1       #mname:Ljava/lang/String;
    goto :goto_b

    .line 170
    .restart local v1       #getmethod:Ljava/lang/reflect/Method;
    .local p0, isStatic:Z
    .local p1, obj:Ljava/lang/Object;
    .restart local p4       #mname:Ljava/lang/String;
    .restart local p5
    :catch_a
    move-exception p0

    move-object p1, v1

    .end local v1           #getmethod:Ljava/lang/reflect/Method;
    .local p1, getmethod:Ljava/lang/reflect/Method;
    move-object p2, p4

    .end local p4           #mname:Ljava/lang/String;
    .local p2, mname:Ljava/lang/String;
    goto :goto_9

    .restart local v1       #getmethod:Ljava/lang/reflect/Method;
    .restart local v3       #mname:Ljava/lang/String;
    .local p1, obj:Ljava/lang/Object;
    .local p2, name:Ljava/lang/String;
    :catch_b
    move-exception p0

    move-object p1, v1

    .end local v1           #getmethod:Ljava/lang/reflect/Method;
    .local p1, getmethod:Ljava/lang/reflect/Method;
    move-object p2, v3

    .end local v3           #mname:Ljava/lang/String;
    .local p2, mname:Ljava/lang/String;
    goto :goto_9

    .end local p0           #isStatic:Z
    .end local p1           #getmethod:Ljava/lang/reflect/Method;
    .end local p5
    .local p2, getmethod:Ljava/lang/reflect/Method;
    .restart local p4       #mname:Ljava/lang/String;
    :catch_c
    move-exception p0

    move-object p1, p2

    .end local p2           #getmethod:Ljava/lang/reflect/Method;
    .restart local p1       #getmethod:Ljava/lang/reflect/Method;
    move-object p2, p4

    .end local p4           #mname:Ljava/lang/String;
    .local p2, mname:Ljava/lang/String;
    goto :goto_9

    .line 166
    .restart local v1       #getmethod:Ljava/lang/reflect/Method;
    .restart local v3       #mname:Ljava/lang/String;
    .restart local p0       #isStatic:Z
    .local p1, obj:Ljava/lang/Object;
    .local p2, name:Ljava/lang/String;
    .restart local p5
    :catch_d
    move-exception p0

    move-object p1, v1

    .end local v1           #getmethod:Ljava/lang/reflect/Method;
    .local p1, getmethod:Ljava/lang/reflect/Method;
    move-object p2, v3

    .end local v3           #mname:Ljava/lang/String;
    .local p2, mname:Ljava/lang/String;
    goto/16 :goto_6

    .end local p2           #mname:Ljava/lang/String;
    .restart local v1       #getmethod:Ljava/lang/reflect/Method;
    .local p1, obj:Ljava/lang/Object;
    .restart local p4       #mname:Ljava/lang/String;
    :catch_e
    move-exception p0

    move-object p1, v1

    .end local v1           #getmethod:Ljava/lang/reflect/Method;
    .local p1, getmethod:Ljava/lang/reflect/Method;
    move-object p2, p4

    .end local p4           #mname:Ljava/lang/String;
    .restart local p2       #mname:Ljava/lang/String;
    goto/16 :goto_6

    .restart local v1       #getmethod:Ljava/lang/reflect/Method;
    .restart local v3       #mname:Ljava/lang/String;
    .local p1, obj:Ljava/lang/Object;
    .local p2, name:Ljava/lang/String;
    :catch_f
    move-exception p0

    move-object p1, v1

    .end local v1           #getmethod:Ljava/lang/reflect/Method;
    .local p1, getmethod:Ljava/lang/reflect/Method;
    move-object p2, v3

    .end local v3           #mname:Ljava/lang/String;
    .local p2, mname:Ljava/lang/String;
    goto/16 :goto_6

    .line 152
    .restart local v1       #getmethod:Ljava/lang/reflect/Method;
    .local p1, obj:Ljava/lang/Object;
    .local p2, name:Ljava/lang/String;
    .restart local p4       #mname:Ljava/lang/String;
    :catch_10
    move-exception v3

    move-object v4, v3

    move-object v3, p4

    .end local p4           #mname:Ljava/lang/String;
    .restart local v3       #mname:Ljava/lang/String;
    move-object p4, v4

    goto/16 :goto_7
.end method

.method public static lookupMember(Lgnu/bytecode/ObjectType;Ljava/lang/String;Lgnu/bytecode/ClassType;)Lgnu/bytecode/Member;
    .locals 5
    .parameter "clas"
    .parameter "name"
    .parameter "caller"

    .prologue
    .line 213
    invoke-static {p1}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {p0, v3, v4}, Lgnu/bytecode/ObjectType;->getField(Ljava/lang/String;I)Lgnu/bytecode/Field;

    move-result-object v0

    .line 215
    .local v0, field:Lgnu/bytecode/Field;
    if-eqz v0, :cond_1

    .line 217
    if-nez p2, :cond_0

    .line 218
    sget-object p2, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    .line 219
    :cond_0
    invoke-virtual {p2, v0, p0}, Lgnu/bytecode/ClassType;->isAccessible(Lgnu/bytecode/Member;Lgnu/bytecode/ObjectType;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v0

    .line 229
    :goto_0
    return-object v3

    .line 224
    :cond_1
    const-string v3, "get"

    invoke-static {v3, p1}, Lgnu/expr/ClassExp;->slotToMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, getname:Ljava/lang/String;
    sget-object v3, Lgnu/bytecode/Type;->typeArray0:[Lgnu/bytecode/Type;

    invoke-virtual {p0, v1, v3}, Lgnu/bytecode/ObjectType;->getMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v2

    .line 226
    .local v2, method:Lgnu/bytecode/Method;
    if-nez v2, :cond_2

    move-object v3, v0

    .line 227
    goto :goto_0

    :cond_2
    move-object v3, v2

    .line 229
    goto :goto_0
.end method

.method public static makeGetField(Lgnu/expr/Expression;Ljava/lang/String;)Lgnu/expr/ApplyExp;
    .locals 3
    .parameter "value"
    .parameter "fieldName"

    .prologue
    .line 357
    const/4 v1, 0x2

    new-array v0, v1, [Lgnu/expr/Expression;

    .line 358
    .local v0, args:[Lgnu/expr/Expression;
    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 359
    const/4 v1, 0x1

    new-instance v2, Lgnu/expr/QuoteExp;

    invoke-direct {v2, p1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v2, v0, v1

    .line 360
    new-instance v1, Lgnu/expr/ApplyExp;

    sget-object v2, Lgnu/kawa/reflect/SlotGet;->field:Lgnu/kawa/reflect/SlotGet;

    invoke-direct {v1, v2, v0}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    return-object v1
.end method

.method public static staticField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "obj"
    .parameter "fname"

    .prologue
    .line 44
    sget-object v0, Lgnu/kawa/reflect/SlotGet;->staticField:Lgnu/kawa/reflect/SlotGet;

    invoke-virtual {v0, p0, p1}, Lgnu/kawa/reflect/SlotGet;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 50
    const/4 v4, 0x0

    .local v4, getName:Ljava/lang/String;
    const/4 v5, 0x0

    .line 51
    .local v5, isName:Ljava/lang/String;
    instance-of v0, p2, Lgnu/bytecode/Field;

    if-eqz v0, :cond_1

    .line 53
    check-cast p2, Lgnu/bytecode/Field;

    .end local p2
    invoke-virtual {p2}, Lgnu/bytecode/Field;->getName()Ljava/lang/String;

    move-result-object v3

    .line 54
    .local v3, fname:Ljava/lang/String;
    const/4 v0, 0x1

    invoke-static {v3, v0}, Lgnu/expr/Compilation;->demangleName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 80
    .local v2, name:Ljava/lang/String;
    :goto_0
    const-string v0, "class"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 81
    const-string v3, "class"

    .line 84
    :cond_0
    :goto_1
    iget-boolean v0, p0, Lgnu/kawa/reflect/SlotGet;->isStatic:Z

    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v6

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lgnu/kawa/reflect/SlotGet;->getSlotValue(ZLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lgnu/expr/Language;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 56
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #fname:Ljava/lang/String;
    .restart local p2
    :cond_1
    instance-of v0, p2, Lgnu/bytecode/Method;

    if-eqz v0, :cond_4

    .line 58
    check-cast p2, Lgnu/bytecode/Method;

    .end local p2
    invoke-virtual {p2}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v7

    .line 59
    .local v7, mname:Ljava/lang/String;
    const/4 v0, 0x0

    invoke-static {v7, v0}, Lgnu/expr/Compilation;->demangleName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 60
    .restart local v2       #name:Ljava/lang/String;
    const-string v0, "get"

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 61
    move-object v4, v7

    .line 64
    :cond_2
    :goto_2
    const/4 v3, 0x0

    .line 65
    .restart local v3       #fname:Ljava/lang/String;
    goto :goto_0

    .line 62
    .end local v3           #fname:Ljava/lang/String;
    :cond_3
    const-string v0, "is"

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63
    move-object v5, v7

    goto :goto_2

    .line 66
    .end local v2           #name:Ljava/lang/String;
    .end local v7           #mname:Ljava/lang/String;
    .restart local p2
    :cond_4
    instance-of v0, p2, Lgnu/mapping/SimpleSymbol;

    if-nez v0, :cond_5

    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    .line 74
    :cond_5
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 75
    .restart local v2       #name:Ljava/lang/String;
    invoke-static {v2}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #fname:Ljava/lang/String;
    goto :goto_0

    .line 78
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #fname:Ljava/lang/String;
    :cond_6
    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v1, 0x2

    const-string v6, "string"

    invoke-direct {v0, p0, v1, p2, v6}, Lgnu/mapping/WrongType;-><init>(Lgnu/mapping/Procedure;ILjava/lang/Object;Ljava/lang/String;)V

    throw v0

    .line 82
    .end local p2
    .restart local v2       #name:Ljava/lang/String;
    .restart local v3       #fname:Ljava/lang/String;
    :cond_7
    const-string v0, "length"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    const-string v3, "length"

    goto :goto_1
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 21
    .parameter "exp"
    .parameter "comp"
    .parameter "target"

    .prologue
    .line 234
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v5

    .line 235
    .local v5, args:[Lgnu/expr/Expression;
    const/16 v19, 0x0

    aget-object v3, v5, v19

    .line 236
    .local v3, arg0:Lgnu/expr/Expression;
    const/16 v19, 0x1

    aget-object v4, v5, v19

    .line 237
    .local v4, arg1:Lgnu/expr/Expression;
    invoke-virtual/range {p2 .. p2}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v13

    .line 238
    .local v13, language:Lgnu/expr/Language;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lgnu/kawa/reflect/SlotGet;->isStatic:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1

    invoke-virtual {v13, v3}, Lgnu/expr/Language;->getTypeFor(Lgnu/expr/Expression;)Lgnu/bytecode/Type;

    move-result-object v19

    move-object/from16 v18, v19

    .line 240
    .local v18, type:Lgnu/bytecode/Type;
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v6

    .line 242
    .local v6, code:Lgnu/bytecode/CodeAttr;
    move-object/from16 v0, v18

    instance-of v0, v0, Lgnu/bytecode/ObjectType;

    move/from16 v19, v0

    if-eqz v19, :cond_8

    move-object v0, v4

    instance-of v0, v0, Lgnu/expr/QuoteExp;

    move/from16 v19, v0

    if-eqz v19, :cond_8

    .line 244
    move-object/from16 v0, v18

    check-cast v0, Lgnu/bytecode/ObjectType;

    move-object v7, v0

    .line 245
    .local v7, ctype:Lgnu/bytecode/ObjectType;
    move-object v0, v4

    check-cast v0, Lgnu/expr/QuoteExp;

    move-object v8, v0

    invoke-virtual {v8}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v17

    .line 246
    .local v17, part:Ljava/lang/Object;
    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/bytecode/Field;

    move/from16 v19, v0

    if-eqz v19, :cond_5

    .line 248
    move-object/from16 v0, v17

    check-cast v0, Lgnu/bytecode/Field;

    move-object v8, v0

    .line 249
    .local v8, field:Lgnu/bytecode/Field;
    invoke-virtual {v8}, Lgnu/bytecode/Field;->getModifiers()I

    move-result v15

    .line 250
    .local v15, modifiers:I
    and-int/lit8 v19, v15, 0x8

    if-eqz v19, :cond_2

    const/16 v19, 0x1

    move/from16 v11, v19

    .line 251
    .local v11, isStaticField:Z
    :goto_1
    const/16 v19, 0x0

    aget-object v19, v5, v19

    if-eqz v11, :cond_3

    sget-object v20, Lgnu/expr/Target;->Ignore:Lgnu/expr/Target;

    :goto_2
    move-object/from16 v0, v19

    move-object/from16 v1, p2

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 254
    if-eqz v11, :cond_4

    .line 256
    const/4 v10, 0x0

    .line 286
    .local v10, inlined:Z
    if-nez v10, :cond_0

    .line 287
    invoke-virtual {v6, v8}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    .line 291
    .end local v10           #inlined:Z
    :cond_0
    :goto_3
    invoke-virtual {v8}, Lgnu/bytecode/Field;->getType()Lgnu/bytecode/Type;

    move-result-object v19

    move-object v0, v13

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lgnu/expr/Language;->getLangTypeFor(Lgnu/bytecode/Type;)Lgnu/bytecode/Type;

    move-result-object v9

    .line 292
    .local v9, ftype:Lgnu/bytecode/Type;
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 320
    .end local v7           #ctype:Lgnu/bytecode/ObjectType;
    .end local v8           #field:Lgnu/bytecode/Field;
    .end local v9           #ftype:Lgnu/bytecode/Type;
    .end local v11           #isStaticField:Z
    .end local v15           #modifiers:I
    .end local v17           #part:Ljava/lang/Object;
    :goto_4
    return-void

    .line 238
    .end local v6           #code:Lgnu/bytecode/CodeAttr;
    .end local v18           #type:Lgnu/bytecode/Type;
    :cond_1
    invoke-virtual {v3}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v19

    move-object/from16 v18, v19

    goto :goto_0

    .line 250
    .restart local v6       #code:Lgnu/bytecode/CodeAttr;
    .restart local v7       #ctype:Lgnu/bytecode/ObjectType;
    .restart local v8       #field:Lgnu/bytecode/Field;
    .restart local v15       #modifiers:I
    .restart local v17       #part:Ljava/lang/Object;
    .restart local v18       #type:Lgnu/bytecode/Type;
    :cond_2
    const/16 v19, 0x0

    move/from16 v11, v19

    goto :goto_1

    .line 251
    .restart local v11       #isStaticField:Z
    :cond_3
    invoke-static {v7}, Lgnu/expr/Target;->pushValue(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v20

    goto :goto_2

    .line 290
    :cond_4
    invoke-virtual {v6, v8}, Lgnu/bytecode/CodeAttr;->emitGetField(Lgnu/bytecode/Field;)V

    goto :goto_3

    .line 295
    .end local v8           #field:Lgnu/bytecode/Field;
    .end local v11           #isStaticField:Z
    .end local v15           #modifiers:I
    :cond_5
    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/bytecode/Method;

    move/from16 v19, v0

    if-eqz v19, :cond_8

    .line 297
    move-object/from16 v0, v17

    check-cast v0, Lgnu/bytecode/Method;

    move-object v14, v0

    .line 298
    .local v14, method:Lgnu/bytecode/Method;
    invoke-virtual {v14}, Lgnu/bytecode/Method;->getModifiers()I

    move-result v15

    .line 299
    .restart local v15       #modifiers:I
    invoke-virtual {v14}, Lgnu/bytecode/Method;->getStaticFlag()Z

    move-result v12

    .line 300
    .local v12, isStaticMethod:Z
    const/16 v19, 0x0

    aget-object v19, v5, v19

    if-eqz v12, :cond_6

    sget-object v20, Lgnu/expr/Target;->Ignore:Lgnu/expr/Target;

    :goto_5
    move-object/from16 v0, v19

    move-object/from16 v1, p2

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 303
    if-eqz v12, :cond_7

    .line 304
    invoke-virtual {v6, v14}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 307
    :goto_6
    invoke-virtual {v14}, Lgnu/bytecode/Method;->getReturnType()Lgnu/bytecode/Type;

    move-result-object v19

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    goto :goto_4

    .line 300
    :cond_6
    invoke-static {v7}, Lgnu/expr/Target;->pushValue(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v20

    goto :goto_5

    .line 306
    :cond_7
    invoke-virtual {v6, v14}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    goto :goto_6

    .line 311
    .end local v7           #ctype:Lgnu/bytecode/ObjectType;
    .end local v12           #isStaticMethod:Z
    .end local v14           #method:Lgnu/bytecode/Method;
    .end local v15           #modifiers:I
    .end local v17           #part:Ljava/lang/Object;
    :cond_8
    invoke-static {v4}, Lgnu/kawa/reflect/ClassMethods;->checkName(Lgnu/expr/Expression;)Ljava/lang/String;

    move-result-object v16

    .line 312
    .local v16, name:Ljava/lang/String;
    move-object/from16 v0, v18

    instance-of v0, v0, Lgnu/bytecode/ArrayType;

    move/from16 v19, v0

    if-eqz v19, :cond_9

    const-string v19, "length"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lgnu/kawa/reflect/SlotGet;->isStatic:Z

    move/from16 v19, v0

    if-nez v19, :cond_9

    .line 314
    const/16 v19, 0x0

    aget-object v19, v5, v19

    invoke-static/range {v18 .. v18}, Lgnu/expr/Target;->pushValue(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 315
    invoke-virtual {v6}, Lgnu/bytecode/CodeAttr;->emitArrayLength()V

    .line 316
    sget-object v19, Lgnu/kawa/lispexpr/LangPrimType;->intType:Lgnu/bytecode/PrimType;

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    goto/16 :goto_4

    .line 319
    :cond_9
    invoke-static/range {p1 .. p3}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    goto/16 :goto_4
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 7
    .parameter "args"

    .prologue
    const/4 v6, 0x1

    .line 324
    array-length v3, p1

    .line 325
    .local v3, nargs:I
    const/4 v5, 0x2

    if-ne v3, v5, :cond_2

    .line 327
    const/4 v5, 0x0

    aget-object v1, p1, v5

    .line 328
    .local v1, arg0:Lgnu/expr/Expression;
    aget-object v2, p1, v6

    .line 329
    .local v2, arg1:Lgnu/expr/Expression;
    instance-of v5, v2, Lgnu/expr/QuoteExp;

    if-eqz v5, :cond_2

    .line 331
    move-object v0, v2

    check-cast v0, Lgnu/expr/QuoteExp;

    move-object v5, v0

    invoke-virtual {v5}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 332
    .local v4, part:Ljava/lang/Object;
    instance-of v5, v4, Lgnu/bytecode/Field;

    if-eqz v5, :cond_0

    .line 333
    check-cast v4, Lgnu/bytecode/Field;

    .end local v4           #part:Ljava/lang/Object;
    invoke-virtual {v4}, Lgnu/bytecode/Field;->getType()Lgnu/bytecode/Type;

    move-result-object v5

    .line 341
    .end local v1           #arg0:Lgnu/expr/Expression;
    .end local v2           #arg1:Lgnu/expr/Expression;
    :goto_0
    return-object v5

    .line 334
    .restart local v1       #arg0:Lgnu/expr/Expression;
    .restart local v2       #arg1:Lgnu/expr/Expression;
    .restart local v4       #part:Ljava/lang/Object;
    :cond_0
    instance-of v5, v4, Lgnu/bytecode/Method;

    if-eqz v5, :cond_1

    .line 335
    check-cast v4, Lgnu/bytecode/Method;

    .end local v4           #part:Ljava/lang/Object;
    invoke-virtual {v4}, Lgnu/bytecode/Method;->getReturnType()Lgnu/bytecode/Type;

    move-result-object v5

    goto :goto_0

    .line 336
    .restart local v4       #part:Ljava/lang/Object;
    :cond_1
    iget-boolean v5, p0, Lgnu/kawa/reflect/SlotGet;->isStatic:Z

    if-nez v5, :cond_2

    invoke-virtual {v1}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v5

    instance-of v5, v5, Lgnu/bytecode/ArrayType;

    if-eqz v5, :cond_2

    const-string v5, "length"

    invoke-static {v2, v6}, Lgnu/kawa/reflect/ClassMethods;->checkName(Lgnu/expr/Expression;Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 338
    sget-object v5, Lgnu/kawa/lispexpr/LangPrimType;->intType:Lgnu/bytecode/PrimType;

    goto :goto_0

    .line 341
    .end local v1           #arg0:Lgnu/expr/Expression;
    .end local v2           #arg1:Lgnu/expr/Expression;
    .end local v4           #part:Ljava/lang/Object;
    :cond_2
    sget-object v5, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    goto :goto_0
.end method

.method public getSetter()Lgnu/mapping/Procedure;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lgnu/kawa/reflect/SlotGet;->setter:Lgnu/mapping/Procedure;

    if-nez v0, :cond_0

    invoke-super {p0}, Lgnu/mapping/Procedure2;->getSetter()Lgnu/mapping/Procedure;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lgnu/kawa/reflect/SlotGet;->setter:Lgnu/mapping/Procedure;

    goto :goto_0
.end method

.method public set2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .parameter "obj"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 203
    iget-boolean v0, p0, Lgnu/kawa/reflect/SlotGet;->isStatic:Z

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {v0, p1, p2, p3}, Lgnu/kawa/reflect/SlotSet;->apply(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 204
    return-void
.end method

.method public setN([Ljava/lang/Object;)V
    .locals 4
    .parameter "args"

    .prologue
    .line 195
    array-length v0, p1

    .line 196
    .local v0, nargs:I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 197
    new-instance v1, Lgnu/mapping/WrongArguments;

    invoke-virtual {p0}, Lgnu/kawa/reflect/SlotGet;->getSetter()Lgnu/mapping/Procedure;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lgnu/mapping/WrongArguments;-><init>(Lgnu/mapping/Procedure;I)V

    throw v1

    .line 198
    :cond_0
    const/4 v1, 0x0

    aget-object v1, p1, v1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    const/4 v3, 0x2

    aget-object v3, p1, v3

    invoke-virtual {p0, v1, v2, v3}, Lgnu/kawa/reflect/SlotGet;->set2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 199
    return-void
.end method
