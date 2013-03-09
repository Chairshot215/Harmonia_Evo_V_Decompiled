.class public Lgnu/kawa/functions/Convert;
.super Lgnu/mapping/Procedure2;
.source "Convert.java"


# static fields
.field public static final as:Lgnu/kawa/functions/Convert;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 7
    new-instance v0, Lgnu/kawa/functions/Convert;

    invoke-direct {v0}, Lgnu/kawa/functions/Convert;-><init>()V

    sput-object v0, Lgnu/kawa/functions/Convert;->as:Lgnu/kawa/functions/Convert;

    .line 9
    sget-object v0, Lgnu/kawa/functions/Convert;->as:Lgnu/kawa/functions/Convert;

    const-string v1, "as"

    invoke-virtual {v0, v1}, Lgnu/kawa/functions/Convert;->setName(Ljava/lang/String;)V

    .line 10
    sget-object v0, Lgnu/kawa/functions/Convert;->as:Lgnu/kawa/functions/Convert;

    sget-object v1, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string v2, "gnu.kawa.functions.CompileMisc:validateApplyConvert"

    invoke-virtual {v0, v1, v2}, Lgnu/kawa/functions/Convert;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 12
    sget-object v0, Lgnu/mapping/Procedure;->compilerKey:Lgnu/mapping/LazyPropertyKey;

    sget-object v1, Lgnu/kawa/functions/Convert;->as:Lgnu/kawa/functions/Convert;

    const-string v2, "*gnu.kawa.functions.CompileMisc:forConvert"

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/LazyPropertyKey;->set(Lgnu/mapping/PropertySet;Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lgnu/mapping/Procedure2;-><init>()V

    return-void
.end method

.method public static getInstance()Lgnu/kawa/functions/Convert;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lgnu/kawa/functions/Convert;->as:Lgnu/kawa/functions/Convert;

    return-object v0
.end method


# virtual methods
.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 23
    instance-of v2, p1, Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 24
    check-cast p1, Ljava/lang/Class;

    .end local p1
    invoke-static {p1}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v1

    .line 27
    .local v1, type:Lgnu/bytecode/Type;
    :goto_0
    invoke-virtual {v1, p2}, Lgnu/bytecode/Type;->coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 26
    .end local v1           #type:Lgnu/bytecode/Type;
    .restart local p1
    :cond_0
    move-object v0, p1

    check-cast v0, Lgnu/bytecode/Type;

    move-object v1, v0

    .restart local v1       #type:Lgnu/bytecode/Type;
    goto :goto_0
.end method
