.class Lcom/android/htccontacts/HtcViewCompanyContactActivity$2;
.super Ljava/lang/Object;
.source "HtcViewCompanyContactActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/HtcViewCompanyContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/HtcViewCompanyContactActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/HtcViewCompanyContactActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 369
    iput-object p1, p0, Lcom/android/htccontacts/HtcViewCompanyContactActivity$2;->this$0:Lcom/android/htccontacts/HtcViewCompanyContactActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewCompanyContactActivity$2;->this$0:Lcom/android/htccontacts/HtcViewCompanyContactActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/HtcViewCompanyContactActivity$2;->this$0:Lcom/android/htccontacts/HtcViewCompanyContactActivity;

    iget-boolean v0, v0, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->isPause:Z

    if-nez v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewCompanyContactActivity$2;->this$0:Lcom/android/htccontacts/HtcViewCompanyContactActivity;

    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->dismissDialog(I)V

    .line 374
    :cond_0
    return-void
.end method
