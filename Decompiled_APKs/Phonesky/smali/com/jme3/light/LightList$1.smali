.class final Lcom/jme3/light/LightList$1;
.super Ljava/lang/Object;
.source "LightList.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/light/LightList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/jme3/light/Light;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/jme3/light/Light;Lcom/jme3/light/Light;)I
    .locals 2
    .parameter "l1"
    .parameter "l2"

    .prologue
    .line 61
    iget v0, p1, Lcom/jme3/light/Light;->lastDistance:F

    iget v1, p2, Lcom/jme3/light/Light;->lastDistance:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 62
    const/4 v0, -0x1

    .line 66
    :goto_0
    return v0

    .line 63
    :cond_0
    iget v0, p1, Lcom/jme3/light/Light;->lastDistance:F

    iget v1, p2, Lcom/jme3/light/Light;->lastDistance:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 64
    const/4 v0, 0x1

    goto :goto_0

    .line 66
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    check-cast p1, Lcom/jme3/light/Light;

    .end local p1
    check-cast p2, Lcom/jme3/light/Light;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/jme3/light/LightList$1;->compare(Lcom/jme3/light/Light;Lcom/jme3/light/Light;)I

    move-result v0

    return v0
.end method
