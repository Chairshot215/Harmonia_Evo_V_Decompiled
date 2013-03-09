.class Lcom/android/htcdialer/DialerService$CallLogColumnIndex;
.super Ljava/lang/Object;
.source "DialerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htcdialer/DialerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallLogColumnIndex"
.end annotation


# static fields
.field public static final CITY_ID:I = 0x5

.field public static final CNAME:I = 0x6

.field public static final CONTACT_ID:I = 0x4

#the value of this static final field might be set in the static constructor
.field public static final CONTACT_TIMES:I = 0x0

.field public static final DATE:I = 0x2

.field public static final NUMBER:I = 0x1

.field public static final TYPE:I = 0x3

.field public static final _ID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 225
    sget-boolean v0, Lcom/htc/util/phone/CityIdInfo;->ENABLED:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    :goto_0
    sput v0, Lcom/android/htcdialer/DialerService$CallLogColumnIndex;->CONTACT_TIMES:I

    return-void

    :cond_0
    const/4 v0, 0x5

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 217
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
