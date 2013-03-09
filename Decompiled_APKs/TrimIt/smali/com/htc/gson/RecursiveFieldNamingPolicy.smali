.class abstract Lcom/htc/gson/RecursiveFieldNamingPolicy;
.super Ljava/lang/Object;
.source "RecursiveFieldNamingPolicy.java"

# interfaces
.implements Lcom/htc/gson/FieldNamingStrategy;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract translateName(Ljava/lang/String;Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Ljava/lang/String;
.end method

.method public final translateName(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 3
    .parameter "f"

    .prologue
    .line 35
    invoke-static {p1}, Lcom/htc/gson/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 36
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/gson/RecursiveFieldNamingPolicy;->translateName(Ljava/lang/String;Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
