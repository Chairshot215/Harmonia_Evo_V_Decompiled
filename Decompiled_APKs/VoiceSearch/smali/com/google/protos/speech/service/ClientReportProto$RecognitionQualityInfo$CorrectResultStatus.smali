.class public final enum Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;
.super Ljava/lang/Enum;
.source "ClientReportProto.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CorrectResultStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;

.field public static final enum OK:Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;

.field public static final enum TOO_MANY_USER_CORRECTIONS:Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;

.field public static final enum UNAVAILABLE:Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1968
    new-instance v0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;

    const-string v1, "OK"

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;->OK:Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;

    .line 1969
    new-instance v0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;

    const-string v1, "UNAVAILABLE"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;->UNAVAILABLE:Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;

    .line 1970
    new-instance v0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;

    const-string v1, "TOO_MANY_USER_CORRECTIONS"

    invoke-direct {v0, v1, v3, v3, v5}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;->TOO_MANY_USER_CORRECTIONS:Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;

    .line 1966
    new-array v0, v5, [Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;

    sget-object v1, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;->OK:Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;->UNAVAILABLE:Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;->TOO_MANY_USER_CORRECTIONS:Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;->$VALUES:[Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;

    .line 1994
    new-instance v0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus$1;

    invoke-direct {v0}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .parameter
    .parameter
    .parameter "index"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 2003
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2004
    iput p4, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;->value:I

    .line 2005
    return-void
.end method

.method public static valueOf(I)Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;
    .locals 1
    .parameter "value"

    .prologue
    .line 1981
    packed-switch p0, :pswitch_data_0

    .line 1985
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1982
    :pswitch_0
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;->OK:Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;

    goto :goto_0

    .line 1983
    :pswitch_1
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;->UNAVAILABLE:Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;

    goto :goto_0

    .line 1984
    :pswitch_2
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;->TOO_MANY_USER_CORRECTIONS:Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;

    goto :goto_0

    .line 1981
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;
    .locals 1
    .parameter

    .prologue
    .line 1966
    const-class v0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;

    return-object v0
.end method

.method public static values()[Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;
    .locals 1

    .prologue
    .line 1966
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;->$VALUES:[Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;

    invoke-virtual {v0}, [Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 1978
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;->value:I

    return v0
.end method
