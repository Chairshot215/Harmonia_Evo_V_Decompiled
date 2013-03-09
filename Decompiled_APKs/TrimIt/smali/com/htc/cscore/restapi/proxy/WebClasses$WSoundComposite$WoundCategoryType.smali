.class public final enum Lcom/htc/cscore/restapi/proxy/WebClasses$WSoundComposite$WoundCategoryType;
.super Ljava/lang/Enum;
.source "WebClasses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/restapi/proxy/WebClasses$WSoundComposite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WoundCategoryType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/cscore/restapi/proxy/WebClasses$WSoundComposite$WoundCategoryType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/cscore/restapi/proxy/WebClasses$WSoundComposite$WoundCategoryType;

.field public static final enum CalendarNotification:Lcom/htc/cscore/restapi/proxy/WebClasses$WSoundComposite$WoundCategoryType;

.field public static final enum DefaultAlarm:Lcom/htc/cscore/restapi/proxy/WebClasses$WSoundComposite$WoundCategoryType;

.field public static final enum DefaultNotification:Lcom/htc/cscore/restapi/proxy/WebClasses$WSoundComposite$WoundCategoryType;

.field public static final enum DefaultRingtone:Lcom/htc/cscore/restapi/proxy/WebClasses$WSoundComposite$WoundCategoryType;

.field public static final enum EmailNotification:Lcom/htc/cscore/restapi/proxy/WebClasses$WSoundComposite$WoundCategoryType;

.field public static final enum TextMessageNotification:Lcom/htc/cscore/restapi/proxy/WebClasses$WSoundComposite$WoundCategoryType;

.field public static final enum Unknown:Lcom/htc/cscore/restapi/proxy/WebClasses$WSoundComposite$WoundCategoryType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 760
    new-instance v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WSoundComposite$WoundCategoryType;

    const-string v1, "Unknown"

    invoke-direct {v0, v1, v3}, Lcom/htc/cscore/restapi/proxy/WebClasses$WSoundComposite$WoundCategoryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WSoundComposite$WoundCategoryType;->Unknown:Lcom/htc/cscore/restapi/proxy/WebClasses$WSoundComposite$WoundCategoryType;

    .line 761
    new-instance v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WSoundComposite$WoundCategoryType;

    const-string v1, "DefaultRingtone"

    invoke-direct {v0, v1, v4}, Lcom/htc/cscore/restapi/proxy/WebClasses$WSoundComposite$WoundCategoryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WSoundComposite$WoundCategoryType;->DefaultRingtone:Lcom/htc/cscore/restapi/proxy/WebClasses$WSoundComposite$WoundCategoryType;

    .line 762
    new-instance v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WSoundComposite$WoundCategoryType;

    const-string v1, "DefaultNotification"

    invoke-direct {v0, v1, v5}, Lcom/htc/cscore/restapi/proxy/WebClasses$WSoundComposite$WoundCategoryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WSoundComposite$WoundCategoryType;->DefaultNotification:Lcom/htc/cscore/restapi/proxy/WebClasses$WSoundComposite$WoundCategoryType;

    .line 763
    new-instance v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WSoundComposite$WoundCategoryType;

    const-string v1, "TextMessageNotification"

    invoke-direct {v0, v1, v6}, Lcom/htc/cscore/restapi/proxy/WebClasses$WSoundComposite$WoundCategoryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WSoundComposite$WoundCategoryType;->TextMessageNotification:Lcom/htc/cscore/restapi/proxy/WebClasses$WSoundComposite$WoundCategoryType;

    .line 764
    new-instance v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WSoundComposite$WoundCategoryType;

    const-string v1, "EmailNotification"

    invoke-direct {v0, v1, v7}, Lcom/htc/cscore/restapi/proxy/WebClasses$WSoundComposite$WoundCategoryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WSoundComposite$WoundCategoryType;->EmailNotification:Lcom/htc/cscore/restapi/proxy/WebClasses$WSoundComposite$WoundCategoryType;

    .line 765
    new-instance v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WSoundComposite$WoundCategoryType;

    const-string v1, "CalendarNotification"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/htc/cscore/restapi/proxy/WebClasses$WSoundComposite$WoundCategoryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WSoundComposite$WoundCategoryType;->CalendarNotification:Lcom/htc/cscore/restapi/proxy/WebClasses$WSoundComposite$WoundCategoryType;

    .line 766
    new-instance v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WSoundComposite$WoundCategoryType;

    const-string v1, "DefaultAlarm"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/htc/cscore/restapi/proxy/WebClasses$WSoundComposite$WoundCategoryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WSoundComposite$WoundCategoryType;->DefaultAlarm:Lcom/htc/cscore/restapi/proxy/WebClasses$WSoundComposite$WoundCategoryType;

    .line 759
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/htc/cscore/restapi/proxy/WebClasses$WSoundComposite$WoundCategoryType;

    sget-object v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WSoundComposite$WoundCategoryType;->Unknown:Lcom/htc/cscore/restapi/proxy/WebClasses$WSoundComposite$WoundCategoryType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WSoundComposite$WoundCategoryType;->DefaultRingtone:Lcom/htc/cscore/restapi/proxy/WebClasses$WSoundComposite$WoundCategoryType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WSoundComposite$WoundCategoryType;->DefaultNotification:Lcom/htc/cscore/restapi/proxy/WebClasses$WSoundComposite$WoundCategoryType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WSoundComposite$WoundCategoryType;->TextMessageNotification:Lcom/htc/cscore/restapi/proxy/WebClasses$WSoundComposite$WoundCategoryType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WSoundComposite$WoundCategoryType;->EmailNotification:Lcom/htc/cscore/restapi/proxy/WebClasses$WSoundComposite$WoundCategoryType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/cscore/restapi/proxy/WebClasses$WSoundComposite$WoundCategoryType;->CalendarNotification:Lcom/htc/cscore/restapi/proxy/WebClasses$WSoundComposite$WoundCategoryType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/cscore/restapi/proxy/WebClasses$WSoundComposite$WoundCategoryType;->DefaultAlarm:Lcom/htc/cscore/restapi/proxy/WebClasses$WSoundComposite$WoundCategoryType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WSoundComposite$WoundCategoryType;->$VALUES:[Lcom/htc/cscore/restapi/proxy/WebClasses$WSoundComposite$WoundCategoryType;

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
    .line 759
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/cscore/restapi/proxy/WebClasses$WSoundComposite$WoundCategoryType;
    .locals 1
    .parameter "name"

    .prologue
    .line 759
    const-class v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WSoundComposite$WoundCategoryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WSoundComposite$WoundCategoryType;

    return-object v0
.end method

.method public static values()[Lcom/htc/cscore/restapi/proxy/WebClasses$WSoundComposite$WoundCategoryType;
    .locals 1

    .prologue
    .line 759
    sget-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WSoundComposite$WoundCategoryType;->$VALUES:[Lcom/htc/cscore/restapi/proxy/WebClasses$WSoundComposite$WoundCategoryType;

    invoke-virtual {v0}, [Lcom/htc/cscore/restapi/proxy/WebClasses$WSoundComposite$WoundCategoryType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/cscore/restapi/proxy/WebClasses$WSoundComposite$WoundCategoryType;

    return-object v0
.end method
