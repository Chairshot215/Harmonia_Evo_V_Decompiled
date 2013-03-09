.class public Lgnu/bytecode/IfState;
.super Ljava/lang/Object;
.source "IfState.java"


# instance fields
.field doing_else:Z

.field end_label:Lgnu/bytecode/Label;

.field previous:Lgnu/bytecode/IfState;

.field stack_growth:I

.field start_stack_size:I

.field then_stacked_types:[Lgnu/bytecode/Type;


# direct methods
.method public constructor <init>(Lgnu/bytecode/CodeAttr;)V
    .locals 1
    .parameter "code"

    .prologue
    .line 33
    new-instance v0, Lgnu/bytecode/Label;

    invoke-direct {v0, p1}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    invoke-direct {p0, p1, v0}, Lgnu/bytecode/IfState;-><init>(Lgnu/bytecode/CodeAttr;Lgnu/bytecode/Label;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/CodeAttr;Lgnu/bytecode/Label;)V
    .locals 1
    .parameter "code"
    .parameter "endLabel"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iget-object v0, p1, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    iput-object v0, p0, Lgnu/bytecode/IfState;->previous:Lgnu/bytecode/IfState;

    .line 39
    iput-object p0, p1, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    .line 40
    iput-object p2, p0, Lgnu/bytecode/IfState;->end_label:Lgnu/bytecode/Label;

    .line 41
    iget v0, p1, Lgnu/bytecode/CodeAttr;->SP:I

    iput v0, p0, Lgnu/bytecode/IfState;->start_stack_size:I

    .line 42
    return-void
.end method
