.class Lcom/android/CSDFunctionG/lightsensor$3;
.super Landroid/os/Handler;
.source "lightsensor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/CSDFunctionG/lightsensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/CSDFunctionG/lightsensor;


# direct methods
.method constructor <init>(Lcom/android/CSDFunctionG/lightsensor;)V
    .locals 0
    .parameter

    .prologue
    .line 247
    iput-object p1, p0, Lcom/android/CSDFunctionG/lightsensor$3;->this$0:Lcom/android/CSDFunctionG/lightsensor;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    .line 251
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 254
    :pswitch_0
    iget-object v1, p0, Lcom/android/CSDFunctionG/lightsensor$3;->this$0:Lcom/android/CSDFunctionG/lightsensor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    #calls: Lcom/android/CSDFunctionG/lightsensor;->showText(Ljava/lang/String;I)V
    invoke-static {v1, v0, v2}, Lcom/android/CSDFunctionG/lightsensor;->access$200(Lcom/android/CSDFunctionG/lightsensor;Ljava/lang/String;I)V

    goto :goto_0

    .line 257
    :pswitch_1
    iget-object v1, p0, Lcom/android/CSDFunctionG/lightsensor$3;->this$0:Lcom/android/CSDFunctionG/lightsensor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x2

    #calls: Lcom/android/CSDFunctionG/lightsensor;->showText(Ljava/lang/String;I)V
    invoke-static {v1, v0, v2}, Lcom/android/CSDFunctionG/lightsensor;->access$200(Lcom/android/CSDFunctionG/lightsensor;Ljava/lang/String;I)V

    goto :goto_0

    .line 260
    :pswitch_2
    iget-object v0, p0, Lcom/android/CSDFunctionG/lightsensor$3;->this$0:Lcom/android/CSDFunctionG/lightsensor;

    iget-boolean v0, v0, Lcom/android/CSDFunctionG/lightsensor;->g_showInfo:Z

    if-nez v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/android/CSDFunctionG/lightsensor$3;->this$0:Lcom/android/CSDFunctionG/lightsensor;

    iput-boolean v2, v0, Lcom/android/CSDFunctionG/lightsensor;->g_showInfo:Z

    .line 263
    iget-object v0, p0, Lcom/android/CSDFunctionG/lightsensor$3;->this$0:Lcom/android/CSDFunctionG/lightsensor;

    #getter for: Lcom/android/CSDFunctionG/lightsensor;->LS_NextStepMsg:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/CSDFunctionG/lightsensor;->access$100(Lcom/android/CSDFunctionG/lightsensor;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    iget-object v0, p0, Lcom/android/CSDFunctionG/lightsensor$3;->this$0:Lcom/android/CSDFunctionG/lightsensor;

    #getter for: Lcom/android/CSDFunctionG/lightsensor;->LS_InstructMsg:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/CSDFunctionG/lightsensor;->access$000(Lcom/android/CSDFunctionG/lightsensor;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f060063

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 265
    iget-object v0, p0, Lcom/android/CSDFunctionG/lightsensor$3;->this$0:Lcom/android/CSDFunctionG/lightsensor;

    #getter for: Lcom/android/CSDFunctionG/lightsensor;->tvLSMsg:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/CSDFunctionG/lightsensor;->access$300(Lcom/android/CSDFunctionG/lightsensor;)Landroid/widget/TextView;

    move-result-object v0

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 269
    :pswitch_3
    iget-object v0, p0, Lcom/android/CSDFunctionG/lightsensor$3;->this$0:Lcom/android/CSDFunctionG/lightsensor;

    invoke-virtual {v0}, Lcom/android/CSDFunctionG/lightsensor;->PassorFail()V

    goto :goto_0

    .line 251
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
