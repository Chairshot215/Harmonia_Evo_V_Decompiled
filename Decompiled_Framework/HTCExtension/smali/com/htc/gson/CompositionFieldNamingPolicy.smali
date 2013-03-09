.class abstract Lcom/htc/gson/CompositionFieldNamingPolicy;
.super Lcom/htc/gson/RecursiveFieldNamingPolicy;
.source "CompositionFieldNamingPolicy.java"


# instance fields
.field private final fieldPolicies:[Lcom/htc/gson/RecursiveFieldNamingPolicy;


# direct methods
.method public varargs constructor <init>([Lcom/htc/gson/RecursiveFieldNamingPolicy;)V
    .locals 2

    invoke-direct {p0}, Lcom/htc/gson/RecursiveFieldNamingPolicy;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "naming policies can not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/htc/gson/CompositionFieldNamingPolicy;->fieldPolicies:[Lcom/htc/gson/RecursiveFieldNamingPolicy;

    return-void
.end method


# virtual methods
.method protected translateName(Ljava/lang/String;Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/htc/gson/CompositionFieldNamingPolicy;->fieldPolicies:[Lcom/htc/gson/RecursiveFieldNamingPolicy;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    invoke-virtual {v3, p1, p2, p3}, Lcom/htc/gson/RecursiveFieldNamingPolicy;->translateName(Ljava/lang/String;Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method
