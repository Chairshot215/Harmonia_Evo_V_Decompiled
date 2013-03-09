.class Lcom/android/mms/util/ForwardMMSHelper;
.super Ljava/lang/Object;
.source "MsgForwardHelper.java"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mMessageBodyEditor:Lcom/android/mms/ui/MessageBodyEditor;

.field private mMessageUri:Landroid/net/Uri;

.field private m_aryDestAddress:[Ljava/lang/String;

.field private m_ctx:Landroid/content/Context;

.field private m_encstrSubject:Lcom/google/android/mms/pdu/EncodedStringValue;

.field private m_nIDThread:J

.field private m_pduPers:Lcom/google/android/mms/pdu/PduPersister;

.field private m_strFromAddress:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 4
    .parameter "ctx"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, listDest:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 659
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 649
    iput-object v3, p0, Lcom/android/mms/util/ForwardMMSHelper;->mMessageUri:Landroid/net/Uri;

    .line 650
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/mms/util/ForwardMMSHelper;->m_nIDThread:J

    .line 651
    iput-object v3, p0, Lcom/android/mms/util/ForwardMMSHelper;->m_aryDestAddress:[Ljava/lang/String;

    .line 652
    iput-object v3, p0, Lcom/android/mms/util/ForwardMMSHelper;->m_strFromAddress:Ljava/lang/String;

    .line 653
    iput-object v3, p0, Lcom/android/mms/util/ForwardMMSHelper;->m_pduPers:Lcom/google/android/mms/pdu/PduPersister;

    .line 654
    iput-object v3, p0, Lcom/android/mms/util/ForwardMMSHelper;->mMessageBodyEditor:Lcom/android/mms/ui/MessageBodyEditor;

    .line 655
    iput-object v3, p0, Lcom/android/mms/util/ForwardMMSHelper;->m_encstrSubject:Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 656
    iput-object v3, p0, Lcom/android/mms/util/ForwardMMSHelper;->mContentResolver:Landroid/content/ContentResolver;

    .line 657
    iput-object v3, p0, Lcom/android/mms/util/ForwardMMSHelper;->m_ctx:Landroid/content/Context;

    .line 660
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 661
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/mms/util/ForwardMMSHelper;->m_aryDestAddress:[Ljava/lang/String;

    .line 662
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 663
    iget-object v2, p0, Lcom/android/mms/util/ForwardMMSHelper;->m_aryDestAddress:[Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, v2, v0

    .line 662
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 667
    .end local v0           #i:I
    :cond_0
    if-eqz p1, :cond_1

    .line 668
    iput-object p1, p0, Lcom/android/mms/util/ForwardMMSHelper;->m_ctx:Landroid/content/Context;

    .line 669
    invoke-static {p1}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/util/ForwardMMSHelper;->m_pduPers:Lcom/google/android/mms/pdu/PduPersister;

    .line 670
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/util/ForwardMMSHelper;->mContentResolver:Landroid/content/ContentResolver;

    .line 672
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/util/ForwardMMSHelper;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 648
    iget-object v0, p0, Lcom/android/mms/util/ForwardMMSHelper;->m_ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/util/ForwardMMSHelper;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 648
    iget-object v0, p0, Lcom/android/mms/util/ForwardMMSHelper;->mMessageUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/util/ForwardMMSHelper;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 648
    iget-wide v0, p0, Lcom/android/mms/util/ForwardMMSHelper;->m_nIDThread:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/mms/util/ForwardMMSHelper;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 648
    invoke-direct {p0}, Lcom/android/mms/util/ForwardMMSHelper;->isFilterMmsReadReport()Z

    move-result v0

    return v0
.end method

.method private createTemporaryMmsMessage()Landroid/net/Uri;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 825
    new-instance v0, Lcom/google/android/mms/pdu/SendReq;

    invoke-direct {v0}, Lcom/google/android/mms/pdu/SendReq;-><init>()V

    .line 826
    .local v0, sendReq:Lcom/google/android/mms/pdu/SendReq;
    invoke-direct {p0, v0}, Lcom/android/mms/util/ForwardMMSHelper;->fillMessageHeaders(Lcom/google/android/mms/pdu/SendReq;)Z

    .line 827
    iget-object v1, p0, Lcom/android/mms/util/ForwardMMSHelper;->m_pduPers:Lcom/google/android/mms/pdu/PduPersister;

    sget-object v2, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method private deleteTemporarySmsMessage(J)V
    .locals 5
    .parameter "threadId"

    .prologue
    .line 872
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "thread_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 873
    .local v0, where:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/mms/util/ForwardMMSHelper;->m_ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/util/ForwardMMSHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Lcom/google/android/mms/util/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 874
    return-void
.end method

.method private static encodeStrings([Ljava/lang/String;)[Lcom/google/android/mms/pdu/EncodedStringValue;
    .locals 5
    .parameter "array"

    .prologue
    .line 858
    array-length v0, p0

    .line 859
    .local v0, count:I
    if-gtz v0, :cond_1

    .line 860
    const/4 v1, 0x0

    .line 868
    :cond_0
    return-object v1

    .line 863
    :cond_1
    new-array v1, v0, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 864
    .local v1, encodedArray:[Lcom/google/android/mms/pdu/EncodedStringValue;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 865
    new-instance v3, Lcom/google/android/mms/pdu/EncodedStringValue;

    aget-object v4, p0, v2

    invoke-direct {v3, v4}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 864
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private fillMessageHeaders(Lcom/google/android/mms/pdu/SendReq;)Z
    .locals 5
    .parameter "sendReq"

    .prologue
    .line 833
    iget-object v1, p0, Lcom/android/mms/util/ForwardMMSHelper;->m_aryDestAddress:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 834
    iget-object v1, p0, Lcom/android/mms/util/ForwardMMSHelper;->m_aryDestAddress:[Ljava/lang/String;

    invoke-static {v1}, Lcom/android/mms/util/ForwardMMSHelper;->encodeStrings([Ljava/lang/String;)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    .line 835
    .local v0, encodedNumbers:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v0, :cond_0

    .line 836
    invoke-virtual {p1, v0}, Lcom/google/android/mms/pdu/SendReq;->setTo([Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 847
    .end local v0           #encodedNumbers:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_0
    iget-object v1, p0, Lcom/android/mms/util/ForwardMMSHelper;->m_encstrSubject:Lcom/google/android/mms/pdu/EncodedStringValue;

    if-eqz v1, :cond_1

    .line 848
    iget-object v1, p0, Lcom/android/mms/util/ForwardMMSHelper;->m_encstrSubject:Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-virtual {p1, v1}, Lcom/google/android/mms/pdu/SendReq;->setSubject(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 852
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {p1, v1, v2}, Lcom/google/android/mms/pdu/SendReq;->setDate(J)V

    .line 854
    const/4 v1, 0x1

    return v1
.end method

.method private getOrCreateThreadId(Ljava/lang/String;)J
    .locals 4
    .parameter "numbers"

    .prologue
    .line 877
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 878
    .local v1, recipients:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 880
    :try_start_0
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportContactBaseConversation()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 881
    iget-object v2, p0, Lcom/android/mms/util/ForwardMMSHelper;->m_ctx:Landroid/content/Context;

    invoke-static {v2, v1}, Landroid/provider/Telephony$Threads;->getOrCreateThreadIdV2(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v2

    .line 886
    :goto_0
    return-wide v2

    .line 883
    :cond_0
    iget-object v2, p0, Lcom/android/mms/util/ForwardMMSHelper;->m_ctx:Landroid/content/Context;

    invoke-static {v2, v1}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 884
    :catch_0
    move-exception v0

    .line 885
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    iget-object v2, p0, Lcom/android/mms/util/ForwardMMSHelper;->m_ctx:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/google/android/mms/util/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    .line 886
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method private isFilterMmsReadReport()Z
    .locals 3

    .prologue
    .line 794
    new-instance v0, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;

    invoke-direct {v0}, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;-><init>()V

    .line 795
    .local v0, email:Lcom/android/mms/util/CForwardPreference$PREF_VALUE;
    const/4 v2, 0x2

    iput v2, v0, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;->nType:I

    .line 796
    iget-object v2, p0, Lcom/android/mms/util/ForwardMMSHelper;->m_ctx:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/android/mms/util/CForwardPreference;->getPreferenceValue(Landroid/content/Context;Lcom/android/mms/util/CForwardPreference$PREF_VALUE;)Z

    move-result v1

    .line 797
    .local v1, emailFlag:Z
    if-eqz v1, :cond_0

    iget-boolean v2, v0, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;->bEnable:Z

    if-eqz v2, :cond_0

    .line 798
    const/4 v2, 0x1

    .line 800
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public createTextMMS(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "ctx"
    .parameter "SMSMsg"
    .parameter "subject"

    .prologue
    .line 718
    iget-object v0, p0, Lcom/android/mms/util/ForwardMMSHelper;->mMessageBodyEditor:Lcom/android/mms/ui/MessageBodyEditor;

    if-nez v0, :cond_0

    .line 719
    new-instance v0, Lcom/android/mms/ui/MessageBodyEditor;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/mms/ui/MessageBodyEditor;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/mms/util/ForwardMMSHelper;->mMessageBodyEditor:Lcom/android/mms/ui/MessageBodyEditor;

    .line 725
    :cond_0
    iget-object v0, p0, Lcom/android/mms/util/ForwardMMSHelper;->mMessageBodyEditor:Lcom/android/mms/ui/MessageBodyEditor;

    invoke-virtual {v0, p2}, Lcom/android/mms/ui/MessageBodyEditor;->setText(Ljava/lang/String;)V

    .line 727
    new-instance v0, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v0, p3}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/mms/util/ForwardMMSHelper;->m_encstrSubject:Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 728
    const/4 v0, 0x1

    return v0
.end method

.method public createTextMMS(Landroid/content/Context;[Landroid/telephony/SmsMessage;)Z
    .locals 8
    .parameter "ctx"
    .parameter "arySMSMsg"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 677
    iget-object v3, p0, Lcom/android/mms/util/ForwardMMSHelper;->mMessageBodyEditor:Lcom/android/mms/ui/MessageBodyEditor;

    if-nez v3, :cond_0

    .line 678
    new-instance v3, Lcom/android/mms/ui/MessageBodyEditor;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Lcom/android/mms/ui/MessageBodyEditor;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/mms/util/ForwardMMSHelper;->mMessageBodyEditor:Lcom/android/mms/ui/MessageBodyEditor;

    .line 681
    :cond_0
    const v3, 0x7f0902ae

    new-array v4, v7, [Ljava/lang/Object;

    aget-object v5, p2, v6

    invoke-virtual {v5}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 682
    .local v2, strSubject:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v6, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 685
    const-string v1, ""

    .line 686
    .local v1, strBody:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, p2

    if-ge v0, v3, :cond_1

    .line 687
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p2, v0

    invoke-virtual {v4}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 686
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 690
    :cond_1
    iget-object v3, p0, Lcom/android/mms/util/ForwardMMSHelper;->mMessageBodyEditor:Lcom/android/mms/ui/MessageBodyEditor;

    invoke-virtual {v3, v1}, Lcom/android/mms/ui/MessageBodyEditor;->setText(Ljava/lang/String;)V

    .line 694
    new-instance v3, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v3, v2}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/mms/util/ForwardMMSHelper;->m_encstrSubject:Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 712
    return v7
.end method

.method public loadMMS(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 7
    .parameter "ctx"
    .parameter "uriMMS"

    .prologue
    const/4 v4, 0x0

    .line 735
    :try_start_0
    iget-object v5, p0, Lcom/android/mms/util/ForwardMMSHelper;->mMessageBodyEditor:Lcom/android/mms/ui/MessageBodyEditor;

    if-nez v5, :cond_0

    .line 736
    new-instance v5, Lcom/android/mms/ui/MessageBodyEditor;

    const/4 v6, 0x0

    invoke-direct {v5, p1, v6}, Lcom/android/mms/ui/MessageBodyEditor;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/android/mms/util/ForwardMMSHelper;->mMessageBodyEditor:Lcom/android/mms/ui/MessageBodyEditor;

    .line 738
    :cond_0
    iput-object p2, p0, Lcom/android/mms/util/ForwardMMSHelper;->mMessageUri:Landroid/net/Uri;

    .line 740
    iget-object v5, p0, Lcom/android/mms/util/ForwardMMSHelper;->m_pduPers:Lcom/google/android/mms/pdu/PduPersister;

    iget-object v6, p0, Lcom/android/mms/util/ForwardMMSHelper;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v3

    check-cast v3, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    .line 741
    .local v3, pdu:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    invoke-virtual {v3}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/util/ForwardMMSHelper;->m_encstrSubject:Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 742
    invoke-virtual {v3}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/util/ForwardMMSHelper;->m_strFromAddress:Ljava/lang/String;

    .line 744
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getContentType()[B

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([B)V

    .line 745
    .local v0, contentType:Ljava/lang/String;
    const-string v5, "application/vnd.wap.multipart.mixed"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 746
    iget-object v5, p0, Lcom/android/mms/util/ForwardMMSHelper;->mMessageUri:Landroid/net/Uri;

    invoke-static {p1, v5}, Lcom/android/mms/msg/body/MixedMessageBody;->createFromMessageUricheckDrm(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/msg/body/MixedMessageBody;

    move-result-object v2

    .line 747
    .local v2, msgBody:Lcom/android/mms/msg/body/MixedMessageBody;
    iget-object v5, p0, Lcom/android/mms/util/ForwardMMSHelper;->mMessageBodyEditor:Lcom/android/mms/ui/MessageBodyEditor;

    iget-object v6, p0, Lcom/android/mms/util/ForwardMMSHelper;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v5, v2, v6}, Lcom/android/mms/ui/MessageBodyEditor;->setMixedMessageBody(Lcom/android/mms/msg/body/MixedMessageBody;Landroid/net/Uri;)V

    .line 759
    .end local v2           #msgBody:Lcom/android/mms/msg/body/MixedMessageBody;
    :goto_0
    const/4 v4, 0x1

    .end local v0           #contentType:Ljava/lang/String;
    .end local v3           #pdu:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :goto_1
    return v4

    .line 749
    .restart local v0       #contentType:Ljava/lang/String;
    .restart local v3       #pdu:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :cond_1
    const-string v5, "application/vnd.wap.multipart.related"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 750
    iget-object v5, p0, Lcom/android/mms/util/ForwardMMSHelper;->mMessageBodyEditor:Lcom/android/mms/ui/MessageBodyEditor;

    iget-object v6, p0, Lcom/android/mms/util/ForwardMMSHelper;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Lcom/android/mms/ui/MessageBodyEditor;->setSlideshowcheckDrm(Landroid/net/Uri;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 754
    .end local v0           #contentType:Ljava/lang/String;
    .end local v3           #pdu:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :catch_0
    move-exception v1

    .line 755
    .local v1, e:Lcom/google/android/mms/MmsException;
    const v5, 0x7f090060

    invoke-static {p1, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 752
    .end local v1           #e:Lcom/google/android/mms/MmsException;
    .restart local v0       #contentType:Ljava/lang/String;
    .restart local v3       #pdu:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :cond_2
    :try_start_1
    new-instance v5, Lcom/google/android/mms/MmsException;

    const-string v6, "Specified message isn\'t a multimedia message."

    invoke-direct {v5, v6}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public sendMMSAsync()V
    .locals 2

    .prologue
    .line 805
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/util/ForwardMMSHelper$1;

    invoke-direct {v1, p0}, Lcom/android/mms/util/ForwardMMSHelper$1;-><init>(Lcom/android/mms/util/ForwardMMSHelper;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 822
    return-void
.end method

.method public updateTemporaryMmsMessage()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 768
    iget-object v3, p0, Lcom/android/mms/util/ForwardMMSHelper;->mMessageBodyEditor:Lcom/android/mms/ui/MessageBodyEditor;

    invoke-virtual {v3, v2}, Lcom/android/mms/ui/MessageBodyEditor;->toPduBody(Z)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    .line 769
    .local v0, pb:Lcom/google/android/mms/pdu/PduBody;
    if-nez v0, :cond_0

    .line 788
    :goto_0
    return v2

    .line 773
    :cond_0
    new-instance v1, Lcom/google/android/mms/pdu/SendReq;

    invoke-direct {v1}, Lcom/google/android/mms/pdu/SendReq;-><init>()V

    .line 774
    .local v1, sendReq:Lcom/google/android/mms/pdu/SendReq;
    invoke-direct {p0, v1}, Lcom/android/mms/util/ForwardMMSHelper;->fillMessageHeaders(Lcom/google/android/mms/pdu/SendReq;)Z

    .line 775
    iget-object v2, p0, Lcom/android/mms/util/ForwardMMSHelper;->mMessageBodyEditor:Lcom/android/mms/ui/MessageBodyEditor;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageBodyEditor;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/mms/pdu/SendReq;->setContentType([B)V

    .line 779
    invoke-virtual {v1, v0}, Lcom/google/android/mms/pdu/SendReq;->setBody(Lcom/google/android/mms/pdu/PduBody;)V

    .line 782
    iget-object v2, p0, Lcom/android/mms/util/ForwardMMSHelper;->m_pduPers:Lcom/google/android/mms/pdu/PduPersister;

    sget-object v3, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v1, v3}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/util/ForwardMMSHelper;->mMessageUri:Landroid/net/Uri;

    .line 784
    iget-object v2, p0, Lcom/android/mms/util/ForwardMMSHelper;->mMessageBodyEditor:Lcom/android/mms/ui/MessageBodyEditor;

    invoke-virtual {v2, v0}, Lcom/android/mms/ui/MessageBodyEditor;->sync(Lcom/google/android/mms/pdu/PduBody;)V

    .line 785
    iget-object v2, p0, Lcom/android/mms/util/ForwardMMSHelper;->m_strFromAddress:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/mms/util/ForwardMMSHelper;->getOrCreateThreadId(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/mms/util/ForwardMMSHelper;->m_nIDThread:J

    .line 786
    iget-wide v2, p0, Lcom/android/mms/util/ForwardMMSHelper;->m_nIDThread:J

    invoke-direct {p0, v2, v3}, Lcom/android/mms/util/ForwardMMSHelper;->deleteTemporarySmsMessage(J)V

    .line 788
    const/4 v2, 0x1

    goto :goto_0
.end method
