.class public final enum Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;
.super Ljava/lang/Enum;
.source "ClientReportProto.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/ClientReportProto$ClientReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ClientPerceivedRequestStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;

.field public static final enum BAD_RESPONSE:Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;

.field public static final enum CLIENT_SIDE_ERROR:Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;

.field public static final enum CREATE_CONNECTION_FAILURE:Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;

.field public static final enum INVALID_SESSION_DEPRECATED:Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;

.field public static final enum NETWORK_CONNECTIVITY_ERROR:Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;

.field public static final enum NO_CLIENT_ERROR:Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;

.field public static final enum REQUEST_CANCELED:Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;

.field public static final enum REQUEST_TIMEOUT:Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;

.field public static final enum TCP_CONNECTION_FAILURE:Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 210
    new-instance v0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;

    const-string v1, "NO_CLIENT_ERROR"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;->NO_CLIENT_ERROR:Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;

    .line 211
    new-instance v0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;

    const-string v1, "BAD_RESPONSE"

    invoke-direct {v0, v1, v6, v6, v6}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;->BAD_RESPONSE:Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;

    .line 212
    new-instance v0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;

    const-string v1, "REQUEST_CANCELED"

    invoke-direct {v0, v1, v7, v7, v7}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;->REQUEST_CANCELED:Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;

    .line 213
    new-instance v0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;

    const-string v1, "INVALID_SESSION_DEPRECATED"

    invoke-direct {v0, v1, v8, v8, v8}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;->INVALID_SESSION_DEPRECATED:Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;

    .line 214
    new-instance v0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;

    const-string v1, "REQUEST_TIMEOUT"

    invoke-direct {v0, v1, v9, v9, v9}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;->REQUEST_TIMEOUT:Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;

    .line 215
    new-instance v0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;

    const-string v1, "NETWORK_CONNECTIVITY_ERROR"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;->NETWORK_CONNECTIVITY_ERROR:Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;

    .line 216
    new-instance v0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;

    const-string v1, "TCP_CONNECTION_FAILURE"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;->TCP_CONNECTION_FAILURE:Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;

    .line 217
    new-instance v0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;

    const-string v1, "CREATE_CONNECTION_FAILURE"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;->CREATE_CONNECTION_FAILURE:Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;

    .line 218
    new-instance v0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;

    const-string v1, "CLIENT_SIDE_ERROR"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x14

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;->CLIENT_SIDE_ERROR:Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;

    .line 208
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;

    sget-object v1, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;->NO_CLIENT_ERROR:Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;->BAD_RESPONSE:Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;->REQUEST_CANCELED:Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;->INVALID_SESSION_DEPRECATED:Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;->REQUEST_TIMEOUT:Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;->NETWORK_CONNECTIVITY_ERROR:Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;->TCP_CONNECTION_FAILURE:Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;->CREATE_CONNECTION_FAILURE:Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;->CLIENT_SIDE_ERROR:Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;->$VALUES:[Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;

    .line 254
    new-instance v0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus$1;

    invoke-direct {v0}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 263
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 264
    iput p4, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;->value:I

    .line 265
    return-void
.end method

.method public static valueOf(I)Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;
    .locals 1
    .parameter "value"

    .prologue
    .line 235
    packed-switch p0, :pswitch_data_0

    .line 245
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 236
    :pswitch_1
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;->NO_CLIENT_ERROR:Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;

    goto :goto_0

    .line 237
    :pswitch_2
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;->BAD_RESPONSE:Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;

    goto :goto_0

    .line 238
    :pswitch_3
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;->REQUEST_CANCELED:Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;

    goto :goto_0

    .line 239
    :pswitch_4
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;->INVALID_SESSION_DEPRECATED:Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;

    goto :goto_0

    .line 240
    :pswitch_5
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;->REQUEST_TIMEOUT:Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;

    goto :goto_0

    .line 241
    :pswitch_6
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;->NETWORK_CONNECTIVITY_ERROR:Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;

    goto :goto_0

    .line 242
    :pswitch_7
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;->TCP_CONNECTION_FAILURE:Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;

    goto :goto_0

    .line 243
    :pswitch_8
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;->CREATE_CONNECTION_FAILURE:Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;

    goto :goto_0

    .line 244
    :pswitch_9
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;->CLIENT_SIDE_ERROR:Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;

    goto :goto_0

    .line 235
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;
    .locals 1
    .parameter

    .prologue
    .line 208
    const-class v0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;

    return-object v0
.end method

.method public static values()[Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;
    .locals 1

    .prologue
    .line 208
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;->$VALUES:[Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;

    invoke-virtual {v0}, [Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 232
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;->value:I

    return v0
.end method
