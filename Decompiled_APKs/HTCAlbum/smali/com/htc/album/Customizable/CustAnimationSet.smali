.class public Lcom/htc/album/Customizable/CustAnimationSet;
.super Ljava/lang/Object;
.source "CustAnimationSet.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAnimationIn()[I
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0xat 0x1t
        0x16t 0x0t 0x4t 0x7ft
        0x17t 0x0t 0x4t 0x7ft
        0xft 0x0t 0x4t 0x7ft
        0x1t 0x0t 0x4t 0x7ft
        0x12t 0x0t 0x4t 0x7ft
        0x1bt 0x0t 0x4t 0x7ft
    .end array-data
.end method

.method public static getAnimationOut()[I
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0xat 0x1t
        0x18t 0x0t 0x4t 0x7ft
        0x1at 0x0t 0x4t 0x7ft
        0x10t 0x0t 0x4t 0x7ft
        0x2t 0x0t 0x4t 0x7ft
        0x14t 0x0t 0x4t 0x7ft
        0x1ct 0x0t 0x4t 0x7ft
    .end array-data
.end method
