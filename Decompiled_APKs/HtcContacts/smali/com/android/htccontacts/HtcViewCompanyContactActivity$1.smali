.class Lcom/android/htccontacts/HtcViewCompanyContactActivity$1;
.super Ljava/lang/Object;
.source "HtcViewCompanyContactActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/HtcViewCompanyContactActivity;->buildAddEntry()V
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
    .line 178
    iput-object p1, p0, Lcom/android/htccontacts/HtcViewCompanyContactActivity$1;->this$0:Lcom/android/htccontacts/HtcViewCompanyContactActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewCompanyContactActivity$1;->this$0:Lcom/android/htccontacts/HtcViewCompanyContactActivity;

    #calls: Lcom/android/htccontacts/HtcViewCompanyContactActivity;->addAndViewContact()V
    invoke-static {v0}, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->access$000(Lcom/android/htccontacts/HtcViewCompanyContactActivity;)V

    .line 182
    return-void
.end method
