.class public abstract Lgnu/expr/Initializer;
.super Ljava/lang/Object;
.source "Initializer.java"


# instance fields
.field public field:Lgnu/bytecode/Field;

.field next:Lgnu/expr/Initializer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static reverse(Lgnu/expr/Initializer;)Lgnu/expr/Initializer;
    .locals 2
    .parameter "list"

    .prologue
    .line 18
    const/4 v1, 0x0

    .line 19
    .local v1, prev:Lgnu/expr/Initializer;
    :goto_0
    if-eqz p0, :cond_0

    .line 21
    iget-object v0, p0, Lgnu/expr/Initializer;->next:Lgnu/expr/Initializer;

    .line 22
    .local v0, next:Lgnu/expr/Initializer;
    iput-object v1, p0, Lgnu/expr/Initializer;->next:Lgnu/expr/Initializer;

    .line 23
    move-object v1, p0

    .line 24
    move-object p0, v0

    .line 25
    goto :goto_0

    .line 26
    .end local v0           #next:Lgnu/expr/Initializer;
    :cond_0
    return-object v1
.end method


# virtual methods
.method public abstract emit(Lgnu/expr/Compilation;)V
.end method

.method public reportError(Ljava/lang/String;Lgnu/expr/Compilation;)V
    .locals 3
    .parameter "message"
    .parameter "comp"

    .prologue
    .line 31
    const/16 v0, 0x65

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgnu/expr/Initializer;->field:Lgnu/bytecode/Field;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 32
    return-void
.end method
