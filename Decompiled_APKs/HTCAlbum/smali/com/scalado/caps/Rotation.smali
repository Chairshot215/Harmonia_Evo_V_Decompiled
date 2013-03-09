.class public final Lcom/scalado/caps/Rotation;
.super Ljava/lang/Object;
.source "Rotation.java"


# static fields
.field public static final TO_0:Lcom/scalado/caps/Rotation;

.field public static final TO_180:Lcom/scalado/caps/Rotation;

.field public static final TO_270:Lcom/scalado/caps/Rotation;

.field public static final TO_90:Lcom/scalado/caps/Rotation;


# instance fields
.field final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    new-instance v0, Lcom/scalado/caps/Rotation;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/scalado/caps/Rotation;-><init>(I)V

    sput-object v0, Lcom/scalado/caps/Rotation;->TO_0:Lcom/scalado/caps/Rotation;

    .line 58
    new-instance v0, Lcom/scalado/caps/Rotation;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/scalado/caps/Rotation;-><init>(I)V

    sput-object v0, Lcom/scalado/caps/Rotation;->TO_90:Lcom/scalado/caps/Rotation;

    .line 63
    new-instance v0, Lcom/scalado/caps/Rotation;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/scalado/caps/Rotation;-><init>(I)V

    sput-object v0, Lcom/scalado/caps/Rotation;->TO_180:Lcom/scalado/caps/Rotation;

    .line 68
    new-instance v0, Lcom/scalado/caps/Rotation;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/scalado/caps/Rotation;-><init>(I)V

    sput-object v0, Lcom/scalado/caps/Rotation;->TO_270:Lcom/scalado/caps/Rotation;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/scalado/caps/Rotation;->value:I

    .line 12
    return-void
.end method

.method public static getRotationFromValue(I)Lcom/scalado/caps/Rotation;
    .locals 3
    .parameter "value"

    .prologue
    .line 35
    packed-switch p0, :pswitch_data_0

    .line 45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not match any rotation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :pswitch_0
    sget-object v0, Lcom/scalado/caps/Rotation;->TO_270:Lcom/scalado/caps/Rotation;

    .line 43
    :goto_0
    return-object v0

    .line 39
    :pswitch_1
    sget-object v0, Lcom/scalado/caps/Rotation;->TO_90:Lcom/scalado/caps/Rotation;

    goto :goto_0

    .line 41
    :pswitch_2
    sget-object v0, Lcom/scalado/caps/Rotation;->TO_180:Lcom/scalado/caps/Rotation;

    goto :goto_0

    .line 43
    :pswitch_3
    sget-object v0, Lcom/scalado/caps/Rotation;->TO_0:Lcom/scalado/caps/Rotation;

    goto :goto_0

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/scalado/caps/Rotation;->value:I

    return v0
.end method
