.class Lcom/android/CSDFunctionG/backlighttest$3;
.super Landroid/os/Handler;
.source "backlighttest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/CSDFunctionG/backlighttest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/CSDFunctionG/backlighttest;


# direct methods
.method constructor <init>(Lcom/android/CSDFunctionG/backlighttest;)V
    .locals 0
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/CSDFunctionG/backlighttest$3;->this$0:Lcom/android/CSDFunctionG/backlighttest;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 168
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 178
    :goto_0
    return-void

    .line 170
    :pswitch_0
    iget-object v0, p0, Lcom/android/CSDFunctionG/backlighttest$3;->this$0:Lcom/android/CSDFunctionG/backlighttest;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/CSDFunctionG/backlighttest;->PassorFail(I)V

    .line 171
    iget-object v0, p0, Lcom/android/CSDFunctionG/backlighttest$3;->this$0:Lcom/android/CSDFunctionG/backlighttest;

    #getter for: Lcom/android/CSDFunctionG/backlighttest;->mBTN_Backlight_Off:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/CSDFunctionG/backlighttest;->access$100(Lcom/android/CSDFunctionG/backlighttest;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 172
    iget-object v0, p0, Lcom/android/CSDFunctionG/backlighttest$3;->this$0:Lcom/android/CSDFunctionG/backlighttest;

    #getter for: Lcom/android/CSDFunctionG/backlighttest;->mBTN_Backlight_Off:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/CSDFunctionG/backlighttest;->access$100(Lcom/android/CSDFunctionG/backlighttest;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 175
    :pswitch_1
    iget-object v0, p0, Lcom/android/CSDFunctionG/backlighttest$3;->this$0:Lcom/android/CSDFunctionG/backlighttest;

    invoke-virtual {v0, v2}, Lcom/android/CSDFunctionG/backlighttest;->PassorFail(I)V

    .line 176
    iget-object v0, p0, Lcom/android/CSDFunctionG/backlighttest$3;->this$0:Lcom/android/CSDFunctionG/backlighttest;

    #getter for: Lcom/android/CSDFunctionG/backlighttest;->mBTN_Backlight_On:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/CSDFunctionG/backlighttest;->access$000(Lcom/android/CSDFunctionG/backlighttest;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 168
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
