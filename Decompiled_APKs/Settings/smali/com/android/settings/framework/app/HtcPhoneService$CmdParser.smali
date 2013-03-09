.class Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;
.super Ljava/lang/Object;
.source "HtcPhoneService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/app/HtcPhoneService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CmdParser"
.end annotation


# static fields
.field private static final DATA_BEGIN_LENGTH:I = 0x8

.field private static final ERR_NV_CMD_FAILED:Ljava/lang/String; = "0400"

.field private static final ERR_NV_INTERNAL_DMSS_USE:Ljava/lang/String; = "0100"

.field private static final ERR_NV_LENGTH:I = 0x4

.field private static final ERR_NV_MEMORY_FULL:Ljava/lang/String; = "0300"

.field private static final ERR_NV_NOT_EXIST_OR_BAD_PARAMS:Ljava/lang/String; = "0600"

.field private static final ERR_NV_NOT_RECOGN_CMD:Ljava/lang/String; = "0200"

.field private static final ERR_NV_NOT_SUPPORT:Ljava/lang/String; = "0500"

.field private static final ERR_NV_READ_ONLY:Ljava/lang/String; = "0700"

.field private static final HEADER_LENGTH:I = 0x6

.field private static final MIN_DATA_LENGTH:I = 0x10

.field private static final MIN_LENGTH:I = 0x1c

.field private static final NV_SUCCESS:Ljava/lang/String; = "0000"

.field public static final STATE_SEND_ALREADY_AND_FAILED:I = 0x1

.field public static final STATE_SEND_ALREADY_AND_NOT_SUPPORT:I = 0x2

.field public static final STATE_SEND_ALREADY_AND_SUCCESS:I


# instance fields
.field private bParseResult:Z

.field private mDataRxCounter:J

.field private mDataTxCounter:J

.field private mMoHomeCounter:J

.field private mMoHomeTimer:J

.field private mMoRoamCounter:J

.field private mMoRoamTimer:J

.field private mMtHomeCounter:J

.field private mMtHomeTimer:J

.field private mMtRoamCounter:J

.field private mMtRoamTimer:J


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 687
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 707
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->bParseResult:Z

    .line 709
    iput-wide v1, p0, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->mMoHomeTimer:J

    .line 710
    iput-wide v1, p0, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->mMoHomeCounter:J

    .line 711
    iput-wide v1, p0, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->mMtHomeTimer:J

    .line 712
    iput-wide v1, p0, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->mMtHomeCounter:J

    .line 714
    iput-wide v1, p0, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->mMoRoamTimer:J

    .line 715
    iput-wide v1, p0, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->mMoRoamCounter:J

    .line 716
    iput-wide v1, p0, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->mMtRoamTimer:J

    .line 717
    iput-wide v1, p0, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->mMtRoamCounter:J

    .line 719
    iput-wide v1, p0, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->mDataRxCounter:J

    .line 720
    iput-wide v1, p0, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->mDataTxCounter:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/framework/app/HtcPhoneService$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 687
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;-><init>()V

    return-void
.end method

