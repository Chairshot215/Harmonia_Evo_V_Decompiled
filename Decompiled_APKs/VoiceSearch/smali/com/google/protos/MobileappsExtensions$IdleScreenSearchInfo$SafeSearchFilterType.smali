.class public final enum Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;
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
    name = "SafeSearchFilterType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;

.field public static final enum MODERATE_FILTER:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;

.field public static final enum NONE_FILTER:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;

.field public static final enum STRICT_FILTER:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3908
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;

    const-string v1, "NONE_FILTER"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;->NONE_FILTER:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;

    .line 3909
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;

    const-string v1, "MODERATE_FILTER"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;->MODERATE_FILTER:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;

    .line 3910
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;

    const-string v1, "STRICT_FILTER"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;->STRICT_FILTER:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;

    .line 3906
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;

    sget-object v1, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;->NONE_FILTER:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;->MODERATE_FILTER:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;->STRICT_FILTER:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;->$VALUES:[Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;

    .line 3934
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType$1;

    invoke-direct {v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType$1;-><init>()V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 3943
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3944
    iput p4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;->value:I

    .line 3945
    return-void
.end method

.method public static valueOf(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;
    .locals 1
    .parameter "value"

    .prologue
    .line 3921
    packed-switch p0, :pswitch_data_0

    .line 3925
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 3922
    :pswitch_0
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;->NONE_FILTER:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;

    goto :goto_0

    .line 3923
    :pswitch_1
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;->MODERATE_FILTER:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;

    goto :goto_0

    .line 3924
    :pswitch_2
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;->STRICT_FILTER:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;

    goto :goto_0

    .line 3921
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;
    .locals 1
    .parameter

    .prologue
    .line 3906
    const-class v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;

    return-object v0
.end method

.method public static values()[Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;
    .locals 1

    .prologue
    .line 3906
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;->$VALUES:[Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;

    invoke-virtual {v0}, [Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 3918
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;->value:I

    return v0
.end method
