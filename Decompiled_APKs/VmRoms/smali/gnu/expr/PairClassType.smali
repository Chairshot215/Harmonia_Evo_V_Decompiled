.class public Lgnu/expr/PairClassType;
.super Lgnu/bytecode/ClassType;
.source "PairClassType.java"


# instance fields
.field public instanceType:Lgnu/bytecode/ClassType;

.field staticLink:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lgnu/bytecode/ClassType;-><init>()V

    .line 33
    return-void
.end method

.method constructor <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1
    .parameter "reflectInterface"
    .parameter "reflectInstanceClass"

    .prologue
    .line 37
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lgnu/bytecode/ClassType;-><init>(Ljava/lang/String;)V

    .line 38
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lgnu/expr/PairClassType;->setExisting(Z)V

    .line 39
    iput-object p1, p0, Lgnu/expr/PairClassType;->reflectClass:Ljava/lang/Class;

    .line 40
    invoke-static {p1, p0}, Lgnu/bytecode/Type;->registerTypeForClass(Ljava/lang/Class;Lgnu/bytecode/Type;)V

    .line 41
    invoke-static {p2}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v0

    check-cast v0, Lgnu/bytecode/ClassType;

    iput-object v0, p0, Lgnu/expr/PairClassType;->instanceType:Lgnu/bytecode/ClassType;

    .line 42
    return-void
.end method

.method public static extractStaticLink(Lgnu/bytecode/ClassType;)Ljava/lang/Object;
    .locals 1
    .parameter "type"

    .prologue
    .line 68
    check-cast p0, Lgnu/expr/PairClassType;

    .end local p0
    iget-object v0, p0, Lgnu/expr/PairClassType;->staticLink:Ljava/lang/Object;

    return-object v0
.end method

.method public static make(Ljava/lang/Class;Ljava/lang/Class;)Lgnu/expr/PairClassType;
    .locals 1
    .parameter "reflectInterface"
    .parameter "reflectInstanceClass"

    .prologue
    .line 47
    new-instance v0, Lgnu/expr/PairClassType;

    invoke-direct {v0, p0, p1}, Lgnu/expr/PairClassType;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static make(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lgnu/expr/PairClassType;
    .locals 1
    .parameter "reflectInterface"
    .parameter "reflectInstanceClass"
    .parameter "staticLink"

    .prologue
    .line 54
    new-instance v0, Lgnu/expr/PairClassType;

    invoke-direct {v0, p0, p1}, Lgnu/expr/PairClassType;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 56
    .local v0, type:Lgnu/expr/PairClassType;
    iput-object p2, v0, Lgnu/expr/PairClassType;->staticLink:Ljava/lang/Object;

    .line 57
    return-object v0
.end method


# virtual methods
.method public getStaticLink()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lgnu/expr/PairClassType;->staticLink:Ljava/lang/Object;

    return-object v0
.end method
