.class Lcom/android/htccontacts/HtcViewContactDetailActivity$2;
.super Ljava/lang/Object;
.source "HtcViewContactDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/HtcViewContactDetailActivity;->updateStatusResult(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/HtcViewContactDetailActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/HtcViewContactDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 388
    iput-object p1, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity$2;->this$0:Lcom/android/htccontacts/HtcViewContactDetailActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity$2;->this$0:Lcom/android/htccontacts/HtcViewContactDetailActivity;

    #calls: Lcom/android/htccontacts/HtcViewContactDetailActivity;->considerBindData()V
    invoke-static {v0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->access$100(Lcom/android/htccontacts/HtcViewContactDetailActivity;)V

    .line 391
    return-void
.end method
