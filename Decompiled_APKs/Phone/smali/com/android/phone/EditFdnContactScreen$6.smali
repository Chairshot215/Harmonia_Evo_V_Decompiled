.class Lcom/android/phone/EditFdnContactScreen$6;
.super Ljava/lang/Thread;
.source "EditFdnContactScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/EditFdnContactScreen;->getAlphaTagMaxLength()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EditFdnContactScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/EditFdnContactScreen;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 686
    iput-object p1, p0, Lcom/android/phone/EditFdnContactScreen$6;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 689
    :try_start_0
    const-string v3, "simphonebook"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 691
    .local v1, simPhoneBook:Lcom/android/internal/telephony/IIccPhoneBook;
    const/16 v3, 0x6f3b

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsSize(I)[I

    move-result-object v2

    .line 697
    .local v2, size:[I
    array-length v3, v2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    .line 705
    .end local v1           #simPhoneBook:Lcom/android/internal/telephony/IIccPhoneBook;
    .end local v2           #size:[I
    :goto_0
    return-void

    .line 699
    .restart local v1       #simPhoneBook:Lcom/android/internal/telephony/IIccPhoneBook;
    .restart local v2       #size:[I
    :cond_0
    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$6;->this$0:Lcom/android/phone/EditFdnContactScreen;

    const/4 v4, 0x0

    aget v4, v2, v4

    add-int/lit8 v4, v4, -0xe

    #setter for: Lcom/android/phone/EditFdnContactScreen;->mMaxAlphaTagLength:I
    invoke-static {v3, v4}, Lcom/android/phone/EditFdnContactScreen;->access$902(Lcom/android/phone/EditFdnContactScreen;I)I

    .line 700
    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$6;->this$0:Lcom/android/phone/EditFdnContactScreen;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mMaxAlphaTagLength is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/EditFdnContactScreen$6;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mMaxAlphaTagLength:I
    invoke-static {v5}, Lcom/android/phone/EditFdnContactScreen;->access$900(Lcom/android/phone/EditFdnContactScreen;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/phone/EditFdnContactScreen;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/EditFdnContactScreen;->access$1000(Lcom/android/phone/EditFdnContactScreen;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 702
    .end local v1           #simPhoneBook:Lcom/android/internal/telephony/IIccPhoneBook;
    .end local v2           #size:[I
    :catch_0
    move-exception v0

    .line 703
    .local v0, ex:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$6;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/phone/EditFdnContactScreen;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/EditFdnContactScreen;->access$1000(Lcom/android/phone/EditFdnContactScreen;Ljava/lang/String;)V

    goto :goto_0
.end method
