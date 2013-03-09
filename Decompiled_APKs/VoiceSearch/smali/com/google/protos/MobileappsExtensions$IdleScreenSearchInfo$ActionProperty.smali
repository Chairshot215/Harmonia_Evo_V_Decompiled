.class public final enum Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionProperty;
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
    name = "ActionProperty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionProperty;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionProperty;

.field public static final enum GAIA_ACCOUNT_NEW_ACCOUNT:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionProperty;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionProperty;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4372
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionProperty;

    const-string v1, "GAIA_ACCOUNT_NEW_ACCOUNT"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionProperty;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionProperty;->GAIA_ACCOUNT_NEW_ACCOUNT:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionProperty;

    .line 4370
    new-array v0, v3, [Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionProperty;

    sget-object v1, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionProperty;->GAIA_ACCOUNT_NEW_ACCOUNT:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionProperty;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionProperty;->$VALUES:[Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionProperty;

    .line 4392
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionProperty$1;

    invoke-direct {v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionProperty$1;-><init>()V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionProperty;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 4401
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4402
    iput p4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionProperty;->value:I

    .line 4403
    return-void
.end method

.method public static valueOf(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionProperty;
    .locals 1
    .parameter "value"

    .prologue
    .line 4381
    packed-switch p0, :pswitch_data_0

    .line 4383
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 4382
    :pswitch_0
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionProperty;->GAIA_ACCOUNT_NEW_ACCOUNT:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionProperty;

    goto :goto_0

    .line 4381
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionProperty;
    .locals 1
    .parameter

    .prologue
    .line 4370
    const-class v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionProperty;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionProperty;

    return-object v0
.end method

.method public static values()[Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionProperty;
    .locals 1

    .prologue
    .line 4370
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionProperty;->$VALUES:[Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionProperty;

    invoke-virtual {v0}, [Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionProperty;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionProperty;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 4378
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionProperty;->value:I

    return v0
.end method
