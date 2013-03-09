.class Lcom/htc/android/mail/MailList$15$2;
.super Ljava/lang/Object;
.source "MailList.java"

# interfaces
.implements Lcom/htc/widget/HtcExpandableListView$OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/MailList$15;->getListView()Lcom/htc/widget/HtcListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/mail/MailList$15;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/MailList$15;)V
    .locals 0
    .parameter

    .prologue
    .line 1905
    iput-object p1, p0, Lcom/htc/android/mail/MailList$15$2;->this$1:Lcom/htc/android/mail/MailList$15;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Lcom/htc/widget/HtcExpandableListView;Landroid/view/View;IIJ)Z
    .locals 9
    .parameter "parent"
    .parameter "v"
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "id"

    .prologue
    .line 1909
    iget-object v0, p0, Lcom/htc/android/mail/MailList$15$2;->this$1:Lcom/htc/android/mail/MailList$15;

    iget-object v0, v0, Lcom/htc/android/mail/MailList$15;->this$0:Lcom/htc/android/mail/MailList;

    const/4 v1, 0x0

    const-wide/16 v6, -0x1

    iget-object v2, p0, Lcom/htc/android/mail/MailList$15$2;->this$1:Lcom/htc/android/mail/MailList$15;

    iget-object v2, v2, Lcom/htc/android/mail/MailList$15;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;
    invoke-static {v2}, Lcom/htc/android/mail/MailList;->access$1100(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/MailList$TabInfo;

    move-result-object v8

    move-object v2, p2

    move v3, p4

    move-wide v4, p5

    invoke-virtual/range {v0 .. v8}, Lcom/htc/android/mail/MailList;->onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJJLcom/htc/android/mail/MailList$TabInfo;)V

    .line 1910
    const/4 v0, 0x1

    return v0
.end method
