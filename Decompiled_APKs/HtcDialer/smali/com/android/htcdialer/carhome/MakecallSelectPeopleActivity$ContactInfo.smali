.class public Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;
.super Ljava/lang/Object;
.source "MakecallSelectPeopleActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ContactInfo"
.end annotation


# instance fields
.field public PhotoId:Ljava/lang/String;

.field public accountType:Ljava/lang/String;

.field public action:Ljava/lang/String;

.field public bHasContactPhotoId:Z

.field public bHasPhoneNumber:Z

.field public bIsTouch:Z

.field public call_type:J

.field public count:I

.field public displayname:Ljava/lang/String;

.field public item_type:J

.field public name:Ljava/lang/String;

.field public number_type:J

.field public photo:Landroid/graphics/Bitmap;

.field public pid:J

.field public strPrimaryNum:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

.field public view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 300
    iput-object p1, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
