.class public Lcom/android/htccontacts/ui/EditContactActivity2$EditMyContactPhotoData;
.super Ljava/lang/Object;
.source "EditContactActivity2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ui/EditContactActivity2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EditMyContactPhotoData"
.end annotation


# instance fields
.field hasNonSocialnetworkPhoto:Z

.field myContactId:J

.field myContactRawId:J

.field nonSocialnetworkPhoto:Landroid/graphics/Bitmap;

.field valuesDeltaPhoto:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 1126
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$EditMyContactPhotoData;->hasNonSocialnetworkPhoto:Z

    .line 1128
    iput-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2$EditMyContactPhotoData;->nonSocialnetworkPhoto:Landroid/graphics/Bitmap;

    .line 1129
    iput-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2$EditMyContactPhotoData;->valuesDeltaPhoto:Ljava/util/ArrayList;

    .line 1130
    iput-wide v2, p0, Lcom/android/htccontacts/ui/EditContactActivity2$EditMyContactPhotoData;->myContactId:J

    .line 1131
    iput-wide v2, p0, Lcom/android/htccontacts/ui/EditContactActivity2$EditMyContactPhotoData;->myContactRawId:J

    return-void
.end method
