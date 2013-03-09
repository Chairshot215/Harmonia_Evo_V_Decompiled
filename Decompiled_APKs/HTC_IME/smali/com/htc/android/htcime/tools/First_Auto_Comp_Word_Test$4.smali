.class Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test$4;
.super Ljava/lang/Object;
.source "First_Auto_Comp_Word_Test.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->promptForPauseTime()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test$4;->this$0:Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;

    iput-object p2, p0, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test$4;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 118
    iget-object v2, p0, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test$4;->val$input:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, value:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test$4;->this$0:Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    #setter for: Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->mPauseTime:I
    invoke-static {v2, v3}, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->access$102(Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_0
    iget-object v2, p0, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test$4;->this$0:Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;

    #getter for: Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->mTimeOuttBtn:Landroid/widget/Button;
    invoke-static {v2}, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->access$300(Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;)Landroid/widget/Button;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pause time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test$4;->this$0:Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;

    #getter for: Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->mPauseTime:I
    invoke-static {v4}, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->access$100(Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 125
    return-void

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test$4;->this$0:Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;

    const/16 v3, 0x1f4

    #setter for: Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->mPauseTime:I
    invoke-static {v2, v3}, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->access$102(Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;I)I

    goto :goto_0
.end method
