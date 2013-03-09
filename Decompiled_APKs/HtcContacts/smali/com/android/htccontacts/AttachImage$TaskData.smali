.class final Lcom/android/htccontacts/AttachImage$TaskData;
.super Ljava/lang/Object;
.source "AttachImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/AttachImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TaskData"
.end annotation


# instance fields
.field bitmap:Landroid/graphics/Bitmap;

.field contactId:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 326
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/htccontacts/AttachImage$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 326
    invoke-direct {p0}, Lcom/android/htccontacts/AttachImage$TaskData;-><init>()V

    return-void
.end method
