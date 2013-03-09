.class public Lcom/google/android/mms/pdu/PduComposer;
.super Ljava/lang/Object;
.source "PduComposer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/mms/pdu/PduComposer$1;,
        Lcom/google/android/mms/pdu/PduComposer$BufferStack;,
        Lcom/google/android/mms/pdu/PduComposer$PositionMarker;,
        Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;,
        Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final END_STRING_FLAG:I = 0x0

.field private static final LENGTH_QUOTE:I = 0x1f

.field private static final LONG_INTEGER_LENGTH_MAX:I = 0x8

.field private static final PDU_COMPOSER_BLOCK_SIZE:I = 0x400

.field private static final PDU_COMPOSE_CONTENT_ERROR:I = 0x1

.field private static final PDU_COMPOSE_FIELD_NOT_SET:I = 0x2

.field private static final PDU_COMPOSE_FIELD_NOT_SUPPORTED:I = 0x3

.field private static final PDU_COMPOSE_SUCCESS:I = 0x0

.field private static final PDU_EMAIL_ADDRESS_TYPE:I = 0x2

.field private static final PDU_IPV4_ADDRESS_TYPE:I = 0x3

.field private static final PDU_IPV6_ADDRESS_TYPE:I = 0x4

.field private static final PDU_PHONE_NUMBER_ADDRESS_TYPE:I = 0x1

.field private static final PDU_UNKNOWN_ADDRESS_TYPE:I = 0x5

.field private static final QUOTED_STRING_FLAG:I = 0x22

.field static final REGEXP_EMAIL_ADDRESS_TYPE:Ljava/lang/String; = "[a-zA-Z| ]*\\<{0,1}[a-zA-Z| ]+@{1}[a-zA-Z| ]+\\.{1}[a-zA-Z| ]+\\>{0,1}"

.field static final REGEXP_IPV4_ADDRESS_TYPE:Ljava/lang/String; = "[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}"

.field static final REGEXP_IPV6_ADDRESS_TYPE:Ljava/lang/String; = "[a-fA-F]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}"

.field static final REGEXP_PHONE_NUMBER_ADDRESS_TYPE:Ljava/lang/String; = "\\+?[0-9|\\.|\\-]+"

.field private static final SHORT_INTEGER_MAX:I = 0x7f

.field static final STRING_IPV4_ADDRESS_TYPE:Ljava/lang/String; = "/TYPE=IPV4"

.field static final STRING_IPV6_ADDRESS_TYPE:Ljava/lang/String; = "/TYPE=IPV6"

.field static final STRING_PHONE_NUMBER_ADDRESS_TYPE:Ljava/lang/String; = "/TYPE=PLMN"

.field private static final TEXT_MAX:I = 0x7f

.field private static mContentTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

.field private mPdu:Lcom/google/android/mms/pdu/GenericPdu;

.field private mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

.field protected mPosition:I

.field private final mResolver:Landroid/content/ContentResolver;

.field private mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-class v1, Lcom/google/android/mms/pdu/PduComposer;

    invoke-virtual {v1}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    sput-boolean v1, Lcom/google/android/mms/pdu/PduComposer;->$assertionsDisabled:Z

    const/4 v1, 0x0

    sput-object v1, Lcom/google/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/google/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/google/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    sget-object v2, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    iput-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    iput v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    iput-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    iput-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    iput-object p2, p0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {p2}, Lcom/google/android/mms/pdu/GenericPdu;->getPduHeaders()Lcom/google/android/mms/pdu/PduHeaders;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    new-instance v0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-direct {v0, p0, v1}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;-><init>(Lcom/google/android/mms/pdu/PduComposer;Lcom/google/android/mms/pdu/PduComposer$1;)V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduComposer;->createMemoryFile()Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    iput v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/mms/pdu/PduComposer;)Lcom/google/android/mms/pdu/PduComposer$BufferStack;
    .locals 1

    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    return-object v0
.end method

