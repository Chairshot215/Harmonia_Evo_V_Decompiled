.class public Lcom/android/smith/MediaMountReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MediaMountReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/smith/MediaMountReceiver$CommandRunner;
    }
.end annotation


# static fields
.field private static final MSG_DONE:I = 0x3

.field private static final MSG_MOUNTED:I = 0x1

.field private static final MSG_REMOVED:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SM:MediaMountReceiver"

.field private static mBootCompletedRetryCount:I

.field private static mContext:Landroid/content/Context;

.field private static mHandler:Landroid/os/Handler;

.field private static mIsInMediaMountReceiver:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 39
    sput-boolean v0, Lcom/android/smith/MediaMountReceiver;->mIsInMediaMountReceiver:Z

    .line 102
    sput v0, Lcom/android/smith/MediaMountReceiver;->mBootCompletedRetryCount:I

    .line 104
    new-instance v0, Lcom/android/smith/MediaMountReceiver$1;

    invoke-direct {v0}, Lcom/android/smith/MediaMountReceiver$1;-><init>()V

    sput-object v0, Lcom/android/smith/MediaMountReceiver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 148
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 30
    sget v0, Lcom/android/smith/MediaMountReceiver;->mBootCompletedRetryCount:I

    return v0
.end method

.method static synthetic access$002(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    sput p0, Lcom/android/smith/MediaMountReceiver;->mBootCompletedRetryCount:I

    return p0
.end method

.method static synthetic access$008()I
    .locals 2

    .prologue
    .line 30
    sget v0, Lcom/android/smith/MediaMountReceiver;->mBootCompletedRetryCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/smith/MediaMountReceiver;->mBootCompletedRetryCount:I

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    sput-boolean p0, Lcom/android/smith/MediaMountReceiver;->mIsInMediaMountReceiver:Z

    return p0
.end method

.method static synthetic access$200()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/android/smith/MediaMountReceiver;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static isInMediaMountReceiver()Z
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Lcom/android/smith/MediaMountReceiver;->mIsInMediaMountReceiver:Z

    return v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const-wide/16 v9, 0xa

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 49
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, path:Ljava/lang/String;
    sput-object p1, Lcom/android/smith/MediaMountReceiver;->mContext:Landroid/content/Context;

    .line 54
    const-string v3, "SM:MediaMountReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", path: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", tool version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f040001

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    if-nez v0, :cond_1

    .line 58
    const-string v3, "SM:MediaMountReceiver"

    const-string v4, "no action!"

    invoke-static {v3, v4}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/smith/HtcNative;->getExternalStorageDirectory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Lcom/android/smith/HtcNative;->getPhoneStorageDirectory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 64
    :cond_2
    const-string v3, "SM:MediaMountReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "not an phone/external path: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :cond_3
    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 70
    sget-object v3, Lcom/android/smith/MediaMountReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 71
    sget-object v3, Lcom/android/smith/MediaMountReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 73
    const-string v3, "read-only"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 75
    .local v2, ro:Z
    const-string v3, "SM:MediaMountReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MOUNTED path="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", read-only="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    if-eqz v2, :cond_4

    .line 79
    const-string v3, "SM:MediaMountReceiver"

    const-string v4, "mounted read-only, ignore!"

    invoke-static {v3, v4}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :cond_4
    sget-object v3, Lcom/android/smith/MediaMountReceiver;->mHandler:Landroid/os/Handler;

    sget-object v4, Lcom/android/smith/MediaMountReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7, v6, v6, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 92
    .end local v2           #ro:Z
    :cond_5
    const-string v3, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 94
    sget-object v3, Lcom/android/smith/MediaMountReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 95
    sget-object v3, Lcom/android/smith/MediaMountReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 97
    const-string v3, "SM:MediaMountReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "REMOVED path="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    sget-object v3, Lcom/android/smith/MediaMountReceiver;->mHandler:Landroid/os/Handler;

    sget-object v4, Lcom/android/smith/MediaMountReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8, v6, v6, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0
.end method
