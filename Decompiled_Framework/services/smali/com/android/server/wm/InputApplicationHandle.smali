.class public final Lcom/android/server/wm/InputApplicationHandle;
.super Ljava/lang/Object;
.source "InputApplicationHandle.java"


# instance fields
.field public final appWindowToken:Lcom/android/server/wm/AppWindowToken;

.field public dispatchingTimeoutNanos:J

.field public name:Ljava/lang/String;

.field private ptr:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/AppWindowToken;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/InputApplicationHandle;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    return-void
.end method

.method private native nativeDispose()V
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wm/InputApplicationHandle;->nativeDispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
