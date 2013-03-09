.class Lcom/android/CSDFunctionG/lightsensor$1;
.super Ljava/lang/Object;
.source "lightsensor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/CSDFunctionG/lightsensor;->PassorFail()V
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
    .line 209
    iput-object p1, p0, Lcom/android/CSDFunctionG/lightsensor$1;->this$0:Lcom/android/CSDFunctionG/lightsensor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/CSDFunctionG/lightsensor$1;->this$0:Lcom/android/CSDFunctionG/lightsensor;

    #getter for: Lcom/android/CSDFunctionG/lightsensor;->LS_InstructMsg:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/CSDFunctionG/lightsensor;->access$000(Lcom/android/CSDFunctionG/lightsensor;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v0, p0, Lcom/android/CSDFunctionG/lightsensor$1;->this$0:Lcom/android/CSDFunctionG/lightsensor;

    #getter for: Lcom/android/CSDFunctionG/lightsensor;->LS_NextStepMsg:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/CSDFunctionG/lightsensor;->access$100(Lcom/android/CSDFunctionG/lightsensor;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f060007

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 213
    const-string v0, "Light-sensor test End\r\n"

    invoke-static {v0}, Lcom/android/CSDFunctionG/GSDtesttool;->writeDataToFile(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/android/CSDFunctionG/lightsensor$1;->this$0:Lcom/android/CSDFunctionG/lightsensor;

    invoke-virtual {v0}, Lcom/android/CSDFunctionG/lightsensor;->finish()V

    .line 215
    return-void
.end method
