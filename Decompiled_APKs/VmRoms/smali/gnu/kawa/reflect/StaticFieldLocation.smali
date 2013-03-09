.class public Lgnu/kawa/reflect/StaticFieldLocation;
.super Lgnu/kawa/reflect/FieldLocation;
.source "StaticFieldLocation.java"


# direct methods
.method public constructor <init>(Lgnu/bytecode/ClassType;Ljava/lang/String;)V
    .locals 1
    .parameter "type"
    .parameter "mname"

    .prologue
    .line 15
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lgnu/kawa/reflect/FieldLocation;-><init>(Ljava/lang/Object;Lgnu/bytecode/ClassType;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "cname"
    .parameter "fname"

    .prologue
    .line 10
    const/4 v0, 0x0

    invoke-static {p1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lgnu/kawa/reflect/FieldLocation;-><init>(Ljava/lang/Object;Lgnu/bytecode/ClassType;Ljava/lang/String;)V

    .line 11
    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Field;)V
    .locals 1
    .parameter "field"

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lgnu/kawa/reflect/FieldLocation;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Field;)V

    .line 21
    return-void
.end method

.method public static define(Lgnu/mapping/Environment;Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/reflect/StaticFieldLocation;
    .locals 1
    .parameter "environ"
    .parameter "sym"
    .parameter "property"
    .parameter "cname"
    .parameter "fname"

    .prologue
    .line 35
    new-instance v0, Lgnu/kawa/reflect/StaticFieldLocation;

    invoke-direct {v0, p3, p4}, Lgnu/kawa/reflect/StaticFieldLocation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .local v0, loc:Lgnu/kawa/reflect/StaticFieldLocation;
    invoke-virtual {p0, p1, p2, v0}, Lgnu/mapping/Environment;->addLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;Lgnu/mapping/Location;)Lgnu/mapping/NamedLocation;

    .line 37
    return-object v0
.end method

.method public static make(Lgnu/expr/Declaration;)Lgnu/kawa/reflect/StaticFieldLocation;
    .locals 4
    .parameter "decl"

    .prologue
    .line 42
    iget-object v1, p0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    .line 43
    .local v1, fld:Lgnu/bytecode/Field;
    invoke-virtual {v1}, Lgnu/bytecode/Field;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v0

    .line 44
    .local v0, ctype:Lgnu/bytecode/ClassType;
    new-instance v2, Lgnu/kawa/reflect/StaticFieldLocation;

    invoke-virtual {v1}, Lgnu/bytecode/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lgnu/kawa/reflect/StaticFieldLocation;-><init>(Lgnu/bytecode/ClassType;Ljava/lang/String;)V

    .line 45
    .local v2, loc:Lgnu/kawa/reflect/StaticFieldLocation;
    invoke-virtual {v2, p0}, Lgnu/kawa/reflect/StaticFieldLocation;->setDeclaration(Lgnu/expr/Declaration;)V

    .line 47
    return-object v2
.end method

.method public static make(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/reflect/StaticFieldLocation;
    .locals 1
    .parameter "cname"
    .parameter "fldName"

    .prologue
    .line 52
    new-instance v0, Lgnu/kawa/reflect/StaticFieldLocation;

    invoke-direct {v0, p0, p1}, Lgnu/kawa/reflect/StaticFieldLocation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "defaultValue"

    .prologue
    .line 25
    invoke-super {p0, p1}, Lgnu/kawa/reflect/FieldLocation;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 26
    .local v0, val:Ljava/lang/Object;
    instance-of v1, v0, Lkawa/lang/Macro;

    if-eqz v1, :cond_0

    .line 27
    invoke-virtual {p0}, Lgnu/kawa/reflect/StaticFieldLocation;->getDeclaration()Lgnu/expr/Declaration;

    .line 28
    :cond_0
    return-object v0
.end method
