.class public final enum Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;
.super Ljava/lang/Enum;
.source "MobileappsExtensions.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/MobileappsExtensions$TextModification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TextModificationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;

.field public static final enum CHOOSE_SUGGESTION:Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;

.field public static final enum TYPING_DELETION:Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;

.field public static final enum TYPING_INSERTION:Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;

.field public static final enum TYPING_INSERTION_PUNCTUATION:Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;

.field public static final enum VOICE_INSERTION:Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 8574
    new-instance v0, Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;

    const-string v1, "VOICE_INSERTION"

    invoke-direct {v0, v1, v7, v7, v3}, Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;->VOICE_INSERTION:Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;

    .line 8575
    new-instance v0, Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;

    const-string v1, "TYPING_INSERTION"

    invoke-direct {v0, v1, v3, v3, v4}, Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;->TYPING_INSERTION:Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;

    .line 8576
    new-instance v0, Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;

    const-string v1, "TYPING_INSERTION_PUNCTUATION"

    invoke-direct {v0, v1, v4, v4, v5}, Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;->TYPING_INSERTION_PUNCTUATION:Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;

    .line 8577
    new-instance v0, Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;

    const-string v1, "TYPING_DELETION"

    invoke-direct {v0, v1, v5, v5, v6}, Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;->TYPING_DELETION:Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;

    .line 8578
    new-instance v0, Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;

    const-string v1, "CHOOSE_SUGGESTION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v6, v6, v2}, Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;->CHOOSE_SUGGESTION:Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;

    .line 8572
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;

    sget-object v1, Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;->VOICE_INSERTION:Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;->TYPING_INSERTION:Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;->TYPING_INSERTION_PUNCTUATION:Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;->TYPING_DELETION:Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;->CHOOSE_SUGGESTION:Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;->$VALUES:[Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;

    .line 8606
    new-instance v0, Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType$1;

    invoke-direct {v0}, Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType$1;-><init>()V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 8615
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 8616
    iput p4, p0, Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;->value:I

    .line 8617
    return-void
.end method

.method public static valueOf(I)Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;
    .locals 1
    .parameter "value"

    .prologue
    .line 8591
    packed-switch p0, :pswitch_data_0

    .line 8597
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 8592
    :pswitch_0
    sget-object v0, Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;->VOICE_INSERTION:Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;

    goto :goto_0

    .line 8593
    :pswitch_1
    sget-object v0, Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;->TYPING_INSERTION:Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;

    goto :goto_0

    .line 8594
    :pswitch_2
    sget-object v0, Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;->TYPING_INSERTION_PUNCTUATION:Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;

    goto :goto_0

    .line 8595
    :pswitch_3
    sget-object v0, Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;->TYPING_DELETION:Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;

    goto :goto_0

    .line 8596
    :pswitch_4
    sget-object v0, Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;->CHOOSE_SUGGESTION:Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;

    goto :goto_0

    .line 8591
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;
    .locals 1
    .parameter

    .prologue
    .line 8572
    const-class v0, Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;

    return-object v0
.end method

.method public static values()[Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;
    .locals 1

    .prologue
    .line 8572
    sget-object v0, Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;->$VALUES:[Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;

    invoke-virtual {v0}, [Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 8588
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;->value:I

    return v0
.end method
