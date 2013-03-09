.class Lcom/android/CSDFunctionG/flashlight$2;
.super Ljava/lang/Object;
.source "flashlight.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/CSDFunctionG/flashlight;->PassorFail(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/CSDFunctionG/flashlight;


# direct methods
.method constructor <init>(Lcom/android/CSDFunctionG/flashlight;)V
    .locals 0
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/CSDFunctionG/flashlight$2;->this$0:Lcom/android/CSDFunctionG/flashlight;

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

    .line 125
    sget-object v0, Lcom/android/CSDFunctionG/flashlight;->flashlight_InstructMsg:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    sget-object v0, Lcom/android/CSDFunctionG/flashlight;->flashlight_InstructMsg:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 127
    iget-object v0, p0, Lcom/android/CSDFunctionG/flashlight$2;->this$0:Lcom/android/CSDFunctionG/flashlight;

    iget v0, v0, Lcom/android/CSDFunctionG/flashlight;->g_mode:I

    if-nez v0, :cond_1

    .line 129
    sget-object v0, Lcom/android/CSDFunctionG/flashlight;->flashlight_NextStepMsg:Landroid/widget/TextView;

    const v1, 0x7f060025

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 130
    iget-object v0, p0, Lcom/android/CSDFunctionG/flashlight$2;->this$0:Lcom/android/CSDFunctionG/flashlight;

    #getter for: Lcom/android/CSDFunctionG/flashlight;->mbuttonflashlight:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/CSDFunctionG/flashlight;->access$000(Lcom/android/CSDFunctionG/flashlight;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/android/CSDFunctionG/flashlight$2;->this$0:Lcom/android/CSDFunctionG/flashlight;

    iget v0, v0, Lcom/android/CSDFunctionG/flashlight;->g_mode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/CSDFunctionG/flashlight$2;->this$0:Lcom/android/CSDFunctionG/flashlight;

    invoke-virtual {v0}, Lcom/android/CSDFunctionG/flashlight;->finish()V

    .line 135
    sget-object v0, Lcom/android/CSDFunctionG/flashlight;->flashlight_NextStepMsg:Landroid/widget/TextView;

    const v1, 0x7f060007

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
