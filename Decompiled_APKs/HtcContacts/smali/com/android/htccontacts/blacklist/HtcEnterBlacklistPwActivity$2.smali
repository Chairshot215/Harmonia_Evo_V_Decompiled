.class Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity$2;
.super Ljava/lang/Object;
.source "HtcEnterBlacklistPwActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;->initUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity$2;->this$0:Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity$2;->this$0:Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;

    #calls: Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;->doRevertAction()V
    invoke-static {v0}, Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;->access$100(Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;)V

    .line 122
    return-void
.end method
