.class Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity$1;
.super Ljava/lang/Object;
.source "HtcDeleteBlockCallActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity;->setListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 293
    iput-object p1, p0, Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity$1;->this$0:Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity$1;->this$0:Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity;->doClickOk()V

    .line 296
    return-void
.end method
