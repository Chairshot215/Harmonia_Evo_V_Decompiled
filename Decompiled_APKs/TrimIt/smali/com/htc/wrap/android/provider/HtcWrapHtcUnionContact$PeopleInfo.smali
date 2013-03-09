.class public final Lcom/htc/wrap/android/provider/HtcWrapHtcUnionContact$PeopleInfo;
.super Ljava/lang/Object;
.source "HtcWrapHtcUnionContact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/provider/HtcWrapHtcUnionContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PeopleInfo"
.end annotation


# static fields
.field public static final EXTRA_GROUP_COLUMN:I = 0x7

.field public static final FIRSTNAME_COLUMN:I = 0x3

.field public static final ID_COLUMN:I = 0x0

.field public static final LASTNAME_COLUMN:I = 0x4

.field public static final NAME_COLUMN:I = 0x1

.field public static final PERSONAL_RINGTONE_COLUMN:I = 0x5

.field public static final PICASA_URL_COLUMN:I = 0x6

.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 378
    sget-object v0, Landroid/provider/HtcUnionContact$PeopleInfo;->PROJECTION:[Ljava/lang/String;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapHtcUnionContact$PeopleInfo;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
