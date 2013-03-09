.class public Lcom/htc/opensense/plugin/ItemViewProxy$ViewProxyException;
.super Ljava/lang/RuntimeException;
.source "ItemViewProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/plugin/ItemViewProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewProxyException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x17d284a83cddf77cL


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 0
    .parameter "ex"

    .prologue
    .line 176
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 177
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 180
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 181
    return-void
.end method
