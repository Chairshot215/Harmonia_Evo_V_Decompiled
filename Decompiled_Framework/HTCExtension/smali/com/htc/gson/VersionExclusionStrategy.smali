.class final Lcom/htc/gson/VersionExclusionStrategy;
.super Ljava/lang/Object;
.source "VersionExclusionStrategy.java"

# interfaces
.implements Lcom/htc/gson/ExclusionStrategy;


# instance fields
.field private final version:D


# direct methods
.method public constructor <init>(D)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/htc/gson/Preconditions;->checkArgument(Z)V

    iput-wide p1, p0, Lcom/htc/gson/VersionExclusionStrategy;->version:D

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidSince(Lcom/htc/gson/annotations/Since;)Z
    .locals 4

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/htc/gson/annotations/Since;->value()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/htc/gson/VersionExclusionStrategy;->version:D

    cmpl-double v2, v0, v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isValidUntil(Lcom/htc/gson/annotations/Until;)Z
    .locals 4

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/htc/gson/annotations/Until;->value()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/htc/gson/VersionExclusionStrategy;->version:D

    cmpg-double v2, v0, v2

    if-gtz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isValidVersion(Lcom/htc/gson/annotations/Since;Lcom/htc/gson/annotations/Until;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/htc/gson/VersionExclusionStrategy;->isValidSince(Lcom/htc/gson/annotations/Since;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/htc/gson/VersionExclusionStrategy;->isValidUntil(Lcom/htc/gson/annotations/Until;)Z

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    const-class v0, Lcom/htc/gson/annotations/Since;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/htc/gson/annotations/Since;

    const-class v1, Lcom/htc/gson/annotations/Until;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/htc/gson/annotations/Until;

    invoke-direct {p0, v0, v1}, Lcom/htc/gson/VersionExclusionStrategy;->isValidVersion(Lcom/htc/gson/annotations/Since;Lcom/htc/gson/annotations/Until;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldSkipField(Lcom/htc/gson/FieldAttributes;)Z
    .locals 2

    const-class v0, Lcom/htc/gson/annotations/Since;

    invoke-virtual {p1, v0}, Lcom/htc/gson/FieldAttributes;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/htc/gson/annotations/Since;

    const-class v1, Lcom/htc/gson/annotations/Until;

    invoke-virtual {p1, v1}, Lcom/htc/gson/FieldAttributes;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/htc/gson/annotations/Until;

    invoke-direct {p0, v0, v1}, Lcom/htc/gson/VersionExclusionStrategy;->isValidVersion(Lcom/htc/gson/annotations/Since;Lcom/htc/gson/annotations/Until;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
