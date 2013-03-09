.class public final enum Lcom/coremobility/app/vnotes/ho;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/coremobility/app/vnotes/ho;

.field public static final enum b:Lcom/coremobility/app/vnotes/ho;

.field public static final enum c:Lcom/coremobility/app/vnotes/ho;

.field public static final enum d:Lcom/coremobility/app/vnotes/ho;

.field public static final enum e:Lcom/coremobility/app/vnotes/ho;

.field private static final synthetic g:[Lcom/coremobility/app/vnotes/ho;


# instance fields
.field f:F


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/coremobility/app/vnotes/ho;

    const-string v1, "SMALLEST"

    const/high16 v2, 0x4140

    invoke-direct {v0, v1, v3, v2}, Lcom/coremobility/app/vnotes/ho;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/coremobility/app/vnotes/ho;->a:Lcom/coremobility/app/vnotes/ho;

    new-instance v0, Lcom/coremobility/app/vnotes/ho;

    const-string v1, "SMALLER"

    const/high16 v2, 0x4160

    invoke-direct {v0, v1, v4, v2}, Lcom/coremobility/app/vnotes/ho;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/coremobility/app/vnotes/ho;->b:Lcom/coremobility/app/vnotes/ho;

    new-instance v0, Lcom/coremobility/app/vnotes/ho;

    const-string v1, "NORMAL"

    const/high16 v2, 0x4180

    invoke-direct {v0, v1, v5, v2}, Lcom/coremobility/app/vnotes/ho;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/coremobility/app/vnotes/ho;->c:Lcom/coremobility/app/vnotes/ho;

    new-instance v0, Lcom/coremobility/app/vnotes/ho;

    const-string v1, "LARGER"

    const/high16 v2, 0x41a0

    invoke-direct {v0, v1, v6, v2}, Lcom/coremobility/app/vnotes/ho;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/coremobility/app/vnotes/ho;->d:Lcom/coremobility/app/vnotes/ho;

    new-instance v0, Lcom/coremobility/app/vnotes/ho;

    const-string v1, "LARGEST"

    const/high16 v2, 0x41c0

    invoke-direct {v0, v1, v7, v2}, Lcom/coremobility/app/vnotes/ho;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/coremobility/app/vnotes/ho;->e:Lcom/coremobility/app/vnotes/ho;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/coremobility/app/vnotes/ho;

    sget-object v1, Lcom/coremobility/app/vnotes/ho;->a:Lcom/coremobility/app/vnotes/ho;

    aput-object v1, v0, v3

    sget-object v1, Lcom/coremobility/app/vnotes/ho;->b:Lcom/coremobility/app/vnotes/ho;

    aput-object v1, v0, v4

    sget-object v1, Lcom/coremobility/app/vnotes/ho;->c:Lcom/coremobility/app/vnotes/ho;

    aput-object v1, v0, v5

    sget-object v1, Lcom/coremobility/app/vnotes/ho;->d:Lcom/coremobility/app/vnotes/ho;

    aput-object v1, v0, v6

    sget-object v1, Lcom/coremobility/app/vnotes/ho;->e:Lcom/coremobility/app/vnotes/ho;

    aput-object v1, v0, v7

    sput-object v0, Lcom/coremobility/app/vnotes/ho;->g:[Lcom/coremobility/app/vnotes/ho;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/coremobility/app/vnotes/ho;->f:F

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/coremobility/app/vnotes/ho;
    .locals 1

    const-class v0, Lcom/coremobility/app/vnotes/ho;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/ho;

    return-object v0
.end method

.method public static values()[Lcom/coremobility/app/vnotes/ho;
    .locals 1

    sget-object v0, Lcom/coremobility/app/vnotes/ho;->g:[Lcom/coremobility/app/vnotes/ho;

    invoke-virtual {v0}, [Lcom/coremobility/app/vnotes/ho;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coremobility/app/vnotes/ho;

    return-object v0
.end method
