.class public Lcom/android/htccontacts/ProgressShower;
.super Ljava/lang/Object;
.source "ProgressShower.java"

# interfaces
.implements Lcom/android/vcard/VCardEntryHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/ProgressShower$ShowProgressRunnable;
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "vcard.ProgressShower"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDisableIncrementProgress:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mProgressDialog:Lcom/htc/app/HtcProgressDialog;

.field private final mProgressMessage:Ljava/lang/String;

.field private mTime:J


# direct methods
.method public constructor <init>(Lcom/htc/app/HtcProgressDialog;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .parameter "progressDialog"
    .parameter "progressMessage"
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/ProgressShower;->mDisableIncrementProgress:Z

    .line 58
    iput-object p3, p0, Lcom/android/htccontacts/ProgressShower;->mContext:Landroid/content/Context;

    .line 59
    iput-object p4, p0, Lcom/android/htccontacts/ProgressShower;->mHandler:Landroid/os/Handler;

    .line 60
    iput-object p1, p0, Lcom/android/htccontacts/ProgressShower;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 61
    iput-object p2, p0, Lcom/android/htccontacts/ProgressShower;->mProgressMessage:Ljava/lang/String;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/android/htccontacts/ProgressShower;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/htccontacts/ProgressShower;->mProgressMessage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/htccontacts/ProgressShower;)Lcom/htc/app/HtcProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/htccontacts/ProgressShower;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/htccontacts/ProgressShower;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/android/htccontacts/ProgressShower;->mDisableIncrementProgress:Z

    return v0
.end method


# virtual methods
.method public disableIncrementProgress(Z)V
    .locals 0
    .parameter "disable"

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/android/htccontacts/ProgressShower;->mDisableIncrementProgress:Z

    .line 69
    return-void
.end method

.method public onEnd()V
    .locals 6

    .prologue
    .line 90
    invoke-static {}, Lcom/android/vcard/VCardConfig;->showPerformanceLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    const-string v0, "vcard.ProgressShower"

    const-string v1, "Time to progress a dialog: %d ms"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/android/htccontacts/ProgressShower;->mTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_0
    return-void
.end method

.method public onEntryCreated(Lcom/android/vcard/VCardEntry;)V
    .locals 8
    .parameter "VCardEntry"

    .prologue
    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 74
    .local v0, start:J
    invoke-virtual {p1}, Lcom/android/vcard/VCardEntry;->isIgnorable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 75
    iget-object v2, p0, Lcom/android/htccontacts/ProgressShower;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/htccontacts/ProgressShower;->mProgressMessage:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 76
    iget-object v2, p0, Lcom/android/htccontacts/ProgressShower;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_1

    .line 77
    iget-object v2, p0, Lcom/android/htccontacts/ProgressShower;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/htccontacts/ProgressShower$ShowProgressRunnable;

    invoke-direct {v3, p0, p1}, Lcom/android/htccontacts/ProgressShower$ShowProgressRunnable;-><init>(Lcom/android/htccontacts/ProgressShower;Lcom/android/vcard/VCardEntry;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 86
    :cond_0
    :goto_0
    iget-wide v2, p0, Lcom/android/htccontacts/ProgressShower;->mTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/htccontacts/ProgressShower;->mTime:J

    .line 87
    return-void

    .line 79
    :cond_1
    iget-object v2, p0, Lcom/android/htccontacts/ProgressShower;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    iget-object v3, p0, Lcom/android/htccontacts/ProgressShower;->mContext:Landroid/content/Context;

    const v4, 0x7f0a02c2

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/htccontacts/ProgressShower;->mProgressMessage:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {p1}, Lcom/android/vcard/VCardEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method
