.class public final enum Lcom/jme3/texture/Image$Format;
.super Ljava/lang/Enum;
.source "Image.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/texture/Image;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Format"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/jme3/texture/Image$Format;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/texture/Image$Format;

.field public static final enum ABGR8:Lcom/jme3/texture/Image$Format;

.field public static final enum ARGB4444:Lcom/jme3/texture/Image$Format;

.field public static final enum Alpha16:Lcom/jme3/texture/Image$Format;

.field public static final enum Alpha8:Lcom/jme3/texture/Image$Format;

.field public static final enum BGR8:Lcom/jme3/texture/Image$Format;

.field public static final enum DXT1:Lcom/jme3/texture/Image$Format;

.field public static final enum DXT1A:Lcom/jme3/texture/Image$Format;

.field public static final enum DXT3:Lcom/jme3/texture/Image$Format;

.field public static final enum DXT5:Lcom/jme3/texture/Image$Format;

.field public static final enum Depth:Lcom/jme3/texture/Image$Format;

.field public static final enum Depth16:Lcom/jme3/texture/Image$Format;

.field public static final enum Depth24:Lcom/jme3/texture/Image$Format;

.field public static final enum Depth32:Lcom/jme3/texture/Image$Format;

.field public static final enum Depth32F:Lcom/jme3/texture/Image$Format;

.field public static final enum Intensity16:Lcom/jme3/texture/Image$Format;

.field public static final enum Intensity8:Lcom/jme3/texture/Image$Format;

.field public static final enum LATC:Lcom/jme3/texture/Image$Format;

.field public static final enum LTC:Lcom/jme3/texture/Image$Format;

.field public static final enum Luminance16:Lcom/jme3/texture/Image$Format;

.field public static final enum Luminance16Alpha16:Lcom/jme3/texture/Image$Format;

.field public static final enum Luminance16F:Lcom/jme3/texture/Image$Format;

.field public static final enum Luminance16FAlpha16F:Lcom/jme3/texture/Image$Format;

.field public static final enum Luminance32F:Lcom/jme3/texture/Image$Format;

.field public static final enum Luminance8:Lcom/jme3/texture/Image$Format;

.field public static final enum Luminance8Alpha8:Lcom/jme3/texture/Image$Format;

.field public static final enum RGB10:Lcom/jme3/texture/Image$Format;

.field public static final enum RGB111110F:Lcom/jme3/texture/Image$Format;

.field public static final enum RGB16:Lcom/jme3/texture/Image$Format;

.field public static final enum RGB16F:Lcom/jme3/texture/Image$Format;

.field public static final enum RGB16F_to_RGB111110F:Lcom/jme3/texture/Image$Format;

.field public static final enum RGB16F_to_RGB9E5:Lcom/jme3/texture/Image$Format;

.field public static final enum RGB32F:Lcom/jme3/texture/Image$Format;

.field public static final enum RGB565:Lcom/jme3/texture/Image$Format;

.field public static final enum RGB5A1:Lcom/jme3/texture/Image$Format;

.field public static final enum RGB8:Lcom/jme3/texture/Image$Format;

.field public static final enum RGB9E5:Lcom/jme3/texture/Image$Format;

.field public static final enum RGBA16:Lcom/jme3/texture/Image$Format;

.field public static final enum RGBA16F:Lcom/jme3/texture/Image$Format;

.field public static final enum RGBA32F:Lcom/jme3/texture/Image$Format;

.field public static final enum RGBA8:Lcom/jme3/texture/Image$Format;


# instance fields
.field private bpp:I

.field private isCompressed:Z

.field private isDepth:Z

