.class Lcom/android/htccontacts/ContactPhoneEmailDataPicker$QueryCookie;
.super Ljava/lang/Object;
.source "ContactPhoneEmailDataPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ContactPhoneEmailDataPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueryCookie"
.end annotation


# instance fields
.field isLimit:Z

.field queryMode:I

.field tabMode:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 2801
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2804
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$QueryCookie;->isLimit:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/htccontacts/ContactPhoneEmailDataPicker$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2801
    invoke-direct {p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$QueryCookie;-><init>()V

    return-void
.end method
