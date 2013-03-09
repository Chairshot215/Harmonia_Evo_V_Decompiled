.class Lcom/android/mms/util/SendMMSHelper;
.super Ljava/lang/Object;
.source "MsgForwardReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/util/SendMMSHelper$CMediaPickerHandler;,
        Lcom/android/mms/util/SendMMSHelper$OnMyMediaPickedListener;
    }
.end annotation


# static fields
.field private static m_aryDestAddress:[Ljava/lang/String;

.field private static m_pduPers:Lcom/google/android/mms/pdu/PduPersister;


# instance fields
.field private mHandler:Lcom/android/mms/util/SendMMSHelper$CMediaPickerHandler;

.field private mListener:Lcom/android/mms/util/SendMMSHelper$OnMyMediaPickedListener;

.field private mMediaPicker:Lcom/android/mms/ui/MediaPicker;

.field private mMessageBodyEditor:Lcom/android/mms/ui/MessageBodyEditor;

.field private mMessageUri:Landroid/net/Uri;

.field private m_encstrSubject:Lcom/google/android/mms/pdu/EncodedStringValue;

.field private m_nTimestamp:J

.field private m_strCSID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 694
    sput-object v0, Lcom/android/mms/util/SendMMSHelper;->m_pduPers:Lcom/google/android/mms/pdu/PduPersister;

    .line 702
    sput-object v0, Lcom/android/mms/util/SendMMSHelper;->m_aryDestAddress:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 707
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 695
    iput-object v0, p0, Lcom/android/mms/util/SendMMSHelper;->mHandler:Lcom/android/mms/util/SendMMSHelper$CMediaPickerHandler;

    .line 696
    iput-object v0, p0, Lcom/android/mms/util/SendMMSHelper;->mMessageBodyEditor:Lcom/android/mms/ui/MessageBodyEditor;

    .line 697
    iput-object v0, p0, Lcom/android/mms/util/SendMMSHelper;->mMediaPicker:Lcom/android/mms/ui/MediaPicker;

    .line 698
    iput-object v0, p0, Lcom/android/mms/util/SendMMSHelper;->mListener:Lcom/android/mms/util/SendMMSHelper$OnMyMediaPickedListener;

    .line 700
    iput-object v0, p0, Lcom/android/mms/util/SendMMSHelper;->mMessageUri:Landroid/net/Uri;

    .line 701
    iput-object v0, p0, Lcom/android/mms/util/SendMMSHelper;->m_encstrSubject:Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 704
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/android/mms/util/SendMMSHelper;->m_strCSID:Ljava/lang/String;

    .line 705
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/util/SendMMSHelper;->m_nTimestamp:J

    .line 708
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/util/SendMMSHelper;)Lcom/android/mms/ui/MessageBodyEditor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 693
    iget-object v0, p0, Lcom/android/mms/util/SendMMSHelper;->mMessageBodyEditor:Lcom/android/mms/ui/MessageBodyEditor;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/util/SendMMSHelper;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 693
    iget-object v0, p0, Lcom/android/mms/util/SendMMSHelper;->mMessageUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/mms/util/SendMMSHelper;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 693
    iput-object p1, p0, Lcom/android/mms/util/SendMMSHelper;->mMessageUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/mms/util/SendMMSHelper;)Lcom/android/mms/ui/MediaPicker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 693
    iget-object v0, p0, Lcom/android/mms/util/SendMMSHelper;->mMediaPicker:Lcom/android/mms/ui/MediaPicker;

    return-object v0
.end method

