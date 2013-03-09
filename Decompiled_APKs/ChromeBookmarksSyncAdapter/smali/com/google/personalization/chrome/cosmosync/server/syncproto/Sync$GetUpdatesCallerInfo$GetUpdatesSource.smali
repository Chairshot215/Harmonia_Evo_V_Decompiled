.class public final enum Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;
.super Ljava/lang/Enum;
.source "Sync.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GetUpdatesSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;

.field public static final enum CLEAR_PRIVATE_DATA:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;

.field public static final enum FIRST_UPDATE:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;

.field public static final enum LOCAL:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;

.field public static final enum NOTIFICATION:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;

.field public static final enum PERIODIC:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;

.field public static final enum SYNC_CYCLE_CONTINUATION:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;

.field public static final enum UNKNOWN:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;",
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

    .line 2864
    new-instance v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;->UNKNOWN:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;

    .line 2865
    new-instance v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;

    const-string v1, "FIRST_UPDATE"

    invoke-direct {v0, v1, v6, v6, v6}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;->FIRST_UPDATE:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;

    .line 2866
    new-instance v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;

    const-string v1, "LOCAL"

    invoke-direct {v0, v1, v7, v7, v7}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;->LOCAL:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;

    .line 2867
    new-instance v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;

    const-string v1, "NOTIFICATION"

    invoke-direct {v0, v1, v8, v8, v8}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;->NOTIFICATION:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;

    .line 2868
    new-instance v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;

    const-string v1, "PERIODIC"

    invoke-direct {v0, v1, v9, v9, v9}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;->PERIODIC:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;

    .line 2869
    new-instance v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;

    const-string v1, "SYNC_CYCLE_CONTINUATION"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;->SYNC_CYCLE_CONTINUATION:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;

    .line 2870
    new-instance v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;

    const-string v1, "CLEAR_PRIVATE_DATA"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;->CLEAR_PRIVATE_DATA:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;

    .line 2862
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;

    sget-object v1, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;->UNKNOWN:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;->FIRST_UPDATE:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;->LOCAL:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;->NOTIFICATION:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;->PERIODIC:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;->SYNC_CYCLE_CONTINUATION:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;->CLEAR_PRIVATE_DATA:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;->$VALUES:[Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;

    .line 2894
    new-instance v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource$1;

    invoke-direct {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource$1;-><init>()V

    sput-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 2903
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2904
    iput p3, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;->index:I

    .line 2905
    iput p4, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;->value:I

    .line 2906
    return-void
.end method

.method public static valueOf(I)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;
    .locals 1
    .parameter "value"

    .prologue
    .line 2877
    packed-switch p0, :pswitch_data_0

    .line 2885
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 2878
    :pswitch_0
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;->UNKNOWN:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;

    goto :goto_0

    .line 2879
    :pswitch_1
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;->FIRST_UPDATE:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;

    goto :goto_0

    .line 2880
    :pswitch_2
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;->LOCAL:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;

    goto :goto_0

    .line 2881
    :pswitch_3
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;->NOTIFICATION:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;

    goto :goto_0

    .line 2882
    :pswitch_4
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;->PERIODIC:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;

    goto :goto_0

    .line 2883
    :pswitch_5
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;->SYNC_CYCLE_CONTINUATION:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;

    goto :goto_0

    .line 2884
    :pswitch_6
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;->CLEAR_PRIVATE_DATA:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;

    goto :goto_0

    .line 2877
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;
    .locals 1
    .parameter

    .prologue
    .line 2862
    const-class v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;

    return-object v0
.end method

.method public static values()[Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;
    .locals 1

    .prologue
    .line 2862
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;->$VALUES:[Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;

    invoke-virtual {v0}, [Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 2874
    iget v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;->value:I

    return v0
.end method
