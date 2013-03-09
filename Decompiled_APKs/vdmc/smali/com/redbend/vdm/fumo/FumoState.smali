.class public final enum Lcom/redbend/vdm/fumo/FumoState;
.super Ljava/lang/Enum;
.source "FumoState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/redbend/vdm/fumo/FumoState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/redbend/vdm/fumo/FumoState;

.field public static final enum DOWNLOAD_COMPLETE:Lcom/redbend/vdm/fumo/FumoState;

.field public static final enum DOWNLOAD_FAILED:Lcom/redbend/vdm/fumo/FumoState;

.field public static final enum DOWNLOAD_PROGRESSING:Lcom/redbend/vdm/fumo/FumoState;

.field public static final enum IDLE:Lcom/redbend/vdm/fumo/FumoState;

.field public static final enum UPDATE_FAILED_HAVE_DATA:Lcom/redbend/vdm/fumo/FumoState;

.field public static final enum UPDATE_FAILED_NO_DATA:Lcom/redbend/vdm/fumo/FumoState;

.field public static final enum UPDATE_PROGRESSING:Lcom/redbend/vdm/fumo/FumoState;

.field public static final enum UPDATE_READY_TO_UPDATE:Lcom/redbend/vdm/fumo/FumoState;

.field public static final enum UPDATE_SUCCESSFUL_HAVE_DATA:Lcom/redbend/vdm/fumo/FumoState;

.field public static final enum UPDATE_SUCCESSFUL_NO_DATA:Lcom/redbend/vdm/fumo/FumoState;


