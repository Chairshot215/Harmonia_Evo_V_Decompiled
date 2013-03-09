.class Lcom/google/gson/SerializedNameAnnotationInterceptingNamingPolicy;
.super Ljava/lang/Object;
.source "SerializedNameAnnotationInterceptingNamingPolicy.java"

# interfaces
.implements Lcom/google/gson/FieldNamingStrategy;


# static fields
.field private static final fieldNameValidator:Lcom/google/gson/JsonFieldNameValidator;


# instance fields
.field private final delegate:Lcom/google/gson/FieldNamingStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/google/gson/JsonFieldNameValidator;

    invoke-direct {v0}, Lcom/google/gson/JsonFieldNameValidator;-><init>()V

    sput-object v0, Lcom/google/gson/SerializedNameAnnotationInterceptingNamingPolicy;->fieldNameValidator:Lcom/google/gson/JsonFieldNameValidator;

    return-void
.end method

.method public constructor <init>(Lcom/google/gson/FieldNamingStrategy;)V
    .locals 0
    .parameter "delegate"

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/google/gson/SerializedNameAnnotationInterceptingNamingPolicy;->delegate:Lcom/google/gson/FieldNamingStrategy;

    .line 42
    return-void
.end method


# virtual methods
.method public translateName(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 3
    .parameter "f"

    .prologue
    .line 45
    invoke-static {p1}, Lcom/google/gson/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 46
    const-class v1, Lcom/google/gson/annotations/SerializedName;

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/google/gson/annotations/SerializedName;

    .line 47
    .local v0, serializedName:Lcom/google/gson/annotations/SerializedName;
    if-eqz v0, :cond_0

    .line 48
    sget-object v1, Lcom/google/gson/SerializedNameAnnotationInterceptingNamingPolicy;->fieldNameValidator:Lcom/google/gson/JsonFieldNameValidator;

    invoke-interface {v0}, Lcom/google/gson/annotations/SerializedName;->value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonFieldNameValidator;->validate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/google/gson/SerializedNameAnnotationInterceptingNamingPolicy;->delegate:Lcom/google/gson/FieldNamingStrategy;

    invoke-interface {v1, p1}, Lcom/google/gson/FieldNamingStrategy;->translateName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
