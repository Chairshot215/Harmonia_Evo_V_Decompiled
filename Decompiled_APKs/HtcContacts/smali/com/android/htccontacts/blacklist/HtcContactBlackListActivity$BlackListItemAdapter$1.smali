.class Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$BlackListItemAdapter$1;
.super Ljava/lang/Object;
.source "HtcContactBlackListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$BlackListItemAdapter;->getInsertView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$BlackListItemAdapter;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$BlackListItemAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 904
    iput-object p1, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$BlackListItemAdapter$1;->this$1:Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$BlackListItemAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 907
    iget-object v0, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$BlackListItemAdapter$1;->this$1:Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$BlackListItemAdapter;

    iget-object v0, v0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$BlackListItemAdapter;->this$0:Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;

    const/16 v1, 0xf1

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->showDialog(I)V

    .line 908
    return-void
.end method
