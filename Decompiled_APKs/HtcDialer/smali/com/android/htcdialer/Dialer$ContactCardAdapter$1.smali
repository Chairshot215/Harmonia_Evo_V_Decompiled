.class Lcom/android/htcdialer/Dialer$ContactCardAdapter$1;
.super Ljava/lang/Object;
.source "Dialer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htcdialer/Dialer$ContactCardAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/htcdialer/Dialer$ContactCardAdapter;


# direct methods
.method constructor <init>(Lcom/android/htcdialer/Dialer$ContactCardAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 7231
    iput-object p1, p0, Lcom/android/htcdialer/Dialer$ContactCardAdapter$1;->this$1:Lcom/android/htcdialer/Dialer$ContactCardAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 7233
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/htcdialer/search/DialerItem;

    move-object v0, v1

    check-cast v0, Lcom/android/htcdialer/search/DialerItem;

    .line 7236
    .local v0, item:Lcom/android/htcdialer/search/DialerItem;
    iget-wide v1, v0, Lcom/android/htcdialer/search/DialerItem;->mContactId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 7237
    iget-boolean v1, v0, Lcom/android/htcdialer/search/DialerItem;->isSimContact:Z

    if-eqz v1, :cond_0

    .line 7238
    iget-object v1, p0, Lcom/android/htcdialer/Dialer$ContactCardAdapter$1;->this$1:Lcom/android/htcdialer/Dialer$ContactCardAdapter;

    iget-object v1, v1, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->this$0:Lcom/android/htcdialer/Dialer;

    iget-wide v2, v0, Lcom/android/htcdialer/search/DialerItem;->mContactId:J

    const/4 v4, 0x1

    #calls: Lcom/android/htcdialer/Dialer;->viewContactCard(JZ)V
    invoke-static {v1, v2, v3, v4}, Lcom/android/htcdialer/Dialer;->access$4500(Lcom/android/htcdialer/Dialer;JZ)V

    .line 7245
    :goto_0
    return-void

    .line 7240
    :cond_0
    iget-object v1, p0, Lcom/android/htcdialer/Dialer$ContactCardAdapter$1;->this$1:Lcom/android/htcdialer/Dialer$ContactCardAdapter;

    iget-object v1, v1, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->this$0:Lcom/android/htcdialer/Dialer;

    iget-wide v2, v0, Lcom/android/htcdialer/search/DialerItem;->mContactId:J

    const/4 v4, 0x0

    #calls: Lcom/android/htcdialer/Dialer;->viewContactCard(JZ)V
    invoke-static {v1, v2, v3, v4}, Lcom/android/htcdialer/Dialer;->access$4500(Lcom/android/htcdialer/Dialer;JZ)V

    goto :goto_0

    .line 7243
    :cond_1
    iget-object v1, p0, Lcom/android/htcdialer/Dialer$ContactCardAdapter$1;->this$1:Lcom/android/htcdialer/Dialer$ContactCardAdapter;

    iget-object v1, v1, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->this$0:Lcom/android/htcdialer/Dialer;

    iget-object v2, v0, Lcom/android/htcdialer/search/DialerItem;->mNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/htcdialer/Dialer;->addToContact(Ljava/lang/String;)V

    goto :goto_0
.end method
