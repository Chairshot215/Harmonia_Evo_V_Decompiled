.class public final enum Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Contents;
.super Ljava/lang/Enum;
.source "Sync.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Contents"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Contents;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Contents;

.field public static final enum AUTHENTICATE:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Contents;

.field public static final enum CLEAR_DATA:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Contents;

.field public static final enum COMMIT:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Contents;

.field public static final enum GET_UPDATES:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Contents;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Contents;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final index:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 4859
    new-instance v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Contents;

    const-string v1, "COMMIT"

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Contents;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Contents;->COMMIT:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Contents;

    .line 4860
    new-instance v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Contents;

    const-string v1, "GET_UPDATES"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Contents;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Contents;->GET_UPDATES:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Contents;

    .line 4861
    new-instance v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Contents;

    const-string v1, "AUTHENTICATE"

    invoke-direct {v0, v1, v3, v3, v4}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Contents;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Contents;->AUTHENTICATE:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Contents;

    .line 4862
    new-instance v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Contents;

    const-string v1, "CLEAR_DATA"

    invoke-direct {v0, v1, v4, v4, v6}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Contents;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Contents;->CLEAR_DATA:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Contents;

    .line 4857
    new-array v0, v6, [Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Contents;

    sget-object v1, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Contents;->COMMIT:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Contents;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Contents;->GET_UPDATES:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Contents;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Contents;->AUTHENTICATE:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Contents;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Contents;->CLEAR_DATA:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Contents;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Contents;->$VALUES:[Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Contents;

    .line 4883
    new-instance v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Contents$1;

    invoke-direct {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Contents$1;-><init>()V

    sput-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Contents;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 4892
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4893
    iput p3, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Contents;->index:I

    .line 4894
    iput p4, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Contents;->value:I

    .line 4895
    return-void
.end method

.method public static valueOf(I)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Contents;
    .locals 1
    .parameter "value"

    .prologue
    .line 4869
    packed-switch p0, :pswitch_data_0

    .line 4874
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 4870
    :pswitch_0
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Contents;->COMMIT:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Contents;

    goto :goto_0

    .line 4871
    :pswitch_1
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Contents;->GET_UPDATES:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Contents;

    goto :goto_0

    .line 4872
    :pswitch_2
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Contents;->AUTHENTICATE:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Contents;

    goto :goto_0

    .line 4873
    :pswitch_3
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Contents;->CLEAR_DATA:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Contents;

    goto :goto_0

    .line 4869
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Contents;
    .locals 1
    .parameter

    .prologue
    .line 4857
    const-class v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Contents;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Contents;

    return-object v0
.end method

.method public static values()[Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Contents;
    .locals 1

    .prologue
    .line 4857
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Contents;->$VALUES:[Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Contents;

    invoke-virtual {v0}, [Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Contents;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Contents;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 4866
    iget v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Contents;->value:I

    return v0
.end method
