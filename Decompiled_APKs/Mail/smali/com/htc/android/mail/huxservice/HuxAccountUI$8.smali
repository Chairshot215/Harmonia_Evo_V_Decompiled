.class Lcom/htc/android/mail/huxservice/HuxAccountUI$8;
.super Ljava/lang/Object;
.source "HuxAccountUI.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/huxservice/HuxAccountUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/huxservice/HuxAccountUI;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/huxservice/HuxAccountUI;)V
    .locals 0
    .parameter

    .prologue
    .line 385
    iput-object p1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI$8;->this$0:Lcom/htc/android/mail/huxservice/HuxAccountUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 387
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI$8;->this$0:Lcom/htc/android/mail/huxservice/HuxAccountUI;

    iget-object v0, v0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiHuxSetAccount:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    invoke-virtual {v0, p2, p3}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->selectSignInAccount(Landroid/view/View;I)V

    .line 388
    return-void
.end method
