.class public final enum Lcom/htc/widget/HtcTimeView$TimeType;
.super Ljava/lang/Enum;
.source "HtcTimeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcTimeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TimeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/widget/HtcTimeView$TimeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/widget/HtcTimeView$TimeType;

.field public static final enum alarm12H:Lcom/htc/widget/HtcTimeView$TimeType;

.field public static final enum alarm24H:Lcom/htc/widget/HtcTimeView$TimeType;

.field public static final enum date:Lcom/htc/widget/HtcTimeView$TimeType;

.field public static final enum timer:Lcom/htc/widget/HtcTimeView$TimeType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lcom/htc/widget/HtcTimeView$TimeType;

    const-string v1, "alarm24H"

    invoke-direct {v0, v1, v2}, Lcom/htc/widget/HtcTimeView$TimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/widget/HtcTimeView$TimeType;->alarm24H:Lcom/htc/widget/HtcTimeView$TimeType;

    new-instance v0, Lcom/htc/widget/HtcTimeView$TimeType;

    const-string v1, "alarm12H"

    invoke-direct {v0, v1, v3}, Lcom/htc/widget/HtcTimeView$TimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/widget/HtcTimeView$TimeType;->alarm12H:Lcom/htc/widget/HtcTimeView$TimeType;

    new-instance v0, Lcom/htc/widget/HtcTimeView$TimeType;

    const-string v1, "date"

    invoke-direct {v0, v1, v4}, Lcom/htc/widget/HtcTimeView$TimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/widget/HtcTimeView$TimeType;->date:Lcom/htc/widget/HtcTimeView$TimeType;

    new-instance v0, Lcom/htc/widget/HtcTimeView$TimeType;

    const-string v1, "timer"

    invoke-direct {v0, v1, v5}, Lcom/htc/widget/HtcTimeView$TimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/widget/HtcTimeView$TimeType;->timer:Lcom/htc/widget/HtcTimeView$TimeType;

    .line 23
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/htc/widget/HtcTimeView$TimeType;

    sget-object v1, Lcom/htc/widget/HtcTimeView$TimeType;->alarm24H:Lcom/htc/widget/HtcTimeView$TimeType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/widget/HtcTimeView$TimeType;->alarm12H:Lcom/htc/widget/HtcTimeView$TimeType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/widget/HtcTimeView$TimeType;->date:Lcom/htc/widget/HtcTimeView$TimeType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/widget/HtcTimeView$TimeType;->timer:Lcom/htc/widget/HtcTimeView$TimeType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/widget/HtcTimeView$TimeType;->$VALUES:[Lcom/htc/widget/HtcTimeView$TimeType;

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
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/widget/HtcTimeView$TimeType;
    .locals 1
    .parameter "name"

    .prologue
    .line 23
    const-class v0, Lcom/htc/widget/HtcTimeView$TimeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcTimeView$TimeType;

    return-object v0
.end method

.method public static values()[Lcom/htc/widget/HtcTimeView$TimeType;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/htc/widget/HtcTimeView$TimeType;->$VALUES:[Lcom/htc/widget/HtcTimeView$TimeType;

    invoke-virtual {v0}, [Lcom/htc/widget/HtcTimeView$TimeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/widget/HtcTimeView$TimeType;

    return-object v0
.end method
