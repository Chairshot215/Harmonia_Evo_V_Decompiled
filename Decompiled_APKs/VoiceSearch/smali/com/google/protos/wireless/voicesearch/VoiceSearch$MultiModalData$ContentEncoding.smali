.class public final enum Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;
.super Ljava/lang/Enum;
.source "VoiceSearch.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ContentEncoding"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

.field public static final enum GZIP:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

.field public static final enum NONE:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;",
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

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 3945
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;->NONE:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    .line 3946
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    const-string v1, "GZIP"

    invoke-direct {v0, v1, v2, v2, v4}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;->GZIP:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    .line 3943
    new-array v0, v4, [Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    sget-object v1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;->NONE:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;->GZIP:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;->$VALUES:[Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    .line 3968
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding$1;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding$1;-><init>()V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 3977
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3978
    iput p4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;->value:I

    .line 3979
    return-void
.end method

.method public static valueOf(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;
    .locals 1
    .parameter "value"

    .prologue
    .line 3956
    packed-switch p0, :pswitch_data_0

    .line 3959
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 3957
    :pswitch_0
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;->NONE:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    goto :goto_0

    .line 3958
    :pswitch_1
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;->GZIP:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    goto :goto_0

    .line 3956
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;
    .locals 1
    .parameter

    .prologue
    .line 3943
    const-class v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    return-object v0
.end method

.method public static values()[Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;
    .locals 1

    .prologue
    .line 3943
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;->$VALUES:[Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    invoke-virtual {v0}, [Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 3953
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;->value:I

    return v0
.end method
