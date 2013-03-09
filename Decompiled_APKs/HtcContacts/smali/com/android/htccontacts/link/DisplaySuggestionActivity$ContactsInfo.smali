.class public Lcom/android/htccontacts/link/DisplaySuggestionActivity$ContactsInfo;
.super Ljava/lang/Object;
.source "DisplaySuggestionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/link/DisplaySuggestionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContactsInfo"
.end annotation


# instance fields
.field public loadParentComplete:Z

.field public mChildId:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public parent_id:J


# direct methods
.method constructor <init>(J)V
    .locals 2
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 184
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput-boolean v1, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ContactsInfo;->loadParentComplete:Z

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ContactsInfo;->mChildId:Ljava/util/ArrayList;

    .line 185
    iput-wide p1, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ContactsInfo;->parent_id:J

    .line 186
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ContactsInfo;->mChildId:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 187
    iput-boolean v1, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ContactsInfo;->loadParentComplete:Z

    .line 188
    return-void
.end method


# virtual methods
.method public add(J)V
    .locals 2
    .parameter "child"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ContactsInfo;->mChildId:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ContactsInfo;->mChildId:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 192
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ContactsInfo;->mChildId:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    :cond_0
    return-void
.end method