.field private isFloatingPoint:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 60
    new-instance v0, Lcom/jme3/texture/Image$Format;

    const-string v1, "Alpha8"

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/jme3/texture/Image$Format;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/jme3/texture/Image$Format;->Alpha8:Lcom/jme3/texture/Image$Format;

    .line 65
    new-instance v0, Lcom/jme3/texture/Image$Format;

    const-string v1, "Alpha16"

    const/4 v2, 0x1

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/jme3/texture/Image$Format;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/jme3/texture/Image$Format;->Alpha16:Lcom/jme3/texture/Image$Format;

    .line 70
    new-instance v0, Lcom/jme3/texture/Image$Format;

    const-string v1, "Luminance8"

    const/4 v2, 0x2

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/jme3/texture/Image$Format;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/jme3/texture/Image$Format;->Luminance8:Lcom/jme3/texture/Image$Format;

    .line 75
    new-instance v0, Lcom/jme3/texture/Image$Format;

    const-string v1, "Luminance16"

    const/4 v2, 0x3

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/jme3/texture/Image$Format;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/jme3/texture/Image$Format;->Luminance16:Lcom/jme3/texture/Image$Format;

    .line 80
    new-instance v0, Lcom/jme3/texture/Image$Format;

    const-string v1, "Luminance16F"

    const/4 v2, 0x4

    const/16 v3, 0x10

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/jme3/texture/Image$Format;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/jme3/texture/Image$Format;->Luminance16F:Lcom/jme3/texture/Image$Format;

    .line 85
    new-instance v0, Lcom/jme3/texture/Image$Format;

    const-string v1, "Luminance32F"

    const/4 v2, 0x5

    const/16 v3, 0x20

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/jme3/texture/Image$Format;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/jme3/texture/Image$Format;->Luminance32F:Lcom/jme3/texture/Image$Format;

    .line 90
    new-instance v0, Lcom/jme3/texture/Image$Format;

    const-string v1, "Luminance8Alpha8"

    const/4 v2, 0x6

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/jme3/texture/Image$Format;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/jme3/texture/Image$Format;->Luminance8Alpha8:Lcom/jme3/texture/Image$Format;

    .line 95
    new-instance v0, Lcom/jme3/texture/Image$Format;

    const-string v1, "Luminance16Alpha16"

    const/4 v2, 0x7

    const/16 v3, 0x20

    invoke-direct {v0, v1, v2, v3}, Lcom/jme3/texture/Image$Format;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/jme3/texture/Image$Format;->Luminance16Alpha16:Lcom/jme3/texture/Image$Format;

    .line 100
    new-instance v0, Lcom/jme3/texture/Image$Format;

    const-string v1, "Luminance16FAlpha16F"

    const/16 v2, 0x8

    const/16 v3, 0x20

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/jme3/texture/Image$Format;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/jme3/texture/Image$Format;->Luminance16FAlpha16F:Lcom/jme3/texture/Image$Format;

    .line 102
    new-instance v0, Lcom/jme3/texture/Image$Format;

    const-string v1, "Intensity8"

    const/16 v2, 0x9

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/jme3/texture/Image$Format;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/jme3/texture/Image$Format;->Intensity8:Lcom/jme3/texture/Image$Format;

    .line 103
    new-instance v0, Lcom/jme3/texture/Image$Format;

    const-string v1, "Intensity16"

    const/16 v2, 0xa

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/jme3/texture/Image$Format;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/jme3/texture/Image$Format;->Intensity16:Lcom/jme3/texture/Image$Format;

    .line 108
    new-instance v0, Lcom/jme3/texture/Image$Format;

    const-string v1, "BGR8"

    const/16 v2, 0xb

    const/16 v3, 0x18

    invoke-direct {v0, v1, v2, v3}, Lcom/jme3/texture/Image$Format;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/jme3/texture/Image$Format;->BGR8:Lcom/jme3/texture/Image$Format;

    .line 113
    new-instance v0, Lcom/jme3/texture/Image$Format;

    const-string v1, "RGB8"

    const/16 v2, 0xc

    const/16 v3, 0x18

    invoke-direct {v0, v1, v2, v3}, Lcom/jme3/texture/Image$Format;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/jme3/texture/Image$Format;->RGB8:Lcom/jme3/texture/Image$Format;

    .line 118
    new-instance v0, Lcom/jme3/texture/Image$Format;

    const-string v1, "RGB10"

    const/16 v2, 0xd

    const/16 v3, 0x1e

    invoke-direct {v0, v1, v2, v3}, Lcom/jme3/texture/Image$Format;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/jme3/texture/Image$Format;->RGB10:Lcom/jme3/texture/Image$Format;

    .line 123
    new-instance v0, Lcom/jme3/texture/Image$Format;

    const-string v1, "RGB16"

    const/16 v2, 0xe

    const/16 v3, 0x30

    invoke-direct {v0, v1, v2, v3}, Lcom/jme3/texture/Image$Format;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/jme3/texture/Image$Format;->RGB16:Lcom/jme3/texture/Image$Format;

    .line 128
    new-instance v0, Lcom/jme3/texture/Image$Format;

    const-string v1, "RGB565"

    const/16 v2, 0xf

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/jme3/texture/Image$Format;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/jme3/texture/Image$Format;->RGB565:Lcom/jme3/texture/Image$Format;

    .line 133
    new-instance v0, Lcom/jme3/texture/Image$Format;

    const-string v1, "ARGB4444"

    const/16 v2, 0x10

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/jme3/texture/Image$Format;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/jme3/texture/Image$Format;->ARGB4444:Lcom/jme3/texture/Image$Format;

    .line 138
    new-instance v0, Lcom/jme3/texture/Image$Format;

    const-string v1, "RGB5A1"

    const/16 v2, 0x11

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/jme3/texture/Image$Format;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/jme3/texture/Image$Format;->RGB5A1:Lcom/jme3/texture/Image$Format;

    .line 143
    new-instance v0, Lcom/jme3/texture/Image$Format;

    const-string v1, "RGBA8"

    const/16 v2, 0x12

    const/16 v3, 0x20

    invoke-direct {v0, v1, v2, v3}, Lcom/jme3/texture/Image$Format;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/jme3/texture/Image$Format;->RGBA8:Lcom/jme3/texture/Image$Format;

    .line 148
    new-instance v0, Lcom/jme3/texture/Image$Format;

    const-string v1, "ABGR8"

    const/16 v2, 0x13

    const/16 v3, 0x20

    invoke-direct {v0, v1, v2, v3}, Lcom/jme3/texture/Image$Format;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/jme3/texture/Image$Format;->ABGR8:Lcom/jme3/texture/Image$Format;

    .line 153
    new-instance v0, Lcom/jme3/texture/Image$Format;

    const-string v1, "RGBA16"

    const/16 v2, 0x14

    const/16 v3, 0x40

    invoke-direct {v0, v1, v2, v3}, Lcom/jme3/texture/Image$Format;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/jme3/texture/Image$Format;->RGBA16:Lcom/jme3/texture/Image$Format;

    .line 159
    new-instance v0, Lcom/jme3/texture/Image$Format;

    const-string v1, "DXT1"

    const/16 v2, 0x15

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/jme3/texture/Image$Format;-><init>(Ljava/lang/String;IIZZZ)V

    sput-object v0, Lcom/jme3/texture/Image$Format;->DXT1:Lcom/jme3/texture/Image$Format;

    .line 164
    new-instance v0, Lcom/jme3/texture/Image$Format;

    const-string v1, "DXT1A"

    const/16 v2, 0x16

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/jme3/texture/Image$Format;-><init>(Ljava/lang/String;IIZZZ)V

    sput-object v0, Lcom/jme3/texture/Image$Format;->DXT1A:Lcom/jme3/texture/Image$Format;

    .line 170
    new-instance v0, Lcom/jme3/texture/Image$Format;

    const-string v1, "DXT3"

    const/16 v2, 0x17

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/jme3/texture/Image$Format;-><init>(Ljava/lang/String;IIZZZ)V

    sput-object v0, Lcom/jme3/texture/Image$Format;->DXT3:Lcom/jme3/texture/Image$Format;

    .line 176
    new-instance v0, Lcom/jme3/texture/Image$Format;

    const-string v1, "DXT5"

    const/16 v2, 0x18

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/jme3/texture/Image$Format;-><init>(Ljava/lang/String;IIZZZ)V

    sput-object v0, Lcom/jme3/texture/Image$Format;->DXT5:Lcom/jme3/texture/Image$Format;

    .line 182
    new-instance v0, Lcom/jme3/texture/Image$Format;

    const-string v1, "LATC"

    const/16 v2, 0x19

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/jme3/texture/Image$Format;-><init>(Ljava/lang/String;IIZZZ)V

    sput-object v0, Lcom/jme3/texture/Image$Format;->LATC:Lcom/jme3/texture/Image$Format;

    .line 188
    new-instance v0, Lcom/jme3/texture/Image$Format;

    const-string v1, "Depth"

    const/16 v2, 0x1a

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/jme3/texture/Image$Format;-><init>(Ljava/lang/String;IIZZZ)V

    sput-object v0, Lcom/jme3/texture/Image$Format;->Depth:Lcom/jme3/texture/Image$Format;

    .line 193
    new-instance v0, Lcom/jme3/texture/Image$Format;

    const-string v1, "Depth16"

    const/16 v2, 0x1b

    const/16 v3, 0x10

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/jme3/texture/Image$Format;-><init>(Ljava/lang/String;IIZZZ)V

    sput-object v0, Lcom/jme3/texture/Image$Format;->Depth16:Lcom/jme3/texture/Image$Format;

    .line 198
    new-instance v0, Lcom/jme3/texture/Image$Format;

    const-string v1, "Depth24"

    const/16 v2, 0x1c

    const/16 v3, 0x18

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/jme3/texture/Image$Format;-><init>(Ljava/lang/String;IIZZZ)V

    sput-object v0, Lcom/jme3/texture/Image$Format;->Depth24:Lcom/jme3/texture/Image$Format;

    .line 203
    new-instance v0, Lcom/jme3/texture/Image$Format;

    const-string v1, "Depth32"

    const/16 v2, 0x1d

    const/16 v3, 0x20

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/jme3/texture/Image$Format;-><init>(Ljava/lang/String;IIZZZ)V

    sput-object v0, Lcom/jme3/texture/Image$Format;->Depth32:Lcom/jme3/texture/Image$Format;

    .line 208
    new-instance v0, Lcom/jme3/texture/Image$Format;

    const-string v1, "Depth32F"

    const/16 v2, 0x1e

    const/16 v3, 0x20

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/jme3/texture/Image$Format;-><init>(Ljava/lang/String;IIZZZ)V

    sput-object v0, Lcom/jme3/texture/Image$Format;->Depth32F:Lcom/jme3/texture/Image$Format;

    .line 215
    new-instance v0, Lcom/jme3/texture/Image$Format;

    const-string v1, "RGB16F_to_RGB111110F"

    const/16 v2, 0x1f

    const/16 v3, 0x30

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/jme3/texture/Image$Format;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/jme3/texture/Image$Format;->RGB16F_to_RGB111110F:Lcom/jme3/texture/Image$Format;

    .line 220
    new-instance v0, Lcom/jme3/texture/Image$Format;

    const-string v1, "RGB111110F"

    const/16 v2, 0x20

    const/16 v3, 0x20

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/jme3/texture/Image$Format;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/jme3/texture/Image$Format;->RGB111110F:Lcom/jme3/texture/Image$Format;

    .line 227
    new-instance v0, Lcom/jme3/texture/Image$Format;

    const-string v1, "RGB16F_to_RGB9E5"

    const/16 v2, 0x21

    const/16 v3, 0x30

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/jme3/texture/Image$Format;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/jme3/texture/Image$Format;->RGB16F_to_RGB9E5:Lcom/jme3/texture/Image$Format;

    .line 232
    new-instance v0, Lcom/jme3/texture/Image$Format;

    const-string v1, "RGB9E5"

    const/16 v2, 0x22

    const/16 v3, 0x20

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/jme3/texture/Image$Format;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/jme3/texture/Image$Format;->RGB9E5:Lcom/jme3/texture/Image$Format;

    .line 237
    new-instance v0, Lcom/jme3/texture/Image$Format;

    const-string v1, "RGB16F"

    const/16 v2, 0x23

    const/16 v3, 0x30

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/jme3/texture/Image$Format;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/jme3/texture/Image$Format;->RGB16F:Lcom/jme3/texture/Image$Format;

    .line 242
    new-instance v0, Lcom/jme3/texture/Image$Format;

    const-string v1, "RGBA16F"

    const/16 v2, 0x24

    const/16 v3, 0x40

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/jme3/texture/Image$Format;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/jme3/texture/Image$Format;->RGBA16F:Lcom/jme3/texture/Image$Format;

    .line 247
    new-instance v0, Lcom/jme3/texture/Image$Format;

    const-string v1, "RGB32F"

    const/16 v2, 0x25

    const/16 v3, 0x60

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/jme3/texture/Image$Format;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/jme3/texture/Image$Format;->RGB32F:Lcom/jme3/texture/Image$Format;

    .line 252
    new-instance v0, Lcom/jme3/texture/Image$Format;

    const-string v1, "RGBA32F"

    const/16 v2, 0x26

    const/16 v3, 0x80

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/jme3/texture/Image$Format;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/jme3/texture/Image$Format;->RGBA32F:Lcom/jme3/texture/Image$Format;

    .line 258
    new-instance v0, Lcom/jme3/texture/Image$Format;

    const-string v1, "LTC"

    const/16 v2, 0x27

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/jme3/texture/Image$Format;-><init>(Ljava/lang/String;IIZZZ)V

    sput-object v0, Lcom/jme3/texture/Image$Format;->LTC:Lcom/jme3/texture/Image$Format;

    .line 56
    const/16 v0, 0x28

    new-array v0, v0, [Lcom/jme3/texture/Image$Format;

    const/4 v1, 0x0

    sget-object v2, Lcom/jme3/texture/Image$Format;->Alpha8:Lcom/jme3/texture/Image$Format;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/jme3/texture/Image$Format;->Alpha16:Lcom/jme3/texture/Image$Format;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/jme3/texture/Image$Format;->Luminance8:Lcom/jme3/texture/Image$Format;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/jme3/texture/Image$Format;->Luminance16:Lcom/jme3/texture/Image$Format;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/jme3/texture/Image$Format;->Luminance16F:Lcom/jme3/texture/Image$Format;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/jme3/texture/Image$Format;->Luminance32F:Lcom/jme3/texture/Image$Format;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/jme3/texture/Image$Format;->Luminance8Alpha8:Lcom/jme3/texture/Image$Format;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/jme3/texture/Image$Format;->Luminance16Alpha16:Lcom/jme3/texture/Image$Format;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/jme3/texture/Image$Format;->Luminance16FAlpha16F:Lcom/jme3/texture/Image$Format;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/jme3/texture/Image$Format;->Intensity8:Lcom/jme3/texture/Image$Format;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/jme3/texture/Image$Format;->Intensity16:Lcom/jme3/texture/Image$Format;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/jme3/texture/Image$Format;->BGR8:Lcom/jme3/texture/Image$Format;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/jme3/texture/Image$Format;->RGB8:Lcom/jme3/texture/Image$Format;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/jme3/texture/Image$Format;->RGB10:Lcom/jme3/texture/Image$Format;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/jme3/texture/Image$Format;->RGB16:Lcom/jme3/texture/Image$Format;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/jme3/texture/Image$Format;->RGB565:Lcom/jme3/texture/Image$Format;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/jme3/texture/Image$Format;->ARGB4444:Lcom/jme3/texture/Image$Format;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/jme3/texture/Image$Format;->RGB5A1:Lcom/jme3/texture/Image$Format;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/jme3/texture/Image$Format;->RGBA8:Lcom/jme3/texture/Image$Format;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/jme3/texture/Image$Format;->ABGR8:Lcom/jme3/texture/Image$Format;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/jme3/texture/Image$Format;->RGBA16:Lcom/jme3/texture/Image$Format;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/jme3/texture/Image$Format;->DXT1:Lcom/jme3/texture/Image$Format;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/jme3/texture/Image$Format;->DXT1A:Lcom/jme3/texture/Image$Format;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/jme3/texture/Image$Format;->DXT3:Lcom/jme3/texture/Image$Format;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/jme3/texture/Image$Format;->DXT5:Lcom/jme3/texture/Image$Format;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/jme3/texture/Image$Format;->LATC:Lcom/jme3/texture/Image$Format;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/jme3/texture/Image$Format;->Depth:Lcom/jme3/texture/Image$Format;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/jme3/texture/Image$Format;->Depth16:Lcom/jme3/texture/Image$Format;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/jme3/texture/Image$Format;->Depth24:Lcom/jme3/texture/Image$Format;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/jme3/texture/Image$Format;->Depth32:Lcom/jme3/texture/Image$Format;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/jme3/texture/Image$Format;->Depth32F:Lcom/jme3/texture/Image$Format;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/jme3/texture/Image$Format;->RGB16F_to_RGB111110F:Lcom/jme3/texture/Image$Format;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/jme3/texture/Image$Format;->RGB111110F:Lcom/jme3/texture/Image$Format;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/jme3/texture/Image$Format;->RGB16F_to_RGB9E5:Lcom/jme3/texture/Image$Format;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/jme3/texture/Image$Format;->RGB9E5:Lcom/jme3/texture/Image$Format;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/jme3/texture/Image$Format;->RGB16F:Lcom/jme3/texture/Image$Format;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/jme3/texture/Image$Format;->RGBA16F:Lcom/jme3/texture/Image$Format;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lcom/jme3/texture/Image$Format;->RGB32F:Lcom/jme3/texture/Image$Format;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lcom/jme3/texture/Image$Format;->RGBA32F:Lcom/jme3/texture/Image$Format;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, Lcom/jme3/texture/Image$Format;->LTC:Lcom/jme3/texture/Image$Format;

    aput-object v2, v0, v1

    sput-object v0, Lcom/jme3/texture/Image$Format;->$VALUES:[Lcom/jme3/texture/Image$Format;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "bpp"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 265
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 266
    iput p3, p0, Lcom/jme3/texture/Image$Format;->bpp:I

    .line 267
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0
    .parameter
    .parameter
    .parameter "bpp"
    .parameter "isFP"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)V"
        }
    .end annotation

    .prologue
    .line 270
    invoke-direct {p0, p1, p2, p3}, Lcom/jme3/texture/Image$Format;-><init>(Ljava/lang/String;II)V

    .line 271
    iput-boolean p4, p0, Lcom/jme3/texture/Image$Format;->isFloatingPoint:Z

    .line 272
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter "bpp"
    .parameter "isDepth"
    .parameter "isCompressed"
    .parameter "isFP"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZZ)V"
        }
    .end annotation

    .prologue
    .line 275
    invoke-direct {p0, p1, p2, p3, p6}, Lcom/jme3/texture/Image$Format;-><init>(Ljava/lang/String;IIZ)V

    .line 276
    iput-boolean p4, p0, Lcom/jme3/texture/Image$Format;->isDepth:Z

    .line 277
    iput-boolean p5, p0, Lcom/jme3/texture/Image$Format;->isCompressed:Z

    .line 278
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/texture/Image$Format;
    .locals 1
    .parameter

    .prologue
    .line 56
    const-class v0, Lcom/jme3/texture/Image$Format;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/texture/Image$Format;

    return-object v0
.end method

.method public static values()[Lcom/jme3/texture/Image$Format;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/jme3/texture/Image$Format;->$VALUES:[Lcom/jme3/texture/Image$Format;

    invoke-virtual {v0}, [Lcom/jme3/texture/Image$Format;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/texture/Image$Format;

    return-object v0
.end method


# virtual methods
.method public getBitsPerPixel()I
    .locals 1

    .prologue
    .line 284
    iget v0, p0, Lcom/jme3/texture/Image$Format;->bpp:I

    return v0
.end method

.method public isDepthFormat()Z
    .locals 1

    .prologue
    .line 291
    iget-boolean v0, p0, Lcom/jme3/texture/Image$Format;->isDepth:Z

    return v0
.end method
