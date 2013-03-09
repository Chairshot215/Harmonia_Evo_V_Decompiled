.class final Lcom/android/htccontacts/ContactDetailCommunicationActivity$CallLogListItemCache;
.super Lcom/htc/widget/HtcListItemSeparableType;
.source "ContactDetailCommunicationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ContactDetailCommunicationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CallLogListItemCache"
.end annotation


# instance fields
.field date:J

.field public mListItem2LineStamp:Lcom/htc/widget/HtcListItem2LineStamp;

.field public mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

.field public mListItemImageButton:Lcom/htc/widget/HtcListItemImageButton;

.field public mListItemQuickContactBadge:Lcom/htc/widget/HtcListItemQuickContactBadge;

.field number:Ljava/lang/String;

.field phone_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1295
    invoke-direct {p0, v0, v0}, Lcom/htc/widget/HtcListItemSeparableType;-><init>(ZZ)V

    .line 1297
    return-void
.end method
