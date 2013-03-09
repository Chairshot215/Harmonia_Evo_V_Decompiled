.class public Lcom/htc/htcsprintservice/dm/DMAgentConnector;
.super Ljava/lang/Object;
.source "DMAgentConnector.java"


# static fields
.field private static final DBG:Z = false

#the value of this static final field might be set in the static constructor
.field private static final IS_NOT_SPC_PROJECT:Z = false

#the value of this static final field might be set in the static constructor
.field private static final IS_SPRINT_PROJECT:Z = false

#the value of this static final field might be set in the static constructor
.field private static final IS_VM_PROJECT:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "HtcSpcServiceDM"

.field private static PrivateKey:Ljava/lang/String; = null

.field public static final Slot_1_NAI:Ljava/lang/String; = "C006"

.field private static bEncrypt:Z = false

.field private static bPrivateKey:Z = false

.field public static final cmdID:Ljava/lang/String; = ":IDOMADM"

.field public static final cmdRead:Ljava/lang/String; = "R"

.field public static cmdTY1:Ljava/lang/String; = null

.field public static cmdTY2:Ljava/lang/String; = null

.field public static cmdTY3:Ljava/lang/String; = null

.field public static final cmdWrite:Ljava/lang/String; = "W"

.field public static final cmdXCMD:Ljava/lang/String; = ":XCMD"


# instance fields
.field private final BufferLength:I

.field private My_hex:Ljava/lang/String;

.field private final PORT:I

.field private PublicEncryptKey:Ljava/lang/String;

.field private Result:Ljava/lang/String;

.field private cmdEXIT:Ljava/lang/String;

.field private cmdPWD:Ljava/lang/String;

.field in:Ljava/io/InputStream;

.field isError:Z

.field private mCmdType:Ljava/lang/String;

.field out:Ljava/io/OutputStream;

.field requestSocket:Ljava/net/Socket;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 21
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x94

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->IS_SPRINT_PROJECT:Z

    .line 22
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xaf

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->IS_VM_PROJECT:Z

    .line 23
    sget-boolean v0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->IS_SPRINT_PROJECT:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->IS_VM_PROJECT:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    sput-boolean v0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->IS_NOT_SPC_PROJECT:Z

    .line 30
    const-string v0, ":TY1"

    sput-object v0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->cmdTY1:Ljava/lang/String;

    .line 31
    const-string v0, ":TY2"

    sput-object v0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->cmdTY2:Ljava/lang/String;

    .line 32
    const-string v0, ":TY3"

    sput-object v0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->cmdTY3:Ljava/lang/String;

    .line 72
    const-string v0, "ro.omadm.encryptenable"

    invoke-static {v0}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_3

    :goto_3
    sput-boolean v1, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->bEncrypt:Z

    .line 74
    sput-boolean v2, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->bPrivateKey:Z

    return-void

    :cond_0
    move v0, v2

    .line 21
    goto :goto_0

    :cond_1
    move v0, v2

    .line 22
    goto :goto_1

    :cond_2
    move v0, v2

    .line 23
    goto :goto_2

    :cond_3
    move v1, v2

    .line 72
    goto :goto_3
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "cmdType"

    .prologue
    .line 79
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/16 v0, 0x400

    iput v0, p0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->BufferLength:I

    .line 26
    const/16 v0, 0x2606

    iput v0, p0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->PORT:I

    .line 28
    const-string v0, ":PWDM"

    iput-object v0, p0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->cmdPWD:Ljava/lang/String;

    .line 29
    const-string v0, ":EXIT"

    iput-object v0, p0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->cmdEXIT:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->Result:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->My_hex:Ljava/lang/String;

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    .line 73
    const-string v0, "0000000000000000"

    iput-object v0, p0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->PublicEncryptKey:Ljava/lang/String;

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->isError:Z

    .line 80
    sget-boolean v0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->IS_NOT_SPC_PROJECT:Z

    if-eqz v0, :cond_0

    .line 82
    :goto_0
    return-void

    .line 81
    :cond_0
    iput-object p1, p0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->mCmdType:Ljava/lang/String;

    goto :goto_0
.end method

