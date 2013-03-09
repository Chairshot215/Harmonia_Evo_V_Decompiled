.class Lcom/android/phone/prefernetwork/PreferredNetworkList$2;
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
    .line 147
    iput-object p1, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList$2;->this$0:Lcom/android/phone/prefernetwork/PreferredNetworkList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 149
    iget-object v3, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList$2;->this$0:Lcom/android/phone/prefernetwork/PreferredNetworkList;

    invoke-virtual {v3}, Lcom/android/phone/prefernetwork/PreferredNetworkList;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 150
    const-string v2, ""

    .line 151
    .local v2, result:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList$2;->this$0:Lcom/android/phone/prefernetwork/PreferredNetworkList;

    #getter for: Lcom/android/phone/prefernetwork/PreferredNetworkList;->mOpList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/phone/prefernetwork/PreferredNetworkList;->access$100(Lcom/android/phone/prefernetwork/PreferredNetworkList;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 152
    if-eqz v0, :cond_0

    .line 153
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 156
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList$2;->this$0:Lcom/android/phone/prefernetwork/PreferredNetworkList;

    #getter for: Lcom/android/phone/prefernetwork/PreferredNetworkList;->mOpList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/phone/prefernetwork/PreferredNetworkList;->access$100(Lcom/android/phone/prefernetwork/PreferredNetworkList;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/prefernetwork/PreferredNetworkList$OpData;

    invoke-virtual {v3}, Lcom/android/phone/prefernetwork/PreferredNetworkList$OpData;->getMnc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    :cond_1
    iget-object v3, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList$2;->this$0:Lcom/android/phone/prefernetwork/PreferredNetworkList;

    invoke-virtual {v3}, Lcom/android/phone/prefernetwork/PreferredNetworkList;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 159
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "code_list"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    iget-object v3, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList$2;->this$0:Lcom/android/phone/prefernetwork/PreferredNetworkList;

    const/4 v4, -0x1

    invoke-virtual {v3, v4, v1}, Lcom/android/phone/prefernetwork/PreferredNetworkList;->setResult(ILandroid/content/Intent;)V

    .line 162
    .end local v0           #i:I
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #result:Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList$2;->this$0:Lcom/android/phone/prefernetwork/PreferredNetworkList;

    invoke-virtual {v3}, Lcom/android/phone/prefernetwork/PreferredNetworkList;->finish()V

    .line 163
    return-void
.end method
