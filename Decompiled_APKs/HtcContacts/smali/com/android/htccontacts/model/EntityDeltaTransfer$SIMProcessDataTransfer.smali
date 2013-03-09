.class public Lcom/android/htccontacts/model/EntityDeltaTransfer$SIMProcessDataTransfer;
.super Ljava/lang/Object;
.source "EntityDeltaTransfer.java"

# interfaces
.implements Lcom/android/htccontacts/model/EntityDeltaTransfer$ProcessDataTransfer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/model/EntityDeltaTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SIMProcessDataTransfer"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 387
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 388
    iput-object p1, p0, Lcom/android/htccontacts/model/EntityDeltaTransfer$SIMProcessDataTransfer;->mContext:Landroid/content/Context;

    .line 389
    return-void
.end method


# virtual methods
.method public processDataTransfer(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 9
    .parameter "targetAccountType"
    .parameter "mimetype"
    .parameter "targetValue"

    .prologue
    const/4 v8, 0x0

    .line 394
    const-string v7, "vnd.android.cursor.item/name"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 395
    const-string v7, "data1"

    invoke-virtual {p3, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 396
    .local v2, name:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 397
    invoke-static {}, Lcom/android/htccontacts/util/ContactsUtils;->getSIMMaxAlphaTagLength()I

    move-result v7

    invoke-static {v2, v7}, Lcom/android/htccontacts/util/ContactsUtils;->trimSIMText(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 398
    .local v5, trimmedName:Ljava/lang/String;
    const-string v7, "data1"

    invoke-virtual {p3, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    .end local v2           #name:Ljava/lang/String;
    .end local v5           #trimmedName:Ljava/lang/String;
    :cond_0
    const-string v7, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 403
    iget-object v7, p0, Lcom/android/htccontacts/model/EntityDeltaTransfer$SIMProcessDataTransfer;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/htccontacts/util/ContactsUtils;->simSupportPhoneLength(Landroid/content/Context;)I

    move-result v1

    .line 405
    .local v1, maxLen:I
    const-string v7, "data1"

    invoke-virtual {p3, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 406
    .local v3, number:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v7, v1, :cond_1

    .line 407
    invoke-virtual {v3, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 408
    .local v6, trimmedNumber:Ljava/lang/String;
    const-string v7, "data1"

    invoke-virtual {p3, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    .end local v1           #maxLen:I
    .end local v3           #number:Ljava/lang/String;
    .end local v6           #trimmedNumber:Ljava/lang/String;
    :cond_1
    const-string v7, "vnd.android.cursor.item/email_v2"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 413
    iget-object v7, p0, Lcom/android/htccontacts/model/EntityDeltaTransfer$SIMProcessDataTransfer;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/htccontacts/util/ContactsUtils;->simSupportEmailLength(Landroid/content/Context;)I

    move-result v1

    .line 415
    .restart local v1       #maxLen:I
    const-string v7, "data1"

    invoke-virtual {p3, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 416
    .local v0, email:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v7, v1, :cond_2

    .line 417
    invoke-virtual {v0, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 418
    .local v4, trimmedAddress:Ljava/lang/String;
    const-string v7, "data1"

    invoke-virtual {p3, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    .end local v0           #email:Ljava/lang/String;
    .end local v1           #maxLen:I
    .end local v4           #trimmedAddress:Ljava/lang/String;
    :cond_2
    return-void
.end method
