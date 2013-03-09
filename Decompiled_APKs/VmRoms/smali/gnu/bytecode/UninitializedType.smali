.class public Lgnu/bytecode/UninitializedType;
.super Lgnu/bytecode/ObjectType;
.source "UninitializedType.java"


# instance fields
.field ctype:Lgnu/bytecode/ClassType;

.field label:Lgnu/bytecode/Label;


# direct methods
.method constructor <init>(Lgnu/bytecode/ClassType;)V
    .locals 1
    .parameter "ctype"

    .prologue
    .line 16
    invoke-virtual {p1}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lgnu/bytecode/ObjectType;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p1}, Lgnu/bytecode/ClassType;->getSignature()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/bytecode/UninitializedType;->setSignature(Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Lgnu/bytecode/UninitializedType;->ctype:Lgnu/bytecode/ClassType;

    .line 19
    return-void
.end method

.method constructor <init>(Lgnu/bytecode/ClassType;Lgnu/bytecode/Label;)V
    .locals 0
    .parameter "ctype"
    .parameter "label"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lgnu/bytecode/UninitializedType;-><init>(Lgnu/bytecode/ClassType;)V

    .line 24
    iput-object p2, p0, Lgnu/bytecode/UninitializedType;->label:Lgnu/bytecode/Label;

    .line 25
    return-void
.end method

.method static uninitializedThis(Lgnu/bytecode/ClassType;)Lgnu/bytecode/UninitializedType;
    .locals 1
    .parameter "ctype"

    .prologue
    .line 29
    new-instance v0, Lgnu/bytecode/UninitializedType;

    invoke-direct {v0, p0}, Lgnu/bytecode/UninitializedType;-><init>(Lgnu/bytecode/ClassType;)V

    return-object v0
.end method


# virtual methods
.method public getImplementationType()Lgnu/bytecode/Type;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lgnu/bytecode/UninitializedType;->ctype:Lgnu/bytecode/ClassType;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Uninitialized<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgnu/bytecode/UninitializedType;->ctype:Lgnu/bytecode/ClassType;

    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
