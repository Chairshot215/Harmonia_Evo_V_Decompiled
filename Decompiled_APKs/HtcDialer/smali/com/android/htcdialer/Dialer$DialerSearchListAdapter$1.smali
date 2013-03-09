.class Lcom/android/htcdialer/Dialer$DialerSearchListAdapter$1;
.super Ljava/lang/Object;
.source "Dialer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;


# direct methods
.method constructor <init>(Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 6981
    iput-object p1, p0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter$1;->this$1:Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter "v"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 6986
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v7, 0x7f0b001f

    if-eq v4, v7, :cond_0

    .line 6987
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/view/View;

    .restart local p1
    goto :goto_0

    .line 6990
    :cond_0
    const v4, 0x7f0b0020

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/htcdialer/search/DialerItem;

    move-object v3, v4

    check-cast v3, Lcom/android/htcdialer/search/DialerItem;

    .line 6992
    .local v3, item:Lcom/android/htcdialer/search/DialerItem;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htcdialer/Dialer$ListItemCache;

    .line 6993
    .local v0, cache:Lcom/android/htcdialer/Dialer$ListItemCache;
    #getter for: Lcom/android/htcdialer/Dialer$ListItemCache;->numberType:I
    invoke-static {v0}, Lcom/android/htcdialer/Dialer$ListItemCache;->access$4200(Lcom/android/htcdialer/Dialer$ListItemCache;)I

    move-result v4

    invoke-static {v4}, Lcom/htc/util/contacts/PhoneUtils;->isSpecialType(I)Z

    move-result v2

    .line 6996
    .local v2, isSpecialNumber:Z
    sget-boolean v4, Lcom/android/htcdialer/HtcFeatureList;->FEATURE_N11:Z

    if-eqz v4, :cond_3

    iget-object v4, v3, Lcom/android/htcdialer/search/DialerItem;->mNumber:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->isN11Number(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v1, v5

    .line 6999
    .local v1, isN11Number:Z
    :goto_1
    iget-wide v7, v3, Lcom/android/htcdialer/search/DialerItem;->mContactId:J

    const-wide/16 v9, 0x0

    cmp-long v4, v7, v9

    if-gtz v4, :cond_1

    if-nez v2, :cond_1

    if-eqz v1, :cond_6

    .line 7000
    :cond_1
    if-nez v2, :cond_2

    if-eqz v1, :cond_4

    .line 7001
    :cond_2
    iget-object v4, p0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter$1;->this$1:Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;

    iget-object v4, v4, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->this$0:Lcom/android/htcdialer/Dialer;

    iget-object v5, v3, Lcom/android/htcdialer/search/DialerItem;->mNumber:Ljava/lang/String;

    #calls: Lcom/android/htcdialer/Dialer;->viewUnknownContactCard(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/htcdialer/Dialer;->access$4400(Lcom/android/htcdialer/Dialer;Ljava/lang/String;)V

    .line 7010
    :goto_2
    return-void

    .end local v1           #isN11Number:Z
    :cond_3
    move v1, v6

    .line 6996
    goto :goto_1

    .line 7002
    .restart local v1       #isN11Number:Z
    :cond_4
    iget-boolean v4, v3, Lcom/android/htcdialer/search/DialerItem;->isSimContact:Z

    if-eqz v4, :cond_5

    .line 7003
    iget-object v4, p0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter$1;->this$1:Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;

    iget-object v4, v4, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->this$0:Lcom/android/htcdialer/Dialer;

    iget-wide v6, v3, Lcom/android/htcdialer/search/DialerItem;->mContactId:J

    #calls: Lcom/android/htcdialer/Dialer;->viewContactCard(JZ)V
    invoke-static {v4, v6, v7, v5}, Lcom/android/htcdialer/Dialer;->access$4500(Lcom/android/htcdialer/Dialer;JZ)V

    goto :goto_2

    .line 7005
    :cond_5
    iget-object v4, p0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter$1;->this$1:Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;

    iget-object v4, v4, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->this$0:Lcom/android/htcdialer/Dialer;

    iget-wide v7, v3, Lcom/android/htcdialer/search/DialerItem;->mContactId:J

    #calls: Lcom/android/htcdialer/Dialer;->viewContactCard(JZ)V
    invoke-static {v4, v7, v8, v6}, Lcom/android/htcdialer/Dialer;->access$4500(Lcom/android/htcdialer/Dialer;JZ)V

    goto :goto_2

    .line 7008
    :cond_6
    iget-object v4, p0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter$1;->this$1:Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;

    iget-object v4, v4, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->this$0:Lcom/android/htcdialer/Dialer;

    iget-object v5, v3, Lcom/android/htcdialer/search/DialerItem;->mNumber:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/htcdialer/Dialer;->addToContact(Ljava/lang/String;)V

    goto :goto_2
.end method
