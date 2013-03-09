.class Lcom/htc/android/mail/ComposeActivity$AttachmentListAdapterAudio;
.super Landroid/widget/ArrayAdapter;
.source "ComposeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ComposeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AttachmentListAdapterAudio"
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
    .line 985
    iput-object p1, p0, Lcom/htc/android/mail/ComposeActivity$AttachmentListAdapterAudio;->this$0:Lcom/htc/android/mail/ComposeActivity;

    .line 986
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 987
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/android/mail/ComposeActivity$AttachmentListAdapterAudio;->mMyInflater:Landroid/view/LayoutInflater;

    .line 988
    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 993
    if-nez p2, :cond_2

    .line 994
    iget-object v4, p0, Lcom/htc/android/mail/ComposeActivity$AttachmentListAdapterAudio;->mMyInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f03001e

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 997
    .local v3, view:Landroid/view/View;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/ComposeActivity$AttachmentListAdapterAudio;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 998
    .local v1, itemData:Ljava/lang/String;
    if-eqz v3, :cond_1

    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    .line 999
    const v4, 0x7f090002

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItemColorIcon;

    .line 1000
    .local v0, image:Lcom/htc/widget/HtcListItemColorIcon;
    const v4, 0x7f090003

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItem2LineText;

    .line 1001
    .local v2, text:Lcom/htc/widget/HtcListItem2LineText;
    if-eqz v2, :cond_0

    .line 1002
    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 1003
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 1005
    :cond_0
    if-eqz v0, :cond_1

    .line 1006
    packed-switch p1, :pswitch_data_0

    .line 1016
    .end local v0           #image:Lcom/htc/widget/HtcListItemColorIcon;
    .end local v2           #text:Lcom/htc/widget/HtcListItem2LineText;
    :cond_1
    :goto_1
    return-object v3

    .line 996
    .end local v1           #itemData:Ljava/lang/String;
    .end local v3           #view:Landroid/view/View;
    :cond_2
    move-object v3, p2

    .restart local v3       #view:Landroid/view/View;
    goto :goto_0

    .line 1008
    .restart local v0       #image:Lcom/htc/widget/HtcListItemColorIcon;
    .restart local v1       #itemData:Ljava/lang/String;
    .restart local v2       #text:Lcom/htc/widget/HtcListItem2LineText;
    :pswitch_0
    const v4, 0x7f020024

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageResource(I)V

    goto :goto_1

    .line 1011
    :pswitch_1
    const v4, 0x7f02001a

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageResource(I)V

    goto :goto_1

    .line 1006
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
