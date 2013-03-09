.class public Lcom/htc/android/mail/eassvc/EASAppSvc$SyncProxy;
.super Ljava/lang/Object;
.source "EASAppSvc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/eassvc/EASAppSvc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SyncProxy"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;


# direct methods
.method public constructor <init>(Lcom/htc/android/mail/eassvc/EASAppSvc;)V
    .locals 0
    .parameter

    .prologue
    .line 684
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$SyncProxy;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueDoSync(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;IZ)V
    .locals 1
    .parameter "exSyncSources"
    .parameter "syncType"
    .parameter "bIsManual"

    .prologue
    .line 686
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$SyncProxy;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #calls: Lcom/htc/android/mail/eassvc/EASAppSvc;->queueDoSync(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;IZ)V
    invoke-static {v0, p1, p2, p3}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$600(Lcom/htc/android/mail/eassvc/EASAppSvc;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;IZ)V

    .line 687
    return-void
.end method

.method public scheduleChange()V
    .locals 1

    .prologue
    .line 689
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$SyncProxy;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #calls: Lcom/htc/android/mail/eassvc/EASAppSvc;->sendScheduleChangeBroadcast()V
    invoke-static {v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$700(Lcom/htc/android/mail/eassvc/EASAppSvc;)V

    .line 690
    return-void
.end method
