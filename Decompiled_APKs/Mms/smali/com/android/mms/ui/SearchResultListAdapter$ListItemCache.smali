.class final Lcom/android/mms/ui/SearchResultListAdapter$ListItemCache;
.super Ljava/lang/Object;
.source "SearchResultListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SearchResultListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ListItemCache"
.end annotation


# instance fields
.field public mAddrView:Landroid/widget/TextView;

.field public mBodyView:Landroid/widget/TextView;

.field public mPhotoIcon:Landroid/widget/ImageView;

.field public mTimeStamp:Landroid/widget/TextView;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 188
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
