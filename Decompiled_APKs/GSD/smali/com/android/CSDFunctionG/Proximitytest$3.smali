.class Lcom/android/CSDFunctionG/Proximitytest$3;
.super Landroid/os/Handler;
.source "Proximitytest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/CSDFunctionG/Proximitytest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/CSDFunctionG/Proximitytest;


# direct methods
.method constructor <init>(Lcom/android/CSDFunctionG/Proximitytest;)V
    .locals 0
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/CSDFunctionG/Proximitytest$3;->this$0:Lcom/android/CSDFunctionG/Proximitytest;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    .line 227
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 230
    :pswitch_0
    iget-object v1, p0, Lcom/android/CSDFunctionG/Proximitytest$3;->this$0:Lcom/android/CSDFunctionG/Proximitytest;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    #calls: Lcom/android/CSDFunctionG/Proximitytest;->showText(Ljava/lang/String;I)V
    invoke-static {v1, v0, v2}, Lcom/android/CSDFunctionG/Proximitytest;->access$200(Lcom/android/CSDFunctionG/Proximitytest;Ljava/lang/String;I)V

    goto :goto_0

    .line 233
    :pswitch_1
    iget-object v1, p0, Lcom/android/CSDFunctionG/Proximitytest$3;->this$0:Lcom/android/CSDFunctionG/Proximitytest;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x2

    #calls: Lcom/android/CSDFunctionG/Proximitytest;->showText(Ljava/lang/String;I)V
    invoke-static {v1, v0, v2}, Lcom/android/CSDFunctionG/Proximitytest;->access$200(Lcom/android/CSDFunctionG/Proximitytest;Ljava/lang/String;I)V

    goto :goto_0

    .line 236
    :pswitch_2
    iget-object v0, p0, Lcom/android/CSDFunctionG/Proximitytest$3;->this$0:Lcom/android/CSDFunctionG/Proximitytest;

    iget-boolean v0, v0, Lcom/android/CSDFunctionG/Proximitytest;->Show_instruction:Z

    if-nez v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/android/CSDFunctionG/Proximitytest$3;->this$0:Lcom/android/CSDFunctionG/Proximitytest;

    #getter for: Lcom/android/CSDFunctionG/Proximitytest;->PS_InstructMsg:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/CSDFunctionG/Proximitytest;->access$000(Lcom/android/CSDFunctionG/Proximitytest;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f060060

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 239
    iget-object v0, p0, Lcom/android/CSDFunctionG/Proximitytest$3;->this$0:Lcom/android/CSDFunctionG/Proximitytest;

    iput-boolean v2, v0, Lcom/android/CSDFunctionG/Proximitytest;->Show_instruction:Z

    .line 240
    iget-object v0, p0, Lcom/android/CSDFunctionG/Proximitytest$3;->this$0:Lcom/android/CSDFunctionG/Proximitytest;

    #getter for: Lcom/android/CSDFunctionG/Proximitytest;->PS_NextStepMsg:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/CSDFunctionG/Proximitytest;->access$100(Lcom/android/CSDFunctionG/Proximitytest;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 244
    :pswitch_3
    iget-object v0, p0, Lcom/android/CSDFunctionG/Proximitytest$3;->this$0:Lcom/android/CSDFunctionG/Proximitytest;

    invoke-virtual {v0}, Lcom/android/CSDFunctionG/Proximitytest;->PassorFail()V

    goto :goto_0

    .line 227
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
