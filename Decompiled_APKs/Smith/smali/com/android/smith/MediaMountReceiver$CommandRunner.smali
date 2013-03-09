.class Lcom/android/smith/MediaMountReceiver$CommandRunner;
.super Ljava/lang/Thread;
.source "MediaMountReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/smith/MediaMountReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CommandRunner"
.end annotation


# instance fields
.field message:I

.field pairs:[Ljava/lang/String;


# direct methods
.method public constructor <init>(I[Ljava/lang/String;)V
    .locals 1
    .parameter "msgDone"
    .parameter "commandPairs"

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/smith/MediaMountReceiver$CommandRunner;->pairs:[Ljava/lang/String;

    .line 155
    iput-object p2, p0, Lcom/android/smith/MediaMountReceiver$CommandRunner;->pairs:[Ljava/lang/String;

    .line 156
    iput p1, p0, Lcom/android/smith/MediaMountReceiver$CommandRunner;->message:I

    .line 157
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 161
    iget-object v1, p0, Lcom/android/smith/MediaMountReceiver$CommandRunner;->pairs:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 175
    :goto_0
    return-void

    .line 164
    :cond_0
    const-string v1, "SM:MediaMountReceiver"

    const-string v2, "CommandRunner: begin"

    invoke-static {v1, v2}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/android/smith/MediaMountReceiver$CommandRunner;->pairs:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 168
    const-string v1, "SM:MediaMountReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CommandRunner: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/smith/MediaMountReceiver$CommandRunner;->pairs:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/smith/MediaMountReceiver$CommandRunner;->pairs:[Ljava/lang/String;

    add-int/lit8 v4, v0, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v1, p0, Lcom/android/smith/MediaMountReceiver$CommandRunner;->pairs:[Ljava/lang/String;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/smith/MediaMountReceiver$CommandRunner;->pairs:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lcom/android/smith/Device;->sendToService(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 166
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 172
    :cond_1
    const-string v1, "SM:MediaMountReceiver"

    const-string v2, "CommandRunner: end"

    invoke-static {v1, v2}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-static {}, Lcom/android/smith/MediaMountReceiver;->access$200()Landroid/os/Handler;

    move-result-object v1

    invoke-static {}, Lcom/android/smith/MediaMountReceiver;->access$200()Landroid/os/Handler;

    move-result-object v2

    iget v3, p0, Lcom/android/smith/MediaMountReceiver$CommandRunner;->message:I

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
