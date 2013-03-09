.class public final enum Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;
.super Ljava/lang/Enum;
.source "ClientReportProto.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EndpointTriggerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;

.field public static final enum AUDIO:Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;

.field public static final enum GESTURE:Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;

.field public static final enum PUSH_AND_HOLD:Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;

.field public static final enum SERVER_AUDIO:Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;

.field public static final enum TAP_TO_END:Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;

.field public static final enum TIMEOUT:Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 952
    new-instance v0, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;

    const-string v1, "TIMEOUT"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;->TIMEOUT:Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;

    .line 953
    new-instance v0, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;

    const-string v1, "PUSH_AND_HOLD"

    invoke-direct {v0, v1, v4, v4, v5}, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;->PUSH_AND_HOLD:Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;

    .line 954
    new-instance v0, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;

    const-string v1, "AUDIO"

    invoke-direct {v0, v1, v5, v5, v6}, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;->AUDIO:Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;

    .line 955
    new-instance v0, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;

    const-string v1, "GESTURE"

    invoke-direct {v0, v1, v6, v6, v7}, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;->GESTURE:Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;

    .line 956
    new-instance v0, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;

    const-string v1, "TAP_TO_END"

    invoke-direct {v0, v1, v7, v7, v8}, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;->TAP_TO_END:Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;

    .line 957
    new-instance v0, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;

    const-string v1, "SERVER_AUDIO"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v8, v2}, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;->SERVER_AUDIO:Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;

    .line 950
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;->TIMEOUT:Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;->PUSH_AND_HOLD:Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;->AUDIO:Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;->GESTURE:Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;->TAP_TO_END:Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;->SERVER_AUDIO:Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;

    aput-object v1, v0, v8

    sput-object v0, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;->$VALUES:[Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;

    .line 987
    new-instance v0, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType$1;

    invoke-direct {v0}, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 996
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 997
    iput p4, p0, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;->value:I

    .line 998
    return-void
.end method

.method public static valueOf(I)Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;
    .locals 1
    .parameter "value"

    .prologue
    .line 971
    packed-switch p0, :pswitch_data_0

    .line 978
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 972
    :pswitch_0
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;->TIMEOUT:Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;

    goto :goto_0

    .line 973
    :pswitch_1
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;->PUSH_AND_HOLD:Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;

    goto :goto_0

    .line 974
    :pswitch_2
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;->AUDIO:Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;

    goto :goto_0

    .line 975
    :pswitch_3
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;->GESTURE:Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;

    goto :goto_0

    .line 976
    :pswitch_4
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;->TAP_TO_END:Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;

    goto :goto_0

    .line 977
    :pswitch_5
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;->SERVER_AUDIO:Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;

    goto :goto_0

    .line 971
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;
    .locals 1
    .parameter

    .prologue
    .line 950
    const-class v0, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;

    return-object v0
.end method

.method public static values()[Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;
    .locals 1

    .prologue
    .line 950
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;->$VALUES:[Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;

    invoke-virtual {v0}, [Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 968
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;->value:I

    return v0
.end method
