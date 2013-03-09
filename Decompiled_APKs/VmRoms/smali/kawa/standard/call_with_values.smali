.class public Lkawa/standard/call_with_values;
.super Lgnu/mapping/Procedure2;
.source "call_with_values.java"


# static fields
.field public static final callWithValues:Lkawa/standard/call_with_values;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 6
    new-instance v0, Lkawa/standard/call_with_values;

    invoke-direct {v0}, Lkawa/standard/call_with_values;-><init>()V

    sput-object v0, Lkawa/standard/call_with_values;->callWithValues:Lkawa/standard/call_with_values;

    .line 7
    sget-object v0, Lkawa/standard/call_with_values;->callWithValues:Lkawa/standard/call_with_values;

    const-string v1, "call-with-values"

    invoke-virtual {v0, v1}, Lkawa/standard/call_with_values;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Lgnu/mapping/Procedure2;-><init>()V

    return-void
.end method

.method public static callWithValues(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Ljava/lang/Object;
    .locals 2
    .parameter "producer"
    .parameter "consumer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 12
    invoke-virtual {p0}, Lgnu/mapping/Procedure;->apply0()Ljava/lang/Object;

    move-result-object v0

    .line 13
    .local v0, values:Ljava/lang/Object;
    instance-of v1, v0, Lgnu/mapping/Values;

    if-eqz v1, :cond_0

    .line 14
    check-cast v0, Lgnu/mapping/Values;

    .end local v0           #values:Ljava/lang/Object;
    invoke-virtual {v0, p1}, Lgnu/mapping/Values;->call_with(Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object v1

    .line 16
    :goto_0
    return-object v1

    .restart local v0       #values:Ljava/lang/Object;
    :cond_0
    invoke-virtual {p1, v0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 4
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 26
    const/4 v3, 0x2

    invoke-static {p0, v3}, Lgnu/mapping/Procedure;->checkArgCount(Lgnu/mapping/Procedure;I)V

    .line 27
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getArgs()[Ljava/lang/Object;

    move-result-object v0

    .line 28
    .local v0, args:[Ljava/lang/Object;
    const/4 v3, 0x0

    aget-object p0, v0, v3

    .end local p0
    check-cast p0, Lgnu/mapping/Procedure;

    invoke-virtual {p0}, Lgnu/mapping/Procedure;->apply0()Ljava/lang/Object;

    move-result-object v2

    .line 29
    .local v2, values:Ljava/lang/Object;
    const/4 v3, 0x1

    aget-object v1, v0, v3

    check-cast v1, Lgnu/mapping/Procedure;

    .line 30
    .local v1, consumer:Lgnu/mapping/Procedure;
    instance-of v3, v2, Lgnu/mapping/Values;

    if-eqz v3, :cond_0

    .line 32
    check-cast v2, Lgnu/mapping/Values;

    .end local v2           #values:Ljava/lang/Object;
    invoke-virtual {v2}, Lgnu/mapping/Values;->getValues()[Ljava/lang/Object;

    move-result-object v0

    .line 33
    invoke-virtual {v1, v0, p1}, Lgnu/mapping/Procedure;->checkN([Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 39
    :goto_0
    return-void

    .line 37
    .restart local v2       #values:Ljava/lang/Object;
    :cond_0
    invoke-virtual {v1, v2, p1}, Lgnu/mapping/Procedure;->check1(Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    goto :goto_0
.end method

.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "producer"
    .parameter "consumer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 21
    check-cast p1, Lgnu/mapping/Procedure;

    .end local p1
    check-cast p2, Lgnu/mapping/Procedure;

    .end local p2
    invoke-static {p1, p2}, Lkawa/standard/call_with_values;->callWithValues(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
