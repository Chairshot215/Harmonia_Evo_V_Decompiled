.class public final enum Lcom/coremobility/app/vnotes/cu;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/coremobility/app/vnotes/cu;

.field public static final enum b:Lcom/coremobility/app/vnotes/cu;

.field public static final enum c:Lcom/coremobility/app/vnotes/cu;

.field public static final enum d:Lcom/coremobility/app/vnotes/cu;

.field private static final synthetic f:[Lcom/coremobility/app/vnotes/cu;


# instance fields
.field e:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    new-instance v0, Lcom/coremobility/app/vnotes/cu;

    const-string v1, "WELCOMEVOCEMAIL_MESSAGE_TYPE"

    invoke-direct {v0, v1, v5, v2}, Lcom/coremobility/app/vnotes/cu;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/coremobility/app/vnotes/cu;->a:Lcom/coremobility/app/vnotes/cu;

    new-instance v0, Lcom/coremobility/app/vnotes/cu;

    const-string v1, "ACTIVATION_MESSAGE_TYPE"

    invoke-direct {v0, v1, v2, v3}, Lcom/coremobility/app/vnotes/cu;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/coremobility/app/vnotes/cu;->b:Lcom/coremobility/app/vnotes/cu;

    new-instance v0, Lcom/coremobility/app/vnotes/cu;

    const-string v1, "REGULARVOICEMAIL_MESSAGE_TYPE"

    invoke-direct {v0, v1, v3, v4}, Lcom/coremobility/app/vnotes/cu;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/coremobility/app/vnotes/cu;->c:Lcom/coremobility/app/vnotes/cu;

    new-instance v0, Lcom/coremobility/app/vnotes/cu;

    const-string v1, "TRIALEXPIRATION_MESSAGE_TYPE"

    invoke-direct {v0, v1, v4, v6}, Lcom/coremobility/app/vnotes/cu;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/coremobility/app/vnotes/cu;->d:Lcom/coremobility/app/vnotes/cu;

    new-array v0, v6, [Lcom/coremobility/app/vnotes/cu;

    sget-object v1, Lcom/coremobility/app/vnotes/cu;->a:Lcom/coremobility/app/vnotes/cu;

    aput-object v1, v0, v5

    sget-object v1, Lcom/coremobility/app/vnotes/cu;->b:Lcom/coremobility/app/vnotes/cu;

    aput-object v1, v0, v2

    sget-object v1, Lcom/coremobility/app/vnotes/cu;->c:Lcom/coremobility/app/vnotes/cu;

    aput-object v1, v0, v3

    sget-object v1, Lcom/coremobility/app/vnotes/cu;->d:Lcom/coremobility/app/vnotes/cu;

    aput-object v1, v0, v4

    sput-object v0, Lcom/coremobility/app/vnotes/cu;->f:[Lcom/coremobility/app/vnotes/cu;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/coremobility/app/vnotes/cu;->e:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/coremobility/app/vnotes/cu;
    .locals 1

    const-class v0, Lcom/coremobility/app/vnotes/cu;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/cu;

    return-object v0
.end method

.method public static values()[Lcom/coremobility/app/vnotes/cu;
    .locals 1

    sget-object v0, Lcom/coremobility/app/vnotes/cu;->f:[Lcom/coremobility/app/vnotes/cu;

    invoke-virtual {v0}, [Lcom/coremobility/app/vnotes/cu;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coremobility/app/vnotes/cu;

    return-object v0
.end method
