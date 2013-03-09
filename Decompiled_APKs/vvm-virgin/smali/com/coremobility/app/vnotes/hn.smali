.class public final enum Lcom/coremobility/app/vnotes/hn;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/coremobility/app/vnotes/hn;

.field public static final enum b:Lcom/coremobility/app/vnotes/hn;

.field public static final enum c:Lcom/coremobility/app/vnotes/hn;

.field private static final synthetic e:[Lcom/coremobility/app/vnotes/hn;


# instance fields
.field d:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/coremobility/app/vnotes/hn;

    const-string v1, "PLAYBACKVIEW_LEFT"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v3, v2}, Lcom/coremobility/app/vnotes/hn;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/coremobility/app/vnotes/hn;->a:Lcom/coremobility/app/vnotes/hn;

    new-instance v0, Lcom/coremobility/app/vnotes/hn;

    const-string v1, "PLAYBACKVIEW_CURRENT"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v4, v2}, Lcom/coremobility/app/vnotes/hn;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/coremobility/app/vnotes/hn;->b:Lcom/coremobility/app/vnotes/hn;

    new-instance v0, Lcom/coremobility/app/vnotes/hn;

    const-string v1, "PLAYBACKVIEW_RIGHT"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v5, v2}, Lcom/coremobility/app/vnotes/hn;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/coremobility/app/vnotes/hn;->c:Lcom/coremobility/app/vnotes/hn;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/coremobility/app/vnotes/hn;

    sget-object v1, Lcom/coremobility/app/vnotes/hn;->a:Lcom/coremobility/app/vnotes/hn;

    aput-object v1, v0, v3

    sget-object v1, Lcom/coremobility/app/vnotes/hn;->b:Lcom/coremobility/app/vnotes/hn;

    aput-object v1, v0, v4

    sget-object v1, Lcom/coremobility/app/vnotes/hn;->c:Lcom/coremobility/app/vnotes/hn;

    aput-object v1, v0, v5

    sput-object v0, Lcom/coremobility/app/vnotes/hn;->e:[Lcom/coremobility/app/vnotes/hn;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/coremobility/app/vnotes/hn;->d:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/coremobility/app/vnotes/hn;
    .locals 1

    const-class v0, Lcom/coremobility/app/vnotes/hn;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/hn;

    return-object v0
.end method

.method public static values()[Lcom/coremobility/app/vnotes/hn;
    .locals 1

    sget-object v0, Lcom/coremobility/app/vnotes/hn;->e:[Lcom/coremobility/app/vnotes/hn;

    invoke-virtual {v0}, [Lcom/coremobility/app/vnotes/hn;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coremobility/app/vnotes/hn;

    return-object v0
.end method
