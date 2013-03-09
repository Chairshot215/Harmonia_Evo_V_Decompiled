.class Lcom/android/htccontacts/ArrageGroupActivity$ViewTag;
.super Ljava/lang/Object;
.source "ArrageGroupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ArrageGroupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewTag"
.end annotation


# instance fields
.field public iconView:Landroid/widget/ImageView;

.field public primaryBuffer:Landroid/database/CharArrayBuffer;

.field public primaryTextView:Lcom/htc/widget/HtcListItem2LineText;

.field public recycledBitmap:Landroid/graphics/Bitmap;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 424
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 428
    new-instance v0, Landroid/database/CharArrayBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/android/htccontacts/ArrageGroupActivity$ViewTag;->primaryBuffer:Landroid/database/CharArrayBuffer;

    return-void
.end method
