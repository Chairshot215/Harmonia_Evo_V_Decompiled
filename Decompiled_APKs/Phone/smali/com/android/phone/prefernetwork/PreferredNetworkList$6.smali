.class Lcom/android/phone/prefernetwork/PreferredNetworkList$6;
.super Ljava/lang/Object;
.source "PreferredNetworkList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/prefernetwork/PreferredNetworkList;->showTypeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/prefernetwork/PreferredNetworkList;

.field final synthetic val$r:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Lcom/android/phone/prefernetwork/PreferredNetworkList;Landroid/content/res/Resources;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 446
    iput-object p1, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList$6;->this$0:Lcom/android/phone/prefernetwork/PreferredNetworkList;

    iput-object p2, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList$6;->val$r:Landroid/content/res/Resources;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v4, 0x1

    .line 448
    const-string v0, "HtcNetworkPrefSwitcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User select mode is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    const/4 v0, 0x2

    if-ne v0, p2, :cond_1

    .line 450
    iget-object v0, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList$6;->this$0:Lcom/android/phone/prefernetwork/PreferredNetworkList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "B"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList$6;->this$0:Lcom/android/phone/prefernetwork/PreferredNetworkList;

    #getter for: Lcom/android/phone/prefernetwork/PreferredNetworkList;->mPreferOpCode:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/phone/prefernetwork/PreferredNetworkList;->access$300(Lcom/android/phone/prefernetwork/PreferredNetworkList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/phone/prefernetwork/PreferredNetworkList;->mPreferOpCode:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/phone/prefernetwork/PreferredNetworkList;->access$302(Lcom/android/phone/prefernetwork/PreferredNetworkList;Ljava/lang/String;)Ljava/lang/String;

    .line 451
    iget-object v0, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList$6;->this$0:Lcom/android/phone/prefernetwork/PreferredNetworkList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList$6;->val$r:Landroid/content/res/Resources;

    const v3, 0x7f0e01e6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/prefernetwork/PreferredNetworkList;->access$484(Lcom/android/phone/prefernetwork/PreferredNetworkList;Ljava/lang/Object;)Ljava/lang/String;

    .line 459
    :goto_0
    iget-object v0, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList$6;->this$0:Lcom/android/phone/prefernetwork/PreferredNetworkList;

    iget-object v1, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList$6;->this$0:Lcom/android/phone/prefernetwork/PreferredNetworkList;

    #getter for: Lcom/android/phone/prefernetwork/PreferredNetworkList;->mPreferOpCode:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/prefernetwork/PreferredNetworkList;->access$300(Lcom/android/phone/prefernetwork/PreferredNetworkList;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList$6;->this$0:Lcom/android/phone/prefernetwork/PreferredNetworkList;

    #getter for: Lcom/android/phone/prefernetwork/PreferredNetworkList;->mPreferOpName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/phone/prefernetwork/PreferredNetworkList;->access$400(Lcom/android/phone/prefernetwork/PreferredNetworkList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/phone/prefernetwork/PreferredNetworkList;->addOpEntry(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList$6;->this$0:Lcom/android/phone/prefernetwork/PreferredNetworkList;

    #getter for: Lcom/android/phone/prefernetwork/PreferredNetworkList;->mActionAdapter:Lcom/android/phone/prefernetwork/PreferredNetworkList$ActionAdapter;
    invoke-static {v0}, Lcom/android/phone/prefernetwork/PreferredNetworkList;->access$600(Lcom/android/phone/prefernetwork/PreferredNetworkList;)Lcom/android/phone/prefernetwork/PreferredNetworkList$ActionAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/prefernetwork/PreferredNetworkList$ActionAdapter;->notifyDataSetChanged()V

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList$6;->this$0:Lcom/android/phone/prefernetwork/PreferredNetworkList;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/prefernetwork/PreferredNetworkList;->mTypeDialog:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/android/phone/prefernetwork/PreferredNetworkList;->access$702(Lcom/android/phone/prefernetwork/PreferredNetworkList;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 463
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 464
    return-void

    .line 452
    :cond_1
    if-ne v4, p2, :cond_2

    .line 453
    iget-object v0, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList$6;->this$0:Lcom/android/phone/prefernetwork/PreferredNetworkList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "G"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList$6;->this$0:Lcom/android/phone/prefernetwork/PreferredNetworkList;

    #getter for: Lcom/android/phone/prefernetwork/PreferredNetworkList;->mPreferOpCode:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/phone/prefernetwork/PreferredNetworkList;->access$300(Lcom/android/phone/prefernetwork/PreferredNetworkList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/phone/prefernetwork/PreferredNetworkList;->mPreferOpCode:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/phone/prefernetwork/PreferredNetworkList;->access$302(Lcom/android/phone/prefernetwork/PreferredNetworkList;Ljava/lang/String;)Ljava/lang/String;

    .line 454
    iget-object v0, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList$6;->this$0:Lcom/android/phone/prefernetwork/PreferredNetworkList;

    const-string v1, "(3G)"

    invoke-static {v0, v1}, Lcom/android/phone/prefernetwork/PreferredNetworkList;->access$484(Lcom/android/phone/prefernetwork/PreferredNetworkList;Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_0

    .line 456
    :cond_2
    iget-object v0, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList$6;->this$0:Lcom/android/phone/prefernetwork/PreferredNetworkList;

    const-string v1, "(2G)"

    invoke-static {v0, v1}, Lcom/android/phone/prefernetwork/PreferredNetworkList;->access$484(Lcom/android/phone/prefernetwork/PreferredNetworkList;Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_0
.end method
