.class public Lgnu/expr/BuiltinEnvironment;
.super Lgnu/mapping/Environment;
.source "BuiltinEnvironment.java"


# static fields
.field static final instance:Lgnu/expr/BuiltinEnvironment;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 11
    new-instance v0, Lgnu/expr/BuiltinEnvironment;

    invoke-direct {v0}, Lgnu/expr/BuiltinEnvironment;-><init>()V

    sput-object v0, Lgnu/expr/BuiltinEnvironment;->instance:Lgnu/expr/BuiltinEnvironment;

    .line 12
    sget-object v0, Lgnu/expr/BuiltinEnvironment;->instance:Lgnu/expr/BuiltinEnvironment;

    const-string v1, "language-builtins"

    invoke-virtual {v0, v1}, Lgnu/expr/BuiltinEnvironment;->setName(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lgnu/mapping/Environment;-><init>()V

    return-void
.end method

.method public static getInstance()Lgnu/expr/BuiltinEnvironment;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lgnu/expr/BuiltinEnvironment;->instance:Lgnu/expr/BuiltinEnvironment;

    return-object v0
.end method


# virtual methods
.method public addLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;Lgnu/mapping/Location;)Lgnu/mapping/NamedLocation;
    .locals 1
    .parameter "name"
    .parameter "prop"
    .parameter "loc"

    .prologue
    .line 59
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public define(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .parameter "key"
    .parameter "property"
    .parameter "newValue"

    .prologue
    .line 39
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public enumerateAllLocations()Lgnu/mapping/LocationEnumeration;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lgnu/expr/BuiltinEnvironment;->getLangEnvironment()Lgnu/mapping/Environment;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/mapping/Environment;->enumerateAllLocations()Lgnu/mapping/LocationEnumeration;

    move-result-object v0

    return-object v0
.end method

.method public enumerateLocations()Lgnu/mapping/LocationEnumeration;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lgnu/expr/BuiltinEnvironment;->getLangEnvironment()Lgnu/mapping/Environment;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/mapping/Environment;->enumerateLocations()Lgnu/mapping/LocationEnumeration;

    move-result-object v0

    return-object v0
.end method

.method public getLangEnvironment()Lgnu/mapping/Environment;
    .locals 2

    .prologue
    .line 19
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v0

    .line 20
    .local v0, lang:Lgnu/expr/Language;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lgnu/expr/Language;->getLangEnvironment()Lgnu/mapping/Environment;

    move-result-object v1

    goto :goto_0
.end method

.method public getLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;IZ)Lgnu/mapping/NamedLocation;
    .locals 1
    .parameter "key"
    .parameter "property"
    .parameter "hash"
    .parameter "create"

    .prologue
    .line 34
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method protected hasMoreElements(Lgnu/mapping/LocationEnumeration;)Z
    .locals 1
    .parameter "it"

    .prologue
    .line 54
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public lookup(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;
    .locals 3
    .parameter "name"
    .parameter "property"
    .parameter "hash"

    .prologue
    const/4 v2, 0x0

    .line 25
    sget-object v1, Lgnu/mapping/ThreadLocation;->ANONYMOUS:Ljava/lang/String;

    if-ne p2, v1, :cond_0

    move-object v1, v2

    .line 28
    :goto_0
    return-object v1

    .line 27
    :cond_0
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v0

    .line 28
    .local v0, lang:Lgnu/expr/Language;
    if-nez v0, :cond_1

    move-object v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1, p2, p3}, Lgnu/expr/Language;->lookupBuiltin(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;

    move-result-object v1

    goto :goto_0
.end method
