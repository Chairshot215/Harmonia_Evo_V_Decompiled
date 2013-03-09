.class Lcom/android/CSDFunctionG/Proximitytest$1;
.super Ljava/lang/Object;
.source "Proximitytest.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/CSDFunctionG/Proximitytest;->PassorFail()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/CSDFunctionG/Proximitytest;


# direct methods
.method constructor <init>(Lcom/android/CSDFunctionG/Proximitytest;)V
    .locals 0
    .parameter

    .prologue
    .line 201
    iput-object p1, p0, Lcom/android/CSDFunctionG/Proximitytest$1;->this$0:Lcom/android/CSDFunctionG/Proximitytest;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/CSDFunctionG/Proximitytest$1;->this$0:Lcom/android/CSDFunctionG/Proximitytest;

    #getter for: Lcom/android/CSDFunctionG/Proximitytest;->PS_InstructMsg:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/CSDFunctionG/Proximitytest;->access$000(Lcom/android/CSDFunctionG/Proximitytest;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v0, p0, Lcom/android/CSDFunctionG/Proximitytest$1;->this$0:Lcom/android/CSDFunctionG/Proximitytest;

    #getter for: Lcom/android/CSDFunctionG/Proximitytest;->PS_NextStepMsg:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/CSDFunctionG/Proximitytest;->access$100(Lcom/android/CSDFunctionG/Proximitytest;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f060007

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 205
    const-string v0, "P-sensor test End\r\n"

    invoke-static {v0}, Lcom/android/CSDFunctionG/GSDtesttool;->writeDataToFile(Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/android/CSDFunctionG/Proximitytest$1;->this$0:Lcom/android/CSDFunctionG/Proximitytest;

    invoke-virtual {v0}, Lcom/android/CSDFunctionG/Proximitytest;->finish()V

    .line 207
    return-void
.end method
