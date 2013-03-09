.class public Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$DialerRawId;
.super Ljava/lang/Object;
.source "MakecallSelectPeopleActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DialerRawId"
.end annotation


# instance fields
.field public Calls_id:J

.field public Number_Type:J

.field public PhotoId:Ljava/lang/String;

.field public Raw_id:J

.field public accountType:Ljava/lang/String;

.field public displayname:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;


# direct methods
.method public constructor <init>(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)V
    .locals 2
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    .line 333
    iput-object p1, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$DialerRawId;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 334
    iput-wide v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$DialerRawId;->Calls_id:J

    .line 335
    iput-wide v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$DialerRawId;->Raw_id:J

    .line 336
    iput-wide v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$DialerRawId;->Number_Type:J

    return-void
.end method
