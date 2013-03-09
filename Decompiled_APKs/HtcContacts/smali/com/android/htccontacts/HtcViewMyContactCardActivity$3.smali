.class Lcom/android/htccontacts/HtcViewMyContactCardActivity$3;
.super Ljava/lang/Object;
.source "HtcViewMyContactCardActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/HtcViewMyContactCardActivity;->newEditEntry()Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/HtcViewMyContactCardActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/HtcViewMyContactCardActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1069
    iput-object p1, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity$3;->this$0:Lcom/android/htccontacts/HtcViewMyContactCardActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1071
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity$3;->this$0:Lcom/android/htccontacts/HtcViewMyContactCardActivity;

    invoke-virtual {v0, p1}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->defaultItemAction(Landroid/view/View;)V

    .line 1072
    return-void
.end method
