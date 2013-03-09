.class public abstract Lcom/htc/cscore/plugin/CSSyncAdapter;
.super Ljava/lang/Object;
.source "CSSyncAdapter.java"


# static fields
.field public static final CS_FEATURE_NAME:Ljava/lang/String; = "htcconnectedservice"

.field public static final LOG_TAG:Ljava/lang/String; = "CSSyncAdapter"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract collectSyncItem(Lcom/htc/cscore/plugin/CSTransport;I)Z
.end method

.method public abstract hasULData()Z
.end method

.method public abstract onCancelled(Landroid/content/Context;)V
.end method

.method public abstract receiveDLData(Lcom/htc/cscore/plugin/CSTransport;Landroid/os/Bundle;)V
.end method

.method public abstract receivedFMDLData(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract requestForAdd(Lcom/htc/cscore/plugin/CSTransport;Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/cscore/plugin/CSTransport;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract requestForUpdate(Lcom/htc/cscore/plugin/CSTransport;Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/cscore/plugin/CSTransport;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract sendULData(Lcom/htc/cscore/plugin/CSTransport;Landroid/os/Bundle;)Z
.end method
