.class public Lcom/android/mms/transaction/MmsMessageSender;
.super Ljava/lang/Object;
.source "MmsMessageSender.java"

# interfaces
.implements Lcom/android/mms/transaction/MessageSender;


# static fields
.field private static final DEFAULT_DELIVERY_REPORT_MODE:Z = false

.field private static final DEFAULT_EXPIRY_TIME:J = 0x93a80L

.field private static final DEFAULT_MESSAGE_CLASS:Ljava/lang/String; = "personal"

.field private static final DEFAULT_PRIORITY:I = 0x81

.field private static final DEFAULT_READ_REPORT_MODE:Z = false

.field private static final TAG:Ljava/lang/String; = "MmsMessageSender"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIsFilterReadReport:Z

.field private mMessageUri:Landroid/net/Uri;

.field private final mThreadId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;J)V
    .locals 2
    .parameter "context"
    .parameter "location"
    .parameter "threadId"

    .prologue
    .line 73
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/android/mms/transaction/MmsMessageSender;->mContext:Landroid/content/Context;

    .line 75
    iput-object p2, p0, Lcom/android/mms/transaction/MmsMessageSender;->mMessageUri:Landroid/net/Uri;

    .line 76
    iput-wide p3, p0, Lcom/android/mms/transaction/MmsMessageSender;->mThreadId:J

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/transaction/MmsMessageSender;->mIsFilterReadReport:Z

    .line 79
    iget-object v0, p0, Lcom/android/mms/transaction/MmsMessageSender;->mMessageUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null message URI."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;JZ)V
    .locals 2
    .parameter "context"
    .parameter "location"
    .parameter "threadId"
    .parameter "isFilterReadReport"

    .prologue
    .line 85
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/android/mms/transaction/MmsMessageSender;->mContext:Landroid/content/Context;

    .line 87
    iput-object p2, p0, Lcom/android/mms/transaction/MmsMessageSender;->mMessageUri:Landroid/net/Uri;

    .line 88
    iput-wide p3, p0, Lcom/android/mms/transaction/MmsMessageSender;->mThreadId:J

    .line 89
    iput-boolean p5, p0, Lcom/android/mms/transaction/MmsMessageSender;->mIsFilterReadReport:Z

    .line 91
    iget-object v0, p0, Lcom/android/mms/transaction/MmsMessageSender;->mMessageUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null message URI."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    return-void
.end method

