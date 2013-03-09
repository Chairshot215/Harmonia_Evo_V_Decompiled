.class public Lcom/android/htccontacts/model/SIMAccount;
.super Ljava/lang/Object;
.source "SIMAccount.java"


# static fields
.field public static sIconId:I

.field public static sTitleId:I

.field public static sUIMTitleId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4
    const v0, 0x7f0a0027

    sput v0, Lcom/android/htccontacts/model/SIMAccount;->sTitleId:I

    .line 5
    const v0, 0x7f0a0026

    sput v0, Lcom/android/htccontacts/model/SIMAccount;->sUIMTitleId:I

    .line 6
    const/4 v0, -0x1

    sput v0, Lcom/android/htccontacts/model/SIMAccount;->sIconId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
