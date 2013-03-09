.class Lcom/android/CSDFunctionG/headsetstatus$3;
.super Landroid/os/Handler;
.source "headsetstatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/CSDFunctionG/headsetstatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/CSDFunctionG/headsetstatus;


# direct methods
.method constructor <init>(Lcom/android/CSDFunctionG/headsetstatus;)V
    .locals 0
    .parameter

    .prologue
    .line 185
    iput-object p1, p0, Lcom/android/CSDFunctionG/headsetstatus$3;->this$0:Lcom/android/CSDFunctionG/headsetstatus;

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

    .line 189
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 222
    :goto_0
    return-void

    .line 192
    :pswitch_0
    iget-object v0, p0, Lcom/android/CSDFunctionG/headsetstatus$3;->this$0:Lcom/android/CSDFunctionG/headsetstatus;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/CSDFunctionG/headsetstatus;->PassorFail(I)V

    goto :goto_0

    .line 195
    :pswitch_1
    sput-boolean v2, Lcom/android/CSDFunctionG/headsetstatus;->playwavfile:Z

    .line 196
    iget-object v0, p0, Lcom/android/CSDFunctionG/headsetstatus$3;->this$0:Lcom/android/CSDFunctionG/headsetstatus;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/CSDFunctionG/headsetstatus;->PassorFail(I)V

    goto :goto_0

    .line 199
    :pswitch_2
    sput-boolean v2, Lcom/android/CSDFunctionG/headsetstatus;->playwavfile:Z

    .line 200
    sget-object v0, Lcom/android/CSDFunctionG/headsetstatus;->recbtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 201
    sget-object v0, Lcom/android/CSDFunctionG/headsetstatus;->HST_NextStepMsg:Landroid/widget/TextView;

    const v1, 0x7f060051

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 202
    sget-object v0, Lcom/android/CSDFunctionG/headsetstatus;->HST_InstructMsg1:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    sget-object v0, Lcom/android/CSDFunctionG/headsetstatus;->HST_InstructMsg1:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    .line 206
    :pswitch_3
    sget-object v0, Lcom/android/CSDFunctionG/headsetstatus;->HST_NextStepMsg:Landroid/widget/TextView;

    const v1, 0x7f060052

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 207
    sget-object v0, Lcom/android/CSDFunctionG/headsetstatus;->playbtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 208
    sget-object v0, Lcom/android/CSDFunctionG/headsetstatus;->recbtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 212
    :pswitch_4
    sget-object v0, Lcom/android/CSDFunctionG/headsetstatus;->HST_InstructMsg1:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 213
    sget-object v0, Lcom/android/CSDFunctionG/headsetstatus;->playbtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 214
    sget-object v0, Lcom/android/CSDFunctionG/headsetstatus;->HST_NextStepMsg:Landroid/widget/TextView;

    const v1, 0x7f060053

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 217
    :pswitch_5
    sput-boolean v2, Lcom/android/CSDFunctionG/headsetstatus;->playwavfile:Z

    .line 218
    sget-object v0, Lcom/android/CSDFunctionG/headsetstatus;->playbtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 219
    iget-object v0, p0, Lcom/android/CSDFunctionG/headsetstatus$3;->this$0:Lcom/android/CSDFunctionG/headsetstatus;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/CSDFunctionG/headsetstatus;->PassorFail(I)V

    goto :goto_0

    .line 189
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
