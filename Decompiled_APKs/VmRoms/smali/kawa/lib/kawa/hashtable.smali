.class public Lkawa/lib/kawa/hashtable;
.super Lgnu/expr/ModuleBody;
.source "hashtable.scm"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkawa/lib/kawa/hashtable$HashTable;
    }
.end annotation


# static fields
.field public static final $Prvt$do:Lgnu/mapping/Location;

.field public static final $Prvt$hashnode:Ljava/lang/Class;

.field public static final $Prvt$let$St:Lgnu/mapping/Location;

.field public static final $instance:Lkawa/lib/kawa/hashtable;

.field static final Lit0:Lgnu/mapping/SimpleSymbol;

.field static final Lit1:Lgnu/mapping/SimpleSymbol;

.field public static final hashtable:Ljava/lang/Class;

.field public static final hashtable$Mncheck$Mnmutable:Lgnu/expr/ModuleMethod;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .prologue
    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "hashtable-check-mutable"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/kawa/hashtable;->Lit1:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "mutable"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/kawa/hashtable;->Lit0:Lgnu/mapping/SimpleSymbol;

    const-class v0, Lgnu/kawa/util/HashNode;

    sput-object v0, Lkawa/lib/kawa/hashtable;->$Prvt$hashnode:Ljava/lang/Class;

    new-instance v0, Lkawa/lib/kawa/hashtable;

    invoke-direct {v0}, Lkawa/lib/kawa/hashtable;-><init>()V

    sput-object v0, Lkawa/lib/kawa/hashtable;->$instance:Lkawa/lib/kawa/hashtable;

    .line 4
    const-string v0, "kawa.lib.std_syntax"

    const-string v1, "let$St"

    invoke-static {v0, v1}, Lgnu/kawa/reflect/StaticFieldLocation;->make(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/reflect/StaticFieldLocation;

    move-result-object v0

    sput-object v0, Lkawa/lib/kawa/hashtable;->$Prvt$let$St:Lgnu/mapping/Location;

    const-string v0, "kawa.lib.std_syntax"

    const-string v1, "do"

    invoke-static {v0, v1}, Lgnu/kawa/reflect/StaticFieldLocation;->make(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/reflect/StaticFieldLocation;

    move-result-object v0

    sput-object v0, Lkawa/lib/kawa/hashtable;->$Prvt$do:Lgnu/mapping/Location;

    const-class v0, Lkawa/lib/kawa/hashtable$HashTable;

    sput-object v0, Lkawa/lib/kawa/hashtable;->hashtable:Ljava/lang/Class;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v1, Lkawa/lib/kawa/hashtable;->$instance:Lkawa/lib/kawa/hashtable;

    const/4 v2, 0x1

    sget-object v3, Lkawa/lib/kawa/hashtable;->Lit1:Lgnu/mapping/SimpleSymbol;

    const/16 v4, 0x1001

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/kawa/hashtable;->hashtable$Mncheck$Mnmutable:Lgnu/expr/ModuleMethod;

    sget-object v0, Lkawa/lib/kawa/hashtable;->$instance:Lkawa/lib/kawa/hashtable;

    invoke-virtual {v0}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static hashtableCheckMutable(Lkawa/lib/kawa/hashtable$HashTable;)V
    .locals 2
    .parameter "ht"

    .prologue
    .line 88
    iget-boolean v0, p0, Lkawa/lib/kawa/hashtable$HashTable;->mutable:Z

    if-nez v0, :cond_0

    .line 90
    const-string v0, "cannot modify non-mutable hashtable"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    if-ne v0, v3, :cond_0

    .line 88
    :try_start_0
    check-cast p2, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p2}, Lkawa/lib/kawa/hashtable;->hashtableCheckMutable(Lkawa/lib/kawa/hashtable$HashTable;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "hashtable-check-mutable"

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    if-ne v0, v1, :cond_1

    .line 88
    instance-of v0, p2, Lkawa/lib/kawa/hashtable$HashTable;

    if-nez v0, :cond_0

    const v0, -0xbffff

    :goto_0
    return v0

    :cond_0
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p3, Lgnu/mapping/CallContext;->pc:I

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_0
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .locals 1
    .parameter "$ctx"

    .prologue
    .line 1
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 7
    .local v0, $result:Lgnu/lists/Consumer;
    return-void
.end method