# instance fields
.field private val:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 13
    new-instance v0, Lcom/redbend/vdm/fumo/FumoState;

    const-string v1, "IDLE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v4, v2}, Lcom/redbend/vdm/fumo/FumoState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/redbend/vdm/fumo/FumoState;->IDLE:Lcom/redbend/vdm/fumo/FumoState;

    .line 15
    new-instance v0, Lcom/redbend/vdm/fumo/FumoState;

    const-string v1, "DOWNLOAD_FAILED"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v5, v2}, Lcom/redbend/vdm/fumo/FumoState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/redbend/vdm/fumo/FumoState;->DOWNLOAD_FAILED:Lcom/redbend/vdm/fumo/FumoState;

    .line 17
    new-instance v0, Lcom/redbend/vdm/fumo/FumoState;

    const-string v1, "DOWNLOAD_PROGRESSING"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v6, v2}, Lcom/redbend/vdm/fumo/FumoState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/redbend/vdm/fumo/FumoState;->DOWNLOAD_PROGRESSING:Lcom/redbend/vdm/fumo/FumoState;

    .line 19
    new-instance v0, Lcom/redbend/vdm/fumo/FumoState;

    const-string v1, "DOWNLOAD_COMPLETE"

    const/16 v2, 0x28

    invoke-direct {v0, v1, v7, v2}, Lcom/redbend/vdm/fumo/FumoState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/redbend/vdm/fumo/FumoState;->DOWNLOAD_COMPLETE:Lcom/redbend/vdm/fumo/FumoState;

    .line 21
    new-instance v0, Lcom/redbend/vdm/fumo/FumoState;

    const-string v1, "UPDATE_READY_TO_UPDATE"

    const/16 v2, 0x32

    invoke-direct {v0, v1, v8, v2}, Lcom/redbend/vdm/fumo/FumoState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/redbend/vdm/fumo/FumoState;->UPDATE_READY_TO_UPDATE:Lcom/redbend/vdm/fumo/FumoState;

    .line 23
    new-instance v0, Lcom/redbend/vdm/fumo/FumoState;

    const-string v1, "UPDATE_PROGRESSING"

    const/4 v2, 0x5

    const/16 v3, 0x3c

    invoke-direct {v0, v1, v2, v3}, Lcom/redbend/vdm/fumo/FumoState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/redbend/vdm/fumo/FumoState;->UPDATE_PROGRESSING:Lcom/redbend/vdm/fumo/FumoState;

    .line 25
    new-instance v0, Lcom/redbend/vdm/fumo/FumoState;

    const-string v1, "UPDATE_FAILED_HAVE_DATA"

    const/4 v2, 0x6

    const/16 v3, 0x46

    invoke-direct {v0, v1, v2, v3}, Lcom/redbend/vdm/fumo/FumoState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/redbend/vdm/fumo/FumoState;->UPDATE_FAILED_HAVE_DATA:Lcom/redbend/vdm/fumo/FumoState;

    .line 27
    new-instance v0, Lcom/redbend/vdm/fumo/FumoState;

    const-string v1, "UPDATE_FAILED_NO_DATA"

    const/4 v2, 0x7

    const/16 v3, 0x50

    invoke-direct {v0, v1, v2, v3}, Lcom/redbend/vdm/fumo/FumoState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/redbend/vdm/fumo/FumoState;->UPDATE_FAILED_NO_DATA:Lcom/redbend/vdm/fumo/FumoState;

    .line 29
    new-instance v0, Lcom/redbend/vdm/fumo/FumoState;

    const-string v1, "UPDATE_SUCCESSFUL_HAVE_DATA"

    const/16 v2, 0x8

    const/16 v3, 0x5a

    invoke-direct {v0, v1, v2, v3}, Lcom/redbend/vdm/fumo/FumoState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/redbend/vdm/fumo/FumoState;->UPDATE_SUCCESSFUL_HAVE_DATA:Lcom/redbend/vdm/fumo/FumoState;

    .line 31
    new-instance v0, Lcom/redbend/vdm/fumo/FumoState;

    const-string v1, "UPDATE_SUCCESSFUL_NO_DATA"

    const/16 v2, 0x9

    const/16 v3, 0x64

    invoke-direct {v0, v1, v2, v3}, Lcom/redbend/vdm/fumo/FumoState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/redbend/vdm/fumo/FumoState;->UPDATE_SUCCESSFUL_NO_DATA:Lcom/redbend/vdm/fumo/FumoState;

    .line 11
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/redbend/vdm/fumo/FumoState;

    sget-object v1, Lcom/redbend/vdm/fumo/FumoState;->IDLE:Lcom/redbend/vdm/fumo/FumoState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/redbend/vdm/fumo/FumoState;->DOWNLOAD_FAILED:Lcom/redbend/vdm/fumo/FumoState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/redbend/vdm/fumo/FumoState;->DOWNLOAD_PROGRESSING:Lcom/redbend/vdm/fumo/FumoState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/redbend/vdm/fumo/FumoState;->DOWNLOAD_COMPLETE:Lcom/redbend/vdm/fumo/FumoState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/redbend/vdm/fumo/FumoState;->UPDATE_READY_TO_UPDATE:Lcom/redbend/vdm/fumo/FumoState;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/redbend/vdm/fumo/FumoState;->UPDATE_PROGRESSING:Lcom/redbend/vdm/fumo/FumoState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/redbend/vdm/fumo/FumoState;->UPDATE_FAILED_HAVE_DATA:Lcom/redbend/vdm/fumo/FumoState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/redbend/vdm/fumo/FumoState;->UPDATE_FAILED_NO_DATA:Lcom/redbend/vdm/fumo/FumoState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/redbend/vdm/fumo/FumoState;->UPDATE_SUCCESSFUL_HAVE_DATA:Lcom/redbend/vdm/fumo/FumoState;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/redbend/vdm/fumo/FumoState;->UPDATE_SUCCESSFUL_NO_DATA:Lcom/redbend/vdm/fumo/FumoState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/redbend/vdm/fumo/FumoState;->$VALUES:[Lcom/redbend/vdm/fumo/FumoState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "v"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/redbend/vdm/fumo/FumoState;->val:I

    return-void
.end method

.method public static fromInt(I)Lcom/redbend/vdm/fumo/FumoState;
    .locals 5
    .parameter "i"

    .prologue
    .line 48
    invoke-static {}, Lcom/redbend/vdm/fumo/FumoState;->values()[Lcom/redbend/vdm/fumo/FumoState;

    move-result-object v0

    .local v0, arr$:[Lcom/redbend/vdm/fumo/FumoState;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 49
    .local v3, state:Lcom/redbend/vdm/fumo/FumoState;
    iget v4, v3, Lcom/redbend/vdm/fumo/FumoState;->val:I

    if-ne v4, p0, :cond_0

    .line 52
    .end local v3           #state:Lcom/redbend/vdm/fumo/FumoState;
    :goto_1
    return-object v3

    .line 48
    .restart local v3       #state:Lcom/redbend/vdm/fumo/FumoState;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 52
    .end local v3           #state:Lcom/redbend/vdm/fumo/FumoState;
    :cond_1
    sget-object v3, Lcom/redbend/vdm/fumo/FumoState;->IDLE:Lcom/redbend/vdm/fumo/FumoState;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/redbend/vdm/fumo/FumoState;
    .locals 1
    .parameter "name"

    .prologue
    .line 11
    const-class v0, Lcom/redbend/vdm/fumo/FumoState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/redbend/vdm/fumo/FumoState;

    return-object v0
.end method

.method public static values()[Lcom/redbend/vdm/fumo/FumoState;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/redbend/vdm/fumo/FumoState;->$VALUES:[Lcom/redbend/vdm/fumo/FumoState;

    invoke-virtual {v0}, [Lcom/redbend/vdm/fumo/FumoState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/redbend/vdm/fumo/FumoState;

    return-object v0
.end method


# virtual methods
.method public val()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/redbend/vdm/fumo/FumoState;->val:I

    return v0
.end method
