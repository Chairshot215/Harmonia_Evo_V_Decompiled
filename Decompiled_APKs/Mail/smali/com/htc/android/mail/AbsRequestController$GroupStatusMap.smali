.class public Lcom/htc/android/mail/AbsRequestController$GroupStatusMap;
.super Ljava/lang/Object;
.source "AbsRequestController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/AbsRequestController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupStatusMap"
.end annotation


# instance fields
.field private mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/android/mail/AbsRequestController$GroupStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 80
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/AbsRequestController$GroupStatusMap;->mMap:Ljava/util/Map;

    .line 82
    iget-object v0, p0, Lcom/htc/android/mail/AbsRequestController$GroupStatusMap;->mMap:Ljava/util/Map;

    const-string v1, "READ_UNCOMMIT"

    new-instance v2, Lcom/htc/android/mail/AbsRequestController$GroupStatus;

    invoke-direct {v2}, Lcom/htc/android/mail/AbsRequestController$GroupStatus;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    return-void
.end method


# virtual methods
.method public declared-synchronized get(Ljava/lang/String;)Lcom/htc/android/mail/AbsRequestController$GroupStatus;
    .locals 1
    .parameter "tag"

    .prologue
    .line 86
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/android/mail/AbsRequestController$GroupStatusMap;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/AbsRequestController$GroupStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
