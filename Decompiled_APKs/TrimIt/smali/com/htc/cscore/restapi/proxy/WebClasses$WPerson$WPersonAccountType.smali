.class public final enum Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonAccountType;
.super Ljava/lang/Enum;
.source "WebClasses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WPersonAccountType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonAccountType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonAccountType;

.field public static final enum AccountExchange:Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonAccountType;

.field public static final enum AccountGmail:Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonAccountType;

.field public static final enum AccountHidden:Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonAccountType;

.field public static final enum AccountPhone:Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonAccountType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 455
    new-instance v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonAccountType;

    const-string v1, "AccountGmail"

    invoke-direct {v0, v1, v2}, Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonAccountType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonAccountType;->AccountGmail:Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonAccountType;

    .line 456
    new-instance v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonAccountType;

    const-string v1, "AccountPhone"

    invoke-direct {v0, v1, v3}, Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonAccountType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonAccountType;->AccountPhone:Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonAccountType;

    .line 457
    new-instance v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonAccountType;

    const-string v1, "AccountExchange"

    invoke-direct {v0, v1, v4}, Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonAccountType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonAccountType;->AccountExchange:Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonAccountType;

    .line 458
    new-instance v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonAccountType;

    const-string v1, "AccountHidden"

    invoke-direct {v0, v1, v5}, Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonAccountType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonAccountType;->AccountHidden:Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonAccountType;

    .line 454
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonAccountType;

    sget-object v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonAccountType;->AccountGmail:Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonAccountType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonAccountType;->AccountPhone:Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonAccountType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonAccountType;->AccountExchange:Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonAccountType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonAccountType;->AccountHidden:Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonAccountType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonAccountType;->$VALUES:[Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonAccountType;

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
    .line 454
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonAccountType;
    .locals 1
    .parameter "name"

    .prologue
    .line 454
    const-class v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonAccountType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonAccountType;

    return-object v0
.end method

.method public static values()[Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonAccountType;
    .locals 1

    .prologue
    .line 454
    sget-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonAccountType;->$VALUES:[Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonAccountType;

    invoke-virtual {v0}, [Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonAccountType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonAccountType;

    return-object v0
.end method