.method private appendSignature()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 99
    iget-object v7, p0, Lcom/android/mms/transaction/MmsMessageSender;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 100
    .local v3, pref:Landroid/content/SharedPreferences;
    if-eqz v3, :cond_0

    const-string v7, "pref_key_signature_enabled"

    invoke-interface {v3, v7, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    const-string v7, "pref_key_signature_text"

    iget-object v8, p0, Lcom/android/mms/transaction/MmsMessageSender;->mContext:Landroid/content/Context;

    invoke-static {v8, v9}, Lcom/android/mms/ui/MessageUtils;->getDefaultPrefSignature(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 105
    .local v4, signatureText:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 106
    const-string v7, "MmsMessageSender"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Uri: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/mms/transaction/MmsMessageSender;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", append ## signature ## : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :try_start_0
    iget-object v7, p0, Lcom/android/mms/transaction/MmsMessageSender;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/mms/transaction/MmsMessageSender;->mMessageUri:Landroid/net/Uri;

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lcom/android/mms/model/SlideshowModel;->createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/android/mms/model/SlideshowModel;

    move-result-object v2

    .line 110
    .local v2, model:Lcom/android/mms/model/SlideshowModel;
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v5

    .line 111
    .local v5, slide:Lcom/android/mms/model/SlideModel;
    if-eqz v5, :cond_0

    .line 113
    new-instance v1, Lcom/android/mms/ui/SlideshowEditor;

    iget-object v7, p0, Lcom/android/mms/transaction/MmsMessageSender;->mContext:Landroid/content/Context;

    invoke-direct {v1, v7, v2}, Lcom/android/mms/ui/SlideshowEditor;-><init>(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;)V

    .line 114
    .local v1, editor:Lcom/android/mms/ui/SlideshowEditor;
    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v6

    .line 115
    .local v6, text:Lcom/android/mms/model/TextModel;
    if-eqz v6, :cond_2

    .line 117
    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lcom/android/mms/ui/SlideshowEditor;->changeText(ILjava/lang/String;)V

    .line 123
    :goto_1
    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->removeCache()V

    .line 124
    iget-object v7, p0, Lcom/android/mms/transaction/MmsMessageSender;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/transaction/MmsMessageSender;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/google/android/mms/pdu/PduPersister;->updateParts(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduBody;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 126
    .end local v1           #editor:Lcom/android/mms/ui/SlideshowEditor;
    .end local v2           #model:Lcom/android/mms/model/SlideshowModel;
    .end local v5           #slide:Lcom/android/mms/model/SlideModel;
    .end local v6           #text:Lcom/android/mms/model/TextModel;
    :catch_0
    move-exception v0

    .line 127
    .local v0, e:Lcom/google/android/mms/MmsException;
    invoke-virtual {v0}, Lcom/google/android/mms/MmsException;->printStackTrace()V

    goto/16 :goto_0

    .line 120
    .end local v0           #e:Lcom/google/android/mms/MmsException;
    .restart local v1       #editor:Lcom/android/mms/ui/SlideshowEditor;
    .restart local v2       #model:Lcom/android/mms/model/SlideshowModel;
    .restart local v5       #slide:Lcom/android/mms/model/SlideModel;
    .restart local v6       #text:Lcom/android/mms/model/TextModel;
    :cond_2
    const/4 v7, 0x0

    :try_start_1
    invoke-virtual {v1, v7, v4}, Lcom/android/mms/ui/SlideshowEditor;->changeText(ILjava/lang/String;)V
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static sendReadRec(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .parameter "context"
    .parameter "to"
    .parameter "messageId"
    .parameter "status"

    .prologue
    .line 246
    const/4 v1, 0x1

    new-array v5, v1, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 247
    .local v5, sender:[Lcom/google/android/mms/pdu/EncodedStringValue;
    const/4 v1, 0x0

    new-instance v2, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v2, p1}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    aput-object v2, v5, v1

    .line 251
    if-eqz p2, :cond_0

    .line 254
    :try_start_0
    new-instance v0, Lcom/google/android/mms/pdu/ReadRecInd;

    new-instance v1, Lcom/google/android/mms/pdu/EncodedStringValue;

    const-string v2, "insert-address-token"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/16 v3, 0x12

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/mms/pdu/ReadRecInd;-><init>(Lcom/google/android/mms/pdu/EncodedStringValue;[BII[Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 261
    .local v0, readRec:Lcom/google/android/mms/pdu/ReadRecInd;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/ReadRecInd;->setDate(J)V

    .line 263
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;

    .line 264
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 271
    .end local v0           #readRec:Lcom/google/android/mms/pdu/ReadRecInd;
    :cond_0
    :goto_0
    return-void

    .line 266
    :catch_0
    move-exception v6

    .line 267
    .local v6, e:Lcom/google/android/mms/InvalidHeaderValueException;
    const-string v1, "MmsMessageSender"

    const-string v2, "Invalide header value"

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 268
    .end local v6           #e:Lcom/google/android/mms/InvalidHeaderValueException;
    :catch_1
    move-exception v6

    .line 269
    .local v6, e:Lcom/google/android/mms/MmsException;
    const-string v1, "MmsMessageSender"

    const-string v2, "Persist message failed"

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private updatePreferencesHeaders(Lcom/google/android/mms/pdu/SendReq;)V
    .locals 9
    .parameter "sendReq"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x80

    const/4 v8, 0x0

    const/16 v5, 0x81

    .line 209
    iget-object v3, p0, Lcom/android/mms/transaction/MmsMessageSender;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 213
    .local v1, prefs:Landroid/content/SharedPreferences;
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v6, 0xd8

    if-eq v3, v6, :cond_0

    .line 214
    const-string v3, "pref_key_mms_expiry"

    const-wide/32 v6, 0x93a80

    invoke-interface {v1, v3, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Lcom/google/android/mms/pdu/SendReq;->setExpiry(J)V

    .line 220
    :cond_0
    const-string v3, "pref_key_mms_priority"

    const-string v6, "medium"

    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->convertPriorityId(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/google/android/mms/pdu/SendReq;->setPriority(I)V

    .line 225
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportMMSDeliveryReport()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 226
    const-string v3, "pref_key_mms_delivery_reports"

    invoke-interface {v1, v3, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 228
    .local v0, dr:Z
    if-eqz v0, :cond_1

    move v3, v4

    :goto_0
    invoke-virtual {p1, v3}, Lcom/google/android/mms/pdu/SendReq;->setDeliveryReport(I)V

    .line 235
    .end local v0           #dr:Z
    :goto_1
    iget-boolean v3, p0, Lcom/android/mms/transaction/MmsMessageSender;->mIsFilterReadReport:Z

    if-nez v3, :cond_4

    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportMMSReadReport()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 236
    const-string v3, "pref_key_mms_read_reports"

    invoke-interface {v1, v3, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 238
    .local v2, rr:Z
    if-eqz v2, :cond_3

    :goto_2
    invoke-virtual {p1, v4}, Lcom/google/android/mms/pdu/SendReq;->setReadReport(I)V

    .line 243
    .end local v2           #rr:Z
    :goto_3
    return-void

    .restart local v0       #dr:Z
    :cond_1
    move v3, v5

    .line 228
    goto :goto_0

    .line 230
    .end local v0           #dr:Z
    :cond_2
    invoke-virtual {p1, v5}, Lcom/google/android/mms/pdu/SendReq;->setDeliveryReport(I)V

    goto :goto_1

    .restart local v2       #rr:Z
    :cond_3
    move v4, v5

    .line 238
    goto :goto_2

    .line 240
    .end local v2           #rr:Z
    :cond_4
    invoke-virtual {p1, v5}, Lcom/google/android/mms/pdu/SendReq;->setReadReport(I)V

    goto :goto_3
.end method


# virtual methods
.method public getSentMessage()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/mms/transaction/MmsMessageSender;->mMessageUri:Landroid/net/Uri;

    return-object v0
.end method

.method public sendMessage(J)Z
    .locals 16
    .parameter "token"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 140
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/MmsMessageSender;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v9

    .line 141
    .local v9, p:Lcom/google/android/mms/pdu/PduPersister;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/MmsMessageSender;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v9, v2}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v10

    .line 143
    .local v10, pdu:Lcom/google/android/mms/pdu/GenericPdu;
    invoke-virtual {v10}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v2

    const/16 v3, 0x80

    if-eq v2, v3, :cond_0

    .line 144
    new-instance v2, Lcom/google/android/mms/MmsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object v12, v10

    .line 147
    check-cast v12, Lcom/google/android/mms/pdu/SendReq;

    .line 149
    .local v12, sendReq:Lcom/google/android/mms/pdu/SendReq;
    invoke-static {}, Lcom/android/mms/MmsApp;->isSense_3_0()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 150
    invoke-virtual {v12}, Lcom/google/android/mms/pdu/SendReq;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v12}, Lcom/google/android/mms/pdu/SendReq;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v2

    array-length v2, v2

    :goto_0
    invoke-virtual {v12}, Lcom/google/android/mms/pdu/SendReq;->getCc()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v12}, Lcom/google/android/mms/pdu/SendReq;->getCc()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v3

    array-length v3, v3

    :goto_1
    add-int/2addr v3, v2

    invoke-virtual {v12}, Lcom/google/android/mms/pdu/SendReq;->getBcc()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v12}, Lcom/google/android/mms/pdu/SendReq;->getBcc()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v2

    array-length v2, v2

    :goto_2
    add-int v11, v3, v2

    .line 153
    .local v11, receipent:I
    invoke-virtual {v12}, Lcom/google/android/mms/pdu/SendReq;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v2

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    :goto_3
    invoke-virtual {v12}, Lcom/google/android/mms/pdu/SendReq;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v3

    invoke-static {v2, v3, v11}, Lcom/android/mms/ui/MessageUtils;->sendMMSSentLog(ZLcom/google/android/mms/pdu/PduBody;I)V

    .line 154
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/MmsMessageSender;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->sendMsgCountLog(Landroid/content/Context;)V

    .line 159
    .end local v11           #receipent:I
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/mms/transaction/MmsMessageSender;->updatePreferencesHeaders(Lcom/google/android/mms/pdu/SendReq;)V

    .line 162
    const-string v2, "personal"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/google/android/mms/pdu/SendReq;->setMessageClass([B)V

    .line 165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v12, v2, v3}, Lcom/google/android/mms/pdu/SendReq;->setDate(J)V

    .line 167
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/MmsMessageSender;->mMessageUri:Landroid/net/Uri;

    const/4 v3, 0x1

    invoke-virtual {v9, v2, v12, v3}, Lcom/google/android/mms/pdu/PduPersister;->updateHeaders(Landroid/net/Uri;Lcom/google/android/mms/pdu/SendReq;Z)V

    .line 170
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/MmsMessageSender;->mMessageUri:Landroid/net/Uri;

    sget-object v3, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9, v2, v3}, Lcom/google/android/mms/pdu/PduPersister;->move(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/transaction/MmsMessageSender;->mMessageUri:Landroid/net/Uri;

    .line 173
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v2

    const-string v3, "mms"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/MmsMessageSender;->mMessageUri:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/mms/util/DraftCache;->remove(Ljava/lang/String;J)Z

    .line 176
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/MmsMessageSender;->mMessageUri:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-static {v2, v0, v1}, Lcom/android/mms/util/SendingProgressTokenManager;->put(Ljava/lang/Object;J)V

    .line 177
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/MmsMessageSender;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/MmsMessageSender;->mContext:Landroid/content/Context;

    const-class v5, Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 181
    const-string v2, "Recycler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MmsMessageSender mThreadId :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/mms/transaction/MmsMessageSender;->mThreadId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/mms/transaction/MmsMessageSender;->mThreadId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 183
    const-string v2, "Recycler"

    const-string v3, "getMmsRecycler AAAAAAAAAA"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportContactBaseConversation()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 186
    const-string v2, "content://mms-sms-v2/get-threadID-from-contactID"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 187
    .local v15, threadIdUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/MmsMessageSender;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/mms/transaction/MmsMessageSender;->mThreadId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 189
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_3

    .line 190
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 191
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 192
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 193
    .local v13, threadId:J
    invoke-static {}, Lcom/android/mms/util/Recycler;->getMmsRecycler()Lcom/android/mms/util/Recycler$MmsRecycler;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/MmsMessageSender;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v13, v14}, Lcom/android/mms/util/Recycler$MmsRecycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V

    .line 195
    .end local v13           #threadId:J
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 204
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v15           #threadIdUri:Landroid/net/Uri;
    :cond_3
    :goto_4
    const/4 v2, 0x1

    return v2

    .line 150
    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 153
    .restart local v11       #receipent:I
    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 199
    .end local v11           #receipent:I
    :cond_8
    invoke-static {}, Lcom/android/mms/util/Recycler;->getMmsRecycler()Lcom/android/mms/util/Recycler$MmsRecycler;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/MmsMessageSender;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/mms/transaction/MmsMessageSender;->mThreadId:J

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/mms/util/Recycler$MmsRecycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V

    goto :goto_4
.end method
