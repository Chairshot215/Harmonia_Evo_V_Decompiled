.class Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2$1;
.super Ljava/lang/Object;
.source "MakecallSelectPeopleActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2;


# direct methods
.method constructor <init>(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2;)V
    .locals 0
    .parameter

    .prologue
    .line 2270
    iput-object p1, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2$1;->this$1:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2272
    const/16 v0, 0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 2273
    iget-object v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2$1;->this$1:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2;

    iget-object v0, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #calls: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->renewCursor()V
    invoke-static {v0}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$3900(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)V

    .line 2274
    iget-object v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2$1;->this$1:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2;

    iget-object v0, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mNeedRefreshCursor:Z
    invoke-static {v0, v1}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$2402(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;Z)Z

    .line 2275
    return-void
.end method
