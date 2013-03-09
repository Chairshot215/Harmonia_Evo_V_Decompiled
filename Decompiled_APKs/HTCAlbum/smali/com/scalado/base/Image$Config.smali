.class public Lcom/scalado/base/Image$Config;
.super Ljava/lang/Object;
.source "Image.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/base/Image;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation


# static fields
.field public static final ARGB_8888:Lcom/scalado/base/Image$Config;

.field public static final AYUV4444:Lcom/scalado/base/Image$Config;

.field public static final GRAY1:Lcom/scalado/base/Image$Config;

.field public static final GRAY2:Lcom/scalado/base/Image$Config;

.field public static final GRAY4:Lcom/scalado/base/Image$Config;

.field public static final GRAY8:Lcom/scalado/base/Image$Config;

.field public static final RGBA8888:Lcom/scalado/base/Image$Config;

.field public static final RGB_565:Lcom/scalado/base/Image$Config;

.field public static final RGB_565_D:Lcom/scalado/base/Image$Config;

.field public static final RGB_565_FD:Lcom/scalado/base/Image$Config;

.field public static final YUV422_Y1UY2V:Lcom/scalado/base/Image$Config;

.field public static final YUV_420P:Lcom/scalado/base/Image$Config;

.field public static final YUV_420SP:Lcom/scalado/base/Image$Config;

.field public static final YUV_422SP:Lcom/scalado/base/Image$Config;

.field public static final YVU_420SP:Lcom/scalado/base/Image$Config;

.field public static final YVU_422SP:Lcom/scalado/base/Image$Config;


# instance fields
.field private bitsPerPixel:I

.field private colormode:I

