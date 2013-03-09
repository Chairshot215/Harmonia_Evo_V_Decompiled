.class public Lcom/android/htccontacts/util/PhotoUtils$BitmapValue;
.super Ljava/lang/Object;
.source "PhotoUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/util/PhotoUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BitmapValue"
.end annotation


# instance fields
.field public image:Landroid/graphics/drawable/BitmapDrawable;

.field public refCont:I

.field final synthetic this$0:Lcom/android/htccontacts/util/PhotoUtils;


# direct methods
.method private constructor <init>(Lcom/android/htccontacts/util/PhotoUtils;)V
    .locals 0
    .parameter

    .prologue
    .line 256
    iput-object p1, p0, Lcom/android/htccontacts/util/PhotoUtils$BitmapValue;->this$0:Lcom/android/htccontacts/util/PhotoUtils;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 258
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/htccontacts/util/PhotoUtils;Lcom/android/htccontacts/util/PhotoUtils$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 251
    invoke-direct {p0, p1}, Lcom/android/htccontacts/util/PhotoUtils$BitmapValue;-><init>(Lcom/android/htccontacts/util/PhotoUtils;)V

    return-void
.end method
