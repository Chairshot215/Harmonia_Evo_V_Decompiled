.class public Lcom/android/camera/Resolution;
.super Ljava/lang/Object;
.source "Resolution.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/camera/Resolution;",
        ">;"
    }
.end annotation


# static fields
.field public static CONTACT_STYLE:Lcom/android/camera/Resolution;

.field public static Capture_1080P_3D:Lcom/android/camera/Resolution;

.field public static Capture_720P_4_3:Lcom/android/camera/Resolution;

.field public static EIGHT_MEGA:Lcom/android/camera/Resolution;

.field public static EIGHT_MEGA_16_9:Lcom/android/camera/Resolution;

.field public static EIGHT_MEGA_3_2:Lcom/android/camera/Resolution;

.field public static EIGHT_MEGA_5_3:Lcom/android/camera/Resolution;

.field public static FIVE_MEGA:Lcom/android/camera/Resolution;

.field public static FIVE_MEGA_16_9:Lcom/android/camera/Resolution;

.field public static FIVE_MEGA_3_2:Lcom/android/camera/Resolution;

.field public static FIVE_MEGA_5_3:Lcom/android/camera/Resolution;

.field public static FOUR_MEGA:Lcom/android/camera/Resolution;

.field public static FOUR_MEGA_3_2:Lcom/android/camera/Resolution;

.field public static QVGA:Lcom/android/camera/Resolution;

.field public static SHARP_FIVE_MEGA:Lcom/android/camera/Resolution;

.field public static SHARP_FIVE_MEGA_16_9:Lcom/android/camera/Resolution;

.field public static SHARP_FIVE_MEGA_5_3:Lcom/android/camera/Resolution;

.field public static SQUARE_STYLE:Lcom/android/camera/Resolution;

.field public static SXGA:Lcom/android/camera/Resolution;

.field public static SXGA_16_9:Lcom/android/camera/Resolution;

.field public static SXGA_3_2:Lcom/android/camera/Resolution;

.field public static SXGA_5_3:Lcom/android/camera/Resolution;

.field public static SXGA_5_4:Lcom/android/camera/Resolution;

.field public static THREE_MEGA:Lcom/android/camera/Resolution;

.field public static THREE_MEGA_16_9:Lcom/android/camera/Resolution;

.field public static THREE_MEGA_3_2:Lcom/android/camera/Resolution;

.field public static THREE_MEGA_5_3:Lcom/android/camera/Resolution;

.field public static Tablet_FIVE_MEGA_16_9:Lcom/android/camera/Resolution;

.field public static Tablet_FrontCam_SXGA_16_9:Lcom/android/camera/Resolution;

.field public static Tablet_SXGA_16_9:Lcom/android/camera/Resolution;

.field public static Tablet_THREE_MEGA_16_9:Lcom/android/camera/Resolution;

.field public static Tablet_VGA_16_9:Lcom/android/camera/Resolution;

.field public static UXGA:Lcom/android/camera/Resolution;

.field public static UXGA_16_9:Lcom/android/camera/Resolution;

.field public static UXGA_3_2:Lcom/android/camera/Resolution;

.field public static VGA:Lcom/android/camera/Resolution;

.field public static VGA_16_9:Lcom/android/camera/Resolution;

.field public static VGA_3_2:Lcom/android/camera/Resolution;

.field public static VGA_5_3:Lcom/android/camera/Resolution;

.field public static VGA_Second:Lcom/android/camera/Resolution;

.field public static Video_1080p:Lcom/android/camera/Resolution;

.field public static Video_1080p_Online:Lcom/android/camera/Resolution;

.field public static Video_720P_3D:Lcom/android/camera/Resolution;

.field public static Video_720p:Lcom/android/camera/Resolution;

.field public static Video_720p_Online:Lcom/android/camera/Resolution;

.field public static Video_HVGA:Lcom/android/camera/Resolution;

.field public static Video_QCIF:Lcom/android/camera/Resolution;

.field public static Video_QCIF_Service:Lcom/android/camera/Resolution;

.field public static Video_QHD:Lcom/android/camera/Resolution;

.field public static Video_QVGA:Lcom/android/camera/Resolution;

.field public static Video_QVGA_Service:Lcom/android/camera/Resolution;

.field public static Video_VGA:Lcom/android/camera/Resolution;

.field public static Video_VGA_Online:Lcom/android/camera/Resolution;

.field public static Video_WVGA:Lcom/android/camera/Resolution;

.field private static resolutionStorage:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/Resolution;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field height:I

.field mDescriptionResId:I

.field mName:Ljava/lang/String;

.field mNameResId:I

.field mPriority:I

.field mbWideRatio:Z

