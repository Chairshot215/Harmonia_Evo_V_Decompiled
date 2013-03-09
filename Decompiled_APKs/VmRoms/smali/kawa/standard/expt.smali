.class public Lkawa/standard/expt;
.super Lgnu/mapping/Procedure2;
.source "expt.java"


# static fields
.field public static final expt:Lkawa/standard/expt;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9
    new-instance v0, Lkawa/standard/expt;

    const-string v1, "expt"

    invoke-direct {v0, v1}, Lkawa/standard/expt;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkawa/standard/expt;->expt:Lkawa/standard/expt;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lgnu/mapping/Procedure2;-><init>(Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static expt(Lgnu/math/IntNum;I)Lgnu/math/IntNum;
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 18
    invoke-static {p0, p1}, Lgnu/math/IntNum;->power(Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method public static expt(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/math/Numeric;
    .locals 1
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 23
    instance-of v0, p1, Lgnu/math/IntNum;

    if-eqz v0, :cond_0

    .line 24
    check-cast p0, Lgnu/math/Numeric;

    .end local p0
    check-cast p1, Lgnu/math/IntNum;

    .end local p1
    invoke-virtual {p0, p1}, Lgnu/math/Numeric;->power(Lgnu/math/IntNum;)Lgnu/math/Numeric;

    move-result-object v0

    .line 25
    :goto_0
    return-object v0

    .restart local p0
    .restart local p1
    :cond_0
    check-cast p0, Lgnu/math/Complex;

    .end local p0
    check-cast p1, Lgnu/math/Complex;

    .end local p1
    invoke-static {p0, p1}, Lgnu/math/Complex;->power(Lgnu/math/Complex;Lgnu/math/Complex;)Lgnu/math/Complex;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 30
    invoke-static {p1, p2}, Lkawa/standard/expt;->expt(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v0

    return-object v0
.end method
