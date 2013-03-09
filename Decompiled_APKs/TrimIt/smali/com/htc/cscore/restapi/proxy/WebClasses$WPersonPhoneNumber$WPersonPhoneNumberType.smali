.class public final enum Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;
.super Ljava/lang/Enum;
.source "WebClasses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WPersonPhoneNumberType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;

.field public static final enum PhoneAssistant:Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;

.field public static final enum PhoneCar:Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;

.field public static final enum PhoneCompanyMain:Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;

.field public static final enum PhoneCustom:Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;

.field public static final enum PhoneHome:Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;

.field public static final enum PhoneHomeFax:Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;

.field public static final enum PhoneMMS:Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;

.field public static final enum PhoneMobile:Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;

.field public static final enum PhoneOther:Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;

.field public static final enum PhonePager:Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;

.field public static final enum PhoneRadio:Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;

.field public static final enum PhoneWork:Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;

.field public static final enum PhoneWorkFax:Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 536
    new-instance v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;

    const-string v1, "PhoneMobile"

    invoke-direct {v0, v1, v3}, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;->PhoneMobile:Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;

    .line 537
    new-instance v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;

    const-string v1, "PhoneHome"

    invoke-direct {v0, v1, v4}, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;->PhoneHome:Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;

    .line 538
    new-instance v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;

    const-string v1, "PhoneWork"

    invoke-direct {v0, v1, v5}, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;->PhoneWork:Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;

    .line 539
    new-instance v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;

    const-string v1, "PhoneWorkFax"

    invoke-direct {v0, v1, v6}, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;->PhoneWorkFax:Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;

    .line 540
    new-instance v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;

    const-string v1, "PhoneHomeFax"

    invoke-direct {v0, v1, v7}, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;->PhoneHomeFax:Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;

    .line 541
    new-instance v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;

    const-string v1, "PhonePager"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;->PhonePager:Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;

    .line 542
    new-instance v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;

    const-string v1, "PhoneCar"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;->PhoneCar:Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;

    .line 543
    new-instance v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;

    const-string v1, "PhoneCompanyMain"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;->PhoneCompanyMain:Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;

    .line 544
    new-instance v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;

    const-string v1, "PhoneMMS"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;->PhoneMMS:Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;

    .line 545
    new-instance v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;

    const-string v1, "PhoneRadio"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;->PhoneRadio:Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;

    .line 546
    new-instance v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;

    const-string v1, "PhoneAssistant"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;->PhoneAssistant:Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;

    .line 547
    new-instance v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;

    const-string v1, "PhoneOther"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;->PhoneOther:Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;

    .line 548
    new-instance v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;

    const-string v1, "PhoneCustom"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;->PhoneCustom:Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;

    .line 535
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;

    sget-object v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;->PhoneMobile:Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;->PhoneHome:Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;->PhoneWork:Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;->PhoneWorkFax:Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;->PhoneHomeFax:Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;->PhonePager:Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;->PhoneCar:Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;->PhoneCompanyMain:Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;->PhoneMMS:Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;->PhoneRadio:Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;->PhoneAssistant:Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;->PhoneOther:Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;->PhoneCustom:Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;->$VALUES:[Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 535
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;
    .locals 1
    .parameter "name"

    .prologue
    .line 535
    const-class v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;

    return-object v0
.end method

.method public static values()[Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;
    .locals 1

    .prologue
    .line 535
    sget-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;->$VALUES:[Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;

    invoke-virtual {v0}, [Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;

    return-object v0
.end method
