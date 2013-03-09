.class Lcom/google/android/videochat/CallManager$CallStatistics;
.super Ljava/lang/Object;
.source "CallManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/videochat/CallManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallStatistics"
.end annotation


# instance fields
.field mCallAccepted:Z

.field public mCallElapsedRealtimeAtStart:J

.field public mCallStartTime:J

.field public mSessionId:Ljava/lang/String;

.field mStatsUpdates:Lcom/google/android/videochat/util/CircularArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/videochat/util/CircularArray",
            "<",
            "Lcom/google/android/videochat/CallManager$StatsUpdate;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/videochat/CallManager;


# direct methods
.method public constructor <init>(Lcom/google/android/videochat/CallManager;)V
    .locals 2
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/google/android/videochat/CallManager$CallStatistics;->this$0:Lcom/google/android/videochat/CallManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Lcom/google/android/videochat/util/CircularArray;

    const/16 v1, 0x4b0

    invoke-direct {v0, v1}, Lcom/google/android/videochat/util/CircularArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/videochat/CallManager$CallStatistics;->mStatsUpdates:Lcom/google/android/videochat/util/CircularArray;

    .line 110
    return-void
.end method
