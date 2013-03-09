.class Lcom/android/CSDFunctionG/backlighttest$2;
.super Ljava/lang/Object;
.source "backlighttest.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/CSDFunctionG/backlighttest;->PassorFail(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/CSDFunctionG/backlighttest;


# direct methods
.method constructor <init>(Lcom/android/CSDFunctionG/backlighttest;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/CSDFunctionG/backlighttest$2;->this$0:Lcom/android/CSDFunctionG/backlighttest;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 143
    sget-object v0, Lcom/android/CSDFunctionG/backlighttest;->Backlight_InstructMsg:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v0, p0, Lcom/android/CSDFunctionG/backlighttest$2;->this$0:Lcom/android/CSDFunctionG/backlighttest;

    iget v0, v0, Lcom/android/CSDFunctionG/backlighttest;->g_mode:I

    if-nez v0, :cond_1

    .line 146
    sget-object v0, Lcom/android/CSDFunctionG/backlighttest;->Backlight_InstructMsg:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 147
    sget-object v0, Lcom/android/CSDFunctionG/backlighttest;->Backlight_NextStepMsg:Landroid/widget/TextView;

    const v1, 0x7f06001e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 148
    iget-object v0, p0, Lcom/android/CSDFunctionG/backlighttest$2;->this$0:Lcom/android/CSDFunctionG/backlighttest;

    #getter for: Lcom/android/CSDFunctionG/backlighttest;->mBTN_Backlight_On:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/CSDFunctionG/backlighttest;->access$000(Lcom/android/CSDFunctionG/backlighttest;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/android/CSDFunctionG/backlighttest$2;->this$0:Lcom/android/CSDFunctionG/backlighttest;

    iget v0, v0, Lcom/android/CSDFunctionG/backlighttest;->g_mode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/CSDFunctionG/backlighttest$2;->this$0:Lcom/android/CSDFunctionG/backlighttest;

    iget-object v1, v1, Lcom/android/CSDFunctionG/backlighttest;->bkligntlog:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/CSDFunctionG/GSDtesttool;->writeDataToFile(Ljava/lang/String;)V

    .line 154
    const-string v0, "Backlight test End\r\n"

    invoke-static {v0}, Lcom/android/CSDFunctionG/GSDtesttool;->writeDataToFile(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/android/CSDFunctionG/backlighttest$2;->this$0:Lcom/android/CSDFunctionG/backlighttest;

    invoke-virtual {v0}, Lcom/android/CSDFunctionG/backlighttest;->finish()V

    goto :goto_0
.end method
