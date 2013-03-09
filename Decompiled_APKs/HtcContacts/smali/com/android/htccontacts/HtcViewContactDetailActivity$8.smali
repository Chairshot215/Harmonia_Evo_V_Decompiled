.class Lcom/android/htccontacts/HtcViewContactDetailActivity$8;
.super Ljava/lang/Object;
.source "HtcViewContactDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/HtcViewContactDetailActivity;->setPrimaryNumberProcess(JILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/HtcViewContactDetailActivity;

.field final synthetic val$number:Ljava/lang/String;

.field final synthetic val$phoneId:J

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/android/htccontacts/HtcViewContactDetailActivity;ILjava/lang/String;J)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3918
    iput-object p1, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity$8;->this$0:Lcom/android/htccontacts/HtcViewContactDetailActivity;

    iput p2, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity$8;->val$type:I

    iput-object p3, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity$8;->val$number:Ljava/lang/String;

    iput-wide p4, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity$8;->val$phoneId:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 3920
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 3921
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity$8;->this$0:Lcom/android/htccontacts/HtcViewContactDetailActivity;

    iget v1, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity$8;->val$type:I

    iget-object v2, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity$8;->val$number:Ljava/lang/String;

    #calls: Lcom/android/htccontacts/HtcViewContactDetailActivity;->updateDefaultCompositeSendMsgNumber(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->access$1400(Lcom/android/htccontacts/HtcViewContactDetailActivity;ILjava/lang/String;)V

    .line 3922
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity$8;->this$0:Lcom/android/htccontacts/HtcViewContactDetailActivity;

    iget-wide v1, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity$8;->val$phoneId:J

    iget-object v3, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity$8;->val$number:Ljava/lang/String;

    #calls: Lcom/android/htccontacts/HtcViewContactDetailActivity;->setPrimaryNumber(JLjava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->access$1500(Lcom/android/htccontacts/HtcViewContactDetailActivity;JLjava/lang/String;)V

    .line 3923
    return-void
.end method
