.class Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;
.super Ljava/lang/Object;
.source "CdmaDataConnectionTracker.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    invoke-static {p2}, Lcom/htc/cw/ICWService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/cw/ICWService;

    move-result-object v1

    #setter for: Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mRemoteService:Lcom/htc/cw/ICWService;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$4002(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;Lcom/htc/cw/ICWService;)Lcom/htc/cw/ICWService;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    const-string v1, "[HTCCW]CWService is connected"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->mSipInviteOK:Z
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$4102(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;Z)Z

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    const/16 v1, 0x66

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->mCwRegState:I
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$4202(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;I)I

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mRemoteService:Lcom/htc/cw/ICWService;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$4002(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;Lcom/htc/cw/ICWService;)Lcom/htc/cw/ICWService;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    const-string v1, "[HTCCW]CWService is disconnected"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->mSipInviteOK:Z
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$4302(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;Z)Z

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    const/16 v1, 0x66

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->mCwRegState:I
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$4402(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;I)I

    return-void
.end method
