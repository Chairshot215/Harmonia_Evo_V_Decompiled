.class public final Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter$PhotoInfo;
.super Ljava/lang/Object;
.source "PhotoPeopleCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PhotoInfo"
.end annotation


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public contactId:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public photoId:J

.field public photoUrl:Ljava/lang/String;

.field public position:I


# direct methods
.method public constructor <init>(IJ)V
    .locals 0
    .parameter "position"
    .parameter "contactId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 464
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 465
    iput p1, p0, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter$PhotoInfo;->position:I

    .line 466
    iput-wide p2, p0, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter$PhotoInfo;->contactId:J

    .line 467
    return-void
.end method

.method public constructor <init>(IJLjava/lang/String;)V
    .locals 0
    .parameter "position"
    .parameter "photoId"
    .parameter "photoUrl"

    .prologue
    .line 485
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 486
    iput p1, p0, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter$PhotoInfo;->position:I

    .line 487
    iput-wide p2, p0, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter$PhotoInfo;->photoId:J

    .line 488
    iput-object p4, p0, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter$PhotoInfo;->photoUrl:Ljava/lang/String;

    .line 489
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "position"
    .parameter "photoUrl"

    .prologue
    .line 474
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 475
    iput p1, p0, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter$PhotoInfo;->position:I

    .line 476
    iput-object p2, p0, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter$PhotoInfo;->photoUrl:Ljava/lang/String;

    .line 477
    return-void
.end method
