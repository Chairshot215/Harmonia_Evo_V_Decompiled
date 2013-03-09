.class public final enum Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;
.super Ljava/lang/Enum;
.source "MobileappsExtensions.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DialogType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;

.field public static final enum SWIPE_HINT:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;

.field public static final enum VOICE_WARNING_KEYBOARD:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;

.field public static final enum VOICE_WARNING_SETTINGS:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 11708
    new-instance v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;

    const-string v1, "VOICE_WARNING_KEYBOARD"

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;->VOICE_WARNING_KEYBOARD:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;

    .line 11709
    new-instance v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;

    const-string v1, "VOICE_WARNING_SETTINGS"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;->VOICE_WARNING_SETTINGS:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;

    .line 11710
    new-instance v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;

    const-string v1, "SWIPE_HINT"

    invoke-direct {v0, v1, v3, v3, v5}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;->SWIPE_HINT:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;

    .line 11706
    new-array v0, v5, [Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;

    sget-object v1, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;->VOICE_WARNING_KEYBOARD:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;->VOICE_WARNING_SETTINGS:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;->SWIPE_HINT:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;->$VALUES:[Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;

    .line 11734
    new-instance v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType$1;

    invoke-direct {v0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType$1;-><init>()V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 11743
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11744
    iput p4, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;->value:I

    .line 11745
    return-void
.end method

.method public static valueOf(I)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;
    .locals 1
    .parameter "value"

    .prologue
    .line 11721
    packed-switch p0, :pswitch_data_0

    .line 11725
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 11722
    :pswitch_0
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;->VOICE_WARNING_KEYBOARD:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;

    goto :goto_0

    .line 11723
    :pswitch_1
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;->VOICE_WARNING_SETTINGS:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;

    goto :goto_0

    .line 11724
    :pswitch_2
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;->SWIPE_HINT:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;

    goto :goto_0

    .line 11721
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;
    .locals 1
    .parameter

    .prologue
    .line 11706
    const-class v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;

    return-object v0
.end method

.method public static values()[Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;
    .locals 1

    .prologue
    .line 11706
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;->$VALUES:[Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;

    invoke-virtual {v0}, [Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 11718
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;->value:I

    return v0
.end method
