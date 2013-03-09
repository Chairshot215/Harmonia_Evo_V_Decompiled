.class Lcom/htc/android/locationpicker/PickerMain$2;
.super Landroid/os/Handler;
.source "PickerMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/locationpicker/PickerMain;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/locationpicker/PickerMain;


# direct methods
.method constructor <init>(Lcom/htc/android/locationpicker/PickerMain;)V
    .locals 0
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Lcom/htc/android/locationpicker/PickerMain$2;->this$0:Lcom/htc/android/locationpicker/PickerMain;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 213
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 222
    :goto_0
    return-void

    .line 215
    :pswitch_0
    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerMain$2;->this$0:Lcom/htc/android/locationpicker/PickerMain;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/htc/android/locationpicker/PickerMain;->dismissDialog(I)V

    goto :goto_0

    .line 218
    :pswitch_1
    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerMain$2;->this$0:Lcom/htc/android/locationpicker/PickerMain;

    const/16 v1, 0xa

    #setter for: Lcom/htc/android/locationpicker/PickerMain;->mState:I
    invoke-static {v0, v1}, Lcom/htc/android/locationpicker/PickerMain;->access$102(Lcom/htc/android/locationpicker/PickerMain;I)I

    .line 219
    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerMain$2;->this$0:Lcom/htc/android/locationpicker/PickerMain;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/android/locationpicker/PickerMain;->showDialog(I)V

    goto :goto_0

    .line 213
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
