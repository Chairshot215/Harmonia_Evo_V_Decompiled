.class abstract Lcom/htc/gson/CompositionFieldNamingPolicy;
.super Lcom/htc/gson/RecursiveFieldNamingPolicy;
.source "CompositionFieldNamingPolicy.java"


# instance fields
.field private final fieldPolicies:[Lcom/htc/gson/RecursiveFieldNamingPolicy;


# direct methods
.method public varargs constructor <init>([Lcom/htc/gson/RecursiveFieldNamingPolicy;)V
    .locals 2
    .parameter "fieldNamingPolicies"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/htc/gson/RecursiveFieldNamingPolicy;-><init>()V

    .line 34
    if-nez p1, :cond_0

    .line 35
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "naming policies can not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_0
    iput-object p1, p0, Lcom/htc/gson/CompositionFieldNamingPolicy;->fieldPolicies:[Lcom/htc/gson/RecursiveFieldNamingPolicy;

    .line 38
    return-void
.end method


# virtual methods
.method protected translateName(Ljava/lang/String;Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Ljava/lang/String;
    .locals 4
    .parameter "target"
    .parameter "fieldType"
    .parameter "annotations"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htc/gson/CompositionFieldNamingPolicy;->fieldPolicies:[Lcom/htc/gson/RecursiveFieldNamingPolicy;

    .local v0, arr$:[Lcom/htc/gson/RecursiveFieldNamingPolicy;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 43
    .local v3, policy:Lcom/htc/gson/RecursiveFieldNamingPolicy;
    invoke-virtual {v3, p1, p2, p3}, Lcom/htc/gson/RecursiveFieldNamingPolicy;->translateName(Ljava/lang/String;Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Ljava/lang/String;

    move-result-object p1

    .line 42
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 45
    .end local v3           #policy:Lcom/htc/gson/RecursiveFieldNamingPolicy;
    :cond_0
    return-object p1
.end method
