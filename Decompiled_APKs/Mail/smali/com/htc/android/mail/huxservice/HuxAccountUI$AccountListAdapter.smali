.class Lcom/htc/android/mail/huxservice/HuxAccountUI$AccountListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "HuxAccountUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/huxservice/HuxAccountUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private aContext:Landroid/content/Context;

.field private aListView:Lcom/htc/widget/HtcListView;

.field private aShowRadio:Z

.field private aUserEndPointInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;",
            ">;"
        }
    .end annotation
.end field

.field private aUserEndPointInfoCount:I

.field final synthetic this$0:Lcom/htc/android/mail/huxservice/HuxAccountUI;


# direct methods
.method public constructor <init>(Lcom/htc/android/mail/huxservice/HuxAccountUI;Landroid/content/Context;Lcom/htc/widget/HtcListView;Ljava/util/ArrayList;Z)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "listView"
    .parameter
    .parameter "showRadio"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/htc/widget/HtcListView;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p4, userEndPointInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;>;"
    const/4 v1, 0x0

    .line 515
    iput-object p1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI$AccountListAdapter;->this$0:Lcom/htc/android/mail/huxservice/HuxAccountUI;

    .line 516
    invoke-direct {p0, p2, v1, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    .line 508
    iput-boolean v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI$AccountListAdapter;->aShowRadio:Z

    .line 510
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI$AccountListAdapter;->aUserEndPointInfo:Ljava/util/ArrayList;

    .line 511
    iput v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI$AccountListAdapter;->aUserEndPointInfoCount:I

    .line 517
    iput-object p2, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI$AccountListAdapter;->aContext:Landroid/content/Context;

    .line 518
    iput-object p3, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI$AccountListAdapter;->aListView:Lcom/htc/widget/HtcListView;

    .line 519
    iput-boolean p5, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI$AccountListAdapter;->aShowRadio:Z

    .line 520
    iput-object p4, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI$AccountListAdapter;->aUserEndPointInfo:Ljava/util/ArrayList;

    .line 521
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI$AccountListAdapter;->aUserEndPointInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI$AccountListAdapter;->aUserEndPointInfoCount:I

    .line 522
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 573
    iget v0, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI$AccountListAdapter;->aUserEndPointInfoCount:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 526
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "HuxAccountUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in getView():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    :cond_0
    add-int/lit8 v0, p1, -0x1

    .line 529
    .local v0, adjustedPosition:I
    iget-boolean v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI$AccountListAdapter;->aShowRadio:Z

    if-eqz v1, :cond_5

    .line 531
    if-nez p2, :cond_1

    .line 532
    new-instance p2, Lcom/htc/android/mail/huxservice/HuxAccountUI$SelectDefaultAccountListItem;

    .end local p2
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI$AccountListAdapter;->this$0:Lcom/htc/android/mail/huxservice/HuxAccountUI;

    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI$AccountListAdapter;->aContext:Landroid/content/Context;

    invoke-direct {p2, v1, v2}, Lcom/htc/android/mail/huxservice/HuxAccountUI$SelectDefaultAccountListItem;-><init>(Lcom/htc/android/mail/huxservice/HuxAccountUI;Landroid/content/Context;)V

    .line 535
    .restart local p2
    :cond_1
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "HuxAccountUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjustedPosition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    :cond_2
    if-ne v0, v6, :cond_3

    .line 537
    invoke-virtual {p2, v5}, Landroid/view/View;->setClickable(Z)V

    move-object v1, p2

    .line 538
    check-cast v1, Lcom/htc/android/mail/huxservice/HuxAccountUI$SelectDefaultAccountListItem;

    const v2, 0x7f0b033f

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/huxservice/HuxAccountUI$SelectDefaultAccountListItem;->setFirstItem(I)V

    .line 568
    :goto_0
    return-object p2

    .line 540
    :cond_3
    invoke-virtual {p2, v4}, Landroid/view/View;->setClickable(Z)V

    move-object v1, p2

    .line 541
    check-cast v1, Lcom/htc/android/mail/huxservice/HuxAccountUI$SelectDefaultAccountListItem;

    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI$AccountListAdapter;->aUserEndPointInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;

    iget-object v3, v2, Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;->provider:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI$AccountListAdapter;->aUserEndPointInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;

    iget-object v2, v2, Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;->userName:Ljava/lang/String;

    invoke-virtual {v1, v3, v2, v0}, Lcom/htc/android/mail/huxservice/HuxAccountUI$SelectDefaultAccountListItem;->setText(Ljava/lang/String;Ljava/lang/String;I)V

    .line 544
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI$AccountListAdapter;->this$0:Lcom/htc/android/mail/huxservice/HuxAccountUI;

    iget v1, v1, Lcom/htc/android/mail/huxservice/HuxAccountUI;->mDefaultAccountPosition:I

    if-ne p1, v1, :cond_4

    move-object v1, p2

    .line 545
    check-cast v1, Lcom/htc/android/mail/huxservice/HuxAccountUI$SelectDefaultAccountListItem;

    invoke-virtual {v1, v5}, Lcom/htc/android/mail/huxservice/HuxAccountUI$SelectDefaultAccountListItem;->setCheck(Z)V

    .line 550
    :goto_1
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI$AccountListAdapter;->aUserEndPointInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    move-object v1, p2

    .line 547
    check-cast v1, Lcom/htc/android/mail/huxservice/HuxAccountUI$SelectDefaultAccountListItem;

    invoke-virtual {v1, v4}, Lcom/htc/android/mail/huxservice/HuxAccountUI$SelectDefaultAccountListItem;->setCheck(Z)V

    goto :goto_1

    .line 554
    :cond_5
    if-nez p2, :cond_6

    .line 555
    new-instance p2, Lcom/htc/android/mail/huxservice/HuxAccountUI$AccountListSignInItem;

    .end local p2
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI$AccountListAdapter;->this$0:Lcom/htc/android/mail/huxservice/HuxAccountUI;

    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI$AccountListAdapter;->aContext:Landroid/content/Context;

    invoke-direct {p2, v1, v2}, Lcom/htc/android/mail/huxservice/HuxAccountUI$AccountListSignInItem;-><init>(Lcom/htc/android/mail/huxservice/HuxAccountUI;Landroid/content/Context;)V

    .line 558
    .restart local p2
    :cond_6
    if-ne v0, v6, :cond_7

    move-object v1, p2

    .line 559
    check-cast v1, Lcom/htc/android/mail/huxservice/HuxAccountUI$AccountListSignInItem;

    const v2, 0x7f0b0343

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/huxservice/HuxAccountUI$AccountListSignInItem;->setFirstItem(I)V

    .line 560
    invoke-virtual {p2, v5}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0

    :cond_7
    move-object v1, p2

    .line 562
    check-cast v1, Lcom/htc/android/mail/huxservice/HuxAccountUI$AccountListSignInItem;

    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI$AccountListAdapter;->aUserEndPointInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;

    iget-object v3, v2, Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;->provider:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI$AccountListAdapter;->aUserEndPointInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;

    iget-object v2, v2, Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;->userName:Ljava/lang/String;

    invoke-virtual {v1, v3, v2, v0}, Lcom/htc/android/mail/huxservice/HuxAccountUI$AccountListSignInItem;->setText(Ljava/lang/String;Ljava/lang/String;I)V

    .line 564
    invoke-virtual {p2, v4}, Landroid/view/View;->setClickable(Z)V

    .line 565
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI$AccountListAdapter;->aUserEndPointInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method
