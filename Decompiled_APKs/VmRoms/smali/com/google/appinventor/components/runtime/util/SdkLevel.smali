.class public Lcom/google/appinventor/components/runtime/util/SdkLevel;
.super Ljava/lang/Object;


# static fields
.field public static final LEVEL_CUPCAKE:I = 0x3

.field public static final LEVEL_DONUT:I = 0x4

.field public static final LEVEL_ECLAIR:I = 0x5

.field public static final LEVEL_ECLAIR_0_1:I = 0x6

.field public static final LEVEL_ECLAIR_MR1:I = 0x7

.field public static final LEVEL_FROYO:I = 0x8

.field public static final LEVEL_GINGERBREAD:I = 0x9

.field public static final LEVEL_GINGERBREAD_MR1:I = 0xa

.field public static final LEVEL_HONEYCOMB:I = 0xb


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLevel()I
    .locals 1

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
