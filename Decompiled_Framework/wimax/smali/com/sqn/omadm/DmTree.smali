.class public Lcom/sqn/omadm/DmTree;
.super Ljava/lang/Object;
.source "DmTree.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "dmtree"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/sqn/omadm/DmTree;->Load(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Can\'t load DM tree."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private native Free()Z
.end method

.method private native Load(Ljava/lang/String;)Z
.end method


# virtual methods
.method public native Save()Z
.end method

.method public native addWimaxNode(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public native delWimaxNode(Ljava/lang/String;)Z
.end method

.method protected finalize()V
    .locals 0

    invoke-direct {p0}, Lcom/sqn/omadm/DmTree;->Free()Z

    return-void
.end method

.method public native getWimaxNode(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public native setWimaxNode(Ljava/lang/String;Ljava/lang/String;)Z
.end method
