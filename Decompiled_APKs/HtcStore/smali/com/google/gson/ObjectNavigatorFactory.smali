.class final Lcom/google/gson/ObjectNavigatorFactory;
.super Ljava/lang/Object;
.source "ObjectNavigatorFactory.java"


# instance fields
.field private final fieldNamingPolicy:Lcom/google/gson/FieldNamingStrategy;

.field private final strategy:Lcom/google/gson/ExclusionStrategy;


# direct methods
.method public constructor <init>(Lcom/google/gson/ExclusionStrategy;Lcom/google/gson/FieldNamingStrategy;)V
    .locals 0
    .parameter "strategy"
    .parameter "fieldNamingPolicy"

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {p2}, Lcom/google/gson/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 41
    if-nez p1, :cond_0

    new-instance p1, Lcom/google/gson/NullExclusionStrategy;

    .end local p1
    invoke-direct {p1}, Lcom/google/gson/NullExclusionStrategy;-><init>()V

    :cond_0
    iput-object p1, p0, Lcom/google/gson/ObjectNavigatorFactory;->strategy:Lcom/google/gson/ExclusionStrategy;

    .line 42
    iput-object p2, p0, Lcom/google/gson/ObjectNavigatorFactory;->fieldNamingPolicy:Lcom/google/gson/FieldNamingStrategy;

    .line 43
    return-void
.end method


# virtual methods
.method public create(Lcom/google/gson/ObjectTypePair;)Lcom/google/gson/ObjectNavigator;
    .locals 2
    .parameter "objTypePair"

    .prologue
    .line 55
    new-instance v0, Lcom/google/gson/ObjectNavigator;

    iget-object v1, p0, Lcom/google/gson/ObjectNavigatorFactory;->strategy:Lcom/google/gson/ExclusionStrategy;

    invoke-direct {v0, p1, v1}, Lcom/google/gson/ObjectNavigator;-><init>(Lcom/google/gson/ObjectTypePair;Lcom/google/gson/ExclusionStrategy;)V

    return-object v0
.end method

.method getFieldNamingPolicy()Lcom/google/gson/FieldNamingStrategy;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/gson/ObjectNavigatorFactory;->fieldNamingPolicy:Lcom/google/gson/FieldNamingStrategy;

    return-object v0
.end method
