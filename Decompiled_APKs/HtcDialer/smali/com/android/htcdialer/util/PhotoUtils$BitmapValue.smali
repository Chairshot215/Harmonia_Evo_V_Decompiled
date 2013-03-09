.class public Lcom/android/htcdialer/util/PhotoUtils$BitmapValue;
.super Ljava/lang/Object;
.source "PhotoUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htcdialer/util/PhotoUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BitmapValue"
.end annotation


# instance fields
.field public image:Landroid/graphics/drawable/BitmapDrawable;

.field public refCont:I

.field final synthetic this$0:Lcom/android/htcdialer/util/PhotoUtils;


# direct methods
.method private constructor <init>(Lcom/android/htcdialer/util/PhotoUtils;)V
    .locals 0
    .parameter

    .prologue
    .line 269
    iput-object p1, p0, Lcom/android/htcdialer/util/PhotoUtils$BitmapValue;->this$0:Lcom/android/htcdialer/util/PhotoUtils;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 271
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/htcdialer/util/PhotoUtils;Lcom/android/htcdialer/util/PhotoUtils$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 264
    invoke-direct {p0, p1}, Lcom/android/htcdialer/util/PhotoUtils$BitmapValue;-><init>(Lcom/android/htcdialer/util/PhotoUtils;)V

    return-void
.end method
