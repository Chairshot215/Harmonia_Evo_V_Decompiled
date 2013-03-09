.class public final Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;
.super Landroid/os/Handler;
.source "UserBehaviorLoggingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/ulog/UserBehaviorLoggingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "UserBehaviorHandler"
.end annotation


# static fields
.field private static final ADD_EVENT_LOG:I = 0x5

.field private static final ADD_HTC_UB_LOG:I = 0x0

.field private static final ADD_STAT_LOG:I = 0x6

.field private static final CUSTOMIZATION_ACTION:I = 0x8

.field private static final FLUSH:I = 0x2

.field private static final SET_POLICY:I = 0x7

.field private static final STOP:I = 0x4

.field private static final UPLOAD_crash:I = 0x1

.field private static final UPLOAD_regular:I = 0x3


# instance fields
.field private mInnerEventLog:Lcom/htc/server/ulog/EventLogStore;

.field private mInnerPolicy:Lcom/htc/server/ulog/PolicyStore;

.field private mInnerStatLog:Lcom/htc/server/ulog/StatLogStore;

.field private mInnerUBEventLog:Lcom/htc/server/ulog/HTCUBLogStore;

.field final synthetic this$0:Lcom/htc/server/ulog/UserBehaviorLoggingService;


# direct methods
.method public constructor <init>(Lcom/htc/server/ulog/UserBehaviorLoggingService;Landroid/os/Looper;Lcom/htc/server/ulog/HTCUBLogStore;Lcom/htc/server/ulog/EventLogStore;Lcom/htc/server/ulog/StatLogStore;Lcom/htc/server/ulog/PolicyStore;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;->this$0:Lcom/htc/server/ulog/UserBehaviorLoggingService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;->mInnerUBEventLog:Lcom/htc/server/ulog/HTCUBLogStore;

    iput-object p4, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;->mInnerEventLog:Lcom/htc/server/ulog/EventLogStore;

    iput-object p5, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;->mInnerStatLog:Lcom/htc/server/ulog/StatLogStore;

    iput-object p6, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;->mInnerPolicy:Lcom/htc/server/ulog/PolicyStore;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;->mInnerUBEventLog:Lcom/htc/server/ulog/HTCUBLogStore;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/htc/server/ulog/HTCUBLogStore;->addLog(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;->mInnerStatLog:Lcom/htc/server/ulog/StatLogStore;

    invoke-virtual {v0}, Lcom/htc/server/ulog/StatLogStore;->writeULogStat2DropBox4CS()V

    iget-object v0, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;->mInnerUBEventLog:Lcom/htc/server/ulog/HTCUBLogStore;

    invoke-virtual {v0, v2}, Lcom/htc/server/ulog/HTCUBLogStore;->upload(I)V

    iget-object v0, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;->mInnerEventLog:Lcom/htc/server/ulog/EventLogStore;

    invoke-virtual {v0, v2}, Lcom/htc/server/ulog/EventLogStore;->upload(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;->mInnerStatLog:Lcom/htc/server/ulog/StatLogStore;

    invoke-virtual {v0}, Lcom/htc/server/ulog/StatLogStore;->writeULogStat2DropBox4CS()V

    iget-object v0, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;->mInnerUBEventLog:Lcom/htc/server/ulog/HTCUBLogStore;

    invoke-virtual {v0, v1}, Lcom/htc/server/ulog/HTCUBLogStore;->upload(I)V

    iget-object v0, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;->mInnerEventLog:Lcom/htc/server/ulog/EventLogStore;

    invoke-virtual {v0, v1}, Lcom/htc/server/ulog/EventLogStore;->upload(I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;->mInnerStatLog:Lcom/htc/server/ulog/StatLogStore;

    invoke-virtual {v0}, Lcom/htc/server/ulog/StatLogStore;->flush()V

    iget-object v0, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;->mInnerUBEventLog:Lcom/htc/server/ulog/HTCUBLogStore;

    invoke-virtual {v0}, Lcom/htc/server/ulog/HTCUBLogStore;->flush()V

    iget-object v0, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;->mInnerEventLog:Lcom/htc/server/ulog/EventLogStore;

    invoke-virtual {v0}, Lcom/htc/server/ulog/EventLogStore;->flush()V

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;->this$0:Lcom/htc/server/ulog/UserBehaviorLoggingService;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;->this$0:Lcom/htc/server/ulog/UserBehaviorLoggingService;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/htc/utils/ulog/ParcelableULogData;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;->mInnerEventLog:Lcom/htc/server/ulog/EventLogStore;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/utils/ulog/ParcelableULogData;

    invoke-virtual {v1, v0}, Lcom/htc/server/ulog/EventLogStore;->addLog(Lcom/htc/utils/ulog/ParcelableULogData;)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/htc/utils/ulog/ParcelableULogStat;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;->mInnerStatLog:Lcom/htc/server/ulog/StatLogStore;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/utils/ulog/ParcelableULogStat;

    invoke-virtual {v1, v0}, Lcom/htc/server/ulog/StatLogStore;->addLog(Lcom/htc/utils/ulog/ParcelableULogStat;)V

    goto :goto_0

    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;->mInnerPolicy:Lcom/htc/server/ulog/PolicyStore;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;->mInnerPolicy:Lcom/htc/server/ulog/PolicyStore;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {v1, v0, v2}, Lcom/htc/server/ulog/PolicyStore;->setPolicyAndNotify(Landroid/os/Bundle;Z)V

    goto/16 :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;->mInnerPolicy:Lcom/htc/server/ulog/PolicyStore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;->mInnerPolicy:Lcom/htc/server/ulog/PolicyStore;

    invoke-virtual {v0}, Lcom/htc/server/ulog/PolicyStore;->insertPolicyFromCustomizationBroadcast()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
