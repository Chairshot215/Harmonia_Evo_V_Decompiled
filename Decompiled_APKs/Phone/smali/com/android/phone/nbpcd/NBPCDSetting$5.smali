.class Lcom/android/phone/nbpcd/NBPCDSetting$5;
.super Landroid/os/Handler;
.source "NBPCDSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/nbpcd/NBPCDSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/nbpcd/NBPCDSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/nbpcd/NBPCDSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 748
    iput-object p1, p0, Lcom/android/phone/nbpcd/NBPCDSetting$5;->this$0:Lcom/android/phone/nbpcd/NBPCDSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 751
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 752
    .local v1, requestCode:I
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 753
    .local v2, resultCode:I
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_0

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/content/Intent;

    move-object v0, v3

    .line 754
    .local v0, intent:Landroid/content/Intent;
    :goto_0
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 769
    :goto_1
    :pswitch_0
    return-void

    .line 753
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 756
    .restart local v0       #intent:Landroid/content/Intent;
    :pswitch_1
    iget-object v3, p0, Lcom/android/phone/nbpcd/NBPCDSetting$5;->this$0:Lcom/android/phone/nbpcd/NBPCDSetting;

    #calls: Lcom/android/phone/nbpcd/NBPCDSetting;->handleAddIDD(IILandroid/content/Intent;)V
    invoke-static {v3, v1, v2, v0}, Lcom/android/phone/nbpcd/NBPCDSetting;->access$900(Lcom/android/phone/nbpcd/NBPCDSetting;IILandroid/content/Intent;)V

    goto :goto_1

    .line 759
    :pswitch_2
    iget-object v3, p0, Lcom/android/phone/nbpcd/NBPCDSetting$5;->this$0:Lcom/android/phone/nbpcd/NBPCDSetting;

    #calls: Lcom/android/phone/nbpcd/NBPCDSetting;->handleAddCountry(IILandroid/content/Intent;)V
    invoke-static {v3, v1, v2, v0}, Lcom/android/phone/nbpcd/NBPCDSetting;->access$1000(Lcom/android/phone/nbpcd/NBPCDSetting;IILandroid/content/Intent;)V

    goto :goto_1

    .line 762
    :pswitch_3
    iget-object v3, p0, Lcom/android/phone/nbpcd/NBPCDSetting$5;->this$0:Lcom/android/phone/nbpcd/NBPCDSetting;

    #calls: Lcom/android/phone/nbpcd/NBPCDSetting;->handleEditCountry(IILandroid/content/Intent;)V
    invoke-static {v3, v1, v2, v0}, Lcom/android/phone/nbpcd/NBPCDSetting;->access$1100(Lcom/android/phone/nbpcd/NBPCDSetting;IILandroid/content/Intent;)V

    goto :goto_1

    .line 765
    :pswitch_4
    iget-object v3, p0, Lcom/android/phone/nbpcd/NBPCDSetting$5;->this$0:Lcom/android/phone/nbpcd/NBPCDSetting;

    #calls: Lcom/android/phone/nbpcd/NBPCDSetting;->handleEditIDD(IILandroid/content/Intent;)V
    invoke-static {v3, v1, v2, v0}, Lcom/android/phone/nbpcd/NBPCDSetting;->access$1200(Lcom/android/phone/nbpcd/NBPCDSetting;IILandroid/content/Intent;)V

    goto :goto_1

    .line 754
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
