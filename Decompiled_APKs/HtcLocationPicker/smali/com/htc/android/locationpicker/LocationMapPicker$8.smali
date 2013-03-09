.class Lcom/htc/android/locationpicker/LocationMapPicker$8;
.super Landroid/os/Handler;
.source "LocationMapPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/locationpicker/LocationMapPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/locationpicker/LocationMapPicker;


# direct methods
.method constructor <init>(Lcom/htc/android/locationpicker/LocationMapPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 730
    iput-object p1, p0, Lcom/htc/android/locationpicker/LocationMapPicker$8;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "message"

    .prologue
    const/4 v2, 0x0

    .line 733
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 764
    :cond_0
    :goto_0
    return-void

    .line 735
    :pswitch_0
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker$8;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #calls: Lcom/htc/android/locationpicker/LocationMapPicker;->init()V
    invoke-static {v0}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$1100(Lcom/htc/android/locationpicker/LocationMapPicker;)V

    goto :goto_0

    .line 739
    :pswitch_1
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker$8;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #setter for: Lcom/htc/android/locationpicker/LocationMapPicker;->isMapFling:Z
    invoke-static {v0, v2}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$1202(Lcom/htc/android/locationpicker/LocationMapPicker;Z)Z

    .line 741
    const-string v0, "LocationMapPicker"

    const-string v1, "HANDLER_AFTER_FLING"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker$8;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #calls: Lcom/htc/android/locationpicker/LocationMapPicker;->getAndUpdateAddress()V
    invoke-static {v0}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$1300(Lcom/htc/android/locationpicker/LocationMapPicker;)V

    goto :goto_0

    .line 748
    :pswitch_2
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker$8;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #setter for: Lcom/htc/android/locationpicker/LocationMapPicker;->isMapMoving:Z
    invoke-static {v0, v2}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$1402(Lcom/htc/android/locationpicker/LocationMapPicker;Z)Z

    .line 751
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker$8;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #calls: Lcom/htc/android/locationpicker/LocationMapPicker;->getAndUpdateAddress()V
    invoke-static {v0}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$1300(Lcom/htc/android/locationpicker/LocationMapPicker;)V

    goto :goto_0

    .line 756
    :pswitch_3
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker$8;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->mAddressView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$1500(Lcom/htc/android/locationpicker/LocationMapPicker;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 758
    iget-object v1, p0, Lcom/htc/android/locationpicker/LocationMapPicker$8;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    #setter for: Lcom/htc/android/locationpicker/LocationMapPicker;->mAddressString:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$902(Lcom/htc/android/locationpicker/LocationMapPicker;Ljava/lang/String;)Ljava/lang/String;

    .line 759
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker$8;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->mAddressView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$1500(Lcom/htc/android/locationpicker/LocationMapPicker;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/locationpicker/LocationMapPicker$8;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->mAddressString:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$900(Lcom/htc/android/locationpicker/LocationMapPicker;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 760
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker$8;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->mAddressBarLayout:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$1600(Lcom/htc/android/locationpicker/LocationMapPicker;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 733
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
