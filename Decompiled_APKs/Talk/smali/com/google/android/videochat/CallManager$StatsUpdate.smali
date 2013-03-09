.class Lcom/google/android/videochat/CallManager$StatsUpdate;
.super Ljava/lang/Object;
.source "CallManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/videochat/CallManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatsUpdate"
.end annotation


# instance fields
.field public final mSecondsSinceCallStart:J

.field public final mStatsObject:Lcom/google/android/videochat/Stats;

.field public final mTime:J

.field final synthetic this$0:Lcom/google/android/videochat/CallManager;


# direct methods
.method public constructor <init>(Lcom/google/android/videochat/CallManager;JJLcom/google/android/videochat/Stats;)V
    .locals 0
    .parameter
    .parameter "time"
    .parameter "secondsSinceCallStart"
    .parameter "statsObject"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/google/android/videochat/CallManager$StatsUpdate;->this$0:Lcom/google/android/videochat/CallManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-wide p2, p0, Lcom/google/android/videochat/CallManager$StatsUpdate;->mTime:J

    .line 93
    iput-wide p4, p0, Lcom/google/android/videochat/CallManager$StatsUpdate;->mSecondsSinceCallStart:J

    .line 94
    iput-object p6, p0, Lcom/google/android/videochat/CallManager$StatsUpdate;->mStatsObject:Lcom/google/android/videochat/Stats;

    .line 95
    return-void
.end method
