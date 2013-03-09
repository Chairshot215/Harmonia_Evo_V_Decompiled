.class public final enum Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;
.super Ljava/lang/Enum;
.source "VoiceSearch.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;

.field public static final enum CALL:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;

.field public static final enum NOTE_TO_SELF:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;

.field public static final enum SEND_EMAIL:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;

.field public static final enum SEND_SMS:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;",
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

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 4948
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;

    const-string v1, "CALL"

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;->CALL:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;

    .line 4949
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;

    const-string v1, "NOTE_TO_SELF"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;->NOTE_TO_SELF:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;

    .line 4950
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;

    const-string v1, "SEND_EMAIL"

    invoke-direct {v0, v1, v3, v3, v4}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;->SEND_EMAIL:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;

    .line 4951
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;

    const-string v1, "SEND_SMS"

    invoke-direct {v0, v1, v4, v4, v6}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;->SEND_SMS:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;

    .line 4946
    new-array v0, v6, [Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;

    sget-object v1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;->CALL:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;->NOTE_TO_SELF:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;->SEND_EMAIL:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;->SEND_SMS:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;->$VALUES:[Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;

    .line 4977
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action$1;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action$1;-><init>()V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 4986
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4987
    iput p4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;->value:I

    .line 4988
    return-void
.end method

.method public static valueOf(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;
    .locals 1
    .parameter "value"

    .prologue
    .line 4963
    packed-switch p0, :pswitch_data_0

    .line 4968
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 4964
    :pswitch_0
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;->CALL:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;

    goto :goto_0

    .line 4965
    :pswitch_1
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;->NOTE_TO_SELF:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;

    goto :goto_0

    .line 4966
    :pswitch_2
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;->SEND_EMAIL:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;

    goto :goto_0

    .line 4967
    :pswitch_3
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;->SEND_SMS:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;

    goto :goto_0

    .line 4963
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;
    .locals 1
    .parameter

    .prologue
    .line 4946
    const-class v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;

    return-object v0
.end method

.method public static values()[Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;
    .locals 1

    .prologue
    .line 4946
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;->$VALUES:[Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;

    invoke-virtual {v0}, [Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 4960
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;->value:I

    return v0
.end method
