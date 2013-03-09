.class public final enum Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;
.super Ljava/lang/Enum;
.source "MobileappsExtensions.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FeatureType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;

.field public static final DASHER_DOMAIN:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;

.field public static final enum MY_LOCATION:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;

.field public static final enum PHONE_TOP_SEARCH:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;

.field public static final enum SEARCH_MY_STUFF:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;

.field public static final enum VOICE_SEARCH:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 4088
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;

    const-string v1, "MY_LOCATION"

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;->MY_LOCATION:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;

    .line 4089
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;

    const-string v1, "VOICE_SEARCH"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;->VOICE_SEARCH:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;

    .line 4090
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;

    const-string v1, "PHONE_TOP_SEARCH"

    invoke-direct {v0, v1, v3, v3, v5}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;->PHONE_TOP_SEARCH:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;

    .line 4091
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;

    const-string v1, "SEARCH_MY_STUFF"

    invoke-direct {v0, v1, v5, v6, v6}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;->SEARCH_MY_STUFF:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;

    .line 4086
    new-array v0, v6, [Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;

    sget-object v1, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;->MY_LOCATION:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;->VOICE_SEARCH:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;->PHONE_TOP_SEARCH:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;->SEARCH_MY_STUFF:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;->$VALUES:[Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;

    .line 4094
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;->PHONE_TOP_SEARCH:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;->DASHER_DOMAIN:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;

    .line 4119
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType$1;

    invoke-direct {v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType$1;-><init>()V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 4128
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4129
    iput p4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;->value:I

    .line 4130
    return-void
.end method

.method public static valueOf(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;
    .locals 1
    .parameter "value"

    .prologue
    .line 4105
    packed-switch p0, :pswitch_data_0

    .line 4110
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 4106
    :pswitch_0
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;->MY_LOCATION:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;

    goto :goto_0

    .line 4107
    :pswitch_1
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;->VOICE_SEARCH:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;

    goto :goto_0

    .line 4108
    :pswitch_2
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;->PHONE_TOP_SEARCH:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;

    goto :goto_0

    .line 4109
    :pswitch_3
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;->SEARCH_MY_STUFF:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;

    goto :goto_0

    .line 4105
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;
    .locals 1
    .parameter

    .prologue
    .line 4086
    const-class v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;

    return-object v0
.end method

.method public static values()[Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;
    .locals 1

    .prologue
    .line 4086
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;->$VALUES:[Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;

    invoke-virtual {v0}, [Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 4102
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;->value:I

    return v0
.end method
