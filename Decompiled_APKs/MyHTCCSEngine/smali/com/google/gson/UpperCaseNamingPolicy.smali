.class Lcom/google/gson/UpperCaseNamingPolicy;
.super Lcom/google/gson/RecursiveFieldNamingPolicy;
.source "UpperCaseNamingPolicy.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/gson/RecursiveFieldNamingPolicy;-><init>()V

    return-void
.end method


# virtual methods
.method protected translateName(Ljava/lang/String;Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Ljava/lang/String;
    .locals 1
    .parameter "target"
    .parameter "fieldType"
    .parameter "annotations"

    .prologue
    .line 45
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
