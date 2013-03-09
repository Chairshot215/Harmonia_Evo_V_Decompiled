.class public final enum Lcom/htc/cscore/restapi/proxy/WebClasses$WPeopleGroup$WPeopleGroupAccountType;
.super Ljava/lang/Enum;
.source "WebClasses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/restapi/proxy/WebClasses$WPeopleGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WPeopleGroupAccountType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/cscore/restapi/proxy/WebClasses$WPeopleGroup$WPeopleGroupAccountType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/cscore/restapi/proxy/WebClasses$WPeopleGroup$WPeopleGroupAccountType;

.field public static final enum AccountExchange:Lcom/htc/cscore/restapi/proxy/WebClasses$WPeopleGroup$WPeopleGroupAccountType;

.field public static final enum AccountGmail:Lcom/htc/cscore/restapi/proxy/WebClasses$WPeopleGroup$WPeopleGroupAccountType;

.field public static final enum AccountHidden:Lcom/htc/cscore/restapi/proxy/WebClasses$WPeopleGroup$WPeopleGroupAccountType;

.field public static final enum AccountPhone:Lcom/htc/cscore/restapi/proxy/WebClasses$WPeopleGroup$WPeopleGroupAccountType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 439
    new-instance v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPeopleGroup$WPeopleGroupAccountType;

    const-string v1, "AccountGmail"

    invoke-direct {v0, v1, v2}, Lcom/htc/cscore/restapi/proxy/WebClasses$WPeopleGroup$WPeopleGroupAccountType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPeopleGroup$WPeopleGroupAccountType;->AccountGmail:Lcom/htc/cscore/restapi/proxy/WebClasses$WPeopleGroup$WPeopleGroupAccountType;

    .line 440
    new-instance v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPeopleGroup$WPeopleGroupAccountType;

    const-string v1, "AccountPhone"

    invoke-direct {v0, v1, v3}, Lcom/htc/cscore/restapi/proxy/WebClasses$WPeopleGroup$WPeopleGroupAccountType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPeopleGroup$WPeopleGroupAccountType;->AccountPhone:Lcom/htc/cscore/restapi/proxy/WebClasses$WPeopleGroup$WPeopleGroupAccountType;

    .line 441
    new-instance v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPeopleGroup$WPeopleGroupAccountType;

    const-string v1, "AccountExchange"

    invoke-direct {v0, v1, v4}, Lcom/htc/cscore/restapi/proxy/WebClasses$WPeopleGroup$WPeopleGroupAccountType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPeopleGroup$WPeopleGroupAccountType;->AccountExchange:Lcom/htc/cscore/restapi/proxy/WebClasses$WPeopleGroup$WPeopleGroupAccountType;

    .line 442
    new-instance v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPeopleGroup$WPeopleGroupAccountType;

    const-string v1, "AccountHidden"

    invoke-direct {v0, v1, v5}, Lcom/htc/cscore/restapi/proxy/WebClasses$WPeopleGroup$WPeopleGroupAccountType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPeopleGroup$WPeopleGroupAccountType;->AccountHidden:Lcom/htc/cscore/restapi/proxy/WebClasses$WPeopleGroup$WPeopleGroupAccountType;

    .line 438
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/htc/cscore/restapi/proxy/WebClasses$WPeopleGroup$WPeopleGroupAccountType;

    sget-object v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WPeopleGroup$WPeopleGroupAccountType;->AccountGmail:Lcom/htc/cscore/restapi/proxy/WebClasses$WPeopleGroup$WPeopleGroupAccountType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WPeopleGroup$WPeopleGroupAccountType;->AccountPhone:Lcom/htc/cscore/restapi/proxy/WebClasses$WPeopleGroup$WPeopleGroupAccountType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WPeopleGroup$WPeopleGroupAccountType;->AccountExchange:Lcom/htc/cscore/restapi/proxy/WebClasses$WPeopleGroup$WPeopleGroupAccountType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WPeopleGroup$WPeopleGroupAccountType;->AccountHidden:Lcom/htc/cscore/restapi/proxy/WebClasses$WPeopleGroup$WPeopleGroupAccountType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPeopleGroup$WPeopleGroupAccountType;->$VALUES:[Lcom/htc/cscore/restapi/proxy/WebClasses$WPeopleGroup$WPeopleGroupAccountType;

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
    .line 438
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/cscore/restapi/proxy/WebClasses$WPeopleGroup$WPeopleGroupAccountType;
    .locals 1
    .parameter "name"

    .prologue
    .line 438
    const-class v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPeopleGroup$WPeopleGroupAccountType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPeopleGroup$WPeopleGroupAccountType;

    return-object v0
.end method

.method public static values()[Lcom/htc/cscore/restapi/proxy/WebClasses$WPeopleGroup$WPeopleGroupAccountType;
    .locals 1

    .prologue
    .line 438
    sget-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPeopleGroup$WPeopleGroupAccountType;->$VALUES:[Lcom/htc/cscore/restapi/proxy/WebClasses$WPeopleGroup$WPeopleGroupAccountType;

    invoke-virtual {v0}, [Lcom/htc/cscore/restapi/proxy/WebClasses$WPeopleGroup$WPeopleGroupAccountType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/cscore/restapi/proxy/WebClasses$WPeopleGroup$WPeopleGroupAccountType;

    return-object v0
.end method
