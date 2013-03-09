.class Lcom/android/phone/BluetoothHandsfree$20;
.super Landroid/bluetooth/AtCommandHandler;
.source "BluetoothHandsfree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/BluetoothHandsfree;->initializeHandsfreeAtParser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BluetoothHandsfree;

.field final synthetic val$phone:Lcom/android/internal/telephony/Phone;


# direct methods
.method constructor <init>(Lcom/android/phone/BluetoothHandsfree;Lcom/android/internal/telephony/Phone;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3627
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$20;->this$0:Lcom/android/phone/BluetoothHandsfree;

    iput-object p2, p0, Lcom/android/phone/BluetoothHandsfree$20;->val$phone:Lcom/android/internal/telephony/Phone;

    invoke-direct {p0}, Landroid/bluetooth/AtCommandHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleActionCommand()Landroid/bluetooth/AtCommandResult;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 3630
    const-string v4, "Bluetooth HS/HF"

    const-string v5, "+CLCC"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3631
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$20;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mFakeCall:I
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$1600(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$20;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mFakeCallsetup:I
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$1300(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v4

    if-eqz v4, :cond_1

    .line 3632
    :cond_0
    const-string v4, "Bluetooth HS/HF"

    const-string v5, "Faked call, send CLCC with dummy content"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3633
    new-instance v3, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v3, v6}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 3634
    .local v3, result:Landroid/bluetooth/AtCommandResult;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+CLCC: 1,0,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$20;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mFakeCallsetup:I
    invoke-static {v5}, Lcom/android/phone/BluetoothHandsfree;->access$1300(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",0,0,\"0000000000\",129"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 3659
    .end local v3           #result:Landroid/bluetooth/AtCommandResult;
    :goto_0
    return-object v3

    .line 3638
    :cond_1
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$20;->val$phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    .line 3641
    .local v2, phoneType:I
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$20;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->isVirtualCallInProgress()Z
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$5300(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3642
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$20;->val$phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 3643
    .local v1, number:Ljava/lang/String;
    new-instance v3, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v3, v6}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 3645
    .restart local v3       #result:Landroid/bluetooth/AtCommandResult;
    if-nez v1, :cond_2

    .line 3646
    const-string v0, "+CLCC: 1,0,0,0,0,\"\",0"

    .line 3653
    .local v0, args:Ljava/lang/String;
    :goto_1
    invoke-virtual {v3, v0}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    goto :goto_0

    .line 3650
    .end local v0           #args:Ljava/lang/String;
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+CLCC: 1,0,0,0,0,\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #args:Ljava/lang/String;
    goto :goto_1

    .line 3656
    .end local v0           #args:Ljava/lang/String;
    .end local v1           #number:Ljava/lang/String;
    .end local v3           #result:Landroid/bluetooth/AtCommandResult;
    :cond_3
    const/4 v4, 0x2

    if-ne v2, v4, :cond_4

    .line 3657
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$20;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->cdmaGetClccResult()Landroid/bluetooth/AtCommandResult;
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$9400(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/AtCommandResult;

    move-result-object v3

    goto :goto_0

    .line 3658
    :cond_4
    const/4 v4, 0x1

    if-ne v2, v4, :cond_5

    .line 3659
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$20;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->gsmGetClccResult()Landroid/bluetooth/AtCommandResult;
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$9500(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/AtCommandResult;

    move-result-object v3

    goto :goto_0

    .line 3661
    :cond_5
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected phone type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
