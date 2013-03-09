.class public abstract Lcom/htc/cscore/plugin/test/CSFakeCloudPlugin;
.super Ljava/lang/Object;
.source "CSFakeCloudPlugin.java"


# static fields
.field public static final CSTEST_FEATURE_NAME:Ljava/lang/String; = "htcconnectedservicetester"

.field public static final LOG_TAG:Ljava/lang/String; = "CSFakeCloudPlugin"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract processMessage(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;",
            ">;"
        }
    .end annotation
.end method
