.class public Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$MemberItem;
.super Ljava/lang/Object;
.source "ContactsOrderRemoveItemListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MemberItem"
.end annotation


# instance fields
.field public IsDeleted:Z

.field public PhotoID:J

.field public _id:J

.field public displayName:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(JLjava/lang/CharSequence;)V
    .locals 1
    .parameter "id"
    .parameter "name"

    .prologue
    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$MemberItem;->IsDeleted:Z

    .line 53
    iput-wide p1, p0, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$MemberItem;->_id:J

    .line 54
    iput-object p3, p0, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$MemberItem;->displayName:Ljava/lang/CharSequence;

    .line 55
    return-void
.end method
