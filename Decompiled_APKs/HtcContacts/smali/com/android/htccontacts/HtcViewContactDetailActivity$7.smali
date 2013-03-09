.class Lcom/android/htccontacts/HtcViewContactDetailActivity$7;
.super Ljava/lang/Object;
.source "HtcViewContactDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/HtcViewContactDetailActivity;->getCompositeSendMsgRunnable(I)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/HtcViewContactDetailActivity;

.field final synthetic val$which:I


# direct methods
.method constructor <init>(Lcom/android/htccontacts/HtcViewContactDetailActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3892
    iput-object p1, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity$7;->this$0:Lcom/android/htccontacts/HtcViewContactDetailActivity;

    iput p2, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity$7;->val$which:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3894
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity$7;->this$0:Lcom/android/htccontacts/HtcViewContactDetailActivity;

    iget v1, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity$7;->val$which:I

    #calls: Lcom/android/htccontacts/HtcViewContactDetailActivity;->updateDefaultCompositeSendMsgNumber(I)V
    invoke-static {v0, v1}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->access$1300(Lcom/android/htccontacts/HtcViewContactDetailActivity;I)V

    .line 3895
    return-void
.end method
