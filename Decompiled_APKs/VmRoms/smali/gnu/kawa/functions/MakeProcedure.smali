.class public Lgnu/kawa/functions/MakeProcedure;
.super Lgnu/mapping/ProcedureN;
.source "MakeProcedure.java"


# static fields
.field public static final makeProcedure:Lgnu/kawa/functions/MakeProcedure;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 7
    new-instance v0, Lgnu/kawa/functions/MakeProcedure;

    const-string v1, "make-procedure"

    invoke-direct {v0, v1}, Lgnu/kawa/functions/MakeProcedure;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/kawa/functions/MakeProcedure;->makeProcedure:Lgnu/kawa/functions/MakeProcedure;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lgnu/mapping/ProcedureN;-><init>(Ljava/lang/String;)V

    .line 13
    sget-object v0, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string v1, "gnu.kawa.functions.CompileMisc:validateApplyMakeProcedure"

    invoke-virtual {p0, v0, v1}, Lgnu/kawa/functions/MakeProcedure;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    return-void
.end method

.method public static makeProcedure$V([Ljava/lang/Object;)Lgnu/expr/GenericProc;
    .locals 1
    .parameter "args"

    .prologue
    .line 19
    invoke-static {p0}, Lgnu/expr/GenericProc;->make([Ljava/lang/Object;)Lgnu/expr/GenericProc;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "args"

    .prologue
    .line 24
    invoke-static {p1}, Lgnu/expr/GenericProc;->make([Ljava/lang/Object;)Lgnu/expr/GenericProc;

    move-result-object v0

    return-object v0
.end method
