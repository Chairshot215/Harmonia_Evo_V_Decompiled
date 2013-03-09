.class public final enum Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;
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
    name = "VoiceSearchContactAddressType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;

.field public static final enum EMAIL:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;

.field public static final enum PHONE:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;",
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

    .line 4457
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;

    const-string v1, "PHONE"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;->PHONE:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;

    .line 4458
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;

    const-string v1, "EMAIL"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;->EMAIL:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;

    .line 4455
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;

    sget-object v1, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;->PHONE:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;->EMAIL:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;->$VALUES:[Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;

    .line 4480
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType$1;

    invoke-direct {v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType$1;-><init>()V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 4489
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4490
    iput p4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;->value:I

    .line 4491
    return-void
.end method

.method public static valueOf(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;
    .locals 1
    .parameter "value"

    .prologue
    .line 4468
    packed-switch p0, :pswitch_data_0

    .line 4471
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 4469
    :pswitch_0
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;->PHONE:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;

    goto :goto_0

    .line 4470
    :pswitch_1
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;->EMAIL:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;

    goto :goto_0

    .line 4468
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;
    .locals 1
    .parameter

    .prologue
    .line 4455
    const-class v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;

    return-object v0
.end method

.method public static values()[Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;
    .locals 1

    .prologue
    .line 4455
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;->$VALUES:[Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;

    invoke-virtual {v0}, [Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 4465
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;->value:I

    return v0
.end method
