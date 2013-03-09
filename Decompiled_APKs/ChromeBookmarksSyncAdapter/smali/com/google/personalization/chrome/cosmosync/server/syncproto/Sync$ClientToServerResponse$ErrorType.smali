.class public final enum Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;
.super Ljava/lang/Enum;
.source "Sync.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;

.field public static final enum ACCESS_DENIED:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;

.field public static final enum AUTH_EXPIRED:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;

.field public static final enum AUTH_INVALID:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;

.field public static final enum CLEAR_PENDING:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;

.field public static final enum MIGRATION_DONE:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;

.field public static final enum NOT_MY_BIRTHDAY:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;

.field public static final enum SUCCESS:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;

.field public static final enum THROTTLED:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;

.field public static final enum TRANSIENT_ERROR:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;

.field public static final enum UNKNOWN:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;

.field public static final enum USER_NOT_ACTIVATED:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final index:I

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

    .line 8997
    new-instance v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;->SUCCESS:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;

    .line 8998
    new-instance v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;

    const-string v1, "ACCESS_DENIED"

    invoke-direct {v0, v1, v6, v6, v6}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;->ACCESS_DENIED:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;

    .line 8999
    new-instance v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;

    const-string v1, "NOT_MY_BIRTHDAY"

    invoke-direct {v0, v1, v7, v7, v7}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;->NOT_MY_BIRTHDAY:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;

    .line 9000
    new-instance v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;

    const-string v1, "THROTTLED"

    invoke-direct {v0, v1, v8, v8, v8}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;->THROTTLED:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;

    .line 9001
    new-instance v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;

    const-string v1, "AUTH_EXPIRED"

    invoke-direct {v0, v1, v9, v9, v9}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;->AUTH_EXPIRED:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;

    .line 9002
    new-instance v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;

    const-string v1, "USER_NOT_ACTIVATED"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;->USER_NOT_ACTIVATED:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;

    .line 9003
    new-instance v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;

    const-string v1, "AUTH_INVALID"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;->AUTH_INVALID:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;

    .line 9004
    new-instance v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;

    const-string v1, "CLEAR_PENDING"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;->CLEAR_PENDING:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;

    .line 9005
    new-instance v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;

    const-string v1, "TRANSIENT_ERROR"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;->TRANSIENT_ERROR:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;

    .line 9006
    new-instance v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;

    const-string v1, "MIGRATION_DONE"

    const/16 v2, 0x9

    const/16 v3, 0x9

    const/16 v4, 0x9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;->MIGRATION_DONE:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;

    .line 9007
    new-instance v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;

    const-string v1, "UNKNOWN"

    const/16 v2, 0xa

    const/16 v3, 0xa

    const/16 v4, 0x64

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;->UNKNOWN:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;

    .line 8995
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;

    sget-object v1, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;->SUCCESS:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;->ACCESS_DENIED:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;->NOT_MY_BIRTHDAY:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;->THROTTLED:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;->AUTH_EXPIRED:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;->USER_NOT_ACTIVATED:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;->AUTH_INVALID:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;->CLEAR_PENDING:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;->TRANSIENT_ERROR:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;->MIGRATION_DONE:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;->UNKNOWN:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;->$VALUES:[Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;

    .line 9035
    new-instance v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType$1;

    invoke-direct {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType$1;-><init>()V

    sput-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 9044
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 9045
    iput p3, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;->index:I

    .line 9046
    iput p4, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;->value:I

    .line 9047
    return-void
.end method

.method public static valueOf(I)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;
    .locals 1
    .parameter "value"

    .prologue
    .line 9014
    sparse-switch p0, :sswitch_data_0

    .line 9026
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 9015
    :sswitch_0
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;->SUCCESS:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;

    goto :goto_0

    .line 9016
    :sswitch_1
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;->ACCESS_DENIED:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;

    goto :goto_0

    .line 9017
    :sswitch_2
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;->NOT_MY_BIRTHDAY:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;

    goto :goto_0

    .line 9018
    :sswitch_3
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;->THROTTLED:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;

    goto :goto_0

    .line 9019
    :sswitch_4
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;->AUTH_EXPIRED:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;

    goto :goto_0

    .line 9020
    :sswitch_5
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;->USER_NOT_ACTIVATED:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;

    goto :goto_0

    .line 9021
    :sswitch_6
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;->AUTH_INVALID:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;

    goto :goto_0

    .line 9022
    :sswitch_7
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;->CLEAR_PENDING:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;

    goto :goto_0

    .line 9023
    :sswitch_8
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;->TRANSIENT_ERROR:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;

    goto :goto_0

    .line 9024
    :sswitch_9
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;->MIGRATION_DONE:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;

    goto :goto_0

    .line 9025
    :sswitch_a
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;->UNKNOWN:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;

    goto :goto_0

    .line 9014
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0x64 -> :sswitch_a
    .end sparse-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;
    .locals 1
    .parameter

    .prologue
    .line 8995
    const-class v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;

    return-object v0
.end method

.method public static values()[Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;
    .locals 1

    .prologue
    .line 8995
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;->$VALUES:[Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;

    invoke-virtual {v0}, [Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 9011
    iget v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;->value:I

    return v0
.end method
