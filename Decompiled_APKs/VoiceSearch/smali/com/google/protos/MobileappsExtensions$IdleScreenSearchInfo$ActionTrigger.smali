.class public final enum Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;
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
    name = "ActionTrigger"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;

.field public static final enum BACKGROUND:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;

.field public static final enum HOME_MENU:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;

.field public static final enum HOME_WIDGET:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;

.field public static final enum SEARCH_RESULT_MENU:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;

.field public static final enum SEARCH_RESULT_TAB:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;

.field public static final enum SEARCH_RESULT_WIDGET:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;

.field public static final enum WEB_APP:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;",
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
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 4316
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;

    const-string v1, "HOME_WIDGET"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;->HOME_WIDGET:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;

    .line 4317
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;

    const-string v1, "HOME_MENU"

    invoke-direct {v0, v1, v6, v6, v6}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;->HOME_MENU:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;

    .line 4318
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;

    const-string v1, "SEARCH_RESULT_WIDGET"

    invoke-direct {v0, v1, v7, v7, v7}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;->SEARCH_RESULT_WIDGET:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;

    .line 4319
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;

    const-string v1, "SEARCH_RESULT_MENU"

    invoke-direct {v0, v1, v8, v8, v8}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;->SEARCH_RESULT_MENU:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;

    .line 4320
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;

    const-string v1, "SEARCH_RESULT_TAB"

    invoke-direct {v0, v1, v9, v9, v9}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;->SEARCH_RESULT_TAB:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;

    .line 4321
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;

    const-string v1, "WEB_APP"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;->WEB_APP:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;

    .line 4322
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;

    const-string v1, "BACKGROUND"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;->BACKGROUND:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;

    .line 4314
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;

    sget-object v1, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;->HOME_WIDGET:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;->HOME_MENU:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;->SEARCH_RESULT_WIDGET:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;->SEARCH_RESULT_MENU:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;->SEARCH_RESULT_TAB:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;->WEB_APP:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;->BACKGROUND:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;->$VALUES:[Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;

    .line 4354
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger$1;

    invoke-direct {v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger$1;-><init>()V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 4363
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4364
    iput p4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;->value:I

    .line 4365
    return-void
.end method

.method public static valueOf(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;
    .locals 1
    .parameter "value"

    .prologue
    .line 4337
    packed-switch p0, :pswitch_data_0

    .line 4345
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 4338
    :pswitch_0
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;->HOME_WIDGET:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;

    goto :goto_0

    .line 4339
    :pswitch_1
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;->HOME_MENU:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;

    goto :goto_0

    .line 4340
    :pswitch_2
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;->SEARCH_RESULT_WIDGET:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;

    goto :goto_0

    .line 4341
    :pswitch_3
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;->SEARCH_RESULT_MENU:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;

    goto :goto_0

    .line 4342
    :pswitch_4
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;->SEARCH_RESULT_TAB:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;

    goto :goto_0

    .line 4343
    :pswitch_5
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;->WEB_APP:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;

    goto :goto_0

    .line 4344
    :pswitch_6
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;->BACKGROUND:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;

    goto :goto_0

    .line 4337
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;
    .locals 1
    .parameter

    .prologue
    .line 4314
    const-class v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;

    return-object v0
.end method

.method public static values()[Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;
    .locals 1

    .prologue
    .line 4314
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;->$VALUES:[Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;

    invoke-virtual {v0}, [Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 4334
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;->value:I

    return v0
.end method
