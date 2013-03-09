.class final Lcom/android/mms/MmsApp$2;
.super Ljava/lang/Object;
.source "MmsApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/MmsApp;->initCarrierID()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1177
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 1179
    const-string v6, "Messaging"

    const-string v7, "Start to get Carrier ID"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    #calls: Lcom/android/mms/MmsApp;->setSmsManagerClass()V
    invoke-static {}, Lcom/android/mms/MmsApp;->access$000()V

    .line 1181
    invoke-static {}, Lcom/android/mms/MmsApp;->access$100()Ljava/lang/Class;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/android/mms/MmsApp;->access$200()Ljava/lang/reflect/Method;

    move-result-object v6

    if-nez v6, :cond_1

    .line 1211
    :cond_0
    :goto_0
    return-void

    .line 1184
    :cond_1
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v5

    .line 1185
    .local v5, smsManager:Landroid/telephony/SmsManager;
    const/4 v2, 0x0

    .line 1187
    .local v2, carrierID:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/android/mms/MmsApp;->access$200()Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v6, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1188
    .local v4, objCarrierID:Ljava/lang/Object;
    if-eqz v4, :cond_2

    .line 1189
    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 1190
    const-string v6, "Messaging"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "get carrierID from NV-item: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1198
    .end local v4           #objCarrierID:Ljava/lang/Object;
    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    .line 1200
    const/16 v6, 0x8

    const/16 v7, 0xa

    :try_start_1
    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1201
    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 1202
    .local v1, bytes:[B
    const/4 v6, 0x0

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mms/MmsApp;->access$302(Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 1203
    const-string v6, "Messaging"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "carrierID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/android/mms/MmsApp;->access$300()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1204
    .end local v1           #bytes:[B
    :catch_0
    move-exception v3

    .line 1205
    .local v3, e:Ljava/lang/Exception;
    const/4 v6, 0x0

    invoke-static {v6}, Lcom/android/mms/MmsApp;->access$302(Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 1206
    const-string v6, "Messaging"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1193
    .end local v3           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 1195
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v6, "Messaging"

    const-string v7, "unable to invoke SmsManager method: getCarrierID()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1209
    .end local v3           #e:Ljava/lang/Exception;
    :cond_3
    const-string v6, "Messaging"

    const-string v7, "Carrier ID is NULL"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
