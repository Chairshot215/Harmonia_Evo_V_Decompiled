.class public final Lcom/htc/wrap/android/provider/HtcWrapHtcUnionContact$ContactMethodInfo;
.super Ljava/lang/Object;
.source "HtcWrapHtcUnionContact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/provider/HtcWrapHtcUnionContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContactMethodInfo"
.end annotation


# static fields
.field public static final AUX_DATA_COLUMN:I = 0x4

.field public static final DATA_COLUMN:I = 0x2

.field public static final ID_COLUMN:I = 0x0

.field public static final ISPROMARY_COLUMN:I = 0x5

.field public static final KIND_COLUMN:I = 0x1

.field public static final PROJECTION:[Ljava/lang/String; = null

.field public static final TYPE_COLUMN:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 432
    sget-object v0, Landroid/provider/HtcUnionContact$ContactMethodInfo;->PROJECTION:[Ljava/lang/String;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapHtcUnionContact$ContactMethodInfo;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
