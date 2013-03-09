.class Lcom/android/browser/Tab$2$1;
.super Ljava/lang/Object;
.source "Tab.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/Tab$2;->onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/browser/Tab$2;


# direct methods
.method constructor <init>(Lcom/android/browser/Tab$2;)V
    .locals 0
    .parameter

    .prologue
    .line 739
    iput-object p1, p0, Lcom/android/browser/Tab$2$1;->this$1:Lcom/android/browser/Tab$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    const/4 v1, 0x0

    .line 741
    iget-object v0, p0, Lcom/android/browser/Tab$2$1;->this$1:Lcom/android/browser/Tab$2;

    #getter for: Lcom/android/browser/Tab$2;->mDontResend:Landroid/os/Message;
    invoke-static {v0}, Lcom/android/browser/Tab$2;->access$1000(Lcom/android/browser/Tab$2;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 742
    iget-object v0, p0, Lcom/android/browser/Tab$2$1;->this$1:Lcom/android/browser/Tab$2;

    #getter for: Lcom/android/browser/Tab$2;->mDontResend:Landroid/os/Message;
    invoke-static {v0}, Lcom/android/browser/Tab$2;->access$1000(Lcom/android/browser/Tab$2;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 743
    iget-object v0, p0, Lcom/android/browser/Tab$2$1;->this$1:Lcom/android/browser/Tab$2;

    #setter for: Lcom/android/browser/Tab$2;->mResend:Landroid/os/Message;
    invoke-static {v0, v1}, Lcom/android/browser/Tab$2;->access$1102(Lcom/android/browser/Tab$2;Landroid/os/Message;)Landroid/os/Message;

    .line 744
    iget-object v0, p0, Lcom/android/browser/Tab$2$1;->this$1:Lcom/android/browser/Tab$2;

    #setter for: Lcom/android/browser/Tab$2;->mDontResend:Landroid/os/Message;
    invoke-static {v0, v1}, Lcom/android/browser/Tab$2;->access$1002(Lcom/android/browser/Tab$2;Landroid/os/Message;)Landroid/os/Message;

    .line 746
    :cond_0
    return-void
.end method
