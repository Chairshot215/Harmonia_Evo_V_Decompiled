.class public Lcom/android/mms/ui/ComposeMessageActivity$Utils;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Utils"
.end annotation


# static fields
.field public static final THREAD_ID_GET_ID:I = -0x4

.field public static final THREAD_ID_INITIAL:I = -0x1

.field public static final THREAD_ID_NO_NOTIFICATION:I = -0x3

.field public static final THREAD_ID_SCREENOFF:I = -0x2

.field private static s_threadID:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16232
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/mms/ui/ComposeMessageActivity$Utils;->s_threadID:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16225
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized updateCurrentThreadID(J)J
    .locals 4
    .parameter "threadID"

    .prologue
    .line 16242
    const-class v1, Lcom/android/mms/ui/ComposeMessageActivity$Utils;

    monitor-enter v1

    const-wide/16 v2, -0x4

    cmp-long v0, p0, v2

    if-lez v0, :cond_0

    .line 16243
    :try_start_0
    sput-wide p0, Lcom/android/mms/ui/ComposeMessageActivity$Utils;->s_threadID:J

    .line 16246
    :cond_0
    sget-wide v2, Lcom/android/mms/ui/ComposeMessageActivity$Utils;->s_threadID:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-wide v2

    .line 16242
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
