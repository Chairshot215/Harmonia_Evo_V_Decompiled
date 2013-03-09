.class Lcom/android/phone/cdma/HtcCdmaDialog$DialogCancelHandler;
.super Ljava/lang/Object;
.source "HtcCdmaDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/cdma/HtcCdmaDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialogCancelHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/cdma/HtcCdmaDialog;


# direct methods
.method private constructor <init>(Lcom/android/phone/cdma/HtcCdmaDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 313
    iput-object p1, p0, Lcom/android/phone/cdma/HtcCdmaDialog$DialogCancelHandler;->this$0:Lcom/android/phone/cdma/HtcCdmaDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/cdma/HtcCdmaDialog;Lcom/android/phone/cdma/HtcCdmaDialog$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 313
    invoke-direct {p0, p1}, Lcom/android/phone/cdma/HtcCdmaDialog$DialogCancelHandler;-><init>(Lcom/android/phone/cdma/HtcCdmaDialog;)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/phone/cdma/HtcCdmaDialog$DialogCancelHandler;->this$0:Lcom/android/phone/cdma/HtcCdmaDialog;

    #getter for: Lcom/android/phone/cdma/HtcCdmaDialog;->LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/phone/cdma/HtcCdmaDialog;->access$100(Lcom/android/phone/cdma/HtcCdmaDialog;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CancelDialog "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/cdma/HtcCdmaDialog$DialogCancelHandler;->this$0:Lcom/android/phone/cdma/HtcCdmaDialog;

    #getter for: Lcom/android/phone/cdma/HtcCdmaDialog;->mDialogId:I
    invoke-static {v2}, Lcom/android/phone/cdma/HtcCdmaDialog;->access$200(Lcom/android/phone/cdma/HtcCdmaDialog;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object v0, p0, Lcom/android/phone/cdma/HtcCdmaDialog$DialogCancelHandler;->this$0:Lcom/android/phone/cdma/HtcCdmaDialog;

    invoke-virtual {v0}, Lcom/android/phone/cdma/HtcCdmaDialog;->finish()V

    .line 320
    return-void
.end method