.method static synthetic access$300()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 693
    sget-object v0, Lcom/android/mms/util/SendMMSHelper;->m_aryDestAddress:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/util/SendMMSHelper;Landroid/content/Context;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 693
    invoke-direct {p0, p1}, Lcom/android/mms/util/SendMMSHelper;->updateTemporaryMmsMessage(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/mms/util/SendMMSHelper;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 693
    iget-object v0, p0, Lcom/android/mms/util/SendMMSHelper;->m_strCSID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/util/SendMMSHelper;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 693
    iget-wide v0, p0, Lcom/android/mms/util/SendMMSHelper;->m_nTimestamp:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/android/mms/util/SendMMSHelper;Landroid/content/Context;JLandroid/net/Uri;Ljava/lang/String;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 693
    invoke-direct/range {p0 .. p7}, Lcom/android/mms/util/SendMMSHelper;->sendMessageAsync(Landroid/content/Context;JLandroid/net/Uri;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/mms/util/SendMMSHelper;Landroid/content/Context;[Ljava/lang/String;)J
    .locals 2
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 693
    invoke-direct {p0, p1, p2}, Lcom/android/mms/util/SendMMSHelper;->getOrCreateThreadId(Landroid/content/Context;[Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$900(Landroid/content/Context;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 693
    invoke-static {p0, p1, p2}, Lcom/android/mms/util/SendMMSHelper;->deleteTemporarySmsMessage(Landroid/content/Context;J)V

    return-void
.end method

.method private static deleteTemporarySmsMessage(Landroid/content/Context;J)V
    .locals 4
    .parameter "ctx"
    .parameter "threadId"

    .prologue
    .line 973
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

    .line 974
    .local v0, where:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v0, v3}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 975
    return-void
.end method

.method private encodeStrings([Ljava/lang/String;)[Lcom/google/android/mms/pdu/EncodedStringValue;
    .locals 5
    .parameter "array"

    .prologue
    .line 959
    array-length v0, p1

    .line 960
    .local v0, count:I
    if-gtz v0, :cond_1

    .line 961
    const/4 v1, 0x0

    .line 969
    :cond_0
    return-object v1

    .line 964
    :cond_1
    new-array v1, v0, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 965
    .local v1, encodedArray:[Lcom/google/android/mms/pdu/EncodedStringValue;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 966
    new-instance v3, Lcom/google/android/mms/pdu/EncodedStringValue;

    aget-object v4, p1, v2

    invoke-direct {v3, v4}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 965
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private fillMessageHeaders(Lcom/google/android/mms/pdu/SendReq;)Z
    .locals 5
    .parameter "sendReq"

    .prologue
    .line 936
    sget-object v1, Lcom/android/mms/util/SendMMSHelper;->m_aryDestAddress:[Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/mms/util/SendMMSHelper;->encodeStrings([Ljava/lang/String;)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    .line 937
    .local v0, encodedNumbers:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v0, :cond_0

    .line 938
    invoke-virtual {p1, v0}, Lcom/google/android/mms/pdu/SendReq;->setTo([Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 948
    :cond_0
    iget-object v1, p0, Lcom/android/mms/util/SendMMSHelper;->m_encstrSubject:Lcom/google/android/mms/pdu/EncodedStringValue;

    if-eqz v1, :cond_1

    .line 949
    iget-object v1, p0, Lcom/android/mms/util/SendMMSHelper;->m_encstrSubject:Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-virtual {p1, v1}, Lcom/google/android/mms/pdu/SendReq;->setSubject(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 953
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {p1, v1, v2}, Lcom/google/android/mms/pdu/SendReq;->setDate(J)V

    .line 955
    const/4 v1, 0x1

    return v1
.end method

.method private getCompleteUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 2
    .parameter "sourceUri"

    .prologue
    .line 712
    if-eqz p1, :cond_0

    .line 713
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/mnt/sdcard/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file:/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 714
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file:/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 717
    :cond_0
    return-object p1
.end method

.method private getOrCreateThreadId(Landroid/content/Context;[Ljava/lang/String;)J
    .locals 4
    .parameter "ctx"
    .parameter "numbers"

    .prologue
    .line 978
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 979
    .local v1, recipients:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 981
    :try_start_0
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportContactBaseConversation()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 982
    invoke-static {p1, v1}, Landroid/provider/Telephony$Threads;->getOrCreateThreadIdV2(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v2

    .line 987
    :goto_0
    return-wide v2

    .line 984
    :cond_0
    invoke-static {p1, v1}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 985
    :catch_0
    move-exception v0

    .line 986
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    invoke-static {p1, v0}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    .line 987
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method private sendMessageAsync(Landroid/content/Context;JLandroid/net/Uri;Ljava/lang/String;J)V
    .locals 10
    .parameter "ctx"
    .parameter "mmThreadId"
    .parameter "mmMessageUri"
    .parameter "strCSID"
    .parameter "nTimestamp"

    .prologue
    .line 882
    new-instance v9, Ljava/lang/Thread;

    new-instance v0, Lcom/android/mms/util/SendMMSHelper$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-wide v4, p2

    move-object v6, p5

    move-wide/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/mms/util/SendMMSHelper$1;-><init>(Lcom/android/mms/util/SendMMSHelper;Landroid/content/Context;Landroid/net/Uri;JLjava/lang/String;J)V

    invoke-direct {v9, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    .line 914
    return-void
.end method

.method private updateTemporaryMmsMessage(Landroid/content/Context;)Z
    .locals 6
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 917
    iget-object v4, p0, Lcom/android/mms/util/SendMMSHelper;->mMessageBodyEditor:Lcom/android/mms/ui/MessageBodyEditor;

    invoke-virtual {v4, v2}, Lcom/android/mms/ui/MessageBodyEditor;->toPduBody(Z)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    .line 918
    .local v0, pb:Lcom/google/android/mms/pdu/PduBody;
    if-nez v0, :cond_0

    .line 931
    :goto_0
    return v2

    .line 922
    :cond_0
    new-instance v1, Lcom/google/android/mms/pdu/SendReq;

    invoke-direct {v1}, Lcom/google/android/mms/pdu/SendReq;-><init>()V

    .line 923
    .local v1, sendReq:Lcom/google/android/mms/pdu/SendReq;
    invoke-direct {p0, v1}, Lcom/android/mms/util/SendMMSHelper;->fillMessageHeaders(Lcom/google/android/mms/pdu/SendReq;)Z

    .line 924
    iget-object v2, p0, Lcom/android/mms/util/SendMMSHelper;->mMessageBodyEditor:Lcom/android/mms/ui/MessageBodyEditor;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageBodyEditor;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/mms/pdu/SendReq;->setContentType([B)V

    .line 925
    sget-object v2, Lcom/android/mms/util/SendMMSHelper;->m_pduPers:Lcom/google/android/mms/pdu/PduPersister;

    iget-object v4, p0, Lcom/android/mms/util/SendMMSHelper;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v2, v4, v1, v3}, Lcom/google/android/mms/pdu/PduPersister;->updateHeaders(Landroid/net/Uri;Lcom/google/android/mms/pdu/SendReq;Z)V

    .line 926
    sget-object v2, Lcom/android/mms/util/SendMMSHelper;->m_pduPers:Lcom/google/android/mms/pdu/PduPersister;

    iget-object v4, p0, Lcom/android/mms/util/SendMMSHelper;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v2, v4, v0}, Lcom/google/android/mms/pdu/PduPersister;->updateParts(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduBody;)V

    .line 927
    iget-object v2, p0, Lcom/android/mms/util/SendMMSHelper;->mMessageBodyEditor:Lcom/android/mms/ui/MessageBodyEditor;

    invoke-virtual {v2, v0}, Lcom/android/mms/ui/MessageBodyEditor;->sync(Lcom/google/android/mms/pdu/PduBody;)V

    .line 929
    const-wide/16 v4, 0x0

    invoke-static {p1, v4, v5}, Lcom/android/mms/util/SendMMSHelper;->deleteTemporarySmsMessage(Landroid/content/Context;J)V

    move v2, v3

    .line 931
    goto :goto_0
.end method


# virtual methods
.method public SendMMS(Landroid/content/Context;Ljava/lang/String;JLandroid/content/Intent;)Z
    .locals 22
    .parameter "ctx"
    .parameter "strCSID"
    .parameter "nTimestamp"
    .parameter "itCompose"

    .prologue
    .line 721
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/util/SendMMSHelper;->m_strCSID:Ljava/lang/String;

    .line 722
    move-wide/from16 v0, p3

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/mms/util/SendMMSHelper;->m_nTimestamp:J

    .line 723
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v3

    sput-object v3, Lcom/android/mms/util/SendMMSHelper;->m_pduPers:Lcom/google/android/mms/pdu/PduPersister;

    .line 725
    sget-boolean v3, Lcom/android/mms/util/MsgForwardReceiver;->bSupportSendTask:Z

    if-eqz v3, :cond_8

    .line 726
    new-instance v3, Lcom/android/mms/ui/MessageBodyEditor;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v6}, Lcom/android/mms/ui/MessageBodyEditor;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/mms/util/SendMMSHelper;->mMessageBodyEditor:Lcom/android/mms/ui/MessageBodyEditor;

    .line 727
    new-instance v3, Lcom/android/mms/ui/MediaPicker;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-direct {v3, v6, v0, v7, v8}, Lcom/android/mms/ui/MediaPicker;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;Lcom/android/mms/ui/MessageBodyEditor;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/mms/util/SendMMSHelper;->mMediaPicker:Lcom/android/mms/ui/MediaPicker;

    .line 737
    :goto_0
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/mms/util/SendMMSHelper;->mMessageUri:Landroid/net/Uri;

    .line 740
    sget-boolean v3, Lcom/android/mms/util/MsgForwardReceiver;->bSupportSendTask:Z

    if-eqz v3, :cond_4

    .line 741
    const-string v3, "android.intent.extra.STREAM"

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v21

    check-cast v21, Landroid/net/Uri;

    .line 742
    .local v21, uri_image:Landroid/net/Uri;
    if-nez v21, :cond_0

    .line 743
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v21

    .line 744
    :cond_0
    const/16 v18, 0x0

    .line 745
    .local v18, mimeType:Ljava/lang/String;
    const/4 v4, 0x0

    .line 746
    .local v4, media:Lcom/android/mms/model/MediaModel;
    if-eqz v21, :cond_2

    .line 747
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/mms/util/SendMMSHelper;->getCompleteUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v21

    .line 748
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v18

    .line 749
    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v19

    .line 751
    .local v19, scheme:Ljava/lang/String;
    if-eqz v19, :cond_9

    if-eqz v18, :cond_9

    :try_start_0
    const-string v3, "file"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    const-string v6, "com.htc.android.mail"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    const-string v6, "gmail"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 755
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/SendMMSHelper;->mMediaPicker:Lcom/android/mms/ui/MediaPicker;

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Lcom/android/mms/ui/MediaPicker;->makeNewImage(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/mms/model/ImageModel;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 763
    .end local v19           #scheme:Ljava/lang/String;
    :cond_2
    :goto_1
    if-eqz v4, :cond_4

    .line 764
    const-string v3, "sms_body"

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 765
    .local v5, m_strText:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportConvertToRelatedForSingleFile()Z

    move-result v15

    .line 766
    .local v15, bForceConvert:Z
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_3

    if-eqz v15, :cond_a

    .line 768
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/SendMMSHelper;->mMessageBodyEditor:Lcom/android/mms/ui/MessageBodyEditor;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/android/mms/ui/MessageBodyEditor;->converToRelated(Lcom/android/mms/model/MediaModel;Ljava/lang/String;ZZLandroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/mms/util/SendMMSHelper;->mMessageUri:Landroid/net/Uri;
    :try_end_1
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_2

    .line 789
    .end local v4           #media:Lcom/android/mms/model/MediaModel;
    .end local v5           #m_strText:Ljava/lang/String;
    .end local v15           #bForceConvert:Z
    .end local v18           #mimeType:Ljava/lang/String;
    .end local v21           #uri_image:Landroid/net/Uri;
    :cond_4
    :goto_2
    new-instance v3, Lcom/google/android/mms/pdu/EncodedStringValue;

    const-string v6, "subject"

    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/mms/util/SendMMSHelper;->m_encstrSubject:Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 791
    const-string v3, "address"

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 792
    .local v20, strAddress:Ljava/lang/String;
    const/4 v14, 0x0

    .line 794
    .local v14, aryAddress:[Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 795
    const-string v3, ";"

    invoke-static {}, Lcom/android/mms/MmsApp;->getMaxSMSRecipientNumber()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v14

    .line 798
    :cond_5
    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/mms/ui/RecipientList;->getRecipientListFromArray(Landroid/content/Context;[Ljava/lang/String;)Lcom/android/mms/ui/RecipientList;

    move-result-object v17

    .line 799
    .local v17, listRecipient:Lcom/android/mms/ui/RecipientList;
    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/ui/RecipientList;->hasInvalidRecipient()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 800
    const-string v3, "MsgForwardReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invalid recipient list >"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/ui/RecipientList;->getInvalidRecipientString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/ui/RecipientList;->deleteAllInvalidRecipient()V

    .line 804
    :cond_6
    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/ui/RecipientList;->getToNumbers()[Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/mms/util/SendMMSHelper;->m_aryDestAddress:[Ljava/lang/String;

    .line 807
    sget-boolean v3, Lcom/android/mms/util/MsgForwardReceiver;->bSupportSendTask:Z

    if-eqz v3, :cond_7

    .line 809
    :try_start_2
    invoke-direct/range {p0 .. p1}, Lcom/android/mms/util/SendMMSHelper;->updateTemporaryMmsMessage(Landroid/content/Context;)Z

    .line 810
    const-wide/16 v8, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/util/SendMMSHelper;->mMessageUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/util/SendMMSHelper;->m_strCSID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/mms/util/SendMMSHelper;->m_nTimestamp:J

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-direct/range {v6 .. v13}, Lcom/android/mms/util/SendMMSHelper;->sendMessageAsync(Landroid/content/Context;JLandroid/net/Uri;Ljava/lang/String;J)V
    :try_end_2
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_3

    .line 818
    :cond_7
    const/4 v3, 0x1

    .end local v14           #aryAddress:[Ljava/lang/String;
    .end local v17           #listRecipient:Lcom/android/mms/ui/RecipientList;
    .end local v20           #strAddress:Ljava/lang/String;
    :goto_3
    return v3

    .line 729
    :cond_8
    new-instance v3, Lcom/android/mms/util/SendMMSHelper$CMediaPickerHandler;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/mms/util/SendMMSHelper$CMediaPickerHandler;-><init>(Lcom/android/mms/util/SendMMSHelper;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/mms/util/SendMMSHelper;->mHandler:Lcom/android/mms/util/SendMMSHelper$CMediaPickerHandler;

    .line 730
    new-instance v3, Lcom/android/mms/ui/MessageBodyEditor;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v6}, Lcom/android/mms/ui/MessageBodyEditor;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/mms/util/SendMMSHelper;->mMessageBodyEditor:Lcom/android/mms/ui/MessageBodyEditor;

    .line 731
    new-instance v3, Lcom/android/mms/ui/MediaPicker;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/util/SendMMSHelper;->mHandler:Lcom/android/mms/util/SendMMSHelper$CMediaPickerHandler;

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-direct {v3, v6, v0, v7, v8}, Lcom/android/mms/ui/MediaPicker;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;Lcom/android/mms/ui/MessageBodyEditor;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/mms/util/SendMMSHelper;->mMediaPicker:Lcom/android/mms/ui/MediaPicker;

    .line 732
    new-instance v3, Lcom/android/mms/util/SendMMSHelper$OnMyMediaPickedListener;

    const-string v6, "sms_body"

    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1, v6}, Lcom/android/mms/util/SendMMSHelper$OnMyMediaPickedListener;-><init>(Lcom/android/mms/util/SendMMSHelper;Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/mms/util/SendMMSHelper;->mListener:Lcom/android/mms/util/SendMMSHelper$OnMyMediaPickedListener;

    .line 733
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/SendMMSHelper;->mMediaPicker:Lcom/android/mms/ui/MediaPicker;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/util/SendMMSHelper;->mListener:Lcom/android/mms/util/SendMMSHelper$OnMyMediaPickedListener;

    invoke-virtual {v3, v6}, Lcom/android/mms/ui/MediaPicker;->setOnMediaPickedListener(Lcom/android/mms/ui/MediaPicker$OnMediaPickedListener;)V

    .line 734
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/SendMMSHelper;->mMediaPicker:Lcom/android/mms/ui/MediaPicker;

    const/16 v6, 0xa

    move-object/from16 v0, p5

    invoke-virtual {v3, v6, v0}, Lcom/android/mms/ui/MediaPicker;->onMediaPicked(ILandroid/content/Intent;)Lcom/android/mms/model/MediaModel;

    goto/16 :goto_0

    .line 757
    .restart local v4       #media:Lcom/android/mms/model/MediaModel;
    .restart local v18       #mimeType:Ljava/lang/String;
    .restart local v19       #scheme:Ljava/lang/String;
    .restart local v21       #uri_image:Landroid/net/Uri;
    :cond_9
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/SendMMSHelper;->mMediaPicker:Lcom/android/mms/ui/MediaPicker;

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/android/mms/ui/MediaPicker;->makeNewImage(Landroid/net/Uri;)Lcom/android/mms/model/ImageModel;
    :try_end_3
    .catch Lcom/google/android/mms/MmsException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v4

    goto/16 :goto_1

    .line 758
    :catch_0
    move-exception v16

    .line 759
    .local v16, e:Lcom/google/android/mms/MmsException;
    const/4 v3, 0x0

    goto :goto_3

    .line 769
    .end local v16           #e:Lcom/google/android/mms/MmsException;
    .end local v19           #scheme:Ljava/lang/String;
    .restart local v5       #m_strText:Ljava/lang/String;
    .restart local v15       #bForceConvert:Z
    :catch_1
    move-exception v16

    .line 770
    .local v16, e:Lcom/android/mms/ExceedMessageSizeException;
    const v3, 0x7f090051

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v6, 0x7f090162

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-static {v0, v3, v6}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    const/4 v3, 0x0

    goto :goto_3

    .line 775
    .end local v16           #e:Lcom/android/mms/ExceedMessageSizeException;
    :catch_2
    move-exception v16

    .line 776
    .local v16, e:Lcom/google/android/mms/MmsException;
    const v3, 0x7f090060

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 778
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 781
    .end local v16           #e:Lcom/google/android/mms/MmsException;
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/SendMMSHelper;->mMessageBodyEditor:Lcom/android/mms/ui/MessageBodyEditor;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageBodyEditor;->clearMedia()V

    .line 782
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/SendMMSHelper;->mMessageBodyEditor:Lcom/android/mms/ui/MessageBodyEditor;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/android/mms/ui/MessageBodyEditor;->clear(Z)V

    .line 783
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/SendMMSHelper;->mMessageBodyEditor:Lcom/android/mms/ui/MessageBodyEditor;

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/MessageBodyEditor;->addMedia(Lcom/android/mms/model/MediaModel;)V

    goto/16 :goto_2

    .line 811
    .end local v4           #media:Lcom/android/mms/model/MediaModel;
    .end local v5           #m_strText:Ljava/lang/String;
    .end local v15           #bForceConvert:Z
    .end local v18           #mimeType:Ljava/lang/String;
    .end local v21           #uri_image:Landroid/net/Uri;
    .restart local v14       #aryAddress:[Ljava/lang/String;
    .restart local v17       #listRecipient:Lcom/android/mms/ui/RecipientList;
    .restart local v20       #strAddress:Ljava/lang/String;
    :catch_3
    move-exception v16

    .line 812
    .restart local v16       #e:Lcom/google/android/mms/MmsException;
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/MmsException;->printStackTrace()V

    .line 813
    const/4 v3, 0x0

    goto/16 :goto_3
.end method
