.class Lcom/android/htccontacts/CommonContactAttributePicker$QueryCookie;
.super Ljava/lang/Object;
.source "CommonContactAttributePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/CommonContactAttributePicker;
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
    .line 2171
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2174
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker$QueryCookie;->isLimit:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/htccontacts/CommonContactAttributePicker$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2171
    invoke-direct {p0}, Lcom/android/htccontacts/CommonContactAttributePicker$QueryCookie;-><init>()V

    return-void
.end method
