.class public Lcom/htc/android/epst/wimax/WiMaxRecord;
.super Ljava/lang/Object;
.source "WiMaxRecord.java"


# static fields
.field public static WIMAX_HTP:I

.field public static WIMAX_PROPERTY:I


# instance fields
.field public propertyvalue:Ljava/lang/String;

.field public wimaxID:Ljava/lang/String;

.field public wimaxType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const/4 v0, 0x0

    sput v0, Lcom/htc/android/epst/wimax/WiMaxRecord;->WIMAX_PROPERTY:I

    .line 8
    const/4 v0, 0x1

    sput v0, Lcom/htc/android/epst/wimax/WiMaxRecord;->WIMAX_HTP:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
