.class Lcom/android/commands/monkey/MonkeySourceNetwork$DeferredReturn;
.super Ljava/lang/Object;
.source "MonkeySourceNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/monkey/MonkeySourceNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeferredReturn"
.end annotation


# static fields
.field public static final ON_WINDOW_STATE_CHANGE:I = 0x1


# instance fields
.field private deferredReturn:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

.field private event:I

.field private timeout:J


# direct methods
.method public constructor <init>(ILcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;J)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/commands/monkey/MonkeySourceNetwork$DeferredReturn;->event:I

    iput-object p2, p0, Lcom/android/commands/monkey/MonkeySourceNetwork$DeferredReturn;->deferredReturn:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    iput-wide p3, p0, Lcom/android/commands/monkey/MonkeySourceNetwork$DeferredReturn;->timeout:J

    return-void
.end method


# virtual methods
.method public waitForEvent()Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;
    .locals 5

    iget v1, p0, Lcom/android/commands/monkey/MonkeySourceNetwork$DeferredReturn;->event:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    iget-object v1, p0, Lcom/android/commands/monkey/MonkeySourceNetwork$DeferredReturn;->deferredReturn:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    return-object v1

    :pswitch_0
    :try_start_0
    const-class v2, Lcom/android/commands/monkey/MonkeySourceNetworkViews;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-class v1, Lcom/android/commands/monkey/MonkeySourceNetworkViews;

    iget-wide v3, p0, Lcom/android/commands/monkey/MonkeySourceNetwork$DeferredReturn;->timeout:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "MonkeyStub"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deferral interrupted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
