.class Lcom/android/settings/IPTEnabler$1;
.super Landroid/os/Handler;
.source "IPTEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/IPTEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/IPTEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/IPTEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/settings/IPTEnabler$1;->this$0:Lcom/android/settings/IPTEnabler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f0c04fc

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 47
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 93
    :goto_0
    return-void

    .line 49
    :pswitch_0
    sget-boolean v0, Lcom/android/settings/PSReceiver;->IPTConnPass:Z

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/android/settings/IPTEnabler$1;->this$0:Lcom/android/settings/IPTEnabler;

    #getter for: Lcom/android/settings/IPTEnabler;->mToggleIPT:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/IPTEnabler;->access$000(Lcom/android/settings/IPTEnabler;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v0, p0, Lcom/android/settings/IPTEnabler$1;->this$0:Lcom/android/settings/IPTEnabler;

    #getter for: Lcom/android/settings/IPTEnabler;->mToggleIPT:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/IPTEnabler;->access$000(Lcom/android/settings/IPTEnabler;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 53
    iget-object v0, p0, Lcom/android/settings/IPTEnabler$1;->this$0:Lcom/android/settings/IPTEnabler;

    #getter for: Lcom/android/settings/IPTEnabler;->mToggleIPT:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/IPTEnabler;->access$000(Lcom/android/settings/IPTEnabler;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/android/settings/IPTEnabler$1;->this$0:Lcom/android/settings/IPTEnabler;

    #getter for: Lcom/android/settings/IPTEnabler;->mToggleIPT:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/IPTEnabler;->access$000(Lcom/android/settings/IPTEnabler;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(I)V

    .line 57
    iget-object v0, p0, Lcom/android/settings/IPTEnabler$1;->this$0:Lcom/android/settings/IPTEnabler;

    #getter for: Lcom/android/settings/IPTEnabler;->mToggleIPT:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/IPTEnabler;->access$000(Lcom/android/settings/IPTEnabler;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 58
    iget-object v0, p0, Lcom/android/settings/IPTEnabler$1;->this$0:Lcom/android/settings/IPTEnabler;

    #getter for: Lcom/android/settings/IPTEnabler;->mToggleIPT:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/IPTEnabler;->access$000(Lcom/android/settings/IPTEnabler;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 62
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/IPTEnabler$1;->this$0:Lcom/android/settings/IPTEnabler;

    #getter for: Lcom/android/settings/IPTEnabler;->mToggleIPT:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/IPTEnabler;->access$000(Lcom/android/settings/IPTEnabler;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(I)V

    .line 63
    iget-object v0, p0, Lcom/android/settings/IPTEnabler$1;->this$0:Lcom/android/settings/IPTEnabler;

    #getter for: Lcom/android/settings/IPTEnabler;->mToggleIPT:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/IPTEnabler;->access$000(Lcom/android/settings/IPTEnabler;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 64
    iget-object v0, p0, Lcom/android/settings/IPTEnabler$1;->this$0:Lcom/android/settings/IPTEnabler;

    #getter for: Lcom/android/settings/IPTEnabler;->mToggleIPT:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/IPTEnabler;->access$000(Lcom/android/settings/IPTEnabler;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 67
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/IPTEnabler$1;->this$0:Lcom/android/settings/IPTEnabler;

    #getter for: Lcom/android/settings/IPTEnabler;->mToggleIPT:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/IPTEnabler;->access$000(Lcom/android/settings/IPTEnabler;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(I)V

    .line 68
    iget-object v0, p0, Lcom/android/settings/IPTEnabler$1;->this$0:Lcom/android/settings/IPTEnabler;

    #getter for: Lcom/android/settings/IPTEnabler;->mToggleIPT:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/IPTEnabler;->access$000(Lcom/android/settings/IPTEnabler;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 69
    iget-object v0, p0, Lcom/android/settings/IPTEnabler$1;->this$0:Lcom/android/settings/IPTEnabler;

    #getter for: Lcom/android/settings/IPTEnabler;->mToggleIPT:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/IPTEnabler;->access$000(Lcom/android/settings/IPTEnabler;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 72
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/IPTEnabler$1;->this$0:Lcom/android/settings/IPTEnabler;

    #getter for: Lcom/android/settings/IPTEnabler;->mToggleIPT:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/IPTEnabler;->access$000(Lcom/android/settings/IPTEnabler;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v0, p0, Lcom/android/settings/IPTEnabler$1;->this$0:Lcom/android/settings/IPTEnabler;

    #getter for: Lcom/android/settings/IPTEnabler;->mToggleIPT:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/IPTEnabler;->access$000(Lcom/android/settings/IPTEnabler;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 74
    iget-object v0, p0, Lcom/android/settings/IPTEnabler$1;->this$0:Lcom/android/settings/IPTEnabler;

    #getter for: Lcom/android/settings/IPTEnabler;->mToggleIPT:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/IPTEnabler;->access$000(Lcom/android/settings/IPTEnabler;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 78
    :pswitch_4
    invoke-static {}, Lcom/android/settings/PSReceiver;->isUsbConnected()Z

    move-result v0

    if-ne v0, v1, :cond_1

    .line 79
    iget-object v0, p0, Lcom/android/settings/IPTEnabler$1;->this$0:Lcom/android/settings/IPTEnabler;

    #getter for: Lcom/android/settings/IPTEnabler;->mToggleIPT:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/IPTEnabler;->access$000(Lcom/android/settings/IPTEnabler;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(I)V

    .line 80
    iget-object v0, p0, Lcom/android/settings/IPTEnabler$1;->this$0:Lcom/android/settings/IPTEnabler;

    #getter for: Lcom/android/settings/IPTEnabler;->mToggleIPT:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/IPTEnabler;->access$000(Lcom/android/settings/IPTEnabler;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 81
    iget-object v0, p0, Lcom/android/settings/IPTEnabler$1;->this$0:Lcom/android/settings/IPTEnabler;

    #getter for: Lcom/android/settings/IPTEnabler;->mToggleIPT:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/IPTEnabler;->access$000(Lcom/android/settings/IPTEnabler;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/android/settings/IPTEnabler$1;->this$0:Lcom/android/settings/IPTEnabler;

    #getter for: Lcom/android/settings/IPTEnabler;->mToggleIPT:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/IPTEnabler;->access$000(Lcom/android/settings/IPTEnabler;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(I)V

    .line 84
    iget-object v0, p0, Lcom/android/settings/IPTEnabler$1;->this$0:Lcom/android/settings/IPTEnabler;

    #getter for: Lcom/android/settings/IPTEnabler;->mToggleIPT:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/IPTEnabler;->access$000(Lcom/android/settings/IPTEnabler;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 85
    iget-object v0, p0, Lcom/android/settings/IPTEnabler$1;->this$0:Lcom/android/settings/IPTEnabler;

    #getter for: Lcom/android/settings/IPTEnabler;->mToggleIPT:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/IPTEnabler;->access$000(Lcom/android/settings/IPTEnabler;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 88
    :pswitch_5
    iget-object v0, p0, Lcom/android/settings/IPTEnabler$1;->this$0:Lcom/android/settings/IPTEnabler;

    #getter for: Lcom/android/settings/IPTEnabler;->mToggleIPT:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/IPTEnabler;->access$000(Lcom/android/settings/IPTEnabler;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v0

    const v1, 0x7f0c030f

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(I)V

    .line 89
    iget-object v0, p0, Lcom/android/settings/IPTEnabler$1;->this$0:Lcom/android/settings/IPTEnabler;

    #getter for: Lcom/android/settings/IPTEnabler;->mToggleIPT:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/IPTEnabler;->access$000(Lcom/android/settings/IPTEnabler;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 90
    iget-object v0, p0, Lcom/android/settings/IPTEnabler$1;->this$0:Lcom/android/settings/IPTEnabler;

    #getter for: Lcom/android/settings/IPTEnabler;->mToggleIPT:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/IPTEnabler;->access$000(Lcom/android/settings/IPTEnabler;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 47
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
