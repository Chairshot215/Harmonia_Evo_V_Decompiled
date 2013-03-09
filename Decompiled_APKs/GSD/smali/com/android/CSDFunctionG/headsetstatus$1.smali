.class Lcom/android/CSDFunctionG/headsetstatus$1;
.super Ljava/lang/Object;
.source "headsetstatus.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/CSDFunctionG/headsetstatus;->PassorFail(I)V
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
    .line 133
    iput-object p1, p0, Lcom/android/CSDFunctionG/headsetstatus$1;->this$0:Lcom/android/CSDFunctionG/headsetstatus;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "id"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 135
    sget-object v0, Lcom/android/CSDFunctionG/headsetstatus;->HST_InstructMsg1:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    sget-object v0, Lcom/android/CSDFunctionG/headsetstatus;->HST_InstructMsg1:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 137
    iget-object v0, p0, Lcom/android/CSDFunctionG/headsetstatus$1;->this$0:Lcom/android/CSDFunctionG/headsetstatus;

    iget v0, v0, Lcom/android/CSDFunctionG/headsetstatus;->g_mode:I

    if-ne v0, v3, :cond_1

    .line 139
    sget-object v0, Lcom/android/CSDFunctionG/headsetstatus;->HST_InstructMsg1:Landroid/widget/TextView;

    const v1, 0x7f020018

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 140
    sget-object v0, Lcom/android/CSDFunctionG/headsetstatus;->HST_NextStepMsg:Landroid/widget/TextView;

    const v1, 0x7f06004f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 141
    iget-object v0, p0, Lcom/android/CSDFunctionG/headsetstatus$1;->this$0:Lcom/android/CSDFunctionG/headsetstatus;

    #setter for: Lcom/android/CSDFunctionG/headsetstatus;->wearHeadset_flag:Z
    invoke-static {v0, v3}, Lcom/android/CSDFunctionG/headsetstatus;->access$102(Lcom/android/CSDFunctionG/headsetstatus;Z)Z

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/android/CSDFunctionG/headsetstatus$1;->this$0:Lcom/android/CSDFunctionG/headsetstatus;

    iget v0, v0, Lcom/android/CSDFunctionG/headsetstatus;->g_mode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 145
    iget-object v0, p0, Lcom/android/CSDFunctionG/headsetstatus$1;->this$0:Lcom/android/CSDFunctionG/headsetstatus;

    #getter for: Lcom/android/CSDFunctionG/headsetstatus;->mbuttonHeadset:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/CSDFunctionG/headsetstatus;->access$200(Lcom/android/CSDFunctionG/headsetstatus;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 146
    sget-object v0, Lcom/android/CSDFunctionG/headsetstatus;->HST_NextStepMsg:Landroid/widget/TextView;

    const v1, 0x7f060050

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 147
    sget-object v0, Lcom/android/CSDFunctionG/headsetstatus;->recbtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 149
    :cond_2
    iget-object v0, p0, Lcom/android/CSDFunctionG/headsetstatus$1;->this$0:Lcom/android/CSDFunctionG/headsetstatus;

    iget v0, v0, Lcom/android/CSDFunctionG/headsetstatus;->g_mode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/CSDFunctionG/headsetstatus$1;->this$0:Lcom/android/CSDFunctionG/headsetstatus;

    invoke-virtual {v0}, Lcom/android/CSDFunctionG/headsetstatus;->finish()V

    .line 152
    sget-object v0, Lcom/android/CSDFunctionG/headsetstatus;->HST_NextStepMsg:Landroid/widget/TextView;

    const v1, 0x7f060007

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
