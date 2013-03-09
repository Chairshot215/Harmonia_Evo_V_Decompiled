.class public abstract Lgnu/mapping/ProcedureN;
.super Lgnu/mapping/Procedure;
.source "ProcedureN.java"


# static fields
.field public static final noArgs:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lgnu/mapping/ProcedureN;->noArgs:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lgnu/mapping/Procedure;-><init>()V

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "n"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lgnu/mapping/Procedure;-><init>(Ljava/lang/String;)V

    .line 18
    return-void
.end method


# virtual methods
.method public apply0()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 24
    sget-object v0, Lgnu/mapping/ProcedureN;->noArgs:[Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lgnu/mapping/ProcedureN;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "arg1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 29
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/Object;

    .line 30
    .local v0, args:[Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 31
    invoke-virtual {p0, v0}, Lgnu/mapping/ProcedureN;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "arg1"
    .parameter "arg2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 36
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    .line 37
    .local v0, args:[Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 38
    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 39
    invoke-virtual {p0, v0}, Lgnu/mapping/ProcedureN;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 44
    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/Object;

    .line 45
    .local v0, args:[Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 46
    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 47
    const/4 v1, 0x2

    aput-object p3, v0, v1

    .line 48
    invoke-virtual {p0, v0}, Lgnu/mapping/ProcedureN;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public apply4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "arg4"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 54
    const/4 v1, 0x4

    new-array v0, v1, [Ljava/lang/Object;

    .line 55
    .local v0, args:[Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 56
    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 57
    const/4 v1, 0x2

    aput-object p3, v0, v1

    .line 58
    const/4 v1, 0x3

    aput-object p4, v0, v1

    .line 59
    invoke-virtual {p0, v0}, Lgnu/mapping/ProcedureN;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public abstract applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
