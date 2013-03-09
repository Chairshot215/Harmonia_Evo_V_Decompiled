.class Lcom/android/CSDFunctionG/flashlight$3;
.super Landroid/os/Handler;
.source "flashlight.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/CSDFunctionG/flashlight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/CSDFunctionG/flashlight;


# direct methods
.method constructor <init>(Lcom/android/CSDFunctionG/flashlight;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/CSDFunctionG/flashlight$3;->this$0:Lcom/android/CSDFunctionG/flashlight;

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

    .line 148
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 160
    :goto_0
    return-void

    .line 150
    :pswitch_0
    iget-object v0, p0, Lcom/android/CSDFunctionG/flashlight$3;->this$0:Lcom/android/CSDFunctionG/flashlight;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/CSDFunctionG/flashlight;->PassorFail(I)V

    .line 151
    iget-object v0, p0, Lcom/android/CSDFunctionG/flashlight$3;->this$0:Lcom/android/CSDFunctionG/flashlight;

    #getter for: Lcom/android/CSDFunctionG/flashlight;->mbuttonflashlight:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/CSDFunctionG/flashlight;->access$000(Lcom/android/CSDFunctionG/flashlight;)Landroid/widget/Button;

    move-result-object v0

    const-string v1, "off"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v0, p0, Lcom/android/CSDFunctionG/flashlight$3;->this$0:Lcom/android/CSDFunctionG/flashlight;

    #getter for: Lcom/android/CSDFunctionG/flashlight;->mbuttonflashlight:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/CSDFunctionG/flashlight;->access$000(Lcom/android/CSDFunctionG/flashlight;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcom/android/CSDFunctionG/flashlight$3;->this$0:Lcom/android/CSDFunctionG/flashlight;

    #getter for: Lcom/android/CSDFunctionG/flashlight;->mbuttonflashlight:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/CSDFunctionG/flashlight;->access$000(Lcom/android/CSDFunctionG/flashlight;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 156
    :pswitch_1
    iget-object v0, p0, Lcom/android/CSDFunctionG/flashlight$3;->this$0:Lcom/android/CSDFunctionG/flashlight;

    invoke-virtual {v0, v2}, Lcom/android/CSDFunctionG/flashlight;->PassorFail(I)V

    .line 157
    iget-object v0, p0, Lcom/android/CSDFunctionG/flashlight$3;->this$0:Lcom/android/CSDFunctionG/flashlight;

    #getter for: Lcom/android/CSDFunctionG/flashlight;->mbuttonflashlight:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/CSDFunctionG/flashlight;->access$000(Lcom/android/CSDFunctionG/flashlight;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 148
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
