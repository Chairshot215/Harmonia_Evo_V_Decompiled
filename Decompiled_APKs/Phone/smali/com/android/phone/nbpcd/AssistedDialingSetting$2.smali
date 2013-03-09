.class Lcom/android/phone/nbpcd/AssistedDialingSetting$2;
.super Ljava/lang/Object;
.source "AssistedDialingSetting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/nbpcd/AssistedDialingSetting;->prepareUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/nbpcd/AssistedDialingSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/nbpcd/AssistedDialingSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 525
    iput-object p1, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting$2;->this$0:Lcom/android/phone/nbpcd/AssistedDialingSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 527
    invoke-static {}, Lcom/android/phone/nbpcd/AssistedDialingSetting;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AssistedDialingSetting"

    const-string v1, "Save the Edit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    :cond_0
    iget-object v0, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting$2;->this$0:Lcom/android/phone/nbpcd/AssistedDialingSetting;

    #calls: Lcom/android/phone/nbpcd/AssistedDialingSetting;->checkFields()Z
    invoke-static {v0}, Lcom/android/phone/nbpcd/AssistedDialingSetting;->access$100(Lcom/android/phone/nbpcd/AssistedDialingSetting;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 529
    iget-object v0, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting$2;->this$0:Lcom/android/phone/nbpcd/AssistedDialingSetting;

    #calls: Lcom/android/phone/nbpcd/AssistedDialingSetting;->updateDatabase()V
    invoke-static {v0}, Lcom/android/phone/nbpcd/AssistedDialingSetting;->access$200(Lcom/android/phone/nbpcd/AssistedDialingSetting;)V

    .line 530
    iget-object v0, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting$2;->this$0:Lcom/android/phone/nbpcd/AssistedDialingSetting;

    #getter for: Lcom/android/phone/nbpcd/AssistedDialingSetting;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/nbpcd/AssistedDialingSetting;->access$300(Lcom/android/phone/nbpcd/AssistedDialingSetting;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting$2;->this$0:Lcom/android/phone/nbpcd/AssistedDialingSetting;

    #getter for: Lcom/android/phone/nbpcd/AssistedDialingSetting;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/nbpcd/AssistedDialingSetting;->access$300(Lcom/android/phone/nbpcd/AssistedDialingSetting;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 531
    iget-object v0, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting$2;->this$0:Lcom/android/phone/nbpcd/AssistedDialingSetting;

    #getter for: Lcom/android/phone/nbpcd/AssistedDialingSetting;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/nbpcd/AssistedDialingSetting;->access$300(Lcom/android/phone/nbpcd/AssistedDialingSetting;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting$2;->this$0:Lcom/android/phone/nbpcd/AssistedDialingSetting;

    #getter for: Lcom/android/phone/nbpcd/AssistedDialingSetting;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/nbpcd/AssistedDialingSetting;->access$300(Lcom/android/phone/nbpcd/AssistedDialingSetting;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 532
    iget-object v0, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting$2;->this$0:Lcom/android/phone/nbpcd/AssistedDialingSetting;

    const/4 v1, 0x0

    #calls: Lcom/android/phone/nbpcd/AssistedDialingSetting;->change2EditMode(Z)V
    invoke-static {v0, v1}, Lcom/android/phone/nbpcd/AssistedDialingSetting;->access$400(Lcom/android/phone/nbpcd/AssistedDialingSetting;Z)V

    .line 534
    :cond_1
    return-void
.end method
