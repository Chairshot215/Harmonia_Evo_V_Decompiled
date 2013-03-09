.class Lcom/htc/android/mail/easclient/EASClient$17;
.super Ljava/lang/Object;
.source "EASClient.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/easclient/EASClient;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/easclient/EASClient;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/easclient/EASClient;)V
    .locals 0
    .parameter

    .prologue
    .line 811
    iput-object p1, p0, Lcom/htc/android/mail/easclient/EASClient$17;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v6, 0x1

    .line 814
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/easclient/EASClient$17;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    #getter for: Lcom/htc/android/mail/easclient/EASClient;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;
    invoke-static {v1}, Lcom/htc/android/mail/easclient/EASClient;->access$000(Lcom/htc/android/mail/easclient/EASClient;)Lcom/htc/android/mail/eassvc/pim/IEASService;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASClient$17;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    #getter for: Lcom/htc/android/mail/easclient/EASClient;->AccountId:J
    invoke-static {v2}, Lcom/htc/android/mail/easclient/EASClient;->access$100(Lcom/htc/android/mail/easclient/EASClient;)J

    move-result-wide v2

    const/4 v4, 0x4

    const/4 v5, 0x1

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/htc/android/mail/eassvc/pim/IEASService;->enableSyncSource(JIZ)V

    .line 815
    iget-object v1, p0, Lcom/htc/android/mail/easclient/EASClient$17;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    #getter for: Lcom/htc/android/mail/easclient/EASClient;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;
    invoke-static {v1}, Lcom/htc/android/mail/easclient/EASClient;->access$000(Lcom/htc/android/mail/easclient/EASClient;)Lcom/htc/android/mail/eassvc/pim/IEASService;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASClient$17;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    #getter for: Lcom/htc/android/mail/easclient/EASClient;->AccountId:J
    invoke-static {v2}, Lcom/htc/android/mail/easclient/EASClient;->access$100(Lcom/htc/android/mail/easclient/EASClient;)J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/htc/android/mail/eassvc/pim/IEASService;->syncTasks(JZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 819
    :goto_0
    iget-object v1, p0, Lcom/htc/android/mail/easclient/EASClient$17;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    #getter for: Lcom/htc/android/mail/easclient/EASClient;->syncTasks:Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;
    invoke-static {v1}, Lcom/htc/android/mail/easclient/EASClient;->access$2200(Lcom/htc/android/mail/easclient/EASClient;)Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;->setChecked(Z)V

    .line 820
    return-void

    .line 816
    :catch_0
    move-exception v0

    .line 817
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
