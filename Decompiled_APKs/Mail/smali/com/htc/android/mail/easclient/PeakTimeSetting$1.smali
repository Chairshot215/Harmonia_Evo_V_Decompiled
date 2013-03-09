.class Lcom/htc/android/mail/easclient/PeakTimeSetting$1;
.super Ljava/lang/Object;
.source "PeakTimeSetting.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/easclient/PeakTimeSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/easclient/PeakTimeSetting;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/easclient/PeakTimeSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting$1;->this$0:Lcom/htc/android/mail/easclient/PeakTimeSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .parameter "className"
    .parameter "service"

    .prologue
    .line 97
    invoke-static {}, Lcom/htc/android/mail/easclient/PeakTimeSetting;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting$1;->this$0:Lcom/htc/android/mail/easclient/PeakTimeSetting;

    #getter for: Lcom/htc/android/mail/easclient/PeakTimeSetting;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/android/mail/easclient/PeakTimeSetting;->access$100(Lcom/htc/android/mail/easclient/PeakTimeSetting;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onServiceConnected"

    invoke-static {v1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_0
    iget-object v1, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting$1;->this$0:Lcom/htc/android/mail/easclient/PeakTimeSetting;

    invoke-static {p2}, Lcom/htc/android/mail/eassvc/pim/IEASService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/android/mail/eassvc/pim/IEASService;

    move-result-object v2

    #setter for: Lcom/htc/android/mail/easclient/PeakTimeSetting;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;
    invoke-static {v1, v2}, Lcom/htc/android/mail/easclient/PeakTimeSetting;->access$202(Lcom/htc/android/mail/easclient/PeakTimeSetting;Lcom/htc/android/mail/eassvc/pim/IEASService;)Lcom/htc/android/mail/eassvc/pim/IEASService;

    .line 107
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting$1;->this$0:Lcom/htc/android/mail/easclient/PeakTimeSetting;

    iget-object v2, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting$1;->this$0:Lcom/htc/android/mail/easclient/PeakTimeSetting;

    #getter for: Lcom/htc/android/mail/easclient/PeakTimeSetting;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;
    invoke-static {v2}, Lcom/htc/android/mail/easclient/PeakTimeSetting;->access$200(Lcom/htc/android/mail/easclient/PeakTimeSetting;)Lcom/htc/android/mail/eassvc/pim/IEASService;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting$1;->this$0:Lcom/htc/android/mail/easclient/PeakTimeSetting;

    #getter for: Lcom/htc/android/mail/easclient/PeakTimeSetting;->mAccountId:J
    invoke-static {v3}, Lcom/htc/android/mail/easclient/PeakTimeSetting;->access$400(Lcom/htc/android/mail/easclient/PeakTimeSetting;)J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lcom/htc/android/mail/eassvc/pim/IEASService;->getSyncOptions(J)Lcom/htc/android/mail/eassvc/pim/EASOptions;

    move-result-object v2

    #setter for: Lcom/htc/android/mail/easclient/PeakTimeSetting;->mEasOption:Lcom/htc/android/mail/eassvc/pim/EASOptions;
    invoke-static {v1, v2}, Lcom/htc/android/mail/easclient/PeakTimeSetting;->access$302(Lcom/htc/android/mail/easclient/PeakTimeSetting;Lcom/htc/android/mail/eassvc/pim/EASOptions;)Lcom/htc/android/mail/eassvc/pim/EASOptions;

    .line 108
    iget-object v1, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting$1;->this$0:Lcom/htc/android/mail/easclient/PeakTimeSetting;

    new-instance v2, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;

    iget-object v3, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting$1;->this$0:Lcom/htc/android/mail/easclient/PeakTimeSetting;

    #getter for: Lcom/htc/android/mail/easclient/PeakTimeSetting;->mEasOption:Lcom/htc/android/mail/eassvc/pim/EASOptions;
    invoke-static {v3}, Lcom/htc/android/mail/easclient/PeakTimeSetting;->access$300(Lcom/htc/android/mail/easclient/PeakTimeSetting;)Lcom/htc/android/mail/eassvc/pim/EASOptions;

    move-result-object v3

    iget v3, v3, Lcom/htc/android/mail/eassvc/pim/EASOptions;->peakDays:I

    invoke-direct {v2, v3}, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;-><init>(I)V

    #setter for: Lcom/htc/android/mail/easclient/PeakTimeSetting;->mDaysOfWeek:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;
    invoke-static {v1, v2}, Lcom/htc/android/mail/easclient/PeakTimeSetting;->access$502(Lcom/htc/android/mail/easclient/PeakTimeSetting;Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;)Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;

    .line 109
    iget-object v1, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting$1;->this$0:Lcom/htc/android/mail/easclient/PeakTimeSetting;

    #getter for: Lcom/htc/android/mail/easclient/PeakTimeSetting;->mTempDaysOfWeek:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;
    invoke-static {v1}, Lcom/htc/android/mail/easclient/PeakTimeSetting;->access$600(Lcom/htc/android/mail/easclient/PeakTimeSetting;)Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;->getCode()I

    move-result v1

    if-gez v1, :cond_1

    .line 110
    iget-object v1, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting$1;->this$0:Lcom/htc/android/mail/easclient/PeakTimeSetting;

    #getter for: Lcom/htc/android/mail/easclient/PeakTimeSetting;->mTempDaysOfWeek:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;
    invoke-static {v1}, Lcom/htc/android/mail/easclient/PeakTimeSetting;->access$600(Lcom/htc/android/mail/easclient/PeakTimeSetting;)Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting$1;->this$0:Lcom/htc/android/mail/easclient/PeakTimeSetting;

    #getter for: Lcom/htc/android/mail/easclient/PeakTimeSetting;->mDaysOfWeek:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;
    invoke-static {v2}, Lcom/htc/android/mail/easclient/PeakTimeSetting;->access$500(Lcom/htc/android/mail/easclient/PeakTimeSetting;)Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;->set(Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;)V

    .line 112
    :cond_1
    iget-object v1, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting$1;->this$0:Lcom/htc/android/mail/easclient/PeakTimeSetting;

    invoke-virtual {v1}, Lcom/htc/android/mail/easclient/PeakTimeSetting;->setupLayout()V

    .line 113
    iget-object v1, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting$1;->this$0:Lcom/htc/android/mail/easclient/PeakTimeSetting;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    #setter for: Lcom/htc/android/mail/easclient/PeakTimeSetting;->mIntentFilter:Landroid/content/IntentFilter;
    invoke-static {v1, v2}, Lcom/htc/android/mail/easclient/PeakTimeSetting;->access$702(Lcom/htc/android/mail/easclient/PeakTimeSetting;Landroid/content/IntentFilter;)Landroid/content/IntentFilter;

    .line 114
    iget-object v1, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting$1;->this$0:Lcom/htc/android/mail/easclient/PeakTimeSetting;

    #getter for: Lcom/htc/android/mail/easclient/PeakTimeSetting;->mIntentFilter:Landroid/content/IntentFilter;
    invoke-static {v1}, Lcom/htc/android/mail/easclient/PeakTimeSetting;->access$700(Lcom/htc/android/mail/easclient/PeakTimeSetting;)Landroid/content/IntentFilter;

    move-result-object v1

    const-string v2, "intent.eas.mail.optionChange"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 121
    invoke-static {}, Lcom/htc/android/mail/easclient/PeakTimeSetting;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting$1;->this$0:Lcom/htc/android/mail/easclient/PeakTimeSetting;

    #getter for: Lcom/htc/android/mail/easclient/PeakTimeSetting;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/android/mail/easclient/PeakTimeSetting;->access$100(Lcom/htc/android/mail/easclient/PeakTimeSetting;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting$1;->this$0:Lcom/htc/android/mail/easclient/PeakTimeSetting;

    const/4 v1, 0x0

    #setter for: Lcom/htc/android/mail/easclient/PeakTimeSetting;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;
    invoke-static {v0, v1}, Lcom/htc/android/mail/easclient/PeakTimeSetting;->access$202(Lcom/htc/android/mail/easclient/PeakTimeSetting;Lcom/htc/android/mail/eassvc/pim/IEASService;)Lcom/htc/android/mail/eassvc/pim/IEASService;

    .line 125
    return-void
.end method
