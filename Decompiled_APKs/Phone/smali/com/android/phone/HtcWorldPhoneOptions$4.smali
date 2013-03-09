.class Lcom/android/phone/HtcWorldPhoneOptions$4;
.super Ljava/lang/Object;
.source "HtcWorldPhoneOptions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/HtcWorldPhoneOptions;->optionsOfGsmNetworkMode(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/HtcWorldPhoneOptions;

.field final synthetic val$currentNetworkType:I


# direct methods
.method constructor <init>(Lcom/android/phone/HtcWorldPhoneOptions;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 903
    iput-object p1, p0, Lcom/android/phone/HtcWorldPhoneOptions$4;->this$0:Lcom/android/phone/HtcWorldPhoneOptions;

    iput p2, p0, Lcom/android/phone/HtcWorldPhoneOptions$4;->val$currentNetworkType:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v6, 0x3

    .line 907
    const-string v2, "phone/settings_HtcWorldPhoneOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Select GSM Network Mode by ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    const/4 v0, 0x3

    .line 911
    .local v0, gsmNetworkMode:I
    packed-switch p2, :pswitch_data_0

    .line 931
    :goto_0
    iget v2, p0, Lcom/android/phone/HtcWorldPhoneOptions$4;->val$currentNetworkType:I

    if-ne v0, v2, :cond_0

    .line 932
    const-string v2, "phone/settings_HtcWorldPhoneOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OoO No Need to change Mode to ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 954
    :goto_1
    return-void

    .line 914
    :pswitch_0
    const/4 v0, 0x3

    .line 915
    goto :goto_0

    .line 917
    :pswitch_1
    const/4 v0, 0x1

    .line 918
    goto :goto_0

    .line 920
    :pswitch_2
    const/4 v0, 0x2

    .line 921
    goto :goto_0

    .line 926
    :pswitch_3
    const/16 v0, 0x9

    goto :goto_0

    .line 937
    :cond_0
    iget-object v2, p0, Lcom/android/phone/HtcWorldPhoneOptions$4;->this$0:Lcom/android/phone/HtcWorldPhoneOptions;

    #calls: Lcom/android/phone/HtcWorldPhoneOptions;->UpdatePreferredNetworkModeSummary(I)V
    invoke-static {v2, v6}, Lcom/android/phone/HtcWorldPhoneOptions;->access$1200(Lcom/android/phone/HtcWorldPhoneOptions;I)V

    .line 939
    iget-object v2, p0, Lcom/android/phone/HtcWorldPhoneOptions$4;->this$0:Lcom/android/phone/HtcWorldPhoneOptions;

    #getter for: Lcom/android/phone/HtcWorldPhoneOptions;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/phone/HtcWorldPhoneOptions;->access$500(Lcom/android/phone/HtcWorldPhoneOptions;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_network_mode"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 943
    iget-object v2, p0, Lcom/android/phone/HtcWorldPhoneOptions$4;->this$0:Lcom/android/phone/HtcWorldPhoneOptions;

    #getter for: Lcom/android/phone/HtcWorldPhoneOptions;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/phone/HtcWorldPhoneOptions;->access$500(Lcom/android/phone/HtcWorldPhoneOptions;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/HtcWorldPhoneOptions$4;->this$0:Lcom/android/phone/HtcWorldPhoneOptions;

    #getter for: Lcom/android/phone/HtcWorldPhoneOptions;->mHandlerForModeOperation:Lcom/android/phone/HtcWorldPhoneOptions$HandlerForModeOperation;
    invoke-static {v3}, Lcom/android/phone/HtcWorldPhoneOptions;->access$400(Lcom/android/phone/HtcWorldPhoneOptions;)Lcom/android/phone/HtcWorldPhoneOptions$HandlerForModeOperation;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/phone/HtcWorldPhoneOptions$HandlerForModeOperation;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 946
    iget-object v2, p0, Lcom/android/phone/HtcWorldPhoneOptions$4;->this$0:Lcom/android/phone/HtcWorldPhoneOptions;

    #getter for: Lcom/android/phone/HtcWorldPhoneOptions;->mHandlerForModeOperation:Lcom/android/phone/HtcWorldPhoneOptions$HandlerForModeOperation;
    invoke-static {v2}, Lcom/android/phone/HtcWorldPhoneOptions;->access$400(Lcom/android/phone/HtcWorldPhoneOptions;)Lcom/android/phone/HtcWorldPhoneOptions$HandlerForModeOperation;

    move-result-object v2

    const/16 v3, 0xa

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/phone/HtcWorldPhoneOptions$HandlerForModeOperation;->sendEmptyMessageDelayed(IJ)Z

    .line 949
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 951
    invoke-static {}, Lcom/android/phone/WorldPhoneModeSelection;->getInstance()Lcom/android/phone/WorldPhoneModeSelection;

    move-result-object v1

    .line 952
    .local v1, modeSelection:Lcom/android/phone/WorldPhoneModeSelection;
    invoke-virtual {v1, v6}, Lcom/android/phone/WorldPhoneModeSelection;->saveLastUserMode(I)V

    .line 953
    invoke-virtual {v1}, Lcom/android/phone/WorldPhoneModeSelection;->checkSimIssue()V

    goto :goto_1

    .line 911
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
