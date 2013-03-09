.class abstract Lcom/google/gson/CompositionFieldNamingPolicy;
.super Lcom/google/gson/RecursiveFieldNamingPolicy;
.source "CompositionFieldNamingPolicy.java"


# instance fields
.field private final fieldPolicies:[Lcom/google/gson/RecursiveFieldNamingPolicy;


# direct methods
.method public varargs constructor <init>([Lcom/google/gson/RecursiveFieldNamingPolicy;)V
    .locals 2
    .parameter "fieldNamingPolicies"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/gson/RecursiveFieldNamingPolicy;-><init>()V

    .line 32
    if-nez p1, :cond_0

    .line 33
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "naming policies can not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_0
    iput-object p1, p0, Lcom/google/gson/CompositionFieldNamingPolicy;->fieldPolicies:[Lcom/google/gson/RecursiveFieldNamingPolicy;

    .line 36
    return-void
.end method


# virtual methods
.method protected translateName(Ljava/lang/String;Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Ljava/lang/String;
    .locals 4
    .parameter "target"
    .parameter "fieldType"
    .parameter "annotations"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/gson/CompositionFieldNamingPolicy;->fieldPolicies:[Lcom/google/gson/RecursiveFieldNamingPolicy;

    .local v0, arr$:[Lcom/google/gson/RecursiveFieldNamingPolicy;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 41
    .local v3, policy:Lcom/google/gson/RecursiveFieldNamingPolicy;
    invoke-virtual {v3, p1, p2, p3}, Lcom/google/gson/RecursiveFieldNamingPolicy;->translateName(Ljava/lang/String;Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Ljava/lang/String;

    move-result-object p1

    .line 40
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 43
    .end local v3           #policy:Lcom/google/gson/RecursiveFieldNamingPolicy;
    :cond_0
    return-object p1
.end method
