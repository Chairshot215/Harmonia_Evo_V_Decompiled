.class public Lgnu/expr/Literal;
.super Ljava/lang/Object;
.source "Literal.java"


# static fields
.field static final CYCLIC:I = 0x4

.field static final EMITTED:I = 0x8

.field static final WRITING:I = 0x1

.field static final WRITTEN:I = 0x2

.field public static final nullLiteral:Lgnu/expr/Literal;


# instance fields
.field argTypes:[Lgnu/bytecode/Type;

.field argValues:[Ljava/lang/Object;

.field public field:Lgnu/bytecode/Field;

.field public flags:I

.field index:I

.field next:Lgnu/expr/Literal;

.field public type:Lgnu/bytecode/Type;

.field value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    new-instance v0, Lgnu/expr/Literal;

    const/4 v1, 0x0

    sget-object v2, Lgnu/bytecode/Type;->nullType:Lgnu/bytecode/ObjectType;

    invoke-direct {v0, v1, v2}, Lgnu/expr/Literal;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    sput-object v0, Lgnu/expr/Literal;->nullLiteral:Lgnu/expr/Literal;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lgnu/bytecode/Field;Lgnu/expr/LitTable;)V
    .locals 1
    .parameter "value"
    .parameter "field"
    .parameter "litTable"

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    .line 91
    iget-object v0, p3, Lgnu/expr/LitTable;->literalTable:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1, p0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iput-object p2, p0, Lgnu/expr/Literal;->field:Lgnu/bytecode/Field;

    .line 93
    invoke-virtual {p2}, Lgnu/bytecode/Field;->getType()Lgnu/bytecode/Type;

    move-result-object v0

    iput-object v0, p0, Lgnu/expr/Literal;->type:Lgnu/bytecode/Type;

    .line 94
    const/16 v0, 0xa

    iput v0, p0, Lgnu/expr/Literal;->flags:I

    .line 95
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Lgnu/bytecode/Type;)V
    .locals 0
    .parameter "value"
    .parameter "type"

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    .line 107
    iput-object p2, p0, Lgnu/expr/Literal;->type:Lgnu/bytecode/Type;

    .line 108
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lgnu/bytecode/Type;Lgnu/expr/LitTable;)V
    .locals 1
    .parameter "value"
    .parameter "type"
    .parameter "litTable"

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    .line 100
    iget-object v0, p3, Lgnu/expr/LitTable;->literalTable:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1, p0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iput-object p2, p0, Lgnu/expr/Literal;->type:Lgnu/bytecode/Type;

    .line 102
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lgnu/expr/LitTable;)V
    .locals 1
    .parameter "value"
    .parameter "litTable"

    .prologue
    .line 75
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, p1, v0, p2}, Lgnu/expr/Literal;-><init>(Ljava/lang/Object;Ljava/lang/String;Lgnu/expr/LitTable;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Lgnu/expr/LitTable;)V
    .locals 1
    .parameter "value"
    .parameter "name"
    .parameter "litTable"

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    .line 81
    iget-object v0, p3, Lgnu/expr/LitTable;->literalTable:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1, p0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v0

    iput-object v0, p0, Lgnu/expr/Literal;->type:Lgnu/bytecode/Type;

    .line 83
    invoke-virtual {p0, p2, p3}, Lgnu/expr/Literal;->assign(Ljava/lang/String;Lgnu/expr/LitTable;)V

    .line 84
    return-void
.end method


# virtual methods
.method assign(Lgnu/bytecode/Field;Lgnu/expr/LitTable;)V
    .locals 1
    .parameter "field"
    .parameter "litTable"

    .prologue
    .line 67
    iget-object v0, p2, Lgnu/expr/LitTable;->literalsChain:Lgnu/expr/Literal;

    iput-object v0, p0, Lgnu/expr/Literal;->next:Lgnu/expr/Literal;

    .line 68
    iput-object p0, p2, Lgnu/expr/LitTable;->literalsChain:Lgnu/expr/Literal;

    .line 69
    iput-object p1, p0, Lgnu/expr/Literal;->field:Lgnu/bytecode/Field;

    .line 70
    return-void
.end method

.method assign(Lgnu/expr/LitTable;)V
    .locals 1
    .parameter "litTable"

    .prologue
    .line 46
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lgnu/expr/Literal;->assign(Ljava/lang/String;Lgnu/expr/LitTable;)V

    .line 47
    return-void
.end method

.method assign(Ljava/lang/String;Lgnu/expr/LitTable;)V
    .locals 3
    .parameter "name"
    .parameter "litTable"

    .prologue
    .line 53
    iget-object v1, p2, Lgnu/expr/LitTable;->comp:Lgnu/expr/Compilation;

    iget-boolean v1, v1, Lgnu/expr/Compilation;->immediate:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x9

    move v0, v1

    .line 55
    .local v0, flags:I
    :goto_0
    if-nez p1, :cond_1

    .line 57
    iget v1, p2, Lgnu/expr/LitTable;->literalsCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p2, Lgnu/expr/LitTable;->literalsCount:I

    iput v1, p0, Lgnu/expr/Literal;->index:I

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Lit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lgnu/expr/Literal;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 62
    :goto_1
    iget-object v1, p2, Lgnu/expr/LitTable;->mainClass:Lgnu/bytecode/ClassType;

    iget-object v2, p0, Lgnu/expr/Literal;->type:Lgnu/bytecode/Type;

    invoke-virtual {v1, p1, v2, v0}, Lgnu/bytecode/ClassType;->addField(Ljava/lang/String;Lgnu/bytecode/Type;I)Lgnu/bytecode/Field;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lgnu/expr/Literal;->assign(Lgnu/bytecode/Field;Lgnu/expr/LitTable;)V

    .line 63
    return-void

    .line 53
    .end local v0           #flags:I
    :cond_0
    const/16 v1, 0x18

    move v0, v1

    goto :goto_0

    .line 61
    .restart local v0       #flags:I
    :cond_1
    or-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    return-object v0
.end method