.field width:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/android/camera/Resolution;

    const/16 v1, 0x780

    const/16 v2, 0x440

    const v3, 0x7f0a00de

    const v4, 0x7f0a0107

    const-string v5, "1080p"

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/Resolution;-><init>(IIIILjava/lang/String;I)V

    sput-object v0, Lcom/android/camera/Resolution;->Video_1080p:Lcom/android/camera/Resolution;

    new-instance v0, Lcom/android/camera/Resolution;

    const/16 v1, 0x500

    const/16 v2, 0x2d0

    const v3, 0x7f0a00dd

    const v4, 0x7f0a0108

    const-string v5, "720p"

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/Resolution;-><init>(IIIILjava/lang/String;I)V

    sput-object v0, Lcom/android/camera/Resolution;->Video_720p:Lcom/android/camera/Resolution;

    new-instance v0, Lcom/android/camera/Resolution;

    const/16 v1, 0x3c0

    const/16 v2, 0x220

    const v3, 0x7f0a00dc

    const v4, 0x7f0a0109

    const-string v5, "QHD"

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/Resolution;-><init>(IIIILjava/lang/String;I)V

    sput-object v0, Lcom/android/camera/Resolution;->Video_QHD:Lcom/android/camera/Resolution;

    new-instance v0, Lcom/android/camera/Resolution;

    const/16 v1, 0x320

    const/16 v2, 0x1e0

    const v3, 0x7f0a00db

    const v4, 0x7f0a010a

    const-string v5, "WVGA"

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/Resolution;-><init>(IIIILjava/lang/String;I)V

    sput-object v0, Lcom/android/camera/Resolution;->Video_WVGA:Lcom/android/camera/Resolution;

    new-instance v0, Lcom/android/camera/Resolution;

    const/16 v1, 0x2d0

    const/16 v2, 0x1e0

    const v3, 0x7f0a00da

    const v4, 0x7f0a010b

    const-string v5, "HVGA"

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/Resolution;-><init>(IIIILjava/lang/String;I)V

    sput-object v0, Lcom/android/camera/Resolution;->Video_HVGA:Lcom/android/camera/Resolution;

    new-instance v0, Lcom/android/camera/Resolution;

    const/16 v1, 0x280

    const/16 v2, 0x1e0

    const v3, 0x7f0a00df

    const v4, 0x7f0a010c

    const-string v5, "VGA"

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/Resolution;-><init>(IIIILjava/lang/String;I)V

    sput-object v0, Lcom/android/camera/Resolution;->Video_VGA:Lcom/android/camera/Resolution;

    new-instance v0, Lcom/android/camera/Resolution;

    const/16 v1, 0x140

    const/16 v2, 0xf0

    const v3, 0x7f0a00d9

    const v4, 0x7f0a010d

    const-string v5, "QVGA"

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/Resolution;-><init>(IIIILjava/lang/String;I)V

    sput-object v0, Lcom/android/camera/Resolution;->Video_QVGA:Lcom/android/camera/Resolution;

    new-instance v0, Lcom/android/camera/Resolution;

    const/16 v1, 0xb0

    const/16 v2, 0x90

    const v3, 0x7f0a00d8

    const v4, 0x7f0a010e

    const-string v5, "QCIF"

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/Resolution;-><init>(IIIILjava/lang/String;I)V

    sput-object v0, Lcom/android/camera/Resolution;->Video_QCIF:Lcom/android/camera/Resolution;

    new-instance v0, Lcom/android/camera/Resolution;

    const/16 v1, 0x500

    const/16 v2, 0x2d0

    const v3, 0x7f0a00dd

    const v4, 0x7f0a010f

    const-string v5, "720p_ONLINE"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/Resolution;-><init>(IIIILjava/lang/String;I)V

    sput-object v0, Lcom/android/camera/Resolution;->Video_720p_Online:Lcom/android/camera/Resolution;

    new-instance v0, Lcom/android/camera/Resolution;

    const/16 v1, 0x780

    const/16 v2, 0x440

    const v3, 0x7f0a00de

    const v4, 0x7f0a0110

    const-string v5, "1080p_ONLINE"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/Resolution;-><init>(IIIILjava/lang/String;I)V

    sput-object v0, Lcom/android/camera/Resolution;->Video_1080p_Online:Lcom/android/camera/Resolution;

    new-instance v0, Lcom/android/camera/Resolution;

    const/16 v1, 0x280

    const/16 v2, 0x1e0

    const v3, 0x7f0a00df

    const v4, 0x7f0a0111

    const-string v5, "VGA_ONLINE"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/Resolution;-><init>(IIIILjava/lang/String;I)V

    sput-object v0, Lcom/android/camera/Resolution;->Video_VGA_Online:Lcom/android/camera/Resolution;

    new-instance v0, Lcom/android/camera/Resolution;

    const/16 v1, 0x140

    const/16 v2, 0xf0

    const v3, 0x7f0a00d9

    const v4, 0x7f0a0105

    const-string v5, "QVGA"

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/Resolution;-><init>(IIIILjava/lang/String;I)V

    sput-object v0, Lcom/android/camera/Resolution;->Video_QVGA_Service:Lcom/android/camera/Resolution;

    new-instance v0, Lcom/android/camera/Resolution;

    const/16 v1, 0xb0

    const/16 v2, 0x90

    const v3, 0x7f0a00d8

    const v4, 0x7f0a0106

    const-string v5, "QCIF"

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/Resolution;-><init>(IIIILjava/lang/String;I)V

    sput-object v0, Lcom/android/camera/Resolution;->Video_QCIF_Service:Lcom/android/camera/Resolution;

    new-instance v0, Lcom/android/camera/Resolution;

    const/16 v1, 0x140

    const/16 v2, 0xf0

    const v3, 0x7f0a00d9

    const v4, 0x7f0a011b

    const-string v5, "QVGA"

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/Resolution;-><init>(IIIILjava/lang/String;)V

    sput-object v0, Lcom/android/camera/Resolution;->QVGA:Lcom/android/camera/Resolution;

    new-instance v0, Lcom/android/camera/Resolution;

    const/16 v1, 0x280

    const/16 v2, 0x1e0

    const v3, 0x7f0a00df

    const v4, 0x7f0a011a

    const-string v5, "VGA"

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/Resolution;-><init>(IIIILjava/lang/String;)V

    sput-object v0, Lcom/android/camera/Resolution;->VGA_Second:Lcom/android/camera/Resolution;

    new-instance v0, Lcom/android/camera/Resolution;

    const/16 v1, 0x280

    const/16 v2, 0x1e0

    const v3, 0x7f0a00df

    const v4, 0x7f0a0119

    const-string v5, "VGA"

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/Resolution;-><init>(IIIILjava/lang/String;)V

    sput-object v0, Lcom/android/camera/Resolution;->VGA:Lcom/android/camera/Resolution;

    new-instance v0, Lcom/android/camera/Resolution;

    const/16 v1, 0x500

    const/16 v2, 0x3c0

    const v3, 0x7f0a00e1

    const v4, 0x7f0a0117

    const-string v5, "SXGA"

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/Resolution;-><init>(IIIILjava/lang/String;)V

    sput-object v0, Lcom/android/camera/Resolution;->SXGA:Lcom/android/camera/Resolution;

    new-instance v0, Lcom/android/camera/Resolution;

    const/16 v1, 0x3c0

    const/16 v2, 0x2d0

    const v3, 0x7f0a00e0

    const v4, 0x7f0a0118

    const-string v5, "Capture_720P_4_3"

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/Resolution;-><init>(IIIILjava/lang/String;)V

    sput-object v0, Lcom/android/camera/Resolution;->Capture_720P_4_3:Lcom/android/camera/Resolution;

    new-instance v0, Lcom/android/camera/Resolution;

    const/16 v1, 0x640

    const/16 v2, 0x4b0

    const v3, 0x7f0a00e2

    const v4, 0x7f0a0116

    const-string v5, "UXGA"

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/Resolution;-><init>(IIIILjava/lang/String;)V

    sput-object v0, Lcom/android/camera/Resolution;->UXGA:Lcom/android/camera/Resolution;

    new-instance v0, Lcom/android/camera/Resolution;

    const/16 v1, 0x800

    const/16 v2, 0x600

    const v3, 0x7f0a00e3

    const v4, 0x7f0a0115

    const-string v5, "THREE_MEGA"

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/Resolution;-><init>(IIIILjava/lang/String;)V

    sput-object v0, Lcom/android/camera/Resolution;->THREE_MEGA:Lcom/android/camera/Resolution;

    new-instance v0, Lcom/android/camera/Resolution;

    const/16 v1, 0x900

    const/16 v2, 0x6c0

    const v3, 0x7f0a00e4

    const v4, 0x7f0a0114

    const-string v5, "FOUR_MEGA"

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/Resolution;-><init>(IIIILjava/lang/String;)V

    sput-object v0, Lcom/android/camera/Resolution;->FOUR_MEGA:Lcom/android/camera/Resolution;

    new-instance v0, Lcom/android/camera/Resolution;

    const/16 v1, 0xa20

    const/16 v2, 0x7a0

    const v3, 0x7f0a00e5

    const v4, 0x7f0a0113

    const-string v5, "FIVE_MEGA"

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/Resolution;-><init>(IIIILjava/lang/String;)V

    sput-object v0, Lcom/android/camera/Resolution;->FIVE_MEGA:Lcom/android/camera/Resolution;

    new-instance v0, Lcom/android/camera/Resolution;

    const/16 v1, 0xcc0

    const/16 v2, 0x990

    const v3, 0x7f0a00e6

    const v4, 0x7f0a0112

    const-string v5, "EIGHT_MEGA"

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/Resolution;-><init>(IIIILjava/lang/String;)V

    sput-object v0, Lcom/android/camera/Resolution;->EIGHT_MEGA:Lcom/android/camera/Resolution;

    new-instance v0, Lcom/android/camera/Resolution;

    const/16 v1, 0x500

    const/16 v2, 0x400

    const v3, 0x7f0a00e7

    const v4, 0x7f0a011d

    const-string v5, "SXGA_5_4"

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/Resolution;-><init>(IIIILjava/lang/String;)V

    sput-object v0, Lcom/android/camera/Resolution;->SXGA_5_4:Lcom/android/camera/Resolution;

    new-instance v0, Lcom/android/camera/Resolution;

    const/16 v1, 0x110

    const/16 v2, 0x110

    const v3, 0x7f0a00e8

    const v4, 0x7f0a011c

    const-string v5, "CONTACT_STYLE"

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/Resolution;-><init>(IIIILjava/lang/String;)V

    sput-object v0, Lcom/android/camera/Resolution;->CONTACT_STYLE:Lcom/android/camera/Resolution;

    new-instance v0, Lcom/android/camera/Resolution;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const v3, 0x7f0a00e8

    const v4, 0x7f0a011c

    const-string v5, "SQUARE_STYLE"

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/Resolution;-><init>(IIIILjava/lang/String;)V

    sput-object v0, Lcom/android/camera/Resolution;->SQUARE_STYLE:Lcom/android/camera/Resolution;

    new-instance v0, Lcom/android/camera/Resolution;

    const/16 v1, 0x280

    const/16 v2, 0x1a0

    const v3, 0x7f0a00e9

    const v4, 0x7f0a0124

    const-string v5, "VGA_3_2"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/Resolution;-><init>(IIIILjava/lang/String;Z)V

    sput-object v0, Lcom/android/camera/Resolution;->VGA_3_2:Lcom/android/camera/Resolution;

    new-instance v0, Lcom/android/camera/Resolution;

    const/16 v1, 0x500

    const/16 v2, 0x350

    const v3, 0x7f0a00ea

    const v4, 0x7f0a0123

    const-string v5, "SXGA_3_2"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/Resolution;-><init>(IIIILjava/lang/String;Z)V

    sput-object v0, Lcom/android/camera/Resolution;->SXGA_3_2:Lcom/android/camera/Resolution;

    new-instance v0, Lcom/android/camera/Resolution;

    const/16 v1, 0x630

    const/16 v2, 0x420

    const v3, 0x7f0a00eb

    const v4, 0x7f0a0122

    const-string v5, "UXGA_3_2"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/Resolution;-><init>(IIIILjava/lang/String;Z)V

    sput-object v0, Lcom/android/camera/Resolution;->UXGA_3_2:Lcom/android/camera/Resolution;

    new-instance v0, Lcom/android/camera/Resolution;

    const/16 v1, 0x800

    const/16 v2, 0x550

    const v3, 0x7f0a00ec

    const v4, 0x7f0a0121

    const-string v5, "THREE_MEGA_3_2"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/Resolution;-><init>(IIIILjava/lang/String;Z)V

    sput-object v0, Lcom/android/camera/Resolution;->THREE_MEGA_3_2:Lcom/android/camera/Resolution;

    new-instance v0, Lcom/android/camera/Resolution;

    const/16 v1, 0x900

    const/16 v2, 0x600

    const v3, 0x7f0a00ed

    const v4, 0x7f0a0120

    const-string v5, "FOUR_MEGA_3_2"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/Resolution;-><init>(IIIILjava/lang/String;Z)V

    sput-object v0, Lcom/android/camera/Resolution;->FOUR_MEGA_3_2:Lcom/android/camera/Resolution;

    new-instance v0, Lcom/android/camera/Resolution;

    const/16 v1, 0xa20

    const/16 v2, 0x6c0

    const v3, 0x7f0a00ee

    const v4, 0x7f0a011f

    const-string v5, "FIVE_3_2"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/Resolution;-><init>(IIIILjava/lang/String;Z)V

    sput-object v0, Lcom/android/camera/Resolution;->FIVE_MEGA_3_2:Lcom/android/camera/Resolution;

    new-instance v0, Lcom/android/camera/Resolution;

    const/16 v1, 0xcc0

    const/16 v2, 0x880

    const v3, 0x7f0a00ef

    const v4, 0x7f0a011e

    const-string v5, "EIGHT_MEGA_3_2"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/Resolution;-><init>(IIIILjava/lang/String;Z)V

    sput-object v0, Lcom/android/camera/Resolution;->EIGHT_MEGA_3_2:Lcom/android/camera/Resolution;

    new-instance v0, Lcom/android/camera/Resolution;

    const/16 v1, 0x280

    const/16 v2, 0x180

    const v3, 0x7f0a00f0

    const v4, 0x7f0a0129

    const-string v5, "VGA_5_3"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/Resolution;-><init>(IIIILjava/lang/String;Z)V

    sput-object v0, Lcom/android/camera/Resolution;->VGA_5_3:Lcom/android/camera/Resolution;

    new-instance v0, Lcom/android/camera/Resolution;

    const/16 v1, 0x500

    const/16 v2, 0x300

    const v3, 0x7f0a00f1

    const v4, 0x7f0a0128

    const-string v5, "SXGA_5_3"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/Resolution;-><init>(IIIILjava/lang/String;Z)V

    sput-object v0, Lcom/android/camera/Resolution;->SXGA_5_3:Lcom/android/camera/Resolution;

    new-instance v0, Lcom/android/camera/Resolution;

    const/16 v1, 0x800

    const/16 v2, 0x4c0

    const v3, 0x7f0a00f2

    const v4, 0x7f0a0127

    const-string v5, "THREE_MEGA_5_3"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/Resolution;-><init>(IIIILjava/lang/String;Z)V

    sput-object v0, Lcom/android/camera/Resolution;->THREE_MEGA_5_3:Lcom/android/camera/Resolution;

    new-instance v0, Lcom/android/camera/Resolution;

    const/16 v1, 0xa20

    const/16 v2, 0x610

    const v3, 0x7f0a00f3

    const v4, 0x7f0a0126

    const-string v5, "FIVE_5_3"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/Resolution;-><init>(IIIILjava/lang/String;Z)V

    sput-object v0, Lcom/android/camera/Resolution;->FIVE_MEGA_5_3:Lcom/android/camera/Resolution;

    new-instance v0, Lcom/android/camera/Resolution;

    const/16 v1, 0xcc0

    const/16 v2, 0x7a0

    const v3, 0x7f0a00f4

    const v4, 0x7f0a0125

    const-string v5, "EIGHT_MEGA_5_3"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/Resolution;-><init>(IIIILjava/lang/String;Z)V

    sput-object v0, Lcom/android/camera/Resolution;->EIGHT_MEGA_5_3:Lcom/android/camera/Resolution;

    new-instance v0, Lcom/android/camera/Resolution;

    const/16 v1, 0x280

    const/16 v2, 0x170

    const v3, 0x7f0a00f5

    const v4, 0x7f0a012f

    const-string v5, "VGA_16_9"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/Resolution;-><init>(IIIILjava/lang/String;Z)V

    sput-object v0, Lcom/android/camera/Resolution;->VGA_16_9:Lcom/android/camera/Resolution;

    new-instance v0, Lcom/android/camera/Resolution;

    const/16 v1, 0x500

    const/16 v2, 0x2d0

    const v3, 0x7f0a00f6

    const v4, 0x7f0a012e

    const-string v5, "SXGA_16_9"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/Resolution;-><init>(IIIILjava/lang/String;Z)V

    sput-object v0, Lcom/android/camera/Resolution;->SXGA_16_9:Lcom/android/camera/Resolution;

    new-instance v0, Lcom/android/camera/Resolution;

    const/16 v1, 0x640

    const/16 v2, 0x380

    const v3, 0x7f0a00f7

    const v4, 0x7f0a012d

    const-string v5, "UXGA_16_9"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/Resolution;-><init>(IIIILjava/lang/String;Z)V

    sput-object v0, Lcom/android/camera/Resolution;->UXGA_16_9:Lcom/android/camera/Resolution;

    new-instance v0, Lcom/android/camera/Resolution;

    const/16 v1, 0x800

    const/16 v2, 0x480

    const v3, 0x7f0a00f8

    const v4, 0x7f0a012c

    const-string v5, "THREE_MEGA_16_9"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/Resolution;-><init>(IIIILjava/lang/String;Z)V

    sput-object v0, Lcom/android/camera/Resolution;->THREE_MEGA_16_9:Lcom/android/camera/Resolution;

    new-instance v0, Lcom/android/camera/Resolution;

    const/16 v1, 0xa20

    const/16 v2, 0x5b0

    const v3, 0x7f0a00f9

    const v4, 0x7f0a012b

    const-string v5, "FIVE_16_9"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/Resolution;-><init>(IIIILjava/lang/String;Z)V

    sput-object v0, Lcom/android/camera/Resolution;->FIVE_MEGA_16_9:Lcom/android/camera/Resolution;

    new-instance v0, Lcom/android/camera/Resolution;

    const/16 v1, 0xcc0

    const/16 v2, 0x730

    const v3, 0x7f0a00fa

    const v4, 0x7f0a012a

    const-string v5, "EIGHT_16_9"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/Resolution;-><init>(IIIILjava/lang/String;Z)V

    sput-object v0, Lcom/android/camera/Resolution;->EIGHT_MEGA_16_9:Lcom/android/camera/Resolution;

    new-instance v0, Lcom/android/camera/Resolution;

    const/16 v1, 0x280

    const/16 v2, 0x170

    const v3, 0x7f0a00fb

    const v4, 0x7f0a0133

    const-string v5, "Tablet_VGA_16_9"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/Resolution;-><init>(IIIILjava/lang/String;Z)V

    sput-object v0, Lcom/android/camera/Resolution;->Tablet_VGA_16_9:Lcom/android/camera/Resolution;

    new-instance v0, Lcom/android/camera/Resolution;

    const/16 v1, 0x500

    const/16 v2, 0x2f0

    const v3, 0x7f0a00fc

    const v4, 0x7f0a0132

    const-string v5, "Tablet_SXGA_16_9"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/Resolution;-><init>(IIIILjava/lang/String;Z)V

    sput-object v0, Lcom/android/camera/Resolution;->Tablet_SXGA_16_9:Lcom/android/camera/Resolution;

    new-instance v0, Lcom/android/camera/Resolution;

    const/16 v1, 0x4d0

    const/16 v2, 0x2d0

    const v3, 0x7f0a00fd

    const v4, 0x7f0a0132

    const-string v5, "Tablet_FrontCam_SXGA_16_9"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/Resolution;-><init>(IIIILjava/lang/String;Z)V

    sput-object v0, Lcom/android/camera/Resolution;->Tablet_FrontCam_SXGA_16_9:Lcom/android/camera/Resolution;

    new-instance v0, Lcom/android/camera/Resolution;

    const/16 v1, 0x800

    const/16 v2, 0x4b0

    const v3, 0x7f0a00fe

    const v4, 0x7f0a0131

    const-string v5, "Tablet_THREE_MEGA_16_9"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/Resolution;-><init>(IIIILjava/lang/String;Z)V

    sput-object v0, Lcom/android/camera/Resolution;->Tablet_THREE_MEGA_16_9:Lcom/android/camera/Resolution;

    new-instance v0, Lcom/android/camera/Resolution;

    const/16 v1, 0xa20

    const/16 v2, 0x5f0

    const v3, 0x7f0a00ff

    const v4, 0x7f0a0130

    const-string v5, "Tablet_FIVE_16_9"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/Resolution;-><init>(IIIILjava/lang/String;Z)V

    sput-object v0, Lcom/android/camera/Resolution;->Tablet_FIVE_MEGA_16_9:Lcom/android/camera/Resolution;

    new-instance v0, Lcom/android/camera/Resolution;

    const/16 v1, 0x780

    const/16 v2, 0x440

    const v3, 0x7f0a0100

    const v4, 0x7f0a0134

    const-string v5, "Capture_1080P_3D"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/Resolution;-><init>(IIIILjava/lang/String;Z)V

    sput-object v0, Lcom/android/camera/Resolution;->Capture_1080P_3D:Lcom/android/camera/Resolution;

    new-instance v0, Lcom/android/camera/Resolution;

    const/16 v1, 0x500

    const/16 v2, 0x2d0

    const v3, 0x7f0a0101

    const v4, 0x7f0a0135

    const-string v5, "Video_720P_3D"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/Resolution;-><init>(IIIILjava/lang/String;Z)V

    sput-object v0, Lcom/android/camera/Resolution;->Video_720P_3D:Lcom/android/camera/Resolution;

    new-instance v0, Lcom/android/camera/Resolution;

    const/16 v1, 0xa00

    const/16 v2, 0x780

    const v3, 0x7f0a0102

    const v4, 0x7f0a0136

    const-string v5, "SHARP_FIVE_MEGA"

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/Resolution;-><init>(IIIILjava/lang/String;)V

    sput-object v0, Lcom/android/camera/Resolution;->SHARP_FIVE_MEGA:Lcom/android/camera/Resolution;

    new-instance v0, Lcom/android/camera/Resolution;

    const/16 v1, 0xa00

    const/16 v2, 0x5a0

    const v3, 0x7f0a0103

    const v4, 0x7f0a0137

    const-string v5, "SHARP_FIVE_16_9"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/Resolution;-><init>(IIIILjava/lang/String;Z)V

    sput-object v0, Lcom/android/camera/Resolution;->SHARP_FIVE_MEGA_16_9:Lcom/android/camera/Resolution;

    new-instance v0, Lcom/android/camera/Resolution;

    const/16 v1, 0xa00

    const/16 v2, 0x600

    const v3, 0x7f0a0104

    const v4, 0x7f0a0138

    const-string v5, "SHARP_FIVE_5_3"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/Resolution;-><init>(IIIILjava/lang/String;Z)V

    sput-object v0, Lcom/android/camera/Resolution;->SHARP_FIVE_MEGA_5_3:Lcom/android/camera/Resolution;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/camera/Resolution;->resolutionStorage:Ljava/util/ArrayList;

    sget-object v0, Lcom/android/camera/Resolution;->resolutionStorage:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/camera/Resolution;->Video_1080p:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/Resolution;->resolutionStorage:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/camera/Resolution;->Video_720p:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/Resolution;->resolutionStorage:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/camera/Resolution;->Video_QHD:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/Resolution;->resolutionStorage:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/camera/Resolution;->Video_WVGA:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/Resolution;->resolutionStorage:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/camera/Resolution;->Video_HVGA:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/Resolution;->resolutionStorage:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/camera/Resolution;->Video_VGA:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/Resolution;->resolutionStorage:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/camera/Resolution;->Video_QVGA:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/Resolution;->resolutionStorage:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/camera/Resolution;->Video_QCIF:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/Resolution;->resolutionStorage:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/camera/Resolution;->Video_720p_Online:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/Resolution;->resolutionStorage:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/camera/Resolution;->Video_VGA_Online:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/Resolution;->resolutionStorage:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/camera/Resolution;->Video_1080p_Online:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/Resolution;->resolutionStorage:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/camera/Resolution;->Video_QVGA_Service:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/Resolution;->resolutionStorage:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/camera/Resolution;->Video_QCIF_Service:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/Resolution;->resolutionStorage:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/camera/Resolution;->QVGA:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/Resolution;->resolutionStorage:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/camera/Resolution;->VGA_Second:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/Resolution;->resolutionStorage:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/camera/Resolution;->VGA:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/Resolution;->resolutionStorage:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/camera/Resolution;->Capture_720P_4_3:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/Resolution;->resolutionStorage:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/camera/Resolution;->SXGA:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/Resolution;->resolutionStorage:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/camera/Resolution;->UXGA:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/Resolution;->resolutionStorage:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/camera/Resolution;->THREE_MEGA:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/Resolution;->resolutionStorage:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/camera/Resolution;->FOUR_MEGA:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/Resolution;->resolutionStorage:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/camera/Resolution;->FIVE_MEGA:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/Resolution;->resolutionStorage:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/camera/Resolution;->EIGHT_MEGA:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/Resolution;->resolutionStorage:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/camera/Resolution;->SXGA_5_4:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/Resolution;->resolutionStorage:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/camera/Resolution;->CONTACT_STYLE:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/Resolution;->resolutionStorage:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/camera/Resolution;->VGA_3_2:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/Resolution;->resolutionStorage:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/camera/Resolution;->SXGA_3_2:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/Resolution;->resolutionStorage:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/camera/Resolution;->UXGA_3_2:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/Resolution;->resolutionStorage:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/camera/Resolution;->THREE_MEGA_3_2:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/Resolution;->resolutionStorage:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/camera/Resolution;->FOUR_MEGA_3_2:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/Resolution;->resolutionStorage:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/camera/Resolution;->FIVE_MEGA_3_2:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/Resolution;->resolutionStorage:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/camera/Resolution;->EIGHT_MEGA_3_2:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/Resolution;->resolutionStorage:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/camera/Resolution;->VGA_5_3:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/Resolution;->resolutionStorage:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/camera/Resolution;->SXGA_5_3:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/Resolution;->resolutionStorage:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/camera/Resolution;->THREE_MEGA_5_3:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/Resolution;->resolutionStorage:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/camera/Resolution;->FIVE_MEGA_5_3:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/Resolution;->resolutionStorage:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/camera/Resolution;->EIGHT_MEGA_5_3:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/Resolution;->resolutionStorage:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/camera/Resolution;->VGA_16_9:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/Resolution;->resolutionStorage:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/camera/Resolution;->SXGA_16_9:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/Resolution;->resolutionStorage:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/camera/Resolution;->UXGA_16_9:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/Resolution;->resolutionStorage:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/camera/Resolution;->THREE_MEGA_16_9:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/Resolution;->resolutionStorage:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/camera/Resolution;->FIVE_MEGA_16_9:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/Resolution;->resolutionStorage:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/camera/Resolution;->EIGHT_MEGA_16_9:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/Resolution;->resolutionStorage:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/camera/Resolution;->Tablet_VGA_16_9:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/Resolution;->resolutionStorage:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/camera/Resolution;->Tablet_SXGA_16_9:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/Resolution;->resolutionStorage:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/camera/Resolution;->Tablet_FrontCam_SXGA_16_9:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/Resolution;->resolutionStorage:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/camera/Resolution;->Tablet_THREE_MEGA_16_9:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/Resolution;->resolutionStorage:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/camera/Resolution;->Tablet_FIVE_MEGA_16_9:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/Resolution;->resolutionStorage:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/camera/Resolution;->Capture_1080P_3D:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/Resolution;->resolutionStorage:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/camera/Resolution;->Video_720P_3D:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/Resolution;->resolutionStorage:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/camera/Resolution;->SHARP_FIVE_MEGA:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/Resolution;->resolutionStorage:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/camera/Resolution;->SHARP_FIVE_MEGA_16_9:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/Resolution;->resolutionStorage:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/camera/Resolution;->SHARP_FIVE_MEGA_5_3:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/camera/Resolution;->width:I

    iput v0, p0, Lcom/android/camera/Resolution;->height:I

    iput v0, p0, Lcom/android/camera/Resolution;->mNameResId:I

    iput v0, p0, Lcom/android/camera/Resolution;->mDescriptionResId:I

    iput-boolean v0, p0, Lcom/android/camera/Resolution;->mbWideRatio:Z

    iput v0, p0, Lcom/android/camera/Resolution;->mPriority:I

    return-void
