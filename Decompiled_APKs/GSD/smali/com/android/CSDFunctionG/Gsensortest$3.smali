.class Lcom/android/CSDFunctionG/Gsensortest$3;
.super Landroid/os/Handler;
.source "Gsensortest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/CSDFunctionG/Gsensortest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/CSDFunctionG/Gsensortest;


# direct methods
.method constructor <init>(Lcom/android/CSDFunctionG/Gsensortest;)V
    .locals 0
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/android/CSDFunctionG/Gsensortest$3;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x7

    const/4 v4, 0x1

    const/high16 v2, -0x1

    const v1, -0xff0100

    const/4 v3, 0x0

    .line 226
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 229
    :pswitch_0
    iget-object v1, p0, Lcom/android/CSDFunctionG/Gsensortest$3;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    #calls: Lcom/android/CSDFunctionG/Gsensortest;->showText(Ljava/lang/String;I)V
    invoke-static {v1, v0, v4}, Lcom/android/CSDFunctionG/Gsensortest;->access$000(Lcom/android/CSDFunctionG/Gsensortest;Ljava/lang/String;I)V

    goto :goto_0

    .line 232
    :pswitch_1
    iget-object v1, p0, Lcom/android/CSDFunctionG/Gsensortest$3;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x2

    #calls: Lcom/android/CSDFunctionG/Gsensortest;->showText(Ljava/lang/String;I)V
    invoke-static {v1, v0, v2}, Lcom/android/CSDFunctionG/Gsensortest;->access$000(Lcom/android/CSDFunctionG/Gsensortest;Ljava/lang/String;I)V

    goto :goto_0

    .line 235
    :pswitch_2
    iget-object v1, p0, Lcom/android/CSDFunctionG/Gsensortest$3;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x3

    #calls: Lcom/android/CSDFunctionG/Gsensortest;->showText(Ljava/lang/String;I)V
    invoke-static {v1, v0, v2}, Lcom/android/CSDFunctionG/Gsensortest;->access$000(Lcom/android/CSDFunctionG/Gsensortest;Ljava/lang/String;I)V

    goto :goto_0

    .line 238
    :pswitch_3
    iget-object v1, p0, Lcom/android/CSDFunctionG/Gsensortest$3;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x4

    #calls: Lcom/android/CSDFunctionG/Gsensortest;->showText(Ljava/lang/String;I)V
    invoke-static {v1, v0, v2}, Lcom/android/CSDFunctionG/Gsensortest;->access$000(Lcom/android/CSDFunctionG/Gsensortest;Ljava/lang/String;I)V

    goto :goto_0

    .line 241
    :pswitch_4
    invoke-static {}, Lcom/android/CSDFunctionG/Gsensortest;->access$110()I

    .line 243
    invoke-static {}, Lcom/android/CSDFunctionG/Gsensortest;->access$100()I

    move-result v0

    if-nez v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/android/CSDFunctionG/Gsensortest$3;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    #setter for: Lcom/android/CSDFunctionG/Gsensortest;->Check_Range:Z
    invoke-static {v0, v4}, Lcom/android/CSDFunctionG/Gsensortest;->access$202(Lcom/android/CSDFunctionG/Gsensortest;Z)Z

    goto :goto_0

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/android/CSDFunctionG/Gsensortest$3;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    #getter for: Lcom/android/CSDFunctionG/Gsensortest;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/CSDFunctionG/Gsensortest;->access$300(Lcom/android/CSDFunctionG/Gsensortest;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/android/CSDFunctionG/Gsensortest$3;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    #getter for: Lcom/android/CSDFunctionG/Gsensortest;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/CSDFunctionG/Gsensortest;->access$300(Lcom/android/CSDFunctionG/Gsensortest;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 254
    :pswitch_5
    iget-object v0, p0, Lcom/android/CSDFunctionG/Gsensortest$3;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    #getter for: Lcom/android/CSDFunctionG/Gsensortest;->tvX_value:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/CSDFunctionG/Gsensortest;->access$400(Lcom/android/CSDFunctionG/Gsensortest;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 255
    iget-object v0, p0, Lcom/android/CSDFunctionG/Gsensortest$3;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    #getter for: Lcom/android/CSDFunctionG/Gsensortest;->tvY_value:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/CSDFunctionG/Gsensortest;->access$500(Lcom/android/CSDFunctionG/Gsensortest;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 256
    iget-object v0, p0, Lcom/android/CSDFunctionG/Gsensortest$3;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    #getter for: Lcom/android/CSDFunctionG/Gsensortest;->tvZ_value:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/CSDFunctionG/Gsensortest;->access$600(Lcom/android/CSDFunctionG/Gsensortest;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 257
    iget-object v0, p0, Lcom/android/CSDFunctionG/Gsensortest$3;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    #getter for: Lcom/android/CSDFunctionG/Gsensortest;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/CSDFunctionG/Gsensortest;->access$300(Lcom/android/CSDFunctionG/Gsensortest;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 258
    iget-object v0, p0, Lcom/android/CSDFunctionG/Gsensortest$3;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    #getter for: Lcom/android/CSDFunctionG/Gsensortest;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/CSDFunctionG/Gsensortest;->access$300(Lcom/android/CSDFunctionG/Gsensortest;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x5dc

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 259
    :cond_2
    iget-object v0, p0, Lcom/android/CSDFunctionG/Gsensortest$3;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    #getter for: Lcom/android/CSDFunctionG/Gsensortest;->Gsensor_instruct:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/CSDFunctionG/Gsensortest;->access$700(Lcom/android/CSDFunctionG/Gsensortest;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    iget-object v0, p0, Lcom/android/CSDFunctionG/Gsensortest$3;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    #getter for: Lcom/android/CSDFunctionG/Gsensortest;->ShowPicture:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/CSDFunctionG/Gsensortest;->access$800(Lcom/android/CSDFunctionG/Gsensortest;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_0

    .line 263
    :pswitch_6
    iget-object v0, p0, Lcom/android/CSDFunctionG/Gsensortest$3;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    invoke-virtual {v0}, Lcom/android/CSDFunctionG/Gsensortest;->PassorFail()V

    goto/16 :goto_0

    .line 266
    :pswitch_7
    iget-object v0, p0, Lcom/android/CSDFunctionG/Gsensortest$3;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    #getter for: Lcom/android/CSDFunctionG/Gsensortest;->tvX_value:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/CSDFunctionG/Gsensortest;->access$400(Lcom/android/CSDFunctionG/Gsensortest;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 267
    iget-object v0, p0, Lcom/android/CSDFunctionG/Gsensortest$3;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    #getter for: Lcom/android/CSDFunctionG/Gsensortest;->tvY_value:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/CSDFunctionG/Gsensortest;->access$500(Lcom/android/CSDFunctionG/Gsensortest;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 268
    iget-object v0, p0, Lcom/android/CSDFunctionG/Gsensortest$3;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    #getter for: Lcom/android/CSDFunctionG/Gsensortest;->tvZ_value:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/CSDFunctionG/Gsensortest;->access$600(Lcom/android/CSDFunctionG/Gsensortest;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 269
    iget-object v0, p0, Lcom/android/CSDFunctionG/Gsensortest$3;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    #getter for: Lcom/android/CSDFunctionG/Gsensortest;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/CSDFunctionG/Gsensortest;->access$300(Lcom/android/CSDFunctionG/Gsensortest;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 270
    iget-object v0, p0, Lcom/android/CSDFunctionG/Gsensortest$3;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    #getter for: Lcom/android/CSDFunctionG/Gsensortest;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/CSDFunctionG/Gsensortest;->access$300(Lcom/android/CSDFunctionG/Gsensortest;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x5dc

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 271
    :cond_3
    iget-object v0, p0, Lcom/android/CSDFunctionG/Gsensortest$3;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    #getter for: Lcom/android/CSDFunctionG/Gsensortest;->Gsensor_instruct:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/CSDFunctionG/Gsensortest;->access$700(Lcom/android/CSDFunctionG/Gsensortest;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v0, p0, Lcom/android/CSDFunctionG/Gsensortest$3;->this$0:Lcom/android/CSDFunctionG/Gsensortest;

    #getter for: Lcom/android/CSDFunctionG/Gsensortest;->ShowPicture:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/CSDFunctionG/Gsensortest;->access$800(Lcom/android/CSDFunctionG/Gsensortest;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_0

    .line 226
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
