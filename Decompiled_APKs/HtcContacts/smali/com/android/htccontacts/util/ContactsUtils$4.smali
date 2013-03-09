.class final Lcom/android/htccontacts/util/ContactsUtils$4;
.super Ljava/lang/Thread;
.source "ContactsUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/util/ContactsUtils;->getSIMMaxAlphaTagLengthWithCallback(Lcom/android/htccontacts/util/ContactsUtils$GetSIMMaxAlphaTagLengthCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/android/htccontacts/util/ContactsUtils$GetSIMMaxAlphaTagLengthCallback;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/util/ContactsUtils$GetSIMMaxAlphaTagLengthCallback;)V
    .locals 0
    .parameter

    .prologue
    .line 2543
    iput-object p1, p0, Lcom/android/htccontacts/util/ContactsUtils$4;->val$callback:Lcom/android/htccontacts/util/ContactsUtils$GetSIMMaxAlphaTagLengthCallback;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 2547
    :try_start_0
    const-string v6, "simphonebook"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v2

    .line 2549
    .local v2, simPhoneBook:Lcom/android/internal/telephony/IIccPhoneBook;
    const/16 v6, 0x6f3a

    invoke-interface {v2, v6}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsSize(I)[I

    move-result-object v3

    .line 2550
    .local v3, size:[I
    if-eqz v3, :cond_2

    .line 2551
    const-string v4, ""

    .line 2552
    .local v4, str:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v6, v3

    if-ge v0, v6, :cond_0

    .line 2553
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " size["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v3, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2552
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2556
    :cond_0
    array-length v6, v3

    const/4 v7, 0x3

    if-lt v6, v7, :cond_2

    .line 2557
    const/4 v1, -0x1

    .line 2559
    .local v1, maxLen:I
    const/4 v6, 0x0

    aget v6, v3, v6

    add-int/lit8 v1, v6, -0xe

    .line 2560
    if-gez v1, :cond_1

    move v1, v5

    .end local v1           #maxLen:I
    :cond_1
    invoke-static {v1}, Lcom/android/htccontacts/util/ContactsUtils;->access$102(I)I

    .line 2564
    .end local v0           #i:I
    .end local v4           #str:Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/android/htccontacts/util/ContactsUtils;->access$100()I

    move-result v5

    if-ltz v5, :cond_3

    .line 2565
    iget-object v5, p0, Lcom/android/htccontacts/util/ContactsUtils$4;->val$callback:Lcom/android/htccontacts/util/ContactsUtils$GetSIMMaxAlphaTagLengthCallback;

    invoke-static {}, Lcom/android/htccontacts/util/ContactsUtils;->access$100()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/android/htccontacts/util/ContactsUtils$GetSIMMaxAlphaTagLengthCallback;->callback(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2570
    .end local v2           #simPhoneBook:Lcom/android/internal/telephony/IIccPhoneBook;
    .end local v3           #size:[I
    :cond_3
    :goto_1
    return-void

    .line 2567
    :catch_0
    move-exception v5

    goto :goto_1
.end method
