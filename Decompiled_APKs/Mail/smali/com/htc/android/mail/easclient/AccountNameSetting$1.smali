.class Lcom/htc/android/mail/easclient/AccountNameSetting$1;
.super Ljava/lang/Object;
.source "AccountNameSetting.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/easclient/AccountNameSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/easclient/AccountNameSetting;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/easclient/AccountNameSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$1;->this$0:Lcom/htc/android/mail/easclient/AccountNameSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "className"
    .parameter "service"

    .prologue
    .line 121
    invoke-static {}, Lcom/htc/android/mail/easclient/AccountNameSetting;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AccountNameSetting"

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$1;->this$0:Lcom/htc/android/mail/easclient/AccountNameSetting;

    #getter for: Lcom/htc/android/mail/easclient/AccountNameSetting;->mIsDestroy:Z
    invoke-static {v0}, Lcom/htc/android/mail/easclient/AccountNameSetting;->access$100(Lcom/htc/android/mail/easclient/AccountNameSetting;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    :goto_0
    return-void

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$1;->this$0:Lcom/htc/android/mail/easclient/AccountNameSetting;

    invoke-static {p2}, Lcom/htc/android/mail/eassvc/pim/IEASService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/android/mail/eassvc/pim/IEASService;

    move-result-object v1

    #setter for: Lcom/htc/android/mail/easclient/AccountNameSetting;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;
    invoke-static {v0, v1}, Lcom/htc/android/mail/easclient/AccountNameSetting;->access$202(Lcom/htc/android/mail/easclient/AccountNameSetting;Lcom/htc/android/mail/eassvc/pim/IEASService;)Lcom/htc/android/mail/eassvc/pim/IEASService;

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 129
    invoke-static {}, Lcom/htc/android/mail/easclient/AccountNameSetting;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AccountNameSetting"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$1;->this$0:Lcom/htc/android/mail/easclient/AccountNameSetting;

    const/4 v1, 0x0

    #setter for: Lcom/htc/android/mail/easclient/AccountNameSetting;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;
    invoke-static {v0, v1}, Lcom/htc/android/mail/easclient/AccountNameSetting;->access$202(Lcom/htc/android/mail/easclient/AccountNameSetting;Lcom/htc/android/mail/eassvc/pim/IEASService;)Lcom/htc/android/mail/eassvc/pim/IEASService;

    .line 131
    return-void
.end method
