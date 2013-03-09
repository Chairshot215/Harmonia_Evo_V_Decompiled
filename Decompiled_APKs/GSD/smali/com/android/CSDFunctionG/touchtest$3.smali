.class Lcom/android/CSDFunctionG/touchtest$3;
.super Landroid/os/Handler;
.source "touchtest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/CSDFunctionG/touchtest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/CSDFunctionG/touchtest;


# direct methods
.method constructor <init>(Lcom/android/CSDFunctionG/touchtest;)V
    .locals 0
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/CSDFunctionG/touchtest$3;->this$0:Lcom/android/CSDFunctionG/touchtest;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 149
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 151
    :pswitch_0
    sget-object v0, Lcom/android/CSDFunctionG/touchtest;->LineDraw_InstructMsg:Landroid/widget/TextView;

    const v1, 0x7f060017

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 152
    sget-object v0, Lcom/android/CSDFunctionG/touchtest;->LineDraw_InstructMsg:Landroid/widget/TextView;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 153
    iget-object v0, p0, Lcom/android/CSDFunctionG/touchtest$3;->this$0:Lcom/android/CSDFunctionG/touchtest;

    iget-object v1, p0, Lcom/android/CSDFunctionG/touchtest$3;->this$0:Lcom/android/CSDFunctionG/touchtest;

    #getter for: Lcom/android/CSDFunctionG/touchtest;->all_layout:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/android/CSDFunctionG/touchtest;->access$000(Lcom/android/CSDFunctionG/touchtest;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/CSDFunctionG/touchtest;->setContentView(Landroid/view/View;)V

    .line 154
    iget-object v0, p0, Lcom/android/CSDFunctionG/touchtest$3;->this$0:Lcom/android/CSDFunctionG/touchtest;

    #getter for: Lcom/android/CSDFunctionG/touchtest;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/CSDFunctionG/touchtest;->access$100(Lcom/android/CSDFunctionG/touchtest;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/CSDFunctionG/touchtest$3;->this$0:Lcom/android/CSDFunctionG/touchtest;

    #getter for: Lcom/android/CSDFunctionG/touchtest;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/CSDFunctionG/touchtest;->access$100(Lcom/android/CSDFunctionG/touchtest;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 158
    :pswitch_1
    iget-object v0, p0, Lcom/android/CSDFunctionG/touchtest$3;->this$0:Lcom/android/CSDFunctionG/touchtest;

    #getter for: Lcom/android/CSDFunctionG/touchtest;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/CSDFunctionG/touchtest;->access$100(Lcom/android/CSDFunctionG/touchtest;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/CSDFunctionG/touchtest$3;->this$0:Lcom/android/CSDFunctionG/touchtest;

    #getter for: Lcom/android/CSDFunctionG/touchtest;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/CSDFunctionG/touchtest;->access$100(Lcom/android/CSDFunctionG/touchtest;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 162
    :pswitch_2
    iget-object v0, p0, Lcom/android/CSDFunctionG/touchtest$3;->this$0:Lcom/android/CSDFunctionG/touchtest;

    invoke-virtual {v0}, Lcom/android/CSDFunctionG/touchtest;->PassorFail()V

    goto :goto_0

    .line 165
    :pswitch_3
    iget-object v0, p0, Lcom/android/CSDFunctionG/touchtest$3;->this$0:Lcom/android/CSDFunctionG/touchtest;

    iget-boolean v0, v0, Lcom/android/CSDFunctionG/touchtest;->StartTestFlag:Z

    if-eq v0, v3, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/CSDFunctionG/touchtest$3;->this$0:Lcom/android/CSDFunctionG/touchtest;

    #getter for: Lcom/android/CSDFunctionG/touchtest;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/CSDFunctionG/touchtest;->access$100(Lcom/android/CSDFunctionG/touchtest;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/android/CSDFunctionG/touchtest$3;->this$0:Lcom/android/CSDFunctionG/touchtest;

    #getter for: Lcom/android/CSDFunctionG/touchtest;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/CSDFunctionG/touchtest;->access$100(Lcom/android/CSDFunctionG/touchtest;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/android/CSDFunctionG/touchtest$3;->this$0:Lcom/android/CSDFunctionG/touchtest;

    invoke-virtual {v0}, Lcom/android/CSDFunctionG/touchtest;->showToast()V

    goto :goto_0

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
