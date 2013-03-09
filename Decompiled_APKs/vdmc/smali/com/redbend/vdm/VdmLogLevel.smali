.class public final enum Lcom/redbend/vdm/VdmLogLevel;
.super Ljava/lang/Enum;
.source "VdmLogLevel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/redbend/vdm/VdmLogLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/redbend/vdm/VdmLogLevel;

.field public static final enum DEBUG:Lcom/redbend/vdm/VdmLogLevel;

.field public static final enum ERROR:Lcom/redbend/vdm/VdmLogLevel;

.field public static final enum INFO:Lcom/redbend/vdm/VdmLogLevel;

.field public static final enum NOTICE:Lcom/redbend/vdm/VdmLogLevel;

.field public static final enum WARNING:Lcom/redbend/vdm/VdmLogLevel;


# instance fields
.field private _val:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 12
    new-instance v0, Lcom/redbend/vdm/VdmLogLevel;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v6, v3}, Lcom/redbend/vdm/VdmLogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/redbend/vdm/VdmLogLevel;->ERROR:Lcom/redbend/vdm/VdmLogLevel;

    .line 17
    new-instance v0, Lcom/redbend/vdm/VdmLogLevel;

    const-string v1, "WARNING"

    invoke-direct {v0, v1, v3, v4}, Lcom/redbend/vdm/VdmLogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/redbend/vdm/VdmLogLevel;->WARNING:Lcom/redbend/vdm/VdmLogLevel;

    .line 20
    new-instance v0, Lcom/redbend/vdm/VdmLogLevel;

    const-string v1, "NOTICE"

    invoke-direct {v0, v1, v7, v5}, Lcom/redbend/vdm/VdmLogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/redbend/vdm/VdmLogLevel;->NOTICE:Lcom/redbend/vdm/VdmLogLevel;

    .line 23
    new-instance v0, Lcom/redbend/vdm/VdmLogLevel;

    const-string v1, "INFO"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v4, v2}, Lcom/redbend/vdm/VdmLogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/redbend/vdm/VdmLogLevel;->INFO:Lcom/redbend/vdm/VdmLogLevel;

    .line 26
    new-instance v0, Lcom/redbend/vdm/VdmLogLevel;

    const-string v1, "DEBUG"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v5, v2}, Lcom/redbend/vdm/VdmLogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/redbend/vdm/VdmLogLevel;->DEBUG:Lcom/redbend/vdm/VdmLogLevel;

    .line 10
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/redbend/vdm/VdmLogLevel;

    sget-object v1, Lcom/redbend/vdm/VdmLogLevel;->ERROR:Lcom/redbend/vdm/VdmLogLevel;

    aput-object v1, v0, v6

    sget-object v1, Lcom/redbend/vdm/VdmLogLevel;->WARNING:Lcom/redbend/vdm/VdmLogLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/redbend/vdm/VdmLogLevel;->NOTICE:Lcom/redbend/vdm/VdmLogLevel;

    aput-object v1, v0, v7

    sget-object v1, Lcom/redbend/vdm/VdmLogLevel;->INFO:Lcom/redbend/vdm/VdmLogLevel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/redbend/vdm/VdmLogLevel;->DEBUG:Lcom/redbend/vdm/VdmLogLevel;

    aput-object v1, v0, v5

    sput-object v0, Lcom/redbend/vdm/VdmLogLevel;->$VALUES:[Lcom/redbend/vdm/VdmLogLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "val"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    iput p3, p0, Lcom/redbend/vdm/VdmLogLevel;->_val:I

    .line 33
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/redbend/vdm/VdmLogLevel;
    .locals 1
    .parameter "name"

    .prologue
    .line 10
    const-class v0, Lcom/redbend/vdm/VdmLogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/redbend/vdm/VdmLogLevel;

    return-object v0
.end method

.method public static values()[Lcom/redbend/vdm/VdmLogLevel;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/redbend/vdm/VdmLogLevel;->$VALUES:[Lcom/redbend/vdm/VdmLogLevel;

    invoke-virtual {v0}, [Lcom/redbend/vdm/VdmLogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/redbend/vdm/VdmLogLevel;

    return-object v0
.end method


# virtual methods
.method public val()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/redbend/vdm/VdmLogLevel;->_val:I

    return v0
.end method
