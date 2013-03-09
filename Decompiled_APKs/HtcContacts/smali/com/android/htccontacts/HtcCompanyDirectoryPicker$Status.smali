.class final Lcom/android/htccontacts/HtcCompanyDirectoryPicker$Status;
.super Ljava/lang/Object;
.source "HtcCompanyDirectoryPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/HtcCompanyDirectoryPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Status"
.end annotation


# static fields
.field public static final STATUS_ERROR:I

.field public static final STATUS_OK:I

.field public static nCountOfStatus:I


# instance fields
.field public Code:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 984
    const/4 v0, 0x0

    sput v0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$Status;->nCountOfStatus:I

    .line 985
    sget v0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$Status;->nCountOfStatus:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$Status;->nCountOfStatus:I

    sput v0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$Status;->STATUS_OK:I

    .line 986
    sget v0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$Status;->nCountOfStatus:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$Status;->nCountOfStatus:I

    sput v0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$Status;->STATUS_ERROR:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 981
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 983
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$Status;->Code:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/htccontacts/HtcCompanyDirectoryPicker$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 981
    invoke-direct {p0}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$Status;-><init>()V

    return-void
.end method
