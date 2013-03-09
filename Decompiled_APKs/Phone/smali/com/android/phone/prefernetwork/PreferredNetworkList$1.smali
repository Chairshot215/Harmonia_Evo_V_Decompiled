.class Lcom/android/phone/prefernetwork/PreferredNetworkList$1;
.super Ljava/lang/Object;
.source "PreferredNetworkList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/prefernetwork/PreferredNetworkList;
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
    .line 140
    iput-object p1, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList$1;->this$0:Lcom/android/phone/prefernetwork/PreferredNetworkList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList$1;->this$0:Lcom/android/phone/prefernetwork/PreferredNetworkList;

    iget-object v1, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList$1;->this$0:Lcom/android/phone/prefernetwork/PreferredNetworkList;

    #getter for: Lcom/android/phone/prefernetwork/PreferredNetworkList;->MNC_ADD_DLG_ID:I
    invoke-static {v1}, Lcom/android/phone/prefernetwork/PreferredNetworkList;->access$000(Lcom/android/phone/prefernetwork/PreferredNetworkList;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/phone/prefernetwork/PreferredNetworkList;->showDialog(I)V

    .line 143
    return-void
.end method
