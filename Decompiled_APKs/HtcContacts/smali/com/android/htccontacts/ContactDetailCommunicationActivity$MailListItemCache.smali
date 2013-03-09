.class public final Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListItemCache;
.super Lcom/htc/widget/HtcListItemSeparableType;
.source "ContactDetailCommunicationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ContactDetailCommunicationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "MailListItemCache"
.end annotation


# instance fields
.field public accountId:J

.field public date:J

.field public flag:I

.field public groupId:Ljava/lang/String;

.field public isDraft:Z

.field public isRead:I

.field public mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

.field public mListItem7BadgesStamp:Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;

.field public mailboxId:J

.field public messageId:J

.field public subject:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1654
    invoke-direct {p0, v0, v0}, Lcom/htc/widget/HtcListItemSeparableType;-><init>(ZZ)V

    .line 1656
    return-void
.end method
