.class Lcom/htc/gson/JavaFieldNamingPolicy;
.super Lcom/htc/gson/RecursiveFieldNamingPolicy;
.source "JavaFieldNamingPolicy.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/htc/gson/RecursiveFieldNamingPolicy;-><init>()V

    return-void
.end method


# virtual methods
.method protected translateName(Ljava/lang/String;Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Ljava/lang/String;
    .locals 0
    .parameter "target"
    .parameter "fieldType"
    .parameter "annotations"

    .prologue
    .line 50
    return-object p1
.end method
