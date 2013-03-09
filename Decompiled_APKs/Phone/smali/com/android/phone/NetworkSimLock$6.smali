.class Lcom/android/phone/NetworkSimLock$6;
.super Ljava/lang/Object;
.source "NetworkSimLock.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/NetworkSimLock;->simLockUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkSimLock;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkSimLock;)V
    .locals 0
    .parameter

    .prologue
    .line 280
    iput-object p1, p0, Lcom/android/phone/NetworkSimLock$6;->this$0:Lcom/android/phone/NetworkSimLock;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 282
    const-string v2, "NetworkSimLock"

    const-string v3, "press ok button"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v2, p0, Lcom/android/phone/NetworkSimLock$6;->this$0:Lcom/android/phone/NetworkSimLock;

    #getter for: Lcom/android/phone/NetworkSimLock;->mSimLock:Z
    invoke-static {v2}, Lcom/android/phone/NetworkSimLock;->access$300(Lcom/android/phone/NetworkSimLock;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 284
    iget-object v2, p0, Lcom/android/phone/NetworkSimLock$6;->this$0:Lcom/android/phone/NetworkSimLock;

    invoke-virtual {v2}, Lcom/android/phone/NetworkSimLock;->finish()V

    .line 300
    :goto_0
    return-void

    .line 287
    :cond_0
    iget-object v2, p0, Lcom/android/phone/NetworkSimLock$6;->this$0:Lcom/android/phone/NetworkSimLock;

    #getter for: Lcom/android/phone/NetworkSimLock;->mChannelName:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/phone/NetworkSimLock;->access$800(Lcom/android/phone/NetworkSimLock;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 288
    .local v1, number:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_1

    .line 290
    iget-object v2, p0, Lcom/android/phone/NetworkSimLock$6;->this$0:Lcom/android/phone/NetworkSimLock;

    #getter for: Lcom/android/phone/NetworkSimLock;->mChannelName:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/phone/NetworkSimLock;->access$800(Lcom/android/phone/NetworkSimLock;)Landroid/widget/EditText;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 291
    iget-object v2, p0, Lcom/android/phone/NetworkSimLock$6;->this$0:Lcom/android/phone/NetworkSimLock;

    const v3, 0x7f0e049d

    invoke-virtual {v2, v3}, Lcom/android/phone/NetworkSimLock;->displayInfo(I)V

    goto :goto_0

    .line 295
    :cond_1
    iget-object v2, p0, Lcom/android/phone/NetworkSimLock$6;->this$0:Lcom/android/phone/NetworkSimLock;

    const v3, 0xffff

    const v4, 0x7f0e037a

    invoke-virtual {v2, v3, v4}, Lcom/android/phone/NetworkSimLock;->displayProgressDialog(II)V

    .line 296
    iget-object v2, p0, Lcom/android/phone/NetworkSimLock$6;->this$0:Lcom/android/phone/NetworkSimLock;

    #getter for: Lcom/android/phone/NetworkSimLock;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/phone/NetworkSimLock;->access$900(Lcom/android/phone/NetworkSimLock;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x64

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 297
    .local v0, callback:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/phone/NetworkSimLock$6;->this$0:Lcom/android/phone/NetworkSimLock;

    #getter for: Lcom/android/phone/NetworkSimLock;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/phone/NetworkSimLock;->access$1000(Lcom/android/phone/NetworkSimLock;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-static {}, Lcom/android/phone/NetworkSimLock;->access$200()I

    move-result v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1, v0}, Lcom/android/internal/telephony/Phone;->setSubsidyLock(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method
