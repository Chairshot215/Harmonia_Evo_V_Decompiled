.class Lcom/android/CSDFunctionG/ledtest$3;
.super Ljava/lang/Object;
.source "ledtest.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/CSDFunctionG/ledtest;->PassorFail()V
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
    .line 191
    iput-object p1, p0, Lcom/android/CSDFunctionG/ledtest$3;->this$0:Lcom/android/CSDFunctionG/ledtest;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "id"

    .prologue
    const/4 v4, 0x4

    .line 193
    iget-object v0, p0, Lcom/android/CSDFunctionG/ledtest$3;->this$0:Lcom/android/CSDFunctionG/ledtest;

    #getter for: Lcom/android/CSDFunctionG/ledtest;->mode:I
    invoke-static {v0}, Lcom/android/CSDFunctionG/ledtest;->access$100(Lcom/android/CSDFunctionG/ledtest;)I

    move-result v0

    if-eq v0, v4, :cond_1

    .line 195
    sget-object v0, Lcom/android/CSDFunctionG/ledtest;->LEDMSGTV:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v0, p0, Lcom/android/CSDFunctionG/ledtest$3;->this$0:Lcom/android/CSDFunctionG/ledtest;

    #getter for: Lcom/android/CSDFunctionG/ledtest;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/CSDFunctionG/ledtest;->access$300(Lcom/android/CSDFunctionG/ledtest;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/CSDFunctionG/ledtest$3;->this$0:Lcom/android/CSDFunctionG/ledtest;

    #getter for: Lcom/android/CSDFunctionG/ledtest;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/CSDFunctionG/ledtest;->access$300(Lcom/android/CSDFunctionG/ledtest;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/android/CSDFunctionG/ledtest$3;->this$0:Lcom/android/CSDFunctionG/ledtest;

    #getter for: Lcom/android/CSDFunctionG/ledtest;->PictureBox:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/CSDFunctionG/ledtest;->access$400(Lcom/android/CSDFunctionG/ledtest;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f020015

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 199
    iget-object v0, p0, Lcom/android/CSDFunctionG/ledtest$3;->this$0:Lcom/android/CSDFunctionG/ledtest;

    #getter for: Lcom/android/CSDFunctionG/ledtest;->PictureBox:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/CSDFunctionG/ledtest;->access$400(Lcom/android/CSDFunctionG/ledtest;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 207
    :goto_0
    return-void

    .line 203
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/CSDFunctionG/ledtest$3;->this$0:Lcom/android/CSDFunctionG/ledtest;

    iget-object v1, v1, Lcom/android/CSDFunctionG/ledtest;->ledlog:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/CSDFunctionG/GSDtesttool;->writeDataToFile(Ljava/lang/String;)V

    .line 204
    const-string v0, "LED test End\r\n"

    invoke-static {v0}, Lcom/android/CSDFunctionG/GSDtesttool;->writeDataToFile(Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/android/CSDFunctionG/ledtest$3;->this$0:Lcom/android/CSDFunctionG/ledtest;

    invoke-virtual {v0}, Lcom/android/CSDFunctionG/ledtest;->finish()V

    goto :goto_0
.end method
