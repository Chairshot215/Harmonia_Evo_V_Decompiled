.class public Lcom/htc/provider/CallLog;
.super Ljava/lang/Object;
.source "CallLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/provider/CallLog$Calls;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 38
    invoke-static {p0, p1, p2}, Lcom/htc/provider/CallLog;->addFrequentCount(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;I)V

    return-void
.end method

.method private static addFrequentCount(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;I)V
    .locals 6
    .parameter "ci"
    .parameter "context"
    .parameter "callType"

    .prologue
    .line 202
    if-eqz p0, :cond_0

    .line 203
    const/4 v1, -0x1

    .line 204
    .local v1, in_out:I
    const/4 v0, 0x2

    if-ne v0, p2, :cond_1

    .line 205
    const/4 v1, 0x0

    .line 213
    :goto_0
    iget-wide v2, p0, Lcom/android/internal/telephony/CallerInfo;->rawContactId:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    if-gez v1, :cond_3

    .line 220
    .end local v1           #in_out:I
    :cond_0
    :goto_1
    return-void

    .line 206
    .restart local v1       #in_out:I
    :cond_1
    const/4 v0, 0x1

    if-eq v0, p2, :cond_2

    const/4 v0, 0x3

    if-ne v0, p2, :cond_0

    .line 208
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 216
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-wide/16 v2, -0x1

    iget-wide v4, p0, Lcom/android/internal/telephony/CallerInfo;->rawContactId:J

    invoke-static/range {v0 .. v5}, Landroid/provider/HtcContactsContract$Frequency;->markAsFromCall(Landroid/content/ContentResolver;IJJ)V

    goto :goto_1
.end method
