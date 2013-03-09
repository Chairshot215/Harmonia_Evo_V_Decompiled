.class Lcom/android/phone/prefernetwork/PreferredNetworkList$5;
.super Ljava/lang/Object;
.source "PreferredNetworkList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/prefernetwork/PreferredNetworkList;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/prefernetwork/PreferredNetworkList;


# direct methods
.method constructor <init>(Lcom/android/phone/prefernetwork/PreferredNetworkList;)V
    .locals 0
    .parameter

    .prologue
    .line 418
    iput-object p1, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList$5;->this$0:Lcom/android/phone/prefernetwork/PreferredNetworkList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 420
    packed-switch p2, :pswitch_data_0

    .line 429
    :goto_0
    return-void

    .line 422
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList$5;->this$0:Lcom/android/phone/prefernetwork/PreferredNetworkList;

    iget-object v2, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList$5;->this$0:Lcom/android/phone/prefernetwork/PreferredNetworkList;

    #getter for: Lcom/android/phone/prefernetwork/PreferredNetworkList;->MNC_DLG_ID:I
    invoke-static {v2}, Lcom/android/phone/prefernetwork/PreferredNetworkList;->access$500(Lcom/android/phone/prefernetwork/PreferredNetworkList;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/phone/prefernetwork/PreferredNetworkList;->showDialog(I)V

    goto :goto_0

    .line 425
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "select_network_op"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 426
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList$5;->this$0:Lcom/android/phone/prefernetwork/PreferredNetworkList;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/phone/prefernetwork/PreferredNetworkList;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 420
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