.end method

.method protected constructor <init>(IIIILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/camera/Resolution;->width:I

    iput v0, p0, Lcom/android/camera/Resolution;->height:I

    iput v0, p0, Lcom/android/camera/Resolution;->mNameResId:I

    iput v0, p0, Lcom/android/camera/Resolution;->mDescriptionResId:I

    iput-boolean v0, p0, Lcom/android/camera/Resolution;->mbWideRatio:Z

    iput v0, p0, Lcom/android/camera/Resolution;->mPriority:I

    iput p1, p0, Lcom/android/camera/Resolution;->width:I

    iput p2, p0, Lcom/android/camera/Resolution;->height:I

    iput p3, p0, Lcom/android/camera/Resolution;->mNameResId:I

    iput p4, p0, Lcom/android/camera/Resolution;->mDescriptionResId:I

    iput-object p5, p0, Lcom/android/camera/Resolution;->mName:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/android/camera/Resolution;->mbWideRatio:Z

    iput v0, p0, Lcom/android/camera/Resolution;->mPriority:I

    return-void
.end method

.method protected constructor <init>(IIIILjava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/camera/Resolution;->width:I

    iput v0, p0, Lcom/android/camera/Resolution;->height:I

    iput v0, p0, Lcom/android/camera/Resolution;->mNameResId:I

    iput v0, p0, Lcom/android/camera/Resolution;->mDescriptionResId:I

    iput-boolean v0, p0, Lcom/android/camera/Resolution;->mbWideRatio:Z

    iput v0, p0, Lcom/android/camera/Resolution;->mPriority:I

    iput p1, p0, Lcom/android/camera/Resolution;->width:I

    iput p2, p0, Lcom/android/camera/Resolution;->height:I

    iput p3, p0, Lcom/android/camera/Resolution;->mNameResId:I

    iput p4, p0, Lcom/android/camera/Resolution;->mDescriptionResId:I

    iput-object p5, p0, Lcom/android/camera/Resolution;->mName:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/android/camera/Resolution;->mbWideRatio:Z

    iput p6, p0, Lcom/android/camera/Resolution;->mPriority:I

    return-void
.end method

.method protected constructor <init>(IIIILjava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/camera/Resolution;->width:I

    iput v0, p0, Lcom/android/camera/Resolution;->height:I

    iput v0, p0, Lcom/android/camera/Resolution;->mNameResId:I

    iput v0, p0, Lcom/android/camera/Resolution;->mDescriptionResId:I

    iput-boolean v0, p0, Lcom/android/camera/Resolution;->mbWideRatio:Z

    iput v0, p0, Lcom/android/camera/Resolution;->mPriority:I

    iput p1, p0, Lcom/android/camera/Resolution;->width:I

    iput p2, p0, Lcom/android/camera/Resolution;->height:I

    iput p3, p0, Lcom/android/camera/Resolution;->mNameResId:I

    iput p4, p0, Lcom/android/camera/Resolution;->mDescriptionResId:I

    iput-object p5, p0, Lcom/android/camera/Resolution;->mName:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/android/camera/Resolution;->mbWideRatio:Z

    iput v0, p0, Lcom/android/camera/Resolution;->mPriority:I

    return-void
.end method

.method public static getResolution(Landroid/content/Context;Ljava/lang/String;)Lcom/android/camera/Resolution;
    .locals 3

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/android/camera/Resolution;->resolutionStorage:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    sget-object v2, Lcom/android/camera/Resolution;->resolutionStorage:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/Resolution;

    iget-object v0, v2, Lcom/android/camera/Resolution;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/camera/Resolution;->resolutionStorage:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/Resolution;

    :goto_1
    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public compareTo(Lcom/android/camera/Resolution;)I
    .locals 4

    iget v1, p0, Lcom/android/camera/Resolution;->mPriority:I

    iget v2, p1, Lcom/android/camera/Resolution;->mPriority:I

    if-eq v1, v2, :cond_1

    iget v1, p1, Lcom/android/camera/Resolution;->mPriority:I

    iget v2, p0, Lcom/android/camera/Resolution;->mPriority:I

    sub-int v0, v1, v2

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/android/camera/Resolution;->width:I

    iget v2, p0, Lcom/android/camera/Resolution;->height:I

    mul-int/2addr v1, v2

    iget v2, p1, Lcom/android/camera/Resolution;->width:I

    iget v3, p1, Lcom/android/camera/Resolution;->height:I

    mul-int/2addr v2, v3

    sub-int v0, v1, v2

    if-nez v0, :cond_0

    iget v1, p0, Lcom/android/camera/Resolution;->width:I

    iget v2, p1, Lcom/android/camera/Resolution;->width:I

    sub-int v0, v1, v2

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/camera/Resolution;

    invoke-virtual {p0, p1}, Lcom/android/camera/Resolution;->compareTo(Lcom/android/camera/Resolution;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    move-object v0, p1

    check-cast v0, Lcom/android/camera/Resolution;

    iget v1, p0, Lcom/android/camera/Resolution;->width:I

    iget v2, v0, Lcom/android/camera/Resolution;->width:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/camera/Resolution;->height:I

    iget v2, v0, Lcom/android/camera/Resolution;->height:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/camera/Resolution;->mName:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/camera/Resolution;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/android/camera/Resolution;->height:I

    return v0
.end method

.method public getKeyName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/Resolution;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNameResId()I
    .locals 1

    iget v0, p0, Lcom/android/camera/Resolution;->mNameResId:I

    return v0
.end method

.method public getResolutionDescription()I
    .locals 1

    iget v0, p0, Lcom/android/camera/Resolution;->mDescriptionResId:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/android/camera/Resolution;->width:I

    return v0
.end method

.method public isWideRatio()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/Resolution;->mbWideRatio:Z

    return v0
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/Resolution;->height:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/Resolution;->width:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/Resolution;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/Resolution;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/Resolution;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
