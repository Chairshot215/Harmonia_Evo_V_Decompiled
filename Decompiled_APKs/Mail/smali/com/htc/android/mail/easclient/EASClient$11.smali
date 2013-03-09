.class Lcom/htc/android/mail/easclient/EASClient$11;
.super Ljava/lang/Object;
.source "EASClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/easclient/EASClient;->onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
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
    .line 700
    iput-object p1, p0, Lcom/htc/android/mail/easclient/EASClient$11;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 702
    iget-object v1, p0, Lcom/htc/android/mail/easclient/EASClient$11;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    invoke-virtual {v1}, Lcom/htc/android/mail/easclient/EASClient;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 715
    :goto_0
    return-void

    .line 705
    :cond_0
    iget-object v1, p0, Lcom/htc/android/mail/easclient/EASClient$11;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASClient$11;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    #getter for: Lcom/htc/android/mail/easclient/EASClient;->syncEmail:Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;
    invoke-static {v2}, Lcom/htc/android/mail/easclient/EASClient;->access$2100(Lcom/htc/android/mail/easclient/EASClient;)Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;->isChecked()Z

    move-result v2

    #setter for: Lcom/htc/android/mail/easclient/EASClient;->mSyncSrcEnabled:Z
    invoke-static {v1, v2}, Lcom/htc/android/mail/easclient/EASClient;->access$1702(Lcom/htc/android/mail/easclient/EASClient;Z)Z

    .line 706
    iget-object v1, p0, Lcom/htc/android/mail/easclient/EASClient$11;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    #getter for: Lcom/htc/android/mail/easclient/EASClient;->mSyncSrcEnabled:Z
    invoke-static {v1}, Lcom/htc/android/mail/easclient/EASClient;->access$1700(Lcom/htc/android/mail/easclient/EASClient;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 707
    iget-object v1, p0, Lcom/htc/android/mail/easclient/EASClient$11;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/android/mail/easclient/EASClient$11;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    #getter for: Lcom/htc/android/mail/easclient/EASClient;->syncEmail:Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;
    invoke-static {v3}, Lcom/htc/android/mail/easclient/EASClient;->access$2100(Lcom/htc/android/mail/easclient/EASClient;)Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;

    move-result-object v3

    #calls: Lcom/htc/android/mail/easclient/EASClient;->resetSyncErrorStatus(ZLcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;)V
    invoke-static {v1, v2, v3}, Lcom/htc/android/mail/easclient/EASClient;->access$1900(Lcom/htc/android/mail/easclient/EASClient;ZLcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;)V

    .line 711
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/easclient/EASClient$11;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    #getter for: Lcom/htc/android/mail/easclient/EASClient;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;
    invoke-static {v1}, Lcom/htc/android/mail/easclient/EASClient;->access$000(Lcom/htc/android/mail/easclient/EASClient;)Lcom/htc/android/mail/eassvc/pim/IEASService;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASClient$11;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    #getter for: Lcom/htc/android/mail/easclient/EASClient;->AccountId:J
    invoke-static {v2}, Lcom/htc/android/mail/easclient/EASClient;->access$100(Lcom/htc/android/mail/easclient/EASClient;)J

    move-result-wide v2

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/htc/android/mail/easclient/EASClient$11;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    #getter for: Lcom/htc/android/mail/easclient/EASClient;->mSyncSrcEnabled:Z
    invoke-static {v5}, Lcom/htc/android/mail/easclient/EASClient;->access$1700(Lcom/htc/android/mail/easclient/EASClient;)Z

    move-result v5

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/htc/android/mail/eassvc/pim/IEASService;->enableSyncSource(JIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 712
    :catch_0
    move-exception v0

    .line 713
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
