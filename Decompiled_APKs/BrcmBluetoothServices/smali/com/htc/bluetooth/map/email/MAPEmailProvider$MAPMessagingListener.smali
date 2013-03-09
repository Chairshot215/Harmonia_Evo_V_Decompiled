.class public Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;
.super Ljava/lang/Object;
.source "MAPEmailProvider.java"

# interfaces
.implements Lcom/htc/util/mail/IMailManagerListener;
.implements Lcom/htc/util/mail/IAccountListener;
.implements Lcom/htc/util/mail/IMailMessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/bluetooth/map/email/MAPEmailProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MAPMessagingListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;


# direct methods
.method public constructor <init>(Lcom/htc/bluetooth/map/email/MAPEmailProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private ProcessGetMsgFromMailAPI()V
    .locals 46

    .prologue
    .line 435
    const-string v2, "MAPEmailProvider "

    const-string v3, "ProcessGetMsgFromMailAPI"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    const/16 v16, 0x0

    .line 438
    .local v16, bMsg:Lcom/broadcom/bt/util/bmsg/BMessage;
    new-instance v34, Lcom/htc/util/mail/mimemessage/MimeMessage;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    #getter for: Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->access$1000(Lcom/htc/bluetooth/map/email/MAPEmailProvider;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v34

    invoke-direct {v0, v2}, Lcom/htc/util/mail/mimemessage/MimeMessage;-><init>(Landroid/content/Context;)V

    .line 439
    .local v34, mimeMessage:Lcom/htc/util/mail/mimemessage/MimeMessage;
    const/16 v36, 0x0

    .line 440
    .local v36, outFile:Ljava/io/File;
    const/16 v28, 0x0

    .line 441
    .local v28, err:Ljava/lang/Throwable;
    const-string v21, ""

    .line 442
    .local v21, bodyContent:Ljava/lang/String;
    new-instance v45, Lorg/apache/commons/codec/net/QuotedPrintableCodec;

    invoke-direct/range {v45 .. v45}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;-><init>()V

    .line 448
    .local v45, translator:Lorg/apache/commons/codec/net/QuotedPrintableCodec;
    :try_start_0
    new-instance v17, Lcom/broadcom/bt/util/bmsg/BMessage;

    invoke-direct/range {v17 .. v17}, Lcom/broadcom/bt/util/bmsg/BMessage;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 449
    .end local v16           #bMsg:Lcom/broadcom/bt/util/bmsg/BMessage;
    .local v17, bMsg:Lcom/broadcom/bt/util/bmsg/BMessage;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    iget-object v2, v2, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mGetMsgMessage:Lcom/htc/util/mail/MailMessage;

    invoke-virtual {v2}, Lcom/htc/util/mail/MailMessage;->isMessageReaded()Z

    move-result v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/broadcom/bt/util/bmsg/BMessage;->setReadStatus(Z)V

    .line 450
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    iget-object v2, v2, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mGetMsgFolderPath:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/broadcom/bt/util/bmsg/BMessage;->setFolder(Ljava/lang/String;)V

    .line 451
    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/broadcom/bt/util/bmsg/BMessage;->setMessageType(B)V

    .line 454
    invoke-virtual/range {v17 .. v17}, Lcom/broadcom/bt/util/bmsg/BMessage;->addOriginator()Lcom/broadcom/bt/util/bmsg/BMessageVCard;

    move-result-object v18

    .line 457
    .local v18, bOriginator:Lcom/broadcom/bt/util/bmsg/BMessageVCard;
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/broadcom/bt/util/bmsg/BMessageVCard;->setVersion(B)V

    .line 458
    const-string v2, "MAPEmailProvider "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Sender = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    iget-object v4, v4, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mGetMsgMessage:Lcom/htc/util/mail/MailMessage;

    invoke-virtual {v4}, Lcom/htc/util/mail/MailMessage;->getSenderAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    iget-object v2, v2, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mGetMsgMessage:Lcom/htc/util/mail/MailMessage;

    invoke-virtual {v2}, Lcom/htc/util/mail/MailMessage;->getSenderName()Ljava/lang/String;

    move-result-object v42

    .line 462
    .local v42, tmpSenderName:Ljava/lang/String;
    const-string v2, "MAPEmailProvider "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Original tmpSenderName"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v42

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    new-instance v26, Ljava/lang/String;

    invoke-static {}, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->access$1100()Ljava/util/BitSet;

    move-result-object v2

    invoke-virtual/range {v42 .. v42}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->encodeQuotedPrintable(Ljava/util/BitSet;[B)[B

    move-result-object v2

    move-object/from16 v0, v26

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    .line 466
    .local v26, encoded_tmpSenderName:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "From: =?UTF-8?Q?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    iget-object v3, v3, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mGetMsgMessage:Lcom/htc/util/mail/MailMessage;

    invoke-virtual {v3}, Lcom/htc/util/mail/MailMessage;->getSenderAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 469
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    iget-object v3, v3, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mGetMsgMessage:Lcom/htc/util/mail/MailMessage;

    invoke-virtual {v3}, Lcom/htc/util/mail/MailMessage;->getSenderName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3, v4}, Lcom/broadcom/bt/util/bmsg/BMessageVCard;->addProperty(BLjava/lang/String;Ljava/lang/String;)Lcom/broadcom/bt/util/bmsg/BMessageVCardProperty;

    .line 470
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    iget-object v3, v3, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mGetMsgMessage:Lcom/htc/util/mail/MailMessage;

    invoke-virtual {v3}, Lcom/htc/util/mail/MailMessage;->getSenderAddress()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3, v4}, Lcom/broadcom/bt/util/bmsg/BMessageVCard;->addProperty(BLjava/lang/String;Ljava/lang/String;)Lcom/broadcom/bt/util/bmsg/BMessageVCardProperty;

    .line 473
    invoke-virtual/range {v17 .. v17}, Lcom/broadcom/bt/util/bmsg/BMessage;->addEnvelope()Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;

    move-result-object v14

    .line 478
    .local v14, bEnv:Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    iget-object v2, v2, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mGetMsgMessage:Lcom/htc/util/mail/MailMessage;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/util/mail/MailMessage;->getAddresses(I)Ljava/util/ArrayList;

    move-result-object v33

    .line 480
    .local v33, mRecipients:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v33, :cond_7

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 481
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v11, v2, [Lcom/htc/util/mail/mimemessage/Address;

    .line 482
    .local v11, addresses:[Lcom/htc/util/mail/mimemessage/Address;
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x32

    if-le v2, v3, :cond_4

    const/16 v38, 0x1

    .line 485
    .local v38, skipPersonalName:Z
    :goto_0
    if-eqz v38, :cond_0

    .line 486
    const-string v2, "MAPEmailProvider "

    const-string v3, "Too many recipients, skip recipient personal name!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "To: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 489
    const/16 v30, 0x0

    .local v30, i:I
    :goto_1
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v30

    if-ge v0, v2, :cond_6

    .line 490
    move-object/from16 v0, v33

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/String;

    .line 493
    .local v35, oneAddress:Ljava/lang/String;
    const-string v2, "\""

    move-object/from16 v0, v35

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v39

    .line 494
    .local v39, stokens:[Ljava/lang/String;
    if-eqz v39, :cond_1

    .line 496
    move-object/from16 v0, v39

    array-length v2, v0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_5

    .line 498
    const/4 v2, 0x2

    aget-object v2, v39, v2

    const-string v3, "<"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 499
    .local v10, Address:Ljava/lang/String;
    const-string v2, ">"

    const-string v3, ""

    invoke-virtual {v10, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 500
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 502
    new-instance v2, Lcom/htc/util/mail/mimemessage/Address;

    const/4 v3, 0x1

    aget-object v3, v39, v3

    invoke-direct {v2, v10, v3}, Lcom/htc/util/mail/mimemessage/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v11, v30

    .line 512
    .end local v10           #Address:Ljava/lang/String;
    :cond_1
    :goto_2
    invoke-virtual {v14}, Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;->addRecipient()Lcom/broadcom/bt/util/bmsg/BMessageVCard;

    move-result-object v19

    .line 513
    .local v19, bRecipient:Lcom/broadcom/bt/util/bmsg/BMessageVCard;
    const/4 v2, 0x1

    aget-object v3, v11, v30

    invoke-virtual {v3}, Lcom/htc/util/mail/mimemessage/Address;->getPersonal()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3, v4}, Lcom/broadcom/bt/util/bmsg/BMessageVCard;->addProperty(BLjava/lang/String;Ljava/lang/String;)Lcom/broadcom/bt/util/bmsg/BMessageVCardProperty;

    .line 514
    const/4 v2, 0x3

    aget-object v3, v11, v30

    invoke-virtual {v3}, Lcom/htc/util/mail/mimemessage/Address;->getAddress()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3, v4}, Lcom/broadcom/bt/util/bmsg/BMessageVCard;->addProperty(BLjava/lang/String;Ljava/lang/String;)Lcom/broadcom/bt/util/bmsg/BMessageVCardProperty;

    .line 515
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/broadcom/bt/util/bmsg/BMessageVCard;->setVersion(B)V

    .line 517
    aget-object v2, v11, v30

    invoke-virtual {v2}, Lcom/htc/util/mail/mimemessage/Address;->getPersonal()Ljava/lang/String;

    move-result-object v44

    .line 518
    .local v44, tmpToName:Ljava/lang/String;
    const-string v2, "MAPEmailProvider "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Original tmpToName "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v44

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    if-eqz v44, :cond_2

    if-eqz v38, :cond_3

    .line 520
    :cond_2
    const-string v44, ""

    .line 522
    :cond_3
    new-instance v27, Ljava/lang/String;

    invoke-static {}, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->access$1100()Ljava/util/BitSet;

    move-result-object v2

    invoke-virtual/range {v44 .. v44}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->encodeQuotedPrintable(Ljava/util/BitSet;[B)[B

    move-result-object v2

    move-object/from16 v0, v27

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    .line 525
    .local v27, encoded_tmpToName:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=?UTF-8?Q?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v11, v30

    invoke-virtual {v3}, Lcom/htc/util/mail/mimemessage/Address;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 489
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_1

    .line 482
    .end local v19           #bRecipient:Lcom/broadcom/bt/util/bmsg/BMessageVCard;
    .end local v27           #encoded_tmpToName:Ljava/lang/String;
    .end local v30           #i:I
    .end local v35           #oneAddress:Ljava/lang/String;
    .end local v38           #skipPersonalName:Z
    .end local v39           #stokens:[Ljava/lang/String;
    .end local v44           #tmpToName:Ljava/lang/String;
    :cond_4
    const/16 v38, 0x0

    goto/16 :goto_0

    .line 505
    .restart local v30       #i:I
    .restart local v35       #oneAddress:Ljava/lang/String;
    .restart local v38       #skipPersonalName:Z
    .restart local v39       #stokens:[Ljava/lang/String;
    :cond_5
    const/4 v2, 0x0

    aget-object v2, v39, v2

    const-string v3, "<"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 506
    .restart local v10       #Address:Ljava/lang/String;
    const-string v2, ">"

    const-string v3, ""

    invoke-virtual {v10, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 507
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 508
    new-instance v2, Lcom/htc/util/mail/mimemessage/Address;

    const-string v3, ""

    invoke-direct {v2, v10, v3}, Lcom/htc/util/mail/mimemessage/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v11, v30
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 659
    .end local v10           #Address:Ljava/lang/String;
    .end local v11           #addresses:[Lcom/htc/util/mail/mimemessage/Address;
    .end local v14           #bEnv:Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;
    .end local v18           #bOriginator:Lcom/broadcom/bt/util/bmsg/BMessageVCard;
    .end local v26           #encoded_tmpSenderName:Ljava/lang/String;
    .end local v30           #i:I
    .end local v33           #mRecipients:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v35           #oneAddress:Ljava/lang/String;
    .end local v38           #skipPersonalName:Z
    .end local v39           #stokens:[Ljava/lang/String;
    .end local v42           #tmpSenderName:Ljava/lang/String;
    :catch_0
    move-exception v22

    move-object/from16 v16, v17

    .line 660
    .end local v17           #bMsg:Lcom/broadcom/bt/util/bmsg/BMessage;
    .restart local v16       #bMsg:Lcom/broadcom/bt/util/bmsg/BMessage;
    .local v22, e:Ljava/lang/Exception;
    :goto_3
    const-string v2, "MAPEmailProvider "

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    .end local v22           #e:Ljava/lang/Exception;
    :goto_4
    const/16 v20, 0x0

    .line 664
    .local v20, bmsgFile:Ljava/io/BufferedWriter;
    const/4 v7, 0x0

    .line 667
    .local v7, status:B
    :try_start_2
    new-instance v37, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    #getter for: Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mTmpDirectory:Ljava/io/File;
    invoke-static {v2}, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->access$1200(Lcom/htc/bluetooth/map/email/MAPEmailProvider;)Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    iget-object v4, v4, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mGetMsgDataSourceId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    iget-object v4, v4, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mGetMsgMessageId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v37

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 669
    .end local v36           #outFile:Ljava/io/File;
    .local v37, outFile:Ljava/io/File;
    :try_start_3
    move-object/from16 v0, v16

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/util/bmsg/BMessage;->write(Ljava/io/File;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object/from16 v36, v37

    .line 676
    .end local v37           #outFile:Ljava/io/File;
    .restart local v36       #outFile:Ljava/io/File;
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    iget-object v2, v2, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    iget v3, v3, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mGetMsgRequestId:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    invoke-virtual {v4}, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->getProviderId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    iget-object v5, v5, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mGetMsgDataSourceId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    iget-object v6, v6, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mGetMsgMessageId:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v36 .. v36}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    iget-object v9, v9, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mGetMsgVirtualFolder:Ljava/lang/String;

    invoke-virtual/range {v2 .. v9}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendMsg(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;)Z

    .line 677
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mGetMsgMessage:Lcom/htc/util/mail/MailMessage;

    .line 680
    return-void

    .line 527
    .end local v7           #status:B
    .end local v16           #bMsg:Lcom/broadcom/bt/util/bmsg/BMessage;
    .end local v20           #bmsgFile:Ljava/io/BufferedWriter;
    .restart local v11       #addresses:[Lcom/htc/util/mail/mimemessage/Address;
    .restart local v14       #bEnv:Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;
    .restart local v17       #bMsg:Lcom/broadcom/bt/util/bmsg/BMessage;
    .restart local v18       #bOriginator:Lcom/broadcom/bt/util/bmsg/BMessageVCard;
    .restart local v26       #encoded_tmpSenderName:Ljava/lang/String;
    .restart local v30       #i:I
    .restart local v33       #mRecipients:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v38       #skipPersonalName:Z
    .restart local v42       #tmpSenderName:Ljava/lang/String;
    :cond_6
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 531
    .end local v11           #addresses:[Lcom/htc/util/mail/mimemessage/Address;
    .end local v30           #i:I
    .end local v38           #skipPersonalName:Z
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    iget-object v2, v2, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mGetMsgMessage:Lcom/htc/util/mail/MailMessage;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/util/mail/MailMessage;->getAddresses(I)Ljava/util/ArrayList;

    move-result-object v32

    .line 532
    .local v32, mCC:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v32, :cond_d

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_d

    .line 533
    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v11, v2, [Lcom/htc/util/mail/mimemessage/Address;

    .line 534
    .restart local v11       #addresses:[Lcom/htc/util/mail/mimemessage/Address;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Cc: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 535
    const/16 v30, 0x0

    .restart local v30       #i:I
    :goto_6
    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v30

    if-ge v0, v2, :cond_c

    .line 536
    move-object/from16 v0, v32

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/String;

    .line 537
    .restart local v35       #oneAddress:Ljava/lang/String;
    new-instance v2, Lcom/htc/util/mail/mimemessage/Address;

    move-object/from16 v0, v35

    invoke-direct {v2, v0}, Lcom/htc/util/mail/mimemessage/Address;-><init>(Ljava/lang/String;)V

    aput-object v2, v11, v30

    .line 538
    const-string v2, "\""

    move-object/from16 v0, v35

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v39

    .line 539
    .restart local v39       #stokens:[Ljava/lang/String;
    if-eqz v39, :cond_8

    .line 541
    move-object/from16 v0, v39

    array-length v2, v0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_b

    .line 542
    const/4 v2, 0x2

    aget-object v2, v39, v2

    const-string v3, "<"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 543
    .restart local v10       #Address:Ljava/lang/String;
    const-string v2, ">"

    const-string v3, ""

    invoke-virtual {v10, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 544
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 546
    new-instance v2, Lcom/htc/util/mail/mimemessage/Address;

    const/4 v3, 0x1

    aget-object v3, v39, v3

    invoke-direct {v2, v10, v3}, Lcom/htc/util/mail/mimemessage/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v11, v30

    .line 556
    .end local v10           #Address:Ljava/lang/String;
    :cond_8
    :goto_7
    const-string v41, ""

    .line 557
    .local v41, tmpCcAddress:Ljava/lang/String;
    const-string v25, ""

    .line 558
    .local v25, encoded_tmpCcAddress:Ljava/lang/String;
    if-eqz v35, :cond_9

    .line 560
    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v41

    .line 561
    const-string v2, "MAPEmailProvider "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Original tmpCcAddress"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v41

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    new-instance v25, Ljava/lang/String;

    .end local v25           #encoded_tmpCcAddress:Ljava/lang/String;
    invoke-static {}, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->access$1100()Ljava/util/BitSet;

    move-result-object v2

    invoke-virtual/range {v41 .. v41}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->encodeQuotedPrintable(Ljava/util/BitSet;[B)[B

    move-result-object v2

    move-object/from16 v0, v25

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    .line 566
    .restart local v25       #encoded_tmpCcAddress:Ljava/lang/String;
    :cond_9
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_a

    .line 568
    const-string v2, "MAPEmailProvider "

    const-string v3, "encoded_tmpCcAddress is empty or null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    move-object/from16 v25, v41

    .line 573
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=?UTF-8?Q?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 574
    invoke-virtual {v14}, Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;->addRecipient()Lcom/broadcom/bt/util/bmsg/BMessageVCard;

    move-result-object v19

    .line 575
    .restart local v19       #bRecipient:Lcom/broadcom/bt/util/bmsg/BMessageVCard;
    const/4 v2, 0x1

    aget-object v3, v11, v30

    invoke-virtual {v3}, Lcom/htc/util/mail/mimemessage/Address;->getPersonal()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3, v4}, Lcom/broadcom/bt/util/bmsg/BMessageVCard;->addProperty(BLjava/lang/String;Ljava/lang/String;)Lcom/broadcom/bt/util/bmsg/BMessageVCardProperty;

    .line 576
    const/4 v2, 0x3

    aget-object v3, v11, v30

    invoke-virtual {v3}, Lcom/htc/util/mail/mimemessage/Address;->getAddress()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3, v4}, Lcom/broadcom/bt/util/bmsg/BMessageVCard;->addProperty(BLjava/lang/String;Ljava/lang/String;)Lcom/broadcom/bt/util/bmsg/BMessageVCardProperty;

    .line 577
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/broadcom/bt/util/bmsg/BMessageVCard;->setVersion(B)V

    .line 535
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_6

    .line 549
    .end local v19           #bRecipient:Lcom/broadcom/bt/util/bmsg/BMessageVCard;
    .end local v25           #encoded_tmpCcAddress:Ljava/lang/String;
    .end local v41           #tmpCcAddress:Ljava/lang/String;
    :cond_b
    const/4 v2, 0x0

    aget-object v2, v39, v2

    const-string v3, "<"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 550
    .restart local v10       #Address:Ljava/lang/String;
    const-string v2, ">"

    const-string v3, ""

    invoke-virtual {v10, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 551
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 552
    new-instance v2, Lcom/htc/util/mail/mimemessage/Address;

    const-string v3, ""

    invoke-direct {v2, v10, v3}, Lcom/htc/util/mail/mimemessage/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v11, v30

    goto/16 :goto_7

    .line 579
    .end local v10           #Address:Ljava/lang/String;
    .end local v35           #oneAddress:Ljava/lang/String;
    .end local v39           #stokens:[Ljava/lang/String;
    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 584
    .end local v11           #addresses:[Lcom/htc/util/mail/mimemessage/Address;
    .end local v30           #i:I
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    iget-object v2, v2, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mGetMsgMessage:Lcom/htc/util/mail/MailMessage;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/htc/util/mail/MailMessage;->getAddresses(I)Ljava/util/ArrayList;

    move-result-object v31

    .line 586
    .local v31, mBCC:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v31, :cond_11

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_11

    .line 587
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v11, v2, [Lcom/htc/util/mail/mimemessage/Address;

    .line 588
    .restart local v11       #addresses:[Lcom/htc/util/mail/mimemessage/Address;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Bcc: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 589
    const/16 v30, 0x0

    .restart local v30       #i:I
    :goto_8
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v30

    if-ge v0, v2, :cond_10

    .line 590
    move-object/from16 v0, v31

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/String;

    .line 591
    .restart local v35       #oneAddress:Ljava/lang/String;
    new-instance v2, Lcom/htc/util/mail/mimemessage/Address;

    move-object/from16 v0, v35

    invoke-direct {v2, v0}, Lcom/htc/util/mail/mimemessage/Address;-><init>(Ljava/lang/String;)V

    aput-object v2, v11, v30

    .line 592
    const-string v2, "\""

    move-object/from16 v0, v35

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v39

    .line 593
    .restart local v39       #stokens:[Ljava/lang/String;
    if-eqz v39, :cond_e

    .line 595
    move-object/from16 v0, v39

    array-length v2, v0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_f

    .line 596
    const/4 v2, 0x2

    aget-object v2, v39, v2

    const-string v3, "<"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 597
    .restart local v10       #Address:Ljava/lang/String;
    const-string v2, ">"

    const-string v3, ""

    invoke-virtual {v10, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 598
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 599
    new-instance v2, Lcom/htc/util/mail/mimemessage/Address;

    const/4 v3, 0x1

    aget-object v3, v39, v3

    invoke-direct {v2, v10, v3}, Lcom/htc/util/mail/mimemessage/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v11, v30

    .line 608
    .end local v10           #Address:Ljava/lang/String;
    :cond_e
    :goto_9
    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v40

    .line 609
    .local v40, tmpBccAddress:Ljava/lang/String;
    const-string v2, "MAPEmailProvider "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Original tmpCcAddress"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v40

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    new-instance v24, Ljava/lang/String;

    invoke-static {}, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->access$1100()Ljava/util/BitSet;

    move-result-object v2

    invoke-virtual/range {v40 .. v40}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->encodeQuotedPrintable(Ljava/util/BitSet;[B)[B

    move-result-object v2

    move-object/from16 v0, v24

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    .line 614
    .local v24, encoded_tmpBccAddress:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=?UTF-8?Q?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 616
    invoke-virtual {v14}, Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;->addRecipient()Lcom/broadcom/bt/util/bmsg/BMessageVCard;

    move-result-object v19

    .line 617
    .restart local v19       #bRecipient:Lcom/broadcom/bt/util/bmsg/BMessageVCard;
    const/4 v2, 0x1

    aget-object v3, v11, v30

    invoke-virtual {v3}, Lcom/htc/util/mail/mimemessage/Address;->getPersonal()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3, v4}, Lcom/broadcom/bt/util/bmsg/BMessageVCard;->addProperty(BLjava/lang/String;Ljava/lang/String;)Lcom/broadcom/bt/util/bmsg/BMessageVCardProperty;

    .line 618
    const/4 v2, 0x3

    aget-object v3, v11, v30

    invoke-virtual {v3}, Lcom/htc/util/mail/mimemessage/Address;->getAddress()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3, v4}, Lcom/broadcom/bt/util/bmsg/BMessageVCard;->addProperty(BLjava/lang/String;Ljava/lang/String;)Lcom/broadcom/bt/util/bmsg/BMessageVCardProperty;

    .line 619
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/broadcom/bt/util/bmsg/BMessageVCard;->setVersion(B)V

    .line 589
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_8

    .line 602
    .end local v19           #bRecipient:Lcom/broadcom/bt/util/bmsg/BMessageVCard;
    .end local v24           #encoded_tmpBccAddress:Ljava/lang/String;
    .end local v40           #tmpBccAddress:Ljava/lang/String;
    :cond_f
    const/4 v2, 0x0

    aget-object v2, v39, v2

    const-string v3, "<"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 603
    .restart local v10       #Address:Ljava/lang/String;
    const-string v2, ">"

    const-string v3, ""

    invoke-virtual {v10, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 604
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 605
    new-instance v2, Lcom/htc/util/mail/mimemessage/Address;

    const-string v3, ""

    invoke-direct {v2, v10, v3}, Lcom/htc/util/mail/mimemessage/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v11, v30

    goto/16 :goto_9

    .line 621
    .end local v10           #Address:Ljava/lang/String;
    .end local v35           #oneAddress:Ljava/lang/String;
    .end local v39           #stokens:[Ljava/lang/String;
    :cond_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 626
    .end local v11           #addresses:[Lcom/htc/util/mail/mimemessage/Address;
    .end local v30           #i:I
    :cond_11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "MIME-Version: 1.0\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 627
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Content-Type: text/plain\"\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 628
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Content-Transfer-Encoding: quoted-printable\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 629
    const-string v2, "MAPEmailProvider "

    const-string v3, "ProcessGetMsgFromMailAPI - Setting Body"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    const-string v2, "MAPEmailProvider "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-------+getMailBody: =?UTF-8?Q?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    iget-object v4, v4, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mGetMsgMessage:Lcom/htc/util/mail/MailMessage;

    invoke-virtual {v4}, Lcom/htc/util/mail/MailMessage;->getMailBody()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "?="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    new-instance v29, Ljava/text/SimpleDateFormat;

    const-string v2, "EEE, dd MMM yyyy HH:mm:ss Z"

    move-object/from16 v0, v29

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 634
    .local v29, formatter:Ljava/text/SimpleDateFormat;
    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Date: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    iget-object v3, v3, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mGetMsgMessage:Lcom/htc/util/mail/MailMessage;

    invoke-virtual {v3}, Lcom/htc/util/mail/MailMessage;->getMessageTime()Ljava/util/Date;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v21

    .line 639
    :goto_a
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    iget-object v2, v2, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mGetMsgMessage:Lcom/htc/util/mail/MailMessage;

    invoke-virtual {v2}, Lcom/htc/util/mail/MailMessage;->getSubject()Ljava/lang/String;

    move-result-object v43

    .line 640
    .local v43, tmpSubject:Ljava/lang/String;
    const-string v2, "MAPEmailProvider "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Original tmpSubject"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v43

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    new-instance v23, Ljava/lang/String;

    invoke-static {}, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->access$1100()Ljava/util/BitSet;

    move-result-object v2

    invoke-virtual/range {v43 .. v43}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->encodeQuotedPrintable(Ljava/util/BitSet;[B)[B

    move-result-object v2

    move-object/from16 v0, v23

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    .line 643
    .local v23, encoded_subject:Ljava/lang/String;
    const-string v2, "MAPEmailProvider "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "encoded_subject: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Subject: =?UTF-8?Q?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 646
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    iget-object v3, v3, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    iget-object v4, v4, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mGetMsgMessage:Lcom/htc/util/mail/MailMessage;

    invoke-virtual {v4}, Lcom/htc/util/mail/MailMessage;->getMailBody()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->getStandardQPEncodingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 649
    invoke-virtual/range {v17 .. v17}, Lcom/broadcom/bt/util/bmsg/BMessage;->getEnvelope()Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;

    move-result-object v15

    .line 650
    .local v15, bEnvBody:Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;
    invoke-virtual {v15}, Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;->addBody()Lcom/broadcom/bt/util/bmsg/BMessageBody;

    move-result-object v12

    .line 651
    .local v12, bBody:Lcom/broadcom/bt/util/bmsg/BMessageBody;
    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Lcom/broadcom/bt/util/bmsg/BMessageBody;->setCharSet(B)V

    .line 653
    invoke-virtual {v12}, Lcom/broadcom/bt/util/bmsg/BMessageBody;->addContent()Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;

    move-result-object v13

    .line 656
    .local v13, bContent:Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;
    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;->addMessageContent(Ljava/lang/String;)V

    move-object/from16 v16, v17

    .line 661
    .end local v17           #bMsg:Lcom/broadcom/bt/util/bmsg/BMessage;
    .restart local v16       #bMsg:Lcom/broadcom/bt/util/bmsg/BMessage;
    goto/16 :goto_4

    .line 635
    .end local v12           #bBody:Lcom/broadcom/bt/util/bmsg/BMessageBody;
    .end local v13           #bContent:Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;
    .end local v15           #bEnvBody:Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;
    .end local v16           #bMsg:Lcom/broadcom/bt/util/bmsg/BMessage;
    .end local v23           #encoded_subject:Ljava/lang/String;
    .end local v43           #tmpSubject:Ljava/lang/String;
    .restart local v17       #bMsg:Lcom/broadcom/bt/util/bmsg/BMessage;
    :catch_1
    move-exception v22

    .line 636
    .restart local v22       #e:Ljava/lang/Exception;
    const-string v2, "MAPEmailProvider "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error getting date from message "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_a

    .line 670
    .end local v14           #bEnv:Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;
    .end local v17           #bMsg:Lcom/broadcom/bt/util/bmsg/BMessage;
    .end local v18           #bOriginator:Lcom/broadcom/bt/util/bmsg/BMessageVCard;
    .end local v22           #e:Ljava/lang/Exception;
    .end local v26           #encoded_tmpSenderName:Ljava/lang/String;
    .end local v29           #formatter:Ljava/text/SimpleDateFormat;
    .end local v31           #mBCC:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v32           #mCC:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v33           #mRecipients:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v42           #tmpSenderName:Ljava/lang/String;
    .restart local v7       #status:B
    .restart local v16       #bMsg:Lcom/broadcom/bt/util/bmsg/BMessage;
    .restart local v20       #bmsgFile:Ljava/io/BufferedWriter;
    :catch_2
    move-exception v22

    .line 671
    .restart local v22       #e:Ljava/lang/Exception;
    :goto_b
    const/4 v7, 0x3

    .line 673
    const-string v2, "MAPEmailProvider "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error writing bmsg file"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 670
    .end local v22           #e:Ljava/lang/Exception;
    .end local v36           #outFile:Ljava/io/File;
    .restart local v37       #outFile:Ljava/io/File;
    :catch_3
    move-exception v22

    move-object/from16 v36, v37

    .end local v37           #outFile:Ljava/io/File;
    .restart local v36       #outFile:Ljava/io/File;
    goto :goto_b

    .line 659
    .end local v7           #status:B
    .end local v20           #bmsgFile:Ljava/io/BufferedWriter;
    :catch_4
    move-exception v22

    goto/16 :goto_3
.end method


# virtual methods
.method public onAccountRefresh()V
    .locals 4

    .prologue
    .line 222
    const-string v1, "MAPEmailProvider "

    const-string v2, "onAccountRefresh"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v1, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    iget-boolean v1, v1, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mfRegistered:Z

    if-nez v1, :cond_3

    .line 224
    const-string v1, "MAPEmailProvider "

    const-string v2, "mfRegistered = FALSE"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v1, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    #getter for: Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->access$300(Lcom/htc/bluetooth/map/email/MAPEmailProvider;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/util/mail/MailManager;->getInstance(Landroid/content/Context;)Lcom/htc/util/mail/MailManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/util/mail/MailManager;->getAccounts()Ljava/util/ArrayList;

    move-result-object v0

    .line 226
    .local v0, mailAccounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/mail/MailAccount;>;"
    if-eqz v0, :cond_2

    .line 228
    const-string v1, "MAPEmailProvider "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mailAccounts = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mailAccounts.size() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v1, v2, :cond_1

    .line 232
    iget-object v1, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    #getter for: Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mIsStarted:Z
    invoke-static {v1}, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->access$400(Lcom/htc/bluetooth/map/email/MAPEmailProvider;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 234
    const-string v1, "MAPEmailProvider "

    const-string v2, "Liching map start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v1, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    #calls: Lcom/htc/bluetooth/map/email/MAPEmailProvider;->start()V
    invoke-static {v1}, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->access$500(Lcom/htc/bluetooth/map/email/MAPEmailProvider;)V

    .line 292
    :goto_0
    return-void

    .line 238
    :cond_0
    const-string v1, "MAPEmailProvider "

    const-string v2, "Liching map register"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v1, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    invoke-virtual {v1}, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->registerDatasources()V

    goto :goto_0

    .line 244
    :cond_1
    const-string v1, "MAPEmailProvider "

    const-string v2, "No mail account!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 249
    :cond_2
    const-string v1, "MAPEmailProvider "

    const-string v2, "mailAccounts is NULL!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 253
    .end local v0           #mailAccounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/mail/MailAccount;>;"
    :cond_3
    const-string v1, "MAPEmailProvider "

    const-string v2, "mfRegistered = TRUE"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v1, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    #getter for: Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->access$600(Lcom/htc/bluetooth/map/email/MAPEmailProvider;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/util/mail/MailManager;->getInstance(Landroid/content/Context;)Lcom/htc/util/mail/MailManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/util/mail/MailManager;->getAccounts()Ljava/util/ArrayList;

    move-result-object v0

    .line 255
    .restart local v0       #mailAccounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/mail/MailAccount;>;"
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_6

    .line 258
    :cond_4
    const-string v1, "MAPEmailProvider "

    const-string v2, "null == mailAccounts || mailAccounts.size() == 0"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v1, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    #getter for: Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mMailAccount:Lcom/htc/util/mail/MailAccount;
    invoke-static {v1}, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->access$100(Lcom/htc/bluetooth/map/email/MAPEmailProvider;)Lcom/htc/util/mail/MailAccount;

    move-result-object v1

    if-nez v1, :cond_5

    .line 262
    const-string v1, "MAPEmailProvider "

    const-string v2, "MailAccount is NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :goto_1
    iget-object v1, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    invoke-virtual {v1}, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->stopMSEInstance()V

    .line 271
    iget-object v1, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    const-string v2, "EMAIL"

    #calls: Lcom/htc/bluetooth/map/email/MAPEmailProvider;->unregisterDS(Ljava/lang/String;)Z
    invoke-static {v1, v2}, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->access$700(Lcom/htc/bluetooth/map/email/MAPEmailProvider;Ljava/lang/String;)Z

    .line 272
    iget-object v1, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mfRegistered:Z

    goto :goto_0

    .line 266
    :cond_5
    const-string v1, "MAPEmailProvider "

    const-string v2, "unregister MailAccount listner"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v1, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    #getter for: Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mMailAccount:Lcom/htc/util/mail/MailAccount;
    invoke-static {v1}, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->access$100(Lcom/htc/bluetooth/map/email/MAPEmailProvider;)Lcom/htc/util/mail/MailAccount;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/util/mail/MailAccount;->setAccountListener(Lcom/htc/util/mail/IAccountListener;)V

    goto :goto_1

    .line 279
    :cond_6
    const-string v1, "MAPEmailProvider "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mailAccounts = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    if-eqz v0, :cond_7

    .line 281
    const-string v1, "MAPEmailProvider "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mailAccounts().size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_7
    iget-object v1, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    iget-object v2, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    #getter for: Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->access$800(Lcom/htc/bluetooth/map/email/MAPEmailProvider;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/util/mail/MailManager;->getInstance(Landroid/content/Context;)Lcom/htc/util/mail/MailManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/util/mail/MailManager;->getCombinedAccount()Lcom/htc/util/mail/MailAccount;

    move-result-object v2

    #setter for: Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mMailAccount:Lcom/htc/util/mail/MailAccount;
    invoke-static {v1, v2}, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->access$102(Lcom/htc/bluetooth/map/email/MAPEmailProvider;Lcom/htc/util/mail/MailAccount;)Lcom/htc/util/mail/MailAccount;

    .line 285
    iget-object v1, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    #getter for: Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mMailAccount:Lcom/htc/util/mail/MailAccount;
    invoke-static {v1}, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->access$100(Lcom/htc/bluetooth/map/email/MAPEmailProvider;)Lcom/htc/util/mail/MailAccount;

    move-result-object v1

    if-nez v1, :cond_8

    .line 286
    const-string v1, "MAPEmailProvider "

    const-string v2, "Error getting combined mail account"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_8
    iget-object v1, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    #getter for: Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mMailAccount:Lcom/htc/util/mail/MailAccount;
    invoke-static {v1}, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->access$100(Lcom/htc/bluetooth/map/email/MAPEmailProvider;)Lcom/htc/util/mail/MailAccount;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    #getter for: Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mListener:Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;
    invoke-static {v2}, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->access$900(Lcom/htc/bluetooth/map/email/MAPEmailProvider;)Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/util/mail/MailAccount;->setAccountListener(Lcom/htc/util/mail/IAccountListener;)V

    goto/16 :goto_0
.end method

.method public onAccountSync(J)V
    .locals 3
    .parameter "accountId"

    .prologue
    .line 162
    const-string v0, "MAPEmailProvider "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAccountSync account id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    return-void
.end method

.method public onAccountSyncCompleted(J)V
    .locals 3
    .parameter "accountId"

    .prologue
    .line 158
    const-string v0, "MAPEmailProvider "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAccountSyncCompleted account id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    return-void
.end method

.method public onAttachmentDownloaded(Lcom/htc/util/mail/MailMessage;IJ)V
    .locals 2
    .parameter "message"
    .parameter "attachmentIndex"
    .parameter "result"

    .prologue
    .line 296
    const-string v0, "MAPEmailProvider "

    const-string v1, "onAttachmentDownloaded "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    return-void
.end method

.method public onFolderCreated(JJJ)V
    .locals 3
    .parameter "accountId"
    .parameter "folderId"
    .parameter "result"

    .prologue
    .line 165
    const-string v0, "MAPEmailProvider "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFolderCreated account id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " folderId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return-void
.end method

.method public onFolderDeleted(JJJ)V
    .locals 3
    .parameter "accountId"
    .parameter "folderId"
    .parameter "result"

    .prologue
    .line 169
    const-string v0, "MAPEmailProvider "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFolderDeleted account id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " folderId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    return-void
.end method

.method public onMessageAdded(JJJJ)V
    .locals 6
    .parameter "accountId"
    .parameter "toFolderId"
    .parameter "messageId"
    .parameter "result"

    .prologue
    .line 173
    const-string v1, "MAPEmailProvider "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMessageAdded account id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " folderId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " message id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v1, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    #getter for: Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mNotificationsEnabled:Z
    invoke-static {v1}, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->access$000(Lcom/htc/bluetooth/map/email/MAPEmailProvider;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 177
    const-string v1, "MAPEmailProvider "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current notif count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    iget-wide v3, v3, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mCurrentEmailsCount:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const-wide/16 v1, 0x0

    iget-object v3, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    iget-wide v3, v3, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mCurrentEmailsCount:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    .line 180
    iget-object v1, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    #getter for: Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mMailAccount:Lcom/htc/util/mail/MailAccount;
    invoke-static {v1}, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->access$100(Lcom/htc/bluetooth/map/email/MAPEmailProvider;)Lcom/htc/util/mail/MailAccount;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Lcom/htc/util/mail/MailAccount;->getFolder(J)Lcom/htc/util/mail/Folder;

    move-result-object v0

    .line 181
    .local v0, f:Lcom/htc/util/mail/Folder;
    if-eqz v0, :cond_0

    .line 182
    iget-object v1, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    iget-object v1, v1, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    const-string v2, "EMAIL"

    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/htc/util/mail/Folder;->getFolderName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendNotification_NewMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :cond_0
    iget-object v1, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    iget-wide v2, v1, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mCurrentEmailsCount:J

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mCurrentEmailsCount:J

    .line 190
    .end local v0           #f:Lcom/htc/util/mail/Folder;
    :cond_1
    return-void
.end method

.method public onMessageDeleted(JJJJ)V
    .locals 6
    .parameter "accountId"
    .parameter "fromFolderId"
    .parameter "messageId"
    .parameter "result"

    .prologue
    .line 193
    const-string v1, "MAPEmailProvider "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMessageDeleted account id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " folderId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " message id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v1, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    #getter for: Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mNotificationsEnabled:Z
    invoke-static {v1}, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->access$200(Lcom/htc/bluetooth/map/email/MAPEmailProvider;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    iget-object v1, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    #getter for: Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mMailAccount:Lcom/htc/util/mail/MailAccount;
    invoke-static {v1}, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->access$100(Lcom/htc/bluetooth/map/email/MAPEmailProvider;)Lcom/htc/util/mail/MailAccount;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Lcom/htc/util/mail/MailAccount;->getFolder(J)Lcom/htc/util/mail/Folder;

    move-result-object v0

    .line 197
    .local v0, f:Lcom/htc/util/mail/Folder;
    if-eqz v0, :cond_0

    .line 198
    iget-object v1, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    iget-object v1, v1, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    const-string v2, "EMAIL"

    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/htc/util/mail/Folder;->getFolderName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendNotification_MessageDeleted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .end local v0           #f:Lcom/htc/util/mail/Folder;
    :cond_0
    return-void
.end method

.method public declared-synchronized onMessageRetrieveResult(JI)V
    .locals 6
    .parameter "messageId"
    .parameter "errorCode"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 682
    monitor-enter p0

    :try_start_0
    const-string v1, "MAPEmailProvider "

    const-string v2, "onMessageRetrieveResult "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    if-ne p3, v3, :cond_3

    .line 685
    iget-object v1, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    iget v1, v1, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mOpCode:I

    if-ne v1, v3, :cond_2

    .line 686
    iget-object v1, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    iget-object v1, v1, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    iget-object v2, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    iget v2, v2, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->msgListrequestId:I

    iget-object v3, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    iget-object v3, v3, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->msgListdatasourceId:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    iget-object v4, v4, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->msgListfolderPath:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendMesageListingError_NoMsgs(ILjava/lang/String;Ljava/lang/String;)V

    .line 688
    iget-object v1, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->msgListdatasourceId:Ljava/lang/String;

    .line 689
    iget-object v1, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    const/4 v2, 0x0

    iput v2, v1, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->msgListrequestId:I

    .line 690
    iget-object v1, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->msgListfolderPath:Ljava/lang/String;

    .line 691
    iget-object v1, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    const/4 v2, -0x1

    iput v2, v1, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->msgListStartOffset:I

    .line 692
    iget-object v1, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    const/4 v2, 0x0

    iput v2, v1, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->msgListNumMsgs:I

    .line 694
    iget-object v1, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    const/4 v2, 0x0

    iput v2, v1, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->msgListSubjectMaxLength:I

    .line 700
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    const/4 v2, 0x0

    iput v2, v1, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mOpCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 741
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 697
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    iget v1, v1, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mOpCode:I

    if-ne v1, v4, :cond_0

    .line 698
    iget-object v1, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    iget-object v1, v1, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    iget-object v2, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    iget v2, v2, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mGetMsgRequestId:I

    iget-object v3, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    iget-object v3, v3, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mGetMsgDataSourceId:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    iget-object v4, v4, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mGetMsgMessageId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->returnNoMessage(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 682
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 703
    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    iget v1, v1, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mOpCode:I

    if-ne v1, v3, :cond_5

    .line 704
    iget-object v1, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    const/4 v2, 0x0

    iput v2, v1, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mOpCode:I

    .line 705
    iget-object v1, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    iget-object v1, v1, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mInfos:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-nez v1, :cond_4

    .line 706
    iget-object v1, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    iget-object v1, v1, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    iget-object v2, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    iget v2, v2, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->msgListrequestId:I

    iget-object v3, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    iget-object v3, v3, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->msgListdatasourceId:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    iget-object v4, v4, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->msgListfolderPath:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendMesageListingError_NoMsgs(ILjava/lang/String;Ljava/lang/String;)V

    .line 712
    :goto_2
    iget-object v1, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->msgListdatasourceId:Ljava/lang/String;

    .line 713
    iget-object v1, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    const/4 v2, 0x0

    iput v2, v1, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->msgListrequestId:I

    .line 714
    iget-object v1, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->msgListfolderPath:Ljava/lang/String;

    .line 715
    iget-object v1, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    const/4 v2, -0x1

    iput v2, v1, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->msgListStartOffset:I

    .line 716
    iget-object v1, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    const/4 v2, 0x0

    iput v2, v1, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->msgListNumMsgs:I

    .line 718
    iget-object v1, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    const/4 v2, 0x0

    iput v2, v1, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->msgListSubjectMaxLength:I

    goto :goto_1

    .line 709
    :cond_4
    iget-object v1, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    iget-object v1, v1, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    iget-object v2, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    iget v2, v2, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->msgListrequestId:I

    iget-object v3, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    iget-object v3, v3, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->msgListdatasourceId:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    iget-object v4, v4, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->msgListfolderPath:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    iget-object v5, v5, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mInfos:Ljava/util/LinkedList;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendMessageListings(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_2

    .line 721
    :cond_5
    iget-object v1, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    iget v1, v1, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mOpCode:I

    if-ne v1, v4, :cond_7

    .line 722
    iget-object v1, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    const/4 v2, 0x0

    iput v2, v1, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mOpCode:I

    .line 723
    iget-object v1, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    iget-object v1, v1, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mGetMsgMessage:Lcom/htc/util/mail/MailMessage;

    if-nez v1, :cond_6

    .line 724
    iget-object v1, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    iget-object v1, v1, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    iget-object v2, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    iget v2, v2, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mGetMsgRequestId:I

    iget-object v3, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    iget-object v3, v3, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mGetMsgDataSourceId:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    iget-object v4, v4, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mGetMsgMessageId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->returnNoMessage(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 727
    :cond_6
    invoke-direct {p0}, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->ProcessGetMsgFromMailAPI()V

    .line 728
    iget-object v1, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mGetMsgMessage:Lcom/htc/util/mail/MailMessage;

    goto/16 :goto_1

    .line 730
    :cond_7
    iget-object v1, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    iget v1, v1, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mOpCode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 732
    iget-object v1, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    const/4 v2, 0x0

    iput v2, v1, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mOpCode:I

    .line 733
    const-string v1, "MAPEmailProvider "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting Read Status ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    iget-boolean v3, v3, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mfRead:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 735
    :try_start_3
    iget-object v1, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    iget-object v1, v1, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mReadStatusMessage:Lcom/htc/util/mail/MailMessage;

    iget-object v2, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    iget-boolean v2, v2, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mfRead:Z

    invoke-virtual {v1, v2}, Lcom/htc/util/mail/MailMessage;->setMessageReaded(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 736
    :catch_0
    move-exception v0

    .line 737
    .local v0, e:Ljava/lang/Exception;
    :try_start_4
    const-string v1, "MAPEmailProvider "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error setting message read status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1
.end method

.method public declared-synchronized onMessageRetrieved(Lcom/htc/util/mail/MailMessage;)V
    .locals 14
    .parameter "message"

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    .line 300
    monitor-enter p0

    :try_start_0
    const-string v7, "MAPEmailProvider "

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onMessageRetrieved  message ID ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/htc/util/mail/MailMessage;->getId()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object v7, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    iget v7, v7, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mOpCode:I

    if-ne v7, v11, :cond_f

    .line 306
    const-string v7, "MAPEmailProvider "

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "GET Msg Listing operation Start Offset = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    iget v9, v9, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->msgListStartOffset:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Num Msgs = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    iget v9, v9, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->msgListNumMsgs:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v7, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    iget v7, v7, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->msgListStartOffset:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    .line 308
    iget-object v7, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    iget v8, v7, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->msgListStartOffset:I

    add-int/lit8 v8, v8, -0x1

    iput v8, v7, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->msgListStartOffset:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 311
    :cond_1
    :try_start_1
    iget-object v7, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    iget v7, v7, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->msgListNumMsgs:I

    if-eqz v7, :cond_0

    .line 312
    iget-object v7, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    iget v8, v7, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->msgListNumMsgs:I

    add-int/lit8 v8, v8, -0x1

    iput v8, v7, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->msgListNumMsgs:I

    .line 318
    new-instance v5, Lcom/broadcom/bt/service/map/MessageInfo;

    invoke-direct {v5}, Lcom/broadcom/bt/service/map/MessageInfo;-><init>()V

    .line 319
    .local v5, mInfo:Lcom/broadcom/bt/service/map/MessageInfo;
    invoke-virtual {p1}, Lcom/htc/util/mail/MailMessage;->getMessageId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgHandle:Ljava/lang/String;

    .line 321
    const/16 v7, 0x10ff

    iput v7, v5, Lcom/broadcom/bt/service/map/MessageInfo;->mParameterMask:I

    .line 326
    iget-object v7, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    #getter for: Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mMailAccount:Lcom/htc/util/mail/MailAccount;
    invoke-static {v7}, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->access$100(Lcom/htc/bluetooth/map/email/MAPEmailProvider;)Lcom/htc/util/mail/MailAccount;

    move-result-object v7

    invoke-virtual {p1}, Lcom/htc/util/mail/MailMessage;->getFolderId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/htc/util/mail/MailAccount;->getFolder(J)Lcom/htc/util/mail/Folder;

    move-result-object v2

    .line 327
    .local v2, f:Lcom/htc/util/mail/Folder;
    if-nez v2, :cond_2

    .line 328
    const-string v7, "MAPEmailProvider "

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onMessageRetrieved  - Could not find folder for messageId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/htc/util/mail/MailMessage;->getFolderId()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 300
    .end local v2           #f:Lcom/htc/util/mail/Folder;
    .end local v5           #mInfo:Lcom/broadcom/bt/service/map/MessageInfo;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 332
    .restart local v2       #f:Lcom/htc/util/mail/Folder;
    .restart local v5       #mInfo:Lcom/broadcom/bt/service/map/MessageInfo;
    :cond_2
    :try_start_2
    invoke-virtual {v2}, Lcom/htc/util/mail/Folder;->isOutFolder()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v2}, Lcom/htc/util/mail/Folder;->isSentFolder()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 333
    :cond_3
    const/4 v7, 0x1

    iput-boolean v7, v5, Lcom/broadcom/bt/service/map/MessageInfo;->mIsOutbound:Z

    .line 338
    :goto_1
    const/4 v7, 0x1

    iput-byte v7, v5, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgType:B

    .line 340
    invoke-virtual {p1}, Lcom/htc/util/mail/MailMessage;->isPlainText()Z

    move-result v7

    iput-boolean v7, v5, Lcom/broadcom/bt/service/map/MessageInfo;->mText:Z

    .line 343
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyyMMddHHmmss"

    invoke-direct {v3, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 346
    .local v3, formatter:Ljava/text/SimpleDateFormat;
    :try_start_3
    invoke-virtual {p1}, Lcom/htc/util/mail/MailMessage;->getMessageTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/broadcom/bt/service/map/MessageInfo;->mDateTime:Ljava/lang/String;

    .line 347
    const-string v7, "MAPEmailProvider "

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Pre-split date :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Lcom/broadcom/bt/service/map/MessageInfo;->mDateTime:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v5, Lcom/broadcom/bt/service/map/MessageInfo;->mDateTime:Ljava/lang/String;

    const/4 v9, 0x0

    const/16 v10, 0x8

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "T"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/broadcom/bt/service/map/MessageInfo;->mDateTime:Ljava/lang/String;

    const/16 v9, 0x8

    const/16 v10, 0xe

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/broadcom/bt/service/map/MessageInfo;->mDateTime:Ljava/lang/String;

    .line 349
    const-string v7, "MAPEmailProvider "

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Post-split date :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Lcom/broadcom/bt/service/map/MessageInfo;->mDateTime:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 354
    :goto_2
    const/4 v7, 0x0

    :try_start_4
    iput-byte v7, v5, Lcom/broadcom/bt/service/map/MessageInfo;->mReceptionStatus:B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 358
    :try_start_5
    invoke-virtual {p1}, Lcom/htc/util/mail/MailMessage;->isMessageReaded()Z

    move-result v7

    iput-boolean v7, v5, Lcom/broadcom/bt/service/map/MessageInfo;->mIsRead:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 363
    :goto_3
    :try_start_6
    invoke-virtual {p1}, Lcom/htc/util/mail/MailMessage;->isSent()Z

    move-result v7

    iput-boolean v7, v5, Lcom/broadcom/bt/service/map/MessageInfo;->mIsSent:Z

    .line 364
    invoke-virtual {p1}, Lcom/htc/util/mail/MailMessage;->getPriority()I

    move-result v7

    if-ne v7, v12, :cond_a

    .line 365
    const/4 v7, 0x1

    iput-boolean v7, v5, Lcom/broadcom/bt/service/map/MessageInfo;->mIsHighPriority:Z

    .line 370
    :goto_4
    invoke-virtual {p1}, Lcom/htc/util/mail/MailMessage;->isProtected()Z

    move-result v7

    iput-boolean v7, v5, Lcom/broadcom/bt/service/map/MessageInfo;->mIsProtected:Z

    .line 371
    invoke-virtual {p1}, Lcom/htc/util/mail/MailMessage;->getAttachmentsSize()I

    move-result v7

    iput v7, v5, Lcom/broadcom/bt/service/map/MessageInfo;->mAttachmentSize:I

    .line 373
    invoke-virtual {p1}, Lcom/htc/util/mail/MailMessage;->getSubject()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/broadcom/bt/service/map/MessageInfo;->mSubject:Ljava/lang/String;

    .line 375
    iget-object v7, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    iget v7, v7, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mOpCode:I

    if-ne v7, v11, :cond_5

    .line 376
    iget-object v7, v5, Lcom/broadcom/bt/service/map/MessageInfo;->mSubject:Ljava/lang/String;

    if-nez v7, :cond_4

    .line 377
    const-string v7, ""

    iput-object v7, v5, Lcom/broadcom/bt/service/map/MessageInfo;->mSubject:Ljava/lang/String;

    .line 380
    :cond_4
    iget-object v7, v5, Lcom/broadcom/bt/service/map/MessageInfo;->mSubject:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    iget v8, v8, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->msgListSubjectMaxLength:I

    invoke-virtual {v5, v7, v8}, Lcom/broadcom/bt/service/map/MessageInfo;->setSubject(Ljava/lang/String;I)V

    .line 383
    :cond_5
    invoke-virtual {p1}, Lcom/htc/util/mail/MailMessage;->getSenderAddress()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_b

    .line 384
    const-string v7, "MAPEmailProvider "

    const-string v8, "SenderAddress is null, ignore it"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    const-string v7, ""

    iput-object v7, v5, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderAddressing:Ljava/lang/String;

    .line 390
    :goto_5
    invoke-virtual {p1}, Lcom/htc/util/mail/MailMessage;->getSenderName()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_c

    .line 391
    const-string v7, "MAPEmailProvider "

    const-string v8, "SenderName is null, ignore it"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    const-string v7, ""

    iput-object v7, v5, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderName:Ljava/lang/String;

    .line 397
    :goto_6
    iget-object v7, v5, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderAddressing:Ljava/lang/String;

    iput-object v7, v5, Lcom/broadcom/bt/service/map/MessageInfo;->mReplyToAddressing:Ljava/lang/String;

    .line 400
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Lcom/htc/util/mail/MailMessage;->getAddresses(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 403
    .local v0, addresses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_e

    .line 404
    const/4 v4, 0x0

    .local v4, i:I
    :goto_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_e

    .line 405
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 406
    .local v6, stokens:[Ljava/lang/String;
    if-eqz v6, :cond_8

    .line 407
    array-length v7, v6

    if-ne v7, v13, :cond_d

    .line 408
    const/4 v7, 0x2

    aget-object v7, v6, v7

    if-nez v7, :cond_6

    .line 409
    const/4 v7, 0x2

    const-string v8, ""

    aput-object v8, v6, v7

    .line 411
    :cond_6
    const/4 v7, 0x2

    aget-object v7, v6, v7

    invoke-static {v7}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientRddressing:Ljava/lang/String;

    .line 412
    const/4 v7, 0x1

    aget-object v7, v6, v7

    if-nez v7, :cond_7

    .line 413
    const/4 v7, 0x1

    const-string v8, ""

    aput-object v8, v6, v7

    .line 415
    :cond_7
    const/4 v7, 0x1

    aget-object v7, v6, v7

    invoke-static {v7}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientName:Ljava/lang/String;

    .line 404
    :cond_8
    :goto_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 335
    .end local v0           #addresses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #formatter:Ljava/text/SimpleDateFormat;
    .end local v4           #i:I
    .end local v6           #stokens:[Ljava/lang/String;
    :cond_9
    const/4 v7, 0x0

    iput-boolean v7, v5, Lcom/broadcom/bt/service/map/MessageInfo;->mIsOutbound:Z

    goto/16 :goto_1

    .line 350
    .restart local v3       #formatter:Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v1

    .line 351
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "MAPEmailProvider "

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error getting date from message "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 359
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 360
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v7, "MAPEmailProvider "

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error getting Readed from message "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 367
    .end local v1           #e:Ljava/lang/Exception;
    :cond_a
    const/4 v7, 0x0

    iput-boolean v7, v5, Lcom/broadcom/bt/service/map/MessageInfo;->mIsHighPriority:Z

    goto/16 :goto_4

    .line 387
    :cond_b
    invoke-virtual {p1}, Lcom/htc/util/mail/MailMessage;->getSenderAddress()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderAddressing:Ljava/lang/String;

    goto/16 :goto_5

    .line 394
    :cond_c
    invoke-virtual {p1}, Lcom/htc/util/mail/MailMessage;->getSenderName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderName:Ljava/lang/String;

    goto/16 :goto_6

    .line 418
    .restart local v0       #addresses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4       #i:I
    .restart local v6       #stokens:[Ljava/lang/String;
    :cond_d
    const/4 v7, 0x0

    aget-object v7, v6, v7

    iput-object v7, v5, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientRddressing:Ljava/lang/String;

    goto :goto_8

    .line 423
    .end local v4           #i:I
    .end local v6           #stokens:[Ljava/lang/String;
    :cond_e
    iget-object v7, v5, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientRddressing:Ljava/lang/String;

    const-string v8, "<"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientRddressing:Ljava/lang/String;

    .line 424
    iget-object v7, v5, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientRddressing:Ljava/lang/String;

    const-string v8, ">"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientRddressing:Ljava/lang/String;

    .line 425
    invoke-virtual {p1}, Lcom/htc/util/mail/MailMessage;->getSize()I

    move-result v7

    iput v7, v5, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgSize:I

    .line 426
    iget-object v7, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    iget-object v7, v7, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mInfos:Ljava/util/LinkedList;

    invoke-virtual {v7, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 427
    .end local v0           #addresses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #f:Lcom/htc/util/mail/Folder;
    .end local v3           #formatter:Ljava/text/SimpleDateFormat;
    .end local v5           #mInfo:Lcom/broadcom/bt/service/map/MessageInfo;
    :cond_f
    iget-object v7, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    iget v7, v7, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mOpCode:I

    if-ne v7, v12, :cond_10

    .line 428
    iget-object v7, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    iput-object p1, v7, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mGetMsgMessage:Lcom/htc/util/mail/MailMessage;

    goto/16 :goto_0

    .line 429
    :cond_10
    iget-object v7, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    iget v7, v7, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mOpCode:I

    if-ne v7, v13, :cond_0

    .line 430
    iget-object v7, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    iput-object p1, v7, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mReadStatusMessage:Lcom/htc/util/mail/MailMessage;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0
.end method

.method public onNewMessages(JJ)V
    .locals 5
    .parameter "accountId"
    .parameter "numNewMessages"

    .prologue
    const-wide/16 v3, 0x32

    .line 204
    const-string v0, "MAPEmailProvider "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNewMessages account id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " numNewMessages = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v0, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    iget-wide v0, v0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mCurrentEmailsCount:J

    add-long/2addr v0, p3

    cmp-long v0, v3, v0

    if-gtz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    iput-wide v3, v0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mCurrentEmailsCount:J

    .line 216
    :goto_0
    const-string v0, "MAPEmailProvider "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onNewMessages] Notif count set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    iget-wide v2, v2, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mCurrentEmailsCount:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    return-void

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;->this$0:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    iget-wide v1, v0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mCurrentEmailsCount:J

    add-long/2addr v1, p3

    iput-wide v1, v0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mCurrentEmailsCount:J

    goto :goto_0
.end method
