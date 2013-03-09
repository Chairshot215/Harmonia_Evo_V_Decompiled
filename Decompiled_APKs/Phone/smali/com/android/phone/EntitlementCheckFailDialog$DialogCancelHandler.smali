.class Lcom/android/phone/EntitlementCheckFailDialog$DialogCancelHandler;
.super Ljava/lang/Object;
.source "EntitlementCheckFailDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/EntitlementCheckFailDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DialogCancelHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EntitlementCheckFailDialog;


# direct methods
.method constructor <init>(Lcom/android/phone/EntitlementCheckFailDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 272
    iput-object p1, p0, Lcom/android/phone/EntitlementCheckFailDialog$DialogCancelHandler;->this$0:Lcom/android/phone/EntitlementCheckFailDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 275
    invoke-static {}, Lcom/android/phone/EntitlementCheckFailDialog;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    const-string v0, "EntitlementFail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CancelDialog "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/EntitlementCheckFailDialog$DialogCancelHandler;->this$0:Lcom/android/phone/EntitlementCheckFailDialog;

    #getter for: Lcom/android/phone/EntitlementCheckFailDialog;->mDialogId:I
    invoke-static {v2}, Lcom/android/phone/EntitlementCheckFailDialog;->access$100(Lcom/android/phone/EntitlementCheckFailDialog;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v0, p0, Lcom/android/phone/EntitlementCheckFailDialog$DialogCancelHandler;->this$0:Lcom/android/phone/EntitlementCheckFailDialog;

    invoke-virtual {v0}, Lcom/android/phone/EntitlementCheckFailDialog;->finish()V

    .line 279
    :cond_0
    return-void
.end method
