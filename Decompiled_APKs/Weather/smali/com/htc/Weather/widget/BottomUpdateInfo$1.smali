.class Lcom/htc/Weather/widget/BottomUpdateInfo$1;
.super Landroid/os/Handler;
.source "BottomUpdateInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/Weather/widget/BottomUpdateInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field s:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/Weather/widget/BottomUpdateInfo;


# direct methods
.method constructor <init>(Lcom/htc/Weather/widget/BottomUpdateInfo;)V
    .locals 1
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, Lcom/htc/Weather/widget/BottomUpdateInfo$1;->this$0:Lcom/htc/Weather/widget/BottomUpdateInfo;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 211
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/Weather/widget/BottomUpdateInfo$1;->s:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 215
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 216
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 241
    :goto_0
    return-void

    .line 219
    :pswitch_0
    iget-object v0, p0, Lcom/htc/Weather/widget/BottomUpdateInfo$1;->this$0:Lcom/htc/Weather/widget/BottomUpdateInfo;

    #getter for: Lcom/htc/Weather/widget/BottomUpdateInfo;->mAnimTxt:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/htc/Weather/widget/BottomUpdateInfo;->access$000(Lcom/htc/Weather/widget/BottomUpdateInfo;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lcom/htc/Weather/widget/BottomUpdateInfo$1;->this$0:Lcom/htc/Weather/widget/BottomUpdateInfo;

    #getter for: Lcom/htc/Weather/widget/BottomUpdateInfo;->mAnimTxt:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/htc/Weather/widget/BottomUpdateInfo;->access$000(Lcom/htc/Weather/widget/BottomUpdateInfo;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 221
    iget-object v0, p0, Lcom/htc/Weather/widget/BottomUpdateInfo$1;->this$0:Lcom/htc/Weather/widget/BottomUpdateInfo;

    #getter for: Lcom/htc/Weather/widget/BottomUpdateInfo;->mAnimTxt:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/htc/Weather/widget/BottomUpdateInfo;->access$000(Lcom/htc/Weather/widget/BottomUpdateInfo;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/Weather/widget/BottomUpdateInfo$1;->s:Ljava/lang/String;

    .line 229
    :goto_1
    iget-object v0, p0, Lcom/htc/Weather/widget/BottomUpdateInfo$1;->this$0:Lcom/htc/Weather/widget/BottomUpdateInfo;

    #getter for: Lcom/htc/Weather/widget/BottomUpdateInfo;->mLoadingDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/htc/Weather/widget/BottomUpdateInfo;->access$100(Lcom/htc/Weather/widget/BottomUpdateInfo;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/htc/Weather/widget/BottomUpdateInfo$1;->this$0:Lcom/htc/Weather/widget/BottomUpdateInfo;

    #getter for: Lcom/htc/Weather/widget/BottomUpdateInfo;->mLoadingDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/htc/Weather/widget/BottomUpdateInfo;->access$100(Lcom/htc/Weather/widget/BottomUpdateInfo;)Landroid/app/ProgressDialog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/Weather/widget/BottomUpdateInfo$1;->this$0:Lcom/htc/Weather/widget/BottomUpdateInfo;

    #getter for: Lcom/htc/Weather/widget/BottomUpdateInfo;->mLoadingStr:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/Weather/widget/BottomUpdateInfo;->access$200(Lcom/htc/Weather/widget/BottomUpdateInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/Weather/widget/BottomUpdateInfo$1;->s:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 232
    :cond_0
    const-wide/16 v0, 0x190

    invoke-virtual {p0, v3, v0, v1}, Lcom/htc/Weather/widget/BottomUpdateInfo$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/htc/Weather/widget/BottomUpdateInfo$1;->this$0:Lcom/htc/Weather/widget/BottomUpdateInfo;

    #getter for: Lcom/htc/Weather/widget/BottomUpdateInfo;->mAnimTxt:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/htc/Weather/widget/BottomUpdateInfo;->access$000(Lcom/htc/Weather/widget/BottomUpdateInfo;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/Weather/widget/BottomUpdateInfo$1;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/Weather/widget/BottomUpdateInfo$1;->s:Ljava/lang/String;

    goto :goto_1

    .line 237
    :pswitch_1
    iget-object v0, p0, Lcom/htc/Weather/widget/BottomUpdateInfo$1;->this$0:Lcom/htc/Weather/widget/BottomUpdateInfo;

    invoke-virtual {v0}, Lcom/htc/Weather/widget/BottomUpdateInfo;->update()V

    goto/16 :goto_0

    .line 216
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
