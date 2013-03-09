.class final Lcom/android/htccontacts/ContactPhoneEmailDataPicker$Status;
.super Ljava/lang/Object;
.source "ContactPhoneEmailDataPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ContactPhoneEmailDataPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Status"
.end annotation


# instance fields
.field public Code:I

.field public final STATUS_ERROR:I

.field public final STATUS_OK:I

.field public nCountOfStatus:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 3497
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3498
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$Status;->Code:I

    .line 3499
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$Status;->nCountOfStatus:I

    .line 3500
    iget v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$Status;->nCountOfStatus:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$Status;->nCountOfStatus:I

    iput v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$Status;->STATUS_OK:I

    .line 3501
    iget v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$Status;->nCountOfStatus:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$Status;->nCountOfStatus:I

    iput v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$Status;->STATUS_ERROR:I

    return-void
.end method
