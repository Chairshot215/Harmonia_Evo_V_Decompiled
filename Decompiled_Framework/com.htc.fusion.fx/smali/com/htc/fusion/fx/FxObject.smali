.class public Lcom/htc/fusion/fx/FxObject;
.super Lcom/htc/fusion/fx/NativeReference;
.source "FxObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/fusion/fx/FxObject$ChildIterator;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/htc/fusion/fx/FxObject;->loadNativeLibrary()V

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/fusion/fx/NativeReference;-><init>(I)V

    return-void
.end method

.method private static native getBuildVersion()I
.end method

.method private static native getMajorVersion()I
.end method

.method private static native getMinorVersion()I
.end method

.method protected static loadNativeLibrary()V
    .locals 4

    const/4 v3, 0x1

    const-string v1, "mode10fx"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-static {}, Lcom/htc/fusion/fx/FxObject;->getMajorVersion()I

    move-result v1

    if-ne v3, v1, :cond_0

    const/16 v1, 0x71d

    invoke-static {}, Lcom/htc/fusion/fx/FxObject;->getMinorVersion()I

    move-result v2

    if-lt v1, v2, :cond_0

    invoke-static {}, Lcom/htc/fusion/fx/FxObject;->getBuildVersion()I

    move-result v1

    if-ge v3, v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mode10fx.so version mismatch 1.1821.1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/htc/fusion/fx/FxObject;->getMajorVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/htc/fusion/fx/FxObject;->getMinorVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/htc/fusion/fx/FxObject;->getBuildVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mode10"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    return-void
.end method


# virtual methods
.method public native executeCommandOnDescendant(Ljava/lang/String;ILjava/lang/Object;)Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public native getChild(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;
.end method

.method public getChildByType(Ljava/lang/Class;)Lcom/htc/fusion/fx/FxObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/htc/fusion/fx/FxObject;",
            ">;)",
            "Lcom/htc/fusion/fx/FxObject;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/fusion/fx/FxObject;->getChildByType(Ljava/lang/Class;I)Lcom/htc/fusion/fx/FxObject;

    move-result-object v0

    return-object v0
.end method

.method public native getChildByType(Ljava/lang/Class;I)Lcom/htc/fusion/fx/FxObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/htc/fusion/fx/FxObject;",
            ">;I)",
            "Lcom/htc/fusion/fx/FxObject;"
        }
    .end annotation
.end method

.method public native getChildCount()I
.end method

.method public native getChildCountByType(Ljava/lang/Class;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/htc/fusion/fx/FxObject;",
            ">;)I"
        }
    .end annotation
.end method

.method public native getChildIterator()Lcom/htc/fusion/fx/FxObject$ChildIterator;
.end method

.method public native getChildren([Ljava/lang/String;)[Lcom/htc/fusion/fx/FxObject;
.end method

.method public native getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;
.end method

.method public native getDescendantByFullID(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;
.end method

.method public getDescendantByType(Ljava/lang/Class;)Lcom/htc/fusion/fx/FxObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/htc/fusion/fx/FxObject;",
            ">;)",
            "Lcom/htc/fusion/fx/FxObject;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/fusion/fx/FxObject;->getDescendantByType(Ljava/lang/Class;I)Lcom/htc/fusion/fx/FxObject;

    move-result-object v0

    return-object v0
.end method

.method public native getDescendantByType(Ljava/lang/Class;I)Lcom/htc/fusion/fx/FxObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/htc/fusion/fx/FxObject;",
            ">;I)",
            "Lcom/htc/fusion/fx/FxObject;"
        }
    .end annotation
.end method

.method public native getDescendantCount()I
.end method

.method public native getDescendantCountByType(Ljava/lang/Class;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/htc/fusion/fx/FxObject;",
            ">;)I"
        }
    .end annotation
.end method

.method public native getDescendants([Ljava/lang/String;)[Lcom/htc/fusion/fx/FxObject;
.end method

.method public native getFullID()Ljava/lang/String;
.end method

.method public native getName()Ljava/lang/String;
.end method

.method public native getParent()Lcom/htc/fusion/fx/FxObject;
.end method
