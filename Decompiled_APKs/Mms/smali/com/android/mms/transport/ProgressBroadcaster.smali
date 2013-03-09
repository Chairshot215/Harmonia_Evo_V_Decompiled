.class public Lcom/android/mms/transport/ProgressBroadcaster;
.super Ljava/lang/Object;
.source "ProgressBroadcaster.java"


# static fields
.field public static final PROGRESS_ABORT:I = -0x2

.field public static final PROGRESS_COMPLETE:I = 0x64

.field public static final PROGRESS_START:I = -0x1

.field public static final PROGRESS_STATUS_ACTION:Ljava/lang/String; = "com.android.mms.PROGRESS_STATUS"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static broadcast(Landroid/content/Context;JI)V
    .locals 3
    .parameter "mContext"
    .parameter "token"
    .parameter "progress"

    .prologue
    .line 29
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_0

    .line 30
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.mms.PROGRESS_STATUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 31
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "progress"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 32
    const-string v1, "token"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 33
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 35
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
