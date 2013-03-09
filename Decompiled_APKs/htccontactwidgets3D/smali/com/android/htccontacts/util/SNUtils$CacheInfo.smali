.class public Lcom/android/htccontacts/util/SNUtils$CacheInfo;
.super Ljava/lang/Object;
.source "SNUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/util/SNUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CacheInfo"
.end annotation


# instance fields
.field public _id:J

.field public icon_time:J

.field public photo_path:Ljava/lang/String;

.field public update:I


# direct methods
.method public constructor <init>(JLjava/lang/String;IJ)V
    .locals 0
    .parameter "id"
    .parameter "photo"
    .parameter "upd"
    .parameter "time"

    .prologue
    .line 484
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 485
    iput-wide p1, p0, Lcom/android/htccontacts/util/SNUtils$CacheInfo;->_id:J

    .line 486
    iput-object p3, p0, Lcom/android/htccontacts/util/SNUtils$CacheInfo;->photo_path:Ljava/lang/String;

    .line 487
    iput p4, p0, Lcom/android/htccontacts/util/SNUtils$CacheInfo;->update:I

    .line 488
    iput-wide p5, p0, Lcom/android/htccontacts/util/SNUtils$CacheInfo;->icon_time:J

    .line 489
    return-void
.end method
