.class Lcom/android/mms/wrapper/HttpDateTime$TimeOfDay;
.super Ljava/lang/Object;
.source "HttpDateTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/wrapper/HttpDateTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeOfDay"
.end annotation


# instance fields
.field hour:I

.field minute:I

.field second:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/wrapper/HttpDateTime$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/mms/wrapper/HttpDateTime$TimeOfDay;-><init>()V

    return-void
.end method
