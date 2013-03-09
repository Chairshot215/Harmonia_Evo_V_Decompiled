.class Lcom/htc/gson/SerializedNameAnnotationInterceptingNamingPolicy;
.super Ljava/lang/Object;
.source "SerializedNameAnnotationInterceptingNamingPolicy.java"

# interfaces
.implements Lcom/htc/gson/FieldNamingStrategy;


# static fields
.field private static final fieldNameValidator:Lcom/htc/gson/JsonFieldNameValidator;


# instance fields
.field private final delegate:Lcom/htc/gson/FieldNamingStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/htc/gson/JsonFieldNameValidator;

    invoke-direct {v0}, Lcom/htc/gson/JsonFieldNameValidator;-><init>()V

    sput-object v0, Lcom/htc/gson/SerializedNameAnnotationInterceptingNamingPolicy;->fieldNameValidator:Lcom/htc/gson/JsonFieldNameValidator;

    return-void
.end method

.method public constructor <init>(Lcom/htc/gson/FieldNamingStrategy;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/htc/gson/SerializedNameAnnotationInterceptingNamingPolicy;->delegate:Lcom/htc/gson/FieldNamingStrategy;

    return-void
.end method


# virtual methods
.method public translateName(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Lcom/htc/gson/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    const-class v1, Lcom/htc/gson/annotations/SerializedName;

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/htc/gson/annotations/SerializedName;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/htc/gson/SerializedNameAnnotationInterceptingNamingPolicy;->fieldNameValidator:Lcom/htc/gson/JsonFieldNameValidator;

    invoke-interface {v0}, Lcom/htc/gson/annotations/SerializedName;->value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/gson/JsonFieldNameValidator;->validate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/htc/gson/SerializedNameAnnotationInterceptingNamingPolicy;->delegate:Lcom/htc/gson/FieldNamingStrategy;

    invoke-interface {v1, p1}, Lcom/htc/gson/FieldNamingStrategy;->translateName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
