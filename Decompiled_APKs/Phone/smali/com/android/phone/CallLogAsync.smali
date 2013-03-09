.class public Lcom/android/phone/CallLogAsync;
.super Ljava/lang/Object;
.source "CallLogAsync.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallLogAsync$1;,
        Lcom/android/phone/CallLogAsync$GetLastOutgoingCallTask;,
        Lcom/android/phone/CallLogAsync$AddCallTask;,
        Lcom/android/phone/CallLogAsync$OnLastOutgoingCallComplete;,
        Lcom/android/phone/CallLogAsync$GetLastOutgoingCallArgs;,
        Lcom/android/phone/CallLogAsync$AddCallArgs;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CallLogAsync"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 252
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/CallLogAsync;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/phone/CallLogAsync;->assertUiThread()V

    return-void
.end method

.method private assertUiThread()V
    .locals 2

    .prologue
    .line 284
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 285
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not on the UI thread!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :cond_0
    return-void
.end method


# virtual methods
.method public addCall(Lcom/android/phone/CallLogAsync$AddCallArgs;)Landroid/os/AsyncTask;
    .locals 9
    .parameter "args"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 136
    invoke-direct {p0}, Lcom/android/phone/CallLogAsync;->assertUiThread()V

    .line 138
    iget v6, p1, Lcom/android/phone/CallLogAsync$AddCallArgs;->callType:I

    if-ne v6, v4, :cond_1

    move v3, v4

    .line 139
    .local v3, isIncoming:Z
    :goto_0
    const/4 v6, 0x3

    iget v7, p1, Lcom/android/phone/CallLogAsync$AddCallArgs;->callType:I

    if-ne v6, v7, :cond_2

    const-wide/16 v0, 0x0

    .line 142
    .local v0, duration:J
    :goto_1
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.ACTION_DATA_MANAGE_CALL_END_INFO"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 143
    .local v2, intent:Landroid/content/Intent;
    const-string v6, "number"

    iget-object v7, p1, Lcom/android/phone/CallLogAsync$AddCallArgs;->number:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    const-string v6, "call_type"

    invoke-virtual {v2, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 145
    const-string v6, "timestamp"

    iget-wide v7, p1, Lcom/android/phone/CallLogAsync$AddCallArgs;->timestamp:J

    invoke-virtual {v2, v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 146
    const-string v6, "duration"

    invoke-virtual {v2, v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 147
    iget-object v6, p1, Lcom/android/phone/CallLogAsync$AddCallArgs;->context:Landroid/content/Context;

    if-eqz v6, :cond_0

    .line 148
    iget-object v6, p1, Lcom/android/phone/CallLogAsync$AddCallArgs;->context:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 149
    const-string v6, "CallLogAsync"

    const-string v7, "send end call info broadcast"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_0
    new-instance v6, Lcom/android/phone/CallLogAsync$AddCallTask;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/android/phone/CallLogAsync$AddCallTask;-><init>(Lcom/android/phone/CallLogAsync;Lcom/android/phone/CallLogAsync$1;)V

    new-array v4, v4, [Lcom/android/phone/CallLogAsync$AddCallArgs;

    aput-object p1, v4, v5

    invoke-virtual {v6, v4}, Lcom/android/phone/CallLogAsync$AddCallTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v4

    return-object v4

    .end local v0           #duration:J
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #isIncoming:Z
    :cond_1
    move v3, v5

    .line 138
    goto :goto_0

    .line 139
    .restart local v3       #isIncoming:Z
    :cond_2
    iget v6, p1, Lcom/android/phone/CallLogAsync$AddCallArgs;->durationInSec:I

    int-to-long v0, v6

    goto :goto_1
.end method

.method public getLastOutgoingCall(Lcom/android/phone/CallLogAsync$GetLastOutgoingCallArgs;)Landroid/os/AsyncTask;
    .locals 3
    .parameter "args"

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/android/phone/CallLogAsync;->assertUiThread()V

    .line 167
    new-instance v0, Lcom/android/phone/CallLogAsync$GetLastOutgoingCallTask;

    iget-object v1, p1, Lcom/android/phone/CallLogAsync$GetLastOutgoingCallArgs;->callback:Lcom/android/phone/CallLogAsync$OnLastOutgoingCallComplete;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/CallLogAsync$GetLastOutgoingCallTask;-><init>(Lcom/android/phone/CallLogAsync;Lcom/android/phone/CallLogAsync$OnLastOutgoingCallComplete;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/phone/CallLogAsync$GetLastOutgoingCallArgs;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/phone/CallLogAsync$GetLastOutgoingCallTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method
