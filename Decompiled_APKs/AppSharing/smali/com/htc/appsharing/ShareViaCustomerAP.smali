.class public Lcom/htc/appsharing/ShareViaCustomerAP;
.super Ljava/lang/Object;
.source "ShareViaCustomerAP.java"


# static fields
.field public static final sExcludePackageNames:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 5
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.facebook.katana"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/appsharing/ShareViaCustomerAP;->sExcludePackageNames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
