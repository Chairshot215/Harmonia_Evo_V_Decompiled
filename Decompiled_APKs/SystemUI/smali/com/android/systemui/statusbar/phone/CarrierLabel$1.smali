.class Lcom/android/systemui/statusbar/phone/CarrierLabel$1;
.super Landroid/content/BroadcastReceiver;
.source "CarrierLabel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/CarrierLabel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/CarrierLabel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "networkState"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    const-string v2, "unregistered_icc"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mUnregisteredSIM:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    const-string v2, "unregistered_icc_code"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    #setter for: Lcom/android/systemui/statusbar/phone/CarrierLabel;->mUnregisteredSIMCode:I
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$002(Lcom/android/systemui/statusbar/phone/CarrierLabel;I)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    const-string v2, "networkState"

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mServiceStatus:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    iget v1, v1, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mServiceStatus:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    const-string v2, "showSpn"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mShowSpn:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    const-string v2, "spn"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSPN:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    const-string v2, "showPlmn"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mShowPlmn:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    const-string v2, "plmn"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mPLMN:Ljava/lang/String;

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->updateNetworkNameExt()V

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    #calls: Lcom/android/systemui/statusbar/phone/CarrierLabel;->updateCdmaRoamingIcon()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$100(Lcom/android/systemui/statusbar/phone/CarrierLabel;)V

    :cond_0
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->setCustomText()V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    iput-boolean v5, v1, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mShowSpn:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    const-string v2, ""

    iput-object v2, v1, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSPN:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    iput-boolean v5, v1, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mShowPlmn:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    const-string v2, ""

    iput-object v2, v1, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mPLMN:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    const-string v2, "showSpn"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "spn"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "showPlmn"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    const-string v5, "plmn"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->updateResources()V

    goto :goto_2

    :cond_4
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    #calls: Lcom/android/systemui/statusbar/phone/CarrierLabel;->updateIccState(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$200(Lcom/android/systemui/statusbar/phone/CarrierLabel;Landroid/content/Intent;)V

    goto :goto_2

    :cond_5
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    #calls: Lcom/android/systemui/statusbar/phone/CarrierLabel;->updateAirplaneMode()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$300(Lcom/android/systemui/statusbar/phone/CarrierLabel;)V

    goto :goto_2
.end method
