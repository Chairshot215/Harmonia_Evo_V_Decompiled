.class Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker$1;
.super Ljava/lang/Object;
.source "HtcGroupBlackListPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;->handleButtonFrameView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 251
    iput-object p1, p0, Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker$1;->this$0:Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker$1;->this$0:Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;

    invoke-virtual {v0}, Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;->doClickOk()V

    .line 254
    return-void
.end method
