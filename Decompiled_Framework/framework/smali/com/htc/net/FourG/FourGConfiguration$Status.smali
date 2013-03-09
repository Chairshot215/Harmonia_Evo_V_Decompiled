.class public Lcom/htc/net/FourG/FourGConfiguration$Status;
.super Ljava/lang/Object;
.source "FourGConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/net/FourG/FourGConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Status"
.end annotation


# static fields
.field public static final CURRENT:I = 0x0

.field public static final DISABLED:I = 0x1

.field public static final ENABLED:I = 0x2

.field public static final strings:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "CURRENT"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "DISABLED"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ENABLED"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/net/FourG/FourGConfiguration$Status;->strings:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
