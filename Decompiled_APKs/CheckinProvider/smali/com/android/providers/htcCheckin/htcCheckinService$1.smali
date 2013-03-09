.class Lcom/android/providers/htcCheckin/htcCheckinService$1;
.super Lcom/android/providers/htcCheckin/ICheckinService$Stub;
.source "htcCheckinService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/htcCheckin/htcCheckinService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/htcCheckin/htcCheckinService;


# direct methods
.method constructor <init>(Lcom/android/providers/htcCheckin/htcCheckinService;)V
    .locals 0
    .parameter

    .prologue
    .line 395
    iput-object p1, p0, Lcom/android/providers/htcCheckin/htcCheckinService$1;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    invoke-direct {p0}, Lcom/android/providers/htcCheckin/ICheckinService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public checkin()Z
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/providers/htcCheckin/htcCheckinService$1;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    invoke-virtual {v0}, Lcom/android/providers/htcCheckin/htcCheckinService;->_intf_checkin()Z

    move-result v0

    return v0
.end method

.method public getParentalControlState(Lcom/android/providers/htcCheckin/IParentalControlCallback;Ljava/lang/String;)V
    .locals 0
    .parameter "p"
    .parameter "requestingApp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 417
    return-void
.end method

.method public masterClear()V
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/providers/htcCheckin/htcCheckinService$1;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    invoke-virtual {v0}, Lcom/android/providers/htcCheckin/htcCheckinService;->_intf_masterClear()V

    .line 410
    return-void
.end method

.method public reportCrashAsync([B)V
    .locals 1
    .parameter "crashData"

    .prologue
    .line 405
    iget-object v0, p0, Lcom/android/providers/htcCheckin/htcCheckinService$1;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    invoke-virtual {v0, p1}, Lcom/android/providers/htcCheckin/htcCheckinService;->_intf_reportCrashAsync([B)V

    .line 406
    return-void
.end method

.method public reportCrashSync([B)V
    .locals 1
    .parameter "crashData"

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/providers/htcCheckin/htcCheckinService$1;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    invoke-virtual {v0, p1}, Lcom/android/providers/htcCheckin/htcCheckinService;->_intf_reportCrashSync([B)V

    .line 402
    return-void
.end method
