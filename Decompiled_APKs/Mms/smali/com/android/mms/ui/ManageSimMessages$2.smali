.class Lcom/android/mms/ui/ManageSimMessages$2;
.super Ljava/lang/Object;
.source "ManageSimMessages.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ManageSimMessages;->onContextItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ManageSimMessages;

.field final synthetic val$cursor:Landroid/database/Cursor;

.field final synthetic val$cursorpos:I


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ManageSimMessages;Landroid/database/Cursor;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 416
    iput-object p1, p0, Lcom/android/mms/ui/ManageSimMessages$2;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    iput-object p2, p0, Lcom/android/mms/ui/ManageSimMessages$2;->val$cursor:Landroid/database/Cursor;

    iput p3, p0, Lcom/android/mms/ui/ManageSimMessages$2;->val$cursorpos:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 418
    iget-object v7, p0, Lcom/android/mms/ui/ManageSimMessages$2;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    const/4 v8, 0x2

    #calls: Lcom/android/mms/ui/ManageSimMessages;->updateState(I)V
    invoke-static {v7, v8}, Lcom/android/mms/ui/ManageSimMessages;->access$200(Lcom/android/mms/ui/ManageSimMessages;I)V

    .line 420
    iget-object v7, p0, Lcom/android/mms/ui/ManageSimMessages$2;->val$cursor:Landroid/database/Cursor;

    iget v8, p0, Lcom/android/mms/ui/ManageSimMessages$2;->val$cursorpos:I

    invoke-interface {v7, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 421
    const/4 v6, 0x0

    .line 422
    .local v6, messageIndexString:Ljava/lang/String;
    const/4 v4, 0x0

    .line 423
    .local v4, isCdmaFormat:I
    const/4 v5, 0x0

    .line 425
    .local v5, messageId:I
    :try_start_0
    iget-object v7, p0, Lcom/android/mms/ui/ManageSimMessages$2;->val$cursor:Landroid/database/Cursor;

    iget-object v8, p0, Lcom/android/mms/ui/ManageSimMessages$2;->val$cursor:Landroid/database/Cursor;

    const-string v9, "index_on_sim"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 427
    iget-object v7, p0, Lcom/android/mms/ui/ManageSimMessages$2;->val$cursor:Landroid/database/Cursor;

    iget-object v8, p0, Lcom/android/mms/ui/ManageSimMessages$2;->val$cursor:Landroid/database/Cursor;

    const-string v9, "is_cdma_format"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 429
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_0

    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v8, 0x61

    if-eq v7, v8, :cond_0

    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v8, 0xad

    if-ne v7, v8, :cond_1

    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 433
    iget-object v7, p0, Lcom/android/mms/ui/ManageSimMessages$2;->val$cursor:Landroid/database/Cursor;

    iget-object v8, p0, Lcom/android/mms/ui/ManageSimMessages$2;->val$cursor:Landroid/database/Cursor;

    const-string v9, "message_id"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Landroid/database/StaleDataException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 437
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_3

    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v8, 0x61

    if-eq v7, v8, :cond_2

    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v8, 0xad

    if-ne v7, v8, :cond_9

    :cond_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_9

    .line 441
    :cond_3
    if-nez v5, :cond_6

    .line 442
    iget-object v7, p0, Lcom/android/mms/ui/ManageSimMessages$2;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-virtual {v7}, Lcom/android/mms/ui/ManageSimMessages;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const/4 v7, 0x1

    if-ne v4, v7, :cond_5

    const/4 v7, 0x1

    :goto_0
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v8, v7, v9}, Lcom/android/mms/util/SimIoUtil;->deleteFromSim(Landroid/content/Context;ZI)V

    .line 462
    :cond_4
    :goto_1
    return-void

    .line 434
    :catch_0
    move-exception v0

    .line 435
    .local v0, e:Landroid/database/StaleDataException;
    goto :goto_1

    .line 442
    .end local v0           #e:Landroid/database/StaleDataException;
    :cond_5
    const/4 v7, 0x0

    goto :goto_0

    .line 444
    :cond_6
    iget-object v7, p0, Lcom/android/mms/ui/ManageSimMessages$2;->val$cursor:Landroid/database/Cursor;

    const/4 v8, -0x1

    invoke-interface {v7, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 445
    :cond_7
    :goto_2
    iget-object v7, p0, Lcom/android/mms/ui/ManageSimMessages$2;->val$cursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    .line 446
    iget-object v7, p0, Lcom/android/mms/ui/ManageSimMessages$2;->val$cursor:Landroid/database/Cursor;

    iget-object v8, p0, Lcom/android/mms/ui/ManageSimMessages$2;->val$cursor:Landroid/database/Cursor;

    const-string v9, "message_id"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-ne v5, v7, :cond_7

    .line 447
    iget-object v7, p0, Lcom/android/mms/ui/ManageSimMessages$2;->val$cursor:Landroid/database/Cursor;

    iget-object v8, p0, Lcom/android/mms/ui/ManageSimMessages$2;->val$cursor:Landroid/database/Cursor;

    const-string v9, "index_on_sim"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 449
    iget-object v7, p0, Lcom/android/mms/ui/ManageSimMessages$2;->val$cursor:Landroid/database/Cursor;

    iget-object v8, p0, Lcom/android/mms/ui/ManageSimMessages$2;->val$cursor:Landroid/database/Cursor;

    const-string v9, "is_cdma_format"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 452
    iget-object v7, p0, Lcom/android/mms/ui/ManageSimMessages$2;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-virtual {v7}, Lcom/android/mms/ui/ManageSimMessages;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const/4 v7, 0x1

    if-ne v4, v7, :cond_8

    const/4 v7, 0x1

    :goto_3
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v8, v7, v9}, Lcom/android/mms/util/SimIoUtil;->deleteFromSim(Landroid/content/Context;ZI)V

    goto :goto_2

    :cond_8
    const/4 v7, 0x0

    goto :goto_3

    .line 457
    :cond_9
    invoke-static {v6}, Lcom/android/mms/util/SimIndexUtil;->getSimIndexes(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 458
    .local v3, indexes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 459
    .local v2, index:Ljava/lang/Integer;
    iget-object v7, p0, Lcom/android/mms/ui/ManageSimMessages$2;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-virtual {v7}, Lcom/android/mms/ui/ManageSimMessages;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const/4 v7, 0x1

    if-ne v4, v7, :cond_a

    const/4 v7, 0x1

    :goto_5
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v8, v7, v9}, Lcom/android/mms/util/SimIoUtil;->deleteFromSim(Landroid/content/Context;ZI)V

    goto :goto_4

    :cond_a
    const/4 v7, 0x0

    goto :goto_5
.end method
