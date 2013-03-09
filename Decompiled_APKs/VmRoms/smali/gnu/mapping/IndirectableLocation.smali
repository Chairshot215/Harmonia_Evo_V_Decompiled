.class public abstract Lgnu/mapping/IndirectableLocation;
.super Lgnu/mapping/Location;
.source "IndirectableLocation.java"


# static fields
.field protected static final DIRECT_ON_SET:Ljava/lang/Object;

.field protected static final INDIRECT_FLUIDS:Ljava/lang/Object;


# instance fields
.field protected base:Lgnu/mapping/Location;

.field protected value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9
    new-instance v0, Ljava/lang/String;

    const-string v1, "(direct-on-set)"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/mapping/IndirectableLocation;->DIRECT_ON_SET:Ljava/lang/Object;

    .line 18
    new-instance v0, Ljava/lang/String;

    const-string v1, "(indirect-fluids)"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/mapping/IndirectableLocation;->INDIRECT_FLUIDS:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lgnu/mapping/Location;-><init>()V

    return-void
.end method


# virtual methods
.method public getBase()Lgnu/mapping/Location;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lgnu/mapping/IndirectableLocation;->base:Lgnu/mapping/Location;

    if-nez v0, :cond_0

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lgnu/mapping/IndirectableLocation;->base:Lgnu/mapping/Location;

    invoke-virtual {v0}, Lgnu/mapping/Location;->getBase()Lgnu/mapping/Location;

    move-result-object v0

    goto :goto_0
.end method

.method public getBaseForce()Lgnu/mapping/Location;
    .locals 4

    .prologue
    .line 54
    iget-object v0, p0, Lgnu/mapping/IndirectableLocation;->base:Lgnu/mapping/Location;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lgnu/mapping/PlainLocation;

    invoke-virtual {p0}, Lgnu/mapping/IndirectableLocation;->getKeySymbol()Lgnu/mapping/Symbol;

    move-result-object v1

    invoke-virtual {p0}, Lgnu/mapping/IndirectableLocation;->getKeyProperty()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lgnu/mapping/IndirectableLocation;->value:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3}, Lgnu/mapping/PlainLocation;-><init>(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 57
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lgnu/mapping/IndirectableLocation;->base:Lgnu/mapping/Location;

    goto :goto_0
.end method

.method public getEnvironment()Lgnu/mapping/Environment;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lgnu/mapping/IndirectableLocation;->base:Lgnu/mapping/Location;

    instance-of v0, v0, Lgnu/mapping/NamedLocation;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lgnu/mapping/IndirectableLocation;->base:Lgnu/mapping/Location;

    .end local p0
    check-cast p0, Lgnu/mapping/NamedLocation;

    invoke-virtual {p0}, Lgnu/mapping/NamedLocation;->getEnvironment()Lgnu/mapping/Environment;

    move-result-object v0

    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getKeyProperty()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lgnu/mapping/IndirectableLocation;->base:Lgnu/mapping/Location;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgnu/mapping/IndirectableLocation;->base:Lgnu/mapping/Location;

    invoke-virtual {v0}, Lgnu/mapping/Location;->getKeyProperty()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getKeySymbol()Lgnu/mapping/Symbol;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lgnu/mapping/IndirectableLocation;->base:Lgnu/mapping/Location;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgnu/mapping/IndirectableLocation;->base:Lgnu/mapping/Location;

    invoke-virtual {v0}, Lgnu/mapping/Location;->getKeySymbol()Lgnu/mapping/Symbol;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConstant()Z
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lgnu/mapping/IndirectableLocation;->base:Lgnu/mapping/Location;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgnu/mapping/IndirectableLocation;->base:Lgnu/mapping/Location;

    invoke-virtual {v0}, Lgnu/mapping/Location;->isConstant()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAlias(Lgnu/mapping/Location;)V
    .locals 1
    .parameter "base"

    .prologue
    .line 69
    iput-object p1, p0, Lgnu/mapping/IndirectableLocation;->base:Lgnu/mapping/Location;

    .line 70
    sget-object v0, Lgnu/mapping/IndirectableLocation;->INDIRECT_FLUIDS:Ljava/lang/Object;

    iput-object v0, p0, Lgnu/mapping/IndirectableLocation;->value:Ljava/lang/Object;

    .line 71
    return-void
.end method

.method public setBase(Lgnu/mapping/Location;)V
    .locals 1
    .parameter "base"

    .prologue
    .line 62
    iput-object p1, p0, Lgnu/mapping/IndirectableLocation;->base:Lgnu/mapping/Location;

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lgnu/mapping/IndirectableLocation;->value:Ljava/lang/Object;

    .line 64
    return-void
.end method

.method public undefine()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lgnu/mapping/IndirectableLocation;->base:Lgnu/mapping/Location;

    .line 76
    sget-object v0, Lgnu/mapping/IndirectableLocation;->UNBOUND:Ljava/lang/String;

    iput-object v0, p0, Lgnu/mapping/IndirectableLocation;->value:Ljava/lang/Object;

    .line 77
    return-void
.end method
