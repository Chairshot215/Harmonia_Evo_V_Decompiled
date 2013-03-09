.class public final enum Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;
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
    name = "PhoneNumberType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

.field public static final enum HOME:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

.field public static final enum HOME_FAX:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

.field public static final enum MOBILE:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

.field public static final enum OTHER:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

.field public static final enum PAGER:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

.field public static final enum WORK:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

.field public static final enum WORK_FAX:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 4892
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

    const-string v1, "MOBILE"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;->MOBILE:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

    .line 4893
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

    const-string v1, "HOME"

    invoke-direct {v0, v1, v5, v5, v6}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;->HOME:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

    .line 4894
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

    const-string v1, "WORK"

    invoke-direct {v0, v1, v6, v6, v7}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;->WORK:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

    .line 4895
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

    const-string v1, "OTHER"

    invoke-direct {v0, v1, v7, v7, v8}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;->OTHER:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

    .line 4896
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

    const-string v1, "HOME_FAX"

    invoke-direct {v0, v1, v8, v8, v9}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;->HOME_FAX:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

    .line 4897
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

    const-string v1, "WORK_FAX"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v9, v9, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;->WORK_FAX:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

    .line 4898
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

    const-string v1, "PAGER"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;->PAGER:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

    .line 4890
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;->MOBILE:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;->HOME:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;->WORK:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;->OTHER:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;->HOME_FAX:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;->WORK_FAX:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;->PAGER:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;->$VALUES:[Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

    .line 4930
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType$1;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType$1;-><init>()V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 4939
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4940
    iput p4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;->value:I

    .line 4941
    return-void
.end method

.method public static valueOf(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;
    .locals 1
    .parameter "value"

    .prologue
    .line 4913
    packed-switch p0, :pswitch_data_0

    .line 4921
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 4914
    :pswitch_0
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;->MOBILE:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

    goto :goto_0

    .line 4915
    :pswitch_1
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;->HOME:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

    goto :goto_0

    .line 4916
    :pswitch_2
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;->WORK:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

    goto :goto_0

    .line 4917
    :pswitch_3
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;->OTHER:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

    goto :goto_0

    .line 4918
    :pswitch_4
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;->HOME_FAX:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

    goto :goto_0

    .line 4919
    :pswitch_5
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;->WORK_FAX:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

    goto :goto_0

    .line 4920
    :pswitch_6
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;->PAGER:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

    goto :goto_0

    .line 4913
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;
    .locals 1
    .parameter

    .prologue
    .line 4890
    const-class v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

    return-object v0
.end method

.method public static values()[Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;
    .locals 1

    .prologue
    .line 4890
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;->$VALUES:[Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

    invoke-virtual {v0}, [Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 4910
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;->value:I

    return v0
.end method
