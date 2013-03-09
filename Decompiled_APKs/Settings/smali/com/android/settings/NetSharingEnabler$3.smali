.class Lcom/android/settings/NetSharingEnabler$3;
.super Landroid/os/Handler;
.source "NetSharingEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/NetSharingEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/NetSharingEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/NetSharingEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 700
    iput-object p1, p0, Lcom/android/settings/NetSharingEnabler$3;->this$0:Lcom/android/settings/NetSharingEnabler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 702
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 772
    :cond_0
    :goto_0
    return-void

    .line 705
    :pswitch_0
    sget-boolean v2, Lcom/android/settings/NetSharingEnabler;->closing:Z

    if-nez v2, :cond_1

    .line 707
    iget-object v2, p0, Lcom/android/settings/NetSharingEnabler$3;->this$0:Lcom/android/settings/NetSharingEnabler;

    #getter for: Lcom/android/settings/NetSharingEnabler;->mToggleIS:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v2}, Lcom/android/settings/NetSharingEnabler;->access$300(Lcom/android/settings/NetSharingEnabler;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 708
    iget-object v2, p0, Lcom/android/settings/NetSharingEnabler$3;->this$0:Lcom/android/settings/NetSharingEnabler;

    #getter for: Lcom/android/settings/NetSharingEnabler;->mToggleIS:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v2}, Lcom/android/settings/NetSharingEnabler;->access$300(Lcom/android/settings/NetSharingEnabler;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 710
    :cond_1
    sget-boolean v2, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_IS_TYPE:Z

    if-eqz v2, :cond_2

    .line 711
    sget-object v2, Lcom/android/settings/NetSharingTypeEnabler;->mToggleISType:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v2, v1}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 712
    :cond_2
    iget-object v1, p0, Lcom/android/settings/NetSharingEnabler$3;->this$0:Lcom/android/settings/NetSharingEnabler;

    #getter for: Lcom/android/settings/NetSharingEnabler;->mToggleIS:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v1}, Lcom/android/settings/NetSharingEnabler;->access$300(Lcom/android/settings/NetSharingEnabler;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 715
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/NetSharingEnabler$3;->this$0:Lcom/android/settings/NetSharingEnabler;

    #getter for: Lcom/android/settings/NetSharingEnabler;->mToggleIS:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v2}, Lcom/android/settings/NetSharingEnabler;->access$300(Lcom/android/settings/NetSharingEnabler;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v2

    const v3, 0x7f0c0311

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(I)V

    .line 716
    iget-object v2, p0, Lcom/android/settings/NetSharingEnabler$3;->this$0:Lcom/android/settings/NetSharingEnabler;

    #getter for: Lcom/android/settings/NetSharingEnabler;->mToggleIS:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v2}, Lcom/android/settings/NetSharingEnabler;->access$300(Lcom/android/settings/NetSharingEnabler;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 717
    iget-object v1, p0, Lcom/android/settings/NetSharingEnabler$3;->this$0:Lcom/android/settings/NetSharingEnabler;

    #getter for: Lcom/android/settings/NetSharingEnabler;->mToggleIS:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v1}, Lcom/android/settings/NetSharingEnabler;->access$300(Lcom/android/settings/NetSharingEnabler;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 720
    :pswitch_2
    sget-boolean v2, Lcom/android/settings/NSReceiver;->hasTethered:Z

    if-nez v2, :cond_4

    .line 722
    iget-object v2, p0, Lcom/android/settings/NetSharingEnabler$3;->this$0:Lcom/android/settings/NetSharingEnabler;

    #getter for: Lcom/android/settings/NetSharingEnabler;->mToggleIS:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v2}, Lcom/android/settings/NetSharingEnabler;->access$300(Lcom/android/settings/NetSharingEnabler;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v2

    const v3, 0x7f0c030e

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(I)V

    .line 723
    iget-object v2, p0, Lcom/android/settings/NetSharingEnabler$3;->this$0:Lcom/android/settings/NetSharingEnabler;

    #getter for: Lcom/android/settings/NetSharingEnabler;->mToggleIS:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v2}, Lcom/android/settings/NetSharingEnabler;->access$300(Lcom/android/settings/NetSharingEnabler;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 724
    sget-boolean v2, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_IS_TYPE:Z

    if-eqz v2, :cond_3

    .line 725
    sget-object v2, Lcom/android/settings/NetSharingTypeEnabler;->mToggleISType:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 727
    :cond_3
    sget-boolean v2, Lcom/android/settings/HtcFeatureList;->SENSE_30_SUPPORT:Z

    if-eqz v2, :cond_4

    sget-boolean v2, Lcom/android/settings/NSReceiver;->EAS_AllowIS:Z

    if-nez v2, :cond_4

    .line 729
    iget-object v2, p0, Lcom/android/settings/NetSharingEnabler$3;->this$0:Lcom/android/settings/NetSharingEnabler;

    #getter for: Lcom/android/settings/NetSharingEnabler;->mToggleIS:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v2}, Lcom/android/settings/NetSharingEnabler;->access$300(Lcom/android/settings/NetSharingEnabler;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v2

    const v3, 0x7f0c0329

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(I)V

    .line 734
    :cond_4
    sget-boolean v2, Lcom/android/settings/NetSharingEnabler;->FOR_SPRINT:Z

    if-eqz v2, :cond_5

    .line 735
    iget-object v0, p0, Lcom/android/settings/NetSharingEnabler$3;->this$0:Lcom/android/settings/NetSharingEnabler;

    #getter for: Lcom/android/settings/NetSharingEnabler;->mToggleIS:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/NetSharingEnabler;->access$300(Lcom/android/settings/NetSharingEnabler;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v0

    sget-boolean v1, Lcom/android/settings/NSReceiver;->USB:Z

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 743
    :goto_1
    const-string v0, "NetSharing"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msg_disable_ok, mobiledata ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/settings/NetSharingEnabler;->mobiledata:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " airplane = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/settings/NetSharingEnabler;->airplane:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " USB = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/settings/NSReceiver;->USB:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " wimaxenabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/settings/NetSharingEnabler;->wimaxenabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "EAS_AllowIS:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/settings/NSReceiver;->EAS_AllowIS:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 736
    :cond_5
    sget-boolean v2, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_LAN_TYPE:Z

    if-eqz v2, :cond_6

    .line 737
    iget-object v1, p0, Lcom/android/settings/NetSharingEnabler$3;->this$0:Lcom/android/settings/NetSharingEnabler;

    #getter for: Lcom/android/settings/NetSharingEnabler;->mToggleIS:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v1}, Lcom/android/settings/NetSharingEnabler;->access$300(Lcom/android/settings/NetSharingEnabler;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 738
    sget-object v1, Lcom/android/settings/ModemLinkTypeEnabler;->mToggleMLType:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto :goto_1

    .line 741
    :cond_6
    iget-object v2, p0, Lcom/android/settings/NetSharingEnabler$3;->this$0:Lcom/android/settings/NetSharingEnabler;

    #getter for: Lcom/android/settings/NetSharingEnabler;->mToggleIS:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v2}, Lcom/android/settings/NetSharingEnabler;->access$300(Lcom/android/settings/NetSharingEnabler;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v2

    invoke-static {}, Lcom/android/settings/NetSharingEnabler;->CheckThreeCondition()Z

    move-result v3

    if-eqz v3, :cond_7

    sget-boolean v3, Lcom/android/settings/NetSharingEnabler;->airplane:Z

    if-nez v3, :cond_7

    sget-boolean v3, Lcom/android/settings/NSReceiver;->USB:Z

    if-eqz v3, :cond_7

    sget-boolean v3, Lcom/android/settings/NetSharingEnabler;->closing:Z

    if-nez v3, :cond_7

    sget-boolean v3, Lcom/android/settings/NSReceiver;->EAS_AllowIS:Z

    if-eqz v3, :cond_7

    :goto_2
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    goto :goto_1

    :cond_7
    move v0, v1

    goto :goto_2

    .line 746
    :pswitch_3
    iget-object v2, p0, Lcom/android/settings/NetSharingEnabler$3;->this$0:Lcom/android/settings/NetSharingEnabler;

    #getter for: Lcom/android/settings/NetSharingEnabler;->mToggleIS:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v2}, Lcom/android/settings/NetSharingEnabler;->access$300(Lcom/android/settings/NetSharingEnabler;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v2

    const v3, 0x7f0c0312

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(I)V

    .line 747
    iget-object v2, p0, Lcom/android/settings/NetSharingEnabler$3;->this$0:Lcom/android/settings/NetSharingEnabler;

    #getter for: Lcom/android/settings/NetSharingEnabler;->mToggleIS:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v2}, Lcom/android/settings/NetSharingEnabler;->access$300(Lcom/android/settings/NetSharingEnabler;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 748
    sget-boolean v2, Lcom/android/settings/NetSharingEnabler;->FOR_SPRINT:Z

    if-nez v2, :cond_0

    .line 749
    iget-object v2, p0, Lcom/android/settings/NetSharingEnabler$3;->this$0:Lcom/android/settings/NetSharingEnabler;

    #getter for: Lcom/android/settings/NetSharingEnabler;->mToggleIS:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v2}, Lcom/android/settings/NetSharingEnabler;->access$300(Lcom/android/settings/NetSharingEnabler;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v2

    invoke-static {}, Lcom/android/settings/NetSharingEnabler;->CheckThreeCondition()Z

    move-result v3

    if-eqz v3, :cond_8

    sget-boolean v3, Lcom/android/settings/NetSharingEnabler;->airplane:Z

    if-nez v3, :cond_8

    sget-boolean v3, Lcom/android/settings/NSReceiver;->USB:Z

    if-eqz v3, :cond_8

    :goto_3
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_8
    move v0, v1

    goto :goto_3

    .line 752
    :pswitch_4
    sget-boolean v2, Lcom/android/settings/NSReceiver;->USB:Z

    if-eqz v2, :cond_9

    sget-boolean v2, Lcom/android/settings/NetSharingEnabler;->FOR_SPRINT:Z

    if-eqz v2, :cond_9

    .line 753
    iget-object v0, p0, Lcom/android/settings/NetSharingEnabler$3;->this$0:Lcom/android/settings/NetSharingEnabler;

    #getter for: Lcom/android/settings/NetSharingEnabler;->mToggleIS:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/NetSharingEnabler;->access$300(Lcom/android/settings/NetSharingEnabler;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v0

    sget-boolean v1, Lcom/android/settings/NSReceiver;->USB:Z

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 754
    :cond_9
    sget-boolean v2, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_IS_ML:Z

    if-eqz v2, :cond_b

    .line 755
    iget-object v2, p0, Lcom/android/settings/NetSharingEnabler$3;->this$0:Lcom/android/settings/NetSharingEnabler;

    #getter for: Lcom/android/settings/NetSharingEnabler;->mToggleIS:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v2}, Lcom/android/settings/NetSharingEnabler;->access$300(Lcom/android/settings/NetSharingEnabler;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v2

    sget-boolean v3, Lcom/android/settings/NSReceiver;->USB:Z

    if-eqz v3, :cond_a

    invoke-static {}, Lcom/android/settings/ModemLinkEnabler;->isMLEnabled()Z

    move-result v3

    if-nez v3, :cond_a

    :goto_4
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_a
    move v0, v1

    goto :goto_4

    .line 756
    :cond_b
    sget-boolean v2, Lcom/android/settings/NSReceiver;->USB:Z

    if-eqz v2, :cond_d

    invoke-static {}, Lcom/android/settings/NetSharingEnabler;->CheckThreeCondition()Z

    move-result v2

    if-eqz v2, :cond_d

    sget-boolean v2, Lcom/android/settings/NetSharingEnabler;->airplane:Z

    if-nez v2, :cond_d

    sget-boolean v2, Lcom/android/settings/NetSharingEnabler;->closing:Z

    if-nez v2, :cond_d

    sget-boolean v2, Lcom/android/settings/NSReceiver;->EAS_AllowIS:Z

    if-eqz v2, :cond_d

    .line 757
    iget-object v2, p0, Lcom/android/settings/NetSharingEnabler$3;->this$0:Lcom/android/settings/NetSharingEnabler;

    #getter for: Lcom/android/settings/NetSharingEnabler;->mToggleIS:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v2}, Lcom/android/settings/NetSharingEnabler;->access$300(Lcom/android/settings/NetSharingEnabler;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v2

    sget-boolean v3, Lcom/android/settings/NSReceiver;->USB:Z

    if-eqz v3, :cond_c

    sget-boolean v3, Lcom/android/settings/NSReceiver;->EAS_AllowIS:Z

    if-eqz v3, :cond_c

    :goto_5
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_c
    move v0, v1

    goto :goto_5

    .line 758
    :cond_d
    sget-boolean v2, Lcom/android/settings/NSReceiver;->USB:Z

    if-nez v2, :cond_f

    .line 761
    sget-boolean v2, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_LAN_TYPE:Z

    if-eqz v2, :cond_e

    .line 762
    iget-object v1, p0, Lcom/android/settings/NetSharingEnabler$3;->this$0:Lcom/android/settings/NetSharingEnabler;

    #getter for: Lcom/android/settings/NetSharingEnabler;->mToggleIS:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v1}, Lcom/android/settings/NetSharingEnabler;->access$300(Lcom/android/settings/NetSharingEnabler;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 764
    :cond_e
    iget-object v0, p0, Lcom/android/settings/NetSharingEnabler$3;->this$0:Lcom/android/settings/NetSharingEnabler;

    #getter for: Lcom/android/settings/NetSharingEnabler;->mToggleIS:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/NetSharingEnabler;->access$300(Lcom/android/settings/NetSharingEnabler;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 766
    :cond_f
    invoke-static {}, Lcom/android/settings/NetSharingEnabler;->CheckThreeCondition()Z

    move-result v0

    if-nez v0, :cond_10

    sget-boolean v0, Lcom/android/settings/NetSharingEnabler;->FOR_SPRINT:Z

    if-nez v0, :cond_10

    sget-boolean v0, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_LAN_TYPE:Z

    if-nez v0, :cond_10

    .line 767
    iget-object v0, p0, Lcom/android/settings/NetSharingEnabler$3;->this$0:Lcom/android/settings/NetSharingEnabler;

    #getter for: Lcom/android/settings/NetSharingEnabler;->mToggleIS:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/NetSharingEnabler;->access$300(Lcom/android/settings/NetSharingEnabler;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 768
    :cond_10
    sget-boolean v0, Lcom/android/settings/NetSharingEnabler;->airplane:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/settings/NetSharingEnabler;->FOR_SPRINT:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_LAN_TYPE:Z

    if-nez v0, :cond_0

    .line 769
    iget-object v0, p0, Lcom/android/settings/NetSharingEnabler$3;->this$0:Lcom/android/settings/NetSharingEnabler;

    #getter for: Lcom/android/settings/NetSharingEnabler;->mToggleIS:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/NetSharingEnabler;->access$300(Lcom/android/settings/NetSharingEnabler;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/NetSharingEnabler;->CheckThreeCondition()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 702
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
