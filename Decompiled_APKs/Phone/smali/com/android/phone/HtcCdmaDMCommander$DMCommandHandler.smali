.class Lcom/android/phone/HtcCdmaDMCommander$DMCommandHandler;
.super Landroid/os/Handler;
.source "HtcCdmaDMCommander.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/HtcCdmaDMCommander;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DMCommandHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/HtcCdmaDMCommander;


# direct methods
.method constructor <init>(Lcom/android/phone/HtcCdmaDMCommander;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/phone/HtcCdmaDMCommander$DMCommandHandler;->this$0:Lcom/android/phone/HtcCdmaDMCommander;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    .line 82
    const-string v4, "HtcCdmaDMCommander"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleMessage:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/phone/HtcCdmaDMCommander;->EVENT_RESPONSE_MAPPING:[Ljava/lang/String;

    iget v7, p1, Landroid/os/Message;->what:I

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 125
    :goto_0
    return-void

    .line 86
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 87
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/String;

    move-object v3, v4

    check-cast v3, [Ljava/lang/String;

    .line 88
    .local v3, results:[Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 90
    aget-object v4, v3, v8

    const-string v5, " "

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ":|\\r"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v8

    sput-object v4, Lcom/android/phone/HtcCdmaDMCommander;->MSLcode:Ljava/lang/String;

    .line 91
    const-string v4, "HtcCdmaDMCommander"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSLcode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/phone/HtcCdmaDMCommander;->MSLcode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_0
    sget-object v4, Lcom/android/phone/HtcCdmaDMCommander;->MSLcode:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/phone/HtcCdmaUtility;->doASCIIToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 94
    .local v2, commandToString:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "C841"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, command:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/phone/HtcCdmaDMCommander$DMCommandHandler;->this$0:Lcom/android/phone/HtcCdmaDMCommander;

    const/4 v5, 0x2

    invoke-virtual {v4, v1, v5}, Lcom/android/phone/HtcCdmaDMCommander;->sendCmd(Ljava/lang/String;I)V

    goto :goto_0

    .line 98
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v1           #command:Ljava/lang/String;
    .end local v2           #commandToString:Ljava/lang/String;
    .end local v3           #results:[Ljava/lang/String;
    :pswitch_1
    const-string v4, "HtcCdmaDMCommander"

    const-string v5, "Digital offline"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v4, p0, Lcom/android/phone/HtcCdmaDMCommander$DMCommandHandler;->this$0:Lcom/android/phone/HtcCdmaDMCommander;

    const-string v5, "C8290100"

    const/4 v6, 0x4

    invoke-virtual {v4, v5, v6}, Lcom/android/phone/HtcCdmaDMCommander;->sendCmd(Ljava/lang/String;I)V

    goto :goto_0

    .line 103
    :pswitch_2
    iget-object v4, p0, Lcom/android/phone/HtcCdmaDMCommander$DMCommandHandler;->this$0:Lcom/android/phone/HtcCdmaDMCommander;

    sget-object v5, Lcom/android/phone/HtcCdmaDMCommander;->PRLW_Commands:[Ljava/lang/String;

    sget v6, Lcom/android/phone/HtcCdmaDMCommander;->PRLW_Commands_idx:I

    aget-object v5, v5, v6

    invoke-virtual {v4, v5, v9}, Lcom/android/phone/HtcCdmaDMCommander;->sendCmd(Ljava/lang/String;I)V

    goto :goto_0

    .line 106
    :pswitch_3
    sget v4, Lcom/android/phone/HtcCdmaDMCommander;->PRLW_Commands_idx:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/android/phone/HtcCdmaDMCommander;->PRLW_Commands_idx:I

    .line 107
    sget v4, Lcom/android/phone/HtcCdmaDMCommander;->PRLW_Commands_idx:I

    sget-object v5, Lcom/android/phone/HtcCdmaDMCommander;->PRLW_Commands:[Ljava/lang/String;

    array-length v5, v5

    if-ne v4, v5, :cond_1

    .line 109
    const/4 v4, 0x0

    sput v4, Lcom/android/phone/HtcCdmaDMCommander;->PRLW_Commands_idx:I

    .line 111
    const-string v4, "HtcCdmaDMCommander"

    const-string v5, "RadioReset"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v4, p0, Lcom/android/phone/HtcCdmaDMCommander$DMCommandHandler;->this$0:Lcom/android/phone/HtcCdmaDMCommander;

    const-string v5, "C8290200"

    const/4 v6, 0x5

    invoke-virtual {v4, v5, v6}, Lcom/android/phone/HtcCdmaDMCommander;->sendCmd(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 117
    :cond_1
    iget-object v4, p0, Lcom/android/phone/HtcCdmaDMCommander$DMCommandHandler;->this$0:Lcom/android/phone/HtcCdmaDMCommander;

    sget-object v5, Lcom/android/phone/HtcCdmaDMCommander;->PRLW_Commands:[Ljava/lang/String;

    sget v6, Lcom/android/phone/HtcCdmaDMCommander;->PRLW_Commands_idx:I

    aget-object v5, v5, v6

    invoke-virtual {v4, v5, v9}, Lcom/android/phone/HtcCdmaDMCommander;->sendCmd(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 121
    :pswitch_4
    iget-object v4, p0, Lcom/android/phone/HtcCdmaDMCommander$DMCommandHandler;->this$0:Lcom/android/phone/HtcCdmaDMCommander;

    iget-object v4, v4, Lcom/android/phone/HtcCdmaDMCommander;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string v6, "APP_REQUEST_REFRESH_PHONE_INFO"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method
