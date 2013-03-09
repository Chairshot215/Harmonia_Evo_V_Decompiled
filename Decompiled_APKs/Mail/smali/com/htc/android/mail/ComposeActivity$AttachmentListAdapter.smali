.class Lcom/htc/android/mail/ComposeActivity$AttachmentListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ComposeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ComposeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AttachmentListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mMyInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/htc/android/mail/ComposeActivity;


# direct methods
.method public constructor <init>(Lcom/htc/android/mail/ComposeActivity;Landroid/content/Context;[Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "objects"

    .prologue
    .line 859
    iput-object p1, p0, Lcom/htc/android/mail/ComposeActivity$AttachmentListAdapter;->this$0:Lcom/htc/android/mail/ComposeActivity;

    .line 860
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 861
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/android/mail/ComposeActivity$AttachmentListAdapter;->mMyInflater:Landroid/view/LayoutInflater;

    .line 862
    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v7, 0x7f02001e

    .line 867
    if-nez p2, :cond_2

    .line 868
    iget-object v4, p0, Lcom/htc/android/mail/ComposeActivity$AttachmentListAdapter;->mMyInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f03001e

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 871
    .local v3, view:Landroid/view/View;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/ComposeActivity$AttachmentListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 872
    .local v1, itemData:Ljava/lang/String;
    if-eqz v3, :cond_1

    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    .line 873
    const v4, 0x7f090002

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItemColorIcon;

    .line 874
    .local v0, image:Lcom/htc/widget/HtcListItemColorIcon;
    const v4, 0x7f090003

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItem2LineText;

    .line 875
    .local v2, text:Lcom/htc/widget/HtcListItem2LineText;
    if-eqz v2, :cond_0

    .line 876
    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 877
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 879
    :cond_0
    if-eqz v0, :cond_1

    .line 880
    iget-object v4, p0, Lcom/htc/android/mail/ComposeActivity$AttachmentListAdapter;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->Att_Image:I
    invoke-static {v4}, Lcom/htc/android/mail/ComposeActivity;->access$100(Lcom/htc/android/mail/ComposeActivity;)I

    move-result v4

    if-ne p1, v4, :cond_3

    .line 881
    const v4, 0x7f020021

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageResource(I)V

    .line 901
    .end local v0           #image:Lcom/htc/widget/HtcListItemColorIcon;
    .end local v2           #text:Lcom/htc/widget/HtcListItem2LineText;
    :cond_1
    :goto_1
    return-object v3

    .line 870
    .end local v1           #itemData:Ljava/lang/String;
    .end local v3           #view:Landroid/view/View;
    :cond_2
    move-object v3, p2

    .restart local v3       #view:Landroid/view/View;
    goto :goto_0

    .line 882
    .restart local v0       #image:Lcom/htc/widget/HtcListItemColorIcon;
    .restart local v1       #itemData:Ljava/lang/String;
    .restart local v2       #text:Lcom/htc/widget/HtcListItem2LineText;
    :cond_3
    iget-object v4, p0, Lcom/htc/android/mail/ComposeActivity$AttachmentListAdapter;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->Att_Video:I
    invoke-static {v4}, Lcom/htc/android/mail/ComposeActivity;->access$200(Lcom/htc/android/mail/ComposeActivity;)I

    move-result v4

    if-ne p1, v4, :cond_4

    .line 883
    const v4, 0x7f020018

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageResource(I)V

    goto :goto_1

    .line 884
    :cond_4
    iget-object v4, p0, Lcom/htc/android/mail/ComposeActivity$AttachmentListAdapter;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->Att_Sound:I
    invoke-static {v4}, Lcom/htc/android/mail/ComposeActivity;->access$300(Lcom/htc/android/mail/ComposeActivity;)I

    move-result v4

    if-ne p1, v4, :cond_5

    .line 885
    const v4, 0x7f02001a

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageResource(I)V

    goto :goto_1

    .line 886
    :cond_5
    iget-object v4, p0, Lcom/htc/android/mail/ComposeActivity$AttachmentListAdapter;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->Att_AppShare:I
    invoke-static {v4}, Lcom/htc/android/mail/ComposeActivity;->access$400(Lcom/htc/android/mail/ComposeActivity;)I

    move-result v4

    if-ne p1, v4, :cond_6

    .line 887
    const v4, 0x7f020022

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageResource(I)V

    goto :goto_1

    .line 888
    :cond_6
    iget-object v4, p0, Lcom/htc/android/mail/ComposeActivity$AttachmentListAdapter;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->Att_Location:I
    invoke-static {v4}, Lcom/htc/android/mail/ComposeActivity;->access$500(Lcom/htc/android/mail/ComposeActivity;)I

    move-result v4

    if-ne p1, v4, :cond_7

    .line 889
    const v4, 0x7f02001f

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageResource(I)V

    goto :goto_1

    .line 890
    :cond_7
    iget-object v4, p0, Lcom/htc/android/mail/ComposeActivity$AttachmentListAdapter;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->Att_Doc:I
    invoke-static {v4}, Lcom/htc/android/mail/ComposeActivity;->access$600(Lcom/htc/android/mail/ComposeActivity;)I

    move-result v4

    if-ne p1, v4, :cond_8

    .line 891
    invoke-virtual {v0, v7}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageResource(I)V

    goto :goto_1

    .line 892
    :cond_8
    iget-object v4, p0, Lcom/htc/android/mail/ComposeActivity$AttachmentListAdapter;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->Att_Contact:I
    invoke-static {v4}, Lcom/htc/android/mail/ComposeActivity;->access$700(Lcom/htc/android/mail/ComposeActivity;)I

    move-result v4

    if-ne p1, v4, :cond_9

    .line 893
    const v4, 0x7f020019

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageResource(I)V

    goto :goto_1

    .line 894
    :cond_9
    iget-object v4, p0, Lcom/htc/android/mail/ComposeActivity$AttachmentListAdapter;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->Att_VCal:I
    invoke-static {v4}, Lcom/htc/android/mail/ComposeActivity;->access$800(Lcom/htc/android/mail/ComposeActivity;)I

    move-result v4

    if-ne p1, v4, :cond_a

    .line 895
    const v4, 0x7f020020

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageResource(I)V

    goto :goto_1

    .line 896
    :cond_a
    iget-object v4, p0, Lcom/htc/android/mail/ComposeActivity$AttachmentListAdapter;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->Att_File:I
    invoke-static {v4}, Lcom/htc/android/mail/ComposeActivity;->access$900(Lcom/htc/android/mail/ComposeActivity;)I

    move-result v4

    if-ne p1, v4, :cond_1

    .line 897
    invoke-virtual {v0, v7}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageResource(I)V

    goto :goto_1
.end method