.method private appendAddressType(Lcom/google/android/mms/pdu/EncodedStringValue;)Lcom/google/android/mms/pdu/EncodedStringValue;
    .locals 4

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/mms/pdu/PduComposer;->checkAddressType(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->copy(Lcom/google/android/mms/pdu/EncodedStringValue;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v2

    const/4 v3, 0x1

    if-ne v3, v0, :cond_1

    const-string v3, "/TYPE=PLMN"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->appendTextString([B)V

    :cond_0
    :goto_0
    move-object v3, v2

    :goto_1
    return-object v3

    :cond_1
    const/4 v3, 0x3

    if-ne v3, v0, :cond_2

    const-string v3, "/TYPE=IPV4"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->appendTextString([B)V

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    const/4 v3, 0x4

    if-ne v3, v0, :cond_0

    const-string v3, "/TYPE=IPV6"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->appendTextString([B)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private appendHeader(I)I
    .locals 22

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/16 v20, 0x3

    :goto_0
    return v20

    :pswitch_1
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v19

    if-nez v19, :cond_1

    const/16 v20, 0x12

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    :cond_0
    :goto_1
    const/16 v20, 0x0

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    goto :goto_1

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v18

    if-nez v18, :cond_2

    const/16 v20, 0x2

    goto :goto_0

    :cond_2
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    goto :goto_1

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v3

    if-nez v3, :cond_3

    const/16 v20, 0x2

    goto :goto_0

    :cond_3
    const/4 v14, 0x0

    :goto_2
    array-length v0, v3

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v14, v0, :cond_0

    aget-object v20, v3, v14

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendAddressType(Lcom/google/android/mms/pdu/EncodedStringValue;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v17

    if-nez v17, :cond_4

    const/16 v20, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendEncodedString(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :pswitch_4
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v12

    if-eqz v12, :cond_5

    invoke-virtual {v12}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_5

    new-instance v20, Ljava/lang/String;

    invoke-virtual {v12}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/String;-><init>([B)V

    const-string/jumbo v21, "insert-address-token"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    :cond_5
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    const/16 v20, 0x81

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v13

    const/16 v20, 0x80

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/google/android/mms/pdu/PduComposer;->appendAddressType(Lcom/google/android/mms/pdu/EncodedStringValue;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v17

    if-nez v17, :cond_7

    const/16 v20, 0x1

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendEncodedString(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    invoke-virtual {v13}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    int-to-long v0, v11

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendValueLength(J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    goto/16 :goto_1

    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v16

    if-nez v16, :cond_8

    const/16 v20, 0x2

    goto/16 :goto_0

    :cond_8
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_1

    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v4

    const-wide/16 v20, -0x1

    cmp-long v20, v20, v4

    if-nez v20, :cond_9

    const/16 v20, 0x2

    goto/16 :goto_0

    :cond_9
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/google/android/mms/pdu/PduComposer;->appendDateValue(J)V

    goto/16 :goto_1

    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v6

    if-nez v6, :cond_a

    const/16 v20, 0x2

    goto/16 :goto_0

    :cond_a
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/mms/pdu/PduComposer;->appendEncodedString(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    goto/16 :goto_1

    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v15

    if-nez v15, :cond_b

    const/16 v20, 0x2

    goto/16 :goto_0

    :cond_b
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    const-string v20, "advertisement"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v15, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v20

    if-eqz v20, :cond_c

    const/16 v20, 0x81

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_1

    :cond_c
    const-string v20, "auto"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v15, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v20

    if-eqz v20, :cond_d

    const/16 v20, 0x83

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_1

    :cond_d
    const-string/jumbo v20, "personal"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v15, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v20

    if-eqz v20, :cond_e

    const/16 v20, 0x80

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_1

    :cond_e
    const-string/jumbo v20, "informational"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v15, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v20

    if-eqz v20, :cond_f

    const/16 v20, 0x82

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_1

    :cond_f
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    goto/16 :goto_1

    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v7

    const-wide/16 v20, -0x1

    cmp-long v20, v20, v7

    if-nez v20, :cond_10

    const/16 v20, 0x2

    goto/16 :goto_0

    :cond_10
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v10

    const/16 v20, 0x81

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lcom/google/android/mms/pdu/PduComposer;->appendLongInteger(J)V

    invoke-virtual {v10}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    int-to-long v0, v9

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendValueLength(J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x81
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_9
        :pswitch_9
        :pswitch_4
        :pswitch_8
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_7
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method protected static checkAddressType(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x5

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const-string v1, "\\+?[0-9|\\.|\\-]+"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const-string v1, "[a-zA-Z| ]*\\<{0,1}[a-zA-Z| ]+@{1}[a-zA-Z| ]+\\.{1}[a-zA-Z| ]+\\>{0,1}"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x2

    goto :goto_0

    :cond_4
    const-string v1, "[a-fA-F]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0
.end method

.method private makeAckInd()I
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduComposer;->createMemoryFile()Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    iput v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    :cond_0
    const/16 v2, 0x8c

    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    const/16 v2, 0x85

    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    const/16 v2, 0x98

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/16 v2, 0x8d

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-nez v2, :cond_1

    const/16 v0, 0x91

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move v0, v1

    goto :goto_0
.end method

.method private makeDeliveryInd()I
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduComposer;->createMemoryFile()Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    iput v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    :cond_0
    const/16 v0, 0x8c

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    const/16 v0, 0x86

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    const/16 v0, 0x8d

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    const/16 v0, 0x8b

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    const/16 v0, 0x97

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    const/16 v0, 0x85

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    const/16 v0, 0x95

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    return v1
.end method

.method private makeMessageBody(I)I
    .locals 37

    const/16 v33, 0x0

    const/16 v32, 0x0

    const/16 v35, 0x80

    move/from16 v0, p1

    move/from16 v1, v35

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    move-object/from16 v33, v0

    check-cast v33, Lcom/google/android/mms/pdu/SendReq;

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v20

    new-instance v10, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v35, v0

    const/16 v36, 0x84

    invoke-virtual/range {v35 .. v36}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v35

    move-object/from16 v0, v35

    invoke-direct {v10, v0}, Ljava/lang/String;-><init>([B)V

    sget-object v35, Lcom/google/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    move-object/from16 v0, v35

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    if-nez v12, :cond_2

    const/16 v35, 0x1

    :cond_0
    :goto_1
    return v35

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    move-object/from16 v32, v0

    check-cast v32, Lcom/google/android/mms/pdu/RetrieveConf;

    goto :goto_0

    :cond_2
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v35

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    const/4 v5, 0x0

    sget-short v35, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v36, 0x78

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_3

    sget-short v35, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v36, 0x59

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_3

    sget-short v35, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v36, 0x1b

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_9

    :cond_3
    const-string v35, "PduParser"

    const-string v36, "Aplix - PduComposer.makeMessageBody()"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v15

    if-eqz v33, :cond_5

    invoke-virtual/range {v33 .. v33}, Lcom/google/android/mms/pdu/SendReq;->getContentTypeApplicationId()[B

    move-result-object v16

    if-eqz v16, :cond_4

    new-instance v18, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v35

    if-lez v35, :cond_4

    const-string v35, "Application-ID"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString(Ljava/lang/String;)V

    :cond_4
    invoke-virtual/range {v33 .. v33}, Lcom/google/android/mms/pdu/SendReq;->getContentTypeReplyToApplicationId()[B

    move-result-object v16

    if-eqz v16, :cond_5

    new-instance v18, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v35

    if-lez v35, :cond_5

    const-string v35, "Reply-To-Application-ID"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v15}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    if-eqz v33, :cond_8

    invoke-virtual/range {v33 .. v33}, Lcom/google/android/mms/pdu/SendReq;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v5

    :goto_2
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v35

    if-nez v35, :cond_c

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    if-lez v17, :cond_7

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v35, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v35

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendValueLength(J)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    const-wide/16 v35, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v35

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    const/16 v35, 0x0

    goto/16 :goto_1

    :cond_8
    invoke-virtual/range {v32 .. v32}, Lcom/google/android/mms/pdu/RetrieveConf;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v5

    goto :goto_2

    :cond_9
    if-eqz v33, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    move-object/from16 v35, v0

    check-cast v35, Lcom/google/android/mms/pdu/SendReq;

    invoke-virtual/range {v35 .. v35}, Lcom/google/android/mms/pdu/SendReq;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v5

    :goto_3
    if-eqz v5, :cond_a

    invoke-virtual {v5}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v35

    if-nez v35, :cond_c

    :cond_a
    const-wide/16 v35, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v35

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    const/16 v35, 0x0

    goto/16 :goto_1

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    move-object/from16 v35, v0

    check-cast v35, Lcom/google/android/mms/pdu/RetrieveConf;

    invoke-virtual/range {v35 .. v35}, Lcom/google/android/mms/pdu/RetrieveConf;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v5

    goto :goto_3

    :cond_c
    const/16 v35, 0x0

    :try_start_0
    move/from16 v0, v35

    invoke-virtual {v5, v0}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v34

    if-eqz v34, :cond_d

    const/16 v35, 0x8a

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    const/16 v35, 0x3c

    const/16 v36, 0x0

    aget-byte v36, v34, v36

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_11

    const/16 v35, 0x3e

    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v36, v0

    add-int/lit8 v36, v36, -0x1

    aget-byte v36, v34, v36

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_11

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    :cond_d
    :goto_4
    sget-short v35, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v36, 0x18

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_12

    sget-short v35, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eqz v35, :cond_12

    const/16 v35, 0x89

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    invoke-virtual/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v35

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_e
    :goto_5
    sget-short v35, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v36, 0x78

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_f

    sget-short v35, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v36, 0x59

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_f

    sget-short v35, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v36, 0x1b

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_10

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    :cond_10
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v35, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v35

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendValueLength(J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    invoke-virtual {v5}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v31

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v35, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v35

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    const/16 v24, 0x0

    :goto_6
    move/from16 v0, v24

    move/from16 v1, v31

    if-ge v0, v1, :cond_1e

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v11

    invoke-virtual/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v28

    if-nez v28, :cond_13

    const/16 v35, 0x1

    goto/16 :goto_1

    :cond_11
    :try_start_1
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "<"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    new-instance v36, Ljava/lang/String;

    move-object/from16 v0, v36

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ">"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    goto/16 :goto_5

    :cond_12
    :try_start_2
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v35

    const/16 v36, 0x23

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_e

    const/16 v35, 0x89

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    invoke-virtual/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v35

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_5

    :cond_13
    sget-object v35, Lcom/google/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    new-instance v36, Ljava/lang/String;

    move-object/from16 v0, v36

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v35 .. v36}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Integer;

    if-nez v29, :cond_14

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    :goto_7
    invoke-virtual/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v26

    if-nez v26, :cond_15

    invoke-virtual/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v26

    if-nez v26, :cond_15

    invoke-virtual/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v26

    if-nez v26, :cond_15

    const/16 v35, 0x1

    goto/16 :goto_1

    :cond_14
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Integer;->intValue()I

    move-result v35

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    goto :goto_7

    :cond_15
    const/16 v35, 0x85

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    invoke-virtual/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduPart;->getCharset()I

    move-result v7

    if-eqz v7, :cond_16

    const/16 v35, 0x81

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    :cond_16
    invoke-virtual {v11}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    int-to-long v0, v13

    move-wide/from16 v35, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v35

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendValueLength(J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    invoke-virtual/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v8

    if-eqz v8, :cond_17

    const/16 v35, 0xc0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    const/16 v35, 0x3c

    const/16 v36, 0x0

    aget-byte v36, v8, v36

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_1a

    const/16 v35, 0x3e

    array-length v0, v8

    move/from16 v36, v0

    add-int/lit8 v36, v36, -0x1

    aget-byte v36, v8, v36

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_1a

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/google/android/mms/pdu/PduComposer;->appendQuotedString([B)V

    :cond_17
    :goto_8
    invoke-virtual/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v9

    if-eqz v9, :cond_18

    const/16 v35, 0x8e

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    :cond_18
    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v23

    const/16 v21, 0x0

    invoke-virtual/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v30

    if-eqz v30, :cond_1b

    const/16 v35, 0x0

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v36, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v35

    move/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/mms/pdu/PduComposer;->arraycopy([BII)V

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v21, v0

    :cond_19
    :goto_9
    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v35

    sub-int v35, v35, v23

    move/from16 v0, v21

    move/from16 v1, v35

    if-eq v0, v1, :cond_1d

    new-instance v35, Ljava/lang/RuntimeException;

    const-string v36, "BUG: Length sanity check failed"

    invoke-direct/range {v35 .. v36}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v35

    :cond_1a
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "<"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    new-instance v36, Ljava/lang/String;

    move-object/from16 v0, v36

    invoke-direct {v0, v8}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ">"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendQuotedString(Ljava/lang/String;)V

    goto :goto_8

    :cond_1b
    const/4 v14, 0x0

    const/16 v35, 0x400

    :try_start_3
    move/from16 v0, v35

    new-array v6, v0, [B

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v35, v0

    invoke-virtual/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v14

    const/16 v25, 0x0

    :goto_a
    invoke-virtual {v14, v6}, Ljava/io/InputStream;->read([B)I

    move-result v25

    const/16 v35, -0x1

    move/from16 v0, v25

    move/from16 v1, v35

    if-eq v0, v1, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->extendMemoryFile(Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;I)Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v36

    move/from16 v2, v25

    invoke-virtual {v0, v6, v1, v2}, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;->write([BII)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    move/from16 v35, v0

    add-int v35, v35, v25

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_5

    add-int v21, v21, v25

    goto :goto_a

    :catch_1
    move-exception v22

    const/16 v35, 0x1

    if-eqz v14, :cond_0

    :try_start_4
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v22

    :goto_b
    invoke-virtual/range {v22 .. v22}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    :catch_3
    move-exception v22

    const/16 v35, 0x1

    if-eqz v14, :cond_0

    :try_start_5
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_1

    :catch_4
    move-exception v22

    goto :goto_b

    :catch_5
    move-exception v22

    const/16 v35, 0x1

    if-eqz v14, :cond_0

    :try_start_6
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_1

    :catch_6
    move-exception v22

    goto :goto_b

    :catchall_0
    move-exception v35

    if-eqz v14, :cond_1c

    :try_start_7
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    :cond_1c
    :goto_c
    throw v35

    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v35, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v35

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v35, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v35

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_6

    :cond_1e
    const/16 v35, 0x0

    goto/16 :goto_1

    :catch_7
    move-exception v22

    invoke-virtual/range {v22 .. v22}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    :cond_1f
    if-eqz v14, :cond_19

    :try_start_8
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    goto/16 :goto_9

    :catch_8
    move-exception v22

    invoke-virtual/range {v22 .. v22}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_9
.end method

.method private makeNotifyResp()I
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduComposer;->createMemoryFile()Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    iput v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    :cond_0
    const/16 v2, 0x8c

    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    const/16 v2, 0x83

    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    const/16 v2, 0x98

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/16 v2, 0x8d

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x95

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method private makePdu(I)I
    .locals 10

    const/16 v9, 0x92

    const/16 v8, 0x8b

    const/16 v7, 0x83

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v5, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduComposer;->createMemoryFile()Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    iput v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    :cond_0
    const/16 v5, 0x8c

    invoke-virtual {p0, v5}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    iget-object v5, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v6, 0x98

    invoke-virtual {v5, v6}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v2

    if-nez v2, :cond_1

    const/16 v5, 0x80

    if-ne p1, v5, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Transaction-ID is null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    if-eqz v2, :cond_2

    const/16 v5, 0x98

    invoke-virtual {p0, v5}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    :cond_2
    const/16 v5, 0x8d

    invoke-direct {p0, v5}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    :goto_0
    return v3

    :cond_4
    const/16 v5, 0x85

    invoke-direct {p0, v5}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    const/16 v5, 0x89

    invoke-direct {p0, v5}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v5

    if-nez v5, :cond_3

    const/4 v1, 0x0

    const/16 v5, 0x97

    invoke-direct {p0, v5}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v5

    if-eq v5, v3, :cond_5

    const/4 v1, 0x1

    :cond_5
    const/16 v5, 0x82

    invoke-direct {p0, v5}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v5

    if-eq v5, v3, :cond_6

    const/4 v1, 0x1

    :cond_6
    const/16 v5, 0x81

    invoke-direct {p0, v5}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v5

    if-eq v5, v3, :cond_7

    const/4 v1, 0x1

    :cond_7
    if-eqz v1, :cond_3

    const/16 v3, 0x96

    invoke-direct {p0, v3}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    const/16 v3, 0x8a

    invoke-direct {p0, v3}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    const/16 v3, 0x88

    invoke-direct {p0, v3}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x78

    if-eq v3, v5, :cond_8

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x59

    if-eq v3, v5, :cond_8

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0x1b

    if-ne v3, v5, :cond_9

    :cond_8
    const-string v3, "PduParser"

    const-string v5, "Aplix - appendHeader(PduHeaders.DELIVERY_TIME)"

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x87

    invoke-direct {p0, v3}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    :cond_9
    const/16 v3, 0x8f

    invoke-direct {p0, v3}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    const/16 v3, 0x86

    invoke-direct {p0, v3}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    iget-object v3, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-virtual {v3, v8}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-direct {p0, v8}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    :cond_a
    iget-object v3, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-virtual {v3, v9}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v3

    if-lez v3, :cond_b

    invoke-virtual {p0, v9}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    :cond_b
    iget-object v3, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-virtual {v3, v7}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {p0, v7}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    :cond_c
    const/16 v3, 0x90

    invoke-direct {p0, v3}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    const/16 v3, 0x84

    invoke-virtual {p0, v3}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    invoke-direct {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->makeMessageBody(I)I

    move v3, v4

    goto/16 :goto_0
.end method

.method private makeReadOrigInd()I
    .locals 1

    const/16 v0, 0x88

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->makeReadReport(I)I

    move-result v0

    return v0
.end method

.method private makeReadRecInd()I
    .locals 1

    const/16 v0, 0x87

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->makeReadReport(I)I

    move-result v0

    return v0
.end method

.method private makeReadReport(I)I
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduComposer;->createMemoryFile()Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    iput v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    :cond_0
    const/16 v2, 0x8c

    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    const/16 v2, 0x8d

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/16 v2, 0x8b

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x97

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x89

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x85

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    const/16 v2, 0x9b

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method private makeRetrievePdu()I
    .locals 1

    const/16 v0, 0x84

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->makePdu(I)I

    move-result v0

    return v0
.end method

.method private makeSendReqPdu()I
    .locals 1

    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->makePdu(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected append(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->extendMemoryFile(Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;I)Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    invoke-virtual {v0, p1}, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;->write(I)V

    iget v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    return-void
.end method

.method protected appendDateValue(J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/mms/pdu/PduComposer;->appendLongInteger(J)V

    return-void
.end method

.method protected appendEncodedString(Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .locals 6

    sget-boolean v4, Lcom/google/android/mms/pdu/PduComposer;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getCharacterSet()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v3

    if-nez v3, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    invoke-virtual {p0, v3}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v1

    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    int-to-long v4, v1

    invoke-virtual {p0, v4, v5}, Lcom/google/android/mms/pdu/PduComposer;->appendValueLength(J)V

    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    goto :goto_0
.end method

.method protected appendLongInteger(J)V
    .locals 9

    const/16 v7, 0x8

    move-wide v3, p1

    const/4 v2, 0x0

    :goto_0
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-eqz v5, :cond_0

    if-ge v2, v7, :cond_0

    ushr-long/2addr v3, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendShortLength(I)V

    add-int/lit8 v5, v2, -0x1

    mul-int/lit8 v1, v5, 0x8

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    ushr-long v5, p1, v1

    const-wide/16 v7, 0xff

    and-long/2addr v5, v7

    long-to-int v5, v5

    invoke-virtual {p0, v5}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    add-int/lit8 v1, v1, -0x8

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected appendOctet(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    return-void
.end method

.method protected appendQuotedString(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendQuotedString([B)V

    return-void
.end method

.method protected appendQuotedString([B)V
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    array-length v0, p1

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/mms/pdu/PduComposer;->arraycopy([BII)V

    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    return-void
.end method

.method protected appendShortInteger(I)V
    .locals 1

    or-int/lit16 v0, p1, 0x80

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    return-void
.end method

.method protected appendShortLength(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    return-void
.end method

.method protected appendTextString(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    return-void
.end method

.method protected appendTextString([B)V
    .locals 3

    const/16 v2, 0x7f

    const/4 v1, 0x0

    aget-byte v0, p1, v1

    and-int/lit16 v0, v0, 0xff

    if-le v0, v2, :cond_0

    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    :cond_0
    array-length v0, p1

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/mms/pdu/PduComposer;->arraycopy([BII)V

    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    return-void
.end method

.method protected appendUintvarInteger(J)V
    .locals 11

    const-wide/16 v9, 0x7f

    const-wide/16 v1, 0x7f

    const/4 v0, 0x0

    :goto_0
    const/4 v5, 0x5

    if-ge v0, v5, :cond_0

    cmp-long v5, p1, v1

    if-gez v5, :cond_1

    :cond_0
    :goto_1
    if-lez v0, :cond_2

    mul-int/lit8 v5, v0, 0x7

    ushr-long v3, p1, v5

    and-long/2addr v3, v9

    const-wide/16 v5, 0x80

    or-long/2addr v5, v3

    const-wide/16 v7, 0xff

    and-long/2addr v5, v7

    long-to-int v5, v5

    invoke-virtual {p0, v5}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x7

    shl-long v5, v1, v5

    or-long v1, v5, v9

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    and-long v5, p1, v9

    long-to-int v5, v5

    invoke-virtual {p0, v5}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    return-void
.end method

.method protected appendValueLength(J)V
    .locals 2

    const-wide/16 v0, 0x1f

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    long-to-int v0, p1

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendShortLength(I)V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    invoke-virtual {p0, p1, p2}, Lcom/google/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    goto :goto_0
.end method

.method protected arraycopy([BII)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    invoke-virtual {p0, v0, p3}, Lcom/google/android/mms/pdu/PduComposer;->extendMemoryFile(Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;I)Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;->write([BII)V

    iget v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    return-void
.end method

.method protected createMemoryFile()Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;
    .locals 6

    const/4 v3, 0x0

    const/high16 v1, 0x8

    :try_start_0
    new-instance v2, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    const/4 v4, 0x0

    const/high16 v5, 0x8

    invoke-direct {v2, p0, v4, v5}, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;-><init>(Lcom/google/android/mms/pdu/PduComposer;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v3

    goto :goto_0
.end method

.method protected extendMemoryFile(Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;I)Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;
    .locals 6

    iget v3, p1, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;->mPosition:I

    add-int/2addr v3, p2

    iget v4, p1, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;->mSize:I

    if-lt v3, v4, :cond_1

    :try_start_0
    iget v3, p1, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;->mSize:I

    mul-int/lit8 v2, v3, 0x2

    iget v3, p1, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;->mPosition:I

    add-int/2addr v3, p2

    if-lt v3, v2, :cond_0

    iget v3, p1, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;->mPosition:I

    add-int/2addr v3, p2

    add-int/lit8 v2, v3, 0x1

    :cond_0
    new-instance v1, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3, v2}, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;-><init>(Lcom/google/android/mms/pdu/PduComposer;Ljava/lang/String;I)V

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;->toByteArray()[B

    move-result-object v3

    const/4 v4, 0x0

    iget v5, p1, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;->mPosition:I

    invoke-virtual {v1, v3, v4, v5}, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;->write([BII)V

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    move-object v1, p1

    goto :goto_0
.end method

.method public make()[B
    .locals 5

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-object v1

    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeSendReqPdu()I

    move-result v3

    if-nez v3, :cond_0

    :cond_1
    iget-object v3, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;->toByteArray()[B

    move-result-object v1

    :try_start_0
    iget-object v3, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;->close()V

    iget-object v3, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    #getter for: Lcom/google/android/mms/pdu/PduComposer$BufferStack;->stack:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;
    invoke-static {v3}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->access$100(Lcom/google/android/mms/pdu/PduComposer$BufferStack;)Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    #getter for: Lcom/google/android/mms/pdu/PduComposer$BufferStack;->stack:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;
    invoke-static {v3}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->access$100(Lcom/google/android/mms/pdu/PduComposer$BufferStack;)Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;->currentMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    #getter for: Lcom/google/android/mms/pdu/PduComposer$BufferStack;->stack:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;
    invoke-static {v3}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->access$100(Lcom/google/android/mms/pdu/PduComposer$BufferStack;)Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;->currentMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;->close()V

    :cond_2
    iget-object v3, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    #getter for: Lcom/google/android/mms/pdu/PduComposer$BufferStack;->toCopy:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;
    invoke-static {v3}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->access$200(Lcom/google/android/mms/pdu/PduComposer$BufferStack;)Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    #getter for: Lcom/google/android/mms/pdu/PduComposer$BufferStack;->toCopy:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;
    invoke-static {v3}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->access$200(Lcom/google/android/mms/pdu/PduComposer$BufferStack;)Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;->currentMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    #getter for: Lcom/google/android/mms/pdu/PduComposer$BufferStack;->toCopy:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;
    invoke-static {v3}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->access$200(Lcom/google/android/mms/pdu/PduComposer$BufferStack;)Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;->currentMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;->close()V

    :cond_3
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "PduComposer"

    const-string v4, "Unexpected IOException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeRetrievePdu()I

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeNotifyResp()I

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeAckInd()I

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :pswitch_5
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeReadRecInd()I

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :pswitch_6
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeReadOrigInd()I

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :pswitch_7
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeDeliveryInd()I

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_7
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
