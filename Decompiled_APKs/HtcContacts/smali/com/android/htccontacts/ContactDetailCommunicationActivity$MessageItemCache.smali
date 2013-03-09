.class public Lcom/android/htccontacts/ContactDetailCommunicationActivity$MessageItemCache;
.super Lcom/htc/widget/HtcListItemSeparableType;
.source "ContactDetailCommunicationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ContactDetailCommunicationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MessageItemCache"
.end annotation


# instance fields
.field public date:J

.field public mListItem2LineStamp:Lcom/android/htccontacts/widget/HtcListItem2LineStampIcon;

.field public mListItemSingleText:Lcom/htc/widget/HtcListItemSingleText;

.field final synthetic this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

.field public unReadCount:J


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 3123
    iput-object p1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MessageItemCache;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    .line 3124
    invoke-direct {p0, v0, v0}, Lcom/htc/widget/HtcListItemSeparableType;-><init>(ZZ)V

    .line 3126
    return-void
.end method
