.class Lcom/android/htccontacts/group/ArrangeMemberActivity$MemberItem;
.super Ljava/lang/Object;
.source "ArrangeMemberActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/group/ArrangeMemberActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MemberItem"
.end annotation


# instance fields
.field public _id:J

.field public displayName:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(JLjava/lang/CharSequence;)V
    .locals 0
    .parameter "id"
    .parameter "name"

    .prologue
    .line 314
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 315
    iput-wide p1, p0, Lcom/android/htccontacts/group/ArrangeMemberActivity$MemberItem;->_id:J

    .line 316
    iput-object p3, p0, Lcom/android/htccontacts/group/ArrangeMemberActivity$MemberItem;->displayName:Ljava/lang/CharSequence;

    .line 317
    return-void
.end method
