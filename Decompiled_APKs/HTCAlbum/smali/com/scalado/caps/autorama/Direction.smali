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

    .prologue
    .line 50
    new-instance v0, Lcom/scalado/caps/autorama/Direction;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/scalado/caps/autorama/Direction;-><init>(I)V

    sput-object v0, Lcom/scalado/caps/autorama/Direction;->UNKNOWN:Lcom/scalado/caps/autorama/Direction;

    .line 56
    new-instance v0, Lcom/scalado/caps/autorama/Direction;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/scalado/caps/autorama/Direction;-><init>(I)V

    sput-object v0, Lcom/scalado/caps/autorama/Direction;->RIGHT:Lcom/scalado/caps/autorama/Direction;

    .line 62
    new-instance v0, Lcom/scalado/caps/autorama/Direction;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/scalado/caps/autorama/Direction;-><init>(I)V

    sput-object v0, Lcom/scalado/caps/autorama/Direction;->LEFT:Lcom/scalado/caps/autorama/Direction;

    .line 67
    new-instance v0, Lcom/scalado/caps/autorama/Direction;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/scalado/caps/autorama/Direction;-><init>(I)V

    sput-object v0, Lcom/scalado/caps/autorama/Direction;->UP:Lcom/scalado/caps/autorama/Direction;

    .line 72
    new-instance v0, Lcom/scalado/caps/autorama/Direction;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/scalado/caps/autorama/Direction;-><init>(I)V

    sput-object v0, Lcom/scalado/caps/autorama/Direction;->DOWN:Lcom/scalado/caps/autorama/Direction;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/scalado/caps/autorama/Direction;->value:I

    .line 22
    return-void
.end method

.method static translateIntToDirection(I)Lcom/scalado/caps/autorama/Direction;
    .locals 1
    .parameter "value"

    .prologue
    .line 90
    packed-switch p0, :pswitch_data_0

    .line 100
    sget-object v0, Lcom/scalado/caps/autorama/Direction;->UNKNOWN:Lcom/scalado/caps/autorama/Direction;

    :goto_0
    return-object v0

    .line 92
    :pswitch_0
    sget-object v0, Lcom/scalado/caps/autorama/Direction;->RIGHT:Lcom/scalado/caps/autorama/Direction;

    goto :goto_0

    .line 94
    :pswitch_1
    sget-object v0, Lcom/scalado/caps/autorama/Direction;->LEFT:Lcom/scalado/caps/autorama/Direction;

    goto :goto_0

    .line 96
    :pswitch_2
    sget-object v0, Lcom/scalado/caps/autorama/Direction;->UP:Lcom/scalado/caps/autorama/Direction;

    goto :goto_0

    .line 98
    :pswitch_3
    sget-object v0, Lcom/scalado/caps/autorama/Direction;->DOWN:Lcom/scalado/caps/autorama/Direction;

    goto :goto_0

    .line 90
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

    .prologue
    .line 140
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

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/scalado/caps/autorama/Direction;->clone()Lcom/scalado/caps/autorama/Direction;

    move-result-object v0

    return-object v0
.end method

.method getValue()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/scalado/caps/autorama/Direction;->value:I

    return v0
.end method

.method isHorizontal()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 121
    iget v2, p0, Lcom/scalado/caps/autorama/Direction;->value:I

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 132
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    .line 127
    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 129
    goto :goto_0

    .line 121
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

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 105
    iget v2, p0, Lcom/scalado/caps/autorama/Direction;->value:I

    packed-switch v2, :pswitch_data_0

    .line 116
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    .line 111
    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 113
    goto :goto_0

    .line 105
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

    .prologue
    .line 26
    const-string v0, ""

    .line 27
    .local v0, string:Ljava/lang/String;
    iget v1, p0, Lcom/scalado/caps/autorama/Direction;->value:I

    packed-switch v1, :pswitch_data_0

    .line 44
    :goto_0
    return-object v0

    .line 29
    :pswitch_0
    const-string v0, "Unknown"

    .line 30
    goto :goto_0

    .line 32
    :pswitch_1
    const-string v0, "Right"

    .line 33
    goto :goto_0

    .line 35
    :pswitch_2
    const-string v0, "Left"

    .line 36
    goto :goto_0

    .line 38
    :pswitch_3
    const-string v0, "Up"

    .line 39
    goto :goto_0

    .line 41
    :pswitch_4
    const-string v0, "Down"

    goto :goto_0

    .line 27
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
