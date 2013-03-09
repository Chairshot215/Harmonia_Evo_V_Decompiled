.class Lcom/android/settings/CdmaApnSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "CdmaApnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CdmaApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/CdmaApnSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/CdmaApnSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/settings/CdmaApnSettings$1;->this$0:Lcom/android/settings/CdmaApnSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 114
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    #calls: Lcom/android/settings/CdmaApnSettings;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;
    invoke-static {p2}, Lcom/android/settings/CdmaApnSettings;->access$000(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v0

    .line 117
    .local v0, state:Lcom/android/internal/telephony/Phone$DataState;
    sget-object v1, Lcom/android/settings/CdmaApnSettings$3;->$SwitchMap$com$android$internal$telephony$Phone$DataState:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone$DataState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 127
    .end local v0           #state:Lcom/android/internal/telephony/Phone$DataState;
    :cond_0
    :goto_0
    return-void

    .line 119
    .restart local v0       #state:Lcom/android/internal/telephony/Phone$DataState;
    :pswitch_0
    invoke-static {}, Lcom/android/settings/CdmaApnSettings;->access$100()Z

    move-result v1

    if-nez v1, :cond_1

    .line 120
    iget-object v1, p0, Lcom/android/settings/CdmaApnSettings$1;->this$0:Lcom/android/settings/CdmaApnSettings;

    #calls: Lcom/android/settings/CdmaApnSettings;->fillList()V
    invoke-static {v1}, Lcom/android/settings/CdmaApnSettings;->access$200(Lcom/android/settings/CdmaApnSettings;)V

    goto :goto_0

    .line 122
    :cond_1
    iget-object v1, p0, Lcom/android/settings/CdmaApnSettings$1;->this$0:Lcom/android/settings/CdmaApnSettings;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2}, Lcom/android/settings/CdmaApnSettings;->showDialog(I)V

    goto :goto_0

    .line 117
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
