.class public interface abstract Lcom/google/android/talk/Divot;
.super Ljava/lang/Object;
.source "Divot.java"


# static fields
.field public static final sPositionChoices:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "left_upper"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "left_middle"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "left_lower"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "right_upper"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "right_middle"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "right_lower"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "top_left"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "top_middle"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "top_right"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "bottom_left"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "bottom_middle"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "bottom_right"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/talk/Divot;->sPositionChoices:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract asImageView()Landroid/widget/ImageView;
.end method

.method public abstract assignContactFromEmail(Ljava/lang/String;)V
.end method

.method public abstract getCloseOffset()F
.end method

.method public abstract getFarOffset()F
.end method

.method public abstract getPosition()I
.end method
