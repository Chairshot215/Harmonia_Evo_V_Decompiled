.class Lcom/android/phone/CdmaOptions$MyHandler;
.super Landroid/os/Handler;
.source "CdmaOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CdmaOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# static fields
.field private static final MESSAGE_CDMA_DATA_ROAM_GUARD_NOTIFY:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/android/phone/CdmaOptions;


# direct methods
.method private constructor <init>(Lcom/android/phone/CdmaOptions;)V
    .locals 0
    .parameter

    .prologue
    .line 531
    iput-object p1, p0, Lcom/android/phone/CdmaOptions$MyHandler;->this$0:Lcom/android/phone/CdmaOptions;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/CdmaOptions;Lcom/android/phone/CdmaOptions$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 531
    invoke-direct {p0, p1}, Lcom/android/phone/CdmaOptions$MyHandler;-><init>(Lcom/android/phone/CdmaOptions;)V

    return-void
.end method

.method private handleDataRoamGuardNotify(Landroid/os/AsyncResult;)V
    .locals 4
    .parameter "ar"

    .prologue
    .line 563
    sget-boolean v2, Lcom/android/phone/HtcFeatureList;->FEATURE_DATA_ROAM_GUARD:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/android/phone/HtcFeatureList;->FEATURE_DATA_ROAM_GUARD2:Z

    if-eqz v2, :cond_2

    .line 565
    :cond_0
    :try_start_0
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    move-object v1, v0

    .line 567
    .local v1, notifications:[I
    const/4 v2, 0x0

    aget v2, v1, v2

    if-eqz v2, :cond_3

    .line 568
    sget-boolean v2, Lcom/android/phone/Settings;->mUserCancelDataRoamingGuard:Z

    if-nez v2, :cond_1

    .line 569
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/phone/Settings;->mUserCancelDataRoamingGuard:Z

    .line 570
    iget-object v2, p0, Lcom/android/phone/CdmaOptions$MyHandler;->this$0:Lcom/android/phone/CdmaOptions;

    #getter for: Lcom/android/phone/CdmaOptions;->mButtonDataRoam:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v2}, Lcom/android/phone/CdmaOptions;->access$400(Lcom/android/phone/CdmaOptions;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 571
    iget-object v2, p0, Lcom/android/phone/CdmaOptions$MyHandler;->this$0:Lcom/android/phone/CdmaOptions;

    #getter for: Lcom/android/phone/CdmaOptions;->mButtonDataRoam:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v2}, Lcom/android/phone/CdmaOptions;->access$400(Lcom/android/phone/CdmaOptions;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 583
    :cond_1
    :goto_0
    const/4 v2, 0x3

    aget v2, v1, v2

    if-eqz v2, :cond_2

    .line 584
    iget-object v2, p0, Lcom/android/phone/CdmaOptions$MyHandler;->this$0:Lcom/android/phone/CdmaOptions;

    #getter for: Lcom/android/phone/CdmaOptions;->mButtonDataRoam:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v2}, Lcom/android/phone/CdmaOptions;->access$400(Lcom/android/phone/CdmaOptions;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 585
    iget-object v2, p0, Lcom/android/phone/CdmaOptions$MyHandler;->this$0:Lcom/android/phone/CdmaOptions;

    #getter for: Lcom/android/phone/CdmaOptions;->mButtonDataRoam:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v2}, Lcom/android/phone/CdmaOptions;->access$400(Lcom/android/phone/CdmaOptions;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 591
    .end local v1           #notifications:[I
    :cond_2
    :goto_1
    return-void

    .line 576
    .restart local v1       #notifications:[I
    :cond_3
    sget-boolean v2, Lcom/android/phone/Settings;->mUserCancelDataRoamingGuard:Z

    if-eqz v2, :cond_1

    .line 577
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/phone/Settings;->mUserCancelDataRoamingGuard:Z

    .line 578
    iget-object v2, p0, Lcom/android/phone/CdmaOptions$MyHandler;->this$0:Lcom/android/phone/CdmaOptions;

    #getter for: Lcom/android/phone/CdmaOptions;->mButtonDataRoam:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v2}, Lcom/android/phone/CdmaOptions;->access$400(Lcom/android/phone/CdmaOptions;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 579
    iget-object v2, p0, Lcom/android/phone/CdmaOptions$MyHandler;->this$0:Lcom/android/phone/CdmaOptions;

    #getter for: Lcom/android/phone/CdmaOptions;->mButtonDataRoam:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v2}, Lcom/android/phone/CdmaOptions;->access$400(Lcom/android/phone/CdmaOptions;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/CdmaOptions$MyHandler;->this$0:Lcom/android/phone/CdmaOptions;

    #getter for: Lcom/android/phone/CdmaOptions;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/phone/CdmaOptions;->access$200(Lcom/android/phone/CdmaOptions;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 588
    .end local v1           #notifications:[I
    :catch_0
    move-exception v2

    goto :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    .line 539
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 559
    :cond_0
    :goto_0
    return-void

    .line 542
    :sswitch_0
    sget-boolean v0, Lcom/android/phone/HtcFeatureList;->FEATURE_DATA_ROAM_GUARD:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/phone/HtcFeatureList;->FEATURE_DATA_ROAM_GUARD2:Z

    if-eqz v0, :cond_0

    .line 543
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/phone/CdmaOptions$MyHandler;->handleDataRoamGuardNotify(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 549
    :sswitch_1
    iget-object v0, p0, Lcom/android/phone/CdmaOptions$MyHandler;->this$0:Lcom/android/phone/CdmaOptions;

    #getter for: Lcom/android/phone/CdmaOptions;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/CdmaOptions;->access$200(Lcom/android/phone/CdmaOptions;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 550
    iget-object v0, p0, Lcom/android/phone/CdmaOptions$MyHandler;->this$0:Lcom/android/phone/CdmaOptions;

    #getter for: Lcom/android/phone/CdmaOptions;->mButtonCdmaRoam:Lcom/android/phone/CdmaRoamingListPreference;
    invoke-static {v0}, Lcom/android/phone/CdmaOptions;->access$300(Lcom/android/phone/CdmaOptions;)Lcom/android/phone/CdmaRoamingListPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/android/phone/CdmaOptions$MyHandler;->this$0:Lcom/android/phone/CdmaOptions;

    #getter for: Lcom/android/phone/CdmaOptions;->mButtonCdmaRoam:Lcom/android/phone/CdmaRoamingListPreference;
    invoke-static {v0}, Lcom/android/phone/CdmaOptions;->access$300(Lcom/android/phone/CdmaOptions;)Lcom/android/phone/CdmaRoamingListPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/CdmaRoamingListPreference;->setEnabled(Z)V

    goto :goto_0

    .line 553
    :cond_2
    iget-object v0, p0, Lcom/android/phone/CdmaOptions$MyHandler;->this$0:Lcom/android/phone/CdmaOptions;

    #getter for: Lcom/android/phone/CdmaOptions;->mButtonCdmaRoam:Lcom/android/phone/CdmaRoamingListPreference;
    invoke-static {v0}, Lcom/android/phone/CdmaOptions;->access$300(Lcom/android/phone/CdmaOptions;)Lcom/android/phone/CdmaRoamingListPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/android/phone/CdmaOptions$MyHandler;->this$0:Lcom/android/phone/CdmaOptions;

    #getter for: Lcom/android/phone/CdmaOptions;->mButtonCdmaRoam:Lcom/android/phone/CdmaRoamingListPreference;
    invoke-static {v0}, Lcom/android/phone/CdmaOptions;->access$300(Lcom/android/phone/CdmaOptions;)Lcom/android/phone/CdmaRoamingListPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/phone/CdmaRoamingListPreference;->setEnabled(Z)V

    goto :goto_0

    .line 539
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3ea -> :sswitch_1
    .end sparse-switch
.end method
