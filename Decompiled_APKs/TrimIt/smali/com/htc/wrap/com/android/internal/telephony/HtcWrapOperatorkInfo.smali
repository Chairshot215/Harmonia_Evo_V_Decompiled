.class public Lcom/htc/wrap/com/android/internal/telephony/HtcWrapOperatorkInfo;
.super Ljava/lang/Object;
.source "HtcWrapOperatorkInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAct(Lcom/android/internal/telephony/OperatorInfo;)Ljava/lang/String;
    .locals 1
    .parameter "instance"

    .prologue
    .line 19
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getAct()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOperatorInfoInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/OperatorInfo;
    .locals 7
    .parameter "operatorAlphaLong"
    .parameter "operatorAlphaShort"
    .parameter "operatorNumeric"
    .parameter "stateString"
    .parameter "onsLevel"
    .parameter "AcT"

    .prologue
    .line 12
    new-instance v0, Lcom/android/internal/telephony/OperatorInfo;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/OperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
