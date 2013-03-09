.class public Lkawa/standard/throw_name;
.super Lgnu/mapping/ProcedureN;
.source "throw_name.java"


# static fields
.field public static final throwName:Lkawa/standard/throw_name;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    new-instance v0, Lkawa/standard/throw_name;

    invoke-direct {v0}, Lkawa/standard/throw_name;-><init>()V

    sput-object v0, Lkawa/standard/throw_name;->throwName:Lkawa/standard/throw_name;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lgnu/mapping/ProcedureN;-><init>()V

    return-void
.end method


# virtual methods
.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 12
    array-length v1, p1

    .line 13
    .local v1, len:I
    if-lez v1, :cond_0

    .line 15
    const/4 v2, 0x0

    aget-object v0, p1, v2

    .line 16
    .local v0, key:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/Throwable;

    if-eqz v2, :cond_1

    .line 18
    array-length v2, p1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 19
    invoke-static {v0}, Lkawa/standard/prim_throw;->throw_it(Ljava/lang/Object;)V

    .line 24
    .end local v0           #key:Ljava/lang/Object;
    :cond_0
    new-instance v2, Lkawa/lang/GenericError;

    const-string v3, "bad arguments to throw"

    invoke-direct {v2, v3}, Lkawa/lang/GenericError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 21
    .restart local v0       #key:Ljava/lang/Object;
    :cond_1
    instance-of v2, v0, Lgnu/mapping/Symbol;

    if-eqz v2, :cond_0

    .line 22
    new-instance v2, Lkawa/lang/NamedException;

    check-cast v0, Lgnu/mapping/Symbol;

    .end local v0           #key:Ljava/lang/Object;
    invoke-direct {v2, v0, p1}, Lkawa/lang/NamedException;-><init>(Lgnu/mapping/Symbol;[Ljava/lang/Object;)V

    throw v2
.end method
