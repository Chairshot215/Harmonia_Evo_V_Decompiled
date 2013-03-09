.class Lcom/android/htccontacts/PeopleApp$4;
.super Ljava/lang/Object;
.source "PeopleApp.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/PeopleApp;->bindDialerService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/PeopleApp;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/PeopleApp;)V
    .locals 0
    .parameter

    .prologue
    .line 758
    iput-object p1, p0, Lcom/android/htccontacts/PeopleApp$4;->this$0:Lcom/android/htccontacts/PeopleApp;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "service"

    .prologue
    .line 761
    const-string v0, "PeopleApp"

    const-string v1, "DialerService connected !"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    iget-object v0, p0, Lcom/android/htccontacts/PeopleApp$4;->this$0:Lcom/android/htccontacts/PeopleApp;

    invoke-static {p2}, Lcom/htc/service/dialer/IDialerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/service/dialer/IDialerService;

    move-result-object v1

    #setter for: Lcom/android/htccontacts/PeopleApp;->mDialerSrv:Lcom/htc/service/dialer/IDialerService;
    invoke-static {v0, v1}, Lcom/android/htccontacts/PeopleApp;->access$1102(Lcom/android/htccontacts/PeopleApp;Lcom/htc/service/dialer/IDialerService;)Lcom/htc/service/dialer/IDialerService;

    .line 764
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 768
    const-string v0, "PeopleApp"

    const-string v1, "DialerService disconnected !"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    iget-object v0, p0, Lcom/android/htccontacts/PeopleApp$4;->this$0:Lcom/android/htccontacts/PeopleApp;

    const/4 v1, 0x0

    #setter for: Lcom/android/htccontacts/PeopleApp;->mDialerSrv:Lcom/htc/service/dialer/IDialerService;
    invoke-static {v0, v1}, Lcom/android/htccontacts/PeopleApp;->access$1102(Lcom/android/htccontacts/PeopleApp;Lcom/htc/service/dialer/IDialerService;)Lcom/htc/service/dialer/IDialerService;

    .line 771
    return-void
.end method
