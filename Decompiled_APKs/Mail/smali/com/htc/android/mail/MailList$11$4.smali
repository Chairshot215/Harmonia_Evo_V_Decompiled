.class Lcom/htc/android/mail/MailList$11$4;
.super Ljava/lang/Object;
.source "MailList.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/MailList$11;->getListView()Lcom/htc/widget/HtcListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/mail/MailList$11;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/MailList$11;)V
    .locals 0
    .parameter

    .prologue
    .line 1696
    iput-object p1, p0, Lcom/htc/android/mail/MailList$11$4;->this$1:Lcom/htc/android/mail/MailList$11;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 9
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
    .line 1698
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    iget-object v0, p0, Lcom/htc/android/mail/MailList$11$4;->this$1:Lcom/htc/android/mail/MailList$11;

    iget-object v0, v0, Lcom/htc/android/mail/MailList$11;->this$0:Lcom/htc/android/mail/MailList;

    move-object v1, p1

    check-cast v1, Lcom/htc/widget/HtcListView;

    add-int/lit8 v3, p3, -0x1

    const-wide/16 v6, -0x1

    iget-object v2, p0, Lcom/htc/android/mail/MailList$11$4;->this$1:Lcom/htc/android/mail/MailList$11;

    iget-object v2, v2, Lcom/htc/android/mail/MailList$11;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;
    invoke-static {v2}, Lcom/htc/android/mail/MailList;->access$1100(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/MailList$TabInfo;

    move-result-object v8

    move-object v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v8}, Lcom/htc/android/mail/MailList;->onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJJLcom/htc/android/mail/MailList$TabInfo;)V

    .line 1699
    return-void
.end method
