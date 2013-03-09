.class Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$3;
.super Landroid/os/Handler;
.source "MakecallSelectPeopleActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;


# direct methods
.method constructor <init>(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2354
    iput-object p1, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$3;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 2360
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2369
    return-void
.end method
