.class public final enum Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;
.super Ljava/lang/Enum;
.source "Sync.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResponseType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;

.field public static final enum CONFLICT:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;

.field public static final enum INVALID_MESSAGE:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;

.field public static final enum OVER_QUOTA:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;

.field public static final enum RETRY:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;

.field public static final enum SUCCESS:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;

.field public static final enum TRANSIENT_ERROR:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final index:I

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

    .line 5591
    new-instance v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;->SUCCESS:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;

    .line 5592
    new-instance v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;

    const-string v1, "CONFLICT"

    invoke-direct {v0, v1, v4, v4, v5}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;->CONFLICT:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;

    .line 5593
    new-instance v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;

    const-string v1, "RETRY"

    invoke-direct {v0, v1, v5, v5, v6}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;->RETRY:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;

    .line 5594
    new-instance v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;

    const-string v1, "INVALID_MESSAGE"

    invoke-direct {v0, v1, v6, v6, v7}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;->INVALID_MESSAGE:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;

    .line 5595
    new-instance v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;

    const-string v1, "OVER_QUOTA"

    invoke-direct {v0, v1, v7, v7, v8}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;->OVER_QUOTA:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;

    .line 5596
    new-instance v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;

    const-string v1, "TRANSIENT_ERROR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v8, v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;->TRANSIENT_ERROR:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;

    .line 5589
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;->SUCCESS:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;->CONFLICT:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;->RETRY:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;->INVALID_MESSAGE:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;->OVER_QUOTA:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;->TRANSIENT_ERROR:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;

    aput-object v1, v0, v8

    sput-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;->$VALUES:[Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;

    .line 5619
    new-instance v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType$1;

    invoke-direct {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType$1;-><init>()V

    sput-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 5628
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 5629
    iput p3, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;->index:I

    .line 5630
    iput p4, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;->value:I

    .line 5631
    return-void
.end method

.method public static valueOf(I)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;
    .locals 1
    .parameter "value"

    .prologue
    .line 5603
    packed-switch p0, :pswitch_data_0

    .line 5610
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 5604
    :pswitch_0
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;->SUCCESS:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;

    goto :goto_0

    .line 5605
    :pswitch_1
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;->CONFLICT:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;

    goto :goto_0

    .line 5606
    :pswitch_2
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;->RETRY:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;

    goto :goto_0

    .line 5607
    :pswitch_3
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;->INVALID_MESSAGE:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;

    goto :goto_0

    .line 5608
    :pswitch_4
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;->OVER_QUOTA:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;

    goto :goto_0

    .line 5609
    :pswitch_5
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;->TRANSIENT_ERROR:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;

    goto :goto_0

    .line 5603
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

.method public static valueOf(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;
    .locals 1
    .parameter

    .prologue
    .line 5589
    const-class v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;

    return-object v0
.end method

.method public static values()[Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;
    .locals 1

    .prologue
    .line 5589
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;->$VALUES:[Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;

    invoke-virtual {v0}, [Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 5600
    iget v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;->value:I

    return v0
.end method
