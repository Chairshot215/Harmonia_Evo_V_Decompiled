.class public Lgnu/kawa/xml/NodeSetType;
.super Lgnu/kawa/reflect/OccurrenceType;
.source "NodeSetType.java"


# direct methods
.method public constructor <init>(Lgnu/bytecode/Type;)V
    .locals 2
    .parameter "itemType"

    .prologue
    .line 10
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1}, Lgnu/kawa/reflect/OccurrenceType;-><init>(Lgnu/bytecode/Type;II)V

    .line 11
    return-void
.end method

.method public static getInstance(Lgnu/bytecode/Type;)Lgnu/bytecode/Type;
    .locals 1
    .parameter "base"

    .prologue
    .line 15
    new-instance v0, Lgnu/kawa/xml/NodeSetType;

    invoke-direct {v0, p0}, Lgnu/kawa/xml/NodeSetType;-><init>(Lgnu/bytecode/Type;)V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lgnu/kawa/reflect/OccurrenceType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "node-set"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
