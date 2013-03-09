.class public final Lcom/scalado/caps/autorama/Direction;
.super Ljava/lang/Object;
.source "Direction.java"


# static fields
.field public static final DOWN:Lcom/scalado/caps/autorama/Direction; = null

.field static final DOWN_VALUE:I = 0x4

.field public static final LEFT:Lcom/scalado/caps/autorama/Direction; = null

.field static final LEFT_VALUE:I = 0x2

.field public static final RIGHT:Lcom/scalado/caps/autorama/Direction; = null

.field static final RIGHT_VALUE:I = 0x1

.field public static final UNKNOWN:Lcom/scalado/caps/autorama/Direction; = null

.field static final UNKNOWN_VALUE:I = 0x0

.field public static final UP:Lcom/scalado/caps/autorama/Direction; = null

.field static final UP_VALUE:I = 0x3


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/scalado/caps/autorama/Direction;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/scalado/caps/autorama/Direction;-><init>(I)V

    sput-object v0, Lcom/scalado/caps/autorama/Direction;->UNKNOWN:Lcom/scalado/caps/autorama/Direction;

    new-instance v0, Lcom/scalado/caps/autorama/Direction;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/scalado/caps/autorama/Direction;-><init>(I)V

    sput-object v0, Lcom/scalado/caps/autorama/Direction;->RIGHT:Lcom/scalado/caps/autorama/Direction;

    new-instance v0, Lcom/scalado/caps/autorama/Direction;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/scalado/caps/autorama/Direction;-><init>(I)V

    sput-object v0, Lcom/scalado/caps/autorama/Direction;->LEFT:Lcom/scalado/caps/autorama/Direction;

    new-instance v0, Lcom/scalado/caps/autorama/Direction;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/scalado/caps/autorama/Direction;-><init>(I)V

    sput-object v0, Lcom/scalado/caps/autorama/Direction;->UP:Lcom/scalado/caps/autorama/Direction;

    new-instance v0, Lcom/scalado/caps/autorama/Direction;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/scalado/caps/autorama/Direction;-><init>(I)V

    sput-object v0, Lcom/scalado/caps/autorama/Direction;->DOWN:Lcom/scalado/caps/autorama/Direction;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/scalado/caps/autorama/Direction;->value:I

    return-void
.end method

.method static translateIntToDirection(I)Lcom/scalado/caps/autorama/Direction;
    .locals 1

    packed-switch p0, :pswitch_data_0

    sget-object v0, Lcom/scalado/caps/autorama/Direction;->UNKNOWN:Lcom/scalado/caps/autorama/Direction;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/scalado/caps/autorama/Direction;->RIGHT:Lcom/scalado/caps/autorama/Direction;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/scalado/caps/autorama/Direction;->LEFT:Lcom/scalado/caps/autorama/Direction;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/scalado/caps/autorama/Direction;->UP:Lcom/scalado/caps/autorama/Direction;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/scalado/caps/autorama/Direction;->DOWN:Lcom/scalado/caps/autorama/Direction;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public clone()Lcom/scalado/caps/autorama/Direction;
    .locals 1

    invoke-virtual {p0}, Lcom/scalado/caps/autorama/Direction;->getValue()I

    move-result v0

    invoke-static {v0}, Lcom/scalado/caps/autorama/Direction;->translateIntToDirection(I)Lcom/scalado/caps/autorama/Direction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/scalado/caps/autorama/Direction;->clone()Lcom/scalado/caps/autorama/Direction;

    move-result-object v0

    return-object v0
.end method

.method getValue()I
    .locals 1

    iget v0, p0, Lcom/scalado/caps/autorama/Direction;->value:I

    return v0
.end method

.method isHorizontal()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/scalado/caps/autorama/Direction;->value:I

    packed-switch v2, :pswitch_data_0

    move v0, v1

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    goto :goto_0

    :pswitch_2
    move v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method isVertical()Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget v2, p0, Lcom/scalado/caps/autorama/Direction;->value:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    goto :goto_0

    :pswitch_2
    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, ""

    iget v1, p0, Lcom/scalado/caps/autorama/Direction;->value:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "Unknown"

    goto :goto_0

    :pswitch_1
    const-string v0, "Right"

    goto :goto_0

    :pswitch_2
    const-string v0, "Left"

    goto :goto_0

    :pswitch_3
    const-string v0, "Up"

    goto :goto_0

    :pswitch_4
    const-string v0, "Down"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
