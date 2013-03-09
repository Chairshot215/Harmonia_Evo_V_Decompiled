.class Lcom/android/providers/contacts/HtcContactsProvider2$8;
.super Landroid/content/BroadcastReceiver;
.source "HtcContactsProvider2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/contacts/HtcContactsProvider2;->initSIMContactsRelatedFunctions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/contacts/HtcContactsProvider2;


# direct methods
.method constructor <init>(Lcom/android/providers/contacts/HtcContactsProvider2;)V
    .locals 0
    .parameter

    .prologue
    .line 2802
    iput-object p1, p0, Lcom/android/providers/contacts/HtcContactsProvider2$8;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const-wide/16 v9, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 2805
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2809
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2810
    const-string v4, "ss"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2813
    .local v2, state:Ljava/lang/String;
    const-wide/high16 v4, 0x4000

    invoke-static {v4, v5}, Lcom/htc/util/contacts/BuildUtils$HtcSense;->isAboveOrEqualToVer(D)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "IMSI"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2815
    iget-object v4, p0, Lcom/android/providers/contacts/HtcContactsProvider2$8;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    invoke-virtual {v4}, Lcom/android/providers/contacts/HtcContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/providers/contacts/HtcContactsProvider2$8;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    #calls: Lcom/android/providers/contacts/HtcContactsProvider2;->getTelephonyManager()Landroid/telephony/TelephonyManager;
    invoke-static {v5}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$200(Lcom/android/providers/contacts/HtcContactsProvider2;)Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/providers/contacts/HtcUtils/Utils$SpeedDial;->updateForSimChanged(Landroid/content/Context;Landroid/telephony/TelephonyManager;)V

    .line 2859
    .end local v2           #state:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 2817
    .restart local v2       #state:Ljava/lang/String;
    :cond_1
    const-string v4, "LOADED"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/providers/contacts/HtcContactsProvider2$8;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    #getter for: Lcom/android/providers/contacts/HtcContactsProvider2;->mIsSIMLoadedOnce:Z
    invoke-static {v4}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$300(Lcom/android/providers/contacts/HtcContactsProvider2;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 2824
    :try_start_0
    invoke-static {}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapHtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2825
    iget-object v4, p0, Lcom/android/providers/contacts/HtcContactsProvider2$8;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    const/4 v5, 0x1

    #setter for: Lcom/android/providers/contacts/HtcContactsProvider2;->mIsSIMLoadedOnce:Z
    invoke-static {v4, v5}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$302(Lcom/android/providers/contacts/HtcContactsProvider2;Z)Z

    .line 2828
    :cond_2
    iget-object v4, p0, Lcom/android/providers/contacts/HtcContactsProvider2$8;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    const-wide/16 v5, 0x0

    #calls: Lcom/android/providers/contacts/HtcContactsProvider2;->requerySimContacts(J)V
    invoke-static {v4, v5, v6}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$400(Lcom/android/providers/contacts/HtcContactsProvider2;J)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2829
    :catch_0
    move-exception v1

    .line 2830
    .local v1, e:Landroid/database/sqlite/SQLiteFullException;
    const-string v4, "HtcContactsProvider2"

    const-string v5, "onReceive"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2834
    .end local v1           #e:Landroid/database/sqlite/SQLiteFullException;
    :cond_3
    const-string v4, "ICC_HOT_SWAP_ABSENT"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2836
    invoke-static {}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapHtcBuildUtils;->supportSimHotSwapFeature()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2837
    sget-object v4, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "caller_is_syncadapter"

    const-string v6, "true"

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 2842
    .local v3, uri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/providers/contacts/HtcContactsProvider2$8;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    const-string v5, "account_type = ?"

    new-array v6, v7, [Ljava/lang/String;

    const-string v7, "com.anddroid.contacts.sim"

    aput-object v7, v6, v8

    invoke-virtual {v4, v3, v5, v6}, Lcom/android/providers/contacts/HtcContactsProvider2;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 2848
    .end local v2           #state:Ljava/lang/String;
    .end local v3           #uri:Landroid/net/Uri;
    :cond_4
    const-string v4, "android.intent.action.SIM_REFRESH"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2850
    iget-object v4, p0, Lcom/android/providers/contacts/HtcContactsProvider2$8;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    #setter for: Lcom/android/providers/contacts/HtcContactsProvider2;->mIsSIMLoadedOnce:Z
    invoke-static {v4, v8}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$302(Lcom/android/providers/contacts/HtcContactsProvider2;Z)Z

    goto :goto_0

    .line 2851
    :cond_5
    const-string v4, "android.intent.action.SIM_FILE_UPDATE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2853
    const/16 v4, 0x6f3a

    const-string v5, "extra"

    const/4 v6, -0x1

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 2855
    iget-object v4, p0, Lcom/android/providers/contacts/HtcContactsProvider2$8;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    #setter for: Lcom/android/providers/contacts/HtcContactsProvider2;->mIsSIMLoadedOnce:Z
    invoke-static {v4, v8}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$302(Lcom/android/providers/contacts/HtcContactsProvider2;Z)Z

    .line 2856
    iget-object v4, p0, Lcom/android/providers/contacts/HtcContactsProvider2$8;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    #calls: Lcom/android/providers/contacts/HtcContactsProvider2;->requerySimContacts(J)V
    invoke-static {v4, v9, v10}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$400(Lcom/android/providers/contacts/HtcContactsProvider2;J)V

    goto/16 :goto_0
.end method
