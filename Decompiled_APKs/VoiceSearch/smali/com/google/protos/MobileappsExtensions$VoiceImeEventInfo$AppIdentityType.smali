.class public final enum Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;
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
    name = "AppIdentityType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;

.field public static final enum GMAIL_APP:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;

.field public static final enum SMS_APP:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;

.field public static final enum UNKNOWN_APP:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;",
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

    .line 11802
    new-instance v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;

    const-string v1, "UNKNOWN_APP"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;->UNKNOWN_APP:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;

    .line 11803
    new-instance v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;

    const-string v1, "GMAIL_APP"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;->GMAIL_APP:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;

    .line 11804
    new-instance v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;

    const-string v1, "SMS_APP"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;->SMS_APP:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;

    .line 11800
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;

    sget-object v1, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;->UNKNOWN_APP:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;->GMAIL_APP:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;->SMS_APP:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;->$VALUES:[Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;

    .line 11828
    new-instance v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType$1;

    invoke-direct {v0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType$1;-><init>()V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 11837
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11838
    iput p4, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;->value:I

    .line 11839
    return-void
.end method

.method public static valueOf(I)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;
    .locals 1
    .parameter "value"

    .prologue
    .line 11815
    packed-switch p0, :pswitch_data_0

    .line 11819
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 11816
    :pswitch_0
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;->UNKNOWN_APP:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;

    goto :goto_0

    .line 11817
    :pswitch_1
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;->GMAIL_APP:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;

    goto :goto_0

    .line 11818
    :pswitch_2
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;->SMS_APP:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;

    goto :goto_0

    .line 11815
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;
    .locals 1
    .parameter

    .prologue
    .line 11800
    const-class v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;

    return-object v0
.end method

.method public static values()[Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;
    .locals 1

    .prologue
    .line 11800
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;->$VALUES:[Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;

    invoke-virtual {v0}, [Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 11812
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;->value:I

    return v0
.end method