.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/16 v5, 0xc

    const/16 v4, 0x20

    const/16 v3, 0x10

    .line 41
    new-instance v0, Lcom/scalado/base/Image$Config;

    const-string v1, "RGB_565"

    invoke-direct {v0, v4, v1, v3}, Lcom/scalado/base/Image$Config;-><init>(ILjava/lang/String;I)V

    sput-object v0, Lcom/scalado/base/Image$Config;->RGB_565:Lcom/scalado/base/Image$Config;

    .line 48
    new-instance v0, Lcom/scalado/base/Image$Config;

    const/16 v1, 0x21

    const-string v2, "RGB_565_D"

    invoke-direct {v0, v1, v2, v3}, Lcom/scalado/base/Image$Config;-><init>(ILjava/lang/String;I)V

    sput-object v0, Lcom/scalado/base/Image$Config;->RGB_565_D:Lcom/scalado/base/Image$Config;

    .line 56
    new-instance v0, Lcom/scalado/base/Image$Config;

    const/16 v1, 0x23

    const-string v2, "RGB_565_FD"

    invoke-direct {v0, v1, v2, v3}, Lcom/scalado/base/Image$Config;-><init>(ILjava/lang/String;I)V

    sput-object v0, Lcom/scalado/base/Image$Config;->RGB_565_FD:Lcom/scalado/base/Image$Config;

    .line 61
    new-instance v0, Lcom/scalado/base/Image$Config;

    const-string v1, "ARGB_8888"

    invoke-direct {v0, v6, v1, v4}, Lcom/scalado/base/Image$Config;-><init>(ILjava/lang/String;I)V

    sput-object v0, Lcom/scalado/base/Image$Config;->ARGB_8888:Lcom/scalado/base/Image$Config;

    .line 66
    new-instance v0, Lcom/scalado/base/Image$Config;

    const/16 v1, 0x1004

    const-string v2, "RGBA8888"

    invoke-direct {v0, v1, v2, v4}, Lcom/scalado/base/Image$Config;-><init>(ILjava/lang/String;I)V

    sput-object v0, Lcom/scalado/base/Image$Config;->RGBA8888:Lcom/scalado/base/Image$Config;

    .line 71
    new-instance v0, Lcom/scalado/base/Image$Config;

    const/16 v1, 0x40

    const-string v2, "AYUV4444"

    invoke-direct {v0, v1, v2, v4}, Lcom/scalado/base/Image$Config;-><init>(ILjava/lang/String;I)V

    sput-object v0, Lcom/scalado/base/Image$Config;->AYUV4444:Lcom/scalado/base/Image$Config;

    .line 77
    new-instance v0, Lcom/scalado/base/Image$Config;

    const/16 v1, 0x111a

    const-string v2, "YUV_420SP"

    invoke-direct {v0, v1, v2, v5}, Lcom/scalado/base/Image$Config;-><init>(ILjava/lang/String;I)V

    sput-object v0, Lcom/scalado/base/Image$Config;->YUV_420SP:Lcom/scalado/base/Image$Config;

    .line 82
    new-instance v0, Lcom/scalado/base/Image$Config;

    const/16 v1, 0x111c

    const-string v2, "YVU_420SP"

    invoke-direct {v0, v1, v2, v5}, Lcom/scalado/base/Image$Config;-><init>(ILjava/lang/String;I)V

    sput-object v0, Lcom/scalado/base/Image$Config;->YVU_420SP:Lcom/scalado/base/Image$Config;

    .line 88
    new-instance v0, Lcom/scalado/base/Image$Config;

    const/16 v1, 0x111d

    const-string v2, "YUV_422SP"

    invoke-direct {v0, v1, v2, v3}, Lcom/scalado/base/Image$Config;-><init>(ILjava/lang/String;I)V

    sput-object v0, Lcom/scalado/base/Image$Config;->YUV_422SP:Lcom/scalado/base/Image$Config;

    .line 94
    new-instance v0, Lcom/scalado/base/Image$Config;

    const/16 v1, 0x111e

    const-string v2, "YVU_422SP"

    invoke-direct {v0, v1, v2, v3}, Lcom/scalado/base/Image$Config;-><init>(ILjava/lang/String;I)V

    sput-object v0, Lcom/scalado/base/Image$Config;->YVU_422SP:Lcom/scalado/base/Image$Config;

    .line 100
    new-instance v0, Lcom/scalado/base/Image$Config;

    const/16 v1, 0x111f

    const-string v2, "YUV_420P"

    invoke-direct {v0, v1, v2, v5}, Lcom/scalado/base/Image$Config;-><init>(ILjava/lang/String;I)V

    sput-object v0, Lcom/scalado/base/Image$Config;->YUV_420P:Lcom/scalado/base/Image$Config;

    .line 106
    new-instance v0, Lcom/scalado/base/Image$Config;

    const/16 v1, 0x2060

    const-string v2, "YUV422_Y1UY2V"

    invoke-direct {v0, v1, v2, v3}, Lcom/scalado/base/Image$Config;-><init>(ILjava/lang/String;I)V

    sput-object v0, Lcom/scalado/base/Image$Config;->YUV422_Y1UY2V:Lcom/scalado/base/Image$Config;

    .line 111
    new-instance v0, Lcom/scalado/base/Image$Config;

    const/16 v1, 0x200

    const-string v2, "GRAY1"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/scalado/base/Image$Config;-><init>(ILjava/lang/String;I)V

    sput-object v0, Lcom/scalado/base/Image$Config;->GRAY1:Lcom/scalado/base/Image$Config;

    .line 116
    new-instance v0, Lcom/scalado/base/Image$Config;

    const/16 v1, 0x400

    const-string v2, "GRAY2"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/scalado/base/Image$Config;-><init>(ILjava/lang/String;I)V

    sput-object v0, Lcom/scalado/base/Image$Config;->GRAY2:Lcom/scalado/base/Image$Config;

    .line 121
    new-instance v0, Lcom/scalado/base/Image$Config;

    const/16 v1, 0x800

    const-string v2, "GRAY4"

    invoke-direct {v0, v1, v2, v6}, Lcom/scalado/base/Image$Config;-><init>(ILjava/lang/String;I)V

    sput-object v0, Lcom/scalado/base/Image$Config;->GRAY4:Lcom/scalado/base/Image$Config;

    .line 126
    new-instance v0, Lcom/scalado/base/Image$Config;

    const/16 v1, 0x1000

    const-string v2, "GRAY8"

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/scalado/base/Image$Config;-><init>(ILjava/lang/String;I)V

    sput-object v0, Lcom/scalado/base/Image$Config;->GRAY8:Lcom/scalado/base/Image$Config;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;I)V
    .locals 0
    .parameter "colormode"
    .parameter "name"
    .parameter "bitsPerPixel"

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/scalado/base/Image$Config;->colormode:I

    .line 21
    iput-object p2, p0, Lcom/scalado/base/Image$Config;->name:Ljava/lang/String;

    .line 22
    iput p3, p0, Lcom/scalado/base/Image$Config;->bitsPerPixel:I

    .line 23
    return-void
.end method

.method static synthetic access$000(Lcom/scalado/base/Image$Config;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget v0, p0, Lcom/scalado/base/Image$Config;->colormode:I

    return v0
.end method


# virtual methods
.method public getBitsPerPixel()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/scalado/base/Image$Config;->bitsPerPixel:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/scalado/base/Image$Config;->name:Ljava/lang/String;

    return-object v0
.end method
