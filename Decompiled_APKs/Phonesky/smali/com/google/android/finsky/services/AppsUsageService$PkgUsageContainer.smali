.class Lcom/google/android/finsky/services/AppsUsageService$PkgUsageContainer;
.super Ljava/lang/Object;
.source "AppsUsageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/services/AppsUsageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PkgUsageContainer"
.end annotation


# instance fields
.field final document:Lcom/google/android/finsky/api/model/Document;

.field final lastUsedTime:J

.field final stats:Lcom/android/internal/os/PkgUsageStats;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PkgUsageStats;JLcom/google/android/finsky/api/model/Document;)V
    .locals 0
    .parameter "stats"
    .parameter "lastUsedTime"
    .parameter "document"

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-object p1, p0, Lcom/google/android/finsky/services/AppsUsageService$PkgUsageContainer;->stats:Lcom/android/internal/os/PkgUsageStats;

    .line 148
    iput-wide p2, p0, Lcom/google/android/finsky/services/AppsUsageService$PkgUsageContainer;->lastUsedTime:J

    .line 149
    iput-object p4, p0, Lcom/google/android/finsky/services/AppsUsageService$PkgUsageContainer;->document:Lcom/google/android/finsky/api/model/Document;

    .line 150
    return-void
.end method
