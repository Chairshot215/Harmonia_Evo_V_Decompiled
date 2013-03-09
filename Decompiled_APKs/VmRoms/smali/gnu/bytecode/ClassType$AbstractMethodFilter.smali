.class Lgnu/bytecode/ClassType$AbstractMethodFilter;
.super Ljava/lang/Object;
.source "ClassType.java"

# interfaces
.implements Lgnu/bytecode/Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgnu/bytecode/ClassType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AbstractMethodFilter"
.end annotation


# static fields
.field public static final instance:Lgnu/bytecode/ClassType$AbstractMethodFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 856
    new-instance v0, Lgnu/bytecode/ClassType$AbstractMethodFilter;

    invoke-direct {v0}, Lgnu/bytecode/ClassType$AbstractMethodFilter;-><init>()V

    sput-object v0, Lgnu/bytecode/ClassType$AbstractMethodFilter;->instance:Lgnu/bytecode/ClassType$AbstractMethodFilter;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 854
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public select(Ljava/lang/Object;)Z
    .locals 3
    .parameter "value"

    .prologue
    .line 861
    move-object v0, p1

    check-cast v0, Lgnu/bytecode/Method;

    move-object v1, v0

    .line 862
    .local v1, method:Lgnu/bytecode/Method;
    invoke-virtual {v1}, Lgnu/bytecode/Method;->isAbstract()Z

    move-result v2

    return v2
.end method
