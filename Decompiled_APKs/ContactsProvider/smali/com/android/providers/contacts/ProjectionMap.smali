.class public Lcom/android/providers/contacts/ProjectionMap;
.super Ljava/util/HashMap;
.source "ProjectionMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/ProjectionMap$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public mColumns:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/contacts/ProjectionMap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/ProjectionMap;->putColumn(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static builder()Lcom/android/providers/contacts/ProjectionMap$Builder;
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lcom/android/providers/contacts/ProjectionMap$Builder;

    invoke-direct {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;-><init>()V

    return-object v0
.end method

.method private putColumn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "alias"
    .parameter "column"

    .prologue
    .line 74
    invoke-super {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    return-void
.end method


# virtual methods
.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/providers/contacts/ProjectionMap;->mColumns:[Ljava/lang/String;

    return-object v0
.end method

.method public print()V
    .locals 5

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .local v0, builder:Ljava/lang/StringBuilder;
    new-instance v2, Landroid/util/StringBuilderPrinter;

    invoke-direct {v2, v0}, Landroid/util/StringBuilderPrinter;-><init>(Ljava/lang/StringBuilder;)V

    .line 92
    .local v2, printer:Landroid/util/StringBuilderPrinter;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/providers/contacts/ProjectionMap;->mColumns:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 93
    iget-object v3, p0, Lcom/android/providers/contacts/ProjectionMap;->mColumns:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 92
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 95
    :cond_0
    const-string v3, "ProjectionMap"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 97
    return-void
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    check-cast p1, Ljava/lang/String;

    .end local p1
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/providers/contacts/ProjectionMap;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 79
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<+Ljava/lang/String;+Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
