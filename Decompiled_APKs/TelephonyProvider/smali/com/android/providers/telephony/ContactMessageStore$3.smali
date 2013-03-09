.class Lcom/android/providers/telephony/ContactMessageStore$3;
.super Ljava/lang/Object;
.source "ContactMessageStore.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/telephony/ContactMessageStore;->bindDialerService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/telephony/ContactMessageStore;


# direct methods
.method constructor <init>(Lcom/android/providers/telephony/ContactMessageStore;)V
    .locals 0
    .parameter

    .prologue
    .line 1677
    iput-object p1, p0, Lcom/android/providers/telephony/ContactMessageStore$3;->this$0:Lcom/android/providers/telephony/ContactMessageStore;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "service"

    .prologue
    .line 1680
    const-string v0, "ContactMessageStore"

    const-string v1, "DialerService connected !"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1682
    iget-object v0, p0, Lcom/android/providers/telephony/ContactMessageStore$3;->this$0:Lcom/android/providers/telephony/ContactMessageStore;

    invoke-static {p2}, Lcom/htc/service/dialer/IDialerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/service/dialer/IDialerService;

    move-result-object v1

    #setter for: Lcom/android/providers/telephony/ContactMessageStore;->mDialerSrv:Lcom/htc/service/dialer/IDialerService;
    invoke-static {v0, v1}, Lcom/android/providers/telephony/ContactMessageStore;->access$902(Lcom/android/providers/telephony/ContactMessageStore;Lcom/htc/service/dialer/IDialerService;)Lcom/htc/service/dialer/IDialerService;

    .line 1683
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 1687
    const-string v0, "ContactMessageStore"

    const-string v1, "DialerService disconnected !"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1689
    iget-object v0, p0, Lcom/android/providers/telephony/ContactMessageStore$3;->this$0:Lcom/android/providers/telephony/ContactMessageStore;

    const/4 v1, 0x0

    #setter for: Lcom/android/providers/telephony/ContactMessageStore;->mDialerSrv:Lcom/htc/service/dialer/IDialerService;
    invoke-static {v0, v1}, Lcom/android/providers/telephony/ContactMessageStore;->access$902(Lcom/android/providers/telephony/ContactMessageStore;Lcom/htc/service/dialer/IDialerService;)Lcom/htc/service/dialer/IDialerService;

    .line 1690
    return-void
.end method
