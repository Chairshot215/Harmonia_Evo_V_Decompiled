.class Lcom/android/htccontacts/HtcDeleteCallHistoryActivity$1;
.super Ljava/lang/Object;
.source "HtcDeleteCallHistoryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;->setListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 291
    iput-object p1, p0, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity$1;->this$0:Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity$1;->this$0:Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;->doClickOk()V

    .line 294
    return-void
.end method
