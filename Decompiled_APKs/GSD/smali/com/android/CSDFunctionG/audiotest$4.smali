.class Lcom/android/CSDFunctionG/audiotest$4;
.super Landroid/os/Handler;
.source "audiotest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/CSDFunctionG/audiotest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/CSDFunctionG/audiotest;


# direct methods
.method constructor <init>(Lcom/android/CSDFunctionG/audiotest;)V
    .locals 0
    .parameter

    .prologue
    .line 402
    iput-object p1, p0, Lcom/android/CSDFunctionG/audiotest$4;->this$0:Lcom/android/CSDFunctionG/audiotest;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 406
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 441
    :goto_0
    return-void

    .line 409
    :pswitch_0
    sput-boolean v2, Lcom/android/CSDFunctionG/audiotest;->playwavfile:Z

    .line 410
    iget-object v0, p0, Lcom/android/CSDFunctionG/audiotest$4;->this$0:Lcom/android/CSDFunctionG/audiotest;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/CSDFunctionG/audiotest;->PassorFail(I)V

    goto :goto_0

    .line 413
    :pswitch_1
    sput-boolean v2, Lcom/android/CSDFunctionG/audiotest;->playwavfile:Z

    .line 414
    iget-object v0, p0, Lcom/android/CSDFunctionG/audiotest$4;->this$0:Lcom/android/CSDFunctionG/audiotest;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/CSDFunctionG/audiotest;->PassorFail(I)V

    goto :goto_0

    .line 417
    :pswitch_2
    sget-object v0, Lcom/android/CSDFunctionG/audiotest;->recbtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 418
    sget-object v0, Lcom/android/CSDFunctionG/audiotest;->tv_NextStep:Landroid/widget/TextView;

    const v1, 0x7f060041

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 419
    sget-object v0, Lcom/android/CSDFunctionG/audiotest;->tv_Instruct:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 420
    sget-object v0, Lcom/android/CSDFunctionG/audiotest;->tv_Instruct:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 424
    :pswitch_3
    sget-object v0, Lcom/android/CSDFunctionG/audiotest;->tv_Instruct:Landroid/widget/TextView;

    const v1, 0x7f02001e

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 425
    sget-object v0, Lcom/android/CSDFunctionG/audiotest;->tv_NextStep:Landroid/widget/TextView;

    const v1, 0x7f060042

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 426
    sget-object v0, Lcom/android/CSDFunctionG/audiotest;->playbtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 427
    sget-object v0, Lcom/android/CSDFunctionG/audiotest;->recbtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 432
    :pswitch_4
    sget-object v0, Lcom/android/CSDFunctionG/audiotest;->playbtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 433
    sget-object v0, Lcom/android/CSDFunctionG/audiotest;->tv_NextStep:Landroid/widget/TextView;

    const v1, 0x7f060043

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 436
    :pswitch_5
    sput-boolean v2, Lcom/android/CSDFunctionG/audiotest;->playwavfile:Z

    .line 437
    sget-object v0, Lcom/android/CSDFunctionG/audiotest;->playbtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 438
    iget-object v0, p0, Lcom/android/CSDFunctionG/audiotest$4;->this$0:Lcom/android/CSDFunctionG/audiotest;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/CSDFunctionG/audiotest;->PassorFail(I)V

    goto :goto_0

    .line 406
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
