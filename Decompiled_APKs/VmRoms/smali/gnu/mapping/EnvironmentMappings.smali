.class Lgnu/mapping/EnvironmentMappings;
.super Ljava/util/AbstractSet;
.source "SimpleEnvironment.java"


# instance fields
.field env:Lgnu/mapping/SimpleEnvironment;


# direct methods
.method public constructor <init>(Lgnu/mapping/SimpleEnvironment;)V
    .locals 0
    .parameter "env"

    .prologue
    .line 347
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    iput-object p1, p0, Lgnu/mapping/EnvironmentMappings;->env:Lgnu/mapping/SimpleEnvironment;

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 353
    new-instance v0, Lgnu/mapping/LocationEnumeration;

    iget-object v1, p0, Lgnu/mapping/EnvironmentMappings;->env:Lgnu/mapping/SimpleEnvironment;

    invoke-direct {v0, v1}, Lgnu/mapping/LocationEnumeration;-><init>(Lgnu/mapping/SimpleEnvironment;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lgnu/mapping/EnvironmentMappings;->env:Lgnu/mapping/SimpleEnvironment;

    invoke-virtual {v0}, Lgnu/mapping/SimpleEnvironment;->size()I

    move-result v0

    return v0
.end method
