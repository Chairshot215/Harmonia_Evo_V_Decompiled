.class public final enum Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;
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
    name = "SuggestionSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;

.field public static final enum DEFAULT_SOURCE:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;

.field public static final enum SEARCH_HISTORY:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;

.field public static final enum SUGGESTIONS_CACHE:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;",
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

    .line 4178
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;

    const-string v1, "DEFAULT_SOURCE"

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;->DEFAULT_SOURCE:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;

    .line 4179
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;

    const-string v1, "SEARCH_HISTORY"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;->SEARCH_HISTORY:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;

    .line 4180
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;

    const-string v1, "SUGGESTIONS_CACHE"

    invoke-direct {v0, v1, v3, v3, v5}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;->SUGGESTIONS_CACHE:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;

    .line 4176
    new-array v0, v5, [Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;

    sget-object v1, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;->DEFAULT_SOURCE:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;->SEARCH_HISTORY:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;->SUGGESTIONS_CACHE:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;->$VALUES:[Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;

    .line 4204
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource$1;

    invoke-direct {v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource$1;-><init>()V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 4213
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4214
    iput p4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;->value:I

    .line 4215
    return-void
.end method

.method public static valueOf(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;
    .locals 1
    .parameter "value"

    .prologue
    .line 4191
    packed-switch p0, :pswitch_data_0

    .line 4195
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 4192
    :pswitch_0
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;->DEFAULT_SOURCE:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;

    goto :goto_0

    .line 4193
    :pswitch_1
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;->SEARCH_HISTORY:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;

    goto :goto_0

    .line 4194
    :pswitch_2
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;->SUGGESTIONS_CACHE:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;

    goto :goto_0

    .line 4191
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;
    .locals 1
    .parameter

    .prologue
    .line 4176
    const-class v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;

    return-object v0
.end method

.method public static values()[Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;
    .locals 1

    .prologue
    .line 4176
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;->$VALUES:[Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;

    invoke-virtual {v0}, [Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 4188
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;->value:I

    return v0
.end method
