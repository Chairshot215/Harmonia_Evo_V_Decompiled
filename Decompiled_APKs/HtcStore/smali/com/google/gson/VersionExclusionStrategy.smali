.class final Lcom/google/gson/VersionExclusionStrategy;
.super Ljava/lang/Object;
.source "VersionExclusionStrategy.java"

# interfaces
.implements Lcom/google/gson/ExclusionStrategy;


# instance fields
.field private final version:D


# direct methods
.method public constructor <init>(D)V
    .locals 2
    .parameter "version"

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/gson/Preconditions;->checkArgument(Z)V

    .line 33
    iput-wide p1, p0, Lcom/google/gson/VersionExclusionStrategy;->version:D

    .line 34
    return-void

    .line 32
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidSince(Lcom/google/gson/annotations/Since;)Z
    .locals 4
    .parameter "annotation"

    .prologue
    .line 49
    if-eqz p1, :cond_0

    .line 50
    invoke-interface {p1}, Lcom/google/gson/annotations/Since;->value()D

    move-result-wide v0

    .line 51
    .local v0, annotationVersion:D
    iget-wide v2, p0, Lcom/google/gson/VersionExclusionStrategy;->version:D

    cmpl-double v2, v0, v2

    if-lez v2, :cond_0

    .line 52
    const/4 v2, 0x0

    .line 55
    .end local v0           #annotationVersion:D
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isValidUntil(Lcom/google/gson/annotations/Until;)Z
    .locals 4
    .parameter "annotation"

    .prologue
    .line 59
    if-eqz p1, :cond_0

    .line 60
    invoke-interface {p1}, Lcom/google/gson/annotations/Until;->value()D

    move-result-wide v0

    .line 61
    .local v0, annotationVersion:D
    iget-wide v2, p0, Lcom/google/gson/VersionExclusionStrategy;->version:D

    cmpg-double v2, v0, v2

    if-gtz v2, :cond_0

    .line 62
    const/4 v2, 0x0

    .line 65
    .end local v0           #annotationVersion:D
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isValidVersion(Lcom/google/gson/annotations/Since;Lcom/google/gson/annotations/Until;)Z
    .locals 1
    .parameter "since"
    .parameter "until"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/google/gson/VersionExclusionStrategy;->isValidSince(Lcom/google/gson/annotations/Since;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/google/gson/VersionExclusionStrategy;->isValidUntil(Lcom/google/gson/annotations/Until;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public shouldSkipClass(Ljava/lang/Class;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 41
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-class v0, Lcom/google/gson/annotations/Since;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/google/gson/annotations/Since;

    const-class v1, Lcom/google/gson/annotations/Until;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/google/gson/annotations/Until;

    invoke-direct {p0, v0, v1}, Lcom/google/gson/VersionExclusionStrategy;->isValidVersion(Lcom/google/gson/annotations/Since;Lcom/google/gson/annotations/Until;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldSkipField(Lcom/google/gson/FieldAttributes;)Z
    .locals 2
    .parameter "f"

    .prologue
    .line 37
    const-class v0, Lcom/google/gson/annotations/Since;

    invoke-virtual {p1, v0}, Lcom/google/gson/FieldAttributes;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/google/gson/annotations/Since;

    const-class v1, Lcom/google/gson/annotations/Until;

    invoke-virtual {p1, v1}, Lcom/google/gson/FieldAttributes;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/google/gson/annotations/Until;

    invoke-direct {p0, v0, v1}, Lcom/google/gson/VersionExclusionStrategy;->isValidVersion(Lcom/google/gson/annotations/Since;Lcom/google/gson/annotations/Until;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
