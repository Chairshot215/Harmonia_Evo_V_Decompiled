.class final Lcom/htc/gson/ObjectNavigatorFactory;
.super Ljava/lang/Object;
.source "ObjectNavigatorFactory.java"


# instance fields
.field private final fieldNamingPolicy:Lcom/htc/gson/FieldNamingStrategy;

.field private final strategy:Lcom/htc/gson/ExclusionStrategy;


# direct methods
.method public constructor <init>(Lcom/htc/gson/ExclusionStrategy;Lcom/htc/gson/FieldNamingStrategy;)V
    .locals 0
    .parameter "strategy"
    .parameter "fieldNamingPolicy"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {p2}, Lcom/htc/gson/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 43
    if-nez p1, :cond_0

    new-instance p1, Lcom/htc/gson/NullExclusionStrategy;

    .end local p1
    invoke-direct {p1}, Lcom/htc/gson/NullExclusionStrategy;-><init>()V

    :cond_0
    iput-object p1, p0, Lcom/htc/gson/ObjectNavigatorFactory;->strategy:Lcom/htc/gson/ExclusionStrategy;

    .line 44
    iput-object p2, p0, Lcom/htc/gson/ObjectNavigatorFactory;->fieldNamingPolicy:Lcom/htc/gson/FieldNamingStrategy;

    .line 45
    return-void
.end method


# virtual methods
.method public create(Lcom/htc/gson/ObjectTypePair;)Lcom/htc/gson/ObjectNavigator;
    .locals 2
    .parameter "objTypePair"

    .prologue
    .line 57
    new-instance v0, Lcom/htc/gson/ObjectNavigator;

    iget-object v1, p0, Lcom/htc/gson/ObjectNavigatorFactory;->strategy:Lcom/htc/gson/ExclusionStrategy;

    invoke-direct {v0, p1, v1}, Lcom/htc/gson/ObjectNavigator;-><init>(Lcom/htc/gson/ObjectTypePair;Lcom/htc/gson/ExclusionStrategy;)V

    return-object v0
.end method

.method getFieldNamingPolicy()Lcom/htc/gson/FieldNamingStrategy;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/gson/ObjectNavigatorFactory;->fieldNamingPolicy:Lcom/htc/gson/FieldNamingStrategy;

    return-object v0
.end method
