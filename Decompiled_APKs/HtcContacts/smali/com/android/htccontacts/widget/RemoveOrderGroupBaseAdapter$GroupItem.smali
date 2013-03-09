.class public Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter$GroupItem;
.super Ljava/lang/Object;
.source "RemoveOrderGroupBaseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupItem"
.end annotation


# instance fields
.field public GroupIsReadOnly:I

.field public IsDefaultGroup:Z

.field public IsDeleted:Z

.field public IsPhoto:Z

.field public MemberCount:I

.field public OrginalCursorIndex:I

.field public PhotoId:J

.field public Title:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "name"

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-boolean v0, p0, Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter$GroupItem;->IsDeleted:Z

    .line 35
    iput-boolean v0, p0, Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter$GroupItem;->IsPhoto:Z

    .line 36
    iput-boolean v0, p0, Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter$GroupItem;->IsDefaultGroup:Z

    .line 37
    iput v0, p0, Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter$GroupItem;->MemberCount:I

    .line 40
    iput v0, p0, Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter$GroupItem;->GroupIsReadOnly:I

    .line 32
    iput-object p1, p0, Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter$GroupItem;->Title:Ljava/lang/CharSequence;

    .line 33
    return-void
.end method
