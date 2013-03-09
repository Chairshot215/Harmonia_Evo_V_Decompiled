.class Lcom/android/CSDFunctionG/ledtest$1;
.super Landroid/os/Handler;
.source "ledtest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/CSDFunctionG/ledtest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/CSDFunctionG/ledtest;


# direct methods
.method constructor <init>(Lcom/android/CSDFunctionG/ledtest;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/CSDFunctionG/ledtest$1;->this$0:Lcom/android/CSDFunctionG/ledtest;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x3

    const/4 v1, 0x2

    .line 94
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 96
    :pswitch_0
    iget-object v0, p0, Lcom/android/CSDFunctionG/ledtest$1;->this$0:Lcom/android/CSDFunctionG/ledtest;

    invoke-virtual {v0}, Lcom/android/CSDFunctionG/ledtest;->PassorFail()V

    goto :goto_0

    .line 99
    :pswitch_1
    iget-object v0, p0, Lcom/android/CSDFunctionG/ledtest$1;->this$0:Lcom/android/CSDFunctionG/ledtest;

    #getter for: Lcom/android/CSDFunctionG/ledtest;->mbutton_LED:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/CSDFunctionG/ledtest;->access$000(Lcom/android/CSDFunctionG/ledtest;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 100
    iget-object v0, p0, Lcom/android/CSDFunctionG/ledtest$1;->this$0:Lcom/android/CSDFunctionG/ledtest;

    #getter for: Lcom/android/CSDFunctionG/ledtest;->mode:I
    invoke-static {v0}, Lcom/android/CSDFunctionG/ledtest;->access$100(Lcom/android/CSDFunctionG/ledtest;)I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 102
    iget-object v0, p0, Lcom/android/CSDFunctionG/ledtest$1;->this$0:Lcom/android/CSDFunctionG/ledtest;

    #setter for: Lcom/android/CSDFunctionG/ledtest;->mode:I
    invoke-static {v0, v1}, Lcom/android/CSDFunctionG/ledtest;->access$102(Lcom/android/CSDFunctionG/ledtest;I)I

    .line 103
    iget-object v0, p0, Lcom/android/CSDFunctionG/ledtest$1;->this$0:Lcom/android/CSDFunctionG/ledtest;

    #getter for: Lcom/android/CSDFunctionG/ledtest;->g_mPressedTestBtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/CSDFunctionG/ledtest;->access$200(Lcom/android/CSDFunctionG/ledtest;)Landroid/widget/Button;

    move-result-object v0

    invoke-static {v1}, Lcom/android/CSDFunctionG/GSD_DLL;->get_LEDTestString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/android/CSDFunctionG/ledtest$1;->this$0:Lcom/android/CSDFunctionG/ledtest;

    #getter for: Lcom/android/CSDFunctionG/ledtest;->mode:I
    invoke-static {v0}, Lcom/android/CSDFunctionG/ledtest;->access$100(Lcom/android/CSDFunctionG/ledtest;)I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 109
    iget-object v0, p0, Lcom/android/CSDFunctionG/ledtest$1;->this$0:Lcom/android/CSDFunctionG/ledtest;

    #setter for: Lcom/android/CSDFunctionG/ledtest;->mode:I
    invoke-static {v0, v2}, Lcom/android/CSDFunctionG/ledtest;->access$102(Lcom/android/CSDFunctionG/ledtest;I)I

    .line 110
    iget-object v0, p0, Lcom/android/CSDFunctionG/ledtest$1;->this$0:Lcom/android/CSDFunctionG/ledtest;

    #getter for: Lcom/android/CSDFunctionG/ledtest;->mbutton_LED:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/CSDFunctionG/ledtest;->access$000(Lcom/android/CSDFunctionG/ledtest;)Landroid/widget/Button;

    move-result-object v0

    invoke-static {v2}, Lcom/android/CSDFunctionG/GSD_DLL;->get_LEDTestString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 113
    :cond_2
    iget-object v0, p0, Lcom/android/CSDFunctionG/ledtest$1;->this$0:Lcom/android/CSDFunctionG/ledtest;

    #getter for: Lcom/android/CSDFunctionG/ledtest;->mode:I
    invoke-static {v0}, Lcom/android/CSDFunctionG/ledtest;->access$100(Lcom/android/CSDFunctionG/ledtest;)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/CSDFunctionG/ledtest$1;->this$0:Lcom/android/CSDFunctionG/ledtest;

    #getter for: Lcom/android/CSDFunctionG/ledtest;->mbutton_LED:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/CSDFunctionG/ledtest;->access$000(Lcom/android/CSDFunctionG/ledtest;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lcom/android/CSDFunctionG/ledtest$1;->this$0:Lcom/android/CSDFunctionG/ledtest;

    #setter for: Lcom/android/CSDFunctionG/ledtest;->mode:I
    invoke-static {v0, v4}, Lcom/android/CSDFunctionG/ledtest;->access$102(Lcom/android/CSDFunctionG/ledtest;I)I

    goto :goto_0

    .line 122
    :pswitch_2
    sget-object v0, Lcom/android/CSDFunctionG/ledtest;->Led_NextStepMsg:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 94
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
