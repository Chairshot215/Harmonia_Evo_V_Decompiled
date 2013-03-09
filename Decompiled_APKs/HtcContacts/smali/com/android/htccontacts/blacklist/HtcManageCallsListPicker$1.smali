.class Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker$1;
.super Ljava/lang/Object;
.source "HtcManageCallsListPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->handleButtonFrameView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 240
    iput-object p1, p0, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker$1;->this$0:Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker$1;->this$0:Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;

    invoke-virtual {v0}, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->doClickOk()V

    .line 243
    return-void
.end method
