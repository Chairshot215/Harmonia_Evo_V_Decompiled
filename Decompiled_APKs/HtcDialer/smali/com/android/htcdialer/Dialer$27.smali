.class Lcom/android/htcdialer/Dialer$27;
.super Ljava/lang/Object;
.source "Dialer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htcdialer/Dialer;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htcdialer/Dialer;


# direct methods
.method constructor <init>(Lcom/android/htcdialer/Dialer;)V
    .locals 0
    .parameter

    .prologue
    .line 7807
    iput-object p1, p0, Lcom/android/htcdialer/Dialer$27;->this$0:Lcom/android/htcdialer/Dialer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 7809
    iget-object v2, p0, Lcom/android/htcdialer/Dialer$27;->this$0:Lcom/android/htcdialer/Dialer;

    #getter for: Lcom/android/htcdialer/Dialer;->mIpDialCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/android/htcdialer/Dialer;->access$5200(Lcom/android/htcdialer/Dialer;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7810
    iget-object v2, p0, Lcom/android/htcdialer/Dialer$27;->this$0:Lcom/android/htcdialer/Dialer;

    #getter for: Lcom/android/htcdialer/Dialer;->mIpDialCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/android/htcdialer/Dialer;->access$5200(Lcom/android/htcdialer/Dialer;)Landroid/database/Cursor;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 7811
    .local v1, prefix:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/android/htcdialer/Dialer$27;->this$0:Lcom/android/htcdialer/Dialer;

    #getter for: Lcom/android/htcdialer/Dialer;->mTmpIpPostfix:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/htcdialer/Dialer;->access$6300(Lcom/android/htcdialer/Dialer;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, ""

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7812
    .local v0, ipDialNumber:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/htcdialer/Dialer$27;->this$0:Lcom/android/htcdialer/Dialer;

    invoke-virtual {v2, v0}, Lcom/android/htcdialer/Dialer;->editNumberBeforeCall(Ljava/lang/String;)V

    .line 7814
    .end local v0           #ipDialNumber:Ljava/lang/String;
    .end local v1           #prefix:Ljava/lang/String;
    :cond_0
    return-void

    .line 7811
    .restart local v1       #prefix:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/htcdialer/Dialer$27;->this$0:Lcom/android/htcdialer/Dialer;

    #getter for: Lcom/android/htcdialer/Dialer;->mTmpIpPostfix:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/htcdialer/Dialer;->access$6300(Lcom/android/htcdialer/Dialer;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
