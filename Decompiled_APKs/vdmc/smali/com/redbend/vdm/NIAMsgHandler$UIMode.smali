.class public final enum Lcom/redbend/vdm/NIAMsgHandler$UIMode;
.super Ljava/lang/Enum;
.source "NIAMsgHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/redbend/vdm/NIAMsgHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UIMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/redbend/vdm/NIAMsgHandler$UIMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/redbend/vdm/NIAMsgHandler$UIMode;

.field public static final enum BACKGROUND:Lcom/redbend/vdm/NIAMsgHandler$UIMode;

.field public static final enum INFORMATIVE:Lcom/redbend/vdm/NIAMsgHandler$UIMode;

.field public static final enum NOT_SPECIFIED:Lcom/redbend/vdm/NIAMsgHandler$UIMode;

.field public static final enum UI:Lcom/redbend/vdm/NIAMsgHandler$UIMode;


# instance fields
.field private val:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcom/redbend/vdm/NIAMsgHandler$UIMode;

    const-string v1, "NOT_SPECIFIED"

    invoke-direct {v0, v1, v2, v2}, Lcom/redbend/vdm/NIAMsgHandler$UIMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/redbend/vdm/NIAMsgHandler$UIMode;->NOT_SPECIFIED:Lcom/redbend/vdm/NIAMsgHandler$UIMode;

    .line 18
    new-instance v0, Lcom/redbend/vdm/NIAMsgHandler$UIMode;

    const-string v1, "BACKGROUND"

    invoke-direct {v0, v1, v3, v3}, Lcom/redbend/vdm/NIAMsgHandler$UIMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/redbend/vdm/NIAMsgHandler$UIMode;->BACKGROUND:Lcom/redbend/vdm/NIAMsgHandler$UIMode;

    .line 20
    new-instance v0, Lcom/redbend/vdm/NIAMsgHandler$UIMode;

    const-string v1, "INFORMATIVE"

    invoke-direct {v0, v1, v4, v4}, Lcom/redbend/vdm/NIAMsgHandler$UIMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/redbend/vdm/NIAMsgHandler$UIMode;->INFORMATIVE:Lcom/redbend/vdm/NIAMsgHandler$UIMode;

    .line 22
    new-instance v0, Lcom/redbend/vdm/NIAMsgHandler$UIMode;

    const-string v1, "UI"

    invoke-direct {v0, v1, v5, v5}, Lcom/redbend/vdm/NIAMsgHandler$UIMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/redbend/vdm/NIAMsgHandler$UIMode;->UI:Lcom/redbend/vdm/NIAMsgHandler$UIMode;

    .line 14
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/redbend/vdm/NIAMsgHandler$UIMode;

    sget-object v1, Lcom/redbend/vdm/NIAMsgHandler$UIMode;->NOT_SPECIFIED:Lcom/redbend/vdm/NIAMsgHandler$UIMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/redbend/vdm/NIAMsgHandler$UIMode;->BACKGROUND:Lcom/redbend/vdm/NIAMsgHandler$UIMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/redbend/vdm/NIAMsgHandler$UIMode;->INFORMATIVE:Lcom/redbend/vdm/NIAMsgHandler$UIMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/redbend/vdm/NIAMsgHandler$UIMode;->UI:Lcom/redbend/vdm/NIAMsgHandler$UIMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/redbend/vdm/NIAMsgHandler$UIMode;->$VALUES:[Lcom/redbend/vdm/NIAMsgHandler$UIMode;

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
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/redbend/vdm/NIAMsgHandler$UIMode;->val:I

    return-void
.end method

.method public static fromInt(I)Lcom/redbend/vdm/NIAMsgHandler$UIMode;
    .locals 5
    .parameter "m"

    .prologue
    .line 36
    invoke-static {}, Lcom/redbend/vdm/NIAMsgHandler$UIMode;->values()[Lcom/redbend/vdm/NIAMsgHandler$UIMode;

    move-result-object v0

    .local v0, arr$:[Lcom/redbend/vdm/NIAMsgHandler$UIMode;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 37
    .local v3, mode:Lcom/redbend/vdm/NIAMsgHandler$UIMode;
    iget v4, v3, Lcom/redbend/vdm/NIAMsgHandler$UIMode;->val:I

    if-ne v4, p0, :cond_0

    .line 40
    .end local v3           #mode:Lcom/redbend/vdm/NIAMsgHandler$UIMode;
    :goto_1
    return-object v3

    .line 36
    .restart local v3       #mode:Lcom/redbend/vdm/NIAMsgHandler$UIMode;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 40
    .end local v3           #mode:Lcom/redbend/vdm/NIAMsgHandler$UIMode;
    :cond_1
    sget-object v3, Lcom/redbend/vdm/NIAMsgHandler$UIMode;->NOT_SPECIFIED:Lcom/redbend/vdm/NIAMsgHandler$UIMode;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/redbend/vdm/NIAMsgHandler$UIMode;
    .locals 1
    .parameter "name"

    .prologue
    .line 14
    const-class v0, Lcom/redbend/vdm/NIAMsgHandler$UIMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/redbend/vdm/NIAMsgHandler$UIMode;

    return-object v0
.end method

.method public static values()[Lcom/redbend/vdm/NIAMsgHandler$UIMode;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/redbend/vdm/NIAMsgHandler$UIMode;->$VALUES:[Lcom/redbend/vdm/NIAMsgHandler$UIMode;

    invoke-virtual {v0}, [Lcom/redbend/vdm/NIAMsgHandler$UIMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/redbend/vdm/NIAMsgHandler$UIMode;

    return-object v0
.end method


# virtual methods
.method public val()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/redbend/vdm/NIAMsgHandler$UIMode;->val:I

    return v0
.end method
