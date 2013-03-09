.class public Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;
.super Ljava/lang/Object;
.source "HtcContactInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/HtcContactInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContactInfoEntry"
.end annotation


# instance fields
.field public mData:Ljava/lang/String;

.field mDeleteView:Landroid/view/View;

.field mEditText:Landroid/widget/EditText;

.field mExtraData:Ljava/lang/String;

.field public mIsDeleted:Z

.field mIsPrimary:Z

.field public mKind:I

.field public mLabel:Ljava/lang/String;

.field public mProtocol:I

.field mSpinner:Landroid/widget/Spinner;

.field public mType:I

.field public mUri:Landroid/net/Uri;

.field view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 331
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 333
    return-void
.end method
