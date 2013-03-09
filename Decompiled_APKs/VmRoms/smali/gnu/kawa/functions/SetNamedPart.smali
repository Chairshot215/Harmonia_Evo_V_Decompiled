.class public Lgnu/kawa/functions/SetNamedPart;
.super Lgnu/mapping/Procedure3;
.source "SetNamedPart.java"

# interfaces
.implements Lgnu/mapping/HasSetter;


# static fields
.field public static final setNamedPart:Lgnu/kawa/functions/SetNamedPart;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 10
    new-instance v0, Lgnu/kawa/functions/SetNamedPart;

    invoke-direct {v0}, Lgnu/kawa/functions/SetNamedPart;-><init>()V

    sput-object v0, Lgnu/kawa/functions/SetNamedPart;->setNamedPart:Lgnu/kawa/functions/SetNamedPart;

    .line 12
    sget-object v0, Lgnu/kawa/functions/SetNamedPart;->setNamedPart:Lgnu/kawa/functions/SetNamedPart;

    const-string v1, "setNamedPart"

    invoke-virtual {v0, v1}, Lgnu/kawa/functions/SetNamedPart;->setName(Ljava/lang/String;)V

    .line 13
    sget-object v0, Lgnu/kawa/functions/SetNamedPart;->setNamedPart:Lgnu/kawa/functions/SetNamedPart;

    sget-object v1, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string v2, "gnu.kawa.functions.CompileNamedPart:validateSetNamedPart"

    invoke-virtual {v0, v1, v2}, Lgnu/kawa/functions/SetNamedPart;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lgnu/mapping/Procedure3;-><init>()V

    return-void
.end method


# virtual methods
.method public apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .parameter "container"
    .parameter "part"
    .parameter "value"

    .prologue
    .line 23
    instance-of v5, p1, Lgnu/mapping/Namespace;

    if-eqz v5, :cond_0

    .line 25
    move-object v0, p1

    check-cast v0, Lgnu/mapping/Namespace;

    move-object v2, v0

    .line 26
    .local v2, ns:Lgnu/mapping/Namespace;
    invoke-virtual {v2}, Lgnu/mapping/Namespace;->getName()Ljava/lang/String;

    move-result-object v4

    .line 27
    .local v4, uri:Ljava/lang/String;
    const-string v5, "class:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 28
    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object p1

    .line 37
    .end local v2           #ns:Lgnu/mapping/Namespace;
    .end local v4           #uri:Ljava/lang/String;
    .end local p1
    :cond_0
    instance-of v5, p1, Ljava/lang/Class;

    if-eqz v5, :cond_3

    .line 38
    check-cast p1, Ljava/lang/Class;

    invoke-static {p1}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object p1

    check-cast p1, Lgnu/bytecode/ClassType;

    .local p1, container:Lgnu/bytecode/ClassType;
    move-object v5, p1

    .line 39
    .end local p1           #container:Lgnu/bytecode/ClassType;
    :goto_0
    instance-of v6, v5, Lgnu/bytecode/ClassType;

    if-eqz v6, :cond_2

    .line 43
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, p3}, Lgnu/kawa/reflect/SlotSet;->setStaticField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    sget-object v5, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_1
    return-object v5

    .line 31
    .restart local v2       #ns:Lgnu/mapping/Namespace;
    .restart local v4       #uri:Ljava/lang/String;
    .local p1, container:Ljava/lang/Object;
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v3

    .line 32
    .local v3, sym:Lgnu/mapping/Symbol;
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v1

    .line 33
    .local v1, env:Lgnu/mapping/Environment;
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v5

    invoke-virtual {v5, v3, p3}, Lgnu/mapping/Environment;->put(Lgnu/mapping/Symbol;Ljava/lang/Object;)V

    .line 34
    sget-object v5, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_1

    .line 46
    .end local v1           #env:Lgnu/mapping/Environment;
    .end local v2           #ns:Lgnu/mapping/Namespace;
    .end local v3           #sym:Lgnu/mapping/Symbol;
    .end local v4           #uri:Ljava/lang/String;
    .end local p1           #container:Ljava/lang/Object;
    :catch_0
    move-exception v6

    .line 52
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, p3}, Lgnu/kawa/reflect/SlotSet;->setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    sget-object v5, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_1

    :cond_3
    move-object v5, p1

    goto :goto_0
.end method
