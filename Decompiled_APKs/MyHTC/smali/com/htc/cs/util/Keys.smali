.class public Lcom/htc/cs/util/Keys;
.super Ljava/lang/Object;
.source "Keys.java"


# static fields
.field public static CMS_URI:Ljava/lang/String; = null

.field public static final CONNECT_SERVICES:Ljava/lang/String; = "Connect_Services"

.field public static final DEVICE_KEY:Ljava/lang/String; = "devices"

.field public static IMC_URI:Ljava/lang/String;

.field public static SERVER_URL:Ljava/lang/String;

.field public static STATUS_URI:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4
    const-string v0, "https://www.htcsense.com/$SS$"

    sput-object v0, Lcom/htc/cs/util/Keys;->SERVER_URL:Ljava/lang/String;

    .line 7
    const-string v0, "t-myatlantis.wwwa.com/$TME$/"

    sput-object v0, Lcom/htc/cs/util/Keys;->CMS_URI:Ljava/lang/String;

    .line 8
    const-string v0, "tim.tme.t-myatlantis.wwwa.com"

    sput-object v0, Lcom/htc/cs/util/Keys;->IMC_URI:Ljava/lang/String;

    .line 9
    const-string v0, "tup.tme.t-myatlantis.wwwa.com"

    sput-object v0, Lcom/htc/cs/util/Keys;->STATUS_URI:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