.method private getResult(Ljava/lang/String;II)Ljava/lang/String;
    .locals 8
    .parameter "cmd"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 831
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 832
    .local v5, val:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x2

    if-gt v6, v7, :cond_0

    .line 844
    .end local v5           #val:Ljava/lang/String;
    :goto_0
    return-object v5

    .line 836
    .restart local v5       #val:Ljava/lang/String;
    :cond_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    .line 837
    .local v2, length:I
    const-string v3, ""

    .line 838
    .local v3, reverse:Ljava/lang/String;
    move-object v4, v5

    .line 839
    .local v4, tmp:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    div-int/lit8 v6, v2, 0x2

    if-ge v0, v6, :cond_1

    .line 840
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .line 841
    .local v1, len:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v1, -0x2

    invoke-virtual {v5, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 842
    const/4 v6, 0x0

    add-int/lit8 v7, v1, -0x2

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 839
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1           #len:I
    :cond_1
    move-object v5, v3

    .line 844
    goto :goto_0
.end method

.method private parseDataCallResponse(Ljava/lang/String;)V
    .locals 7
    .parameter "cmd"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    const/16 v4, 0x10

    .line 755
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v4, :cond_0

    .line 756
    invoke-static {}, Lcom/android/settings/framework/app/HtcPhoneService;->access$400()Ljava/lang/String;

    move-result-object v2

    const-string v3, "parseDataCallResponse error - too short"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    iput-boolean v5, p0, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->bParseResult:Z

    .line 764
    :goto_0
    return-void

    .line 760
    :cond_0
    invoke-direct {p0, p1, v5, v6}, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 761
    .local v1, tx:Ljava/lang/String;
    invoke-static {v1, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->mDataTxCounter:J

    .line 762
    invoke-direct {p0, p1, v6, v4}, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 763
    .local v0, rx:Ljava/lang/String;
    invoke-static {v0, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->mDataRxCounter:J

    goto :goto_0
.end method

.method private parseMoHomeResponse(Ljava/lang/String;)V
    .locals 7
    .parameter "cmd"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    const/16 v4, 0x10

    .line 771
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v4, :cond_0

    .line 772
    invoke-static {}, Lcom/android/settings/framework/app/HtcPhoneService;->access$400()Ljava/lang/String;

    move-result-object v2

    const-string v3, "parseMoHomeResponse error - too short"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    iput-boolean v5, p0, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->bParseResult:Z

    .line 780
    :goto_0
    return-void

    .line 776
    :cond_0
    invoke-direct {p0, p1, v5, v6}, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 777
    .local v1, timer:Ljava/lang/String;
    invoke-static {v1, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->mMoHomeTimer:J

    .line 778
    invoke-direct {p0, p1, v6, v4}, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 779
    .local v0, counter:Ljava/lang/String;
    invoke-static {v0, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->mMoHomeCounter:J

    goto :goto_0
.end method

.method private parseMoRoamResponse(Ljava/lang/String;)V
    .locals 7
    .parameter "cmd"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    const/16 v4, 0x10

    .line 803
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v4, :cond_0

    .line 804
    invoke-static {}, Lcom/android/settings/framework/app/HtcPhoneService;->access$400()Ljava/lang/String;

    move-result-object v2

    const-string v3, "parseMoRoamResponse error - too short"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    iput-boolean v5, p0, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->bParseResult:Z

    .line 812
    :goto_0
    return-void

    .line 808
    :cond_0
    invoke-direct {p0, p1, v5, v6}, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 809
    .local v1, timer:Ljava/lang/String;
    invoke-static {v1, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->mMoRoamTimer:J

    .line 810
    invoke-direct {p0, p1, v6, v4}, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 811
    .local v0, counter:Ljava/lang/String;
    invoke-static {v0, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->mMoRoamCounter:J

    goto :goto_0
.end method

.method private parseMtHomeResponse(Ljava/lang/String;)V
    .locals 7
    .parameter "cmd"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    const/16 v4, 0x10

    .line 787
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v4, :cond_0

    .line 788
    invoke-static {}, Lcom/android/settings/framework/app/HtcPhoneService;->access$400()Ljava/lang/String;

    move-result-object v2

    const-string v3, "parseMtHomeResponse error - too short"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    iput-boolean v5, p0, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->bParseResult:Z

    .line 796
    :goto_0
    return-void

    .line 792
    :cond_0
    invoke-direct {p0, p1, v5, v6}, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 793
    .local v1, timer:Ljava/lang/String;
    invoke-static {v1, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->mMtHomeTimer:J

    .line 794
    invoke-direct {p0, p1, v6, v4}, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 795
    .local v0, counter:Ljava/lang/String;
    invoke-static {v0, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->mMtHomeCounter:J

    goto :goto_0
.end method

.method private parseMtRoamResponse(Ljava/lang/String;)V
    .locals 7
    .parameter "cmd"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    const/16 v4, 0x10

    .line 819
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v4, :cond_0

    .line 820
    invoke-static {}, Lcom/android/settings/framework/app/HtcPhoneService;->access$400()Ljava/lang/String;

    move-result-object v2

    const-string v3, "parseMtRoamResponse error - too short"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    iput-boolean v5, p0, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->bParseResult:Z

    .line 828
    :goto_0
    return-void

    .line 824
    :cond_0
    invoke-direct {p0, p1, v5, v6}, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 825
    .local v1, timer:Ljava/lang/String;
    invoke-static {v1, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->mMtRoamTimer:J

    .line 826
    invoke-direct {p0, p1, v6, v4}, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 827
    .local v0, counter:Ljava/lang/String;
    invoke-static {v0, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->mMtRoamCounter:J

    goto :goto_0
.end method


# virtual methods
.method getCallCounter()J
    .locals 4

    .prologue
    .line 900
    iget-wide v0, p0, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->mMoHomeCounter:J

    iget-wide v2, p0, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->mMtHomeCounter:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->mMoRoamCounter:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->mMtRoamCounter:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method getCallTimer()J
    .locals 4

    .prologue
    .line 904
    iget-wide v0, p0, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->mMoHomeTimer:J

    iget-wide v2, p0, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->mMtHomeTimer:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->mMoRoamTimer:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->mMtRoamTimer:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method getDataRx()J
    .locals 2

    .prologue
    .line 908
    iget-wide v0, p0, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->mDataRxCounter:J

    return-wide v0
.end method

.method getDataTx()J
    .locals 2

    .prologue
    .line 912
    iget-wide v0, p0, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->mDataTxCounter:J

    return-wide v0
.end method

.method getParseResult()Z
    .locals 1

    .prologue
    .line 896
    iget-boolean v0, p0, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->bParseResult:Z

    return v0
.end method

.method parseCmd(Ljava/lang/String;)V
    .locals 6
    .parameter "result"

    .prologue
    const/16 v5, 0x8

    const/4 v3, 0x6

    const/4 v4, 0x0

    .line 727
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x1c

    if-gt v1, v2, :cond_0

    .line 728
    invoke-static {}, Lcom/android/settings/framework/app/HtcPhoneService;->access$400()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseCmd error, too short: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    iput-boolean v4, p0, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->bParseResult:Z

    .line 748
    :goto_0
    return-void

    .line 733
    :cond_0
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 734
    .local v0, header:Ljava/lang/String;
    const-string v1, "C8F81E0000"

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 735
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->parseDataCallResponse(Ljava/lang/String;)V

    goto :goto_0

    .line 736
    :cond_1
    const-string v1, "C8F81A0000"

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 737
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->parseMoHomeResponse(Ljava/lang/String;)V

    goto :goto_0

    .line 738
    :cond_2
    const-string v1, "C8F81B0000"

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 739
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->parseMoRoamResponse(Ljava/lang/String;)V

    goto :goto_0

    .line 740
    :cond_3
    const-string v1, "C8F81C0000"

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 741
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->parseMtHomeResponse(Ljava/lang/String;)V

    goto :goto_0

    .line 742
    :cond_4
    const-string v1, "C8F81D0000"

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 743
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->parseMtRoamResponse(Ljava/lang/String;)V

    goto :goto_0

    .line 745
    :cond_5
    invoke-static {}, Lcom/android/settings/framework/app/HtcPhoneService;->access$400()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseCmd error, unknown header: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    iput-boolean v4, p0, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->bParseResult:Z

    goto/16 :goto_0
.end method

.method validateStateOfNv(Ljava/lang/String;)I
    .locals 6
    .parameter "command"

    .prologue
    .line 852
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x1c

    if-ge v3, v4, :cond_1

    .line 853
    invoke-static {}, Lcom/android/settings/framework/app/HtcPhoneService;->access$400()Ljava/lang/String;

    move-result-object v3

    const-string v4, "validateStateOfNv error: too short"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    const/4 v2, 0x1

    .line 892
    :cond_0
    :goto_0
    return v2

    .line 857
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 858
    .local v1, errState:Ljava/lang/String;
    const-string v0, ""

    .line 859
    .local v0, errMsg:Ljava/lang/String;
    const/4 v2, -0x1

    .line 860
    .local v2, state:I
    const-string v3, "0000"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 861
    const/4 v2, 0x0

    .line 862
    const-string v0, ""

    .line 888
    :goto_1
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 889
    invoke-static {}, Lcom/android/settings/framework/app/HtcPhoneService;->access$400()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "command state is error, reason is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->bParseResult:Z

    goto :goto_0

    .line 863
    :cond_2
    const-string v3, "0100"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 864
    const/4 v2, 0x1

    .line 865
    const-string v0, "internal dmss used"

    goto :goto_1

    .line 866
    :cond_3
    const-string v3, "0200"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 867
    const/4 v2, 0x1

    .line 868
    const-string v0, "can\'t recognize command"

    goto :goto_1

    .line 869
    :cond_4
    const-string v3, "0300"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 870
    const/4 v2, 0x1

    .line 871
    const-string v0, "memory is full"

    goto :goto_1

    .line 872
    :cond_5
    const-string v3, "0400"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 873
    const/4 v2, 0x1

    .line 874
    const-string v0, "command is fail"

    goto :goto_1

    .line 875
    :cond_6
    const-string v3, "0500"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 876
    const/4 v2, 0x2

    .line 877
    const-string v0, "not support this command"

    goto :goto_1

    .line 878
    :cond_7
    const-string v3, "0600"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 879
    const/4 v2, 0x2

    .line 880
    const-string v0, "bad command parameters or not exists"

    goto :goto_1

    .line 881
    :cond_8
    const-string v3, "0700"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 882
    const/4 v2, 0x1

    .line 883
    const-string v0, "memeory is read only"

    goto :goto_1

    .line 885
    :cond_9
    const/4 v2, 0x1

    .line 886
    const-string v0, "command error with non-knowing reason"

    goto :goto_1
.end method
