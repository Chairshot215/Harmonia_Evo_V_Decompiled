.class Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView$1;
.super Ljava/lang/Object;
.source "PhoneNameEditableHeaderView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;)V
    .locals 0
    .parameter

    .prologue
    .line 755
    iput-object p1, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView$1;->this$0:Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 757
    invoke-static {}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 758
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView$1;->this$0:Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;

    invoke-static {}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->access$100()I

    move-result v1

    #calls: Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->limitNameTextLength(I)V
    invoke-static {v0, v1}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->access$200(Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;I)V

    .line 762
    :goto_0
    return-void

    .line 760
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView$1;->this$0:Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;

    #calls: Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->unLimitNameTextLength()V
    invoke-static {v0}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->access$300(Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;)V

    goto :goto_0
.end method
