.class public final enum Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;
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
    name = "VoiceSearchButtonType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;

.field public static final enum BB_GREEN_KEY:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;

.field public static final enum BB_LEFT_SIDE_KEY:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;",
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

    .line 3952
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;

    const-string v1, "BB_GREEN_KEY"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;->BB_GREEN_KEY:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;

    .line 3953
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;

    const-string v1, "BB_LEFT_SIDE_KEY"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;->BB_LEFT_SIDE_KEY:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;

    .line 3950
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;

    sget-object v1, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;->BB_GREEN_KEY:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;->BB_LEFT_SIDE_KEY:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;->$VALUES:[Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;

    .line 3975
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType$1;

    invoke-direct {v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType$1;-><init>()V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 3984
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3985
    iput p4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;->value:I

    .line 3986
    return-void
.end method

.method public static valueOf(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;
    .locals 1
    .parameter "value"

    .prologue
    .line 3963
    packed-switch p0, :pswitch_data_0

    .line 3966
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 3964
    :pswitch_0
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;->BB_GREEN_KEY:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;

    goto :goto_0

    .line 3965
    :pswitch_1
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;->BB_LEFT_SIDE_KEY:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;

    goto :goto_0

    .line 3963
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;
    .locals 1
    .parameter

    .prologue
    .line 3950
    const-class v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;

    return-object v0
.end method

.method public static values()[Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;
    .locals 1

    .prologue
    .line 3950
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;->$VALUES:[Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;

    invoke-virtual {v0}, [Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 3960
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;->value:I

    return v0
.end method