.method public static ASCIIToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "str"

    .prologue
    .line 715
    sget-boolean v5, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->IS_NOT_SPC_PROJECT:Z

    if-eqz v5, :cond_1

    const/4 v3, 0x0

    .line 726
    :cond_0
    return-object v3

    .line 716
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 717
    .local v2, len:I
    const-string v3, ""

    .line 718
    .local v3, result:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 719
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 720
    .local v0, c:I
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 721
    .local v4, tmp:Ljava/lang/String;
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_2

    .line 722
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 724
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 718
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static DmDecrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "Key"
    .parameter "EncryptText"

    .prologue
    .line 752
    const/4 v1, 0x0

    .line 754
    .local v1, decrypted:[B
    :try_start_0
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const-string v5, "AES"

    invoke-direct {v3, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 755
    .local v3, secret:Ljavax/crypto/spec/SecretKeySpec;
    const-string v4, "AES/ECB/NoPadding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 756
    .local v0, cipher:Ljavax/crypto/Cipher;
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 757
    const/4 v4, 0x0

    invoke-static {p1, v4}, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->HexToStr(Ljava/lang/String;Z)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 761
    .end local v0           #cipher:Ljavax/crypto/Cipher;
    .end local v3           #secret:Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 758
    :catch_0
    move-exception v2

    .line 759
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static DmEncrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "Key"
    .parameter "PlainText"

    .prologue
    const/4 v8, 0x0

    .line 731
    const/4 v4, 0x0

    .line 732
    .local v4, encrypted:[B
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 733
    .local v1, Length:I
    rem-int/lit8 v6, v1, 0x10

    if-lez v6, :cond_0

    .line 734
    div-int/lit8 v6, v1, 0x10

    add-int/lit8 v6, v6, 0x1

    mul-int/lit8 v1, v6, 0x10

    .line 737
    :cond_0
    new-array v0, v1, [B

    .line 738
    .local v0, Buffer:[B
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v6, v8, v0, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 741
    :try_start_0
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const-string v7, "AES"

    invoke-direct {v5, v6, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 742
    .local v5, secret:Ljavax/crypto/spec/SecretKeySpec;
    const-string v6, "AES/ECB/NoPadding"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 743
    .local v2, cipher:Ljavax/crypto/Cipher;
    const/4 v6, 0x1

    invoke-virtual {v2, v6, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 744
    invoke-virtual {v2, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 748
    .end local v2           #cipher:Ljavax/crypto/Cipher;
    .end local v5           #secret:Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    invoke-static {v4}, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->StrToHex([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 745
    :catch_0
    move-exception v3

    .line 746
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static EncodeBCD(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 10
    .parameter "dwVal"
    .parameter "dwDigits"

    .prologue
    .line 664
    sget-boolean v4, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->IS_NOT_SPC_PROJECT:Z

    if-eqz v4, :cond_1

    const/4 v2, 0x0

    .line 677
    :cond_0
    return-object v2

    .line 665
    :cond_1
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .local v3, i:Ljava/lang/Long;
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .local v2, dwRet:Ljava/lang/Long;
    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .local v1, dwBase:Ljava/lang/Long;
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 667
    .local v0, dwBCD:Ljava/lang/Long;
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0xa

    rem-long/2addr v4, v6

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 668
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    const-wide/16 v4, 0x9

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 669
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    .line 670
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 672
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 674
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0xa

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    .line 675
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0xa

    mul-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0
.end method

.method public static EncodeBCD_Min1([C)Ljava/lang/Long;
    .locals 13
    .parameter "pbsVal"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const-wide/16 v9, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    .line 680
    sget-boolean v4, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->IS_NOT_SPC_PROJECT:Z

    if-eqz v4, :cond_0

    const/4 v2, 0x0

    .line 711
    :goto_0
    return-object v2

    .line 681
    :cond_0
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .local v2, dwVal:Ljava/lang/Long;
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 682
    .local v3, dwVal1:Ljava/lang/Long;
    const/4 v1, 0x0

    .line 683
    .local v1, bsMin1:[C
    new-array v0, v7, [C

    .line 684
    .local v0, bsDat:[C
    if-eqz p0, :cond_1

    .line 685
    move-object v1, p0

    .line 686
    :cond_1
    array-length v4, v1

    const/4 v5, 0x7

    if-ge v4, v5, :cond_2

    .line 687
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "0000000"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 689
    :cond_2
    invoke-static {v1, v8, v7}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 691
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 692
    const-wide/16 v4, 0x3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->EncodeBCD(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v2

    .line 694
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v6, 0x4

    shl-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 695
    const/16 v4, 0x30

    aput-char v4, v0, v11

    aput-char v4, v0, v8

    .line 696
    aget-char v4, v1, v7

    aput-char v4, v0, v12

    .line 698
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 699
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v9

    if-nez v4, :cond_3

    .line 700
    const-wide/16 v4, 0xa

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 701
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    or-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 703
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/16 v6, 0xa

    shl-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 704
    const/4 v4, 0x4

    aget-char v4, v1, v4

    aput-char v4, v0, v8

    .line 705
    const/4 v4, 0x5

    aget-char v4, v1, v4

    aput-char v4, v0, v11

    .line 706
    const/4 v4, 0x6

    aget-char v4, v1, v4

    aput-char v4, v0, v12

    .line 708
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 709
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->EncodeBCD(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    or-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 711
    goto/16 :goto_0
.end method

.method private static HexToStr(Ljava/lang/String;Z)[B
    .locals 7
    .parameter "input"
    .parameter "lowercase"

    .prologue
    .line 766
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0123456789"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez p1, :cond_0

    const-string v5, "ABCDEF"

    :goto_0
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 767
    .local v1, digital:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 768
    .local v2, hex2char:[C
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    new-array v0, v5, [B

    .line 770
    .local v0, bytes:[B
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v5, v0

    if-ge v3, v5, :cond_1

    .line 771
    mul-int/lit8 v5, v3, 0x2

    aget-char v5, v2, v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    mul-int/lit8 v4, v5, 0x10

    .line 772
    .local v4, temp:I
    mul-int/lit8 v5, v3, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-char v5, v2, v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/2addr v4, v5

    .line 773
    and-int/lit16 v5, v4, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    .line 770
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 766
    .end local v0           #bytes:[B
    .end local v1           #digital:Ljava/lang/String;
    .end local v2           #hex2char:[C
    .end local v3           #i:I
    .end local v4           #temp:I
    :cond_0
    const-string v5, "abcdef"

    goto :goto_0

    .line 775
    .restart local v0       #bytes:[B
    .restart local v1       #digital:Ljava/lang/String;
    .restart local v2       #hex2char:[C
    .restart local v3       #i:I
    :cond_1
    return-object v0
.end method

.method public static ReverseByte(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "val"

    .prologue
    .line 580
    sget-boolean v5, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->IS_NOT_SPC_PROJECT:Z

    if-eqz v5, :cond_1

    const/4 p0, 0x0

    .line 592
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 581
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-le v5, v6, :cond_0

    .line 584
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 585
    .local v2, length:I
    const-string v3, ""

    .line 586
    .local v3, reverse:Ljava/lang/String;
    move-object v4, p0

    .line 587
    .local v4, tmp:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    div-int/lit8 v5, v2, 0x2

    if-ge v0, v5, :cond_2

    .line 588
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .line 589
    .local v1, len:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v1, -0x2

    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 590
    const/4 v5, 0x0

    add-int/lit8 v6, v1, -0x2

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 587
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1           #len:I
    :cond_2
    move-object p0, v3

    .line 592
    goto :goto_0
.end method

.method private static StrToHex([B)Ljava/lang/String;
    .locals 6
    .parameter "bytes"

    .prologue
    const/4 v5, 0x1

    .line 779
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 780
    .local v1, rslt:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_2

    .line 781
    aget-byte v3, p0, v0

    if-ltz v3, :cond_1

    aget-byte v3, p0, v0

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 782
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 783
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 784
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 785
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 780
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 781
    .end local v2           #s:Ljava/lang/String;
    :cond_1
    aget-byte v3, p0, v0

    add-int/lit16 v3, v3, 0x100

    goto :goto_1

    .line 787
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static byteToBigHexString([B)Ljava/lang/String;
    .locals 5
    .parameter "bytes"

    .prologue
    .line 468
    sget-boolean v3, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->IS_NOT_SPC_PROJECT:Z

    if-eqz v3, :cond_1

    const/4 v1, 0x0

    .line 477
    :cond_0
    return-object v1

    .line 469
    :cond_1
    invoke-static {p0}, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->byteToHexString([B)Ljava/lang/String;

    move-result-object v2

    .line 470
    .local v2, tmp:Ljava/lang/String;
    const-string v1, ""

    .line 471
    .local v1, result:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 472
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x61

    if-lt v3, v4, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x7a

    if-gt v3, v4, :cond_2

    .line 473
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x20

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 471
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 475
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public static byteToHexString([B)Ljava/lang/String;
    .locals 6
    .parameter "bytes"

    .prologue
    const/4 v5, 0x1

    .line 481
    sget-boolean v3, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->IS_NOT_SPC_PROJECT:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    .line 491
    :goto_0
    return-object v3

    .line 482
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 484
    .local v1, rslt:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v3, p0

    if-ge v0, v3, :cond_3

    .line 485
    aget-byte v3, p0, v0

    if-ltz v3, :cond_2

    aget-byte v3, p0, v0

    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 486
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v5, :cond_1

    .line 487
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 488
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 489
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 484
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 485
    .end local v2           #s:Ljava/lang/String;
    :cond_2
    aget-byte v3, p0, v0

    add-int/lit16 v3, v3, 0x100

    goto :goto_2

    .line 491
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static decodeBCD(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 11
    .parameter "parDwVal"
    .parameter "dwDigits"

    .prologue
    .line 608
    sget-boolean v5, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->IS_NOT_SPC_PROJECT:Z

    if-eqz v5, :cond_1

    const/4 v2, 0x0

    .line 621
    :cond_0
    return-object v2

    .line 609
    :cond_1
    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .local v4, i:Ljava/lang/Long;
    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .local v2, dwRet:Ljava/lang/Long;
    const-wide/16 v5, 0x1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .local v1, dwBase:Ljava/lang/Long;
    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 610
    .local v0, dwBCD:Ljava/lang/Long;
    move-object v3, p0

    .line 612
    .local v3, dwVal:Ljava/lang/Long;
    :goto_0
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0xa

    rem-long/2addr v5, v7

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 613
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0xa

    cmp-long v5, v5, v7

    if-eqz v5, :cond_2

    .line 614
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    mul-long/2addr v7, v9

    add-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 616
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_0

    .line 618
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0xa

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 619
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0xa

    mul-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0
.end method

.method public static decodeBCDMin1(Ljava/lang/Long;)Ljava/lang/String;
    .locals 14
    .parameter "parDwVal"

    .prologue
    const-wide/16 v12, 0x3

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 625
    sget-boolean v4, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->IS_NOT_SPC_PROJECT:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    .line 645
    :goto_0
    return-object v4

    .line 626
    :cond_0
    const/16 v4, 0x8

    new-array v0, v4, [C

    .line 628
    .local v0, bsMin1:[C
    move-object v2, p0

    .line 629
    .local v2, dwVal:Ljava/lang/Long;
    new-array v1, v11, [J

    .line 630
    .local v1, dwMin1:[J
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x3ff

    and-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->decodeBCD(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v1, v9

    .line 632
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/16 v6, 0xa

    shr-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 633
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0xf

    and-long/2addr v4, v6

    aput-wide v4, v1, v8

    .line 634
    aget-wide v4, v1, v8

    const-wide/16 v6, 0xa

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 635
    const-wide/16 v4, 0x0

    aput-wide v4, v1, v8

    .line 637
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v6, 0x4

    shr-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 638
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x3ff

    and-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->decodeBCD(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v1, v10

    .line 640
    const-string v4, "%3d%1d%3d"

    new-array v5, v11, [Ljava/lang/Object;

    aget-wide v6, v1, v10

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v9

    aget-wide v6, v1, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    aget-wide v6, v1, v9

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 641
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v4, v0

    if-ge v3, v4, :cond_3

    .line 642
    aget-char v4, v0, v3

    const/16 v5, 0x20

    if-ne v4, v5, :cond_2

    .line 643
    const/16 v4, 0x30

    aput-char v4, v0, v3

    .line 641
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 645
    :cond_3
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0
.end method

.method public static doASCIIToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "str"

    .prologue
    .line 527
    sget-boolean v5, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->IS_NOT_SPC_PROJECT:Z

    if-eqz v5, :cond_1

    const/4 v3, 0x0

    .line 538
    :cond_0
    return-object v3

    .line 528
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 529
    .local v2, len:I
    const-string v3, ""

    .line 530
    .local v3, result:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 531
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 532
    .local v0, c:I
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 533
    .local v4, tmp:Ljava/lang/String;
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_2

    .line 534
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 536
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 530
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static doStringToASCII(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "str"

    .prologue
    .line 510
    sget-boolean v6, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->IS_NOT_SPC_PROJECT:Z

    if-eqz v6, :cond_1

    const/4 v4, 0x0

    .line 524
    :cond_0
    :goto_0
    return-object v4

    .line 511
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 512
    .local v3, len:I
    const/4 v1, 0x0

    .local v1, i:I
    const/4 v2, 0x2

    .line 513
    .local v2, j:I
    const-string v4, ""

    .line 515
    .local v4, result:Ljava/lang/String;
    :goto_1
    if-gt v2, v3, :cond_0

    .line 516
    :try_start_0
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 517
    .local v5, tmp:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x10

    invoke-static {v5, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    int-to-char v7, v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 518
    move v1, v2

    .line 519
    add-int/lit8 v2, v2, 0x2

    .line 520
    goto :goto_1

    .line 521
    .end local v5           #tmp:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 522
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static hexStringToByte(Ljava/lang/String;Z)[B
    .locals 7
    .parameter "input"
    .parameter "lowercase"

    .prologue
    .line 495
    sget-boolean v5, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->IS_NOT_SPC_PROJECT:Z

    if-eqz v5, :cond_1

    const/4 v0, 0x0

    .line 507
    :cond_0
    return-object v0

    .line 497
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0123456789"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez p1, :cond_2

    const-string v5, "ABCDEF"

    :goto_0
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 499
    .local v1, digital:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 500
    .local v2, hex2char:[C
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    new-array v0, v5, [B

    .line 502
    .local v0, bytes:[B
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v5, v0

    if-ge v3, v5, :cond_0

    .line 503
    mul-int/lit8 v5, v3, 0x2

    aget-char v5, v2, v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    mul-int/lit8 v4, v5, 0x10

    .line 504
    .local v4, temp:I
    mul-int/lit8 v5, v3, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-char v5, v2, v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/2addr v4, v5

    .line 505
    and-int/lit16 v5, v4, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    .line 502
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 497
    .end local v0           #bytes:[B
    .end local v1           #digital:Ljava/lang/String;
    .end local v2           #hex2char:[C
    .end local v3           #i:I
    .end local v4           #temp:I
    :cond_2
    const-string v5, "abcdef"

    goto :goto_0
.end method

.method private parseReadResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "response"

    .prologue
    const/4 v1, 0x0

    .line 421
    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 422
    .local v0, strs:[Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v2, v0, v2

    const-string v3, "OK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 423
    const/4 v2, 0x2

    aget-object v2, v0, v2

    const-string v3, "0000"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 429
    :cond_0
    :goto_0
    return-object v1

    .line 426
    :cond_1
    const/4 v1, 0x3

    aget-object v1, v0, v1

    goto :goto_0
.end method

.method private parseWriteResponse(Ljava/lang/String;)Z
    .locals 4
    .parameter "response"

    .prologue
    const/4 v1, 0x1

    .line 432
    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 433
    .local v0, strs:[Ljava/lang/String;
    aget-object v2, v0, v1

    const-string v3, "OK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 435
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static pendZero(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .parameter "cmd"
    .parameter "digits"

    .prologue
    .line 596
    sget-boolean v1, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->IS_NOT_SPC_PROJECT:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 601
    :cond_0
    return-object v0

    .line 597
    :cond_1
    move-object v0, p0

    .line 598
    .local v0, reslt:Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, p1, :cond_0

    .line 599
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private readRsponse()V
    .locals 8

    .prologue
    const/16 v7, 0x400

    .line 791
    new-array v2, v7, [B

    .line 792
    .local v2, respond:[B
    const/4 v1, 0x0

    .line 794
    .local v1, length:I
    :try_start_0
    iget-object v4, p0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->in:Ljava/io/InputStream;

    invoke-virtual {v4, v2}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 800
    :goto_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 801
    .local v3, result:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->Result:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->Result:Ljava/lang/String;

    .line 803
    if-ge v1, v7, :cond_0

    .line 811
    :goto_1
    return-void

    .line 796
    .end local v3           #result:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 797
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "HtcSpcServiceDM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ReadSponse fail:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 808
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v3       #result:Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->readRsponse()V

    goto :goto_1
.end method

.method public static reverseByte(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "val"

    .prologue
    .line 648
    sget-boolean v5, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->IS_NOT_SPC_PROJECT:Z

    if-eqz v5, :cond_1

    const/4 p0, 0x0

    .line 660
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 649
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-le v5, v6, :cond_0

    .line 652
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 653
    .local v2, length:I
    const-string v3, ""

    .line 654
    .local v3, reverse:Ljava/lang/String;
    move-object v4, p0

    .line 655
    .local v4, tmp:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    div-int/lit8 v5, v2, 0x2

    if-ge v0, v5, :cond_2

    .line 656
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .line 657
    .local v1, len:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v1, -0x2

    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 658
    const/4 v5, 0x0

    add-int/lit8 v6, v1, -0x2

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 655
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1           #len:I
    :cond_2
    move-object p0, v3

    .line 660
    goto :goto_0
.end method

.method public static transHexStringtoIP(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "hexStr"

    .prologue
    const/16 v5, 0x10

    .line 561
    sget-boolean v3, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->IS_NOT_SPC_PROJECT:Z

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    .line 573
    :cond_0
    return-object v2

    .line 563
    :cond_1
    invoke-static {p0}, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 564
    const-string v2, ""

    .line 565
    .local v2, result:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 566
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 568
    .local v0, hex:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    if-eq v1, v3, :cond_2

    .line 569
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 565
    :goto_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 571
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public static transIPtoHexString(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "input"

    .prologue
    .line 547
    sget-boolean v4, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->IS_NOT_SPC_PROJECT:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    .line 554
    :goto_0
    return-object v4

    .line 548
    :cond_0
    const-string v2, ""

    .line 549
    .local v2, result:Ljava/lang/String;
    const-string v4, "\\."

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 550
    .local v3, strs:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 551
    aget-object v4, v3, v0

    const/16 v5, 0xa

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 552
    .local v1, num:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%02X"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 550
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 554
    .end local v1           #num:I
    :cond_1
    invoke-static {v2}, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private transfer(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "rw"
    .parameter "cmdID"

    .prologue
    .line 415
    const-string v0, ""

    .line 416
    .local v0, result:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 417
    return-object v0
.end method

.method private transfer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "rw"
    .parameter "cmdID"
    .parameter "hex"

    .prologue
    .line 410
    invoke-direct {p0, p1, p2}, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->transfer(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 411
    .local v0, result:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 412
    return-object v0
.end method


# virtual methods
.method public GetPrivateKey()Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v4, 0x200

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 253
    new-array v1, v4, [B

    .line 254
    .local v1, cmdsend:[B
    new-array v0, v4, [B

    .line 256
    .local v0, cmdresp:[B
    sget-boolean v4, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->bPrivateKey:Z

    if-eqz v4, :cond_0

    .line 257
    sget-object v4, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->PrivateKey:Ljava/lang/String;

    .line 275
    :goto_0
    return-object v4

    .line 259
    :cond_0
    const/16 v4, 0x77

    aput-byte v4, v1, v5

    .line 260
    aput-byte v5, v1, v6

    .line 263
    :try_start_0
    iget-object v4, p0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->out:Ljava/io/OutputStream;

    invoke-virtual {v4, v1}, Ljava/io/OutputStream;->write([B)V

    .line 264
    iget-object v4, p0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->out:Ljava/io/OutputStream;

    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 265
    iget-object v4, p0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->in:Ljava/io/InputStream;

    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    :goto_1
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 273
    .local v3, result:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->PublicEncryptKey:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->DmDecrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->PrivateKey:Ljava/lang/String;

    .line 274
    sput-boolean v6, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->bPrivateKey:Z

    .line 275
    sget-object v4, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->PrivateKey:Ljava/lang/String;

    goto :goto_0

    .line 266
    .end local v3           #result:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 267
    .local v2, ioException:Ljava/io/IOException;
    const-string v4, "HtcSpcServiceDM"

    const-string v5, "IOException."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-virtual {p0}, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->closeConnection()Z

    goto :goto_1
.end method

.method public changeTTY(Ljava/lang/String;)V
    .locals 4
    .parameter "cmdTTY"

    .prologue
    .line 439
    sget-boolean v2, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->IS_NOT_SPC_PROJECT:Z

    if-eqz v2, :cond_0

    .line 462
    :goto_0
    return-void

    .line 441
    :cond_0
    const/16 v2, 0x200

    :try_start_0
    new-array v1, v2, [B

    .line 443
    .local v1, respond:[B
    iget-object v2, p0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->out:Ljava/io/OutputStream;

    sget-object v3, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->PrivateKey:Ljava/lang/String;

    invoke-static {v3, p1}, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->DmEncrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 455
    invoke-direct {p0}, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->readRsponse()V

    .line 456
    sget-object v2, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->PrivateKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->Result:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->DmDecrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 458
    .end local v1           #respond:[B
    :catch_0
    move-exception v0

    .line 459
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->isError:Z

    .line 460
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public closeConnection()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 285
    sget-boolean v4, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->IS_NOT_SPC_PROJECT:Z

    if-eqz v4, :cond_0

    .line 286
    const/4 v3, 0x1

    .line 332
    :goto_0
    return v3

    .line 288
    :cond_0
    const/4 v3, 0x0

    .line 290
    .local v3, result:Z
    :try_start_0
    iget-object v4, p0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->out:Ljava/io/OutputStream;

    .line 298
    iget-object v4, p0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->cmdEXIT:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, My_hex:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->out:Ljava/io/OutputStream;

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 303
    iget-object v4, p0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->in:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 304
    iget-object v4, p0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    const/4 v3, 0x1

    .line 314
    .end local v0           #My_hex:Ljava/lang/String;
    :goto_1
    :try_start_1
    iget-object v4, p0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->out:Ljava/io/OutputStream;

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 319
    :goto_2
    :try_start_2
    iget-object v4, p0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->in:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 324
    :goto_3
    :try_start_3
    iget-object v4, p0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 328
    :goto_4
    iput-object v7, p0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->out:Ljava/io/OutputStream;

    .line 329
    iput-object v7, p0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->in:Ljava/io/InputStream;

    .line 330
    iput-object v7, p0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    goto :goto_0

    .line 307
    :catch_0
    move-exception v1

    .line 308
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "HtcSpcServiceDM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "closeConnection fail: ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 311
    const/4 v3, 0x0

    goto :goto_1

    .line 315
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 316
    .local v2, ioe:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 320
    .end local v2           #ioe:Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 321
    .restart local v2       #ioe:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 325
    .end local v2           #ioe:Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 326
    .restart local v2       #ioe:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    return v0
.end method

.method public isError()Z
    .locals 1

    .prologue
    .line 282
    iget-boolean v0, p0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->isError:Z

    return v0
.end method

.method public openConnection()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 85
    sget-boolean v6, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->IS_NOT_SPC_PROJECT:Z

    if-eqz v6, :cond_1

    move v3, v4

    .line 248
    :cond_0
    :goto_0
    return v3

    .line 90
    :cond_1
    const/4 v3, 0x0

    .line 93
    .local v3, result:Z
    :try_start_0
    iget-object v6, p0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    if-eqz v6, :cond_2

    .line 102
    :goto_1
    iget-object v6, p0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    if-nez v6, :cond_3

    move v3, v5

    .line 103
    goto :goto_0

    .line 97
    :cond_2
    new-instance v6, Ljava/net/Socket;

    const-string v7, "localhost"

    const/16 v8, 0x2606

    invoke-direct {v6, v7, v8}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v6, p0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    .line 98
    iget-object v6, p0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    const/16 v7, 0x1388

    invoke-virtual {v6, v7}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 222
    :catch_0
    move-exception v0

    .line 223
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "HtcSpcServiceDM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "openConnection exception: ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 225
    const/4 v3, 0x0

    .line 226
    iput-boolean v4, p0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->isError:Z

    .line 228
    if-nez v3, :cond_0

    .line 230
    :try_start_1
    iget-object v4, p0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->out:Ljava/io/OutputStream;

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 235
    :goto_2
    :try_start_2
    iget-object v4, p0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->in:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 240
    :goto_3
    :try_start_3
    iget-object v4, p0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 244
    :goto_4
    iput-object v9, p0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->out:Ljava/io/OutputStream;

    .line 245
    iput-object v9, p0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->in:Ljava/io/InputStream;

    .line 246
    iput-object v9, p0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    goto :goto_0

    .line 104
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    :try_start_4
    iget-object v6, p0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->out:Ljava/io/OutputStream;

    .line 105
    iget-object v6, p0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->out:Ljava/io/OutputStream;

    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 106
    iget-object v6, p0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->in:Ljava/io/InputStream;

    .line 107
    const/16 v6, 0x200

    new-array v2, v6, [B

    .line 109
    .local v2, respond:[B
    sget-boolean v6, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->bEncrypt:Z

    if-eqz v6, :cond_7

    .line 110
    iget-object v6, p0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->mCmdType:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->My_hex:Ljava/lang/String;

    .line 111
    iget-object v6, p0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->mCmdType:Ljava/lang/String;

    const-string v7, ":IDOMADM"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 113
    iget-object v6, p0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->My_hex:Ljava/lang/String;

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_6

    .line 114
    iget-object v6, p0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->cmdPWD:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->My_hex:Ljava/lang/String;

    .line 116
    iget-object v6, p0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->My_hex:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_5

    .line 118
    sget-object v6, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->cmdTY3:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->My_hex:Ljava/lang/String;

    .line 119
    iget-object v6, p0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->My_hex:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_4

    move v3, v4

    .line 121
    goto/16 :goto_0

    .line 123
    :cond_4
    const-string v6, "HtcSpcServiceDM"

    const-string v7, "connection fail:cmdTY3fail"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v5

    .line 124
    goto/16 :goto_0

    .line 126
    :cond_5
    const-string v6, "HtcSpcServiceDM"

    const-string v7, "connection fail:cmdPWD fail 1"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v5

    .line 127
    goto/16 :goto_0

    :cond_6
    move v3, v4

    .line 133
    goto/16 :goto_0

    .line 135
    :cond_7
    iget-object v6, p0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->out:Ljava/io/OutputStream;

    iget-object v7, p0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->mCmdType:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/OutputStream;->write([B)V

    .line 136
    iget-object v6, p0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->in:Ljava/io/InputStream;

    invoke-virtual {v6, v2}, Ljava/io/InputStream;->read([B)I

    .line 137
    invoke-static {v2}, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->byteToBigHexString([B)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->My_hex:Ljava/lang/String;

    .line 140
    iget-object v6, p0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->My_hex:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    const-string v7, ":IDOMADM"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v6, v7, :cond_a

    .line 141
    iget-object v6, p0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->out:Ljava/io/OutputStream;

    iget-object v7, p0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->cmdPWD:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/OutputStream;->write([B)V

    .line 142
    iget-object v6, p0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->in:Ljava/io/InputStream;

    invoke-virtual {v6, v2}, Ljava/io/InputStream;->read([B)I

    .line 143
    invoke-static {v2}, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->byteToBigHexString([B)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->My_hex:Ljava/lang/String;

    .line 145
    iget-object v6, p0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->mCmdType:Ljava/lang/String;

    const-string v7, ":IDOMADM"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 146
    iget-object v6, p0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->My_hex:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    iget-object v7, p0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->cmdPWD:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v6, v7, :cond_9

    .line 148
    iget-object v5, p0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->out:Ljava/io/OutputStream;

    sget-object v6, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->cmdTY3:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/OutputStream;->write([B)V

    .line 149
    iget-object v5, p0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->in:Ljava/io/InputStream;

    invoke-virtual {v5, v2}, Ljava/io/InputStream;->read([B)I

    .line 150
    invoke-static {v2}, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->byteToBigHexString([B)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->My_hex:Ljava/lang/String;

    .line 153
    iget-object v5, p0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->My_hex:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    sget-object v6, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->cmdTY3:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result v6

    if-ne v5, v6, :cond_8

    :cond_8
    move v3, v4

    .line 156
    goto/16 :goto_0

    :cond_9
    move v3, v5

    .line 160
    goto/16 :goto_0

    :cond_a
    move v3, v4

    .line 164
    goto/16 :goto_0

    .line 231
    .end local v2           #respond:[B
    .restart local v0       #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 232
    .local v1, ioe:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 236
    .end local v1           #ioe:Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 237
    .restart local v1       #ioe:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 241
    .end local v1           #ioe:Ljava/lang/Exception;
    :catch_3
    move-exception v1

    .line 242
    .restart local v1       #ioe:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4
.end method

.method public sendCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "request"

    .prologue
    .line 381
    sget-boolean v3, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->bPrivateKey:Z

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->bEncrypt:Z

    if-eqz v3, :cond_0

    .line 382
    invoke-virtual {p0}, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->GetPrivateKey()Ljava/lang/String;

    .line 385
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->out:Ljava/io/OutputStream;

    .line 386
    iget-object v3, p0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->out:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 388
    sget-boolean v3, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->bEncrypt:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->PrivateKey:Ljava/lang/String;

    invoke-static {v3, p1}, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->DmEncrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 389
    :cond_1
    const-string v3, "HtcSpcServiceDM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "request_encrpt:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    iget-object v3, p0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->out:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    .line 392
    iget-object v3, p0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->in:Ljava/io/InputStream;

    .line 393
    const-string v3, ""

    iput-object v3, p0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->Result:Ljava/lang/String;

    .line 394
    invoke-direct {p0}, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->readRsponse()V

    .line 395
    const-string v3, "HtcSpcServiceDM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->Result:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    sget-boolean v3, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->bEncrypt:Z

    if-eqz v3, :cond_3

    sget-object v3, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->PrivateKey:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->Result:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->DmDecrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 398
    .local v2, result:Ljava/lang/String;
    :goto_0
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 399
    .local v1, idx:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    .line 400
    const/4 v3, 0x0

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 406
    .end local v1           #idx:I
    .end local v2           #result:Ljava/lang/String;
    :cond_2
    :goto_1
    return-object v2

    .line 396
    :cond_3
    iget-object v2, p0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->Result:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 402
    :catch_0
    move-exception v0

    .line 403
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "HtcSpcServiceDM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendCommand fail:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->isError:Z

    .line 405
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 406
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public sendReadCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "cmdID"

    .prologue
    .line 336
    sget-boolean v2, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->IS_NOT_SPC_PROJECT:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 339
    :goto_0
    return-object v2

    .line 337
    :cond_0
    const-string v2, "R"

    invoke-direct {p0, v2, p1}, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->transfer(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 338
    .local v0, request:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 339
    .local v1, response:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->parseReadResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public sendWriteCommand(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "cmdID"
    .parameter "hex"

    .prologue
    .line 342
    sget-boolean v1, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->IS_NOT_SPC_PROJECT:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 344
    :goto_0
    return v1

    .line 343
    :cond_0
    const-string v1, "W"

    invoke-direct {p0, v1, p1, p2}, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->transfer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 344
    .local v0, request:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/htc/htcsprintservice/dm/DMAgentConnector;->parseWriteResponse(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method
