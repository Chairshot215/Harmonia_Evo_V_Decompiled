.class Lcom/android/phone/NetworkModeSelectionActivity$1;
.super Ljava/lang/Object;
.source "NetworkModeSelectionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkModeSelectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mChoosePos:I

.field final synthetic this$0:Lcom/android/phone/NetworkModeSelectionActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkModeSelectionActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/phone/NetworkModeSelectionActivity$1;->this$0:Lcom/android/phone/NetworkModeSelectionActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/NetworkModeSelectionActivity$1;->mChoosePos:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 99
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 100
    iget v1, p0, Lcom/android/phone/NetworkModeSelectionActivity$1;->mChoosePos:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/android/phone/NetworkModeSelectionActivity$1;->mChoosePos:I

    iget-object v2, p0, Lcom/android/phone/NetworkModeSelectionActivity$1;->this$0:Lcom/android/phone/NetworkModeSelectionActivity;

    #getter for: Lcom/android/phone/NetworkModeSelectionActivity;->mIndex:I
    invoke-static {v2}, Lcom/android/phone/NetworkModeSelectionActivity;->access$100(Lcom/android/phone/NetworkModeSelectionActivity;)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 102
    const-string v1, "NetworkModeSelectionActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPreferredNetworkType mIndex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/NetworkModeSelectionActivity$1;->mChoosePos:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/NetworkModeSelectionActivity$1;->this$0:Lcom/android/phone/NetworkModeSelectionActivity;

    iget-object v1, v1, Lcom/android/phone/NetworkModeSelectionActivity;->itemIndexArray:[Ljava/lang/String;

    iget v2, p0, Lcom/android/phone/NetworkModeSelectionActivity$1;->mChoosePos:I

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 105
    .local v0, index:I
    const-string v1, "NetworkModeSelectionActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPreferredNetworkType to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v1, p0, Lcom/android/phone/NetworkModeSelectionActivity$1;->this$0:Lcom/android/phone/NetworkModeSelectionActivity;

    #getter for: Lcom/android/phone/NetworkModeSelectionActivity;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/phone/NetworkModeSelectionActivity;->access$200(Lcom/android/phone/NetworkModeSelectionActivity;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .end local v0           #index:I
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/phone/NetworkModeSelectionActivity$1;->this$0:Lcom/android/phone/NetworkModeSelectionActivity;

    invoke-virtual {v1}, Lcom/android/phone/NetworkModeSelectionActivity;->finish()V

    .line 117
    :goto_1
    return-void

    .line 111
    :cond_1
    const/4 v1, -0x2

    if-ne p2, v1, :cond_2

    .line 112
    iget-object v1, p0, Lcom/android/phone/NetworkModeSelectionActivity$1;->this$0:Lcom/android/phone/NetworkModeSelectionActivity;

    invoke-virtual {v1}, Lcom/android/phone/NetworkModeSelectionActivity;->finish()V

    goto :goto_1

    .line 114
    :cond_2
    const-string v1, "NetworkModeSelectionActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Click item position: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iput p2, p0, Lcom/android/phone/NetworkModeSelectionActivity$1;->mChoosePos:I

    goto :goto_1

    .line 107
    :catch_0
    move-exception v1

    goto :goto_0
.end method
